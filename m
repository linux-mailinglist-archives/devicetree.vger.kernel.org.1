Return-Path: <devicetree+bounces-219237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3AB8917A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A27217433B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FDD3081D4;
	Fri, 19 Sep 2025 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lZGA1Zzy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185723081B0
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758278422; cv=none; b=csOhDndzzwOMb1mACTQVtcMjwFqIR69rLfvTr8YVjoRBoyzmJj3Piqn74xaZ00owujSmSNmDWgT4LeFb1omxbfvnEXQCYaFbAHojKOc+DXNorK00bGwx+HOHGbgxYsq2TcLQChd7VG1w42E+kU+dagjZTvbD5lMapmvyNMi+p/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758278422; c=relaxed/simple;
	bh=jTpABLSEawOw9mvwoIuCbs4/XDey+tgLtwUcUUnw6U8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TL+UytOrFpKQYbDoUAOL6j3SwyLu8X5EB+ejWuY+CHZeDWTq6myKTNB1uNsKr0fmOz1JLPJqJLAmuhiIun9H37Bs1fORI1IjvKt4sBnt0ZFpmNzp6GxalVRigCU1/D3ZCwje66DwalWbYHa2Lzy92B4JHkkABPPlw671lE9Cd3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lZGA1Zzy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J687Pd021478
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dXfKxZCGajcsFmUbhfW1fP
	TYCliid4RKFmwYUMeNAJU=; b=lZGA1Zzyv85w/Hj9+bbc4JesZ2U9Ke6UAJ+h4z
	hAHR4/D5Qr5xEPbRzvWEqfWFTFrs3S6PX8DEGuSBrYEO/Iri2Y/bjVilsnHm2lO0
	BWJuXhA7R6OEoXAD8RwQFcdK/SwaleuK9EVePaFDvmAdC031/61COka+Y/wXiQqz
	6AtHpBW3TEo19SB/n1eELnWbNMUYnmGnC6KiopIxt4uvM3wJJdnlfVNkuPa7xN9s
	GPn69VaWQlzg40CNk4Br2Zo7byft9ND57crxfmVWX1CWrvTMDsyjiTwqvdzcRRKD
	+2+Cje6yu3nQTVwaLpvCp0JN5/w0AY+ZE8pudrPjXOjKzMRQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5j46w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:40:15 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5519d1919bso861891a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 03:40:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758278414; x=1758883214;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXfKxZCGajcsFmUbhfW1fPTYCliid4RKFmwYUMeNAJU=;
        b=h3JsPuM7oq0dtnxrnUwUPPs0v5BcY0m1Pv04UpenggSseT/2P4TwngnpIY/mN7QfxB
         /zbJq6uA/1rD/DJ2tisfOVwM50JjHFkOlcsGThAj+ShZ541JjO/ZzUwgliYOvkH+4oto
         O8IAAaQ2grVzH9/OCBsHTk7tKjiJ4UMgpjyLkEi1uXrgu1idLSxQeWwiBkw1IUFYyiXy
         4szy8umMgaX6wTBW8LFXCShJG0mJPzO+8W82YySlgz6Or5MUMsrjODNDkxex841rNbD4
         q8WMnRuNK2vdnZJqTOK+Bkn9oWF6ZIjf/PvoHqXCXnoVGkR9m/HybKlaTIhmcSNhSLM1
         lq5A==
X-Forwarded-Encrypted: i=1; AJvYcCXpPEo4dOi7gPRZq8GZA6k1ivZv3Vtc5axDkKf47oSzpb6oJG2WIRTrCmA7cyo8ycjLV6rJ2uyTjNYu@vger.kernel.org
X-Gm-Message-State: AOJu0YwH51/wclI3a+E4Ue/xAsGup/4MzJHulzh+Uv2M0fE9keBjxN4n
	7d9FKYJyCVBUjYun4kPachIORmS2WixKaC9tCP8cJdP4ZsiHnoC/A2zcc/1cWO5my95r5S3e6m8
	Cvnl71I8TCPEh90JvFtZspXs6EUGxcnVB78rMcc+iW+uXHND7tl4peapEYg4cGAc=
X-Gm-Gg: ASbGncuhsVqU20Qa+X1I5bz+DX6/L0XXmaUGKrPZ/f6I2rJNYTD5AIsZ248nvXKtiSI
	Q/M41qqRrtdI4ksKwmBJsO3h+n5UMY9DhyyU3wwZUYPU7pGvNj07qk2tTyIIvHzezN6N7618xMJ
	hp5JoXCkYMpeL1yi6o3AzgpZacZ+BBirzpCGDS7oEwnOWrRsUwmjCsFvo9gtD7rZoW5P29XlBJx
	ykOoTuM3hnn0kUyDigDxN1OYaMuJbeIXtKC1ShLvRkGvaSed7OYxZTum3JGQ8ilcd2cl5ug8G5j
	ymVXwsAzvHrA/0VaDsTnG82bUE9Jqh5XzA+bUv7j89hyRTZpqBY4e/pvo6uNpRy+9kXiQg==
