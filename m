Return-Path: <devicetree+bounces-247391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BFFCC776C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE6E53007C7E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238F233B96D;
	Wed, 17 Dec 2025 12:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGh91Cw1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hkdArdHH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C98922B8D0
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765972880; cv=none; b=LSLhw6ddD5Sc7L5cPozQTzkYKM7JP+LHVHSel+xskE/TVj1m/ZqLvN1LwKuUV5xgMx8SVSHjgBuWCCvundWmZYZYq9fZ/9DPzn3hYAlcKx7oXrZeKe8oI+8u1KrwaEIkk7P/OlfollHF3HJzjDUqcl4y5lVk9e6eNaenqM/prSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765972880; c=relaxed/simple;
	bh=FUXdSIRu79LRQPbt1btlGyMbzDsbi6CEs6GMqYJ64D0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kLevBFizYaAhAK0TwFSXQ337fYR5hPrZgACpN1XEFaJHz5FxFtIBBTLOnI9V0soCYiH4iMDkjULPlzrnwMWPGOBL+jRjfaR0xKLRL7nz4tuoCI5RgZnOh2PTI3cAWbY3GMMClFwW7RfLZt7MALnuilevAuzjEnL3CEODCYtWOlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGh91Cw1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hkdArdHH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAwYMq1591246
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tRpffdhfGu+blQPeoVEio4Neufptd5q5sVp
	xcOLVozM=; b=JGh91Cw1MkWCmJ+5W/WZW2T7LuJOwA1Iu7rLVKVHC6c8fGLLqr5
	PXABnJmjsNOj6RO1pmibDws1gqqqbKH2P8YEfVOkvxhi54mIpAXU4ESGSNCzqwdO
	Iu62IehtOPvIXknHEusYAPqRg/+j1aNapUyNHhsZhOo+PJxN1wav5xjHhVAR1K31
	xUyx6CfWgSXQ9XpBHRJZ9NNi2eSsgLafb220+x1kodQrQUDGxHpmHEoRDfvYzSAw
	fJ+qSdoJir5GziElSmH6mtPHIzdmePt5SkaPY+L4zugTvRk0eEZpAvo4kkKbkfK0
	pMGVnOtWNDNzKlqqIu1b4u/eCRZXRfXY51Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefja46-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1f42515ffso73663981cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765972872; x=1766577672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tRpffdhfGu+blQPeoVEio4Neufptd5q5sVpxcOLVozM=;
        b=hkdArdHHtLzeyw0cc/vOhdj70gkMDWA1gkRf+mvS46GeYWwF7wLeJxwEYMnK9iK6RN
         GWaJLGSTAC49rI/VMj5YQBvPZy6f0M5JM2uvHiFFV1k0xnL/ksTwLZKN7C3n99W9zet4
         s9pvz/cMUlYRNGAHzQFEHz2tjuc/cJurJmjQexSuOWlZK4qms/EKtbycg2EkG+DDQqim
         +Vj021iIZiezQ2Wa23aCh+CfVvb4XU2TeAqu89wNxbxrI+hH9gmqeDnkSu04ujKo6yBw
         3bUQspjKPZ90TwErvV3Xm32UWSlEf2Ln9aRHH3obuD0sZ4nyE2pr2cM6VoQctQyRvlH0
         yI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765972872; x=1766577672;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRpffdhfGu+blQPeoVEio4Neufptd5q5sVpxcOLVozM=;
        b=FjU/dPP4czVZ9blDOgEjw86Rpg2QQUE03ZEaQPQC3NKddz4r1RMyYxHu5yk4M4Wv6B
         lCdXIkx7UwwBtNFLNMRRg+bAJ1lDi9z1RuL3+s4U7oTwJx9QuzDjA61w2e/GBb8CxSYY
         hnMkAXFEhaN9PKp1bYd5uhsFya6Rj23FWOqJaJwVU43E+0sM2ghlVWWGN5DB1iffdSI1
         /p5jUqF7Q4fDH6jhH+QgyQyMIR6U8msA7OGiohPvCOJES1RLib0kZtAcAtJIzIOhBc7D
         0hdMK6vZbfKllzVmeQMubeEN3rXv1WLq582WsNv4JS9jbWEPVqQzJcsx6/5EUeRRkEG+
         AEvw==
