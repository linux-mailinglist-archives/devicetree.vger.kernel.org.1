Return-Path: <devicetree+bounces-253689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFB4D10827
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:55:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26F69302819E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 810EB2F851;
	Mon, 12 Jan 2026 03:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="GKnXFGw2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731108.qiye.163.com (mail-m19731108.qiye.163.com [220.197.31.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DF6E573
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768190108; cv=none; b=CLkdRd5uFoM9hE01i1wONLqcg6UYsRw76HWPPP9YM2stsmqNqzS9wPDV8GxUnN0E5NtZb4lArstUz1LhyM0ddPpk3MdnQdvXmVv4r2Itu6Vn5XD+gHxb6nrvIZxue1pNIyapnrVNb+xoED34zftVqWc+/v0xuOOKjT6l3cgDh5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768190108; c=relaxed/simple;
	bh=lsejZpFoqSVZttUCFKx++UWgqI2ahsy1+voaeHVdQGA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=luqU5GNYQsRchbPdfHOid3uIl9Z6S18SfJr0JwjQwUQL7wN49gQjdJMQIzLRnFarVbUx5kSfNXthFZu2clLu434bYo/ONfrXZon6cDth4td7nHdwoc/cn9gqcZtoZyg4L9oYNDdFXKE6r3PctEpM/3wVQ2z0dqfQckHas+MCAc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=GKnXFGw2; arc=none smtp.client-ip=220.197.31.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd17;
	Mon, 12 Jan 2026 11:49:47 +0800 (GMT+08:00)
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
Subject: [PATCH 0/3] Fix sd card support for RK3576
Date: Mon, 12 Jan 2026 11:49:25 +0800
Message-Id: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bb052faff09cckunm0fb8f84327b6aa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh0YTFZLGUtNTU5DQ0xDQ09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GKnXFGw2jvbdnxpxIuiDw4PwRhA9/K7HrlxeBTmt2lL+fuhr/47cDcgIgL6WJzHz5ub4l2+2VM0I1hTkRIHQ7a4zDQxn9R/7day54yiqYL47GOQSiw16vXY1jMNtiYxKxgxfBfnzmqihIVIm/VH8qReJShX6s6gpGiDCyORb5PI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BvDJSbGVhZtIrpNEm1zPA0SacCMixIBe/XaEgL5wkLw=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>


SD card support for RK3576 is totally broken. This is because sd cards
should try to use slot-gpio(cd-gpios) instead of function IO for supporting
runtime PM. In order to support slot-gpio method, we should disable jtag
switching for RK3576.

But the rockchip_grf_init fails to handle this because it couldn't handle
multiple grf nodes. In this case, iocgrf is in behind of sysgrf, so only
sysgrf is handled. We should scan all possible nodes.

Moreover, the offset is wrong as well. Per the TRM, the address of
TOP_IOC_IOC_MISC_CON is 0x260440F0, which means the offset if 0x40F0
intead of 0x040F.

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the board they are using.

Please review and test


Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 61 ++++++++++++------------
 2 files changed, 32 insertions(+), 30 deletions(-)

-- 
2.7.4


