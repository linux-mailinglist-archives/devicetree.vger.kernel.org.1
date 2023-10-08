Return-Path: <devicetree+bounces-6742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B27BCAAE
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 02:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57B011C208E8
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 00:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F4CA3B;
	Sun,  8 Oct 2023 00:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMfOs+ka"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02992368
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 00:48:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5FCDC433C7;
	Sun,  8 Oct 2023 00:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696726138;
	bh=JbND8PXmzpth3dw/DpQF++SpnRsb0twqt5mMve/H/uM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kMfOs+kaktPkUXcEcTVJgSdHi0LuzNuUwDNEzezibzxhS3OzIYz78h7QuxajA3+Vj
	 1rNs5HgEpJdcDeZ6BgNY7g65JbOD67vg0nmecGxKBYaq5sYmtAsaRTeLdcuJ/UTSLh
	 XA7dQupd/OCZoVU4H3+qxRlcxCGXS6isiq3Lab8s4pCWm+Gv/4hegMgxLCg6go61WZ
	 GlNKOU5QoC8iosONPCHjLyg3ew8TTttMQF+Gof3Sqtl7D2g3YyICbbArcVeGqf4GQJ
	 ftzEvgD8mYGhiJayC1ZvZnDmzD7oUzbLmltfYNoGt74tzUvu9EhoEg8DkKrl+CJKDy
	 MeoUkyqYXXPLA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tony Lindgren <tony@atomide.com>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Carl Philipp Klemm <philipp@uvos.xyz>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sasha Levin <sashal@kernel.org>,
	bcousson@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 6.5 02/18] ARM: dts: ti: omap: Fix noisy serial with overrun-throttle-ms for mapphone
Date: Sat,  7 Oct 2023 20:48:36 -0400
Message-Id: <20231008004853.3767621-2-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231008004853.3767621-1-sashal@kernel.org>
References: <20231008004853.3767621-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.5.6
Content-Transfer-Encoding: 8bit

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 5ad37b5e30433afa7a5513e3eb61f69fa0976785 ]

On mapphone devices we may get lots of noise on the micro-USB port in debug
uart mode until the phy-cpcap-usb driver probes. Let's limit the noise by
using overrun-throttle-ms.

Note that there is also a related separate issue where the charger cable
connected may cause random sysrq requests until phy-cpcap-usb probes that
still remains.

Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>
Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi b/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
index 091ba310053eb..d35b3cc95dfa2 100644
--- a/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/motorola-mapphone-common.dtsi
@@ -640,6 +640,7 @@ &uart1 {
 &uart3 {
 	interrupts-extended = <&wakeupgen GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH
 			       &omap4_pmx_core 0x17c>;
+	overrun-throttle-ms = <500>;
 };
 
 &uart4 {
-- 
2.40.1


