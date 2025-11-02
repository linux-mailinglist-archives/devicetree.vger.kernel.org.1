Return-Path: <devicetree+bounces-234098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF530C288E1
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 01:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 455DB3B6765
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 00:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609F6148830;
	Sun,  2 Nov 2025 00:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ad4dY9n7"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CAB63CF
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 00:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762043366; cv=none; b=RlNpLYloOjJG0IDL4AvZGlXPx4Ntkzh8jb2tikV81YAb4GjFF/2YvfLWzfOg1VIO5lmnEjFVlpat3wwEP1VEqwefpSJA9SSPvFEULm+1b+9ZjReOeWBX3BM44nr1HtkpNhWqyMKifGlHKhZqJkh6z5QkXKJzA0+lYrjoDXisZjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762043366; c=relaxed/simple;
	bh=rnmqrkMo+QIg+hCxy908HQ9gxuv5YMsX1uU3VXsARms=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F14OjMghUtUa9q69hVhDhjZdQcX3cTvb7+2LRtXSfHanvGOc/7i1niR7LzD/Af2XYDR8D86Y+YzaouxAbvjeudtJ1w0mWhNZ9/Ur3m/MB2RjVzsyJqkoYL9DEgtGzUimM+gerOeBipLee1g1u8TUbGztuAB8nGJTolSVhaXWvRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ad4dY9n7; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-160-149.bb.dnainternet.fi [82.203.160.149])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 2596C10BE;
	Sun,  2 Nov 2025 01:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1762043243;
	bh=rnmqrkMo+QIg+hCxy908HQ9gxuv5YMsX1uU3VXsARms=;
	h=From:To:Cc:Subject:Date:From;
	b=ad4dY9n7zDkBCjRAtDec1NJbDYhYZSCvRUDJ8Ba3pcOCaTPzAbtCf3quNTGXi3INw
	 rJJZteVTPfvX97wwDXlEcLEymeAtMt0MO7aeLMsWr4LCg4xBoGrJWZdof6HxEqWtzW
	 mpcFBhft6t5jGrjAyPfy2Bh0QK6wuVBx8GFiN+uU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>,
	Rob Herring <robh@kernel.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
Date: Sun,  2 Nov 2025 02:29:00 +0200
Message-ID: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 ethernet controller DT node contains a local-mac-address
property to pass the MAC address from the boot loader to the kernel. The
boot loader does not fill the MAC address as the ethernet0 alias is
missing. Add it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 04738bf281eb..fa438ac8c9ef 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -10,6 +10,7 @@ / {
 	model = "Raspberry Pi 5";
 
 	aliases {
+		ethernet0 = &rp1_eth;
 		serial10 = &uart10;
 	};
 

base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
-- 
Regards,

Laurent Pinchart


