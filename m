Return-Path: <devicetree+bounces-24337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E493280EC60
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:45:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BD0A1F213EF
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF9DE5FF0B;
	Tue, 12 Dec 2023 12:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MyzPT614"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D139FF;
	Tue, 12 Dec 2023 04:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702385090;
	bh=fh7FZZL1dXFnJ9a0fCOZXUu1JWD9X6vCmcu50N1gCII=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MyzPT614PHETIJY9A4KrepPh7kIgIFLCBrtwSu3VbS6qqbIg+N4JUKGWaIupfXUij
	 qwgIYe8synYpFPr+QYelmrgEMu0FwnQMlEX924slEopJSTYFm+CV8WEw8Vzx0WA5WU
	 GErbWHn52a2Nce+cpcldnlro4qFTPzidp03UbVxyiLtwUsvBTUYVRzqmnIKab4yEyE
	 uB5Ie1lbhCDlTw6IeXD1ZLezFpDzeK/MKtZ7XfWCvDaXJLR04H89ueZitY3scvo9CQ
	 BMVOLB+RKRODnggXP6XsDW17fRKmN8qwFOlxRLHWnZRGCoe1wjZrqZ8B82zOYI5l7f
	 WpL+0X6mpAaNQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D1AE13781433;
	Tue, 12 Dec 2023 12:44:49 +0000 (UTC)
Message-ID: <25ec0476-0ee3-4f2a-b0e6-ee33580159ab@collabora.com>
Date: Tue, 12 Dec 2023 13:44:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v9 3/4] ASoC: mediatek: mt8188-mt6359: add es8326 support
Content-Language: en-US
To: Rui Zhou <zhourui@huaqin.corp-partner.google.com>, lgirdwood@gmail.com,
 broonie@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, perex@perex.cz, tiwai@suse.com,
 trevor.wu@mediatek.com, allen-kh.cheng@mediatek.com,
 kuninori.morimoto.gx@renesas.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20231212123050.4080083-1-zhourui@huaqin.corp-partner.google.com>
 <20231212123050.4080083-4-zhourui@huaqin.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231212123050.4080083-4-zhourui@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/12/23 13:30, Rui Zhou ha scritto:
> To use ES8326 as the codec, add a new sound card
> named mt8186_es8326.
> 
> Reviewed-by: Trevor Wu <trevor.wu@mediatek.com>
> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

....but this series is going to be ignored like that, because you didn't add the
right mailing lists to the To/Cc.

Please use scripts/get_maintainer.pl

Thanks,
Angelo

