Return-Path: <devicetree+bounces-242788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D5C8EC7E
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DE451350327
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD4A332EB8;
	Thu, 27 Nov 2025 14:36:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42af.mail.infomaniak.ch (smtp-42af.mail.infomaniak.ch [84.16.66.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D76328B73
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764254207; cv=none; b=Eergl4fmoKZeVXVR1tY8GjruPqgwWpUWpgKOAAzqJOZQIhBwAcCcTe1CSh29EYvuzA6KclsUG8elBZtpbpDpm5YgZBB79fLjzMBQFGZoSRMRiON9yOZ5whFFcmnbFBrQYTwrzscfieAczdAl/MVgZ3xMvvYceTdXKvFeivtiU2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764254207; c=relaxed/simple;
	bh=NpcXGavA2GSLhgpRlot9CaCkAu2wEmZTZoL4rwwvBlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uQjIMB28Iom1qJgNWkdJFHGTEzOIN18zXqUkOWfPA/NregMBW8OI4ndEkXSWRVbnga8Q9njHOowDyNqbIQHxYFDhLeXKsqBocdHULVaTYzBkpPGF6PevpMnHFHpMRZe5Yo3BFLaaMh7M0rdzVowPpgvqdGXIPKYWPeaFSGey7vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6c])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dHJsH6G1Vzvnt;
	Thu, 27 Nov 2025 15:36:35 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4dHJsF74R5z6t6;
	Thu, 27 Nov 2025 15:36:33 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 27 Nov 2025 15:36:19 +0100
Subject: [PATCH] Revert "arm64: dts: rockchip: fix audio-supply for Rock Pi
 4"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-rock-pi-4-io-domain-apio5-v1-1-9cb92793f734@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQrCMBBG4auUWTvQDK2KVxEX03SqP8VMSKAUS
 u9ucPkt3juoWoFVenQHFdtQ4akhXDqKH01vY8zNJL2MIciNi8eVM3hgOM/+VSTWDB9ZrlMUXfQ
 uMlDrc7EF+//9fJ3nD1ezjDhrAAAA
X-Change-ID: 20251127-rock-pi-4-io-domain-apio5-26bc2afa8224
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 stable@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

This reverts commit 8240e87f16d17a9592c9d67857a3dcdbcb98f10d.

The original commit claimed that APIO5 IO domain (supplied with
audio-supply) is supplied by RK808-D Buck 4 as stated in the schematics.

The linked PDF has two non-schematics pages where APIO5 indeed is said
to be 1.8V. Reading the actual schematics[1][2][3][4][5][6][7][8], this
is actually wrong as APIO5 is supplied VCC_3V0 which is LDO8 from
RK808-D and is 3.0V instead of 1.8V from vcca1v8_codec.

This fixes the console disappearing in U-Boot, where the Device Tree is
imported from the Linux kernel repo, when the IO domain driver is built,
as reported by Heinrich[9]. As to why this breaks the console while the
serial is not exposed on any of the pins on the bank in the APIO5
domain, that is a well-kept secret by the SoC for now.

The issue "fixed" by the original commit will need to be fixed another
way.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1600_schematic.pdf
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf
[3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1600_schematic.pdf
[4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf
[5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf
[6] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf
[7] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf
[8] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf
[9] https://lore.kernel.org/u-boot/e7b7b905-4a6c-4342-b1a5-0ad32a5837cf@gmx.de/

Cc: stable@vger.kernel.org
Reported-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Note: I do not own any of the Rock Pi 4 variants so I cannot work on
fixing the original issue report by Alex.
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe3290178..fda7ea87e4efc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -516,7 +516,7 @@ &i2s2 {
 };
 
 &io_domains {
-	audio-supply = <&vcca1v8_codec>;
+	audio-supply = <&vcc_3v0>;
 	bt656-supply = <&vcc_3v0>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vcc_sdio>;

---
base-commit: 765e56e41a5af2d456ddda6cbd617b9d3295ab4e
change-id: 20251127-rock-pi-4-io-domain-apio5-26bc2afa8224

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


