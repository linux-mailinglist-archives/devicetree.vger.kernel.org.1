Return-Path: <devicetree+bounces-176758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF78AB56EF
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:23:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84AC018988D1
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6108B292080;
	Tue, 13 May 2025 14:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eznOsdzK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CCA28F538
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146221; cv=none; b=k2HhpXzFuAVRauVRDU/K2USy0bvTIiUwhicJZYqcyt0LEijj/vNQAUOHjISU+XGVxs1aTWjE8hyUJ7/nc9wjZ1z2ZUkBYAhL+s+IBBSRvmLGzsPpheiDzRCTX0RumvdXXyYdOeKcfqKKA0fAKIW5ddzzgP/paf1g4gA2bA9Heoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146221; c=relaxed/simple;
	bh=/MkHJSCvoUk6wpioAROWSyWxvDXntLxjx4aAWY01jNg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UR4iszvcRbaWqhL0mrs/CytrdNudyWoEyLMJF/OqdHsCVYi66HOVY+kvEMLyXNrKGPglSCVPvxE4bLfuVpt3/he/DXVUDNkwVfYI4da6B0QhurgB1fuD6tBeqrkJXIei8OiAUhEyBd+teHx2TcRBiM0OUCMEdAxUVW1qr4iQINM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eznOsdzK; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-4def06b6f87so1658404137.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747146218; x=1747751018; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Uzgz/IJ5yrsCl91qH+8t4wQoX41kDj9fnW0ZCwuEXw=;
        b=eznOsdzKkWPzldKKc3yKTqw5UNatzR3AQ/TAPhdVeHuPI3baRICSr3D0GlM8cOQAas
         mmEN0e/KJNaSfrfJBZi0COXNSzTpPevL5l55F+JvFVdL461TSfxO9bEWEHD3zEM85B3c
         tfY6fmr5eIpHy5YbYp53/pTgSRkgb19ttCM6ceuahJowYZbrg6Wkq9zX6ZbW7XLBgSE0
         emSVroNn10UxSe9fAG23P0sQ6+w0THm/Wgnx8afXpER/qa42IXMhQ924Zhu82Br3EYND
         4A7fv0y4rD1+RHnm9F7fA3nMZE2yI0+yyhh5ypgiPmq+Qq+PjS6PPNHeuTKJ7hcdrjs6
         3zFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146218; x=1747751018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Uzgz/IJ5yrsCl91qH+8t4wQoX41kDj9fnW0ZCwuEXw=;
        b=jYMAVqvmqYmvJU7d3gwCpdoJ259bN6hcJ8SLqmikYAZbCaWMBC9m0DAr3gr6tFDpvY
         Pz9OsaYZFJ8gKZBdnDQlj383gUZ7vBsIFmVWUCd6vadzfPpmWt8D4j+srqBMqrLcmhJq
         VnluYPcSbw1jV1OUr8IIGV0P+oHXoyLtxMvTcS9HzjorpVEP86SccgMbkSBk5fGP0/2n
         H/yEy7DMGRHZ+KNUZSUUb9HvxCuDySVgFb5ZQYZpQgeYM3X1dYHDw0XexBw1yausbPcM
         JdUy1ysuVcCU+A+lx2dPZQHVez0FGfoq5Kxkr+uemR+1yqUdAmG8Oc0c5AajHLTzTTby
         SI0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXe4X18jD1RjtXUmow93GRkzGeYTyhgjGJRR27HqhD+XQZnRQQ7Hfrz+JKNNxmhiHPpeB15oIPKISow@vger.kernel.org
X-Gm-Message-State: AOJu0YyhS4RiL0Tg6YYOivKMb6pbQe/05pElVDOhiigLGA/3GfiRBheo
	9pUn1K4DOH5JBq0d4AjTzHEebseL3KNHH7TrgYeY84SWg/PnMabjamk3aw==
X-Gm-Gg: ASbGnctPqfbx2rFeoxPuukbMQ0KcNY03PuXa9miGW3JB80taCYVXK9eHGSm2MXS8bCa
	ilgp7bek8coBQGsS+RABQDfnyOuJ7FOmBCm+CS24p6YdhcPIySEukN9C5FPShnC+HGb5qy+zdf9
	/N4Di7TUOhYfQgaAS/ztqrM1pG39i0UA1X5QvLz09F641UJU4gnAwg7DpMJJBB20BfqaHqP7ZIq
	aM5Jqz6HNRKzz60EExaE0ulU9aawMHyVrok5fNKsQkG1A3jhWTDxCrOQ+ToaxlJxiobkWuINXfV
	6RRNSznLj7WkPyNDYySrfz3z/iO4IZg6aZQ0Y/mX2VeXEzBJwxap24Tbb5jOVZzfMg==
X-Google-Smtp-Source: AGHT+IEFobOfhF6Q0zjJGc5PoNdvF02XzIXIzVwsYXq3HCC3Jx979kft8C4WQQVQTvNxXMdPfdO5pg==
X-Received: by 2002:a05:6102:fa8:b0:4c3:64bd:93ba with SMTP id ada2fe7eead31-4deed376091mr15377049137.11.1747146218479;
        Tue, 13 May 2025 07:23:38 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:5c18:acd6:b894:dc8f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4deb203c26bsm6630965137.27.2025.05.13.07.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:23:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/3] ARM: dts: imx7s-warp: Improve the Wifi description
Date: Tue, 13 May 2025 11:23:19 -0300
Message-Id: <20250513142320.4036324-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250513142320.4036324-1-festevam@gmail.com>
References: <20250513142320.4036324-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GPIO5_10 is connected to the BCM43455 WL_REG_ON pin and it is better
descrbed via mmc-pwrseq-simple.yaml.

Also improve the Wifi devicetree description by passing a compatible
string that describes the BCM43455 presence as per brcm,bcm4329-fmac.yaml.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx7s-warp.dts | 29 +++++++++++++-----------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts b/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
index b66e612d3329..f2cd95e992e7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
@@ -31,18 +31,6 @@ back {
 		};
 	};
 
-	reg_brcm: regulator-brcm {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio5 10 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_brcm_reg>;
-		regulator-name = "brcm_reg";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <200000>;
-	};
-
 	reg_peri_3p15v: regulator-peri-3p15v {
 		compatible = "regulator-fixed";
 		regulator-name = "peri_3p15v_reg";
@@ -51,6 +39,14 @@ reg_peri_3p15v: regulator-peri-3p15v {
 		regulator-always-on;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_brcm_reg>;
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio5 10 GPIO_ACTIVE_LOW>;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "imx7-sgtl5000";
@@ -301,14 +297,21 @@ &usbotg1 {
 };
 
 &usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	bus-width = <4>;
 	keep-power-in-suspend;
 	no-1-8-v;
 	non-removable;
-	vmmc-supply = <&reg_brcm>;
+	mmc-pwrseq = <&sdio_pwrseq>;
 	status = "okay";
+
+	wifi@0 {
+		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
+		reg = <0>;
+	};
 };
 
 &usdhc3 {
-- 
2.34.1


