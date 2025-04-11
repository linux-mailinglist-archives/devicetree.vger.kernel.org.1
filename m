Return-Path: <devicetree+bounces-165940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE09DA85EB0
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:22:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45C183B04D1
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EE0215CD46;
	Fri, 11 Apr 2025 13:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ttQJEjD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290301EA7DC
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377377; cv=none; b=mihvZMGXNqyfzU8RUS3vANrF6/pPwfXxV4V56rYBbmylsCucWy5Mjo8sJavIt9weP9zQMHK9e3l+hSLFgm/FXD/kcJdwep6jpUsssOvX+K7FAgEP4QOU3bg34c2vQ2G8WrMNFmo3mJZzto5WOCFvNhJ4lkQE7PkXsdftkRxcbBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377377; c=relaxed/simple;
	bh=ZhNpid86PW40a0ogdTCjSqyWtpwrJbhHl+hMeMb+LtA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W95AZEOpe7AP1Vpn6kESTN3QEoX8okhJ2CsyfeLoVH9OKEdscF4xgCJpsDaDCZ7uaUNjgMSzokFsaZ7CeNqCJJSkVBLWBnJi6E7IcRrec7UnsEb4OXOxrUZirn2f4ALdXmfTCl8vayygYLa/XTBxMqQ88U1LXWjn/f9L7lLN+UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ttQJEjD5; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-af589091049so1351808a12.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377374; x=1744982174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L81sw7HLh9+LhiB6MR/QGvuJQdrXF+C64yrUzRsSA2I=;
        b=ttQJEjD5Ki9QnekKS48Hd4BKuSioiCBB+BzNJ47rqv9evw8F1ZEZzLzdeaIKqsJlMR
         ZHO0q7DsmkFXTewAlMIwdvNkWQUQnXgiOlvJLVChIrNrLArqLGwg9BjeAI2TvpYr/ggW
         3DipILbugc224UU5Q5To0QYVNz91D23g5PM+XjJcyANGRFfjVIX/XiaTvO4LjF9u8DOJ
         EO+iEdoVyYcuA3rCFj1Uhj8jlkeWV1SPNNt2oxAixLn7nkSqlSSNXm5tP4Am3oVuPfeK
         ND4tzeIK+dribc3Aom5BRsynddsqdcTHt8GDR5ry8izKbHLD3kZUOYz2ZB5DMcxbolBX
         9hng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377374; x=1744982174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L81sw7HLh9+LhiB6MR/QGvuJQdrXF+C64yrUzRsSA2I=;
        b=CVl2s/vvP3uE0p7c74tdiglu61Nv15PxpI/YnT6WEN9/Kj74Hw4pMeABL38Qw1n25k
         HsQdi0HNmz6x1duzXmpB3JkPe804MV4d216ky/EymE4Ruuce2WWX7vhgZwNZjhNknb9+
         IazDb0bNx1PTiifR47KzODfrLlsum5f+u3ywzQhQVA+KNax7APahZuri4SOrWrWH92iX
         X3OSpQJUkOHBf9fVQkeufR46W1dmGoQZc3lB3WF00Cwjili5/NllOUWkqoZRb98yh0mW
         rd1pKy8wEm5aO8ai+h2WAR5GWU5/M2vbSOHJySPZjtzBkQWFG1BEC5tXgAXsVEl0vBCn
         CzVA==
X-Forwarded-Encrypted: i=1; AJvYcCWGvahGNTrNxG/AJAbSzBJhGjzPwY9KrDqGRhVzEJ652W6DND+GA7rpQVuSXSxVNieM1PpaHr9kBBGI@vger.kernel.org
X-Gm-Message-State: AOJu0YwaAQgmVag+SKiwPpni26j81SzoFzo4MjAFb3Hsi8PlSo2XrB7z
	smjKgR/JqBWptpJn3xjQxxY24uckqQzAypGXH4i3aEB/t4APOclf3LXuGNi9gT8=
