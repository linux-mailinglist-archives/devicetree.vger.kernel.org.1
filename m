Return-Path: <devicetree+bounces-206444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A149B2C506
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 605DC4E4539
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2C233EB0A;
	Tue, 19 Aug 2025 13:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="caE45dSk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D39B3375DD
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609379; cv=none; b=kCLwfr5f7xtCt5uG9eFDHol7NRmE2Q94OGTPaZhtl9rn1Ckl5gnVP3tv/kxQDsxOecZlTFlPpcGnYEUMciXSQZLgy/IaSnvw65lEt2+K24iNJF5JEGh+NXWKno2npvLlD8zqCNfQ1hCm6EoQO10/pC10BqxZL2wp9YR7zstwqws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609379; c=relaxed/simple;
	bh=63JgKqF3bc5t1TwNQeM5U464DiEpmWFQDp6CzuzSqJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h4iYZYpRQ6ZPVLzOFha1JHzoL/PXH+AExTqkRvShq9ikLhAkMQsBgiBmzgl8AetdnMoxqyno/VO+aZa5mf7NXdFiyMYYD/5je7PgYM0E6PELHGiM4pzi5DtjXr0+FnfbDQlZXDnJOB2EBPMhKXyX295E1WbFki/EgjjXLzZpDf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=caE45dSk; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afcb7a01426so92291566b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609375; x=1756214175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DPILFNpK7zCsqHWBHdQ9uG4ptTyRvqVrmGvIx37v5K4=;
        b=caE45dSkJ5q45GkpGk+UHmuz9Za4ebDs6Ga6XvGn+CxmoJjWQQxedjdr9iclDLKpGe
         ZNPhm24oHPwEl8mUqHjuXH4mLFVeuFJmtfKTQJ+3vZdd1jA5vfz3a1BmGNXxNjLViKr3
         0a4WxiJBakCEcap3LRIyVq9SwV1GkydmhsETIXLshxU2HhjEdf3/+W3g+7vxuF6p1urQ
         JlEn3IUCen3z6+kTsyW/SQEb9YWJdwXVujbwqTHEpqS8Ll/NdUCwFGyEcB8yRLr/ncA6
         B9ZIU85iAMaA3MUXgjTpAhRmQ0GEC/7Q7n6uscQSpk0KBWXNqOIEqFaK3XxqKckkc8pc
         sY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609376; x=1756214176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DPILFNpK7zCsqHWBHdQ9uG4ptTyRvqVrmGvIx37v5K4=;
        b=mvEuEKguo1NgE6xXCbUSxwtNje3n/1NEd806O7DXvOYoBo6AkWZ3afJBDYJlXeugEo
         +974ChIrJ8nYpdAPhEaYmrYFmYJWUoyqbfSOVR9ejwK+ACIPgpy3FcYvUywxJkfrr29X
         thwSem7AWzZEvrwWhILB1XbXNfjsPzVdh2uc0sCNq8awNJHk3FM1Ku12De3lNHXjD3yy
         97P4r5DAn6BJdBnLVNy8R5NHqACwiTJld7Ke9DuxRg2qbmUl25kpCZVV/5yC6aKbW7AM
         X3BVinEKbmKykCwR40AuLlz3AlTZ+pjiX6lShI3n9u3GInoom4QEu4oeWdEf3wpcCuxq
         IPrA==
X-Forwarded-Encrypted: i=1; AJvYcCXkGbSnpbMmxgEA0hp1J6J3u+ikpRGytczo2Y/hfk2eMO4b6r3uPvhXo5rBRBY1o41HtWW0gUPZCZVo@vger.kernel.org
X-Gm-Message-State: AOJu0YycPfpEJ1Xp4/L3RN/lW7OJo2Yvv/MU1SbxhoqEIVLmEcYxzLYf
	5f3BadjG4HiDGHHONFl5iz8bxRZx38p7nAZrccugBTk6yiCd4TKY3AB93Te8AHSBBRY=
