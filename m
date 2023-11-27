Return-Path: <devicetree+bounces-19230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A93E7FA111
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D244FB20AC3
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1340C2E654;
	Mon, 27 Nov 2023 13:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hiQgqnMD"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6EA4D5A;
	Mon, 27 Nov 2023 05:27:58 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CB0326605835;
	Mon, 27 Nov 2023 13:27:55 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701091677;
	bh=WyKaXaY9IzcwDuntRtwn1KfZMZ+q8dvY9ZGvsdF2Gto=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hiQgqnMDcTYURCWDPzqiIQlpItsv79TXZcGJ6vw5AxxRRFIfYnpMUn2a/TxLaQ6KV
	 e01Bd4tZAp8LCnO3a+gKfv4GCp90GRwU9n25NeQfOmlgfcwqnZEkeZiio3l05WlPVm
	 z+4jhQRtXuUwPwX80y/cZvB7eId9PpTwQl0wr3NtHo1QiKK9/aHwXzZukGJ46bdKL2
	 8iyy92Fpjj+8gePTp30EPpKRMH0LQrjOn7n8vQoV/hZ5OycHEyGYiGX0MAqgoYC9Ik
	 cFUIARjZ4xBNw9BJ0JaZ6TgqPJIGJ26FfSNbXpPgzuTkJnz60d2d6/qHtr7XFnQkst
	 ee4V29F2DPi9A==
Message-ID: <4cf1461b-53a6-4b23-83ec-de97c8db3b20@collabora.com>
Date: Mon, 27 Nov 2023 14:27:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/mediatek: support the DSI0 output on the MT8195
 VDOSYS0
Content-Language: en-US
To: Michael Walle <mwalle@kernel.org>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-5-mwalle@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231123133749.2030661-5-mwalle@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/11/23 14:37, Michael Walle ha scritto:
> With the latest dynamic selection of the output component, we can now
> support different outputs. Move current output component into the
> dynamic routes array and add the new DSI0 output.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



