Return-Path: <devicetree+bounces-81666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A2E91CFFF
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 05:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F5311C2090D
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 03:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CBF29413;
	Sun, 30 Jun 2024 03:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="IQDVBWOO"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D324A15
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 03:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719719368; cv=none; b=qUSBlV9pWKaOzMr3mDf3HP+tPFVxcCSnbHueMRPiUW6ClFyRZVAeBpi9Y4lz+L88vIN8OKXo7MloG1fMsem+7yCmP3p/kZRvudovUXGBRDGcxtIo4vMNYUbEQuVVmj9actTDindghvOOGCPvtVRftMYgCqmiDUCBtdc8Nm9VpiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719719368; c=relaxed/simple;
	bh=VVzo9dCHGhJd0pDjORCNKhpgn6hBrs5qR5DN6vu4xQI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NgUN6lABZaAwAkmdSWFfx2DBMW1lGXNAeUW/8PC4aM2nHqwIgtcutMULBWhkfe1qUJWI4zj2+HfvdYMYzptDObOaBruu2j7issHd6mA4XGX1TxecKQq6cdy6D8KbADRagaH5gi+TfH2OqInSZRsCM4iu8Stru1mu4nC81QS/K5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=IQDVBWOO; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0018688605;
	Sun, 30 Jun 2024 05:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719719365;
	bh=9ZFUecfJvnzkWEaRT2YFkSf/lrEu/HTQaebj0pMq5Xo=;
	h=From:To:Cc:Subject:Date:From;
	b=IQDVBWOOyxeH1wk4cTy0ZhsDpx7uvu5zAgTv7ZoBXrtvYBKDmcJg1KpZam2GBmILk
	 ApTpUuJz4UOuDs3MuNMgq4euhzn4lljdfL2PdXjLklNSSbKaH8ZVmX1F/G5Y7KXJYH
	 CPIPGB+qovoZSIDnf6fxTynxD/2MiPz2UIKKZ73hucg+0B/9uAeRbcuUtQpR9gU6w2
	 Pba6qhGxtSU+Y9/Vmc14Y5PYuewV7PmB7EVjbR/m4/6UURJQs4uZBsvJG0pBDVcLgT
	 sA0bf06e35rjBF6PPOv0F6A0aSK7LTgQMg95LbMbTQfqb4Ss7fsJupPCj4MP5Stent
	 3MWTUu3OZt5Fw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: andrew@lunn.ch,
	kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	kernel test robot <lkp@intel.com>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
Date: Sun, 30 Jun 2024 05:48:41 +0200
Message-ID: <20240630034910.173552-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
as the fallback compatible string. There are fewer users of the
Realtek PHY compatible string with fallback compatible string than
there are users without fallback compatible string, so drop the
fallback compatible string from the few remaining users:

$ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
      1 ethernet-phy-id001c.c816",
      2 ethernet-phy-id001c.c915",
      2 ethernet-phy-id001c.c915";
      5 ethernet-phy-id001c.c916",
     13 ethernet-phy-id001c.c916";

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexey Charkov <alchark@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Edwards <cfsworks@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
Note: this closes only part of the report
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 0c2396b8f8db6..7707d1b01440b 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -69,8 +69,7 @@ &gmac {
 
 &mdio {
 	phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&eth_phy_rst>;
-- 
2.43.0