X-Gm-Gg: ASbGncsl7Cw21yYTlaT2AhF2YOwLEuI97gVjjvXvcJ+LsNxzZ1ODJDcvt2fZWWM0ISr
	xwir0iOc8n2TthV+9pjqkUJ5AqP1J3czkpFVe56ICzHiWl0mnvNvoSz1pbCAwla2ZlGRp+7lbuB
	oC+rw4+DEDZYUKbt+c1htfFPPMBQCzCQ4kmK38OpDq1upURtXEJtTXKSawBYT33vEbGuJ7Zis+y
	iJwhgtQf9bGNd/uomTSnUHETHMTAN9XamxWsml04ScambqmQ7zciZgE71Aw+gupJPwbnY6nW2EO
	dbCpxyQGtNVOx1jz+GKs3fs0hTKea90zqJq9Puozk9GIi8LhIRp7iSqRKH4rqrjo5XOSBHVYDwn
	CNts7PV8FHN0k4pNdGSHTjd5gGRQ3JRnHKUAi7QUw8Eti
X-Google-Smtp-Source: AGHT+IFlSe6sbMbTSuOg6u2AFFHkncCf/aboZnrFBeb3plYt2M1g7caLrLJTlnNZL7b96zAaRKt4Pg==
X-Received: by 2002:a17:907:969e:b0:af8:fc60:5008 with SMTP id a640c23a62f3a-afddcd113eemr121159066b.4.1755609375493;
        Tue, 19 Aug 2025 06:16:15 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce53d60sm998744666b.20.2025.08.19.06.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:16:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:09 +0200
Message-ID: <20250819131607.86338-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819131607.86338-3-krzysztof.kozlowski@linaro.org>
References: <20250819131607.86338-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6570; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=63JgKqF3bc5t1TwNQeM5U464DiEpmWFQDp6CzuzSqJM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHkYebIcahBFBqreRmNe33++dMlPkjj+8wJIZ
 2Hj40Y7qw6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5GAAKCRDBN2bmhouD
 15l7EACPLhACEmtJ9t9YjD/9I0wca/SoRWGRlR0miHb8fOJJ/ZUdZ/TqYmuFbUZdIYkCRNryYeO
 Ah3lx7QD+SfVtWmULtH8QaFr9yhHN4qXrmsfqUlDAYNILt3i0VBLjk+sFRM4bfSzGM+bsqbsvki
 xGDBMtiSNy8RJDs+PbrhGjDkGjmOao5H1V6WYcmjlWQ54n9UbXgZWvQcHCBiggl0cAnIn2P6nk1
 GZ1mJxgT0mdIz1AwoHLzRr6DUTJwHpf7LQScLxE3oNUN/QzqXsL7QSJyWcFWGgYj0Bltxi71UjL
 91LKtj8LKkaG/I1aavb1AWprGDlvw8dZ8LPTUlh/dm9nXTPAS2N/HgH63zOA8hEajXd55qPYjBs
 tRz4BuME5cyCK2V8ygLSIGT0pbCeFaV4tckpgiQPVnz/lLZ+V6NxNNdvDEUfnaaz3hpWvJNERpW
 n+LZDBATQT2QhPK/ciSfFfZtH3sunRKb6JTPRnfjemMV9CdxkSr92N0FV1/q/k6LcbMeIEbzbEz
 DhYZ+kmQccoc1SOIX27IgL925+XNT8hfXmiGKDOkgqKUFzDje0o01PkRrxKWDZSDOAxvjRVJ7v3
 MgeUWrS5Mo9/ANCZpbMFcmNRnTWLIeWvxlULSeQXODt3ChbQ08vwhyRoPwqZ9yeknpv1sSRi1Wl WaVtMluTg3SvWMg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi             | 8 ++++----
 .../dts/rockchip/px30-ringneck-haikou-video-demo.dtso     | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts  | 2 +-
 .../boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso  | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588j.dtsi                 | 4 ++--
 6 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi b/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi
