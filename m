Return-Path: <devicetree+bounces-241630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B3364C802BF
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4ABB84E58A4
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F422FC891;
	Mon, 24 Nov 2025 11:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pDcHebMt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bJf1bB8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75F22F8BF0
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983170; cv=none; b=tAajc7cWossU49rrfjvii8zhHT/ttqSSPI0khPQC8oLg3f1YzW1kEbL9Bcq1J5hASl4jO8VkS9Vf9LPPJq/kAi2wZYaN27pSxnF1n3QO7kgewcxBjkDUOrY2LxO7P4CagdzPR8NFnjbx9Mq9tNVqsSGY2uLNJNpyCFg68HcwLr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983170; c=relaxed/simple;
	bh=HOd/CGT6IV7yZ7CScMNCvz/ZYsgfNxfiuz0/zi6vJdc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tgUOL5Av0PoANWRlu+Ho8hDXMT+2it3oPMSVDxEzu1NUf4LCdAumbmfbDHDolq0+29gynow5MhLAVCe60G3q1YpZV9RcRPTUYVLdhz6PIqFhddQUl3wDxJthdbbjObslSTzc6zgrznfFH/Je1eL9g2Y/DvV8PBYAzMCfoKFO2+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pDcHebMt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bJf1bB8c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO80HNv1686794
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nM/cUQBdlkS
	XjNkdnEuIGtPatcgwPnEYp+J4ryGqAiE=; b=pDcHebMt6wLVd/+joPOpCTUDzin
	cD9skHHJwS8UBrwiI0SQRSMQgsSUe+o/ySYIYPsZD5bYcFMR+EkyqimFAudQQqvX
	q7L1UroFqXIz3RBm7HuQkBeUgMUa+w5rOY7IBeyvuQ/NSrqn3v282vzO8N26CGvW
	yUHJ0bCdSEOp++OZbZ+MR79hjLfp3YqPOMObKEJuHDGLn9sUA6QaxmHJReH+z5vW
	P3ff4HJzRqhAzbaN9RUu0Zvbx2Cwd3RW2QUSHa67h0aq+mVZblIQ84TmQVUwSItu
	mFMx//VYjYBc7kKTnVkWUnPhFlPYZ94KDXOtYuOzFFPGlgcQf5Kpcxa86aQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099sfp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:27 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f587dc2eso99256365ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763983167; x=1764587967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nM/cUQBdlkSXjNkdnEuIGtPatcgwPnEYp+J4ryGqAiE=;
        b=bJf1bB8cR0bfJOKUfaZXm7uXs06rYPllEneXlq391VVF/YdXWTw5SGYIBRhGdb0dAT
         y4pearGGsOdgUQFXRkWQfbfcSaXMVmn75ziMnoP5zgcCNJwm6HEdldiaJmOJKq9Jfkwb
         DcPu9VgMj4B2Z47xWGmlvIpmSpM1GWBSBRs0QjArW3BvEK88mibXnmNdblTVdLX1uxP1
         zYOTrqeRIt09H1Ggkzhywl3Gbw31MQiwCWAqKZrUerSC85hireK8WeGJ+ZNy0CFtfUF2
         D9Wxbrbz5NQDS2Erbm7YERDUtCi01x2hHgQcNYsEjlaDXC00/vv002n6cP52aBIvSLj7
         95Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763983167; x=1764587967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nM/cUQBdlkSXjNkdnEuIGtPatcgwPnEYp+J4ryGqAiE=;
        b=COHcZvIecfMBLkpPv4TK9g7dajI1CFn3t67NO3vsp9+MOSuf5FLerqjTh8S0Nat68P
         lEvkTxI08RH00UcjppR7jld058QBadAzQxEGHPQ0j210VOSnsgPK42jg56YZBdiQ4j72
         ltFUfkA14oTXjlqyvBXO4/FwVOKpIxFG8ypXaWudwMAwJfokRGi/skLL5C0zQVT70+Pv
         oLOMCCOuxcCEH51BzR/Z7ES+s1AK0Xgrb81we5vafUYRtfLJoFBsNBaN2RbFNY4h08lY
         drHVA+hSgmeSjiFzNODs1L40ImEY5l9eJfUv4veWAzfQD7gU4W8pE9mVB6XYl0Mr3hQG
         T9zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWthorj7iN3wEbl9ILWg0jiRNZTgG6I5tsVutJOLlkShYgnjVno/AyEP8nxgm/gXKx3OurNG6H4T1vf@vger.kernel.org
