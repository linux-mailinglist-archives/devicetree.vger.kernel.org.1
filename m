Return-Path: <devicetree+bounces-24251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A58180E7C3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B58442816C7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90DA1584FF;
	Tue, 12 Dec 2023 09:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="VD8+7Gsm"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48CD7E3;
	Tue, 12 Dec 2023 01:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702373598;
	bh=DngQeOO2YELX/6w8IEVqEz75HCOEMeCfiy2nH1Lvr9A=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=VD8+7GsmaUgBrt67C533y61acmy2sX48b+8+Cw16eKK/vujiDNKieaTiIjnpWUMj/
	 0/qcOYaznzHmUnSvAiH7kAhjD/52/nTZHP6OiJF9livV+wGcpmDo3SdNb2UK7ziYWw
	 xp92JreRroH7Ta5xchcWgJG2i+SKMJ4G8236IKX6BkWOXqGg779n803dd5fL4delAk
	 EqOPEelcZFkDhl5Tm4a9yF9EEDyJfa7VMOpucu7hV4jLqSXtlcTDvNsNcuaeq6FkpA
	 41gW223RmcuNeDTOZXd8zIttUNoDrSUeUGr8/cOp3FbN0O78R31lSDZ7PTNITNuWMb
	 hMZi1CMbMw4nQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B4DEA3781423;
	Tue, 12 Dec 2023 09:33:16 +0000 (UTC)
Message-ID: <8585cdce-648e-4c27-a769-6441dac77707@collabora.com>
Date: Tue, 12 Dec 2023 10:33:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] dt-bindings: clock: mediatek: add MT7988 clock IDs
Content-Language: en-US
To: Daniel Golle <daniel@makrotopia.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sabrina Dubroca
 <sd@queasysnail.net>, Chen-Yu Tsai <wenst@chromium.org>,
 "Garmin.Chang" <Garmin.Chang@mediatek.com>, Sam Shih
 <sam.shih@mediatek.com>, Frank Wunderlich <frank-w@public-files.de>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 James Liao <jamesjj.liao@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org
References: <152b256d253508cdc7514c0f1c5a9324bde83d46.1702350213.git.daniel@makrotopia.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <152b256d253508cdc7514c0f1c5a9324bde83d46.1702350213.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/12/23 04:18, Daniel Golle ha scritto:
> From: Sam Shih <sam.shih@mediatek.com>
> 
> Add MT7988 clock dt-bindings for topckgen, apmixedsys, infracfg,
> ethernet and xfipll subsystem clocks.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



