Return-Path: <devicetree+bounces-252304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AE7CFD5E1
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31350301A733
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172953009DE;
	Wed,  7 Jan 2026 11:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aXSGy+Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4871A242D95;
	Wed,  7 Jan 2026 11:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784449; cv=none; b=hSxlRHnFbLp9cBOK7ibAYroafjNGLn8TOOjBAroNE1avD0gV9mDZHLBqXtaWBtRD89Mbd4abr8I+mwKp0KE3LrVchTGCVcqEYhbfPfKR16Ofr0xlaiVgOEC5TIZ16dUDtNZbI+Nn6s4XQglNBebbib/3Gntlhzk52LkSbufDbiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784449; c=relaxed/simple;
	bh=bYV4b7T0FejKQSm2Ka3i212N2vKUTl8BqnnpMyHRYco=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=IpoyLxl9frR3GWGtGoh6CzURno9mLXMKQOxlwZ8bJtxLeg5mZpfmIjKOYck4VvDx7iQRHJPpE9JLRkl+sbBpulfKQtKT7Wt+YYBcdQqq3Qtp3xEVijWngEZ4+DYIA0N2Fdq6zPIKYKrwFLI5+i1E9meTnxNlLIire6lysHdsJ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aXSGy+Xq; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784444;
	bh=bYV4b7T0FejKQSm2Ka3i212N2vKUTl8BqnnpMyHRYco=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aXSGy+XqWmFIXJ079nLZ72r8uoZg543EQKy5dd/R7opmW97D4eM+v8Xgxf0C7KltP
	 qJvW5b1f+8TfJpvNIhJKWDTY7lg0kSvyM6VWgR/v4gDXvVV+mIQtDNI6hwEEVSiISo
	 5WO/LQ0XNzMRkjUTstOOCdZvYcWmwClkPjhdd8FZ0MrLJoi0A3IUiE3PDr3ngYe2Sa
	 6cfnHJWXTEDWHzc7LHa1TtHbyK4OUCQ/cmhSkqfnMiFReRay329LBBMVzzS2pbX3Wu
	 nDoAY6DqfL8OgAiD8sNJ220sUS1nqAA8H1x82EWvYSGBnrxvCBrjBmZbhYIJg/m72s
	 1rZ4857QRWLOw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D7BC417E1340;
	Wed,  7 Jan 2026 12:14:03 +0100 (CET)
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
Message-Id: <176778444383.39787.7154377336276367704.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:14:03 +0100
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

Applied to v6.19-next/defconfig, thanks!

[12/12] arm64: defconfig: Enable Mediatek HDMIv2 driver
        commit: 81841b41a8bcd024f77a15d0634bc229d4d44db1

Cheers,
Angelo



