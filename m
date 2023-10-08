Return-Path: <devicetree+bounces-6748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5737BCAF2
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 02:50:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B30FF281BF0
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 00:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED6A368;
	Sun,  8 Oct 2023 00:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8f40SQn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3111A3B
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 00:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F6A0C116A9;
	Sun,  8 Oct 2023 00:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696726242;
	bh=2oiP+jbiEyfCDtBMYSYy90IWlt5aHLJ3QI9nrcarfeg=;
	h=From:To:Cc:Subject:Date:From;
	b=j8f40SQn6i+bKGaNUe3EYYDIojNZcpetl1ZhmCLWzoZhTdutuQgJbM1dd0IGOlTV+
	 uCp4mqS32QiLnVbDkoGuFulPyE7TwFvBl2kPUp2zT42Z4CUijZwf+IZFmgsfVZxkOr
	 I6yG6YBFNPgM2iz++m0FtDaaJN25rYPoZkSmpC/EZxq4NFdksEbAvKoiJaUY9I+Tsx
	 DIIui0Ey+quFzWrCF3AlUHVpnzGCYjMjAIdSSzFPVtZhuW0bumVn3lXHLJCWpKuC34
	 q8Jk59L75kVi1+dHjHCaSH+yiBZeUgrHamyq49ISdGksr94F4crcgCX2g2mp3xgRoL
	 fQWTuY9AIVDcg==
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
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 1/8] ARM: dts: ti: omap: Fix noisy serial with overrun-throttle-ms for mapphone
Date: Sat,  7 Oct 2023 20:50:31 -0400
Message-Id: <20231008005039.3768522-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.295
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
 arch/arm/boot/dts/omap4-droid4-xt894.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/omap4-droid4-xt894.dts b/arch/arm/boot/dts/omap4-droid4-xt894.dts
index 67d77eee9433c..39e3325fe8c08 100644
--- a/arch/arm/boot/dts/omap4-droid4-xt894.dts
+++ b/arch/arm/boot/dts/omap4-droid4-xt894.dts
@@ -669,6 +669,7 @@ &uart1 {
 &uart3 {
 	interrupts-extended = <&wakeupgen GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH
 			       &omap4_pmx_core 0x17c>;
+	overrun-throttle-ms = <500>;
 };
 
 &uart4 {
-- 
2.40.1