X-Received: by 2002:a17:903:24e:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-269ba46450cmr45873955ad.18.1758278414164;
        Fri, 19 Sep 2025 03:40:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCTTuWw3CFA0FVOYTgIav8eEeDbH9S7p+c9gr9IeuB21hOZoiQBATfw7jGkBXR8igiNxwIUg==
X-Received: by 2002:a17:903:24e:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-269ba46450cmr45873555ad.18.1758278413697;
        Fri, 19 Sep 2025 03:40:13 -0700 (PDT)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802df446sm51191745ad.68.2025.09.19.03.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 03:40:13 -0700 (PDT)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 16:09:24 +0530
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Update regulator
 settings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-b4-rb3gen2-update-regulator-v1-1-1ea9e70d01cb@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANsyzWgC/x3MwQpAQBAA0F/RnE2xSOtX5LDDWFNamkVK/t3m+
 C7vgcgqHKHLHlC+JMoWEso8g3FxwTPKlAymME1hS4tUo1LlORg898kdjMr+XN2xKbbUkBldRXN
 tIQ278iz3v/fD+343FaULbQAAAA==
X-Change-ID: 20250919-b4-rb3gen2-update-regulator-7b5b2ca3bf49
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        tingguo.cheng@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758278409; l=5263;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=jTpABLSEawOw9mvwoIuCbs4/XDey+tgLtwUcUUnw6U8=;
 b=4bp5h2BTOBGk7AVkBG/wo9T3jCaT8Pe8qv8M6TrUEj5qeeB3JHfnKweATGznKiLjl/PwBTZ4t
 /xSlfPXfha0BSuLR+Ywbjbe7hcrSnJoRsxogADV3sphybaMvSEJA2I/
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-GUID: WC50am1myi4_KTST3tlLzKllfLIo21fX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/jGMruPh3m5Z
 HgGr23TyPdY1faRJG/q+boAGQxJIwH3bYwES1TCnfdmcmCU79hXyGbMzdqTN+u0Alblek5wwxWV
 cHR0hCj6uxFnGX5QtdIe1zqNKqZlHyo7AsHmWU4Yaw495FIJxXrVcBujCUTJ/hS+sDcMRlBYt4Z
 mLEDDQwZl1p47Nmu1s2uSJtPnMZmdo/9K9ikuUrmVZ/rv7xEzp2YTgu2rnFxcB+OjGVB9kU48eQ
 9uu3UUTYWQu/yuRvgtRI9MggP7rCy72+rGILieBE495nVVx595NydizW2wreqLHsnVuDH5yZO4k
 T2q1c2CIY/sMXt9HjhI3+Cvlu0LMoU6mG9FOvhjmwtLEIDZOBVAgkDrvYhqmCIVgeQlXCi1mpHZ
 eJ15IFJI
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cd330f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xy6SXK4bz0Lwp-duAgIA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: WC50am1myi4_KTST3tlLzKllfLIo21fX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_03,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1011 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

Update min/max voltage settings for regulators below to align
with the HW specification
vreg_l3b_0p504
vreg_l6b_1p2
vreg_l11b_1p504
vreg_l14b_1p08
vreg_l16b_1p1
vreg_l17b_1p7
vreg_s1c_2p19
vreg_l8c_1p62
vreg_l9c_2p96
vreg_l12c_1p65.

