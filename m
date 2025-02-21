Return-Path: <devicetree+bounces-149178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BABA3E9DD
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 02:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EA057A7430
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 01:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE5E3597E;
	Fri, 21 Feb 2025 01:22:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB7BA94A
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740100970; cv=none; b=sYfrfdviUXYvjl1qr5R/5ue8DAyLGXDTJZImf+EF3frBhq0a8FYAN4Vlhqdt+c2yn3j4zyXqjRwjYUbnPgMBl/3LzepRsQy2lFkaS+k0Amh1/bizkbHH3HIqC7GDnRCfWPeBv2MYZFKzcmtlnpQIMWz75ZXmw05CILjpI14kCOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740100970; c=relaxed/simple;
	bh=l3RB8IgDTVTrQsCk2qcai1aoFKvSgUN8O8W2wCAFn94=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XmujW8xkPkqeVnSNISedBZGx4ouHU84AdD7nWxpNV3itJcEdSJLrrvhnqOWGxx+fqMxf8NDpFQ0OEu/hgU382lAuXijHNGhiDJZYDV5TMSrscilfTAeCysgaFxNi27X58JqQZdPlX500NgvaTFhWI4Rh/wQTa+geLEvhhQrZTL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 293EA1BA8;
	Thu, 20 Feb 2025 17:23:06 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7CBA3F59E;
	Thu, 20 Feb 2025 17:22:46 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 0/3] arm64: dts: sunxi: Add YuzukiHD Chameleon support
Date: Fri, 21 Feb 2025 01:20:35 +0000
Message-ID: <20250221012038.13706-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "Chameleon" board is an Open Hardware board designed and developed
by YuzukiHD, and mimics the Raspberry Pi A form factor. It sports an
Allwinner H618 SoC, and alongside the usual devboard peripherals features
an eMMC chip and four USB-C ports:
https://github.com/YuzukiHD/YuzukiChameleon

Add support for that board with the usual patch trinity: vendor prefix,
board name binding, board .dts file.

Please have a look!

Cheers,
Andre

Andre Przywara (3):
  dt-bindings: vendor-prefixes: Add YuzukiHD name
  dt-bindings: arm: sunxi: Add YuzukiHD Chameleon board name
  arm64: dts: allwinner: h616: add YuzukiHD Chameleon support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../sun50i-h618-yuzukihd-chameleon.dts        | 222 ++++++++++++++++++
 4 files changed, 230 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts

-- 
2.46.3


