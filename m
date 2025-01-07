Return-Path: <devicetree+bounces-136301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D51A04A15
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 20:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 447C87A3199
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 19:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7FE1F3D5D;
	Tue,  7 Jan 2025 19:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="o0WjyORe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067031F4E50;
	Tue,  7 Jan 2025 19:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736277771; cv=none; b=iaTzLuaCVTDjne0DPQmjq83j56IqpjGZgrZId/p1D09u1xSSGKnRRRG93MzhQjCr/bWxHp72z+ODxrQyingdCQY6+rE5smFS2g5AOLvSyNUH9Sn43p61Ll6urCwscBF8pzrOagUSDZl9cMZdl+JBHdVz0vjRUGJ4Bn0WmX91LEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736277771; c=relaxed/simple;
	bh=GQrNIs4lEXa5uxcuLuEiidbhziGDgSMzqtuOC6RmbJ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BptAqT5g0Qxsd3BvO44Q1+sbM6sRZLoS51d1cyGxPQ4V7zmVbH2Tvc9/f8NQ6VOj4dA3LGiUnPYpOppPTbyQEK36vQxWHFf8CKv24B8AuvogsaIk2wcflWNfJx6X1deJUuBGZZJMzf+fmUNx4PFrP40KUh/mWwg6lL4odAqrUH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=o0WjyORe; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=ZOjzwL4gnlE+sZAmf17LjcUdaPDgmh9qOPz72urkf+Q=;
	b=o0WjyOReDNlIYxkNxmyEXHhXR86QFICWdKqUXzxBUl4Dyfv4V6p3BANQjmGXxW3fCO98ZXAtJ3PV1MRRlm19w1hI+sJzal6HNATjVjBiWog4bXxfE5rYk3ifvh6at4JSCq5ex8VmO5ehpmSKxs2rN3pRnRlZOUqJppPeR+kkMF4=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Tue, 7 Jan 2025 20:22:11 +0100
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
Subject: [PATCH v6 0/4] Add support for NetCube Systems Kumquat
Date: Tue,  7 Jan 2025 19:18:38 +0000
Message-Id: <20250107191844.4151-1-lukas.schmid@netcube.li>
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

Changes in v5:
  Remove the unused lradc node and it's regualtor, as they
    are not used on the board
  Add another alias for the SoC's rtc as 'rtc1'

Changes in v6:
  Add reason why DS3232+ is preferred over internal rtc
  Remove redundant pinctrls from mmc0, mmc1 and i2c0
  Reordered eeprom0 and spi0/flash@0 properties
  Reordered nodes by their node name alias

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
 .../allwinner/sun8i-v3s-netcube-kumquat.dts   | 268 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |   6 +
 5 files changed, 283 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts

-- 
2.47.1



