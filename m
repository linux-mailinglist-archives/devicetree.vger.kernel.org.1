Return-Path: <devicetree+bounces-231776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 044F1C118BC
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 96D224FC4A2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB3732B991;
	Mon, 27 Oct 2025 21:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SrmQ2SIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95F832AABA
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761600177; cv=none; b=Fnv3pBw0C9VE7vrfwnqfMMM06OJmcTMu1DimqLW0OV37o1J8QuJGNrXvCvC37vQuKJ1Xgp36koVEOvaljYhN1Y7wLM1HeGcsVYEx6yVIW59881GOdJrDZtctPOfmX8uDrZqon8NmlYkWfjf2yirjosHDFWFuGMQbdSAtapZY7rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761600177; c=relaxed/simple;
	bh=15WFbu11baGssEwYzqM7OEKjx8Dct+j+Im+Lby/4CWU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kCWvoiG7gWEWDV3jJjHeldOpvKcNVKNO7Kx4qTmoQFfsgPb7G8AUuygnKJFbI1npPQ39SN2YxBT3Px8p3RIv2uAs2NxsukU7OzPfuBJ244SbHMhXApm/Xh+KkGWdbX0CfP288DlunIYJ0lj0ryZRnQxLzVflwb7WpOvwm46Vv+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SrmQ2SIc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RG3C0g3207235
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4yt5EMa1UBt
	2+XZRUTtlLXcmh555dcuWUVjp9MvVTfc=; b=SrmQ2SIc3hfCpSlh+Jj7jmS2Kzj
	IcyfLCd4TtHAEojA0A4NhoQl7YEUh1hPkPDcYam4Frp1OU844Metz9imsvEsJNFN
	5kwspgk9UaKYApccGcy2kIb9oG2pLHZmPV/wlAs9q2HJT6AApXnGx8OFIAxozC1s
	k79xP2FvaC6Z+6/knQrhAk28fGjehXTUEFbu9xUSkbmrB3+ZebbqcUythMTBlPX+
	MqfO2P/NbrYfhvdkPDZEXf3zHXrhVp+yNCIURm0RljhZGogWsjoi03BDZNa4V6RJ
	O6ePnqocgfLJkCUqr7CiKZyBk0RTiTZhZqed/fPUNA71DcgBscsMfeUxHFg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2bwtgusg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:54 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so3404754a12.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761600174; x=1762204974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4yt5EMa1UBt2+XZRUTtlLXcmh555dcuWUVjp9MvVTfc=;
        b=JLIoCO2e3M89EZzrhNyfC1hWtvKJ66+hfBoH5ld7bhyUw2MANJaOBQbTE1eNpQQuCl
         jjI50tESOGk4hjBiuLpLcr3nCPV5mcmQgc9ZeaIZqYrPdCn9YjZHXAEkxAubnZfq+uFY
         ErOIJpnr9L5x45SNtMD749Pm04Ch+2pvyhHYyesnFLiLLiN6WBHmHpjoAcEnvAxdk+HI
         aHhoVVUEveBDtAiKW/QHMXU3HYnA2jr5t0tUYJD4nlNw5y6S6DKIjDj/hZhHtW53h8kR
         6VQJFAGDx4ThunPxcfGK3EvN4jfPeCEZ14hO2ykOzX5xxgNR57sY7+LaECQe94xBcmxf
         RB3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGfGbwaOtWUrX98sHc/B9KQbjHAB9QZUT660kvR+ZhkdgvarvX6h2r33bClT4PDuX8E7LWLibwzwKu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4d9/ks59uElAPXB1+LdaGrOXIRrWMz4CohM7JAntZMjaTJ/4A
	Et3tXc5CYFze4HUrVwOeqxTL5cUWuEgrVVNsYO3cCwxqaaKAhE1pUhlYuyOvHJZ8fnxYPEoX1jx
	KpymflaH0+JrHF1HLoFjwe+fhjsg13Keo5tSzFPymbsLphbd88qEKBzxXJP8yxi0m
