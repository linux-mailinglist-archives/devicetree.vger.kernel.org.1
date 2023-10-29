Return-Path: <devicetree+bounces-12649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0487DAB9C
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 08:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CD341C2087B
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 07:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BA9B79D4;
	Sun, 29 Oct 2023 07:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0A87476
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 07:49:27 +0000 (UTC)
Received: from mail-m17214.xmail.ntesmail.com (mail-m17214.xmail.ntesmail.com [45.195.17.214])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BD2D3;
	Sun, 29 Oct 2023 00:49:25 -0700 (PDT)
Received: from localhost.localdomain (unknown [58.61.140.248])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id AAC6F80007F;
	Sun, 29 Oct 2023 15:40:14 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/1] arm64: dts: allwinner: h616: update emac for Orange Pi Zero 3
Date: Sun, 29 Oct 2023 15:40:08 +0800
Message-Id: <20231029074009.7820-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT08YVh8eQ0pNTxhJTU1IGVUTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPS1VJT0NZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a8b7a605328b03akuuuaac6f80007f
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6Hgw6AjwwCykyLSEuHBxK
	MBwwCTFVSlVKTUJDTk1OSUpOTUNPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPS1VJT0NZV1kIAVlBSkxDTDcG

> Changes from v2:
> * Merge into one commit.
> * Update phy mode for Zero 3.

Chukun Pan (1):
  arm64: dts: allwinner: h616: update emac for Orange Pi Zero 3

 arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi | 3 ---
 arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts | 3 +++
 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 2 ++
 3 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.25.1


