Return-Path: <devicetree+bounces-13691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 936CB7DFFBC
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 09:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A73C281DBF
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 08:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F0C8460;
	Fri,  3 Nov 2023 08:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZwvI3y6g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B07D846F
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 08:29:38 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC3011B6;
	Fri,  3 Nov 2023 01:29:33 -0700 (PDT)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 320D266073D1;
	Fri,  3 Nov 2023 08:29:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699000172;
	bh=Zpw0kWCcEIOsCFNF+ZDHr5z8RxhYpsctqAvhh991yE8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZwvI3y6gl9da2ulwCIgyN0HcoltT6OGy+kBDMR4LJxKwT1JtXtmtI3JpBge0pKqNc
	 YN3b04ETjK261DvcYgA6AxW1B/46RLAF6LfKBGgwg5lTJkxCraXBQPfpOQBRlItQoD
	 J8/5IjR8VUs93oKPHZxZ0JQHWA7k6PCDt71Ss6+Jna0/MDpH8yoRumydQ7ifGzHNMr
	 Mky0j13u7CYxkgp+3oQtxDgwsLoo5D+uIBEUyvbXzuRRQAl0t2pnw1xbBzCeiRHVES
	 e5FbHE7tFzYnhXZhhTLRbDwVUin1FH/xvk751dLdEJdgahvKV4Kv9JMnYeUVeUE7+P
	 LpPzug06cmZmA==
Message-ID: <dc32d9db-901d-4d05-8c1c-6fd423be2849@collabora.com>
Date: Fri, 3 Nov 2023 09:29:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 10/16] dt-bindings: media: mediatek: mdp3: add
 component TDSHP for MT8195
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231031083357.13775-1-moudy.ho@mediatek.com>
 <20231031083357.13775-11-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231031083357.13775-11-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 31/10/23 09:33, Moudy Ho ha scritto:
> Add the fundamental hardware configuration of component TDSHP,
> which is controlled by MDP3 on MT8195.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