X-Gm-Gg: ASbGncsaNPwhOlqy4JjzLK+xS+pwMLpAFDWzuCm0rQZp67SLGr5xbU18Q3P6wE3gSa7
	+dLcWS3ZwvQAjtuOZgOXBd5UdcryV3AB342fzNyNGw5KABbGJPaEOyJRGYK9XnY3sum9slLEZ1k
	l1Mwxte9O/QAP1AC8lz63LhFXxRGvRjhPPjLhw6WGc6hz/akw4WPpjnAJOWc8NdtpZTpDStk+bQ
	jT7WzhL1+3z+EpB4lnq84j/CKEpWv+G6RnjtVjw84noOyZOX8XtB+fAWFcoyZN5RRnAk5MtVEVX
	+ouCEN1vBCFHmsrnMpBk+gsWcSRMrUSezgSsMKzdKmp1rR0aPPAqj6ZTyOMwcRZmIpPO+VYgSH9
	77tZOVFfon2PCIqF2LxYFP1MKamM7yU49QooBYULbRYKY6P0Vz+PMG30lZe0r9A==
X-Received: by 2002:a17:902:e552:b0:24a:a6c8:d6c4 with SMTP id d9443c01a7336-294cb39b658mr16187785ad.26.1761600173734;
        Mon, 27 Oct 2025 14:22:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESo76O3/Qa4VuOK3yi6Na6pDZWNnApA7yUHhLu5aFshLKbptgJOUYqaaSoOxVL9DMI7ErUYQ==
X-Received: by 2002:a17:902:e552:b0:24a:a6c8:d6c4 with SMTP id d9443c01a7336-294cb39b658mr16187615ad.26.1761600173237;
        Mon, 27 Oct 2025 14:22:53 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42afdsm91073055ad.99.2025.10.27.14.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 14:22:52 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur compatibles
Date: Mon, 27 Oct 2025 14:22:49 -0700
Message-Id: <20251027212250.3847537-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=L40QguT8 c=1 sm=1 tr=0 ts=68ffe2ae cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=YHN9-SCVukysFp932JAA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: TiixoYB9cNcxnmXU771TgiJNvZk9iVDq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDE5NyBTYWx0ZWRfXzVKkFEc2O4oP
 R6OV7lHamkcq+2g/TWreECn2y5vXvHThDtFR1Uczfm7Z7mLHSrTk0wJSK7ffvi/wVcnB/XSYvtr
 DLh0Vla701jKWxGndr51P/f8bpiUiVbINutt8/hYOQXB9Bb9+1q2r9F5kNH/AouiJ9dRNb+inzH
 fnPEtNL7thl3sgiiPYbNnI8+tBCzaYdHn51PFsE2QBNM7p6Q+Akf7Kq4scnjz2oLwJIKSiR2V6u
 8M04zG4LrduAE82IMsyrigf8XkVjcwNgySPnpunC9UyCH3GqAZZmJWBIpsjj4+ZzkMjyJxnqyps
 OSVkvFQbgLu7SYLAz2oh5dIWJX4pJckmrA3G2CP6x6RE31xl3fSnD3QYbA6igVrRTJ52hOyz+Fz
 JVa0l0tLOX2I4mmNlb6HJS7V6q9SBw==
X-Proofpoint-ORIG-GUID: TiixoYB9cNcxnmXU771TgiJNvZk9iVDq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270197

Document the Kaanapali and Glymur compatibles used to describe the PMIC
glink on each platform.
Kaanapali will have the same battery supply properties as sm8550 platforms
so define qcom,sm8550-pmic-glink as fallback for Kaanapali.
Glymur will have the same battery supply properties as x1e80100 platforms
so define qcom,x1e80100-pmic-glink as fallback for Glymur.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml      | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 7085bf88afab..c57022109419 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -37,12 +37,19 @@ properties:
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
+          - const: qcom,x1e80100-pmic-glink
+          - const: qcom,sm8550-pmic-glink
+          - const: qcom,pmic-glink
 
   '#address-cells':
     const: 1
-- 
2.34.1


