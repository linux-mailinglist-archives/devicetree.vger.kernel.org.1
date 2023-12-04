Return-Path: <devicetree+bounces-21381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B3C80369F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B518B20A9D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAF028DB9;
	Mon,  4 Dec 2023 14:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Bud/TafL"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC7893AA3;
	Mon,  4 Dec 2023 06:28:02 -0800 (PST)
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E1248660711D;
	Mon,  4 Dec 2023 14:28:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701700081;
	bh=KkXpkO4uzsj6xvA4i59k3CLFNko3savUBaYI22mJu7Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Bud/TafLBs8JK0WpIV58pJ5WSOFuQwt/4Q+mr4kx67fZ44XaTFSUe0+D/NUVld1cL
	 loHplfot8Av+Mn0ivUnosQ/CCvs4ysLKH63U5BG4xbGFRQgDTHBYfgihdUywdGWgFJ
	 Y9ZkigOU8F8HZJOAhWh7Kw4DXV1dyv3MQlJaOYaMqkMTEMFc3RjQgvrILJjvRFtxYQ
	 wS/whoNGLmXwKHHrbUMkOaV/0b4F7ZH4RmoPFC3HTT4a70Id+pBYMi2Pn/44MMVD+2
	 rqw/hv4qpESADs4S0dAHGdiAJjbN4gT16k06mwediR7grJiI/rF96BbkUraspWyAx+
	 i3As60fcz4vRw==
Message-ID: <b8623f65-45f5-4ce6-8b0c-eaf5e820fd26@collabora.com>
Date: Mon, 4 Dec 2023 15:28:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/9] dt-bindings: arm: mediatek: Sort entries by SoC
 then board compatibles
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20231204084012.2281292-1-wenst@chromium.org>
 <20231204084012.2281292-2-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231204084012.2281292-2-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 04/12/23 09:40, Chen-Yu Tsai ha scritto:
> Some of the new MediaTek board entries were inserted in a chronological
> order, or just randomly. This makes it harder to search for an entry.
> 
> Sort the entries by first grouping by SoC, then sorting by board
> compatible strings. Also add a comment at the top asking people to do
> the same.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


