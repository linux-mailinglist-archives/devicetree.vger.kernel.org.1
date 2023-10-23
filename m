Return-Path: <devicetree+bounces-10928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6C7D387B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:52:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1532E2813E1
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BC71A724;
	Mon, 23 Oct 2023 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511B11A266
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:52:29 +0000 (UTC)
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8914100
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:52:26 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:375d:2b56:c03f:d72d])
	by laurent.telenet-ops.be with bizsmtp
	id 1RsQ2B0043CbNjd01RsQDK; Mon, 23 Oct 2023 15:52:24 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLt-007KH7-0r;
	Mon, 23 Oct 2023 15:52:23 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLz-007oKq-S1;
	Mon, 23 Oct 2023 15:52:23 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/3] dts: renesas: Fix I2C bus demux node names and ADV751[13] power supplies
Date: Mon, 23 Oct 2023 15:52:14 +0200
Message-Id: <cover.1698068646.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

This patch series fixes some rather cosmetical issues detected while
converting the I2C bus demultiplexer Device Tree binding documentation
to json-schema[1].

I intend to queue these in renesas-devel for v6.8.

Thanks for your comments!

[1] https://lore.kernel.org/r/28c173dfbbc17403b0c5a6f27661d7bd33a86f84.1698068607.git.geert+renesas@glider.be

Geert Uytterhoeven (3):
  ARM: dts: renesas: rcar-gen2: Fix I2C bus demux node names
  ARM: dts: renesas: Add missing ADV751[13] power supply properties
  arm64: dts: renesas: Add missing ADV751[13] power supply properties

 .../boot/dts/renesas/iwg20d-q7-dbcm-ca.dtsi   | 15 ++++++++++
 .../renesas/r8a7745-iwg22d-sodimm-dbhd-ca.dts | 15 ++++++++++
 arch/arm/boot/dts/renesas/r8a7790-lager.dts   | 23 +++++++++++---
 arch/arm/boot/dts/renesas/r8a7790-stout.dts   | 15 ++++++++++
 arch/arm/boot/dts/renesas/r8a7791-koelsch.dts | 30 +++++++++++++++++--
 arch/arm/boot/dts/renesas/r8a7791-porter.dts  | 26 +++++++++++++++-
 arch/arm/boot/dts/renesas/r8a7792-blanche.dts | 15 ++++++++++
 arch/arm/boot/dts/renesas/r8a7792-wheat.dts   | 21 +++++++++++++
 arch/arm/boot/dts/renesas/r8a7793-gose.dts    | 28 +++++++++++++++--
 arch/arm/boot/dts/renesas/r8a7794-alt.dts     |  4 +--
 arch/arm/boot/dts/renesas/r8a7794-silk.dts    | 17 ++++++++++-
 arch/arm64/boot/dts/renesas/draak.dtsi        |  6 ++++
 arch/arm64/boot/dts/renesas/ebisu.dtsi        |  6 ++++
 .../arm64/boot/dts/renesas/r8a77970-eagle.dts | 15 ++++++++++
 14 files changed, 223 insertions(+), 13 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

