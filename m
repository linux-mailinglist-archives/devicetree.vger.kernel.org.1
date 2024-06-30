Return-Path: <devicetree+bounces-81667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D0C91D000
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 05:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE5D11C20AEE
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 03:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CEC29CFB;
	Sun, 30 Jun 2024 03:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Eo13JKLi"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DA028366
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 03:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719719369; cv=none; b=RjNt+URG+KfROGLuLs135wBd5C7RK2sgCkVTeDSH3+BqA6CCrFBw2F+TZuNzKa1fg/Ebb/VhWCHTYVOI4vPbGnueVQrfY38sBCGv43hvtnO77z1TVd+/PfhrQ9Vb1+ZP4y0+0ECwpYKGPJscxm7qj7frR/jRrv+RPdPWYv9T+zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719719369; c=relaxed/simple;
	bh=p7GPG2YIJnjnjnhC3zOYjw16BnVeJeYXYk71YeVQtcA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qe4zAuUrG38V5DtXHr3p/1CmH/85K+FAKbTUCT9/R4CBi1F5aRJcz+NM8fMn9/p/iAfMSMYVpl1P+qkEEGap5minFmgfLvumNXV7I1g92LC9KmqZkqVuh71e9MB3WeHR+YYk8i1Qidw0pKwKeRVfCMkfOa3xTb47VHbCQbkg7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=Eo13JKLi; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9D71288607;
	Sun, 30 Jun 2024 05:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719719366;
	bh=sox0OS7FZioC4+n0SLeead3ox1zf2+QKbhfJa7552f4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Eo13JKLiGyOpSyQyQ1MOOJ6o0/0IkOjPkda0K+UkDs9VYJTljazHOV/dBKm0yP4jt
	 gEOG3VAV/iUuWjo98110uona1VmljF4dlyf2pFD3uGJx/PiDlXB+PooSl+Z8Kl3z8j
	 +tfStL6WJDIdixhSVTtOeiOFs6WDFsEjlWZ0JlVeVZprpW9ZutS2Sd40S5QX6ESrIQ
	 xCsCy1dcmRFbAIifBrD4JPs61Vz17km6X8xiVCDdFoDA2L9/rLSmpG/hP/m5qS51+V
	 Ib4+VhtW1t8E7CrJ/6cu+aKLAneqgvcCLatvYKSVfYVIB5uBnfhvYhqyLcK4fLsuBm
	 +wzUAEgUAB2UQ==
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards
Date: Sun, 30 Jun 2024 05:48:42 +0200
Message-ID: <20240630034910.173552-2-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240630034910.173552-1-marex@denx.de>
References: <20240630034910.173552-1-marex@denx.de>
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
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts    | 6 ++----
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 3 +--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index 230e630820b47..c2a08bdf09e83 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -261,8 +261,7 @@ &i2s0_sdi0
 &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_0_rst>;
@@ -275,8 +274,7 @@ rgmii_phy0: ethernet-phy@1 {
 &mdio1 {
 	rgmii_phy1: ethernet-phy@2 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_1_rst>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 77bcf0f6b028a..dbaa94ca69f47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -198,8 +198,7 @@ hym8563: rtc@51 {
 &mdio1 {
 	rgmii_phy: ethernet-phy@1 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_rst>;
-- 
2.43.0


