Return-Path: <devicetree+bounces-203365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 078AEB20D5C
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55F921907A75
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840512E0B42;
	Mon, 11 Aug 2025 15:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="TtwUv741"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4DC2E0920
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754925492; cv=none; b=OMwhuA2Qi5daOsRRmEoXiJSWnE/FfDTBcurw4oUmUMCjZNatAe9O58f3zWd2XU/nCqe+5t2zsSHKgAayo4siXXGPpzOLBZd5C71sFaqpV1JOqlvqS+ScSOq7KmH2lAcc6JDLb8sDElW8ItcCpM2jr8Oj3slUsu7a23CR9RNmM34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754925492; c=relaxed/simple;
	bh=vBnN8DLO1IyK/FF3eoScaAnrczZfW9FMOyK50IcOfdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N+JQNFQvQEt7a8KlQ/jzIJeofMWfbfXTk8CRgUqj/p5ocfJJlTxrk9oMgm03+Oo/+xi/P5v2BeXuGA78x1gJ5A+T/KbJV6bCuO3Y1JQ+VwOu56pmeSo93ZMnVyKBBEv7md746jla65WBIJlULjIkbRvdg3VaM9rOUqI9goYmdaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TtwUv741; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6155e75a9acso7041496a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754925488; x=1755530288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3QaxZi5zsPReb4K2terbRmDrkKgIzfIFAXUsOtzdqtc=;
        b=TtwUv741RNGJY7HqKtHUVteLFKMzl/10aa5Q8F1CQIbjf9WIrneyyKB7TwSn7jOWcl
         LrUP3ExOXDSwIHV7/yZ41eXps3KgzfMKU0rnHY0dl37ghpIfCNUi4LhgeI9RWQpZW39d
         nQ/4BdPwOjovPz1cLu+w2j54ugoE56c8oLBRQgxbmMgrdPyRl6xkRFm6xm64GLFnD/JE
         fC1Y9ZPfUmp30w2D91CZNxSznoZaH72eqSD/z/0iEGyWzUTpV5M1t/dE4HYEneJBrT9e
         NwJy3OFMYdUDgVxaEqgdh1WuBfw7MISO69pUxC5t7SCBGBWgrs1gSKLYt2pAKA/LHP9C
         qtpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925488; x=1755530288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3QaxZi5zsPReb4K2terbRmDrkKgIzfIFAXUsOtzdqtc=;
        b=TzgMpPiYNLsaaZLNrdpju83d4UvgcERiLEsMcZhANtZi6HZGzIcJwhl7K2lyB/GcUe
         Eb0X52X4VuCEPtWEQ9HjCvPVvXV98tvtyzEvksNyoKkKjYJqhzQoBUhyJyWtHW0pP4la
         eCQJBtxoT9CceAUxv624qHXASdOAKDxmcEErdC+CzBVhh4oLHmBWwNCclqZUbn/JFP5m
         Ux+kOwcCEiKKtrN5tq57KGmsvawVRT8p56usigZJ+Y6H4iyFKFF/Z32f9+/0ejIQhk7L
         81CntO99uG+9OP+T1GmOEBU799Tnmpa77sb7h3jxFPR788U8ujHxb8ggRxa7ezCu220d
         271w==
X-Forwarded-Encrypted: i=1; AJvYcCVy7mODxJJm9rePUrjoYUQHx6Dn/4RhVs/+JKZOUeJ6WWQNF7bFMvwzekBSpMsZDEKvN0EUqd1+tWaN@vger.kernel.org
X-Gm-Message-State: AOJu0YyIBhhYWMDNK/PElFcWFntsHA36g5PVBq614DkoVXYiHS2TdzQj
	p3p28eznZg3F46xv0br6FpCJSsgYSCN8/2mMS3XD3VxAonltTeJ2/ARC3kfwP7dZHaM=
