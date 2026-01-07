Return-Path: <devicetree+bounces-252302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEECCFD5B0
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1CED3083C63
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8F030B512;
	Wed,  7 Jan 2026 11:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="W6q1nskX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833DD30497C;
	Wed,  7 Jan 2026 11:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784377; cv=none; b=DHxAJUZt+M4LE7Ffl7VDJUXMFgJ8X/eBgoqnqtVz2qfeE85p3Zw4JowOwe+r67XWe8YNeT/33kwaC8GpYR8/HAwEIzU9FXFHYRU6BQ8VqdCn6h1/oA8wguYL1YYr7zZlOSb15zWnajJj4Sf6TdEhiBTWJav2wt8pWRwpVDVxHu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784377; c=relaxed/simple;
	bh=DbSOCynyDvnE/e3vHm8GEhOwbb5PB1Nfg88znTvQaiM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=spdjxS9sw7/v2+OK4tQcqXqaF809unBzXI6UwlWQUtwP9Uy3tFvK+l8g48qw13S32aEXfc6U0pdjp5/O7uW4JqaEPgwMmPstUvTB7R5c9G+zdvTEqTrxp70LQX5Fw+vYGkmuXwvAndT/s0JUtTISkzdH66W63/KFF+0lNKpqALA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=W6q1nskX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784373;
	bh=DbSOCynyDvnE/e3vHm8GEhOwbb5PB1Nfg88znTvQaiM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=W6q1nskXfX5PjoYpJLftDVjqj1y+hyscci0ClWTsUeF684v46qRqJ3GZAl/sNq68N
	 mJ8iTFsXr4rYmM7mNSsDW5J5tyuPfJ3iFck4DSwtMEJtEvSGPXvSYX5gdCU0DW8Igd
	 zx+8idKnbzGWG17VkWnZJ1zg2MpR7xC2PdWQ8tCV541qmAkh3Q1qlkxz86fPUDiTVG
	 c3HX9YWXhRLv4ZZOWXhVkyDTmncqs9H4A46PY+NvIPwyMDw1iKhUFa2qKA85sRu10Z
	 kg9rMUdvPt05iyKhbRmedsgHpdKGeyynfE3IJYjckADYMJ38GTCONIdSIoU72f7SCx
	 +ZPdOITrrKKNQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1BFD617E1529;
	Wed,  7 Jan 2026 12:12:53 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
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
Message-Id: <176778437305.39195.15751055338499377518.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:12:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Wed, 17 Dec 2025 11:18:59 +0100, Louis-Alexis Eyraud wrote:
> This patch series adds and enables the HDMI output support for the
> following boards:
> - Mediatek Genio 510-EVK (MT8370)
> - Mediatek Genio 700-EVK (MT8390)
> - Mediatek Genio 1200-EVK (MT8395)
> - Radxa NIO-12L (MT8395)
> 
> [...]

Applied to v6.19-next/dts64, thanks!

[04/12] arm64: dts: mediatek: mt8195: Add DPI1, HDMI, HDMI PHY/DDC nodes
        commit: 506dc2f1a56399c26d1c5fd3c19f82c723314531
[05/12] arm64: dts: mediatek: mt8188: Add DPI1, HDMI, HDMI PHY/DDC nodes
        commit: 91f6d6ce9b173d358eb911b42f784b003009a7aa
[06/12] arm64: dts: mediatek: mt8390-genio-common: Enable HDMI output
        commit: f7777c4ebd72054d50344bd89a29f6f181ec90b5
[07/12] arm64: dts: mediatek: mt8390-genio-common: Add HDMI sound output support
        commit: 12f5294e2fbefda844b5ba24889a40dfc4f914b5
[08/12] arm64: dts: mediatek: mt8395-radxa-nio-12l: Enable HDMI output
        commit: bdd288b89d4dd615bfb12f0dab2c17aa783a0256
[09/12] arm64: dts: mediatek: mt8395-radxa-nio-12l: Add HDMI sound output support
        commit: bdb4652f1951e4c4bed7f869ec9eb49322cffdb8
[10/12] arm64: dts: mediatek: mt8395-genio-common: Enable HDMI output
        commit: 1e9cc416a8d29681682f2d34fff1a34fb353b9f9
[11/12] arm64: dts: mediatek: mt8395-genio-common: Add HDMI sound output support
        commit: 0309ce7e7a49b67e40d9b9d054826bc1e6eaef17

Cheers,
Angelo



