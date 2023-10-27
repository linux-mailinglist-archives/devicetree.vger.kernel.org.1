Return-Path: <devicetree+bounces-12335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B597D8FF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 327E11C20A87
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF051BE64;
	Fri, 27 Oct 2023 07:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="IUbkkp2+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90115BE48
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:35:41 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D08351B1;
	Fri, 27 Oct 2023 00:35:38 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0835566072FC;
	Fri, 27 Oct 2023 08:35:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698392137;
	bh=oFJbGwgnT4XBm+CPLnIrvOvd1dL6gLt3RoWlBIVTEqE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IUbkkp2+4x0Hj0zH0B3GbP4brjI1gkJDa6pfKKxGn5kwUZMgQutHFQ+qBljhmzszk
	 Ob5/fmHn7YyW7oXc9v8oWwmsqtepMwCqPUDgnPhsyKiNe7+UOglSwezFoiKQPusDLj
	 gMkPGo3vTcbHOvS8NFWASKIQla9ObpFjqmXT0o0E6RCxKO/2KFgXKfDj6+rYwb9jQz
	 AYQZznsy//c9TRVDOIMRDr5jyxO6iWUu4SlIelwStNtZTXgy2FvoB+qyn2YINPAXn+
	 ltL7Llwmiam7U80+SLGz5O/uEVCATFn1SLSl+XF1Yx0CZkrtibTD5T9C82MZQ8DRHi
	 OF9C2y+4X7OWQ==
Message-ID: <786024db-15fd-4600-a79c-5f5b3b2d952f@collabora.com>
Date: Fri, 27 Oct 2023 09:35:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] arm64: dts: mt8183: Add jacuzzi makomo board
Content-Language: en-US
To: Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20231026191343.3345279-1-hsinyi@chromium.org>
 <20231026191343.3345279-6-hsinyi@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231026191343.3345279-6-hsinyi@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/10/23 21:09, Hsin-Yi Wang ha scritto:
> makomo is also known as Lenovo 100e Chromebook 2nd Gen MTK 2.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


