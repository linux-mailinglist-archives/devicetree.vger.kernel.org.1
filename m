Return-Path: <devicetree+bounces-135322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 091C5A00859
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F4D63A4681
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0435D1FA151;
	Fri,  3 Jan 2025 11:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3b24vBUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE691F9F54
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902730; cv=none; b=lDhzK5esYyrDyCS1Hq+cG5U6+Ed4Tp1b6XQnyIYtHBoAkJMmHHaGjV0GZVUn4eojZ3u71Q9BFEHUwAER8liVUJS/LN2SgRazJnNWdYTdn14s6Ib+4CM0RG9oh6fUgYHF5LvjagXEqIgZZY7IMB08fM41qrZoyoBv1Z8YEl5bVxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902730; c=relaxed/simple;
	bh=9syiHfl5bY/+ZuerVXu4AD5kXE4TCvFe03fyh8+vtaw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sM/XzzECdetE1KuEM7uRcP669Ci0yvCeJKNNdYsJMsryVQ/CvyL1/z0npBYvXeJOKSqaTQCWaeR2H55AjlHHpyVvsNiJSUrRkWtiCxNGOHO5P/FxyFmfQWEIz2+8RcPqtMqzg3waM8HpGpCFFlT/GmJDV5kMRCXN5Ml1fp8Wfkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=3b24vBUc; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so17459487a12.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1735902724; x=1736507524; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kyyf31REfBMa8hAbzxypYy0avukSxSn2klPnuBIRiGs=;
        b=3b24vBUcshzLE/LS9XP6AgERDFyybnplw3BHqeg9YT8j/s+X2ylkf6lh/QpH2m1iOl
         ijBbX7EZeslfKwbFGKI7C9bzL7GHDviYTgWnRju7YQdxfaNGwJUzCZzvFSWcopZFx7xL
         aSlUrYwwdbZ84CvvjUj3xQHkZGxYZu0JMae8SdpJRi6fqJEnAkySqfwO0OT/7hjlR6mc
         ygx2wkq1ihUCfTV2Obbvspey5NNvIHgYz0D78IDLF4rKPkvP8gOxhrTpNSyvm4tiM3TE
         mT60zcQmCb0Of/kWBO5f2rlgPN40UdbZdAqBDPtGr/5i/wNcMPoLv1n9vXBX94tT6uPc
         d7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735902724; x=1736507524;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kyyf31REfBMa8hAbzxypYy0avukSxSn2klPnuBIRiGs=;
        b=hGFasVA0BdjQGQ3EA7SCrrvp4MXCaGlJq2EIuAr4Z8x5Ztwu5sbwDkA9lZeufB7zi3
         g0E3pm4vcpcwtigVAT3kqryUsdzg910SOcqj532lmc7dnIJa9oHR6sb+SN9KwzmKDrIO
         N8GZdS0y9yUCjj/SBTqKbJ8m1TWB59K8gUrcWjQZJ5abg2g9fgw8Yiw1GfjAuD0TGWra
         ptW2AbCCsKSIwY2BEY/Xy5kZVa1OS42DlevJPCYMdRzevsrpeZJx5ydJm/hzNwWjg95D
         sOKES5cyKrjEDvP2ytEhjBFzuGT0AHJ7Qy5gOmYQVpJMCu0iK+/4JS6D1AT/oFAx7y9G
         Z4fw==
X-Forwarded-Encrypted: i=1; AJvYcCUSMYCIvO9wBk3A3k1WoWfJW5mG5Et//zjXg2+OYzUuzPoe9VoZ43jX7ucVZHBFXFDj7dsLAWiKwU5X@vger.kernel.org
X-Gm-Message-State: AOJu0YxFyljwLQoheMPIy638OdJKG4kOyVKjE3WDLbqxX3HdrTQluCM+
	qXNWV5DsDeUWA8KAmmOCr16fxLfF38rLpo2ns105GaSv1BJKWECutRIcJ2d7WuFoOgp9qG0/n7d
	N
