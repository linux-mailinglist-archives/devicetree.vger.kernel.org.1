Return-Path: <devicetree+bounces-141537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF27A212D5
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 21:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BDBC1884F64
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 20:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C83415D5C4;
	Tue, 28 Jan 2025 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="vgc9jZ4L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77C214B06C;
	Tue, 28 Jan 2025 20:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738094723; cv=none; b=kmF893n+r/hzq6EfzCB7J9POVnMEmh+pinxsnP7TOX6kO+7ivMTeCjqooZeWNCY4QUSGvtAYHlvncG1abYlrQmynl2qedeVca0dQfC+0h2SUJ7M7rpBfTxXoHTQUEGPoJQvOnw9SNPScsEzlavkhqkjqwV2+KUSFUeil2LTRX0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738094723; c=relaxed/simple;
	bh=DJsdBDZ0AOPZdKC2T4s0JRkqvX34SgF8zsSkeBiTfA8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kUENZGUMNAkkjskDnaC/geQESO4ojze6W8Caq1IUxDXE+O5AM6AFmXd8bOOYPWCHtzxoymPdFLuer8PBV66mwMtqz0SoSV5Zui/WLVllMJqt3v1bL6jqRwmdGl9Zb+M2LT4vsaw3SzTogA+PlpUSQaNuGVDLet6Lg/sls1hVglo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=vgc9jZ4L; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=XQ+wjSPA5HmHAGefpS6arpoTGAAms/cpN7OEbSeVp1E=;
	b=vgc9jZ4L8Ru5wwAhOcKLKKG/NtPrylo6pej+ut2x/XrL6dWqF7D3DoYGRmpxMGYt3UicVa06I5cWv5DYOPrz6y70PPhDyhvs1tt4tPyea3ten+5RhQeCp/2p7upfc16VXUh13FscIFW0xX4t6hfoCulzyBt9jyvwcs+yXxMiOas=
Received: from lukas-hpz440workstation.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 28 Jan 2025 21:05:10 +0100
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
Subject: [PATCH v8 0/4] Add support for NetCube Systems Kumquat
Date: Tue, 28 Jan 2025 21:03:49 +0100
Message-Id: <20250128200355.1948997-1-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds dt-bindings and dt's for the NetCube Systems Kumquat board

Changes in v2:
  - Fix the devicetrees according to the "dt-schema" and 
    "make dtbs_check W=1"
  - Fix the License of the devicetree as requested
  - Create a cover letter for the patch series

Changes in v3:
  - Disable rtc inside the SoC again, as the rtc does not work on the board
  - Add the gpio-reserved-ranges property to the pinctrl bindings
  - Reorder the nodes in the devicetree to match the order of the nodes in 
    the sun8i-v3s.dtsi file

Changes in v4:
  - Moved the dtsi change into a sperate patch
  - Update commit messages to include better descriptions
  - Add descriptions to the uarts and mmc nodes in the dts file
  - Add missing newline at the end of the dts file
  - Removed the gpio-reserved-ranges property from the dts and from the
    pinctrl bindings
  - Remove the rtc status property from the dts file

Changes in v5:
  - Remove the unused lradc node and it's regualtor, as they are not used
    on the board
  - Add another alias for the SoC's rtc as 'rtc1'

Changes in v6:
  - Add reason why DS3232+ is preferred over internal rtc
  - Remove redundant pinctrls from mmc0, mmc1 and i2c0
  - Reordered eeprom0 and spi0/flash@0 properties
  - Reordered nodes by their node name alias+

Changes in v7:
  - Disable the external 32kHz crystal oscillator, as it does not work on
    the board

Changes in v8:
  - Update the commit messages and cover letter according to the Linux
    coding style

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
 .../allwinner/sun8i-v3s-netcube-kumquat.dts   | 278 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |   6 +
 5 files changed, 293 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts

-- 
2.39.5



