Return-Path: <devicetree+bounces-135899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C1A02EEB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 18:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0330D1886E4B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C477C1DE8B4;
	Mon,  6 Jan 2025 17:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="0aGM9ceU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4EB114AD2B;
	Mon,  6 Jan 2025 17:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736184490; cv=none; b=oIy6VRw4kAiRReiS+pcTTXv6f+TU+BmibeIVbgsjV6qpHg/bypw7Si/CawsvmG/9XSWHtsqPicdkxQDedDZSR7OnqRJ+QNTCfa4kpmYDrRTW9+kquTuhV5REc5AI/AjwIv+c8CGk/2x6ulj2TTl3wEC4WH2irG8VGaAANKKOL7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736184490; c=relaxed/simple;
	bh=Zi7kUypivqlsiXdXn0SieFXp1kLKRy/ETL8PChqrG/Y=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Vry0pWDxkBz8/iQ7EERexv2bR5hY3tFD4mcBnKJKyiFfYfhAmS+fjG3BI2xN9Qaub4/hgSFvVSjPBknl3I1q4HSYtAoKJWtaHOiEICFNE3vYntylNRIJDHCeBtWqOWyo+lhdSORHXuf7ol+tG3ghF+qc/34/zdz1FhFOcFi8x2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=0aGM9ceU; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=6YvxqScepd2bS8fT8BgRbz21otHgmPZuhn1eZozf0gU=;
	b=0aGM9ceUlVjCp0dkC+vey6N+qBoIvVjSH2nLmWg8TRNPqJ1Dg1pNILoXvQcOFvgJk1kX0FFB8C/O5c1msZpC7PeT8QZZsuwwhHG+vzb2gKtgjY9MmVCnyOwPJNiCAQmUEV7P6DfLpWNzUEiBG6uBaNUNOmH27o7jyi3u2XKBPDo=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Mon, 6 Jan 2025 18:28:03 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Add support for NetCube Systems Kumquat
Date: Mon,  6 Jan 2025 17:23:59 +0000
Message-Id: <20250106172405.3897-1-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds dt-bindings and dt's for the NetCube Systems Kumquat
board.

Changes in v2:
  Fix the devicetrees according to the 
    "dt-schema" and "make dtbs_check W=1"
  Fix the License of the devicetree as requested
  Create a cover letter for the patch series

Changes in v3:
  Disable rtc inside the SoC again, as the rtc does not work on the
    board
  Add the gpio-reserved-ranges property to the pinctrl bindings
  Reorder the nodes in the devicetree to match the order of the nodes 
    in the sun8i-v3s.dtsi file

Changes in v4:
  Moved the dtsi change into a sperate patch
  Update commit messages to include better descriptions
  Add descriptions to the uarts and mmc nodes in the dts file
  Add missing newline at the end of the dts file
  Removed the gpio-reserved-ranges property from the dts and
    from the pinctrl bindings
  Remove the rtc status property from the dts file

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
Lukas Schmid (4):
  dt-bindings: vendor-prefixes: Add NetCube Systems Austria name
  dt-bindings: arm: sunxi: Add NetCube Systems Kumquat board
  ARM: dts: sunxi: add uart1_pe pinctrl for sun8i-v3s
  ARM: dts: sunxi: add support for NetCube Systems Kumquat

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/allwinner/Makefile          |   2 +
 .../allwinner/sun8i-v3s-netcube-kumquat.dts   | 291 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |   6 +
 5 files changed, 306 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts

-- 
2.47.1



