Return-Path: <devicetree+bounces-151314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F5A45602
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 07:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E20A87A67C9
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 06:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7275269AE6;
	Wed, 26 Feb 2025 06:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BH6DQXoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E47125E46F
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740552700; cv=none; b=tP4A5Dl7Jusvq/tm+bXbs931hSgN8XWzVL8OYuyOnoI1G/HfYdfElUgQ9rC26J0BINI3uAq1kP+qKRUal+tGGu++v5NBrDaoH7BzF0J1uLKpjzPE4v8iwc2JBWmOWqVTBafoMidJUjK4KANcS/4/AOB1i7V7E1SqPIaXWTisGR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740552700; c=relaxed/simple;
	bh=Nr2XquDEcWIZ32z5BYr9PlI+GG2FDN7caaV4ha/WbSw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NpVPWigi5TeoHj7ssGWRUjgmE7cNgUE3E2bdw3NlSSi5uPhel8S5Nx66SK9PhPGPBXr6PQjT2mYpU0flSFPvbpJgdzbsB500fgzMOoR0B8VKgWw6+KXkUMZUOGPbnYSyKthhbeGZJ/bLhDY0J4qd5yWsxnNkmWSEyurMAMVnFms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BH6DQXoY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51PMXI46021807
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:51:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FiRAMpMCidsWJ+AiRYeRMK
	aPo0YDrXFe78L3MNnq64k=; b=BH6DQXoYwvAs0OqRJ//NyeFaXkOod3Pk5PLbPP
	Fcjd8aCvQXTSR1JR22/unUxXZeNyLtuGPphtKhhrR4fMJKxglsJD4gJjvIZZX4AY
	opOhqg5KaGAfsvm/rtWY34q//o4EgTwlECFINJKy6s064AzQOElr6nrxYQl5VOTo
	aAtFEDVDf6kTl+RP6LcRtbqpG7RWSbVQhi31SOdzvZXuKnhI68uIFv0zGe+2lRSx
	AETZ1CTkNp6lIy0gl7+Vwikitj3ehmqQxXHbDiDETzjJkhpZ5W31jpV+c4r/MGuw
	RMZ+/1XF0sL7UKxv8nH5TT5TFHGUnt95U1Tv7OlK0yRSTR/Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prkh0m9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:51:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-220ee2e7746so131324475ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 22:51:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740552697; x=1741157497;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FiRAMpMCidsWJ+AiRYeRMKaPo0YDrXFe78L3MNnq64k=;
        b=OwdCFtlNsaEnJlPaLwwH06auI0lBq2C6RDzekFPURuMiGZdZs/JaFGnqi69mgmRYU+
         9RXsN/pMTu4QsKccwG6km2PLQIW2IvYabmb9KGPp2OMnQu8+qfvG5AS3cW03yAroNj0O
         +G/wsxiUFNhJeBM+RMAY8282YE1ZsAHOxPqC41LIaYECINtt3AUvbuZxRQjJqXnQDZfW
         ViUh+jmHMHFF6lqH1r2tlEL/BHnY4Q9HYJIR3J0s3q3QSs5Ui8hY5iz5H2H03UbTOOBZ
         Lp0bXRLecgwU9oTfXyui6PqxWJHf0ZYuzf9yFJxFwQIlyfuD+KagYaFl2KwCqyWLGuUJ
         glWw==
X-Forwarded-Encrypted: i=1; AJvYcCUn9d9mFcj0nFf/ZxucahsYspANJoJbxPOINeVtHUZ2DvVDsfEKqLs1ZdmI514ksIjiLrqbe6TsZEzL@vger.kernel.org
X-Gm-Message-State: AOJu0YzxqRDr/pPI1LyZfWOCI4rhVNqxP0cJY55gqiUKR81xO/gm2lOT
	3u1bruxAcbQs8niQJKA4OfytW868mtMN9GyME9pLr42bHjDlKnRnzVDxTWW0GDlEBX9A6THqLJR
	LO5zI9yqTW0Qz9phiggw4xMW/Af/kYnmIclHeEG21ErQg0HfA2pVmvQO7M7EK
X-Gm-Gg: ASbGnct9foPwlwODkkXKx2PJxguwWV2zZ3Fgtp5NNDAbTkXRSvp4bN27KBx90P0RHwf
	qCUO/+hO0Y3q0gdVCnymv/zjKl9US0nMzpQDovLOmwpMXmBOkwfd36dwDmGtQ5snFiLoVy74aQb
	XL2GWpeztwW1pl1WHrC7RaqLdtNvLKZIwVvSoc4ajYE7A5uIvhnOZY7uvTutlktwHf0xIuT0th6
	Z0yMU6PtOIXpKdYmrEH1KLAKcV5W4W6++Pho9mxXy2lIVrNjh/0hnHEWK0pW7OwuJPmrok+o2dx
	AvcAlr+8oJ6+vhkNn88JgiNhJHI85g==