X-Gm-Gg: ASbGncvT4kyE+sDiUuRmM/huHB1pvRMgG+F0QsJijAKR5vLxIxXhXQTHW4NSIvNamTx
	Xbq7LcqDkrgHNsX1cWODuIoIHFhgw8VNKtI3dsrSWC2y7nSmCbhPwlgLhsuv3Vrx/WjVSLb+OpT
	gANocQtxh2oCN5LpBNYd+/dIjtmATRlTyj007qkwFTLGaUJp6/ln4I0SbfUvyE8wexX8+WmeIVD
	b16+nrjp/ffBBDw9ABXWgnRdaQZ9d46da3C8iW9uzhiL6ob2ctTsdERRE2hyBhY36Kc9S6rSApt
	6dntkodfw2ZI/ZnS96K4nV0MWo2pEb1DfHGtldaBDA==
X-Google-Smtp-Source: AGHT+IEmLwAHBY89tjHCSmST4XI9krTWMwziLaJxfMz91MwbguhjP76VbrqQ0QFcdTjWcsDUD+s2Rw==
X-Received: by 2002:a17:902:d4c2:b0:223:26da:4b8e with SMTP id d9443c01a7336-22bea493893mr42628305ad.4.1744377374221;
        Fri, 11 Apr 2025 06:16:14 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:16:13 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 6/9] riscv: dts: spacemit: Add pinctrl configurations for PWM0-PWM19
Date: Fri, 11 Apr 2025 21:14:20 +0800
Message-ID: <20250411131423.3802611-7-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinctrl configurations for PWM0 to PWM19 in the SpacemiT K1
device tree source file. Each PWM instance is assigned multiple
pinmux configurations corresponding to different GPIOs and
function modes.

Configurations include:
- Mapping GPIOs to appropriate pinctrl nodes for PWM functionality
- Specifying bias-pull-up and drive-strength attributes

These updates ensure proper pin multiplexing and drive strength
settings for PWM signals on the SpacemiT K1 SoC when selected.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 315 +++++++++++++++++++
 1 file changed, 315 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 283663647a86..294e05409933 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -20,4 +20,319 @@ uart0-2-pins {
 			drive-strength = <32>;
 		};
 	};
