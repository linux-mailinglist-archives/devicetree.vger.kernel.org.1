Return-Path: <devicetree+bounces-231510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D094FC0DBED
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:00:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35A37189A261
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC1127E076;
	Mon, 27 Oct 2025 12:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DOlG0/LW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B337426C39E
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761569717; cv=none; b=f0f+KvUa/2NmyjEuWpqoA2ep/cb42S2y4E26qwFupRahBJcYs/f5r4U0HkeHz2PxJYRYEw5IgvQuOLW5RIQVN4BgkIfoeKnXX4Nv7HyJucffu8JMioSwELsRzxna+Qk4moecNb6JMFJMe1hmbKhbcBAZm7PEvNKwcydhoSZUPkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761569717; c=relaxed/simple;
	bh=CnvW49qaumu8lY0eIQQxtLrTc9V9hHZfGU0p6GUmcLc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T8X7WJQYiSazZSPz0BbDw8UMow1rK5GcNEle+3gBdgQliKWM4qamPBN6HgKaWiDGQBiG+C5JN064Vjx8xhQ+tc1Kwd1fxHA8YS5Q1UcWq0EWsMKvGUTAt4/zOLpx/EDXrvzu91No9BGMYCsud5BuqmLr+fVDomRbfDvb9BM7q2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DOlG0/LW; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-938de0df471so461482139f.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761569714; x=1762174514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZm4qLXyHnGCSJjs14timCrgYr+hiVUmvuC1ejayZQY=;
        b=DOlG0/LWQ/+9s1xcNOWtyTeqSOSyoLfdi4ol4hHP/AGMmJuCXaTwcvqNLX5op17UmC
         a4L3lUVcf3r32QRsqE8NcG7ykM8LWyXfDMpFgmZR9FUSIoChKxcrr6Xkc74HZFgDM13d
         0YqM4x1CnDqICAUVc6KaujrD1hHoeHO7cMuKJPq2wr/zLw7vmv1K4X7nWKHQC4mIDuVq
         Z381+ym0nWYb/nPoTM/E9jHMN3txnN2zeuIqHW4tEm/Ljd2UVrP59nsPTApexNpdCt2V
         R/8NW2q6/ye7EpHFkIm0efUPhv9ko57csQOaxZZ+YqxYT1uaWZwLp7fOTlBcBp4YiVlT
         IQkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761569714; x=1762174514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZm4qLXyHnGCSJjs14timCrgYr+hiVUmvuC1ejayZQY=;
        b=rPeuEHEugWu4K39C0BpV9lAQQWFrDtpkSq/4A9zh623NXfGDZC7ZOj2DMdRC5+ErYX
         VSL82msTbGRKa4wRE/LVu1NuTTeFFB05HutUhnshFcM25UOO0F8ZUW0OvhuTXs8WnfA+
         +dVRaVb6YDsEl6Y+p0GasoSttNT7DjsJEriFmV1pJdkxiC9qWOx48zBQiz8VMykgFHbn
         gLOE12703BgGAxoVhfy5tD8emYzWaZF5G0XDeaKnKTZfVABxB3qraoTJqnoaLgZ7305S
         0lFjOR/wYRY4YuqyLCd4lS7Ow7xP+9Y3cJfYVnRQhMRUWib0R6G89QpJJ8p62u/EFbm2
         9Xaw==
X-Forwarded-Encrypted: i=1; AJvYcCWQvdz8wxQPYups/sJdvrI5kxE+4p1GWr9gc8UbgoCbWNrwnKqG/DwUpfmRQUAOtixTC/Y2EYXEHiTA@vger.kernel.org
X-Gm-Message-State: AOJu0YweFsvGYljRG5ahwKhlaIOus8ENv3y7SkIiHqao4Yn6y8T0Ci9u
	Toj/AMfYx+35gajgjbX6DnKbQCL5ToG/pBjqVtT79dYymgFChJ1v6rSF0CAam/yyVpE=
X-Gm-Gg: ASbGnctAbDk+nPzxDWAGQUuC4Hhe8kdF5SOloL7Z/vNzze0cj4iyRJ0JpbyX9XhaILx
	1QwjO1aEom6iafud8+JZCnjo8GPpP1nK/ZANlw8IIVUJgDMZcDcI5Qz2Ne6/mDHvY1Yv/z72hcc
	ptD/cxZC+AarZKG/m1hsQWFmCWZCMfNBxTiSYv+bnRI23j0Z0iwtYVV8SjD1JGKMUMgGjS+YZts
	GYiOvJG3lUCOH7BSqp5mbp2Xqa1ngGPlzkcjZhZNL6CS9FCzTd2pfgReO1h3ooxxIBw4O/J/bt5
	kwP5dLgWzdkIEP4B35cKZnqrfLhSpDSXmK29XPLOTS6TZOi40fvNd/fBppk+oYtpkbWxG5jqlfc
	L1xDaFZ/MnV2oYObCUomRYmwtItZhJBTY498myayFTIg32fPmkipjuPe7hdvQr3q+H+mZ1ZdD7T
	FwcFxLYegnGdErI9oBnZvmMvvP/ZKgSU4devkqI0HFPdeUrSN/L2VQMA==
X-Google-Smtp-Source: AGHT+IFmmT522+C1SBtNjrGRDwvpDMmF/aXjZncAIPKX4af5yw9ZwOirXo4uSn/478nB9D2HnyXQgw==
X-Received: by 2002:a05:6602:6b89:b0:945:aa9b:4165 with SMTP id ca18e2360f4ac-945aa9b43c4mr414941839f.1.1761569713842;
        Mon, 27 Oct 2025 05:55:13 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359e742efsm249121639f.7.2025.10.27.05.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 05:55:13 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/3] riscv: dts: spacemit: define a SPI controller node
Date: Mon, 27 Oct 2025 07:55:03 -0500
Message-ID: <20251027125504.297033-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027125504.297033-1-elder@riscstar.com>
References: <20251027125504.297033-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a node for the fourth SoC SPI controller (number 3) on the
SpacemiT K1 SoC.

Enable it on the Banana Pi BPI-F3 board, which exposes this feature
via its GPIO block:
  GPIO PIN 19:  MOSI
  GPIO PIN 21:  MISO
  GPIO PIN 23:  SCLK
  GPIO PIN 24:  SS (inverted)

Define pincontrol configurations for the pins as used on that board.

(This was tested using a GigaDevice GD25Q64E SPI NOR chip.)

Reviewed-by: Yixun Lan <dlan@gentoo.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 20 +++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 15 ++++++++++++++
 3 files changed, 42 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 33ca816bfd4b3..0b0478c6f273d 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -16,6 +16,7 @@ aliases {
 		serial0 = &uart0;
 		i2c2 = &i2c2;
 		i2c8 = &i2c8;
+		spi3 = &spi3;
 	};
 
 	chosen {
@@ -258,6 +259,12 @@ dldo7 {
 	};
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
index 4eef81d583f3d..c4b9f6265a31a 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -516,4 +516,24 @@ pwm14-1-pins {
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
index af35f9cd64351..990246a3b50ff 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -823,6 +823,21 @@ uart9: serial@d4017800 {
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


