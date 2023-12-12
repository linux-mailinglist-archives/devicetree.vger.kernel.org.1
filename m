Return-Path: <devicetree+bounces-24359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5C580ED85
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBD0C1F2161B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E03F61FA0;
	Tue, 12 Dec 2023 13:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="d+QQcCfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A22911D;
	Tue, 12 Dec 2023 05:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702387644;
	bh=EiuZhr5Xmzs0FwCEPG+Ew4eAAMJCP2ZsrkEzvE1VxkA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d+QQcCfZGvmR6TTIxeqCgLgChC9poL3EWtIVAUDH49RE8VeFzqRJNNAjX21Ns5vun
	 yoWvaEqc1H/HX7edIyHY5JfTkD++6o4vY3/WVs7Sj24KhAEoN6aeP12gsWLlsO+qos
	 vXL+L5eCT4uNgy2QSLr7CLXeexvQ/68TLdTLueoNCwyIvw4Ko5nUR5xFGvbhQoqhmk
	 HRYmepsXuz6BoWDCIphamzwlH1dSR61XKD1maU1kPtoQ33NMo1f5yIDDfYl1dFpgai
	 1S4czM+xMLsW6i16llsWF1ubeeSzUx/ehD39R9BpM7yNsIGYc9RdbM74N3EBcqSBGP
	 WD3+0nxoc0RXg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 31E293781463;
	Tue, 12 Dec 2023 13:27:23 +0000 (UTC)
Message-ID: <fbaa1652-8402-4f6e-9f68-fbe16c78ce73@collabora.com>
Date: Tue, 12 Dec 2023 14:27:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/17] drm/mediatek: Add OVL compatible name for MT8195
Content-Language: en-US
To: Hsiao Chien Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai
 <wenst@chromium.org>, Sean Paul <sean@poorly.run>,
 Fei Shao <fshao@chromium.org>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231212121957.19231-1-shawn.sung@mediatek.com>
 <20231212121957.19231-5-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231212121957.19231-5-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/12/23 13:19, Hsiao Chien Sung ha scritto:
> Add OVL compatible name for MT8195.
> 
> Without this commit, DRM won't work after modifying
> the device tree.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



