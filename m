Return-Path: <devicetree+bounces-106584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 654CB98AEC7
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1992D1F22968
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C53199E9F;
	Mon, 30 Sep 2024 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="yoHS7S6I"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B424613F43A
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730083; cv=none; b=EWSK4xDv+djZu0TgOFCiM2XiAUoa8IM8WQ3tkM4ktqNeYuQxvMlp9gyvn0dBhul9AmSI8MVes4J0edJzQgMwZ7DfF512ZlPS0ASl8ICBZ7op+wNTXHlBucacemmwPz62aQ0tDKPdT+WxUe1Ji0UIJjlLXqWTW2GF+KiRWnTLWVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730083; c=relaxed/simple;
	bh=o/WiIQL3AkqTrJapuWLrB3dZORg/eJA9vE7g2CUlVTY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JwnTedQips4Z3qm1v9vetuocu22U47yY4x6nDUcUVFl2x+HQ+utDpeyJwdzruTEddTV3wajgw/86RgZG+6Bp8Q8K+Dh4U3UpPBYkVDm0IiJr6psSmk9ubndd6DTgv1ih0cOG5stfGgDx1s/UqCuBJQNDgoQOepYyhMJeZsCCiX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=yoHS7S6I; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QMJP2jh4ERwAUjnirFF+xztb/7OvBG8WxNmUQyElJXM=; b=yoHS7S6ImQ/jZLtrj4fROduHd8
	s61nr1M5gUdDI2n48p5bRf/9Ouv9nYXjGsMt5qVXejtuh1hvo4dclU3bkZKwl+jEFCyhZqPSoxstc
	vvLH2aYG6CZTnMgk6sRi8QQzXIIXUUN+YtYh6jCLSUcbB2w5BZhRg15Cp/5smiF4K4jXTF7+cIoEx
	MVJ4jV07JVPm8li72PyXIquaheUhM23JoZe1mn+0iRyWahP/JwHtfyHO9FKoLIvdd6510/n1nBpQG
	l2KBVB7rWbI/T2PYi1CRj5UFt+h4+NOBy1Qr6L+rRDgYJQfgLm+GLnHlRH8KKUdRcbSl0SLbdkMQ/
	3CFqYdjg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWB-00087h-J1; Mon, 30 Sep 2024 23:01:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/8] Fixing some dtbscheck warnings
Date: Mon, 30 Sep 2024 23:01:04 +0200
Message-ID: <20240930210112.1993625-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixing dtbs-check warnings should be declared addictive, one starts
with one warning, then another one and then it's oh, I'll just fix
this "last" one over and over ;-)

We still have more, if others want to play too :-D .


Heiko Stuebner (8):
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353p
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353v
  arm64: dts: rockchip: Drop regulator-init-microvolt from rk3568-roc-pc
  arm64: dts: rockchip: Drop regulator-init-microvolt from
    rk3588-toybrick-x0
  arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
  arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
  arm64: dts: rockchip: Remove undocumented emmc property from
    PX30-Ringneck
  arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma
    boards

 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi         | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts        | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts          | 3 ---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts     | 1 -
 9 files changed, 6 insertions(+), 14 deletions(-)

-- 
2.43.0