X-Forwarded-Encrypted: i=1; AJvYcCVUpJUvxBoVjXn0BqgppsbNJxAD9PdMsGqGglUHSpdqnsKFXImeLfZRAHdZGcmTzOnBe3/wW72XXRTv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+hmr/73H1Cia64RyeVTPTWmcsUh4kBo7Xm7DoMtYPnGYM5Z+o
	u/xetLSCV0jXKvP4F4PwVUYB7oG4vrOpvql+JR8EMOpG4iuYc2QY9RA77LMaicpm7bmvdZ88Y3s
	gFv/mDAms61j8m8iey078tWOWm1V4ZGYhnZ2ej6gzi28UmY37F/c5j281lk2bKSbT
X-Gm-Gg: AY/fxX54+gysw9M6/yHJeuk6hNLsMSbg2Og8dHKRk1o7+TFockJEE347t4RTiLCYBDI
	UvzM0BG6PoLWXf5X2NGw36k2jFQ44U56/RSw2K+2YKjgRJehTjYBmnQri7saibkE210MB3e5Fk8
	5QXIC4qSmhvpDig4L0cUMCHfkBpAqbbx/FpTNOh+1Zo5YYNCM0mWfLKPJAVa6BJIxygQzult/bk
	1fyelHwQ9Q8zDnn+IubAVSdf8su/oJ5ri7mYvrJQ1T0QKJvuW8hPDqMI0uxekYusHtSeyOh8IhY
	llHpI2fN9zv51p4Jzq+J3CF0qqbALB45Uf4ndL6D4ckK6NyfVKU8GfId1EFHLoQvojxDrXFzQDM
	Vj3bkSRldK5TGNTAlU+6dFeme
X-Received: by 2002:ac8:5703:0:b0:4ed:43ae:85f6 with SMTP id d75a77b69052e-4f1d05e132emr220162181cf.47.1765972871511;
        Wed, 17 Dec 2025 04:01:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQmZreF5erGJ0p/P4XMvsolxRo2ReByi9x8i/y7qpiycD0B1ysntmTqL4xNDJBJDK3i1GOOQ==
X-Received: by 2002:ac8:5703:0:b0:4ed:43ae:85f6 with SMTP id d75a77b69052e-4f1d05e132emr220155841cf.47.1765972865850;
        Wed, 17 Dec 2025 04:01:05 -0800 (PST)
