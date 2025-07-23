Return-Path: <devicetree+bounces-199037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B70B0F21F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38E6D7B5329
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3583F2E610E;
	Wed, 23 Jul 2025 12:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="YriExT2+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A92277CB8
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273425; cv=none; b=JpP/LKSLFAeln7FuvDfue+YbvKlYHXIuZno6bvTY/dg54wMZSuBymDLwPIzMDlRnOmzCbxiD3Gogp2+DGDdU+4Pc/4KpFQ3U9PNN7azvl/u5fHCRCpbUjdko/m8qzX+YwWjXhtyhAic8nV91ZlL0+7Lw7hs+Elg8759v0dlk1k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273425; c=relaxed/simple;
	bh=vx5ekv+16HD36NZ6+QhcBmnwDntHWwhPxsKKLvKLb4Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kjuX5p6yKGp6S2rx85rWnyqCGqSPHZ24BBdrn/W8Mck0TDPILvi3BDRX4S5fSM3BF8gWeUSIi8xl4pVfu/D5cD1HjN0QF5RN6TGbGfXNye78e5xvWrbdz5s/QiJx95s3Tejs6610QxgOYcEzqcZklvnNKXX+R9f2bOZaSR62YSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=YriExT2+; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1753273421;
 bh=S3oLltbznTlbaAbBKI9c992XjzDx7TeK4WIwFzqJJ7g=;
 b=YriExT2+HwiKdXT4dyiSTbTo8+/uzwkKmofDnvkDJjf0m/w6QiJ1zkdtU2Urgpqu5KXPwOFO1
 zhzJHM5LwzGbVtbpy0bIC1cc2ZZpihFTW+EKuPHBYcrwX6UJBME97e6TVhXedZboISCsRJUvlPY
 VGjARN7MCqcxqYYMgQQyf1P24iI9t5AF+PBMkdA+4+bH+FExrN7BCeq4FXFdkM3UDa6pI45ZS72
 CsVGsHT6dWm4PzLC0M8V+wlWXe/Mme01GUygFr/opzmSry9Y0y0Itb3poCMxo8/ITpe6iUtoqOK
 fp5Asxacl9TEtmMOr5pWUMo6Ex+Lr9JWZye/Aaq8+Akw==
X-Forward-Email-ID: 6880d441cb0ee86f9731a046
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 00/11] rockchip: Add USB 2.0 support for RK3528
Date: Wed, 23 Jul 2025 12:22:58 +0000
Message-ID: <20250723122323.2344916-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for USB 2.0 on Rockchip RK3528. It also enables
use of USB 2.0 ports on current supported and pending RK3528 boards.

Only Radxa ROCK 2A of current pending boards has a USB 3.0 port, and for
that to work the series "Support RK3528 variant of Rockchip
naneng-combphy" [1] is also required.

Patch 1-2 tries to clean up and simplify use of usbgrf.

Patch 3-6 add support for the RK3528 variant of USB2PHY.

Patch 7-11 enables use of USB 2.0 ports in device tree files.

This series may need the series "rockchip: Add power controller support
for RK3528" [2] and "arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and
NanoPi Zero2" [3] for a clean apply.

A branch with all these (and some more) patches can be found at [4].

[1] https://lore.kernel.org/r/20250624033733.50197-1-ziyao@disroot.org
[2] https://lore.kernel.org/r/20250723085654.2273324-1-jonas@kwiboo.se
[3] https://lore.kernel.org/r/20250717103720.2853031-1-jonas@kwiboo.se
[4] https://github.com/Kwiboo/linux-rockchip/commits/next-20250722-rk3528/

Jianwei Zheng (1):
  phy: rockchip: inno-usb2: Add support for RK3528

Jonas Karlman (10):
  dt-bindings: phy: rockchip,inno-usb2phy: Require GRF for RK3568/RV1108
  phy: rockchip: inno-usb2: Simplify rockchip,usbgrf handling
  dt-bindings: phy: rockchip,inno-usb2phy: Add compatible for RK3528
  phy: rockchip: inno-usb2: Add clkout_ctl_phy support
  dt-bindings: usb: dwc3: Add compatible for RK3528
  arm64: dts: rockchip: Add USB nodes for RK3528
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa ROCK 2A/2F
  arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
  arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  44 ++++-
 .../bindings/usb/rockchip,dwc3.yaml           |   3 +
 .../boot/dts/rockchip/rk3528-armsom-sige1.dts |  24 +++
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts |  29 +++
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  47 +++++
 .../boot/dts/rockchip/rk3528-rock-2.dtsi      |  13 ++
 .../boot/dts/rockchip/rk3528-rock-2f.dts      |  12 ++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  76 ++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 181 ++++++++++++------
 9 files changed, 370 insertions(+), 59 deletions(-)

-- 
2.50.1