X-Received: by 2002:a17:902:f706:b0:215:b058:289c with SMTP id d9443c01a7336-22320061fd6mr33779305ad.8.1740552697263;
        Tue, 25 Feb 2025 22:51:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV35z8kbWqbSL9vh/1yfYoUXaFR7vWmBJtbtyfB+VFciOqC8XT2KD2pNgEqDPEDsoJaF+wug==
X-Received: by 2002:a17:902:f706:b0:215:b058:289c with SMTP id d9443c01a7336-22320061fd6mr33779145ad.8.1740552696890;
        Tue, 25 Feb 2025 22:51:36 -0800 (PST)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2230a0aec2dsm25207555ad.221.2025.02.25.22.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 22:51:36 -0800 (PST)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 26 Feb 2025 12:21:27 +0530
Subject: [PATCH v2] arm64: dts: qcom: sm8750: Fix cluster hierarchy for
 idle states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250226-sm8750_cluster_idle-v2-1-ef0ac81e242f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAO65vmcC/32NUQ6CMBBEr0L225K2Wqh+eQ9DCJatbAJUu0A0h
 LtbOYA/k7xJ5s0KjJGQ4ZKtEHEhpjAm0IcMXNeMDxTUJgYttZFaWcGDLY2sXT/zhLGmtkdReDw
 ai3frSoS0fEb09N6ttypxRzyF+NlPFvVr//sWJZQwRp9bL6UvTvoamPPX3PQuDEOeAqpt277mM
 dBovQAAAA==
X-Change-ID: 20250218-sm8750_cluster_idle-6fe358eb8c7e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_lsrao@quicinc.com,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740552692; l=3306;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=Nr2XquDEcWIZ32z5BYr9PlI+GG2FDN7caaV4ha/WbSw=;
 b=ZT/bM7gO9LUVNNS40pPZ5AyoHIVjlAU0uvW2M5t5IO6XhJ8jPDotS7MoBj36K7mPsdsfAb7B4
 sKLUdVl3tRvC6qZhZnP5ZAZlnf86hMFVm+G6OAAbYfsD4TzneZ+zenr
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-GUID: XvGYD8s0kdnOrp5l7CpEiLRzXcZVytue
X-Proofpoint-ORIG-GUID: XvGYD8s0kdnOrp5l7CpEiLRzXcZVytue
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_08,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 phishscore=0 mlxlogscore=665 mlxscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260053

SM8750 have two different clusters. cluster0 have CPU 0-5 as child and
cluster1 have CPU 6-7 as child. Each cluster requires its own idle state
and power domain in order to achieve complete domain sleep state.

However only single cluster idle state is added mapping CPU 0-7 to the
same power domain. Fix this by correctly mapping each CPU to respective
cluster power domain and make cluster1 power domain use same domain idle
state as cluster0 since both use same idle state parameters.

Fixes: 068c3d3c83be ("arm64: dts: qcom: Add base SM8750 dtsi")
Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
Changes in v2:
- Use single cluster domain idle state and point cluster0/1 to use same
- Link to v1: https://lore.kernel.org/r/20250218-sm8750_cluster_idle-v1-1-5529df00f642@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..d08a2dbeb0f7924662c9a1de61df95561397c2a3 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -233,53 +233,59 @@ psci {
 
 		cpu_pd0: power-domain-cpu0 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd1: power-domain-cpu1 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd3: power-domain-cpu3 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd4: power-domain-cpu4 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd5: power-domain-cpu5 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster0_pd>;
 			domain-idle-states = <&cluster0_c4>;
 		};
 
 		cpu_pd6: power-domain-cpu6 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster1_pd>;
 			domain-idle-states = <&cluster1_c4>;
 		};
 
 		cpu_pd7: power-domain-cpu7 {
 			#power-domain-cells = <0>;
-			power-domains = <&cluster_pd>;
+			power-domains = <&cluster1_pd>;
 			domain-idle-states = <&cluster1_c4>;
 		};
 
-		cluster_pd: power-domain-cluster {
+		cluster0_pd: power-domain-cluster0 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&cluster_cl5>;
+			power-domains = <&system_pd>;
+		};
+
+		cluster1_pd: power-domain-cluster1 {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&cluster_cl5>;
 			power-domains = <&system_pd>;

---
base-commit: e5d3fd687aac5eceb1721fa92b9f49afcf4c3717
change-id: 20250218-sm8750_cluster_idle-6fe358eb8c7e

Best regards,
-- 
Maulik Shah <maulik.shah@oss.qualcomm.com>


