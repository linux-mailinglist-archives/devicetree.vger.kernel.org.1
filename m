Return-Path: <devicetree+bounces-252197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26153CFC46C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40DAA3054B14
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC06A26560D;
	Wed,  7 Jan 2026 07:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="j9HL/Vjo"
X-Original-To: devicetree@vger.kernel.org
Received: from bg5.exmail.qq.com (bg5.exmail.qq.com [43.154.197.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA92690D5;
	Wed,  7 Jan 2026 07:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.154.197.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767769497; cv=none; b=b7ZmFk6v5RVxq6OheWoD9j+8tay8Sv1h0mOaT1sXGdjYvOsCFWdpEJ+iQ7mO7nLQHSFZq21lMLh3IHO9GwZ77kz2cSVeoobP+8Bsv8LucBBENUJVfOMUJgi3ofKYakLwJ/Lclh6nkLsQqmOVzMBHtEuCxqkguNIGMtZjW6HevIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767769497; c=relaxed/simple;
	bh=KdOGg7u0DD2zembTDgDnw0at7ML+RxJk9sid6T5MfOA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=LShlDrSnoO46GI8vIIGigpkVLPGZLxYFkY7rhYM028OH18SD03c2IDxkKuVRwoHOIWyuJ7AXcrUttXOFcTKD+8vgO9J1rTNtefeBYAFBubrj+ayLB29pcHv3Or3BGAh2pvMmcZsYTU5+Rg3wB8in7sCCQNKvBQpt/8ZJMpH3ZTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=j9HL/Vjo; arc=none smtp.client-ip=43.154.197.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1767769416;
	bh=nuKYj0Y1wUuUMoOaJ5Zpda3+a6WcEYKPz2uufgZ8dNM=;
	h=From:To:Subject:Date:Message-Id;
	b=j9HL/VjoUj1mXYP+4FNGnQ6+dj3eo8U8KcPV0KqK7hbEPBiOohLxjv5jETCdBI2go
	 wvv+8oytcCACiZ6oN6vfxg4XnvnrsRxIF9LznHAUOLEybgK8cwDCnQ4b5yfPOBKsfy
	 kNMdoN1YxIVc+cQZplEPcA0VMAoQMJQGewjkRod8=
X-QQ-mid: zesmtpsz4t1767769409tae6e7355
X-QQ-Originating-IP: oRYRdMTC6Kb1CbKXxp7jJ8XO4tRaEvz24K2T1J6H2Tg=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 07 Jan 2026 15:03:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1533395504835066326
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
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed,  7 Jan 2026 15:03:20 +0800
Message-Id: <20260107070322.323-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NFxyVI7Mb0/F3uMhF03SIqCSYPlyME6Smbp7Yj71Y+Q3s/Se14BSq/T8
	CBmYFHnnozx766WE9Lwumpy2TlnEFDODUrf/MCuSGH1BKa2SUAWz4v605IVYpkK/VWCcF6t
	rSowTFB7o4bxkPNPH9R9wH3Vkw2Uc1SMDPswmwxenoE0GFtCZM6hBrqSG8J3djavPtYEdyX
	SvZJJAb5UWD7J6oIrDnid7qBtqScPIpMlLK3S9gOGCmtHb5pV/g5NwOPqRcVZhIvPtYCwoi
	eOqKDM0EzGFJpiM51d1c5ifyxiYmotY9CA1SnKCgs/uc2V/aKrFI/mPkGZ/A+OOqDfAj+Vz
	GLbqRLkTIG/wcXbfIL/puekAL9eaXM/uOxrqCosGZMErG12jr28IF12FXjCJe+40K7GLq3f
	APQu1WNeqd5FeDYNcleKeiU7q5TonHhsFHmZDgiXZtgnct5nazxGWKi+1o6dUnHeVWlLUdT
	uel7tvudfo/ze9+5md3j+8y71gMFlcDLM7f6eLHatlTyhwdmTYUf1GJqmNGXRegFyceRA+t
	cgGTh+1celMHCanfbzbcnKvac8khEeknOddqb9WmpTM0r3JSrFiovcOx5CruD8G5FmgE+2g
	+6g071hY6YUcCurqLuqzVQZJCk+00VvVs+D+L5z0nKmF+OvkdVXKjZTE68RqaJPS9tvtTRJ
	Cl1WuQCrxAoBp4F15ys2VZbYUUawLmo+whaOhr18X7u7TsffmSqs96msGjaVnzDeGmBBCIf
	S93DELYUwU+/UBpW5QUpfeuDTHusIZqQxscHHggxH8DIkJj36+4Jy5DQTm3DU+OVGt6vDO9
	zZ94A2PUb9D0zBETC+mlYuBd3jOfsVOo02W/18vmbmGIBmjKJ1JV2mElF8QYhQoY93o3D1x
	Y3OJwfVYVnrKDxTvKU4kmt1AWajdwSC/vsL5nrUvOr4/kbSNI1hPSS3dFr5wJETzMEARlZO
	rKn9/I/pD6UyhF7ImumHEJm707q2KM2X6OfkK5yr0pr6NPtXvQCPcfdRT6eyM0n7EhW0X/5
	3GWPIe3f2nGONZIaVFwT5FF9cdVPQ=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
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

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20260104023703.118-1-kernel@airkyi.com/
- Enable hdmi_sound and sai6.
- Add more cpu-supply.
- Use regulator to control sata power.
- Remove "cap-mmc-highspeed" prop in sdmmc.
- Add regulator supply for ufshc.
- Add the missing vcc3v3_hubreset regulator.
- Add otg capability for usb_drd0_dwc3.

Chaoyi Chen (2):
  dt-bindings: arm: rockchip: Add rk3576 evb2 board
  arm64: dts: rockchip: Add rk3576 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 997 ++++++++++++++++++
 3 files changed, 1001 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

-- 
2.51.1


