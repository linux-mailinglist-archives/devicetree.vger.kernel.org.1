Return-Path: <devicetree+bounces-249018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 395BDCD8876
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9EF48301E6C1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B712F32695C;
	Tue, 23 Dec 2025 09:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dlXIYoPk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nz7r681l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90613324B30
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481265; cv=none; b=HEFcwDBmU6w0Sw4anlmWSjunE4OJ6GGbT9F/3PILpRjQth8vJPa9k/b6b3wXuQyUzLwH8MTa7P6iqJU/i6VleY/kML7U+kQtkhUmOniZRd6RNXjTaDnkcuNRDhPGvQw1t2EfUY7N/Z32c9jhlThgWy2ySFWolRY5RBf3FvuCeHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481265; c=relaxed/simple;
	bh=xT3Z0RX9zoOKMq7jFVYf2pwqfhxYhtw1nSQ1v0B4npw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MvzwNYwQ2r9uIutkTGFQ7Pmwqb8Ac+PbHLrQaFI/joaDtuaNbTxgoZk7CfmSgZqSphGTvM8YIKy93OR2fUITiNwzI53sqaRUx00A5Yy/HP9LU5K9NdmB4wwPuR8RRKVMRJpYhgMXzd6/06p7VYRm981LH5bYRNQmJLwZqTIfiTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dlXIYoPk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nz7r681l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN6jmFI1630665
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=; b=dlXIYoPkhhT+EGR6
	WlMl/tNraeEl77YpioIb0GhqzzNHLHsWF2YhCaND0HI9K2zCBDtmHwhrLOZJBS4w
	8+8TMUuwAW7xvUIZWU4nYrvufwssU9e1NLfPdzQYlEJ9/wt4awLxR1HEGPnbO/Oe
	DxWzwBpZwWS+TYy1yVMw8UqwYvMoz1BRfUIPCbAdx80josI9owiX3D1NSSSBgfw/
	0Km9ppRNF+muHc/zpO2o5D5oQrfINNin+tZnI1bLhIxXCT0JtxGjCi1Wy+InbTMY
	6v9rDW9ZMF4khuKpuugl58hUVaS8mWr7Bey3A57hj5KoZbKLFICVB3ESaz1zTBYS
	2Ysh3A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7ck8j3ve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:20 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c0bead25feeso4035525a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766481259; x=1767086059; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=;
        b=Nz7r681lcm/MqN5ngpzaxGDk2319DfilDGzDt8km2IQO5ehRi4/MURG7+gF8dkkhcV
         bk8ee3+/bjpyeq7gZxuuftbW8I7eEBGpC5bXwkcj7MkzLy51SIH4HK/BfswHxJmf7ACp
         +MKYnRmLwY6vSmWIXbsSThjVTszaz7JFrgx8YUUfp9s75GjbIYMSA3Qx1s37m1w5xL1n
         fnzQQ0zDHyJNtDwWjnRyyVKAVJLYzx0O+gxSe1YiOKeID2KuVYQX+ABDBktNUd0bkZun
         Ezq7WajNMCdXUjUfcsfbZuxe2xaPuOTmyTX7xBlty4J+pF+UqHLk/CkvcAoxGQ4T1l67
         rfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766481259; x=1767086059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=15z0GkALFdQCnt2s+WGZIOpr1bmUM7lJKI9p/mPcc4k=;
        b=U01LFN2wczRVlPOWoW41cSaKb7TD15tSJY8zq3Bc7mAWqq4FDerAU14g61XPrm1+8J
         24QXhSO1ql61eD3L2r+K7/5FgZgZ7+L4iWw99CXUr/L5XFAuv3UA3btcOb2uY/x7dmtr
         iH9CbzCaJmmATRsAiVLBIKC94nVPFB48kryvPP0oqL7FyIrF1vNa+4STWS8KytEH0K42
         Hac4aXz0ri5wq3X6v2EyHIsS6b443wUZ6cGT7puZ7no4ttoo2p5FyLKpA1g4U/mb74oo
         Zd+RP1RcB6riCaFWbucCzjckWmj+8mU2o4j3jMT0kTDTliqF/QnXh1JFvwlwMe9OoiTI
         KCgg==
X-Forwarded-Encrypted: i=1; AJvYcCW3V+ty2bXqFqtGIz1LU43MdkxjUO9oqw0pfk2XukVuZNyRMqwpAES5hAM6j95NnTPZXfeKPwP7IHo3@vger.kernel.org
X-Gm-Message-State: AOJu0YyTa/ac7Df3xWhTf65VkgK8p3vGSeX6zzW/CdYvPJkROrBVDGZV
	20Ztt1ZNjWnGKGG8d/4QtbHRmpSuIdrtNcKQ2qFSgifFiEi9laDpa9EpiY1IVaWvU090qrqRNIa
	PiMwqhxpbWQkAI1SgSi7vA+mOf6ttVGs2eyIMPjXH2T5alGDlfiJbhdf52F37LuNo
