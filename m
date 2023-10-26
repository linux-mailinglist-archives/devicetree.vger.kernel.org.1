Return-Path: <devicetree+bounces-12175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D2A7D83F4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:55:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F21A1C20EAD
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18AD2E405;
	Thu, 26 Oct 2023 13:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D5E2E402
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:55:39 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B10DD4B
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 06:55:36 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:32d3:3cb9:edce:43ae])
	by xavier.telenet-ops.be with bizsmtp
	id 2dva2B0082XL1Wb01dvaKi; Thu, 26 Oct 2023 15:55:34 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qw0pa-007YxJ-1x;
	Thu, 26 Oct 2023 15:55:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qw0ph-00HArs-VU;
	Thu, 26 Oct 2023 15:55:33 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] scripts: dt_to_config: Fix nul-separated compatible values
Date: Thu, 26 Oct 2023 15:55:30 +0200
Message-Id: <cover.1698328110.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

Due to a not-so-recent change in dtc, the dt_to_config script no longer
works well when used on a DTB instead of on a DTS file.  The first patch
fixes that, the second patch fixes the rather odd spacing in that
script.

To not hamper backporting the fix, I put the reformatting patch last.

Thanks for your comments!

P.S. Apparently I had fixed the similar issue in my own out-of-tree
     linux-config-from-dt script in a slightly different way.
     https://github.com/geertu/linux-scripts/commit/56ade26c032c45e9353334384643d190d34b89fb

Geert Uytterhoeven (2):
  scripts: dt_to_config: Fix nul-separated compatible values
  scripts: dt_to_config: Fix odd formatting

 scripts/dtc/dt_to_config | 1765 +++++++++++++++++++-------------------
 1 file changed, 879 insertions(+), 886 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

