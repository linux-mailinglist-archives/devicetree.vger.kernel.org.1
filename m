Return-Path: <devicetree+bounces-9978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 222F37CF3A0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6719B20C81
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685B7168A3;
	Thu, 19 Oct 2023 09:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LRckoRO2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC17171A6
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:11:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D382FE;
	Thu, 19 Oct 2023 02:11:00 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EE0E96607322;
	Thu, 19 Oct 2023 10:10:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697706659;
	bh=ER3TUe4KejFI46uSujfiK3SyQjfv9tLTEI4WwEiaVZU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LRckoRO2o1NvPjz3os8JbnkLZeOPKZEDzmkO+/Q5kPM6rPWmhl335XsNIEwV19S/X
	 KK/6c/2q/VcWFfOGT3QZ+aG3vnkl9ai4iXYou2yY+6rRYpY33N7TElxICoZmJHGePM
	 DVzrrhbh4HhcxNkAyXvK3k+rTvIxCWzmvYYf0SCyrcj513rGBdQSCETpamHB5kqGCA
	 QUc8Bo/s/MrM4bXE4drGjhojrnBTr0Bj1PgH01dYDo0HU/kuV+JyuMKUUcwrkv8GOe
	 ydkl7meZgHpQsIQ8zjh+vH7nHFQB//qmkce4Zolqd+lpgi1ZPZyEQSepK9VDDYKIy0
	 nlSmjleo+jslA==
Message-ID: <2114ce92-52c2-44ae-8aa6-9061a6646c40@collabora.com>
Date: Thu, 19 Oct 2023 11:10:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 13/24] drm/mediatek: Manage component's clock with
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
 <20231019055619.19358-14-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231019055619.19358-14-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/10/23 07:56, Hsiao Chien Sung ha scritto:
> By registering component related functions to the pointers,
> we can easily manage them within a for-loop and simplify the
> logic of clock control significantly.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


