Return-Path: <devicetree+bounces-23461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4F080B56E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23C5D1F21007
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE28F182AE;
	Sat,  9 Dec 2023 17:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ujyn2XY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C8AF10D0
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:16:16 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1db6c63028so352626066b.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702142174; x=1702746974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N//LFsMjuZq4iKtlyMYGCirrn61f3kbX/lE5kaAb5qM=;
        b=ujyn2XY0s+DUNmoPYucuSF5vT+dDO00Pbd6eWcNLxGEhfLYQWPd3v28noHNgixDjF2
         noxlZuqRJEt/1yzFr/9AK/Abrty8SCQz6sn2jdFL5gvwMrh1XR1HhrW3IHiVqVQp3D5Q
         8Rezqht58jXYsHR0XGjNGya/AkWbRQU0L786YsyfMTQ8Rdy9t2Tyi5lGtv70BFlaQz2O
         ldsKqR/68ErVEwWOEjW7ims0s2lF9uoW89KAUxMhvNIJmAjSnyG4qu1wK8Hczx4I21lN
         qU0sg965U07p3sw7K7MIy9FrR8wEs4juv68t0jc/kQzZ2BVqtmlAB1O7fyBAsKy/GEJV
         NO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702142174; x=1702746974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N//LFsMjuZq4iKtlyMYGCirrn61f3kbX/lE5kaAb5qM=;
        b=UNfxeXOzq59DLWO0FR3/D6S4oOVqxroFzbE3ST8fw3pLIDQPoPLIUZeY4yqb1E/H+0
         rlg0kGQU9uQMobLEXh7fri35QVfQ5OlcCuOwXhHW0r0GMDWLrKQnPPEbMI39bUaX7Gv1
         X7WqUKf1wDGCOORgZNtEhC+QpShmPSV67qy1GnETEIAGqXrxz6cnZCpoczN8wvY2mrMb
         sNvk3QFwtIRbnr7pP03uQSu46c/rT7+dC3dDOvhiJ+XmurgcmjlGa7neo3wYDQLFjlWc
         xEuIiG+D1fr1E9cxXLWjWcuKxLy4NtSVxJU1xrPmo8RrpoCAMal+AgVZsS0VAR/MKV5s
         q03Q==
X-Gm-Message-State: AOJu0Ywrt8Bxs7iSGnSlGlV6jiOivPbBUsXjAdxA40upoxVpzaqDBeh1
	GjahI/6P72SkshpKMuGniGiHFJlWS1qbE6BkYds=
X-Google-Smtp-Source: AGHT+IF7lfeoMKj7lrnzHIL0I+1nREKlOADXkHe8mxEUwxT5JLX2SJIZdtAO9m5+CN97p4RIJGzMMg==
X-Received: by 2002:a17:907:948f:b0:a01:e916:3590 with SMTP id dm15-20020a170907948f00b00a01e9163590mr1054629ejc.75.1702142174592;
        Sat, 09 Dec 2023 09:16:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id sf21-20020a1709078a9500b00a1f7cbf28a5sm1179782ejc.106.2023.12.09.09.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:16:14 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: juno: align thermal zone names with bindings
Date: Sat,  9 Dec 2023 18:16:12 +0100
Message-Id: <20231209171612.250868-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Thermal bindings require thermal zone node names to match
certain patterns:

  juno.dtb: thermal-zones: 'big-cluster', 'gpu0', 'gpu1', 'little-cluster', 'pmic', 'soc'
    do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 12 ++++++------
 arch/arm64/boot/dts/arm/juno-scmi.dtsi | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 8b4d280b1e7e..b897f5542c0a 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -747,7 +747,7 @@ scpi_sensors0: sensors {
 	};
 
 	thermal-zones {
-		pmic {
+		pmic-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 0>;
@@ -760,7 +760,7 @@ pmic_crit0: trip0 {
 			};
 		};
 
-		soc {
+		soc-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 3>;
@@ -773,28 +773,28 @@ soc_crit0: trip0 {
 			};
 		};
 
-		big_cluster_thermal_zone: big-cluster {
+		big_cluster_thermal_zone: big-cluster-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 21>;
 			status = "disabled";
 		};
 
-		little_cluster_thermal_zone: little-cluster {
+		little_cluster_thermal_zone: little-cluster-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 22>;
 			status = "disabled";
 		};
 
-		gpu0_thermal_zone: gpu0 {
+		gpu0_thermal_zone: gpu0-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 23>;
 			status = "disabled";
 		};
 
-		gpu1_thermal_zone: gpu1 {
+		gpu1_thermal_zone: gpu1-thermal {
 			polling-delay = <1000>;
 			polling-delay-passive = <100>;
 			thermal-sensors = <&scpi_sensors0 24>;
diff --git a/arch/arm64/boot/dts/arm/juno-scmi.dtsi b/arch/arm64/boot/dts/arm/juno-scmi.dtsi
index ec85cd2c733c..31929e2377d8 100644
--- a/arch/arm64/boot/dts/arm/juno-scmi.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-scmi.dtsi
@@ -76,27 +76,27 @@ scmi_sensors0: protocol@15 {
 	};
 
 	thermal-zones {
-		pmic {
+		pmic-thermal {
 			thermal-sensors = <&scmi_sensors0 0>;
 		};
 
-		soc {
+		soc-thermal {
 			thermal-sensors = <&scmi_sensors0 3>;
 		};
 
-		big-cluster {
+		big-cluster-thermal {
 			thermal-sensors = <&scmi_sensors0 21>;
 		};
 
-		little-cluster {
+		little-cluster-thermal {
 			thermal-sensors = <&scmi_sensors0 22>;
 		};
 
-		gpu0 {
+		gpu0-thermal {
 			thermal-sensors = <&scmi_sensors0 23>;
 		};
 
-		gpu1 {
+		gpu1-thermal {
 			thermal-sensors = <&scmi_sensors0 24>;
 		};
 	};
-- 
2.34.1


