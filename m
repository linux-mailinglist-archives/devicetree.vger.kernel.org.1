Return-Path: <devicetree+bounces-251255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D7ECF08D6
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 03:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A85153013EEB
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 02:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65B5E29C339;
	Sun,  4 Jan 2026 02:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="b3HvH97f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7DF1DFF7;
	Sun,  4 Jan 2026 02:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767494320; cv=none; b=PVo7bykpv69rnAJzS3MhmpCJJoe7SKAtxDyFfW8eN87IJAC0HhaNqLjOOVqC/WMWxxTVKv19JzGm4QOA4aU7qGJQNQGToUOo6p2rTdmf8VpyYemdm02FHTka5/Wuo/Mq+mBVH44VQAq0wytL0mRep77BMi7BBlLFYSyT4c3qay8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767494320; c=relaxed/simple;
	bh=vHizrd3jNxLMVgD8F88hXh5FI0u/IO9YzqhoNgOlo6o=;
	h=From:To:Cc:Subject:Date:Message-Id; b=vFUmpO30AsCMIIaP94STek7A3SmSHEYZFGdEJWFJjiK5G2n6LzoOOk5tMRHfxI+C6dEeYliDeUVRJZ6+gHE9U30+/l44DEu1+qU3Kr8Q515ZISFny14PxkzCrAd0ehftm55dhzxwET0U7J3TBY2R1A5bDxK13+Kxy6gQw5wD9ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=b3HvH97f; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767494238;
	bh=y/k9MsuSNbweF0g4tN+QXLsS5KGlTItZo2xUIwWpYCY=;
	h=From:To:Subject:Date:Message-Id;
	b=b3HvH97f8XaBBKZeKsmLCndtu4l8IRnOn6vFTgJ52AjxMRrKDwhzXjAR6F+zj8b0+
	 +YpfRy+BZ3iUihlZ6d3lSo6WmytPQNzP1TzQJ++THwQ9RUOH9S+Q8qznq2e+2ABvXE
	 9nQUABXJqcZyvQct6dLWxA/P72Fj6jceSROR2y5E=
X-QQ-mid: zesmtpsz2t1767494230t5d583093
X-QQ-Originating-IP: 9UpFS0FDHhr7aE4H1iWq2hxD7exHLmk+JfcEu07uhxo=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 04 Jan 2026 10:37:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16655950832647765738
EX-QQ-RecipientCnt: 22
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Sun,  4 Jan 2026 10:37:01 +0800
Message-Id: <20260104023703.118-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NuC9jha5hp0iacXbxXGz0i3+bouJlW+d+yrOdqbPCuyQQbEjmhjQ9I3t
	yZq1ITXuleg3mjHwp4VkA9jcl8h9jSIdzK68KjiwthMmTDTGwkThh1+pHlkDrsZWUEsJa3I
	n65JLdd/ZnVrB2SkGI/mSPsh925ylFvdaSOi1SazKdiEaczNJEY1LhqQ8Us9sPxhXzE65bT
	EyGM13j23IPA0nqUrK9Ys1GE5jmf17wi7ya3k1K9ohiJFivbQjmCDonIirNt05uIv3ozgAV
	LaE6fcKKDvxplYDBhQ2wYH6FauXS6kyoDEhZoktzfwGu2WYVXpx4BDkYhMnukVO3sCyF7O9
	A2dNf5M+T5heYunm4ot78qX9nRofH1VS4MPF2nFCmawF3Mv98fCcVPbO8iqwm0JE/Xygsfk
	SvMxr0v2zpcbmA3rtCwnIRfA72n21nCIMPx6PQ7ky97y9hkNh/A7ceIA1GsjtVhybgW91Q3
	xR2TtO8a0NmS6xOnf8KG3QOiWxaFAsNwZbY2NChNquRQdDB54dOBpAVL9njgCRqWGGTkaKx
	1mVu/wCvH1Oma7Vo6wma9/ENt7kgS321dZQgyTRw6yNzil/jnrtgpUi+SYsSQZFtpP/+Tiv
	jwPlXT6crrqynfJ3s/8UPRJEuwo6Sdb4XDQa7yngA9kz2AoppHsw1VoQyHDU74c1OoB4WwF
	mI7ReVjfm2MtO2PrNhoDGg7PwSfrLN+A4+0xZ3rJc/IwaQmu//6UEUKBnjy3oeWfQ91D16p
	Nk3R/c0uyS6R+yuDHiq+O+oL0JNHyUUVeWaMSSdDK3J4vUkNhKcfLEtiJ0v0GAZ+H/PdsQP
	YQWEAKYhDNMGlXo/oeGga3CUb/jVloMFI2NZQ6sn8MOwj8VEIN/Hq22V6zm4Zu0diEJm+9p
	JPD/nYXkcyKhDvexg519l2SGca4Pu1zy6wxva1hfzZLPSWJJvbBU+v8JciIg5CTgEY5M57n
	ogDyMwIukqS6ifeR3X4IJhiZrTBudve/8xcKSYNgGWg7rcAaLuXY4heXzAyTvXyHu96A=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

This series add support for rk3576 evb2 board.

General features for rk3576 evb2 board:
    - Rockchip RK3576
    - LPDDR4/4X
    - eMMC5.1
    - RK806-2x2pcs + DiscretePower
    - 1x HDMI2.1 TX / HDMI2.0 RX
    - 1x full size DP1.4 TX (Only 2 Lanes)
    - 2x 10/100/1000M Ethernet
    - 5x SATA3.0 7Pin Slot
    - 2x USB3.2 Gen1 Host
    - 3x USB2.0 Host
    - WIFI/BT
    - ...

Chaoyi Chen (2):
  dt-bindings: arm: rockchip: Add rk3576 evb2 board
  arm64: dts: rockchip: Add rk3576 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 941 ++++++++++++++++++
 3 files changed, 945 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

-- 
2.51.1


