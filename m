Return-Path: <devicetree+bounces-31329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D61A82AD84
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0F1E2827B7
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FCF156FC;
	Thu, 11 Jan 2024 11:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OI0SQwan"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC996156D2
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-557a3ce9942so5440657a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704972713; x=1705577513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=OI0SQwanLqoOSTrjyv4IymkKIDsdmNla1Dka8MEikwVAGKbeDi2sC20IzPHsXubfQ+
         e+eWOq+0cfTnig0UinxBjt0L7LpmMTxWo94p4UK5eU+R1KWAWEBRsp7KudYNx/GxY4F5
         EOOHL+Pj+sH5xAqLox4y8skfwxXIvYGfFv+hI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704972713; x=1705577513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=m1sYllAxPOvqa3/InP6MU6SiaGXGZfTGX1J74kSs8b9dpqvV4w96rB6jmtfeTxdwxS
         A2PvdzyjcnRJGzq/YcbVfQ9KskdL8WiC5NZj1sz/WI49+z5d0eLSRmPPETVbjR2RUkH3
         KBUi9uJRAZ/gQmYIZhcNcNn313daMPXvJezq/9DLsnYfyPCKwkvmSg+y7pvUre646HV5
         FVQ6guW4SD7Ham1m9DPM9t/bcVVG9bkWmkt/eiseeqOyOYuMKOxN1qKUl7ui3/EP2PXU
         l5OsWzX8cw2vgwHM1TjTt4+mrx9/KZLQrbRGeUUYe3HE/BF4wy4Bts+G2U8bqxuZUNg8
         wwuA==
X-Gm-Message-State: AOJu0Yzib/p/pdYz/khw2clbnTclG72oa5D4AnrqjbWbxHrK79nLRP/x
	6EajajDmLfMXhN8LugJ1GxCDQY9l2nAmgA==
X-Google-Smtp-Source: AGHT+IExgDhzuDeqxGjDmiwpb99n3nqj96gSn6Epubdzjzg5wCarqnkfHfFoLElqeJtGHC8ONWe9+A==
X-Received: by 2002:a17:906:b819:b0:a2b:d12c:ee41 with SMTP id dv25-20020a170906b81900b00a2bd12cee41mr360284ejb.165.1704972713093;
        Thu, 11 Jan 2024 03:31:53 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id n3-20020a170906688300b00a26aa734349sm461565ejr.39.2024.01.11.03.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 03:31:52 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v7 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Thu, 11 Jan 2024 12:31:40 +0100
Message-ID: <20240111113146.16011-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240111113146.16011-1-dario.binacchi@amarulasolutions.com>
References: <20240111113146.16011-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the schematics of document UM2033, the power supply for the micro SD
card is the same 3v3 voltage that is used to power other devices on the
board. By generalizing the name of the voltage regulator, it can be
referenced by other nodes in the device tree without creating
misunderstandings.

This patch is preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 5d12ae25b327..8632bd866272 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
 		clock-names = "main_clk";
 	};
 
-	mmc_vcard: mmc_vcard {
+	vcc_3v3: vcc_3v3 {
 		compatible = "regulator-fixed";
-		regulator-name = "mmc_vcard";
+		regulator-name = "vcc_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
@@ -128,7 +128,7 @@ &rtc {
 
 &sdio2 {
 	status = "okay";
-	vmmc-supply = <&mmc_vcard>;
+	vmmc-supply = <&vcc_3v3>;
 	cd-gpios = <&gpioi 15 GPIO_ACTIVE_LOW>;
 	broken-cd;
 	pinctrl-names = "default", "opendrain", "sleep";
-- 
2.43.0


