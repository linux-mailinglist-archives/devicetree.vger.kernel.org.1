Return-Path: <devicetree+bounces-137734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5758EA0A7E7
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 10:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EAE63A8793
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE55C1898F2;
	Sun, 12 Jan 2025 09:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="bMaivOT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m21473.qiye.163.com (mail-m21473.qiye.163.com [117.135.214.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B17B8BE8;
	Sun, 12 Jan 2025 09:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.214.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736673171; cv=none; b=r97rcqN8+Wo6KyRe1OVhUY1v7acrk2hpm+R4tcbs3NIE99+N6tRkG3ics/ZhZRN0RNFSH/XsUPTqfBSOn1G+Ku+70KWex/3MJRFvLoUw9Ary0+tOU3zPh+w2ww1T7WQppXiCFR7EeaBEL2Fw3OtKmrb9uplBdwAKZAMthLFoWgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736673171; c=relaxed/simple;
	bh=sNPYPg03NDb/dgWYVkNZpyJtayOlj6QBgLMD+v9znH8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=snycjLhGIzZO85eM9oOOJrvuy2Qw4H6GmwnwBUiWZBCj+bHkYVoO1zV629M+qAY1XZV5Ofqjgazhln1jgJw/H7HE9hSsqdYIl1QolbIKFRZkH9Go4gVeQzVOhuJdY3unfiwY92QrU3SDyJaM/19muTzRVz5emCe1RTqg9GUZd38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=bMaivOT0; arc=none smtp.client-ip=117.135.214.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8700928a;
	Sun, 12 Jan 2025 17:07:30 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v1 0/6] Add eDP mode support for Rockchip Samsung HDPTX PHY
Date: Sun, 12 Jan 2025 17:07:08 +0800
Message-Id: <20250112090714.1564158-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9MQlYeSRhISkJJTk4fQ0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a9459c4b35803a3kunm8700928a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgg6Qgw6SDIPIQMTPRg*IQlJ
	PAgwClZVSlVKTEhNTUxJQ05JSE5OVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKQkhJNwY+
DKIM-Signature:a=rsa-sha256;
	b=bMaivOT0Wh9/4kvva65NbKLlK+dnEW8dzXphtaWe8kUcRcDwDGosE+4djEO4nNYlVdSqjoLsagUXRvlC4ZbgbWmQnEvMRZcVo0AFm7UAV6/Ez1MxxG/Devt10QN+1HnMUg/fqEFE6Ovd1L9aBEhzmrI4zDDIzNK8r+AB1hFiVjw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=TejvzfV3E3bwIKDx62w3f3JYivHUtIsr/IuSQftkJIs=;
	h=date:mime-version:subject:message-id:from;

Picked from:
https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board.

Damon Ding (6):
  phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
    ROPLL_REF
  phy: phy-rockchip-samsung-hdptx: Supplement some register names with
    their full version
  phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
    registers
  phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
  dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
    HDMI TX Controller
  arm64: dts: rockchip: Fix label name of hdptxphy for RK3588

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   4 +-
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
 .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
 19 files changed, 934 insertions(+), 75 deletions(-)

-- 
2.34.1


