Return-Path: <devicetree+bounces-234217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC8DC2A518
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 08:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 81E844ED915
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 07:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 694C829D270;
	Mon,  3 Nov 2025 07:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vu8GQ8sh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="knIIoQ9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9E529B20A
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 07:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762154745; cv=none; b=sUpOKcqPZVJroNGyrmHKOpjMdoYnpMwX5wm1Pk0xIMx4NTiAYwnWciiJOqz0MmsvR7rmOgBUR9accRNfhINym8/+Zt4zNufJyRhuTffa/uFv+N21qRPViAdVn1F8x4AYtwfAjUoviHUAw7LQCZe9jCxikhY0rAmcNuyqpCcoRlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762154745; c=relaxed/simple;
	bh=bphr8qorMrwVI+QuMxGxDKhNsfGCZroYxKWYpLailQo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gDnWGqNbFmj4fFhnmkxN4PjFwO9Oqj4pgYHMK2dAZPu5Lj6XN8LecQzT74nKfPCasvJLq/txA6Ni1RFCOFUjTA6sO+paHvj5P+NeSxbrZ53sc5dqss+vnwkczvbMVAjXrV0eKtXanrwxJtzsEys7nvMVxh7jDrIV6gYDu5JCv7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vu8GQ8sh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=knIIoQ9b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A36BGVt2267848
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 07:25:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sKmGgJq/0Z8kTKwV7+6qcptKzhm3Da3Hh5vnxd0Zfh4=; b=Vu8GQ8shUUmOgivm
	TZ/mz+lr/ikz4uNbSmw4n6ytIPfEfENAKJRNxkJTZEw638HItILimlUqIKoikdr4
	vnAaygIqY305r5dBOrRrgWG5CuUiZxLaBOtBuswWtSyKWFTzTHpBPa47PV/2Nfwt
	n6bvRwM8r7BSVofnzVMMwDgq4tLLV7/eGoSNJ2YKq0MdYZD5CPJZHpolkP1TyaPL
	ZXqWoIKVPGC0bkVqTGaxmiCctlJifob1zZDd6d77CxsvSSM6tk/jtlpv1rQuav4z
	tOcMjN1rcyxcWkQ/9JnIuBBR5J8uyWBxXvFwwRsdXLgtk7PQLVf62S+sgPghVha4
	6CToIA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6pwag6b9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:25:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5edecdf94eso8616936a12.2
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 23:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762154742; x=1762759542; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sKmGgJq/0Z8kTKwV7+6qcptKzhm3Da3Hh5vnxd0Zfh4=;
        b=knIIoQ9b6VuqHR0epMoRdcNvKoSmLA7hhrv6a6l0dP+XMr1cVENL2ws3TuwmiFKIs+
         jXEpcwejZEUf9WzdwPZs5Nt1mLAjcqIwBtd8epox7bbR4YgjqSGYGnz0VmWfNThDLQOP
         88vnkbKR52txBN7dB+TLFa5+LAPa1AW1gBmCvUdRLVotp2D3j6FOc4f4gkCN8WA88I/e
         GEm5qq/pBeDtTw/bCwy0N83LkUnMY+Ecilc7AQIJRnOFjS92UHjSuER9Rj4hB/KHZbub
         MLPfrj8PY7lGa93CeVOzJ0sXc6ju2/zJYUTEOrU2zklQHypNoapGPcj4FHapcZDsidnd
         1nWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762154742; x=1762759542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sKmGgJq/0Z8kTKwV7+6qcptKzhm3Da3Hh5vnxd0Zfh4=;
        b=MwmZUzl1bR0xi9GNgDGkupH4okENckwexhjjSjgFmtp6BkGHpUNe4SY5lncR7PaHdL
         8Eec847dIN53iWBJJ+DoP5c/Hds46Uzw+s2B3W74RqGX95a0GFZ52F7+u6LTSHM+geXd
         PzZ7K4MWzlLzH4lfBWmH6qzrpzdgRSD+dy+uyJiejnRgXA9LeKHqJxktqUCWprk3jCBr
         wFMT7A19NRAw/zre9z+IQf5ff6stKcyFEQEGzbHvo/nGjC5/xDilRT4DM+0en6keCLSO
         xraEJgU5balFeCCurFCNk0Soy4Jh9koIdsrnhZNurw0WQQqXnyX9Uwa35pxsFQ3q6AZT
         Sm5g==
