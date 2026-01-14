Return-Path: <devicetree+bounces-254781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38758D1C168
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06BFF3041020
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E292264AD;
	Wed, 14 Jan 2026 02:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="YsB/yTcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731104.qiye.163.com (mail-m19731104.qiye.163.com [220.197.31.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB32A2857F4
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768356167; cv=none; b=NGGuuxa+nTWX0+syuLKzuVJZhRI3Vsb7qgtWwXLqlRCXB8p8rGugNr2VAdzJolbigP8fIqIix3I5nwk0/cADvkkcCCiq7etnjhuYbmXz3QteqAT+KIAFXfDqdW+eukDXxBNlDUqPx4/zOD4gdfIYXKO9cepmb2k57LT12wGwjsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768356167; c=relaxed/simple;
	bh=ULJQ2yJmYZuH5BZi2ehx+S2jyDLmDxM4Eyh4g+EHQH0=;
	h=From:To:Cc:Subject:Date:Message-Id; b=l+Tx8WGmxoHiG5Y0Y+Ufub0RUOVViJwkiF9xCoA9kUQCbUi8n3SbEpbEorX5I8Nrb0Exe6vG6OF01hmeMd8w70RA+WXWIn5z/+d0tVAHkWe9SCgQ//f4oxOjEsmzlTqNloGrmqG3vZ08a92UH5gchIBnpqgKnu+18hNJyYzEXKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=YsB/yTcl; arc=none smtp.client-ip=220.197.31.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3c7;
	Wed, 14 Jan 2026 09:47:18 +0800 (GMT+08:00)
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
Subject: [PATCH v3 0/3] Fix sd card support for RK3576
Date: Wed, 14 Jan 2026 09:46:51 +0800
Message-Id: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bba2f90a109cckunmdcf781114283a4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpLQ1ZMGUsZHR9PTE9KSEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YsB/yTclbhStGVe9wPRCj09ngucI6Ehua3JgYLZsKBDattVtpIl+eyqj8l3eeCI8CNvqUetguau7RqAssFy0K+2TcTbKAZfJxgIHLbjUyt5/3fXpi/SdA6vvElW9LDh5bdkkKRZBAEpatxac5QVsAmeBrYnmMv3AUUH2fT/4GnU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/SwOSO65L2hA9pCZ/ByY9Rw19Jn5x5M07x+YiJuu2J8=;
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
intead of 0x040F

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the board they are using.

Please review and test


Changes in v3:
- remove of_node_put() (Heiko)
- collect tags

Changes in v2:
- use for_each_matching_node_and_match(Heiko)
- add fixes tag

Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 57 ++++++++++++------------
 2 files changed, 29 insertions(+), 29 deletions(-)

-- 
2.7.4


