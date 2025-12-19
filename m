Return-Path: <devicetree+bounces-248257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E41CD05C2
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71243303CCEF
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFCA338926;
	Fri, 19 Dec 2025 14:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kn8iOO5+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IpoPnRI3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042C2337BB5
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766155656; cv=none; b=ADdXNCP2WGwyq7BrvEvUpEBihQzWV8f72oBvTF/NNBU8L+YjVQu4WIEv4zvJ+lRHXLK6ZZZQuaJH2SiPVQU8iZM5rAmsgbK86AQQQ9pMjUy8X8wfkgxS91LpETkkg2FoW5eDBa2zkso4wLBOSjbjScDgwTDM0DftOFKX6LfNDJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766155656; c=relaxed/simple;
	bh=tvnF6b6bmdFNtT9eNlHsTHBdpRoglpPCbrEKqVihJrI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/iMiepN/hymCoTltYgU8c1XMwW4SfWD/wX/+HpaOCPuYa/V1PJckl7KHeHjrIEezZGb/9wHIN8ByH6d/fYR9f3C3RkvZ9qQh57C8jyZ67FTpExnWWzS4JE4q8ZjMNn1GWHXcZ+UVPfPrcyJZVkh55WYb+9kxIoBxneMreNcpsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kn8iOO5+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IpoPnRI3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBVK7i4155417
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xSOvkrCQO6Ag1SPdS9SjxXj3fHZBIceCMll5gHyoV+c=; b=kn8iOO5+q9clOlUl
	BdRAlujtH6Ag7madWJb9IdxXtbSgsoZEjLynmEtJTsZM98by7C1ORVA+oYEeNsEf
	iJFFoGMqHXbpWpuTx+S5IZcLIv4td/B9PPod3MFyIOIKO1mao+QTSke19sOSTb3f
	StoBkLI52lVrvscSbT/OJWe0hi4/Hzcqnec9NWOAiuWzwywo4Qdyg2JdEkhPK3ze
	nzXTwPbpNy5gQroL6yh+1rrt5bkMLVwSbQ8afyp3KTHTVGV+yYc2RwOIvOYn0428
	sJAqf5MRb/BP5jQFJSjMZ3Dvjd6D+lTmzL2g1CMjr3ief6AddxUAnm3ihTqVzRGk
	1nmzoA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cu10y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:47:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f27176aa7so34084055ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766155654; x=1766760454; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xSOvkrCQO6Ag1SPdS9SjxXj3fHZBIceCMll5gHyoV+c=;
        b=IpoPnRI3lNu784Kt2V5DrnFpLowm1VRjGJaeKow34xEyEpX+JBDs5BXIFE59P/w829
         SP5XjHmpBB45RTZ0QrepTHBtngRRyGvQ5txgIp051JfgMhTT9BiBsO37YyAYofxPwCT/
         eky3+CjfBwBW7dcoTD6UXhnCsxz31w2bNuiVdPOBtTvl66VHaiwEBNMnMDnI1FZ1metE
         POBg4/JHpzZEDkwYGvo7g/MbAJymWPSzHobuAWDYXDaA/S2r/3aj2AWjliLNCT+lnF7L
         USn9Q0GNIEafgSB1531Q60mDbgsdvosf8liGcBQhgkKQ10bzddnrZqzbZ0uMLsZTwgIt
         q7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766155654; x=1766760454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xSOvkrCQO6Ag1SPdS9SjxXj3fHZBIceCMll5gHyoV+c=;
        b=EvkB5TNCKLKjz2IY5wXiEnJsokz4ScO/kgcOZqaacjWRwOEsDPE5Jj2Cx29ySEf5Jz
         5mQwwKayAisSjh6LJlfSgn14uiSsgSbif/2ggmvja8w4cFu+M/EdGX0r8AQPXUrZ8dZz
         RSY+nOOCTmbm14OsG+P4dXb2sHqqv6BeFhhcfXr4lBRHSMMTQk5H7prOYi4yEMO6cKgu
         tt4paSBnn+TEXdhTKPtdrWHpBJ8CKLXMDktKxIdgzwbMqLfLCBLoRUFm/MiHPPkkw896
         ezPDhyzzuy2foYugVwZ7Y1Nj8xzG/a//KNrDF4e2/XulvVEXULA663CxayShvQ7qEhaA
         lNAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVns7aoVfbjWoAyzJyQPTkRiHSVPExw4yKAX7dJb5wfUWuu53FBqvQYWN/sid2sCI9IJddJfcU8JdLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6oXodWB9Agb04rSI9YW1RBdGRFD2tgzy1qnoJqxmHjBXlGjHs
	8pMezsQYlc82x5jMb2aaN9ANEj9LU1OAwjvvgLETDLPG3E1JSielIIw+qNEkzdR50FPp3eFqhmi
	Ew8wBTIUr1ckZqFlsAXFDFWut/yK6NUPMlEvktR+AirXD/mF0SyRV8ysYU9PWalno
