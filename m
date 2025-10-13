Return-Path: <devicetree+bounces-226022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E21BD2FD0
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:33:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6F543BA352
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92E62E92D6;
	Mon, 13 Oct 2025 12:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="f8lC+wLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDBA27FB1B
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358802; cv=none; b=aOybCOhe3KN9dTc4oMOrzKLKutsffbh8x1slPHllyTzBdFaevUC53zBpSSUnd9sxgSWqf9cxb/ABpqKXnJGZcibT/qKptRMHIAwlNR+CXF6xZlL+uha9MXQH3UDWWZp04ubkeru9UOfV7mwDCowJz/6rtqcIdMyEQ5bVVbYX28c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358802; c=relaxed/simple;
	bh=IBn6ZhODzxUpc3P0+zT+3Gw/37gC8OpKQaPr/A9Z7Tc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NoF6ZdEoBrl4JSLQOOVZ3W+DI2a7cEF8JAzR29rmyejuMfkiYhOx5ficEIU/vAB7Be4Bd8F9rdo9Mf/AwqGNUim6ggPPQ61Es9T3jCUXaQBMWknmB7ZlzLF8XbtR8OKgcJTbfUw//48BlmTPRrp7Gi+igwPG9AV5RynZckd4epU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=f8lC+wLG; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-930cfdfabb3so225560239f.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760358798; x=1760963598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lH1v0rpYCArgbrLYKpreuIoN+Gm6oJddlVx2jUGumJY=;
        b=f8lC+wLGoiE5naZkiuFEVK6zihypg8DRtgb38k07rlv68Btnx2FHw6M4vsghlFaf41
         9AxCNoKIgXZOIZQkYjG/gHrEPm7ChUPGHZa5gBBN7qWnk6J9kGsglO2Va3BONZad9hXG
         +7ISKE8I9mz/MPeUdGJfPiTa+fd7RXJDmiDRUvS3190l4RgM9saYPDbeFwUZmYNwqUJi
         9DCopdIEi3Ofe38FGRFfX6YbJJslK23K8maa4sT/TwBmSHh/WwsS0fXAlG/2/z7R7eHp
         yLoYPj0zleb7xnpe38jlgup/3bIWVaXAhyVkDVqyTO/2HKgsBa1GmWbEl9X/kjwVhTzU
         pIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358798; x=1760963598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lH1v0rpYCArgbrLYKpreuIoN+Gm6oJddlVx2jUGumJY=;
        b=vgIkBolQv515x7ugE0UtMcVD7eL4Je/2wYd1CK34C7m46t9bbbmMZ65byLmiU95qmF
         VhK051nRbiAA5fRYBKHvKzriDbzTg24aB4NW5u73tTZIaGAyt2S01+8Pbrx+FxMLm2ui
         R46XGtE/R11w+AL8aqP6pYJPmy25B2X1yuhkXSMwceJPdZi1fW1bGjMoKke5a4xLNt5E
         lPp88SCvG/8Ler4rCAnx18OhIEfooBFEHLZ6ee2mMABZMnSmnedoidMRhCVZJ3HRqtCg
         LLWjbvlApJKWhCCDoGSe3GPJEEyH4UeCGmCbZLObQ8wMhWel6xNDYso4rI2adFR13Fwj
         1LTw==
X-Forwarded-Encrypted: i=1; AJvYcCXP5iBGc0G2sSgTkBAFh7MbJcUw2reYa4leADLMxm77iaMi6dzC2qt6dLk7qyPRFMmCIWg8xCkOIiZY@vger.kernel.org
X-Gm-Message-State: AOJu0YxadmFud9FjKoWV0/wUQTTWJPVqoocmo73aMO5yYXs8W68ALqq5
	wJbvQUUXtWz/lhO/DbGQH7cIHX5/yiEgKcAFX6PWTzAlcwon7CRo3s3kabLMg2xoZLY=
