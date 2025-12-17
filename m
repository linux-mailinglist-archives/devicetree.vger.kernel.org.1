Return-Path: <devicetree+bounces-247246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA5BCC61CB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8DD1303E3DB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 05:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D31E2BF015;
	Wed, 17 Dec 2025 05:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f9LMNVPu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hqGIe+6k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95672BE621
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765951021; cv=none; b=hpfWJAuW94eV+GamFBSQ7b8LxemAcwV8/wTRKhV2Pf+69s+44fM99YEQQm51wCdynJWZpcqrSOrrEVn0zcVJ1fF2TUam04rb8mkq6nTN1y6eVUu3vtrMo2y8xIYPsFLnH+TMp2bSRs1G2FQn5MdVDbOe4Kgd/COv7nuCbsFec0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765951021; c=relaxed/simple;
	bh=s0d1jH2f3VMRCL+/f1XkC+Xw6Tz/+dFKkRWVEYfmkHM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Q4SmDEg6CF3KmMjjtR8L/Zz1/pNVIe9dQoKjyrEGHrJQkoduYCT5NVI4kKt218ZLRWwtZs/UULl6pd2Zqj5iAQY1px8wE9q1/OToMxZrCOthyJBGyP+WXUJEPpI8pG3a2bJeyX8YYrixLbW7mxQ0mJiv5pS4IiH3KFPv+s41JE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f9LMNVPu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hqGIe+6k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3woD41904396
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=a9UxuDpSBBh
	Fj82s3DAZF5Bxk9j3WnCIsxDpWHsFyaM=; b=f9LMNVPumLfWg0Qh3K6N6m8cBof
	3k6QWZy591iF6FUiSYgzWgDELsKDDYWe4IppT+pdHf+rkKkignCxzJ1lnF/j4fy+
	Jq84+mMz2IWzQMTcBNh+M2X+Fn4zCO1s94ex/CMw7FB7jkOtFjuW5mPo1gJw2dyH
	BrfU5AANC1HEKFHqXsPmOewV7ws0O6fPa1MoqsUaxP5BAc+yV+AGZNdggyQsPuUJ
	PShGRzLtYZyFl1yFPl7NrrUpWhPxjYJ59TRlvEnyUo+IuVEsbXF7ToONuyg593KD
	svmrKrrEN3W0+D3bZKvvfLR/mtXAgcuMq4hwQXcAFaTBQ+TE0VidscNpR0g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n330a9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:56:58 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ba265ee0e34so6175677a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765951018; x=1766555818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9UxuDpSBBhFj82s3DAZF5Bxk9j3WnCIsxDpWHsFyaM=;
        b=hqGIe+6ka9opw7Q10FmwWu7mhrwKjNsD7Bw6pOen/yZJWvOafgXDfUXfCv7pCS0CFJ
         qe8b9n0r2D2vQzfCWRKKHTo8Qd3Wv+ZyvcdPMdAm/JS18l57cHS8r7deCMKNntOb1AC9
         CSfBVzqkwlCa5WobAD9GzSH8MaDL+hUblVF8qcHGtMMYoDf8ZfJNtQsR9wuoM1tVFJaN
         mCXdCYlJXrWmdFkQNS7VkDkdI2PI8k5hI6/Edcv+hfeieDE3uC5s893YDcHWbdBMfMSf
         93hOsNMKczEvAfiLenYrppwVUlzoHCYxuHEsw6RXFsCXeUalElx5DmqBALIIcQuFbcmA
         IVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765951018; x=1766555818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a9UxuDpSBBhFj82s3DAZF5Bxk9j3WnCIsxDpWHsFyaM=;
        b=YUbCnocWECIFFYk0QIYk0ZruFbW7psuJL7nxRkBQylFqmNDUUd74gxRRcTf6r99D9n
         r2T5XiG1o50kONUDAS59xlJK1aqlkJnBDX2NlvrZtk07fIHAP8b8JcH5rUzZ6xJbGLJz
         RQvoFrCxXgEtrtNy9MPO/PUKJ3wshrq7gaXwyovD4YZjN2RhH4jFK3tLbwKLY1vUe6F3
         ijXT1EGMV7hgBwBU8JK8RLsaIjUGA2xLy9woAuDOwpohROV75CIh8/er/l/8HkGnM1EP
         DSh88FvWNXXPGppQNNCffpuossxHFCHmv1bwyrWVg3P38MG8bSI0If7nLTwjRoqAAw8C
         avGg==
X-Forwarded-Encrypted: i=1; AJvYcCX/ywx64fDF4pSq0PcGQ5Pm618ntYYKWG/lOLIYKHUWJhdi8qYA3pgjQk41EsR31EPF4PBVRFtTPjda@vger.kernel.org
X-Gm-Message-State: AOJu0YyIy+4EJczs/IUgDi9MhzuWwKa8VkVFYV6DnC55//TrE4Ki/7Ns
	z8IAUekRszHEzDsfZ2PtfnAYdcGxz67IGnOdkc9PXaakijbxqfBb/CxUm25UxKqGq8i110NotyM
	1QXAkfOI4XYobj/PFkQuHZvsPmrdfi8hu/vKVFrj5jMfwgVI4TjL0GTBpYHzmH9ZT
