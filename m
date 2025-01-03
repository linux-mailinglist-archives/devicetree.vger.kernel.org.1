Return-Path: <devicetree+bounces-135305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4A9A0072E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB69A3A060B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48B161D3576;
	Fri,  3 Jan 2025 09:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="GL+kYDBx"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5735638DC0;
	Fri,  3 Jan 2025 09:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735897258; cv=none; b=LOcaZDVfLSTBrAtYdJ5n6VSLv5GDEGyzLND/j3CE2p6zO0HVgnP4nLAQmvSlbfPccBUiOtSvLOqIeINHt0obpZlfPS47654KY72PmOMNsH5mwAZbVMjS7MA6dlEkUbdzQ82xO8S1M2rxh93xZK9KMX5/w5BksmBYOos35fH4ago=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735897258; c=relaxed/simple;
	bh=5vztbglS15xfKUbDC0vnLnilTZgDf+eQTTloOlJ6PzY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jPvxVVsU5e7hknsKGQp71LZdcsdC+weKQrfmzU9gdKjImtTa8VASPcpSFr8J9q20ZRSSPUeeTM7pGZwPCZuj6K4aRjrHuIFWthIn/GCiFvrEpgKT5fjEzQSLEEmguxfjD73BNGmvEKQRu1byUB7qY0Re6r3+MdcaTuZ8xA+PNZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=GL+kYDBx; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1735897254;
	bh=5vztbglS15xfKUbDC0vnLnilTZgDf+eQTTloOlJ6PzY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GL+kYDBxGaj2JbhB31ScE3ZtMIvO1L52hieMQmb4KxB+BjlshE5t4oUSGDjoEGglY
	 3p+zpaULxfHftzj2Zx+N8v6ZjqDkbLX2Vs35/02d6kPK0q+xLJ3g9NV5WUqCl0Qwla
	 Rr0GAaSKGs0FMigIsaNc1Lx++qE8aQzMzldn0+Wu+3hUO9zM3JWXhl5iLrFgRzUkRR
	 CDdMWBdCGENkraKEFyBK8kkum7w1Le3ZnNlIZieV7KFBJIdB6zfqpV/qu8XNAhmopj
	 lomCwAamuJoNIP/qAQAvA0++VB0yGzGeIzRQV0azedbx3jwk7RXNsLXmy5zH1W3LpE
	 o+p8kVDiHYvxQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9EB1E17E1541;
	Fri,  3 Jan 2025 10:40:53 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
 Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
 Shawn Sung <shawn.sung@mediatek.com>, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, 
 Fei Shao <fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
In-Reply-To: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
Subject: Re: [PATCH v3 0/4] Update MT8188 OVL compatible from MT8183 to
 MT8195
Message-Id: <173589725358.61653.1284687133545128429.b4-ty@collabora.com>
Date: Fri, 03 Jan 2025 10:40:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Fri, 20 Dec 2024 02:15:27 +0800, Jason-JH.Lin wrote:
> This patch series updates the compatible strings for the MediaTek OVL
> in the MT8188 dts and the corresponding dt-binding.
> The changes ensure that the MT8188 OVL device is correctly identified
> and managed by the appropriate drivers.
> 
> The first patch is adding the MT8188 compatible strings, refer to:
> - https://lore.kernel.org/all/20241218105320.38980-2-angelogioacchino.delregno@collabora.com/
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/4] dt-bindings: display: mediatek: ovl: Add compatible strings for MT8188 MDP3
      commit: eb27e8d75b83c0781eb330f356d4442177674e74
[2/4] dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188
      commit: 5ecd1e700b67b33fac1a48d86fea124b6c19d052
[3/4] dts: arm64: mediatek: mt8188: Update OVL compatible from MT8183 to MT8195
      commit: 7c791dc2cb62f8ec523872108c8a8c718512c218
[4/4] dts: arm64: mediatek: mt8195: Remove MT8183 compatible for OVL
      commit: f72561bf756baba4ab300bfc728fefd85c67913e

Cheers,
Angelo