X-Gm-Gg: ASbGncsbD+PlBlY0kyyA6jbNwXOJMuj94nntpxE57BQ2S8RMKzweHD1TGOiXSaqoZKf
	uNeokpgPntdBD9wgNxduxXy6tka7IIkRrBOBd+m3vcgQEYougV5dbmUIjcJqPPjId4mbfxBYSSd
	KwEqmXFTKzObDfKg+TyGdQvZGHtrAIwEUysgrElnGfDhSZHQI1Il0rp71W/fzRUqEM0cD/QCumn
	PJ8B4NmzCZYgcAXIUcOKpAVkaCtPvsOWUCXpa3jguVfb0HW2XoXbEcLIuTE1F5frPXO8EbrRNaE
	QI3V7xAitiOiifVjkdq3ZAJIK0H25Dh8AIstqCrB3Dramnk6YX2laqfgH23Sr9Jh9dGnYnYAnNl
	I4bqpQTCxL1uL1gpPmOSSwSsQSs4D8FZDfZKdd/KZD8qbGs1TmLWX/e3yc6JktpVB4j8eVZbLhi
	D5hF9EKT2OgbNYpFWhrCM=
X-Google-Smtp-Source: AGHT+IHl+kdG7KX32xkfhYQaqxRv069N0+qssQtZvAYRJCWtVjC/Z307urfNlq0x0wqsqA/KnCtbeg==
X-Received: by 2002:a05:6e02:1529:b0:42d:87c1:da2e with SMTP id e9e14a558f8ab-42f87497a42mr227386585ab.13.1760358798387;
        Mon, 13 Oct 2025 05:33:18 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-42f9037e344sm51529815ab.34.2025.10.13.05.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:33:18 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/3] riscv: dts: spacemit: define a SPI controller node
Date: Mon, 13 Oct 2025 07:33:08 -0500
Message-ID: <20251013123309.2252042-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013123309.2252042-1-elder@riscstar.com>
References: <20251013123309.2252042-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a node for the fourth SoC SPI controller (number 3) on
the SpacemiT K1 SoC.

Enable it on the Banana Pi BPI-F3 board, which exposes this feature
via its GPIO block:
  GPIO PIN 19:  MOSI
  GPIO PIN 21:  MISO
  GPIO PIN 23:  SCLK
  GPIO PIN 24:  SS (inverted)

Define pincontrol configurations for the pins as used on that board.

(This was tested using a GigaDevice GD25Q64E SPI NOR chip.)

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
---
v5: - Added Yixun's Reviewed-by tag

 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 20 +++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 15 ++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 2aaaff77831e1..d9d865fbe320e 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -14,6 +14,7 @@ aliases {
 		ethernet0 = &eth0;
 		ethernet1 = &eth1;
 		serial0 = &uart0;
+		spi3 = &spi3;
 	};
 
 	chosen {
@@ -92,6 +93,12 @@ &pdma {
 	status = "okay";
 };
 
+&spi3 {
+	pinctrl-0 = <&ssp3_0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index aff19c86d5ff3..6ce56584ff473 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -76,4 +76,24 @@ pwm14-1-pins {
 			drive-strength = <32>;
 		};
 	};
+
+	ssp3_0_cfg: ssp3-0-cfg {
+		ssp3-0-pins {
+			pinmux = <K1_PADCONF(75, 2)>,	/* SCLK */
+				 <K1_PADCONF(77, 2)>,	/* MOSI  */
+				 <K1_PADCONF(78, 2)>;	/* MISO */
+
+			bias-disable;
+			drive-strength = <19>;
+			power-source = <3300>;
+		};
+
+		ssp3-0-frm-pins {
+			pinmux = <K1_PADCONF(76, 2)>;	/* FRM (frame) */
+
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+			power-source = <3300>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 6cdcd80a7c83b..ce55897d34fac 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -797,6 +797,21 @@ uart9: serial@d4017800 {
 				status = "disabled";
 			};
 
+			spi3: spi@d401c000 {
+				compatible = "spacemit,k1-spi";
+				reg = <0x0 0xd401c000 0x0 0x30>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&syscon_apbc CLK_SSP3>,
+					 <&syscon_apbc CLK_SSP3_BUS>;
+				clock-names = "core", "bus";
+				resets = <&syscon_apbc RESET_SSP3>;
+				interrupts = <55>;
+				dmas = <&pdma 20>, <&pdma 19>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			/* sec_uart1: 0xf0612000, not available from Linux */
 		};
 
-- 
2.48.1


