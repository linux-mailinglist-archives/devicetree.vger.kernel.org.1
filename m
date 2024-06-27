Return-Path: <devicetree+bounces-80614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E9B91A107
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 463E01C2121A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A317172F;
	Thu, 27 Jun 2024 07:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="YNpiy6Tb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B03288BD
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475189; cv=none; b=YsJbcQldA+YzySxok+fd4SI7iR4O/Dyaz/nB4W4gq00ffwydZGwbgbb6xPnwQ5F1YjfZQT+twzddrk9iiDj30jSTSiek2PbyWP1xlMEJCeje78d9dC9j28bV1zwkm0qZNr6a5eTmoICe+YosuzVmX+PLeoi+2XPdbI717ihBhoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475189; c=relaxed/simple;
	bh=QyHE717215AHg1x7SToafUxG/q/4eaDTT+vHhaknlGM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RypPVMVJdPuL1myLDWtyZjdE93/6/fhlL4GaV5CJ6iv4PwTwHBWRgO6ZHXeqXGi1DDwg4PME1dZhswXelr4ZTu8WDq0VrL52LBFriJCxHYPJqEmwKKuCAU5b/jQxqnKcnZcexfDtyO/oODRHpGIPnyw7invAW7ACvxl6en12Na4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=YNpiy6Tb; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5c21a177affso1158375eaf.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 00:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719475186; x=1720079986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/OXRweFobEGV2dQzUWK018aOdtxKilWjm6XN9Kcy62E=;
        b=YNpiy6TbbvoBjdQm8PWhngnl/CXladUqhlr5f9mQr5RiMMg2sJ36AaVk8E7wNb2rhW
         oYFL5iiiHFkI2wpNuVDYFnmbvPZcSwuJBuWAwDrv2xPmlx3dwDicVzVhhDi5jYWM7Xun
         FL88mVx1+ORf5BryW6+zn+xO7doVGap2cpUUm289v/AQ3YxVCbBcEgojWj9L1Puhi9DN
         lOSdT+aq0AZGWouuMifPu0L5wEty5Ltgfcaq9EWRDDutxalgNcaETJhaOevCcwI/eiYE
         HPzdXDN6BzXBRB6cyiAHicKgjpQ4Kj0JQV49a7aPouXvp9sfrjCVc9PdrOWmyTjtDWvB
         rpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475186; x=1720079986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/OXRweFobEGV2dQzUWK018aOdtxKilWjm6XN9Kcy62E=;
        b=nG+lg/4zHrK6uB0Q5dzyiqFzjERkdGRQ/j0oSD+FYYGM3Tof0/1LhZm8+TxokmToy9
         +inGrhjC6mUd+9I6OTcBu9O7kJ3pW4KWi5Ou3dySWVz/Jxcwb7ffcjJLcq/dU8wWt3rP
         5lkBM1jSr8kcwAITgjThPV7H4GjQ2C2xgExoF16PFbOGEqZS5cIgzFQYqsuEvzKtrr4t
         KvPUT24thpA7IP8udajx07aqUUQNXXaWWpfrR0ovAYkxX4W3WCOx8H25vR8QYXeYixov
         bOlDJTIATRQcP7VA6tbmFeS85Qqpx9KwweGat7EqD/5eZNg8NGQg9OPY29uBrlrUpViS
         re/g==
X-Gm-Message-State: AOJu0YxEd7bBn5QsWgl4MRVWMJyQJ02BQUOo46pA6bzGQW0E98upxdYz
	7pgqFIk6vhIN9TCVpRF8HT4iUiFhBcBIytt1SPPPyeHpyfjU1VcGMGAD5MW9SX41WmKk6ZIwwTv
	J0wbH
X-Google-Smtp-Source: AGHT+IHq6ql5dluNAvM3m09ay3+tSbfsSgfh7pATvqKfHdP2z7gQ8/LBSft8+sTU5UrJEuU2LPHobg==
X-Received: by 2002:a05:6359:4c93:b0:1a5:bbe2:5046 with SMTP id e5c5f4694b2df-1a5bbe25a8amr372547655d.30.1719475186426;
        Thu, 27 Jun 2024 00:59:46 -0700 (PDT)
Received: from localhost.localdomain ([2403:5816:cd6c:0:6d45:ae2f:1ead:bd58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac9c4cf4sm7181895ad.290.2024.06.27.00.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 00:59:46 -0700 (PDT)
From: Leith Bade <leith@bade.nz>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	frank-w@public-files.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	didi.debian@cknow.org,
	Leith Bade <leith@bade.nz>
Subject: [PATCH 2/4] arm64: dts: mediatek: mt7986: add gpio-hog for boot mode switch on BPI-R3
Date: Thu, 27 Jun 2024 17:58:54 +1000
Message-Id: <20240627075856.2314804-3-leith@bade.nz>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627075856.2314804-1-leith@bade.nz>
References: <20240627075856.2314804-1-leith@bade.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To avoid future pin conflicts with the boot mode dip switch (SW1), add
a gpio-hog to document the two GPIOs it is connected to. If another device
attempts to then claim the pins a log message will get printed.

The BPI-R3 has a four position DIP switch (labelled SW1), that is used to
configure the boot mode. The first two positions (labelled A & B)
configure two bootstrap pins on the MT7986 that select which flash chip
the boot ROM will load the second stage bootloader from. The third
position toggles chip select lines to select between the NOR or NAND chip
on the SPI0 bus. The fourth position toggles chip select lines to select
between the eMMC chip or SD card on the MMC0 bus.

Only the first two positions are connected to GPIO pins on the MT7986. In
the public schematic for the BPI-R3 (titled "BPI-R3-MT7986A",
revision "V1.1", sheet 4), these are the MT7986 (U1E) pins GPIO_0 (GPIO5)
and GPIO_1 (GPIO6). This gpio-hog configures the two boot mode pins as
inputs.

Signed-off-by: Leith Bade <leith@bade.nz>
---
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index 951612ea1e66..2cccbec39d34 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -235,6 +235,13 @@ &pcie_phy {
 };
 
 &pio {
+	boot_mode_hog: boot-mode-hog {
+		gpio-hog;
+		gpios = <5 GPIO_ACTIVE_HIGH>,
+			<6 GPIO_ACTIVE_HIGH>;
+		input;
+	};
+
 	i2c_pins: i2c-pins {
 		mux {
 			function = "i2c";
-- 
2.25.1


