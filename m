Return-Path: <devicetree+bounces-218594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BA8B821BC
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 00:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F390E1C80588
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 22:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E8E30FC0F;
	Wed, 17 Sep 2025 22:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NTFYdMyu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B10F30EF99
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758146856; cv=none; b=Ho/54JpiDAtbNtC8glmgMIPy8W8JRJTv6yh4KPTaSy7BIzyTrU+28ld49H9dUBDUzYHicsPWGPUIG4EDipaJLXlGI4S/7VHE5QzvlvN9rtJ/yQCqVmXu3heRvr99ZOfj+yJLnR68vopKi7YxSZLlb38YURSqli6QfU3gOsaX6ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758146856; c=relaxed/simple;
	bh=LQuphTXldy5NKx8fqzkFlqI6SZIIEj7x/KiY6+KNrTk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SLw6f4SkTm1YZFnVoMeJq8/QosoJBAWpAg1QLib0qwIdwxXWfUyIPgb9Psu8cdbuKRR2yRwyHmb9eGAT3/rwLW7nl7ruN0t5F8jKHGJoP4ycfsEn3gkCj4Rm/6ITA8F/49Wb/LACYUxdxSznpLmtimxtrmSaEtAk3tevUHgZUu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NTFYdMyu; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-890e5bb3100so10565539f.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758146853; x=1758751653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=plxR1Q0OTlig1zTxHt8JGiXb5CbrsV82EqogeHId9hQ=;
        b=NTFYdMyumvwM6x0QuZqfXj/8HBW0YAiJ3jCP5NfFhf2fGcF5bgL6tF4GDr+1dDnuS4
         TtKnXJmGdzLspKROep+6DrMc8pSxMIXJYCYoqBXUW5bjLd95j8mB3bdbg6DWnEnh/0Oq
         6DgETnTjv5PNbCW2QROCIKqk/5YY3bBBG2kMORLG5H8gMXDyN1n6nf8KlACM7bXU01EI
         rbi1nGtY/kAjdqIHdm3jUORoiYevNnR6UHX9jK5XShjELV7CfgaQ8V/K59V1R4lY99Yk
         qCf3BCnCM834brXnXL39J1L6fSxZRH3X/pRpjcCJ5Aq4Lpw/dbAE29OLsZeyckMC6+GT
         eanA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758146853; x=1758751653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=plxR1Q0OTlig1zTxHt8JGiXb5CbrsV82EqogeHId9hQ=;
        b=jrV5EVAbVIdZopxqpmoGtr8n1tE8tokRoxGIf7gU7n+qBwRwbKxEA2fQJgcNJYf9kj
         r60BjLK5Djg0NW0Eucq2vT6VIVpk/gVxxxEbuR9iQASN3WT0kt/iqlUyCUBW9HyiS60D
         GEZAKuIqSCiyEN5TJDRl+b0J9wAAs6SJW3avNyvr41WghUWbLrC4b/uoJHmrRS4ErzjP
         jxc8w0+H8S0h9i3/A9Fw7qUO2PO3phouhxaD9F5Eo48zi4d4y7gXIVbkdxcVGiLrw45k
         fQsQ+tOs/pXYi2Z0W3byohPNU733DUqvHzBW1ei3IXa1UNNfl2uoYVBwlR06WMUYUYzV
         INBA==
X-Forwarded-Encrypted: i=1; AJvYcCVOUFW/Y9ube9Y7zArSSv68qp4r9SmtSMT6lADuSu6Nw4XPHikA2yQCgH93ezc1e9nClIY4PtSfi2vs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/O8pOJgYMdnfyuW+qXOv+teVHLSKv7ixw73YT5++7nfLqesIa
	V3RsYmQNAEMMaxBT3e3BfytBE8nxllHGGflV5QoODiJpDFQXXtmygB7gaJ9Ov1OOcOk=
X-Gm-Gg: ASbGncumNEdSuguJUQypZhZropd8FYFfFNsV9hiAuN4tR/TfeLfZf37a72YoLK8hEjU
	XCuC2dKF7EKRt8YtHSuQNwBq+H7CQjOlrHEC5KfcWIawCRhKAmzSKbnD4AhSRi34NGPlGja/DAI
	Lp7pEsjxucXdiop5DYUGMcpnw/fUuuqXDnujrIz8gmleLguT3MoE3jO22h2InTgA7LELF/Ho1sX
	ciWXrG51yTyyneJQtTIzIljkk6FnCKC6CzT48OEwZ2EbJlh4l6DENL7PciE4bxY8smmv+Z3OmsA
	0nKSwMkau5Tm8iZOP44bODpKtIYLo4Y5sIH866cIgFcbHJri65hhk+ToFUi4qwxqq5QhE7cnGIB
	MSQKzOwRUB/z0+2JcxeMsCChdr9dmmURvaCNSZz1YkLDgHQcaNO/SPApNAkuj4KIo3VDGosMmiw
	pNna50ZukV
X-Google-Smtp-Source: AGHT+IEhEgpu/y6hcFx432FAALiFyoyiIEe7VNM4oad62y0XdESrMbIYe4L7CYQ1KsF8cTepL/COMg==
X-Received: by 2002:a05:6e02:164b:b0:3f0:7ad2:2bf5 with SMTP id e9e14a558f8ab-4241a4e1040mr57294085ab.12.1758146853240;
        Wed, 17 Sep 2025 15:07:33 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4244afa9f6fsm2346335ab.22.2025.09.17.15.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 15:07:32 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] riscv: dts: spacemit: define a SPI controller node
Date: Wed, 17 Sep 2025 17:07:23 -0500
Message-ID: <20250917220724.288127-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250917220724.288127-1-elder@riscstar.com>
References: <20250917220724.288127-1-elder@riscstar.com>
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
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 20 +++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 19 ++++++++++++++++++
 3 files changed, 45 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 6013be2585428..380d475d2f3f3 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -44,6 +44,12 @@ &pdma {
 	status = "okay";
 };
 
+&spi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ssp3_0_cfg>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 3810557374228..16c953eca2aaa 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -28,4 +28,24 @@ pwm14-1-pins {
 			drive-strength = <32>;
 		};
 	};
+
+	ssp3_0_cfg: ssp3-0-cfg {
+		ssp3-0-no-pull-pins {
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
index 66b33a9110ccd..a826cc1ac83d5 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -834,6 +834,25 @@ storage-bus {
 			#size-cells = <2>;
 			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
 
+			spi3: spi@d401c000 {
+				compatible = "spacemit,k1-spi";
+				reg = <0x0 0xd401c000 0x0 0x30>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&syscon_apbc CLK_SSP3>,
+					 <&syscon_apbc CLK_SSP3_BUS>;
+				clock-names = "core",
+					      "bus";
+				resets = <&syscon_apbc RESET_SSP3>;
+				interrupts-extended = <&plic 55>;
+				spacemit,k1-ssp-id = <3>;
+				dmas = <&pdma 20>,
+				       <&pdma 19>;
+				dma-names = "rx",
+					    "tx";
+				status = "disabled";
+			};
+
 			emmc: mmc@d4281000 {
 				compatible = "spacemit,k1-sdhci";
 				reg = <0x0 0xd4281000 0x0 0x200>;
-- 
2.48.1


