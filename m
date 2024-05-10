Return-Path: <devicetree+bounces-66224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6738C21EF
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:19:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF00CB21617
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 10:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0884E165FDB;
	Fri, 10 May 2024 10:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJHTvjYf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88C62233B
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 10:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715336336; cv=none; b=ljaYfGpVUiBlk3aXsjbyOX/ZuZXy8vxSrmEpeF+XEH+utTFtrn5mSrevg1/UJPEGH2YIXhPPuaYecYGOHuZzFdDzXOHxAZg1MnxTUFXCGxh6qxuUkiOTd5YFxPHgoaUf8pR+TOJSXLcVo6Ej+oeXwDr2NY6lgOeRPv5lERdwH+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715336336; c=relaxed/simple;
	bh=OJ23cnbCVS69gWFZGDNc/VynWcSsWstZHEG/jFLqnFI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rdoL3hhAT8dVD+dVKr9sZsf178pp9iebaF96yglAzS5KnkRix/aR8o/dewnpfI151jk8kzFJOgDKWWsoucRCCnNovNUHaTHq9ekjRky47JWU2DZgO8ZKbeev1Znl5Z+bFhBtF+yrMuZx72fY5BTdq+ZagU0q92bNSrNqzRkJMlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJHTvjYf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 815EBC2BD11;
	Fri, 10 May 2024 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715336336;
	bh=OJ23cnbCVS69gWFZGDNc/VynWcSsWstZHEG/jFLqnFI=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mJHTvjYfbkwO6swXYhPd/QvqlwO3hGwQ/nsAYPVQx67SvgC/emGQiumx3TG0BSLm0
	 WTpEjKagMCH4uV0X9Or5GeGiZ3kie2A9W9A1wMXzh52q8/RwmO7q/rrxf0RnqLPSkC
	 ClJTxcpsF9P9JlskVsLonpMFoeAPjKCxTBwXt0cnSfkX8QDriSSByAfububfKsC736
	 KfRuuefk0T06OSgilGyoyJ4z8sFovngzR03bqUv5USTwmOY/4KHHdgJCl/ALsewXW7
	 X2IgU2HOdzLE9gCBP4gMm7x3dKLse5yOi4QGIAmPBIbh4Z3v1PC4/L6YrAT6DbnrDG
	 WALPvh81ihT0g==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v10 9/9] ARM: dts: turris-omnia: Add GPIO key node for front button
Date: Fri, 10 May 2024 12:18:19 +0200
Message-ID: <20240510101819.13551-10-kabel@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510101819.13551-1-kabel@kernel.org>
References: <20240510101819.13551-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have the MCU device-tree node, which acts as a GPIO
controller, add GPIO key node for the front button.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../boot/dts/marvell/armada-385-turris-omnia.dts    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 59079d63fe27..43202890c959 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -112,6 +112,19 @@ sfp: sfp {
 		status = "disabled";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		front-button {
+			label = "Front Button";
+			linux,code = <KEY_VENDOR>;
+			linux,can-disable;
+			gpios = <&mcu 0 12 GPIO_ACTIVE_HIGH>;
+			/* debouncing is done by the microcontroller */
+			debounce-interval = <0>;
+		};
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "SPDIF";
-- 
2.43.2