While at it, remove RPMH regulator rails (listed below) as
these are not to be used on APPS, and any client accidently
voting on it can potentially cause issues.
vreg_s2b_0p876
vreg_s2c_0p752
vreg_s5c_0p752
vreg_s7c_0p752
vreg_s10c_0p752
vreg_l4b_0p752
vreg_l5b_0p752.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 58 +++++-----------------------
 1 file changed, 9 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 18cea8812001421456dc85547c3c711e2c42182a..6355c1e2c58165757a9a20ab4368e93545904693 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -335,8 +335,6 @@ regulators-0 {
 		vdd-s8-supply = <&vph_pwr>;
 		vdd-l1-l4-l12-l15-supply = <&vreg_s7b_0p972>;
 		vdd-l2-l7-supply = <&vreg_bob_3p296>;
-		vdd-l3-supply = <&vreg_s2b_0p876>;
-		vdd-l5-supply = <&vreg_s2b_0p876>;
 		vdd-l6-l9-l10-supply = <&vreg_s8b_1p272>;
 		vdd-l8-supply = <&vreg_s7b_0p972>;
 		vdd-l11-l17-l18-l19-supply = <&vreg_s1b_1p872>;
@@ -349,12 +347,6 @@ vreg_s1b_1p872: smps1 {
 			regulator-max-microvolt = <2040000>;
 		};
 
-		vreg_s2b_0p876: smps2 {
-			regulator-name = "vreg_s2b_0p876";
-			regulator-min-microvolt = <570070>;
-			regulator-max-microvolt = <1050000>;
-		};
-
 		vreg_s7b_0p972: smps7 {
 			regulator-name = "vreg_s7b_0p972";
 			regulator-min-microvolt = <535000>;
@@ -385,27 +377,13 @@ vreg_l2b_3p072: ldo2 {
 		vreg_l3b_0p504: ldo3 {
 			regulator-name = "vreg_l3b_0p504";
 			regulator-min-microvolt = <312000>;
-			regulator-max-microvolt = <910000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		vreg_l4b_0p752: ldo4 {
-			regulator-name = "vreg_l4b_0p752";
-			regulator-min-microvolt = <752000>;
-			regulator-max-microvolt = <820000>;
-			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
-		};
-
-		reg_l5b_0p752: ldo5 {
-			regulator-name = "reg_l5b_0p752";
-			regulator-min-microvolt = <552000>;
-			regulator-max-microvolt = <832000>;
+			regulator-max-microvolt = <650000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l6b_1p2: ldo6 {
 			regulator-name = "vreg_l6b_1p2";
-			regulator-min-microvolt = <1140000>;
+			regulator-min-microvolt = <1200000>;
 			regulator-max-microvolt = <1260000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
@@ -436,7 +414,7 @@ vreg_l9b_1p2: ldo9 {
 
 		vreg_l11b_1p504: ldo11 {
 			regulator-name = "vreg_l11b_1p504";
-			regulator-min-microvolt = <1504000>;
+			regulator-min-microvolt = <1776000>;
 			regulator-max-microvolt = <2000000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
@@ -457,7 +435,7 @@ vreg_l13b_0p53: ldo13 {
 
 		vreg_l14b_1p08: ldo14 {
 			regulator-name = "vreg_l14b_1p08";
-			regulator-min-microvolt = <1080000>;
+			regulator-min-microvolt = <1200000>;
 			regulator-max-microvolt = <1304000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
@@ -521,26 +499,8 @@ regulators-1 {
 
 		vreg_s1c_2p19: smps1 {
 			regulator-name = "vreg_s1c_2p19";
-			regulator-min-microvolt = <2190000>;
-			regulator-max-microvolt = <2210000>;
-		};
-
-		vreg_s2c_0p752: smps2 {
-			regulator-name = "vreg_s2c_0p752";
-			regulator-min-microvolt = <750000>;
-			regulator-max-microvolt = <800000>;
-		};
-
-		vreg_s5c_0p752: smps5 {
-			regulator-name = "vreg_s5c_0p752";
-			regulator-min-microvolt = <465000>;
-			regulator-max-microvolt = <1050000>;
-		};
-
-		vreg_s7c_0p752: smps7 {
-			regulator-name = "vreg_s7c_0p752";
-			regulator-min-microvolt = <465000>;
-			regulator-max-microvolt = <800000>;
+			regulator-min-microvolt = <2200000>;
+			regulator-max-microvolt = <2208000>;
 		};
 
 		vreg_s9c_1p084: smps9 {
@@ -600,7 +560,7 @@ vreg_l7c_3p0: ldo7 {
 
 		vreg_l8c_1p62: ldo8 {
 			regulator-name = "vreg_l8c_1p62";
-			regulator-min-microvolt = <1620000>;
+			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <2000000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
@@ -608,7 +568,7 @@ vreg_l8c_1p62: ldo8 {
 		vreg_l9c_2p96: ldo9 {
 			regulator-name = "vreg_l9c_2p96";
 			regulator-min-microvolt = <2700000>;
-			regulator-max-microvolt = <35440000>;
+			regulator-max-microvolt = <3544000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
@@ -628,7 +588,7 @@ vreg_l11c_2p8: ldo11 {
 
 		vreg_l12c_1p65: ldo12 {
 			regulator-name = "vreg_l12c_1p65";
-			regulator-min-microvolt = <1650000>;
+			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <2000000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};

---
base-commit: 8f7f8b1b3f4c613dd886f53f768f82816b41eaa3
change-id: 20250919-b4-rb3gen2-update-regulator-7b5b2ca3bf49

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>


