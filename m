Return-Path: <devicetree+bounces-238888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 207F1C5EF85
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 20:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0EB5B4E6763
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F101A2E2822;
	Fri, 14 Nov 2025 18:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="dh7Z7LCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA082E0B68
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763146675; cv=none; b=d20PtlGqreYfdeVVW0HzGG/mVTf/NQqqC7D4n4nC0F2jHXFPMoOOruQKIlfpPfe0SCPyaq1ZfZ3omY/ChRFoEMqmldJyRa4j0SmiURLwFSTMBMzCy31ZXXFRJxhOCOlzi9HifLqu0/APyL9oTNWQQRNOeuI0W8l0DUQWuUEmpYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763146675; c=relaxed/simple;
	bh=FiRaEtCqY4UvA3+LjfLHJ64vYLA7UruMs5fZTtA630g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JK3ar9JikCSELSSbOkU4ALr0NgLzQQ15JYXM5sxBysqje/rp40h0NAiVfNHiT/c25/p+suDkLWd1BS2Va+gvdG0VPxfhzvsG1/Yw55/c8uKUERhR/4HK5/e5mXV5wXEeqIhW07J0wTW0aiqRFpfYtbWtoy6A9+fGyNzrW6Fl5ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=dh7Z7LCt; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-948673fdc47so102130839f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763146673; x=1763751473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=47nLDEud9cutefmnYtbk4Jyt3tQUkcCO1JkM1y5jd8g=;
        b=dh7Z7LCtCGUt6abuwqOiZCext5kLw684hyKtJ/7bmH4C1ZupIKaTy+YQK71SGUUN4w
         yv+MNdBgo0yvpZLHfqR4oMBozKJqRciFlzEc+AHB8rqyvvWS+bb83mGqdSYcbbYlqGxc
         RwHAQQ/TjVk/wLezRIIcm3ZyFcC69kS0cq2U0w+JFs4JFZlwSwVULfwfPxq39MFx12nC
         7/sp/WSiq+ICZkFRg0RowQb202qAGTWvMwE9VopPpzAL/RRQjuwSBo4N7mGGdapbLNJH
         ovmxv5Dhj3fBEhGqCApB+ySDFFOMiKyKtovi9TWZLgtUgcoqlsSnoZIQ5di52qDt+XeP
         XiZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763146673; x=1763751473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=47nLDEud9cutefmnYtbk4Jyt3tQUkcCO1JkM1y5jd8g=;
        b=Eti17OP/wZIRjOT4tT8QvSJMLJQA8NJVHDTeZfohSfNNF4NZ94Hxw2HukQhmBZqV5i
         bPDhtt/TW7BlpviDZP2YF3y6Vc64TivNYYXKOrZNXFGuDqGkrZYMGutr+cqV7t+ry4Hy
         TcqTFDDZvf6jMJf/hPxE+FYlyzAJaRzx/+KIpUJ4IwycfM5rEIPsgmnfHj9fvFTWD7xV
         SYGjwukgqH6JFsbVvPD/WyeU+QJIHe51gvJEyo4sWsg6/10M6UvshceuHo03/Z3fYvbP
         8svNp91vsLHEfZLz8L3r2MQEnj6VHhAopeRgct7CqtSnY2tlrlZ2pd2n5MIyD6pbyRiL
         e/Nw==
X-Forwarded-Encrypted: i=1; AJvYcCW4XU6iYv7sRqNBwLlj7GHun79aczboh5COAwqbU0lVjT8KI/cvqpI9xIb2kVwLMf9UCvrc4g2Yjh1t@vger.kernel.org
X-Gm-Message-State: AOJu0YzX2SvbQ46ht2ZrVK3E/Ja9otjPWeqNdhCea7gkK7cG1EtVZhVC
	P5iz+YzlA3lNGvRR5kfjWqJ7Np96qLnOGOAwK1GFysWq+MAZvm97MoRY0r4IwltTd/c=
X-Gm-Gg: ASbGncvLPA9KCkHNfQAcm0aVsiWtP/FhODsllOS9v9DTd2+CRkTZ9JYuF/qTS+wCgxJ
	KNc1gq3FgLUWq8hzrFmUkataweDbmZgO/EBW2MY7fKp1gyG9bHaF6928y0K7MLuLoEWnbmIAKnx
	GXuyBK/DXaYsCyatKC5mX40+TaJOEbBYl67EAUMCwcXYgtJUO4YM9n4r4Q//QF4KV2Is50nicX6
	KjplTawYS6Veyh5f04Yq0ZgN/OhGz9BzHzEFM7ssV0qOqCs7c823SnNcXYNZCDl6FfHHjQ7HALM
	HjFTtPkiKryQCq/iampwgfMKeJvkAMktJiTN2uWxdzTK2luXv9Ezw4ZsEdlHRkUZhCRyRjDOTJd
	xSrpPFoZM++ORjWOqRLm8XK22iA376UNxU4Ug+jT5BdjK7I1thAtb/F3Fi6FdjRsZkzWCPer3dO
	Lat8EIWW6DnDZ6x+RcuqIet7jJHMHDS4tEeLGK9ukanKoPO7NHq3GNbGOs2xRtQqtp
X-Google-Smtp-Source: AGHT+IGklmek1a+ItyhFNeG/XvSxFlD6/UKZNxaoYFczYzwMLuJVkw1H46zy3vMhyxY+BDXWCfMh9A==
X-Received: by 2002:a05:6e02:154e:b0:433:7f57:22fd with SMTP id e9e14a558f8ab-4348c949b8bmr56721165ab.30.1763146673263;
        Fri, 14 Nov 2025 10:57:53 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-948d2ba690bsm278679339f.8.2025.11.14.10.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 10:57:52 -0800 (PST)
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
Subject: [PATCH v7 3/3] riscv: dts: spacemit: define a SPI controller node
Date: Fri, 14 Nov 2025 12:57:44 -0600
Message-ID: <20251114185745.2838358-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251114185745.2838358-1-elder@riscstar.com>
References: <20251114185745.2838358-1-elder@riscstar.com>
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
index 02f218a16318e..bdbfd04f21853 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -16,6 +16,7 @@ aliases {
 		serial0 = &uart0;
 		i2c2 = &i2c2;
 		i2c8 = &i2c8;
+		spi3 = &spi3;
 	};
 
 	chosen {
@@ -264,6 +265,12 @@ dldo7 {
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
index e922e05ff856d..9b4f4949412f3 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -537,4 +537,24 @@ pwm14-1-pins {
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
index 7818ca4979b6a..cb4016886861e 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -919,6 +919,21 @@ qspi: spi@d420c000 {
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


