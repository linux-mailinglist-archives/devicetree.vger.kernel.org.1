Return-Path: <devicetree+bounces-9181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EE47CBFE3
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D18DB20F4C
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56DAD405F4;
	Tue, 17 Oct 2023 09:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cbasNBHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17B0405D2
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:49:46 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A485D8E;
	Tue, 17 Oct 2023 02:49:45 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 66DD066072C1;
	Tue, 17 Oct 2023 10:49:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697536184;
	bh=4ZfvZ2qZCHs/5Udb5xTCWL8g1HLQM5VCOQCXYVRFH9Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cbasNBHZa4V60Gju4qv/8XSxbkQjSGmBYB6GW/jNXTE4gizi7q3Oz0nF/yWoTPzlY
	 84xCxILji0Gv3leyzXwjxy00o1UPFc5zedw40k499FF5m+0e1oIxXjzS3W1EsQPj4u
	 4oWQttBqJkBrhAIQIA0jbZBX8MhpnVOKhG/xhlLNJxr91wtrtJlJUP5ltUp2m7qng/
	 35qHob2gZyO11Q1PRgfM1/a8V7OLTnG/kUahZtmzbRTRysOO/3YZZdthI9f5w0W2pv
	 eegV0imx47flifWAT32nLOg0h+/+FxPYx0AGrKTtE8/FBgeBhV+JEqjxpSLbHjR/KI
	 cZJ9m8YluqnUA==
Message-ID: <45632ad5-0438-40ad-81cf-482e7c1368e0@collabora.com>
Date: Tue, 17 Oct 2023 11:49:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 20/23] drm/mediatek: Remove the redundant driver data
 for DPI
Content-Language: en-US
To: Hsiao Chien Sung <shawn.sung@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Fei Shao <fshao@chromium.org>,
 Sean Paul <sean@poorly.run>,
 Johnson Wang <johnson.wang@mediatek.corp-partner.google.com>,
 "Nancy . Lin" <nancy.lin@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>,
 "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
 Nathan Lu <nathan.lu@mediatek.com>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20231016104010.3270-1-shawn.sung@mediatek.com>
 <20231016104010.3270-21-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231016104010.3270-21-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 16/10/23 12:40, Hsiao Chien Sung ha scritto:
> DPI input is in 1T2P mode on both MT8195 and MT8188.
> Remove the redundant driver data to align the settings, or
> the screen will glitch.
> 
> Fixes: 2847cd7e6403 ("drm/mediatek: Add mt8188 dpi compatibles and platform data")
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



