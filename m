Return-Path: <devicetree+bounces-19228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C957FA10A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6EE9B209BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12262E622;
	Mon, 27 Nov 2023 13:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ace0jcUM"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7602B8E;
	Mon, 27 Nov 2023 05:27:26 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6D4BD6605835;
	Mon, 27 Nov 2023 13:27:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701091645;
	bh=DvdTt/2joGjmSG0un+grPJz1gQ9C99woeiwQLvx7PIk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ace0jcUMaaLGzfJzHjPcsPWpVDpK61lQJqlhON6SE7GegzdsUn9vpO+Z9u1MI5rId
	 1vtulJdlAyIsPGpiW5q+PnkJmR3phB4bqhdb8wLz5wO8XRfckZFk76iONud5D2ea2c
	 JCRrx87PpeqCgmT+bMDxeKGUb5XwZIRnf7/z8otHa8CuxabDO+HxOWIPdpbKCqazo1
	 1pOmwdm9ZayP4qnNV1RDPygEGag9iiiYiqXbOVwFna0+KNmlE1odL4/4gVKrH2vdvP
	 zNZv5Try393NNMHGSByfDITJbKle6eCPibneDaIPvIn3HMTCsvJIeTdPE+9VHcIbIF
	 wCZ1f0J5ctnuA==
Message-ID: <18516d3d-f866-41de-9045-ed9b4da94697@collabora.com>
Date: Mon, 27 Nov 2023 14:27:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY
 nodes
Content-Language: en-US
To: Michael Walle <mwalle@kernel.org>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-4-mwalle@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231123133749.2030661-4-mwalle@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/11/23 14:37, Michael Walle ha scritto:
> Add the two DSI controller node and the associated DPHY nodes.
> Individual boards have to enable them in the board device tree.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


