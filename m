Return-Path: <devicetree+bounces-254224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD59D16220
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:19:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 673AF3008F69
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAE9265629;
	Tue, 13 Jan 2026 01:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="KQEf2ffZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3294.qiye.163.com (mail-m3294.qiye.163.com [220.197.32.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62E7273D81
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267151; cv=none; b=UA9r2H9NZL1iCORtcUDFLKCinBx8AvdCxSXfHWK4zy50WEwTJ7z4UKDoBOyXqVddUmbBAzSBuFTqROMTmsyb3zMt1L0Pho+abifwRNDo6KRa2kxUCb2i1XAGnvcghDgdAN6dzE4zaN+vFmpTUs/bqjdDNOiWM7y1A8hnwiY7X6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267151; c=relaxed/simple;
	bh=4Bc1rYIS25ZTJ84Or3zLYajHpSSUo1zWo6lErqkwW6s=;
	h=From:To:Cc:Subject:Date:Message-Id; b=b9OdBfikYkSkDqVgKZ2bYTsuryEagYhX7Ofsotlvqu030/QojzRzPSO8nfLIzHQoQzBX9UOGXSLZ8OXHPHau0ual7jiWjGzdABtmQ7S3uMMfXAMVqO1V84JxlJCWPTt/FATLDzEPy3sx0IzY9TFkkWOTpptw07LjmBKbUYPdjOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=KQEf2ffZ; arc=none smtp.client-ip=220.197.32.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 306510f71;
	Tue, 13 Jan 2026 09:18:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/3] Fix sd card support for RK3576
Date: Tue, 13 Jan 2026 09:18:22 +0800
Message-Id: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bb4ef391209cckunm57b018bc340220
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hDHlZLSxgdTEkaGhoYHhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KQEf2ffZnRrvFpwNirngrxvMSdDLCgfc6stKq4UTOo/J6Lu6SUG2WHOyxEjtSraYoayLVa7ax2Pk5/FMb7wcGj4sJTYGMCMH9cJI77A1qCDNbtAG5sDrtn72a6W7HvOqYM05QAXJH6MBNs2zc9uAcjGLKFz2HZIgBo4bwoGJFCI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8n1NzS9xTN1bH+UPdheh+GG8+ehRLIrJHtfD0qaYU5c=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>


SD card hot-plug support for RK3576 is totally broken. This is because sd slot
should try to use slot-gpio(cd-gpios) instead of function IO for supporting
runtime PM. In order to support slot-gpio method, we should disable jtag
switching for RK3576.

But the rockchip_grf_init fails to handle this because it couldn't handle
multiple grf nodes. In this case, iocgrf is in behind of sysgrf, so only
sysgrf is handled. We should scan all possible nodes.

Moreover, the offset is wrong as well. Per the TRM, the address of
TOP_IOC_IOC_MISC_CON is 0x260440F0, which means the offset if 0x40F0
instead of 0x040F

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the boards they are using.

Please review and test


Changes in v2:
- use for_each_matching_node_and_match(Heiko)
- add fixes tag

Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 54 ++++++++++++------------
 2 files changed, 28 insertions(+), 27 deletions(-)

-- 
2.7.4


