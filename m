Return-Path: <devicetree+bounces-24112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF26080E0B3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 02:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A60A2825EC
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 01:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C4AF64F;
	Tue, 12 Dec 2023 01:09:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 34C5FBE
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:09:10 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D3191474;
	Mon, 11 Dec 2023 17:09:56 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11F4D3F5A1;
	Mon, 11 Dec 2023 17:09:07 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 0/3] arm64: dts: allwinner: Add Transpeed 8K618-T TV box
Date: Tue, 12 Dec 2023 01:08:56 +0000
Message-Id: <20231212010859.11571-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Transpeed 8K618-T is one example of various cheap Chinese TV boxes
using the Allwinner H618 SoC. It comes with up to 4GB DRAM and up to
128GB eMMC flash, plus the usual HDMI, 100Mbit Ethernet, WiFi/BT and
dual USB ports, not to forget the mandatory microSD card slot.
More details: https://linux-sunxi.org/Transpeed_8K618-T

Ethernet relies on the yet unsupported integrated PHY, and the HDMI
output is similarly not yet supported, but patches exist that await
polishing for mainline submission.
Meanwhile USB and eMMC plus SD card work, so you can hook up an USB
Ethernet or WiFi adapter to get things going.

This series is the usual trilogy of DT support patches: adding the vendor
name in patch 1, the board compatible name in patch 2, and the actual
.dts file in patch 3.

Please have a look!

Thanks,
Andre

Andre Przywara (3):
  dt-bindings: vendor-prefixes: add Transpeed
  dt-bindings: arm: sunxi: document Transpeed 8K618-T board name
  arm64: dts: allwinner: h618: add Transpeed 8K618-T TV box

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../sun50i-h618-transpeed-8k618-t.dts         | 164 ++++++++++++++++++
 4 files changed, 172 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts

-- 
2.35.8


