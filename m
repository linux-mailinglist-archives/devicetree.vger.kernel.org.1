Return-Path: <devicetree+bounces-19993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DE27FD7E0
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DB182825C1
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E5B0200C0;
	Wed, 29 Nov 2023 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="X5iBr2Ya"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9050810D4;
	Wed, 29 Nov 2023 05:22:48 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 081D36602F2A;
	Wed, 29 Nov 2023 13:22:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701264166;
	bh=2GwNXRIpt+9q9FvXsEbR7BizaftPW2Q0mUCzKHvVuxs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X5iBr2YaGQBHXYx+uhtK/eSaiK4+k+UUTVp+Po5fljskLOnTwdBpT3Wt0tFm71D6l
	 j7O3mutf2CTJ+XcySQlQyUQqoPdCRrKaV6sS03OGY5clikYvsITTxPItBcNj4M/ovv
	 nIFLZz0qmwie614SrWyTscWHK/6yX3JkJDHKU6JyXt8mn8Pt7Ta5OyC8cLu2wac9Lp
	 EwkUo/SY1e8mtfVVGe0Xxx2g5rIqymN/lKnLmJ2IsQ5cQSQrB6vbG4ye4AC7m9a/ii
	 YsUQ1Uykyoq/JAzCSUl4oClYQTslJAF5Ub4635WJPkvVGaG2gqeNiGQNrPEq80VGkI
	 tPvfBRbi+hsSA==
Message-ID: <c9881e63-a52a-4d14-895e-9a14d31004e3@collabora.com>
Date: Wed, 29 Nov 2023 14:22:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: mediatek: mt8186: Increase CCI
 frequency
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230914121035.17320-1-chun-jen.tseng@mediatek.com>
 <20230914121035.17320-2-chun-jen.tseng@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230914121035.17320-2-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 14/09/23 14:10, Mark Tseng ha scritto:
> The original CCI OPP table's lowest frequency 500 MHz is too low and causes
> system stalls. Increase the frequency range to 1.05 GHz ~ 1.4 GHz and adjust
> the OPPs accordingly.
> 
> Fixes: 32dfbc03fc26 ("arm64: dts: mediatek: mt8186: Add CCI node and CCI OPP table")
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>

You ignored my comment [1] on the v1 of this patch.

Besides, I think that you should at least keep the 500MHz frequency for a
sleep-only/idle OPP to save power.

It would also be helpful to understand why you chose this new frequency range,
so if you can, please put some numbers in the commit description, showing the
stall in terms of requested BW vs actual BW (as I'd imagine that a 2x increase
in CCI frequency means that we need *twice* the bandwidth compared to what we
have for the workloads that are stalling the system).

[1]: https://lore.kernel.org/all/799325f5-29b5-f0c0-16ea-d47c06830ed3@collabora.com/

Regards,
Angelo

