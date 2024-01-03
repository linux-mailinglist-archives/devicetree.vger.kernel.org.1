Return-Path: <devicetree+bounces-29426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0B6822E5C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF00FB23692
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E1119BB9;
	Wed,  3 Jan 2024 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="a80ERRjx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840CF1BDDB
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B61F73F5A8
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704288551;
	bh=0xlyxKFbvUzm4zLJgn5EKeObZzal+VTFR9Rg6ALS2M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=a80ERRjxj1ySa8qI/o38jkerOZlwlP1KAbJKUcBYMRVWcBlufyuHbeHwtuHtp49RT
	 7hM8MNbSUPFaLUT/jMGR2/7YtUi1Es2ljhtRHMuVc9wsD6sBRGtetEAxM+lx4rvPaW
	 pcaRXpxcZuaIgG3gm3UE6jMZWMzHIZxuFkSMHUguQHdDpiG7Vpj1nAV7Yjv2hxQii1
	 p/LHpVeLbEv9HaVAezfMdi5Qx7YpUGhAW9SjY2+2vdqhtDN3MlS/t+VSv9QcXSJvpw
	 S2XrfdP8eyJx9bBgDNTjitMgzOFiiHGD5RlHsJ+07x5BwBsIJSBZnuDr/wNamIvwwt
	 qmyD/mTVjiIOQ==
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-50e91f9d422so3027126e87.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:29:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704288540; x=1704893340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0xlyxKFbvUzm4zLJgn5EKeObZzal+VTFR9Rg6ALS2M4=;
        b=iBmubzvu7vWZWNV4wk96fTC5fvygXrPh99zXERV0biV0fjS+dPX6N0JYGGfIET7H4n
         Lmrp+tO32eOokG3bEbuZ/caE4RAsYYH4U2gsZ2m7snAVc/lN2Y2SMaulJBQqgmUhaRdQ
         e87RPkO7sh4Er1qSeOjIufinDWDvPZSyZIpOQTshKIrc/SD7OoTgLlzgDdcwZ22dPyuT
         7uyiq6P5C/CgG6fmsYcHEZbnzNzHoT1sYwhme7zriNQzt9H3XAYhynjODc9btoQV+Nkb
         Sfp3LSljreMUzqVrsfG0nGBkEOrEaiGVhSOKQF4hwqCtErYEUBGbQtptOZ7rum9QwQk7
         8Nmw==
X-Gm-Message-State: AOJu0YwskEHEFOiGdeorYqGOpHwX6uCRtnkFUdC62t8IUqAFKJYjI5fs
	K/2WA6beYWB+gl3j5Rpo8kXC0CIiuCSYqrdEHu6JiC8U/FwDYRTpZ7x7vvXxwxI92s+JYxg5Iq0
	xfIw66hNvslBIUir/iTsvT5CSiKA2Swxbsk/AxuMRcJ18mg==
X-Received: by 2002:a05:6512:4d0:b0:50e:9a0d:d402 with SMTP id w16-20020a05651204d000b0050e9a0dd402mr1985088lfq.105.1704288540720;
        Wed, 03 Jan 2024 05:29:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFglWpNfCSmVpHzBKEgsAU+8MjxYPm2sCoW5U4VmzTKq+1KMDXtev6vYNkRZ5n9/d/lOFNERw==
X-Received: by 2002:a05:6512:4d0:b0:50e:9a0d:d402 with SMTP id w16-20020a05651204d000b0050e9a0dd402mr1985076lfq.105.1704288540552;
        Wed, 03 Jan 2024 05:29:00 -0800 (PST)
Received: from stitch.. ([2a01:4262:1ab:c:5af0:999b:bb78:7614])
        by smtp.gmail.com with ESMTPSA id eu18-20020a170907299200b00a26e53be089sm9549873ejc.44.2024.01.03.05.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:29:00 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 7/8] riscv: dts: thead: Add TH1520 pinctrl settings for UART0
Date: Wed,  3 Jan 2024 14:28:44 +0100
Message-ID: <20240103132852.298964-8-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinctrl settings for UART0 used as the default debug console on
both the Lichee Pi 4A and BeagleV Ahead boards.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/thead/th1520-beaglev-ahead.dts   | 26 +++++++++++++++++++
 .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 26 +++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index f1e8eaed487c..c697a50ca9b1 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -62,6 +62,32 @@ &dmac0 {
 	status = "okay";
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 0ae2c20d5641..932838c55f90 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -29,6 +29,32 @@ chosen {
 	};
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
-- 
2.43.0


