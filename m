Return-Path: <devicetree+bounces-105626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5259874BA
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4A631F248A6
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF7A43E47B;
	Thu, 26 Sep 2024 13:48:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [195.130.132.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F099C1C6B2
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 13:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727358534; cv=none; b=cLkEa+ASIw5eGtdeFvByvFSqnWMP5rA8RPqeNY2zA7BT0vc4L9ymXUCQfjDD+53Ys9XrHdriRFmWhUELB1TkNKhJD57t0HItMpyIIryOSXdp7qKgRe4mTBAYzHaKiPwJdH5+QKZ+q5bMDEXc6x1LgPJfRAGmJtI/sCqZaMxECiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727358534; c=relaxed/simple;
	bh=W6mQ2ZhwxTOZc/xTM48m9Gnl50C/p+NihbqIhn1bYY0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TbSvDO1djMHeIx6EXqOoeY2vysDtY739kaKe1SJEXhruXJTExVRyM1c1Z9uESpeOQVvUtel1KUc+KE6v3gzyZa+teqHjBpF2hfNJ7Vjro1C0X2+OnY7Mo2SRiTJkeBcGcJJpIKfEXyGFuDeeu2ZZ1NdxgyfhyQLS4LIsQ0cRDrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:7bd9:a854:38c6:ce04])
	by baptiste.telenet-ops.be with cmsmtp
	id H1oj2D0043fTnLU011ojXx; Thu, 26 Sep 2024 15:48:43 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storF-000bcY-Qh;
	Thu, 26 Sep 2024 15:48:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storK-001yEd-Od;
	Thu, 26 Sep 2024 15:48:42 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Jacob Chen <jacob-chen@iotwrt.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] arm64: dts: rockchip: rk3399: Fix rt5651 compatible values
Date: Thu, 26 Sep 2024 15:48:39 +0200
Message-Id: <cover.1727358193.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

This patch series fixes two occurrences of the "rockchip,rt5651"
compatible value, which is not documented in DT bindings or supported in
any upstream driver.  Presumable these are typos for "realtek,rt5651",
as the "simple-audio-card,name" properties in the "rt5651-sound" nodes
refer to Realtek codecs.

This is untested due to lack of hardware.
Thanks for your comments!

Geert Uytterhoeven (2):
  arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
  arm64: dts: rockchip: rk3399-sapphire-excavator: Fix rt5651 compatible
    value

 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