X-Gm-Message-State: AOJu0YyYyiRNauu2tAFlVUNjTmk3dWtsua0D7zCeebhC/H8Q41vZr+hp
	Dt+NgCKMzSlTzSWPpnEnNMLwQ0+Jbx+e/hLGeZ/NwqGsPI7/uIux4BaKwn9r8qne5TIBqdqza9w
	lppgSkXcYB0Xs5r41GukS2G+3U1ISeM3EaWoyNdTKJVBO3nRyNEbjEKvbMsh+cdYq
X-Gm-Gg: ASbGncv9vkFxrJb8E/rLFx9QUxjeGfl3D5cTNouZrV6TBlHilqYZvetCgERZiRkhE4J
	yQy8/mGYRAm1FrkaAFvOiy42Z6WFQPajb8FV/hPpsRuMwIlvUqfnRgxdSOom+wpFzKb+z+jSS/Z
	LW7XSrhV7vMDtpwxwnrTCcS+yksmFxIkFrvMx1YGDcpaFP+/Ol9z/X3V9er/K+SlTtEF4dLEIqB
	dUIt9KZfquZ8sEVku9hv45ynTWwuodZ5kOdfPUY0bQuW1ShBMXZEdJWitfG8p+FEoKc8T/oxARR
	A9nSBZTut4ajnRj06WWZue54a9HmG1squV55FYlGMAiZM+rtVwqkp0tM/Anz7QINrcV/cMZaMZm
	99ppFzWOMwWrYqqih39NcpQm7oBKQLbre/FH4JNln
X-Received: by 2002:a17:903:1a2e:b0:295:8a2a:9595 with SMTP id d9443c01a7336-29b6bf3bc92mr136115705ad.39.1763983167019;
        Mon, 24 Nov 2025 03:19:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8Afj+nuDtN9gljW4vPRnmLS9clcctFJoqMFnMwxgMmJK9hIWivYBzVl3/RJuP1PpUeohs3g==
X-Received: by 2002:a17:903:1a2e:b0:295:8a2a:9595 with SMTP id d9443c01a7336-29b6bf3bc92mr136115425ad.39.1763983166531;
        Mon, 24 Nov 2025 03:19:26 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b15b851sm130313165ad.43.2025.11.24.03.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:19:26 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH 2/2] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Mon, 24 Nov 2025 16:49:14 +0530
Message-Id: <20251124111914.3187803-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124111914.3187803-1-neeraj.soni@oss.qualcomm.com>
References: <20251124111914.3187803-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Z_lJN5o375cdkzIAXZk2XNnXX6RzYnAI
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=69243f3f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DKEB3zaR7M0RML_3R4gA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwMCBTYWx0ZWRfX8xgAMHp3CbuD
 HJlffDnHhHdG23+ZctCF3mmMrcgQp3Wj7Ojtci/CRgxdJ5kPjH/Yy5TTcXP2xgAHlr/wmaFpbUE
 xYI7XhrdANGbPlGS7lqNcB4Hne3y1La7gbksCnbaoYED3L9iLSCgIuiIi8GG06tSiH2Mn7SYUg9
 qVImu5DvUYslHZqaQebzVJQcM741j9gspQ0KBOZilANqP2B1P4QBpBEmNOXBMVVsT7WL/d1q8m+
 T6+CSsuk3sH2zTscKXhaXCmcjH/VI5n4eWcbld9FSj4Qc+BSAG6NKMddz0qVVz82xVeUAphXX/6
 e7COGsl9d1ZWCSo84hf0cRdUkStfPl0wPYuDpAEHwrbNdWGGWJaPAZNdzF/UveGkC5aOPTZZrnP
 s/dyt/boPfJVLVTo3ZRc8vZofRzCkw==
X-Proofpoint-GUID: Z_lJN5o375cdkzIAXZk2XNnXX6RzYnAI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240100

Add an ICE node to kodiak SoC description and enable it by adding a
phandle to the SDHC node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index c2ccbb67f800..9d2029a906ce 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -1069,6 +1069,15 @@ opp-384000000 {
 					opp-avg-kBps = <390000 0>;
 				};
 			};
+
+			qcom,ice = <&sdhc_ice>;
+		};
+
+		sdhc_ice: crypto@7C8000 {
+			compatible = "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x007C8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
 		};
 
 		gpi_dma0: dma-controller@900000 {
-- 
2.34.1


