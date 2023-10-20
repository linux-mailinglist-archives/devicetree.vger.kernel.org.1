Return-Path: <devicetree+bounces-10425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E177D11EF
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7DBF282319
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D1E1DA26;
	Fri, 20 Oct 2023 14:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99371CFB9
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:57:13 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3B409D53
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 07:57:12 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB948143D;
	Fri, 20 Oct 2023 07:57:52 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.43])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 358DE3F762;
	Fri, 20 Oct 2023 07:57:10 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>
Cc: Marc Zyngier <maz@kernel.org>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: allwinner: Add Orange Pi Zero 2W support
Date: Fri, 20 Oct 2023 15:57:04 +0100
Message-Id: <20231020145706.705420-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this adds support for the Orange Pi Zero 2W, a small board in the
Raspberry Pi Zero form factor, but with an Allwinner H618 Soc and up to
4 GB of DRAM.

This is just for the base board, created by looking at the schematics.
There is an FPC connector, which connects to a stackable expansion
board, that provides two additional USB-A sockets and an Ethernet jack,
among other connectors.
What is the recommended way to model this, via a DT overlay, applied
dynamically by the bootloader, or using a separate .dts file, that
includes this base board file?

Cheers,
Andre

Andre Przywara (2):
  dt-bindings: arm: sunxi: add Orange Pi Zero 2W
  arm64: dts: allwinner: h616: add Orange Pi Zero 2W support

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../allwinner/sun50i-h618-orangepi-zero2w.dts | 176 ++++++++++++++++++
 2 files changed, 181 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts

-- 
2.25.1