X-Gm-Gg: AY/fxX4Y6kIfeizjSOXyDIOoqeu8cmm2IybI6fnvxxsHzGBZXsji30Z/vPv0FqHm53x
	AtPnHXlmYNBV2aVLW0piBFs8sI20DtK262DZpe3VSvmB2usn2R3tJX3PiukC6+4dpWfJE1tqcaZ
	cCKCJoKUS62ppG6ZLwqo9hvVoiujRsRW+I+4VgrMwXwfDU/peJR1JrEBwUD/+MyLK7AMwqK5R4S
	Zl6XtcB9jKUjPC6PxNGDhV/xX/WJ/HVX5gOIZnXk9vuHLoYTbBjqKvHZo/39XtOQ8S4qvM94VVn
	Ftg92r0hIdEeRv3lczmzBIlCM/7uLGwfHzmAx5YJi2xX7Lq6VKntZjYcoo8d4nO0HQdR+suoafA
	k1E1rsQ1NxMa0JbmxL/tkNX28Bg8vc2/hIucK9nJhwUlg2UuBL0fCp4JSJLCm
X-Received: by 2002:a05:7022:4425:b0:11d:f0d3:c5da with SMTP id a92af1059eb24-121722faaf3mr15338506c88.43.1766481259470;
        Tue, 23 Dec 2025 01:14:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9fkd9hZsopvGc2lfvXvSoLBlIoGjtpZpf68WoLQpF6SXYPlFmWv6sFE6X3j2JF2BJQsJESg==
X-Received: by 2002:a05:7022:4425:b0:11d:f0d3:c5da with SMTP id a92af1059eb24-121722faaf3mr15338486c88.43.1766481258920;
        Tue, 23 Dec 2025 01:14:18 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm56931833c88.14.2025.12.23.01.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:14:18 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 01:13:47 -0800
Subject: [PATCH v3 1/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-knp-remoteproc-v3-1-5b09885c55a5@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
In-Reply-To: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766481257; l=1292;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=xT3Z0RX9zoOKMq7jFVYf2pwqfhxYhtw1nSQ1v0B4npw=;
 b=es02FZMS4tTBwODpq5fH3Ay/WKnYn0r2xil6rHTrDlUYq5FIP7A1UMfSWmeszR0Ssmuzkb4la
 29CTURKcFHQACAdeLe9c9FGGPNGsgqpIY9js82ujlYkXFnQFmIS7gLK
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: xzEDY6xM8K2quX-dXSzJMObAoqZmF4bv
X-Proofpoint-GUID: xzEDY6xM8K2quX-dXSzJMObAoqZmF4bv
X-Authority-Analysis: v=2.4 cv=asi/yCZV c=1 sm=1 tr=0 ts=694a5d6c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7zWBZCs1gTFKjwm3VpwA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA3NCBTYWx0ZWRfX/cP2udoKeqUV
 IrnfIWp/1nUu22z05oQ6IPJw6VeQkSScHyFHMWER3g+DCpH8zxPF7GyaNYmy3S5hcqPzNLP7f8u
 +hhR3lP1e+lB8cur+f1AxlwR+DtIyELDGOfptPPZhdUDZ717JDJNn9kSSZx5Wm8Zxbt/QtUUS7x
 q1GhXUJwm3yB1LhrtdfFt7RTrIr+VCsQOnDFp7ay97BJ5kUpmNBpyTUWMkZQQEZNWUHQstdsnjK
 1OQ4mORexwtwBIqdhs2Zy88eCOKTClhuOTgFvg26FlfXVSN9Lr04RkpzcaYsfVv+jbggDa7Pimo
 vjQ+SGYsRxo6m5zj3Nmu/+moGFReGssLnP5ohHyudDqc8XqtGax2nIGngX1UIYuBcp5ce5B24dK
 E6AEnBGEQbna1btFDOnDMtu+dS0oObIQ8uVPlOgVP5OyUn3/gaMVB4nWE9b0sXPxQ0enHtxSdwU
 qO5Q5cJ82z0ThIrwuuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230074

Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
compatible with SM8750, which can fallback to SM8550 except for one more
interrupt ("shutdown-ack").

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf4821..31dffd02125a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -28,7 +28,9 @@ properties:
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
-          - const: qcom,sm8750-adsp-pas
+          - enum:
+              - qcom,kaanapali-adsp-pas
+              - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
       - items:
           - const: qcom,sm8750-cdsp-pas
@@ -95,6 +97,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-adsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:

-- 
2.25.1