X-Gm-Gg: AY/fxX7z4PHSzaxPHVEi9ktDh+NNyhZhNbnK2FdBsYWSACxgMz7SCGp9RQuUegfeqpU
	YlQ1+tKRYRG5AWl2JLcNhkhOZjtQTUn++UteM9hmHJHxLpPruChawNkLVwR5ecjeHu7ibaIlIvN
	ywgnmwq+78BB1oy6ufmjf1VDOog/98weiS43kgtFHJcdm9y3aTPWpVvs5tkDBRrh+rXTCyO9rDe
	IoiEyGl9ZcR+Iza3wraJL7rzIfLFyKM/yQchzcwdWj13Xbk2k/NsjwAlRLpFJ3azrbCXrfStXgD
	wkRCBsrlNxUzXvW2Vsax4XmxepH/TxaKt5aQ7Zz9WtYwhDezDbAhv5wAT9eYFBtoGgGjveaEX9e
	I/VI5bYglI10rmdSXa3uzep6W8JncMEdVfMLkM9xlfb7yFvxVzhGv4V//lnR32QHVlYvJO+3f4L
	Ac5zon/QMp2wFiM6Z2gBPRp7F1O8HKzA==
X-Received: by 2002:a17:902:e552:b0:2a2:caca:35d2 with SMTP id d9443c01a7336-2a2f22273a7mr29329695ad.16.1766155653571;
        Fri, 19 Dec 2025 06:47:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtnLKvWRG3pUCwzqHCv+5MQZo6/M486Fc51APt819jom0Xlk+IlUR0S+CC/VXIn21R5e/+Fw==
X-Received: by 2002:a17:902:e552:b0:2a2:caca:35d2 with SMTP id d9443c01a7336-2a2f22273a7mr29329425ad.16.1766155653050;
        Fri, 19 Dec 2025 06:47:33 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm25433855ad.33.2025.12.19.06.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:47:32 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 20:16:54 +0530
Subject: [PATCH v3 1/4] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-upstream_v3_glymur_introduction-v3-1-32271f1f685d@oss.qualcomm.com>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766155644; l=801;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=tvnF6b6bmdFNtT9eNlHsTHBdpRoglpPCbrEKqVihJrI=;
 b=Vp7nU0Qpmu8QNy/GMP6Es90wP7U+Tkg8a4a8LtexFxSMBJE4HnjZNkMV6cv9B8sekK4gE0j5B
 fgTcXwvfzcTCta8l1FvnyKOEr1QqHNeEMy/yqH0+SqK9pId+RNBE90e
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-GUID: qWKBQ05xIuMNBr4xW5FjjoyHFxjCn4kv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyNCBTYWx0ZWRfX6GpgBoRZpllX
 o48Nxo/gprtt+OLKF536Z5Ym9J+gflI10YWA/c9VQOrD3wdvHr27KvTU+qAqqEtZjdwrAJTjYRU
 YN59oVBh0PU0wlDFqZ9vV1YiB0A6iS26SQ+MCN1tTcxRYc9UjtU7ZWVGdDxQKsdml0LK6hhHRUi
 1OuiAZh267HFZixJRy78yKmhV3tV9XbtzT74v0tfvcHpam0zSSECZQ9KKp15wgn1Iy/B3LXfqej
 PrkwJWKOUlywGfrAz4PRF4SUVT5w5Byi3/xHUuENpgFhTjE7DPWdaRNtBS2M6h/GcG7zK8tC0V5
 2Bi+5vaT3nW3XoTHxODn8/VuBFGib9Z4OcWyqpVTydVmjzq+q8H8jSPTILQrqxItN9F524xgDD1
 4P5F23SpYo4t1I3h+VwXCeEEp5ShTDVCGkx3IJ0lHbkavXx9UgkV0JGcVclbWil+R/+3V0o7sLa
 s28ivhxiwBzmc7eza0Q==
X-Proofpoint-ORIG-GUID: qWKBQ05xIuMNBr4xW5FjjoyHFxjCn4kv
X-Authority-Analysis: v=2.4 cv=Lp2fC3dc c=1 sm=1 tr=0 ts=69456586 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KVNckf8Hb-gWPUCTgC0A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190124

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..b6398bc8c588 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


