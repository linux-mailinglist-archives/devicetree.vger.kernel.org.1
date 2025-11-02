Return-Path: <devicetree+bounces-234111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD4C28DF4
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 12:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05ADE3A4BE5
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 11:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D22027FB32;
	Sun,  2 Nov 2025 11:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="sc9mCJWK"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B2227C84E
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 11:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762082102; cv=none; b=Pv/j+AXTLIPvT4IiglQc9LTRgAVe8ImcIczyJnb7ISDVnNeAmQwVF7VnB6EEMhw0HsqPGl86BtbZkSUKkv7TeL57DJLmZK6wU4obxfx+NQssQiiyuH3jPXkmYhz4LogzYmiS2RAuLulPjzwL1qravOOuzvPbX9pdXWFpq+v930Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762082102; c=relaxed/simple;
	bh=Ne9Ze/9I/Yc7zOCgdwkMbHmMs0v58RaQD9Vhq7QvZ+w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EHCeXBlGDcK2c9jcE/gcD/K4y/JMb4k/wIprwwZa6x4bKjx0OPCp8N1U/KsZZnrKTzkNHULFbOTwerFvl0mjt73F0ef0wQMHz0oN1l9zT7hUnmG3lEqoUJ/dswDCxkkMGcDAfTXt4jSBfvh+41XDIJxXSvONnlVrt2vImk8bbSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=sc9mCJWK; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-160-149.bb.dnainternet.fi [82.203.160.149])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id C8552C73;
	Sun,  2 Nov 2025 12:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1762081986;
	bh=Ne9Ze/9I/Yc7zOCgdwkMbHmMs0v58RaQD9Vhq7QvZ+w=;
	h=From:To:Cc:Subject:Date:From;
	b=sc9mCJWKI+yC+RGC0Xx004+wGs+YO5yI36d9cLqVAdyr70ba6ny3eQUVDhg3KnfvN
	 3X3A2wUB4MqvwfIwTlCoLEl70FVVmo7t2iHa9x/y49W7djWtG2o4DScrf+ncNtRLp1
	 ZniAbU7r6iEUVGDr6WBAnwa1uRL+BqvjmrmJtPd0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
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
Subject: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
Date: Sun,  2 Nov 2025 13:14:42 +0200
Message-ID: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
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
Changes since v1:

- Moved the alias to bcm2712-rpi-5-b.dts
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 09a849dd09b1..3e0319fdb93f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -18,6 +18,12 @@
 
 #include "bcm2712-rpi-5-b-ovl-rp1.dts"
 
+/ {
+	aliases {
+		ethernet0 = &rp1_eth;
+	};
+};
+
 &pcie2 {
 	#include "rp1-nexus.dtsi"
 };

base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
-- 
Regards,

Laurent Pinchart