X-Gm-Gg: ASbGncub7s0JuQuwaEcdIpUel1huQiXAj6DZ0EZdtI0NV2Up0D7VfZ39DlddrOAsckJ
	UQ2fOSNMRpm3SxCDLH3sPARXFSe5JcBVjxvo9jPX8SeD8Y0lTPpKgWLieSyr37kRvSi2dMYYLMd
	pv2txSTOn7AbXpeV5wlzMsPY4Rpz8lldaIJHEpHQ7XJWcuGzCFPHJcBwaRA61M2bZ77rphB4qU2
	2r/DfrMWHdCT67HM4BqprvG+QzlNd0dm/g/htMBoehhlZJdqxxVGO6Q2RVM4kDOSk4N8bem5seT
	OwTpFNuZYR1ZXe00i6QU+AXVUg==
X-Google-Smtp-Source: AGHT+IExS1Ap2K4zFzqvx1Mowb2othcDl78P9thYUgfIVS5DcvEsA3VQ8fR/5weNv3Ey9SlGemY5ZA==
X-Received: by 2002:a17:907:7e8c:b0:aac:2128:c89e with SMTP id a640c23a62f3a-aac334f31fbmr5007224866b.43.1735902723800;
        Fri, 03 Jan 2025 03:12:03 -0800 (PST)
Received: from [192.168.178.188] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm1894101366b.183.2025.01.03.03.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 03:12:03 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 03 Jan 2025 12:12:00 +0100
Subject: [PATCH 4/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Prefix
 regulator-fixed label
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-fp5-cam-eeprom-v1-4-88dee1b36f8e@fairphone.com>
References: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
In-Reply-To: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add the common vreg_ prefix to the labels of the regulator-fixed. Also
make sure the nodes are sorted alphabetically.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 60 +++++++++++-----------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index fdc62f1b1c5a398abaa71818fdf2858fdc445d28..cc1f89a4015218b0ea06811d2acd4ec56078961e 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -108,6 +108,36 @@ pmic_glink_ss_in: endpoint {
 		};
 	};
 
+	vreg_afvdd_2p8: regulator-afvdd-2p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "AFVDD_2P8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&tlmm 68 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_bob>;
+	};
+
+	vreg_ois_avdd0_1p8: regulator-ois-avdd0-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "OIS_AVDD0_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&tlmm 157 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_bob>;
+	};
+
+	vreg_ois_dvdd_1p1: regulator-ois-dvdd-1p1 {
+		compatible = "regulator-fixed";
+		regulator-name = "OIS_DVDD_1P1";
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		gpio = <&tlmm 97 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_s8b>;
+	};
+
 	reserved-memory {
 		cont_splash_mem: cont-splash@e1000000 {
 			reg = <0x0 0xe1000000 0x0 0x2300000>;
@@ -134,36 +164,6 @@ rmtfs_mem: memory@f8500000 {
 		};
 	};
 
-	ois_avdd0_1p8: regulator-ois-avdd0-1p8 {
-		compatible = "regulator-fixed";
-		regulator-name = "OIS_AVDD0_1P8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		gpio = <&tlmm 157 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&vreg_bob>;
-	};
-
-	ois_dvdd_1p1: regulator-ois-dvdd-1p1 {
-		compatible = "regulator-fixed";
-		regulator-name = "OIS_DVDD_1P1";
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		gpio = <&tlmm 97 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&vreg_s8b>;
-	};
-
-	afvdd_2p8: regulator-afvdd-2p8 {
-		compatible = "regulator-fixed";
-		regulator-name = "AFVDD_2P8";
-		regulator-min-microvolt = <2800000>;
-		regulator-max-microvolt = <2800000>;
-		gpio = <&tlmm 68 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&vreg_bob>;
-	};
-
 	thermal-zones {
 		camera-thermal {
 			polling-delay-passive = <0>;

-- 
2.47.1