X-Forwarded-Encrypted: i=1; AJvYcCWjgZwSJebw93qsY/SJl4ICO+fafyZ2VD12Mcb1x0kTIrPXaQO817g5WFmTc486BGHDO8KrLIKaGu9S@vger.kernel.org
X-Gm-Message-State: AOJu0YyyV1yHzyarrw95QcmblTq2tiYn7kKOSodK0Wtozcoskth3bVaA
	Uby0Vgq5lLXVvi1v06UZvWSscyq9GlUm28cbyHY2Z0Sc3wWTn4AlSUhQE+5W8wiH08ivAExElJL
	H9IS6PJ9VPHhp6/qipoGFOc2NRw7eN4zFWepawYu2ZHOVxsXamjuclhaLefAuTRLRlvwjFhiKO1
	XLLw==
X-Gm-Gg: ASbGncuOWnoFfK/1r20AQ8w6v8/a2fBV9y3T2cDDmjYnkyFdwy1lKhsKwskutrr77vf
	XF9hNZsXXJPuIiJOFp0/s+WZfSSSjJj7V/hVM8yIDvz5DAKxKLoQ2BWZgwsdUMiS1x3g2mpy81D
	53zqwfr01r0llCLYz6+cxwt6OQAPM72JpFta/qxl3WxqvyLDb9LQw3vLuOhuo9pBQLmrYD3f4tn
	ZZdOg+OZEwy4w8Eue3yviUbbXktomw3JsVCWiU/9hkSnu2WMN0tv5MLDT8y+7nvpo1Qeh6IDdNM
	JKp/3Z4w0ZHaHpsaPZh3muBghRxvC7bLi5JLEIqw5rARk/QaYC83gRCESb76HvGumwuXOya4wFt
	Mnae3B/YSaj5xi/wX61zY4xwMbpM+7gVFDPnRwuCeYaC5QKSBTg==
X-Received: by 2002:a05:6a21:6d96:b0:341:77c4:bf0b with SMTP id adf61e73a8af0-348cc8e6671mr16512635637.42.1762154741795;
        Sun, 02 Nov 2025 23:25:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiEHvKweETTmkWU6A3jCf7e+ymR8q57wauvwxY/coL/Q/c0dm9x6mWf8KCo1OQJRknN7vd2g==
X-Received: by 2002:a05:6a21:6d96:b0:341:77c4:bf0b with SMTP id adf61e73a8af0-348cc8e6671mr16512607637.42.1762154741352;
        Sun, 02 Nov 2025 23:25:41 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93be5ed9e6sm9350951a12.27.2025.11.02.23.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 23:25:40 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Sun, 02 Nov 2025 23:25:06 -0800
Subject: [PATCH v3 1/2] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251102-knp-soc-binding-v3-1-11255ec4a535@oss.qualcomm.com>
References: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
In-Reply-To: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762154737; l=3426;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=bphr8qorMrwVI+QuMxGxDKhNsfGCZroYxKWYpLailQo=;
 b=CV6AUopMSG0gzedDUk98a8ZETvk81kV3JVJxe32B5Lr3BQcbFBLyZsmxS7SfTOmcSjjkxITAC
 MsrmNHk2xD2D+9Gp1uUlg2SISyzLGsO+a98ZTgq/GAknqKHPEpr+za2
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=OrdCCi/t c=1 sm=1 tr=0 ts=690858f6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sTumdmrw-Tabgok1kBoA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: VAWuTefd78uD1qaqaXe6lgC2PuqxOtAR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA2NiBTYWx0ZWRfX43j0hEeoQ5g7
 OrD4xxr+xFxSIwRDnlhBrN0Zj3E2czhipRzAJ0vAK8TrpiO0nKheZgbPwM7auNO4IvyadddEfkf
 wjzMVjdew3XTJ1FojXePPdXJf6/Hf2FlOvsjK2GZfEX9JA+PuotQUrgU2jOMw19nPQ7pcfWU+kU
 hNyegsEabf2Bopo47vlnDwTD0RjjatRUyFb7RYxW6KhrwOpuXxJ+vRw4Yq42NA7ZFWxuLEOdfE2
 tNE3T00Mtm/kvp9EsvpDJmdwad3n+c+KTxyxGRk8ByoKp4WSqqI2Y0pGuWkB1ctITy/4RJWvPFb
 /4o9EwDqgYIabREcDVfNWGv/6R8Zm7nKf14zbZkzgeMApAy1uMkzYpFAcGzka5bwYAvM0+2eNiy
 e8oc16rjLwnNusX4mql7LwRApiLpBw==
