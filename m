Return-Path: <devicetree+bounces-6743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 162EE7BCAB0
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 02:49:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59A0F281CE2
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 00:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75B610FA;
	Sun,  8 Oct 2023 00:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uyd+3NBU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A04510E9
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 00:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 018E4C433C9;
	Sun,  8 Oct 2023 00:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696726140;
	bh=SUmtHRxizvYpZ+OdGdpOdYvkpMrA9yBGKptqULjxc+w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uyd+3NBUBvea5+mAFMT4VJglktv8zLPN2p0Az2VGX818nmJFUYM4ByHFIQ9umODoz
	 uiiYUb1t4n9fDSES/dS1Va3BcKGvsGiM/kBIkBivwe5hNuEEFfaAe/N8spKGTxYj/C
	 uCA2DoUU9xQN0RneZbou3tJ9BqO2Ux9iinS8/VlibUPl7yqwNHeIjbTqHaliFQL7cQ
	 SuppTxkyOeit7YvHl7fdbOyoEgHKPbvpb9t/sw5N3WXCwdwAPhWC0fTmG7VqUsl+XF
	 CYYt+DilObS+pBrkX2eZoPmpVzaO4ipADB2JjfH+A0/XOw/QP9L1NfFCMreL+fgjNr
	 Wg9yTgbUMambQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH AUTOSEL 6.5 03/18] arm64: dts: mediatek: Fix "mediatek,merge-mute" and "mediatek,merge-fifo-en" types
Date: Sat,  7 Oct 2023 20:48:37 -0400
Message-Id: <20231008004853.3767621-3-sashal@kernel.org>
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

From: Rob Herring <robh@kernel.org>

[ Upstream commit 5f8456b1faefb06fcf6028dced9f37aa880c779d ]

"mediatek,merge-mute" and "mediatek,merge-fifo-en" properties are defined
and used as boolean properties which in DT have no value.

Signed-off-by: Rob Herring <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Link: https://lore.kernel.org/r/20230830195650.704737-1-robh@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 4dbbf8fdab758..a9e52b50c8c48 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -2957,7 +2957,7 @@ merge1: vpp-merge@1c10c000 {
 			clock-names = "merge","merge_async";
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xc000 0x1000>;
-			mediatek,merge-mute = <1>;
+			mediatek,merge-mute;
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE0_DL_ASYNC>;
 		};
 
@@ -2970,7 +2970,7 @@ merge2: vpp-merge@1c10d000 {
 			clock-names = "merge","merge_async";
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xd000 0x1000>;
-			mediatek,merge-mute = <1>;
+			mediatek,merge-mute;
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE1_DL_ASYNC>;
 		};
 
@@ -2983,7 +2983,7 @@ merge3: vpp-merge@1c10e000 {
 			clock-names = "merge","merge_async";
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xe000 0x1000>;
-			mediatek,merge-mute = <1>;
+			mediatek,merge-mute;
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE2_DL_ASYNC>;
 		};
 
@@ -2996,7 +2996,7 @@ merge4: vpp-merge@1c10f000 {
 			clock-names = "merge","merge_async";
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0xf000 0x1000>;
-			mediatek,merge-mute = <1>;
+			mediatek,merge-mute;
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE3_DL_ASYNC>;
 		};
 
@@ -3009,7 +3009,7 @@ merge5: vpp-merge@1c110000 {
 			clock-names = "merge","merge_async";
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0x0000 0x1000>;
-			mediatek,merge-fifo-en = <1>;
+			mediatek,merge-fifo-en;
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE4_DL_ASYNC>;
 		};
 
-- 
2.40.1