index b4bd4e34747c..192791993f05 100644
--- a/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi
@@ -72,7 +72,7 @@ vcc5v0_sys: regulator-vccsys {
 	};
 
 	vcc_cam_avdd: regulator-vcc-cam-avdd {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		regulator-name = "vcc_cam_avdd";
 		gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
@@ -83,7 +83,7 @@ vcc_cam_avdd: regulator-vcc-cam-avdd {
 	};
 
 	vcc_cam_dovdd: regulator-vcc-cam-dovdd {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		regulator-name = "vcc_cam_dovdd";
 		gpio = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
@@ -94,7 +94,7 @@ vcc_cam_dovdd: regulator-vcc-cam-dovdd {
 	};
 
 	vcc_cam_dvdd: regulator-vcc-cam-dvdd {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		regulator-name = "vcc_cam_dvdd";
 		gpio = <&gpio3 RK_PC5 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
@@ -106,7 +106,7 @@ vcc_cam_dvdd: regulator-vcc-cam-dvdd {
 	};
 
 	vcc_lens_afvdd: regulator-vcc-lens-afvdd {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		regulator-name = "vcc_lens_afvdd";
 		gpio = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
index ea5ce919984f..760d5139f95d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
@@ -26,7 +26,7 @@ backlight: backlight {
 	};
 
 	cam_afvdd_2v8: regulator-cam-afvdd-2v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		gpio = <&pca9670 2 GPIO_ACTIVE_LOW>;
 		regulator-max-microvolt = <2800000>;
 		regulator-min-microvolt = <2800000>;
@@ -35,7 +35,7 @@ cam_afvdd_2v8: regulator-cam-afvdd-2v8 {
 	};
 
 	cam_avdd_2v8: regulator-cam-avdd-2v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		gpio = <&pca9670 4 GPIO_ACTIVE_LOW>;
 		regulator-max-microvolt = <2800000>;
 		regulator-min-microvolt = <2800000>;
@@ -44,7 +44,7 @@ cam_avdd_2v8: regulator-cam-avdd-2v8 {
 	};
 
 	cam_dovdd_1v8: regulator-cam-dovdd-1v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 	        gpio = <&pca9670 3 GPIO_ACTIVE_LOW>;
 	        regulator-max-microvolt = <1800000>;
 	        regulator-min-microvolt = <1800000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
index aee6643e33ab..3473db08b9b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -260,6 +260,6 @@ &usb_host_ehci {
 	status = "okay";
 };
 
-&usb_host_ohci{
+&usb_host_ohci {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
index d28880b8dd44..5e8f729c2cf2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
@@ -26,7 +26,7 @@ backlight: backlight {
 	};
 
 	cam_afvdd_2v8: regulator-cam-afvdd-2v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		gpio = <&pca9670 2 GPIO_ACTIVE_LOW>;
 		regulator-max-microvolt = <2800000>;
 		regulator-min-microvolt = <2800000>;
@@ -35,7 +35,7 @@ cam_afvdd_2v8: regulator-cam-afvdd-2v8 {
 	};
 
 	cam_avdd_2v8: regulator-cam-avdd-2v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 		gpio = <&pca9670 4 GPIO_ACTIVE_LOW>;
 		regulator-max-microvolt = <2800000>;
 		regulator-min-microvolt = <2800000>;
@@ -44,7 +44,7 @@ cam_avdd_2v8: regulator-cam-avdd-2v8 {
 	};
 
 	cam_dovdd_1v8: regulator-cam-dovdd-1v8 {
-		compatible  = "regulator-fixed";
+		compatible = "regulator-fixed";
 	        gpio = <&pca9670 3 GPIO_ACTIVE_LOW>;
 	        regulator-max-microvolt = <1800000>;
 	        regulator-min-microvolt = <1800000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index e7ba477e75f9..7f578c50b4ad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -53,7 +53,7 @@ led-0 {
 			gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "default-on";
 			pinctrl-names = "default";
-			pinctrl-0 =<&blue_led>;
+			pinctrl-0 = <&blue_led>;
 		};
 
 		led-1 {
@@ -62,7 +62,7 @@ led-1 {
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
-			pinctrl-0 =<&heartbeat_led>;
+			pinctrl-0 = <&heartbeat_led>;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
index 3045cb3bd68c..9884a5df47df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
@@ -28,7 +28,7 @@ cluster1_opp_table: opp-table-cluster1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp-1200000000{
+		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <750000 750000 950000>;
 			clock-latency-ns = <40000>;
@@ -49,7 +49,7 @@ cluster2_opp_table: opp-table-cluster2 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp-1200000000{
+		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <750000 750000 950000>;
 			clock-latency-ns = <40000>;
-- 
2.48.1