Received: from quoll ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b800530cfb5sm254826066b.39.2025.12.17.04.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 04:01:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: hamoa: Add sound DAI prefixes for DP
Date: Wed, 17 Dec 2025 13:00:52 +0100
Message-ID: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1491; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=FUXdSIRu79LRQPbt1btlGyMbzDsbi6CEs6GMqYJ64D0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQptz9/pESJL1yw8+6COsbQ+//AoBRy3DTdXEq
 eVQBNJHPIeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUKbcwAKCRDBN2bmhouD
 15f5D/sF/+igsq9e6Fkz4HuCW5kJCsDOkCDtX5xwD46Y18JTLD8dM0B4A8OM9Di9BOiac5TF3lo
 tcfANsCzaAFzm1JG3vZkp5vJyAfsHbvlO7dk0gsLIaCjkm7toZQVX496o+0iaaE5NHG4TgOm/Ir
 sDXAHJK2G+CnrnB1t862fErAaKJ4QQaJvZ7LR/TI6WV9U8wbs7XA4weN8mOA2x1yqaDMeWavuC6
 5nXpv9QkScThtP39PU0usW/ixKRVIcuEEY5g5iA9IA9OG8jsvD8zzIabGYspTVbfYAx6tgeIhO0
 MjqJN8p+GcHbFtHzS//yPXcD/JbTl0klqA9YnPSlC/ewvkbB7bnctH9KPTqYkET9KLgXysYGFyD
 C3kVefc3xyuYL9Hvh6GzTQx1i1hHK+XyDt0cMpamC/cPVtvAukDNkPZLbPfdL9VEZO5KrFT6i6e
 X+jBJu/X5drAgB4c0ksQvRfMKGX3jgnaE9fFpLvfyEO4UpVUTyWAuVtg4BKky9hqYzdh0Mp9Juh
 XQF/gl4qfhiJD2pnLSrEN8DhLbLrOKRVq6xbpMMUlYMERa5gK4HTsaeLwkzCrcIjkzIkuBCRb0z
 sql5qc3Y5XmRE0u+D3LTQVBLD8PZ4X/MbVv7CwUlWYdv/ykhC9g2zoob3qvn50o6agkKpbYbjD/ NNwx9hHu/Th0fvQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5MyBTYWx0ZWRfXyNdCXT0OEZ74
 S1Y6xeyq+auaUe/TGukgGU1THJ38/D9sW9sOoCsPjvnO4Q+Sy6rwjS+SeyHwIXia4OHLnrsjdNg
 RPx4+DlI/HjlKv9AjqnhLklRNDNiGfviw11a2SX2RHwZRxnUlA7HQIggIqs4UEeGrqgIYzYVggr
 8Mu2nNa6HPQ0/uyUE6slLaNQ1JCmhYlGRVvCVZ+cs0YOmDeJV02iPOzYqpdgWGPOQn2iZvwl6yQ
 mD4VOjB8cVIavu/F4vbatBwZREMAv+aYV0HafuD78GuQuEodkv+RELI5ECO2QB6a7/u4omAy2S9
 Z/qWrKIQqwgQwHH+JFYk/AT6wuAhSCkh6o9c8YFd8H29z215k0GopY4qQy4j9NmZKWJ+RzqdC9A
 Nm7sOm/JCzICwlLzM93WQSEU/qEoNw==
X-Proofpoint-ORIG-GUID: 8EsvfIGQPUdvOTaD44TTj33kbLBElagV
X-Proofpoint-GUID: 8EsvfIGQPUdvOTaD44TTj33kbLBElagV
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=69429b88 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Fe5OG9wbHMQLStrQ8AYA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170093

Sound DAI devices exposing same set of mixers, e.g. each DisplayPort
controller, need to add dedicated prefix for these mixers to avoid
conflicts and to allow ALSA to properly configure given instance.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. New patch
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..c3119a6c28ec 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5579,6 +5579,7 @@ mdss_dp0: displayport-controller@ae90000 {
 				phy-names = "dp";
 
 				#sound-dai-cells = <0>;
+				sound-name-prefix = "DisplayPort0";
 
 				status = "disabled";
 
@@ -5667,6 +5668,7 @@ mdss_dp1: displayport-controller@ae98000 {
 				phy-names = "dp";
 
 				#sound-dai-cells = <0>;
+				sound-name-prefix = "DisplayPort1";
 
 				status = "disabled";
 
@@ -5755,6 +5757,7 @@ mdss_dp2: displayport-controller@ae9a000 {
 				phy-names = "dp";
 
 				#sound-dai-cells = <0>;
+				sound-name-prefix = "DisplayPort2";
 
 				status = "disabled";
 
@@ -5838,6 +5841,7 @@ mdss_dp3: displayport-controller@aea0000 {
 				phy-names = "dp";
 
 				#sound-dai-cells = <0>;
+				sound-name-prefix = "DisplayPort3";
 
 				status = "disabled";
 
-- 
2.51.0


