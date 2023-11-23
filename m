Return-Path: <devicetree+bounces-18248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A37F5D93
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9264B2100A
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5960B224D5;
	Thu, 23 Nov 2023 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UtE+qT0b"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62DDB9;
	Thu, 23 Nov 2023 03:17:20 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DD3586607399;
	Thu, 23 Nov 2023 11:17:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700738239;
	bh=2iodxh4WFdUN0YUDs8e2jORssg12+fCUm/I386AK+n0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UtE+qT0blWGNvMpufqC2Ubyc9FWynPNxujH3YsMq8FjcF6hy5CTCxElfzz6oeV0sp
	 Lqou3s23pBgY8+WDrGh0n6JuLA8ZDWiT/1L6U6leovnk38fnvULQOWtUhPqBaD9yKs
	 7avw2udD0LiKgmSs5U0X67ave7Bh1MhfmGf53Xy9MC5ts/o6zUt6YibDSA0sWtWUOg
	 WV2WUUXnXgpW3kp71HqVO9nqMu/QevDthr/cMpznrMBEuuExabn2LR7bMAPSzzh0ba
	 XVqgdI+yUjWZNEDgEkEFmGHIDCSjwjSZJ15g+NK7GhK7VkHiSz0nonfDluE85sljnG
	 gORtC3C2h7j/w==
Message-ID: <0311dcdd-1c70-41ff-b170-dc2782f7ea49@collabora.com>
Date: Thu, 23 Nov 2023 12:17:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7] dt-bindings: arm: mediatek: convert audsys and
 mt2701-afe-pcm to yaml
Content-Language: en-US
To: Eugen Hristev <eugen.hristev@collabora.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: conor+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
 matthias.bgg@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com, Rob Herring <robh@kernel.org>
References: <20231016203915.9793-1-eugen.hristev@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231016203915.9793-1-eugen.hristev@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 16/10/23 22:39, Eugen Hristev ha scritto:
> Convert the mediatek,audsys binding to YAML, together with the associated
> binding bindings/sound/mt2701-afe-pcm.yaml .
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



