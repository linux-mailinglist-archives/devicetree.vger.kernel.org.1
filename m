Return-Path: <devicetree+bounces-16163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 071EA7EDD3A
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 10:01:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 064981C208E1
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 09:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484BC14AB1;
	Thu, 16 Nov 2023 09:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ShrG+huo"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3571A7;
	Thu, 16 Nov 2023 01:01:21 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 291886607337;
	Thu, 16 Nov 2023 09:01:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700125279;
	bh=3GtzmtDRJWmMBIANQu8gF1p+cuSCdiSRabli1wCj1UM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ShrG+huoA/Fle80o9Bpdz+qisL2slIJUpwcb9gd8NKwgxClm+rk0XBWUgljhC2nFP
	 karFwLtwgT2vsniRZ5aXMO8OrKd09u2LUKtMgbI/iwX3VwcDPDBva7Vw0OYo+NJYki
	 DC0z4+Yfan5kRj5Bwy/HT5ohVr4iKli2bW9AA1r61CeEWP9sR3p7r85mvc0/a+CYze
	 6AEnkwM9QYXA+bAyqQPm3firbcbzr/Tk1JjJ8Nuu6E8yhk7nrS5qE20OLzCJncYBu7
	 5rvUh5W8ywl8v0dtFbQePiwv7KnWt+/rLeqBdNlLVvI9sV8w7qQbXEssdhEg4PQ6cO
	 /wm3Kr7cihhTw==
Message-ID: <8973ce67-9f87-4a21-89f9-68ed5d6d75bd@collabora.com>
Date: Thu, 16 Nov 2023 10:01:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] soc: mediatek: svs: Add support for MT8186 SoC
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Roger Lu <roger.lu@mediatek.com>,
 Kevin Hilman <khilman@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231011034307.24641-1-chun-jen.tseng@mediatek.com>
 <20231011034307.24641-3-chun-jen.tseng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231011034307.24641-3-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 11/10/23 05:43, Mark Tseng ha scritto:
> MT8186 svs has a number of banks which used as optimization of opp
> voltage table for corresponding dvfs drivers.
> MT8186 svs big core uses 2-line high bank and low bank to optimize the
> voltage of opp table for higher and lower frequency respectively.
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



