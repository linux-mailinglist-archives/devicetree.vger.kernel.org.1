Return-Path: <devicetree+bounces-12882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDE07DBAA6
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D84CD1F21F89
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F419168A8;
	Mon, 30 Oct 2023 13:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D6EovCpt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1876A14F95
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:25:30 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4DB98E;
	Mon, 30 Oct 2023 06:25:29 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D8CD4660297B;
	Mon, 30 Oct 2023 13:25:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698672328;
	bh=4eqeiWumk4iSfUH1LnoCuerSUI7m7wgrGgGcR0jKt20=;
	h=From:To:Cc:Subject:Date:From;
	b=D6EovCptxO0ZxALbuNpnoq/13GJgRkqwpxgY1tqF99+c3Qnj7nIkTOP+QIiv7pD0t
	 4fDwG08rEhEJR6D71qtxH+M6nmNJvAtM/E22zOWd8lw4ZZz+fXgjOqee58z3woKI2n
	 UbQD1ZHF3OS287on70DQp2TfzNBbNAhmmdaM12nCgkNMp4LnayH5XXqxrm5UYd5YSP
	 8KBrgXvkbsWrzNpFEHQKZCGkiuMisVhcIl1T9bnp+PKnFQ47tOXGGN2XUXZc/g+P8l
	 4rNYb3/WCXBHkB9MV230pIx0/4ibr29eBHxrKm9Rt4/LPxnr3X9qqzvZ7Oz8t0JbFT
	 eHh9awnUnUCtQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	wenst@chromium.org,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 0/2] MT8195 Cherry: Assign MFG vregs for power saving
Date: Mon, 30 Oct 2023 14:25:21 +0100
Message-ID: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series assigns the right regulators to MFG0 and MFG1, respectively
VGPU (GPU Core) and VSRAM_OTHERS (GPU SRAM), and removes the property
regulator-always-on from both.

This allows to save power both during runtime suspend and during system
sleep; specifically because:
 1. The GPU SRAM regulator is switched off during runtime suspend
 2. The GPU Core regulator is switched off during system sleep

Of course, in order for those power saving actions to actually take
place, it is required to also have the code in [1].
Anyway, even without series [1], this will not introduce any unstability
as the Vgpu regulator will simply not ever get turned off.

[1]: https://lore.kernel.org/r/20231030132257.85379-1-angelogioacchino.delregno@collabora.com

AngeloGioacchino Del Regno (2):
  arm64: dts: mediatek: mt8195-cherry: Add MFG0 domain supply
  arm64: dts: mediatek: mt8195-cherry: Assign sram supply to MFG1 pd

 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 10 ++++++++--
 arch/arm64/boot/dts/mediatek/mt8195.dtsi        |  2 +-
 2 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.42.0


