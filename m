Return-Path: <devicetree+bounces-274695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGIoEEfjsmmWQgAAu9opvQ
	(envelope-from <devicetree+bounces-274695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:01:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBC9275171
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF1743065035
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFC53F7E66;
	Thu, 12 Mar 2026 15:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mLMLDU09";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JBlZdzLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3763F7E65
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331025; cv=none; b=IO1RsMKOT1c8jkQ9SSktTwC5nmnu90ERa6yk0i+FpcTicPqTXE/GlJno6GxQoKRutnsCTErUMqx8QbWhmXMD8H+vZ4FsXPNAKgBA8XOn7RsujPZATlVpuiD6QrbR3O6mVKLlpjalD8/HLqgL32IvQ2habGkPpvfUwpJAIzM/6E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331025; c=relaxed/simple;
	bh=yzm4LE/i0eUgrDI20KHh/zGs6KXb6rjOLlyDoM6yMxM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ay0YKiPhl7ZXyuOueSUJURVqwADct5cy1tvZCxf6gKe/T3EaeCVlGw/dvzLUHmziA2iQCbRuAnRBKLM25AVbwSkpELgH/0R9S+X4YGaHpz/hQwaacFbDnBcfwQ2VLIYOHsx7Cf+qDjOe6fMnvu9Dsy3yZVEoC1ydz+3+FDrOR+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mLMLDU09; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JBlZdzLd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CACi7Q3666960
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SySwvOCQ+/uuKwmMJa3pFWc/3ibW/F43OF5J2MD9T5A=; b=mLMLDU09hsSzGS4U
	huDQG5Fj+qAB/G3jP3WzcGDjuOEKjdwvcgvQtbLYoasw3idEs9aEu2vqrqVe2qJr
	4enIVdjVNW9rQDFeTPSQCMdaAKAroQ/3V+qvoHP4hMJc9bZP+6dsAgIXz2GTJaCM
	nSKAyLpWj0gmlkDlqwWrWHgjQFNnljTLyvwvli2pxGkfLGXKY2Mr6A/s1fNhE7CT
	7AEDRMH058SmVryySYf4BLFr9KuHqx4KA/8HsnMK13M9ziGeh+/QiLqcXJoR6r4y
	dH5jcsYB1NlojXkZrSQfUU8tYW/UyRB9DeGgS/9b3Dp1mnP32y7/Jp3aTHRFOi0k
	uEdjrA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60jp8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:57:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae59e057f1so15740465ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331022; x=1773935822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SySwvOCQ+/uuKwmMJa3pFWc/3ibW/F43OF5J2MD9T5A=;
        b=JBlZdzLdA9y92fV65ni8p5CWongFzF4oJ6sY70P5Ke9qjUDOCGTCf0djyKcOKTRIDe
         wge4e20zeiNjIG4NWaLTdLPNk2aFEcA3tm5fAxFflDSChZ0RMGDFo9aULFUqctwDRhxT
         glez0LXjv5SSriAcwFPucIA5Te38d7BvFDKtj0Ft3NeW5dCh5aRlGA8gWC3Deya+w1xb
         U2DAmQel0Ugi1DQIhPDH4DWaCsr6WUeaJJ5qPUQyCwcUP+4oyTzcLHGSffy4/m9XOzr8
         Lg3rWI5ZkaUX+uhZObxSLfK77UgLL2GgsHXRWIAFvk/zO1GQZht+lUTiaVK1PJw4LocM
         prvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331022; x=1773935822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SySwvOCQ+/uuKwmMJa3pFWc/3ibW/F43OF5J2MD9T5A=;
        b=ChVYz8gSqr8XQBLzduZGlRL1POWi2RhCzVnuYUtvVyNI/0FkRA/5irf88vsID8Ahlv
         DjGJ370YE2T3g8+tF7Hyv5ZTzeBXluC777mSLf816QHmJRPTtqPpFL3kMXGR297c587E
         owlXMSHvu/1iisRF1D2ZrhsXoss/cTfm7ACkD9hL7seN9pbgJq+21z+TklyqGwXyUBxv
         LzfzlKdfIxvGHi/r/7wqFPYpYd5NGGgQILTrdGyanLSx5kFe/UGW7VpA/Zph9diNOsq1
         1tufDA0M/JHvJHZtWuk2z0g+yFB/EXVKkSR72xh0y74TFQxRQKjeSrFbMy3ulKJDZycX
         WSig==
X-Forwarded-Encrypted: i=1; AJvYcCX1QVVhGSBN3U3lT1Lnui8w16tPJyyyHqehEnAV3R0OfbmHNSTaB053KTx2FZtAK4t3OYRRmve2lLmZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5AXNKAY45AzKWdViNMPJ+Vyq1p+t9PEGWT8HjrwrNvzACTIAC
	/NVZ63bvJ2pzedwM/ARfbL2Vtwz+lNCKZFgdPltSqP4QlfpunSk95BU5TGytNOV2sSdErkBpZJO
	d25mZ/uofJ0SANeHRCmXNhuznTVmwv9CqQKDGbDt+z6jeygFO+3P7kQ/+lMzbOSQd
X-Gm-Gg: ATEYQzzsN1nspA7hyF3EteekluT3YqzwsSPVsz1LUmwIR7sko/B6+yDvtkuOgW1PRca
	dCHkvqljaAShjsFHdjHYec6s367pRXtrfONG0lnvtHPSewsqOJK099mM1n5oFF3ksGFd+Uztuhp
	kmCzCmM+AqT3E3keqO5dpODMDwCF6iJB3Ab9TPSyRw1rWsO+e2iImTikA1T9HOao+tQcSX7P4HR
	rPNLDNXgMR0c3/Ezz59vh5dPzI+QzHKOuFpY3p2IgV7izD7Qp2PTeQFVSpbnvk37mWVq2yr0pY0
	uhDvMCLSLFo8BDLQ5mOiAz0yUl+k6Rf6J07XCPF0+UL76gmTi+Vyq1XpyXkjawKgg1g4FoKmwAi
	qvg+0YLwbqGyW6fZ7Vzsrx6jn5xSHnIs7QhtDroOjwZZoHZTtWg==
X-Received: by 2002:a05:6a20:12c6:b0:398:8a0a:28f8 with SMTP id adf61e73a8af0-398c5f4a17bmr6126656637.24.1773331021710;
        Thu, 12 Mar 2026 08:57:01 -0700 (PDT)
X-Received: by 2002:a05:6a20:12c6:b0:398:8a0a:28f8 with SMTP id adf61e73a8af0-398c5f4a17bmr6126636637.24.1773331021215;
        Thu, 12 Mar 2026 08:57:01 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf254acsm6067852a12.11.2026.03.12.08.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:57:00 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 21:26:38 +0530
Subject: [PATCH 4/5] arm64: dts: qcom: x1e80100: Add deepest idle state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-hamoa_pdc-v1-4-760c8593ce50@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
In-Reply-To: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773331000; l=1749;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=yzm4LE/i0eUgrDI20KHh/zGs6KXb6rjOLlyDoM6yMxM=;
 b=JKAWvWFz5sX7XgU7PF5rGftEOKi56jiZRWIeR1l8Wk9T0TY3Znmn1jZlj2i5AjiOn2t2o/kYW
 xbG2Prm+MeDB53WZBwsUWuFPEJNJz5JTeUyDGzhbyHz7QaBclBi7bj5
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-ORIG-GUID: 8a1uEr5dHeTLXgNCCLuMVP2A9R4kr0d9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyOCBTYWx0ZWRfXzIVyO3LAl65r
 KZVzOQdtrhGHMRG5d4Q+BOWpUT2KRIpeW71iX8Pk4XHJKUJwoWce8o8w9ilgxdb906+Jo+N0Aig
 xnx2vr/pkCc+kmS+PeNCZDEoohwZ4fIX52gRA6HBb1y4vab3Toh7vSc3HeAp/NofCo4b7ulCcka
 bleqM+O49qQouFH5r6P8NXqqtL4UHD3+5VGCsI4WCTNCHaW3ej5Pp9A2Ul5epHyLg5nAcTcYpzR
 F7uKiZwlk2aWVYf02kaaivBBP1pqU6+HwhPolb3Qq/E0GE5u7yzR200+4ouyWVhVyDnGIzNQajR
 5RMqaasmQwKwBv0oLANo2lRRMecPGc9IHZGzmZrlIRLWkbtv5cnshlH7FXQS8lt2OC3z/xzJbkV
 kaLpBz8l5+7RL3gWAa/oYx1u5YFVv9Y/IclupcqRaKRxL14iI7srtDG2F58ayZfdNxiU1LFKIGG
 Q9iPYqJQlRtrddjWLbg==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b2e24e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=x31kQvTfQKClviX5dXsA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 8a1uEr5dHeTLXgNCCLuMVP2A9R4kr0d9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274695-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[interrupt-controller.b220000:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2DBC9275171
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add deepest idle state along with pdc config reg to make GPIO IRQs work
as wakeup capable interrupts in deepest idle state.

Add QMP handle to allow PDC device to place a SoC level low power mode
restriction.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index ebecf43e0d462c431540257e299e3ace054901fd..8f560fd140661ad720fec979eabe3ca8ffb34273 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -290,6 +290,14 @@ cluster_cl5: cluster-sleep-1 {
 				exit-latency-us = <4000>;
 				min-residency-us = <7000>;
 			};
+
+			domain_ss3: domain-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x0200c354>;
+				entry-latency-us = <2800>;
+				exit-latency-us = <4400>;
+				min-residency-us = <9000>;
+			};
 		};
 	};
 
@@ -447,7 +455,7 @@ cluster_pd2: power-domain-cpu-cluster2 {
 
 		system_pd: power-domain-system {
 			#power-domain-cells = <0>;
-			/* TODO: system-wide idle states */
+			domain-idle-states = <&domain_ss3>;
 		};
 	};
 
@@ -6013,8 +6021,10 @@ dispcc: clock-controller@af00000 {
 
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,x1e80100-pdc", "qcom,pdc";
-			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
-
+			reg = <0 0x0b220000 0 0x30000>,
+			      <0 0x174000f0 0 0x64>,
+			      <0 0x0b2045e8 0 0x4>;
+			qcom,qmp = <&aoss_qmp>;
 			qcom,pdc-ranges = <0 480 42>, <42 251 5>,
 					  <47 522 52>, <99 609 32>,
 					  <131 717 12>, <143 816 19>;

-- 
2.34.1


