Return-Path: <devicetree+bounces-53621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE2B88CDAB
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:58:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCA3E1C24800
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 19:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C55EC13D279;
	Tue, 26 Mar 2024 19:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ttpc+Uvr"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859713D26F
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 19:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483106; cv=none; b=slN9fTczilUX3cvdxfUaEgLh9Ii6BqSPLTq0c6rd2iaR9VZwO3gAfsVnhnxBDZA/OFfSpQYqRCUuqd53+vOqYGTx5k6EuNNUJwpXOH9v4dRVrrOkE6NHbMMOYA3LmjVIVI3nStzxbQC88dLkIvvHYwg6ygMbaOXFrPMe4bP8N+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483106; c=relaxed/simple;
	bh=xCYO00GEeHZ0vGGTmeWkp874jMs5RtNQgkYQEldVLlk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UE0PA2Pe80Yp6NMkdVA+X8VjKzy51kPT1YaHSyRyhFdewtfh2Zc7yqvHuTWZot73B7S7bpWnqg4//UZhP8esiSyahAPpOhlMbMfr2c59+Xw9Fem71Fl4+4WfgzDcmPT98mnX89b+77ozSW7UT/lqAC03Bid7VL/yPWN/UXP8emE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ttpc+Uvr; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B996B1815;
	Tue, 26 Mar 2024 20:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711483071;
	bh=xCYO00GEeHZ0vGGTmeWkp874jMs5RtNQgkYQEldVLlk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ttpc+UvrM33y4lluL0FUDhPTYjb7/nW/T2Ao0Uexem0rXxJu0ZICFI9CZJuuLu1Oj
	 H6k3GCLbK6TKIALcyyFPPviVhyLWTdJ0+A/cKJfRxVysqq1+IRF6DiYhWbw/AJS7ww
	 JArVW6tS5P7YrcpBOXSvnhSxNEOJ41UYrJVK9YjE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2 3/3] ARM: dts: bcm283x: Drop unneeded properties in the bcm2835-firmware node
Date: Tue, 26 Mar 2024 21:58:07 +0200
Message-ID: <20240326195807.15163-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The firmware node contains a "dma-ranges" property to enable usage of
the DMA mapping API with its child devices, along with "#address-cells"
and "#size-cells" properties to support the dma-ranges. This was needed
due to usage of the incorrect device to perform the DMA mapping in
drivers. Now that this has been fixed, drop the properties.

This effectively reverts commits be08d278eb09 ("ARM: dts: bcm283x: Add
cells encoding format to firmware bus") and 55c7c0621078 ("ARM: dts:
bcm283x: Fix vc4's firmware bus DMA limitations").

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
index f0acc9390f31..761a9da97bd0 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
@@ -4,11 +4,7 @@ / {
 	soc {
 		firmware: firmware {
 			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
 			mboxes = <&mailbox>;
-			dma-ranges;
 		};
 
 		power: power {
-- 
Regards,

Laurent Pinchart


