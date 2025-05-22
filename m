Return-Path: <devicetree+bounces-179535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41253AC0B6F
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A73E57A89F0
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED4E1527B1;
	Thu, 22 May 2025 12:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="QtY4siXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155104.qiye.163.com (mail-m155104.qiye.163.com [101.71.155.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A566C1E485
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916129; cv=none; b=YlXM91MhelB2reyUfMblOd2nslszuwz1a8STEgZOxFRZe2XevDDlgQ9whO8JGyYJULKmuDoMZlh+MFTnIXOITt9ARkyrPTIZ36aWPADK/62RkbyJJP2DUovMui3e0iWR/GJjLYe1WeO0wR/RAMvK5QEwsmmWXUo1ZdJhT54HtD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916129; c=relaxed/simple;
	bh=+DJehpBEzcXjE1hcGuLOUGatNwid7SoE2kUaAEo9mTg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XbzNazc2ye9uVFSS0mZKNNmyOymv4g25xzUktEkOOv1LIEeXUTNEyFQFDw+oO2fnhM0HyKg3I0UlWnnbU5JCBxnPNGfHdOUln3nKEIW9Dfn8XxlGDg3mEhaPKWVTozVZLQag1FNEhuOUq03pWl5ODBLMwGVpzN2bGZfm5HRxvp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=QtY4siXE; arc=none smtp.client-ip=101.71.155.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1602d155c;
	Thu, 22 May 2025 14:32:33 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] rockchip: add can for RK3576 Soc
Date: Thu, 22 May 2025 14:32:29 +0800
Message-Id: <20250522063232.2197432-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQksZSFZNHxhOSkpIGRkYTUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96f6b18f1903a3kunme211611210aaa53
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NjI6SAw5KDE9FBIwHEMMEB0S
	UTEwFCNVSlVKTE9MQ0JOTk5OT0hCVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpMTU83Bg++
DKIM-Signature:a=rsa-sha256;
	b=QtY4siXE7thcVpnfPdQKg9euhrmPRsX6hzSia0TPEWB+KPk8q/T/ndhXy/soryqmHy4Sk1zE8jS7KBAsoNftOIuJ0D1KYFedhUB8H56dcwWkWSFldSZHqiNG7tttdF7m5hV85CVeiAnzZt1XTG0FVbsAPsCu94N0W3MrO9Xuh70=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=m/ybV8VaFbJ2uVaOm6miMVmNZ43aDG19ADidxapMFmA=;
	h=date:mime-version:subject:message-id:from;

rk3576 can is a new controller:
Support CAN and CANFD protocol.
Support Dma.

There are major differences from the previous rk3568. All errata on the
rk3568 have been fixed and redesigned.

Change in V3:
[PATCH v3 1/3]: Add documentation for the rk3576 CAN-FD.
[PATCH v3 2/3]: Adjust the differentiated code section and add dma function.
[PATCH v3 3/3]: Remove dma, no use dma by default.

Change in V2:
[PATCH v2 1/2]: remove rk3576_canfd.c, use the rockchip_canfd driver
[PATCH v2 2/2]: code style.

Elaine Zhang (2):
  net: can: rockchip: add can for RK3576 Soc
  arm64: dts: rockchip: rk3576: add can dts nodes

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      |  26 +
 .../net/can/rockchip/rockchip_canfd-core.c    | 640 ++++++++++++++++--
 drivers/net/can/rockchip/rockchip_canfd-rx.c  | 202 +++++-
 drivers/net/can/rockchip/rockchip_canfd-tx.c  |  29 +
 drivers/net/can/rockchip/rockchip_canfd.h     | 312 +++++++++
 5 files changed, 1161 insertions(+), 48 deletions(-)

-- 
2.34.1