X-Gm-Gg: AY/fxX7foS1GBosX1/MRTlCbF4TINQFIvYQWqSDJhkcpHkE/qgku+fBJywkBhZhUawc
	w9Cdcin+Xe+ZarpB/0eDVFsDD1atb0XBd4w5RUjVIZzdAX++ULQB3TT+DSyCgEVKPDM5q5npd+I
	SSilLimmOnHZjpoOyXn9MOjc1tpvZHoTw69QOX/kDRXWdQKq1X8cPDFZHvCH45u/Dg7gBYcTzOy
	THPM2C5YmyrrSbpHLORdk8zZ/pfNPpDq9kZ4XKcf04K4rm+GflNS5CfKDgWcoKgPpsV1Ppeqrrt
	XlivY1TDYklCOC0T7cOoSFwxtYxxRG5GZoX9zDASlVgxB3VSH0b7+F+u5WmKImHpFHKPUFLmemM
	Um5S95Mku/pbDOKPdJ/MN5c2zCV9tdFM4/prRE3JN1LR1VQPfEI7BKoP2BwflZf3EjqT7L7MN
X-Received: by 2002:a05:701a:ca88:b0:11b:65e:f2d with SMTP id a92af1059eb24-11f349a1c96mr10332159c88.10.1765951017643;
        Tue, 16 Dec 2025 21:56:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGR4N8Tn3gQPwaAp0z25nr4vcgJR6P2SnrgWg0nhpDhTez0BIjteWxL6dc4XcNxhfLB2/i3gA==
X-Received: by 2002:a05:701a:ca88:b0:11b:65e:f2d with SMTP id a92af1059eb24-11f349a1c96mr10332144c88.10.1765951017148;
        Tue, 16 Dec 2025 21:56:57 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e30497fsm60166484c88.15.2025.12.16.21.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 21:56:56 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur compatibles
Date: Tue, 16 Dec 2025 21:56:54 -0800
Message-Id: <20251217055655.638594-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
References: <20251217055655.638594-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA0NSBTYWx0ZWRfX/gvg5lXk/9lM
 JSBeAZlQombXCx0yZiMnYHM6SoFB9Hz+jBICkLLDq7716ne5qtlzQRZC0EZlG7Fs/Gp/yGpt9Fw
 l9aj4xoSYz+8V5y5XjrL1kLQPDP17mKt0bryeU7Oy/QGauQ3d5BUCo/KYMU7ylzr6UGNw3XP8ZA
 PAmARcxYoGFfPpF7BW9pLnjhiJysLhttn7I7WcaBryizoMFtSC8Gy5QdkHHJ2oGgZNA4i9WDwMd
 aq9/X4sFP2zWIqTbhKpGvOV6OvIzQIntptymCRxyOpNQtTACjxSO4++6Fjm62IR2kwlNY2YxnnU
 Nqy3PKa8xYubWzNe2Sjjhmup7IaWL5FHtIP7HqOQLJsEu/87QoDkiB09Cg0/CNxYLoSHBqCNjwu
 wy2+gwfUnqnv+EAFew2LOjdaADscxw==
X-Proofpoint-GUID: BthouhrHY05PyQqc-LfOJcZEyTewYC0N
X-Proofpoint-ORIG-GUID: BthouhrHY05PyQqc-LfOJcZEyTewYC0N
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=6942462a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=zDLr9CS1etw43qhiqJUA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170045

Kaanapali PMIC glink platforms support features exposed by the SM8550
PMIC glink interface. Document the Kaanpali compatible string to have
fallback on SM8550.

Glymur PMIC glink platforms support features exposed by SM8550,
X1E80100 and Kaanapali PMIC glink interfaces. Document the Glymur
compatible string to have fallbacks on SM8550, X1E80100 and Kaanapali.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml     | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 7085bf88afab..302b338e7012 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -37,12 +37,20 @@ properties:
           - const: qcom,pmic-glink
       - items:
           - enum:
+              - qcom,kaanapali-pmic-glink
               - qcom,milos-pmic-glink
               - qcom,sm8650-pmic-glink
               - qcom,sm8750-pmic-glink
               - qcom,x1e80100-pmic-glink
           - const: qcom,sm8550-pmic-glink
           - const: qcom,pmic-glink
+      - items:
+          - enum:
+              - qcom,glymur-pmic-glink
+          - const: qcom,kaanapali-pmic-glink
+          - const: qcom,x1e80100-pmic-glink
+          - const: qcom,sm8550-pmic-glink
+          - const: qcom,pmic-glink
 
   '#address-cells':
     const: 1
-- 
2.34.1