+	pwm0_0_cfg: pwm0-0-cfg {
+		pwm0-0-pins {
+			pinmux = <K1_PADCONF(104, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm0_1_cfg: pwm0-1-cfg {
+		pwm0-1-pins {
+			pinmux = <K1_PADCONF(14, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm0_2_cfg: pwm0-2-cfg {
+		pwm0-2-pins {
+			pinmux = <K1_PADCONF(22, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm1_0_cfg: pwm1-0-cfg {
+		pwm1-0-pins {
+			pinmux = <K1_PADCONF(105, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm1_1_cfg: pwm1-1-cfg {
+		pwm1-1-pins {
+			pinmux = <K1_PADCONF(29, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm1_2_cfg: pwm1-2-cfg {
+		pwm1-2-pins {
+			pinmux = <K1_PADCONF(23, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm2_0_cfg: pwm2-0-cfg {
+		pwm2-0-pins {
+			pinmux = <K1_PADCONF(106, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm2_1_cfg: pwm2-1-cfg {
+		pwm2-1-pins {
+			pinmux = <K1_PADCONF(22, 2)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm2_2_cfg: pwm2-2-cfg {
+		pwm2-2-pins {
+			pinmux = <K1_PADCONF(30, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm2_3_cfg: pwm2-3-cfg {
+		pwm2-3-pins {
+			pinmux = <K1_PADCONF(24, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm3_0_cfg: pwm3-0-cfg {
+		pwm3-0-pins {
+			pinmux = <K1_PADCONF(107, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm3_1_cfg: pwm3-1-cfg {
+		pwm3-1-pins {
+			pinmux = <K1_PADCONF(33, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm3_2_cfg: pwm3-2-cfg {
+		pwm3-2-pins {
+			pinmux = <K1_PADCONF(25, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm4_0_cfg: pwm4-0-cfg {
+		pwm4-0-pins {
+			pinmux = <K1_PADCONF(108, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm4_1_cfg: pwm4-1-cfg {
+		pwm4-1-pins {
+			pinmux = <K1_PADCONF(34, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm5_0_cfg: pwm5-0-cfg {
+		pwm5-0-pins {
+			pinmux = <K1_PADCONF(109, 5)>;
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+		};
+	};
+	pwm5_1_cfg: pwm5-1-cfg {
+		pwm5-1-pins {
+			pinmux = <K1_PADCONF(35, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm6_0_cfg: pwm6-0-cfg {
+		pwm6-0-pins {
+			pinmux = <K1_PADCONF(88, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm6_1_cfg: pwm6-1-cfg {
+		pwm6-1-pins {
+			pinmux = <K1_PADCONF(36, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm7_0_cfg: pwm7-0-cfg {
+		pwm7-0-pins {
+			pinmux = <K1_PADCONF(92, 2)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm7_1_cfg: pwm7-1-cfg {
+		pwm7-1-pins {
+			pinmux = <K1_PADCONF(37, 2)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm8_0_cfg: pwm8-0-cfg {
+		pwm8-0-pins {
+			pinmux = <K1_PADCONF(0, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm8_1_cfg: pwm8-1-cfg {
+		pwm8-1-pins {
+			pinmux = <K1_PADCONF(38, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm9_0_cfg: pwm9-0-cfg {
+		pwm9-0-pins {
+			pinmux = <K1_PADCONF(1, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm9_1_cfg: pwm9-1-cfg {
+		pwm9-1-pins {
+			pinmux = <K1_PADCONF(39, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm10_0_cfg: pwm10-0-cfg {
+		pwm10-0-pins {
+			pinmux = <K1_PADCONF(2, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm10_1_cfg: pwm10-1-cfg {
+		pwm10-1-pins {
+			pinmux = <K1_PADCONF(40, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm11_0_cfg: pwm11-0-cfg {
+		pwm11-0-pins {
+			pinmux = <K1_PADCONF(3, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm11_1_cfg: pwm11-1-cfg {
+		pwm11-1-pins {
+			pinmux = <K1_PADCONF(41, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm12_0_cfg: pwm12-0-cfg {
+		pwm12-0-pins {
+			pinmux = <K1_PADCONF(4, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm12_1_cfg: pwm12-1-cfg {
+		pwm12-1-pins {
+			pinmux = <K1_PADCONF(42, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm13_0_cfg: pwm13-0-cfg {
+		pwm13-0-pins {
+			pinmux = <K1_PADCONF(5, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm13_1_cfg: pwm13-1-cfg {
+		pwm13-1-pins {
+			pinmux = <K1_PADCONF(43, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm14_0_cfg: pwm14-0-cfg {
+		pwm14-0-pins {
+			pinmux = <K1_PADCONF(6, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm14_1_cfg: pwm14-1-cfg {
+		pwm14-1-pins {
+			pinmux = <K1_PADCONF(44, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm15_0_cfg: pwm15-0-cfg {
+		pwm15-0-pins {
+			pinmux = <K1_PADCONF(7, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm15_1_cfg: pwm15-1-cfg {
+		pwm15-1-pins {
+			pinmux = <K1_PADCONF(45, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm16_0_cfg: pwm16-0-cfg {
+		pwm16-0-pins {
+			pinmux = <K1_PADCONF(9, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm16_1_cfg: pwm16-1-cfg {
+		pwm16-1-pins {
+			pinmux = <K1_PADCONF(46, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm17_0_cfg: pwm17-0-cfg {
+		pwm17-0-pins {
+			pinmux = <K1_PADCONF(10, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm17_1_cfg: pwm17-1-cfg {
+		pwm17-1-pins {
+			pinmux = <K1_PADCONF(53, 2)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm18_0_cfg: pwm18-0-cfg {
+		pwm18-0-pins {
+			pinmux = <K1_PADCONF(11, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm18_1_cfg: pwm18-1-cfg {
+		pwm18-1-pins {
+			pinmux = <K1_PADCONF(57, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm19_0_cfg: pwm19-0-cfg {
+		pwm19-0-pins {
+			pinmux = <K1_PADCONF(13, 3)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
+	pwm19_1_cfg: pwm19-1-cfg {
+		pwm19-1-pins {
+			pinmux = <K1_PADCONF(63, 4)>;
+			bias-pull-up = <0>;
+			drive-strength = <32>;
+		};
+	};
 };
-- 
2.43.0


