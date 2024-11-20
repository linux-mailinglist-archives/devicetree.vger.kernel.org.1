Return-Path: <devicetree+bounces-123331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2489D415F
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 18:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48F23B2749B
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 17:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5832156230;
	Wed, 20 Nov 2024 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCAmAgCF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9131A14831E
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732122656; cv=none; b=GiDCvf0felNQ0inm4EjBnEXrVRD97kM2j7XzkEHQoalule9ZA1otSjIMHfNFBtbYq0K05w1fKXgVZddpMzDteZPNGJ6Mwq7ILfxeQW/ExUawtieQcKrMBL2VaPxx0frGcEML2T/7F4S7XZEgnBzjvV0foeNNXZH20DZzjtbp/zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732122656; c=relaxed/simple;
	bh=VJdjT6ppJprT4unzbTuHlpuOe7eotljxYhNyiiIDt0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z8ck8zlLirLruG54f1orGRg3ckYS1b5mdS5Yq0MHc/Eo8JwiFHGbnBrVMerjm0GQ8dhskbMrIWdDlfeOC+hX1lPK/wGhCofMoYEu3dyA7kDjEgQ37b/+OI/EHd94jS9fG8LTPeyEgBO8p7t/lCgSLU74JD5onoFjdTCy/9Xxve4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCAmAgCF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9FF7C4CECD;
	Wed, 20 Nov 2024 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732122656;
	bh=VJdjT6ppJprT4unzbTuHlpuOe7eotljxYhNyiiIDt0Y=;
	h=From:To:Cc:Subject:Date:From;
	b=VCAmAgCFc4MqFHVUiXQOtPe3ldhIVEB2Vi3m5p6HeGLxcC/BWIaLuz/2A0b3ZPgsb
	 0G8CSJ49EPe8GodYk6rK3siKIljTgwE5Tuuis6CZm21TkPUCKTq2Azc+qzRGXnUosW
	 V0WQnpFrO3BbzIzo4+onMaVXEnZTnNccTSoyiA9smC/ZZrd6YosgZACnJy7Nw82Gk7
	 HWWgah5+Sbg+YvFflit9WKCGR8LgOBF0KnlnQAi4MwwCnfrU9oNU8//4bpC40qQJj3
	 5cWPsFQcDv66KEUQyU2vDTTbTEvyL569WX8jTDoqYtbVs3Tp8y09c6tcse5eMSsw9A
	 Lv1lGAYd+YQDw==
From: Niklas Cassel <cassel@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <cassel@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
Date: Wed, 20 Nov 2024 18:10:49 +0100
Message-ID: <20241120171048.2839621-2-cassel@kernel.org>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246; i=cassel@kernel.org; h=from:subject; bh=VJdjT6ppJprT4unzbTuHlpuOe7eotljxYhNyiiIDt0Y=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNLtJCRWz16pzvmPVeuiPsvs2Q01M49MZPxpbvzUsut2x V+JMge3jlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEwkKoThn07qattteTXf3Gti txhsmS5ZZ//N7uG81Udl1+U3RHi1KDIy3DJmZznq97ry9LaV337Kq/sUXrDVvCa+4uuX0JXnreb lMwIA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
Content-Transfer-Encoding: 8bit

Add msi-parent for the pcie3x4_ep PCI endpoint node.

The pcie3x4_ep node should use the same msi-parent as the pcie3x4 node
(which represents the PCIe controller running in Root Complex mode).

The GIC ITS can be used to trigger an IRQ on the endpoint when any of
the endpoint's PCI BARs are written to by the host[1].

[1] https://lore.kernel.org/linux-pci/20241116-ep-msi-v8-0-6f1f68ffd1bb@nxp.com/

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
Hello Heiko, this patch depends on:
https://lore.kernel.org/linux-rockchip/20241107123732.1160063-2-cassel@kernel.org/

 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 4a950907ea6f..ead151941e84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -213,6 +213,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
 		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
 				  "dma0", "dma1", "dma2", "dma3";
 		max-link-speed = <3>;
+		msi-parent = <&its1 0x0000>;
 		iommus = <&mmu600_pcie 0x0000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
-- 
2.47.0


