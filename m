Return-Path: <devicetree+bounces-9545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F37E7CD612
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F8DA1C20954
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97BB1401C;
	Wed, 18 Oct 2023 08:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MdDYz9Wo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F830F9D5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:06:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB298D49;
	Wed, 18 Oct 2023 01:06:46 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 49E9B66072ED;
	Wed, 18 Oct 2023 09:06:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697616405;
	bh=SKaYS5DAqe/a4E7/c1VcAilMd6UWMjFFf0Epels2xL8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MdDYz9WoTVlY4oHxVt/oTkSzcqWPK4ev+LKCoza0HMj4mlY/URh65GQQnpkGFSbKm
	 d70v6ajl9K5xhqr31MT4u0bOUHhNp+n9lsVauYGHkUwIf94Aww1rLE6s6Oii18jTzk
	 S5CT8aHpkM+eJHZx/uMWa0zHaO6/zd96sHtdTnVYQARLFR14TPUyCnus1lBuRznKlN
	 Nd4EDwW2Nw1L7eKwPZOC/SyxJT7Wpu3Zv9mLxDoK+pPhpjgAGcBqG9YCU4yY8c5AF7
	 ovsMKvKyFGqczaHX4eFSW0GW/kBc4PICK6/qVmEiISwQe67T5d7DTFSV1hHGugCHl8
	 YDC4GBzuJPfkQ==
Message-ID: <4e402da6-f6ba-4200-9cbb-47d2b117aa91@collabora.com>
Date: Wed, 18 Oct 2023 10:06:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 22/23] drm/mediatek: Power on devices in OVL adaptor
 when atomic enable
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
References: <20231018043650.22532-1-shawn.sung@mediatek.com>
 <20231018043650.22532-23-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231018043650.22532-23-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 18/10/23 06:36, Hsiao Chien Sung ha scritto:
> Different from OVL, OVL adaptor is a pseudo device so we didn't
> define it in the device tree, consequently, pm_runtime_resume_and_get()
> called by .atomic_enable() powers on no device in OVL adaptor and
> leads to power outage in the corresponding IOMMU.
> 
> To resolve the issue, we implement a function to power on the RDMAs
> in OVL adaptor, and the system will make sure the IOMMU is powered on
> as well because of the device link (iommus) in the RDMA nodes in DTS.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



