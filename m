Return-Path: <devicetree+bounces-257256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A075D3C566
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D92F37216F6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23283D7D88;
	Tue, 20 Jan 2026 10:00:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462B93D669F;
	Tue, 20 Jan 2026 10:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768903221; cv=none; b=XmwStEiGXyi85MMxiuyaDrUh4O4JJMQniXpHwd/Z98n/y2yoe+5okZanIfddEFLnxoxD3PLD6GbkJb4EW7z5MoO8l8nlAtgSlxc/gG6P9Yvw5H73H0tgzfQanjhC34qF6ZFndn1jQHTskVjgy5aZvLeoEafyCzKIMxnfkvMY3Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768903221; c=relaxed/simple;
	bh=BF9zG82BB561THomdk6HaQ2OLk7Y6+PnHejLvE7iilY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QaTP7iJoIYWUwB7/bIUlLj1yL4AP9vcWcJGkZs1MmhN/ti5z+cwD1KbtgXJ6mXW3CjynOFcI5RaonyyKd1VCuy5MrefKhQUj4lcoea6Lmkp30uWVupzlWw8dRj6VsmQAXHk9j2Yl/x9OkmWbqbWsWuvuFFkrLQYESzjL3zNiJgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.187])
	by smtp.qiye.163.com (Hmail) with ESMTP id 314af8f15;
	Tue, 20 Jan 2026 18:00:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 0/1] riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi
Date: Tue, 20 Jan 2026 18:00:00 +0800
Message-Id: <20260120100001.1285624-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bdad8f00a03a2kunm541e94ba35e443
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGRoYVh8eTU0dS0kaHR1OHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VSkNMWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+

On OrangePi R2S and RV2 boards, when the interface link down,
reading statistics will print several timeout logs:

root@OpenWrt:~# ethtool -S eth1
[   71.725539] k1_emac cac81000.ethernet eth1: Read stat timeout
NIC statistics:
     rx_drp_fifo_full_pkts: 0
     rx_truncate_fifo_full_pkts: 0

Both OrangePi R2S and RV2 use the YT8531C PHY. The same issue occurs
when enabling ALDPS mode (Link Down Power Saving Mode) on other boards
that use the RTL8211F PHY, such as the BananaPi BPI-F3 board [1].

So disable PHY sleep mode for OrangePi R2S and RV2 to avoid this problem.

[1] https://lore.kernel.org/all/f63d455c-7593-4382-86ef-9c31a1ebd283@iscas.ac.cn/

Chukun Pan (1):
  riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi

 arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts | 2 ++
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.25.1


