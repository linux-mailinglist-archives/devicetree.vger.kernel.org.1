Return-Path: <devicetree+bounces-146639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E06F6A35A85
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A23D516B0C1
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5452242923;
	Fri, 14 Feb 2025 09:42:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12DE23F422
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 09:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739526138; cv=none; b=Jym1Wok9hIE+1U8YI8Snzm1ryHtTaHDhARbxGmeP5YdWt6EkhMpTQG13qKb85CZXqxYislRzfcBoGwihQW0/+pM0dNt164C3NUy6eQi0DQHAVNUYeDTCHDU/bQrZEim5vt5P1aFAzHm2c5fkW/STmlVshUarEES5KH/KL2WeeAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739526138; c=relaxed/simple;
	bh=gq1o1VxnK4lawM6TgNAyta2qg86G/5gSSdrhWRhnavU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=alzMdSnkfHeT6qVn/npOg+jV7Q3A60U8ZbXMI8lG0pxc6bHhI3CHfBnmOAJ4RWqyh7zyZHoTDbozn0ZQWYNMlbGK4JLQlJrmoK595RuD0CmMAPjZJicyj41kfLWN6imxLgadhja4VzWvSp76pg/x6F7GuPQL7lYNLkhHFSTfGU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:6395:73cc:7fc4:4cab])
	by laurent.telenet-ops.be with cmsmtp
	id DMi72E0061MuxXz01Mi7fK; Fri, 14 Feb 2025 10:42:09 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tisCj-00000006Xjh-3DM4;
	Fri, 14 Feb 2025 10:42:07 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tisD0-00000000ggU-407h;
	Fri, 14 Feb 2025 10:42:06 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] ARM: dts: renesas: r9a06g032: UART dtbs_check fixes
Date: Fri, 14 Feb 2025 10:42:02 +0100
Message-ID: <cover.1739525488.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

This patch series fixes two "make dtbs_check" issues for the RZ/N1
UARTs.  As I do not have access to an RZ/N1 board, this was not tested
on actual hardware.

Thanks for your comments!

Geert Uytterhoeven (2):
  ARM: dts: renesas: r9a06g032: Fix UART dma channel order
  ARM: dts: renesas: r9a06g032: Drop snps,dw-apb-uart compatibility

 arch/arm/boot/dts/renesas/r9a06g032.dtsi | 26 ++++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

-- 
2.43.0

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

