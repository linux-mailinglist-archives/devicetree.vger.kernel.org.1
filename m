Return-Path: <devicetree+bounces-249247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C00CDA276
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D26F83018ED5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A01A3346BC;
	Tue, 23 Dec 2025 17:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTamgbyD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A483009C1;
	Tue, 23 Dec 2025 17:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766511882; cv=none; b=oMNK2j/EWZGO/yzxvlaDvmsLuy9r/Y0ddCAYbdOsJxV4VXshGJgIVHeTrxvVxOhzi9ajOmi75BgQHaseXDxx5QkJ63xEYb0mSLF+ctlSt8szzj4E5EFe43FYTBveBAuoZ1dM2nIJEVhuiSZFeiZJPnmle1tCp+/AK58bU6flMos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766511882; c=relaxed/simple;
	bh=PLc3ggjOm8pNxE0mUFygpy5myL/Add/ECkFcmWDsJv4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mUi+0bXOP7pwQ/ncR2/qC4ykxKCHky06+xhEcmas85l4hkUpQfQIUjvHVEZadPCR8wHYHrSOjleqP1V0GGq1V7lzG8Rb8Mpj17qIU1u9Xv9JAPNjxrYuOmhwtfifbcNK8L1kewq/7+zErdXTJUbTowvuX3noKYZWc3haUnbkthI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTamgbyD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F482C116D0;
	Tue, 23 Dec 2025 17:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511881;
	bh=PLc3ggjOm8pNxE0mUFygpy5myL/Add/ECkFcmWDsJv4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fTamgbyDxueAuqzoR9INSRwthaBzUMhXpEdygryva+7DYO4SeZMDwBavCCXhjiJdH
	 hcZcpyiGn9+XeMsDkXGtt5gkMIOsgfycGsGnykYFyDdB6HsLBViAUZlaRXnYHGwv2k
	 r7U9QTD33CDFoKVGEx0k8DHHPuUe5sS7q9FrQBIxSIFce+VlzxfcqaUYqVUZeh3+ZQ
	 AgRrp/701JuNokeo489S5Dq7Pdqlu8Bjo9seUYBU6gEV47ORyhiUvquWz5cfDzRFhw
	 LMKbW/UmYQkyYFs3mOdDEafdTF1BqQ+Tlf7MERjlytvEuTLM/rfYrYFsnuvg+vtBKc
	 jVn6whfYs3j0Q==
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
Subject: Re: (subset) [PATCH v2 00/12] Add HDMI support for Mediatek Genio
 510/700/1200-EVK and Radxa NIO-12L boards
Message-Id: <176651187669.759340.13955241073309104035.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Wed, 17 Dec 2025 11:18:59 +0100, Louis-Alexis Eyraud wrote:
> This patch series adds and enables the HDMI output support for the
> following boards:
> - Mediatek Genio 510-EVK (MT8370)
> - Mediatek Genio 700-EVK (MT8390)
> - Mediatek Genio 1200-EVK (MT8395)
> - Radxa NIO-12L (MT8395)
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: phy: mediatek,hdmi-phy: Fix clock output names for MT8195
        commit: 65790df6dcd2f41fab2288ed3d2c3bca00d8dfd4
[02/12] dt-bindings: phy: mediatek,hdmi-phy: Add support for MT8188 SoC
        commit: 6226f616c8e9ac30c294b86ff59e3a9566e2a8d0
[03/12] dt-bindings: phy: mediatek,hdmi-phy: Document extra clocks for MT8195
        commit: ff89cea2385b6236790f3be2727d9ae527daf4a0

Best regards,
-- 
~Vinod



