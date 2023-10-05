Return-Path: <devicetree+bounces-5977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A35EA7B990A
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 72FAE281B66
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 00:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558A7366;
	Thu,  5 Oct 2023 00:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kG64eVOq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70A310EE
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 00:04:12 +0000 (UTC)
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1960CE;
	Wed,  4 Oct 2023 17:04:10 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id ca18e2360f4ac-7a2cc9ee64cso18396239f.1;
        Wed, 04 Oct 2023 17:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696464249; x=1697069049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHepvuDvDnHmuTSCWiPic5GpIEisZ00JylNY2qD1gZ4=;
        b=kG64eVOqYT7srvclvU6HA1/qAmIpVFoufCQQ4hthYqUIjwVamwZiH1wSCb7pUP2Nab
         4oui0/EqK/w74MOsJKvXhRF/4mFHdMMD+tkDT1tCwt4sgUvNJTs5tM5BGrOQWtgtlAJB
         kHjKmM5HctGP1zKiaCpuXmtmTiLry+/jqzXtfouxkXl3+xo80IXcSs7aPPWoeThfQnNL
         jyolHtWILxxUj93H6jGV8OibsFkX60pXKpIN5E4vyBsPH3jhTO+lkIVs2A2g1GFaD2pd
         +X3i3WJ/oeTnGutY1aWSzKvu9mJQzcd4kbLzHTjz78vsXT5EX727Ziuvy7OFfyHQxJAd
         0Vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696464249; x=1697069049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHepvuDvDnHmuTSCWiPic5GpIEisZ00JylNY2qD1gZ4=;
        b=c1DRW3xNrdwbz7HNlgQifPVZvKqp03ynRFC4J7jaLrtgHwz+TZGN/TNZ16juc4sqwE
         2aNQkvhyrNwTSJRp8XMwQzFqDhnCTYOKs+h36OL5EhH/nAsLPJvBA7W7iHOuEiUZGSqb
         YWMou+6bFPBEo2OYIdfAV3Pm7fG95WTPdEAwaYOG+BpUkPemZn/jNVz3BpH2a36U/FO2
         XxfOwPsOxEUUdtcoEM0hjolcm4MI4llk2iJRmwDrnY46FazH+4fXIzVr0mhXQxxnaDph
         hv3YWmZ9lSlfvKNEcArRLObT95bsqXR/RRVLlZowlj97BaI+qqZfXHKa1T99cSB46j/2
         MTuA==
X-Gm-Message-State: AOJu0Yy3FlIJUxf2/JAZFARrrhf1GIxlLqR6YaeaCGc1AYflRwIUbn2K
	Q1X54w0mObXQtT79yeWFTGD1RUw2baZ2aw==
X-Google-Smtp-Source: AGHT+IFO3eAUYPtMwyaWQxEAv8UyDyRrouwbdaXoULyX47Tx6bmZsg/kFcYqtUUPVyFzmKrOq/n2fA==
X-Received: by 2002:a5e:8d10:0:b0:792:8c52:b3b8 with SMTP id m16-20020a5e8d10000000b007928c52b3b8mr3951032ioj.14.1696464249358;
        Wed, 04 Oct 2023 17:04:09 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id h3-20020a5ecb43000000b0079fdeed3ab6sm56895iok.40.2023.10.04.17.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 17:04:08 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Cc: aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	=?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Derald D. Woods" <woods.technical@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/2] arm: dts: am3517-evm: Enable Ethernet PHY Interrupt
Date: Wed,  4 Oct 2023 19:04:02 -0500
Message-Id: <20231005000402.50879-2-aford173@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231005000402.50879-1-aford173@gmail.com>
References: <20231005000402.50879-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Ethernet PHY interrupt pin is routed to GPIO_58.  Create a
PHY node to configure this GPIO for the interrupt to avoid polling.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V3:  Fix issue where V2 wasn't properly properly commit-ammended, so V2 patch didn't properly generate

V2:  Attempted (but failed) to fix ethernet-phy-pins naming

diff --git a/arch/arm/boot/dts/ti/omap/am3517-evm.dts b/arch/arm/boot/dts/ti/omap/am3517-evm.dts
index 866f68c5b504..40f15da81043 100644
--- a/arch/arm/boot/dts/ti/omap/am3517-evm.dts
+++ b/arch/arm/boot/dts/ti/omap/am3517-evm.dts
@@ -172,11 +172,24 @@ hsusb1_phy: hsusb1_phy {
 &davinci_emac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ethernet_pins>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
 	status = "okay";
 };
 
 &davinci_mdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&enet_phy_pins>;
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;	/* gpio_58 */
+	};
 };
 
 &dss {
@@ -257,6 +270,12 @@ OMAP3_CORE1_IOPAD(0x2210, PIN_INPUT_PULLDOWN | MUX_MODE0) /* rmii_50mhz_clk */
 		>;
 	};
 
+	enet_phy_pins: ethernet-phy-pins {
+		pinctrl-single,pins = <
+			OMAP3_CORE1_IOPAD(0x20bc, PIN_INPUT | MUX_MODE4)	/* gpmc_ncs7.gpio_57 */
+		>;
+	};
+
 	i2c2_pins: i2c2-pins {
 		pinctrl-single,pins = <
 			OMAP3_CORE1_IOPAD(0x21be, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c2_scl */
-- 
2.40.1


