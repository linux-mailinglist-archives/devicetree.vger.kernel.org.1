Return-Path: <devicetree+bounces-3366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 598717AE8D6
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 09782281722
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9064D12B82;
	Tue, 26 Sep 2023 09:21:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00F063AF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:21:18 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF170F3;
	Tue, 26 Sep 2023 02:21:17 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 579876607313;
	Tue, 26 Sep 2023 10:21:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695720076;
	bh=FKvRcZczMijqG8YmeVx25lsAadHS5xULTP5v1ZDi/Yc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IxceUlmBtOiC/bvzFXAWd7X6itv/URlN7AFBiOcK3qw/JI6FdPQ7x2maqYXNOIF6G
	 yUaxFobcey3F38OEXcTHnoNSvnF9OZKUpzWlJwpBuzs90t8iFoc0XfWEY+vmpUv2UK
	 UR23LHeESMsF+1o6ednzjwZICOFm4La8tDnuh7xal4g/raZtu8xS4RK2YxtCaGMLfm
	 OTo1C2+tdT3+RQ54FdySt5HVa3t10HFru7Jal1XFqM/hJWDLHR7alucwLg43SaNi9A
	 Hr+DIw0bTQdt0XNdP67RoYlbIFke85DgrFfVtecKdj2ztqkwyX0v2pZ3sQJAVFINiZ
	 ikOrEbFs7/NwA==
Message-ID: <05086c59-f6df-7a72-59be-762fdcd0a31f@collabora.com>
Date: Tue, 26 Sep 2023 11:21:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: mfd: Add missing unevaluatedProperties on
 child node schemas
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrick Rudolph <patrick.rudolph@9elements.com>,
 Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 - Keerthy <j-keerthy@ti.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20230925212729.1976117-1-robh@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230925212729.1976117-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 25/09/23 23:27, Rob Herring ha scritto:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Add unevaluatedProperties as needed, and then add any missing properties
> flagged by the addition.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

For MediaTek:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   Documentation/devicetree/bindings/mfd/maxim,max5970.yaml   | 5 +++++
>   Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml | 2 ++
>   Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml  | 1 +
>   Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml  | 1 +
>   Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml  | 3 ++-
>   Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml  | 1 +
>   Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml   | 1 +
>   Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml   | 1 +
>   Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml   | 1 +
>   9 files changed, 15 insertions(+), 1 deletion(-)
> 