X-Gm-Gg: ASbGncug0B1oohnPDQN8RBC5QYEtGDu3eL7xcCkx0mHBE87aLQMRUijFKoy9M3/IVMI
	mrBaufyaCHObRKlEkfpK1Ak2LPDxo1A7capyePFjCEqFWNcvE/B1tL0BIZ1r5Gbl0cfgQKNg8oB
	8PqXe1K+pBxo9/HqLAmkgMh4vjJe0miIu1chQHso7SVKFxdeQK6Q3VfbWu49sl1MfIBU/oOCWhk
	CZZXfI+GFOLT4MCzhwmKDqr0pQugvZin+gAGY0pF/yU6w1vyIrTGgkzZ0Cy6p6eyu7S0Aqe1FH5
	Mh9yc+qrqiZ7p7Fvoc5vKt02iNBkPjPGqCkRoKJBx5ip0QEYkgnKx1zF5xp+qE8EByxLLCO+Fxw
	QYa/lsfwsBBub83S+adzbJvtKeB3T58JVl5HaMleFJjCvO+ATbX9hRvcZakHY0e89Qw==
X-Google-Smtp-Source: AGHT+IG7LX50cUABOY25rRSCA3T34uMmr0GhqhL/ccQxu60Wns2ZkoR7TW4v+bZeLiM3LVeh427NVg==
X-Received: by 2002:a05:6402:510f:b0:617:b3ee:9be6 with SMTP id 4fb4d7f45d1cf-617e287fdf9mr11118841a12.0.1754925487698;
        Mon, 11 Aug 2025 08:18:07 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f28374sm18923305a12.24.2025.08.11.08.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:18:07 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 3/6] arm64: dts: broadcom: bcm2712: Add pin controller nodes
Date: Mon, 11 Aug 2025 17:19:47 +0200
Message-ID: <df99c6a2eeac4bed76bcc6bd74e44a061963256e.1754924348.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754924348.git.andrea.porta@suse.com>
References: <cover.1754924348.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

Add pin-control devicetree nodes and used them to
explicitly define uSD card interface pin configuration.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts   | 18 ++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi      | 10 ++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 6ea3c102e0d6..6091a1ff365c 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -53,6 +53,21 @@ sd_vcc_reg: sd-vcc-reg {
 	};
 };
 
+&pinctrl {
+	emmc_sd_default: emmc-sd-default-state {
+		pins = "emmc_cmd", "emmc_dat0", "emmc_dat1", "emmc_dat2", "emmc_dat3";
+		bias-pull-up;
+	};
+};
+
+&pinctrl_aon {
+	emmc_aon_cd_default: emmc-aon-cd-default-state {
+		function = "sd_card_g";
+		pins = "aon_gpio5";
+		bias-pull-up;
+	};
+};
+
 /* The Debug UART, on Rpi5 it's on JST-SH 1.0mm 3-pin connector
  * labeled "UART", i.e. the interface with the system console.
  */
@@ -62,12 +77,15 @@ &uart10 {
 
 /* SDIO1 is used to drive the SD card */
 &sdio1 {
+	pinctrl-0 = <&emmc_sd_default>, <&emmc_aon_cd_default>;
+	pinctrl-names = "default";
 	vqmmc-supply = <&sd_io_1v8_reg>;
 	vmmc-supply = <&sd_vcc_reg>;
 	bus-width = <4>;
 	sd-uhs-sdr50;
 	sd-uhs-ddr50;
 	sd-uhs-sdr104;
+	cd-gpios = <&gio_aon 5 GPIO_ACTIVE_LOW>;
 };
 
 &soc {
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 0a9212d3106f..8a517261841d 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -243,6 +243,16 @@ uart10: serial@7d001000 {
 			status = "disabled";
 		};
 
+		pinctrl: pinctrl@7d504100 {
+			compatible = "brcm,bcm2712c0-pinctrl";
+			reg = <0x7d504100 0x30>;
+		};
+
+		pinctrl_aon: pinctrl@7d510700 {
+			compatible = "brcm,bcm2712c0-aon-pinctrl";
+			reg = <0x7d510700 0x20>;
+		};
+
 		interrupt-controller@7d517000 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d517000 0x10>;
-- 
2.35.3


