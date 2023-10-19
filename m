Return-Path: <devicetree+bounces-9976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9661C7CF38D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFDE9B20FD6
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F35168A3;
	Thu, 19 Oct 2023 09:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FDlbibuI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE016416
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:07:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46905129;
	Thu, 19 Oct 2023 02:07:50 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 12B4D6607323;
	Thu, 19 Oct 2023 10:07:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697706469;
	bh=i4wN4m4h2lJzPVgsUhjbrbiElmhqA0fmSzmkzrYrPWo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FDlbibuIvhnNoxRHgtGqCpkWiPIo+sf4Cym/EB/rZhahxHY6GN91Y9Zvx9lACMTP0
	 0n50RaX+pPgmbBj+Og56zGRzTMqp1ZSb5u2f2yeeWirimR40+VEctVjtGU7rsJpmvw
	 Ygzh8rR+xWHPzy6ZBtqzNegZCdVi5481tBqSfxX7+mud+xcGAwckpl/+19oi3d4xBX
	 th2O3dEsmzcWw7ccBsqC8pyZSYzlIQPWJalIIu26qTle5PXYUVccoEiH17lTHeuNT4
	 tGxRewA1F5G8O/t4PDkWlfcGzNAI0DIOhq2O/LgjXr3US9DQwcja4foO5pMJigTNc2
	 jiI2/SYOHsWtA==
Message-ID: <0815ab39-8796-4719-bec5-489aace1cb7c@collabora.com>
Date: Thu, 19 Oct 2023 11:07:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 14/24] drm/mediatek: Power on/off devices with
 function pointers
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
 Nathan Lu <nathan.lu@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20231019055619.19358-1-shawn.sung@mediatek.com>
 <20231019055619.19358-15-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231019055619.19358-15-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/10/23 07:56, Hsiao Chien Sung ha scritto:
> Different from OVL, OVL adaptor is a pseudo device so we didn't
> define it in the device tree, consequently, pm_runtime_resume_and_get()
> called by .atomic_enable() powers on no device. For this reason, we
> implement a function to power on the RDMAs in OVL adaptor, and the
> system will make sure the IOMMUs are powered on as well because of the
> device link (iommus) in the RDMA nodes in DTS.
> 
> This patch separates power and clock management process, it would be
> easier to maintain and extensions.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