X-Proofpoint-GUID: VAWuTefd78uD1qaqaXe6lgC2PuqxOtAR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030066

Document qcom,kaanapali-imem compatible. Kaanapali IMEM is not a syscon or
simple-mfd, also "reboot reason" is not required on Kaanapali like some
other platforms. So define a common "qcom,imem" binding and fallback to it.
Currently there is no requirement for any specific implementation for the
"qcom,imem". Its child node "qcom,pil-reloc-info" has no implementation
dependency on IMEM.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../devicetree/bindings/sram/qcom,imem.yaml        | 77 ++++++++++++----------
 1 file changed, 41 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2f..09278b21acf4 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -15,42 +15,47 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,apq8064-imem
-          - qcom,ipq5424-imem
-          - qcom,msm8226-imem
-          - qcom,msm8974-imem
-          - qcom,msm8976-imem
-          - qcom,qcs404-imem
-          - qcom,qcs615-imem
-          - qcom,qcs8300-imem
-          - qcom,qdu1000-imem
-          - qcom,sa8775p-imem
-          - qcom,sar2130p-imem
-          - qcom,sc7180-imem
-          - qcom,sc7280-imem
-          - qcom,sc8280xp-imem
-          - qcom,sdm630-imem
-          - qcom,sdm845-imem
-          - qcom,sdx55-imem
-          - qcom,sdx65-imem
-          - qcom,sdx75-imem
-          - qcom,sm6115-imem
-          - qcom,sm6125-imem
-          - qcom,sm6350-imem
-          - qcom,sm6375-imem
-          - qcom,sm7150-imem
-          - qcom,sm8150-imem
-          - qcom,sm8250-imem
-          - qcom,sm8350-imem
-          - qcom,sm8450-imem
-          - qcom,sm8550-imem
-          - qcom,sm8650-imem
-          - qcom,sm8750-imem
-          - qcom,x1e80100-imem
-      - const: syscon
-      - const: simple-mfd
+    oneOf:
+      - items:
+          - enum:
+              - qcom,apq8064-imem
+              - qcom,ipq5424-imem
+              - qcom,msm8226-imem
+              - qcom,msm8974-imem
+              - qcom,msm8976-imem
+              - qcom,qcs404-imem
+              - qcom,qcs615-imem
+              - qcom,qcs8300-imem
+              - qcom,qdu1000-imem
+              - qcom,sa8775p-imem
+              - qcom,sar2130p-imem
+              - qcom,sc7180-imem
+              - qcom,sc7280-imem
+              - qcom,sc8280xp-imem
+              - qcom,sdm630-imem
+              - qcom,sdm845-imem
+              - qcom,sdx55-imem
+              - qcom,sdx65-imem
+              - qcom,sdx75-imem
+              - qcom,sm6115-imem
+              - qcom,sm6125-imem
+              - qcom,sm6350-imem
+              - qcom,sm6375-imem
+              - qcom,sm7150-imem
+              - qcom,sm8150-imem
+              - qcom,sm8250-imem
+              - qcom,sm8350-imem
+              - qcom,sm8450-imem
+              - qcom,sm8550-imem
+              - qcom,sm8650-imem
+              - qcom,sm8750-imem
+              - qcom,x1e80100-imem
+          - const: syscon
+          - const: simple-mfd
+      - items:
+          - enum:
+              - qcom,kaanapali-imem
+          - const: qcom,imem
 
   reg:
     maxItems: 1

-- 
2.25.1


