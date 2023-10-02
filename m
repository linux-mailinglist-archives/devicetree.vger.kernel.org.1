Return-Path: <devicetree+bounces-5074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B95B17B509E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:49:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7398728216A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78ACF10942;
	Mon,  2 Oct 2023 10:49:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF1C101F2
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:49:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 181609D;
	Mon,  2 Oct 2023 03:49:01 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 313CA66071CC;
	Mon,  2 Oct 2023 11:48:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696243739;
	bh=hkakGZzKrpBqJ8bu7p4aKSPk0uLiJp0RehNVXs696g4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UmcPn0VrD2YQUTYngDvWbvJ0+GnRHxdihiWKcu5Af4zRUeESUQSVHd0uiKEMNsdTy
	 JNTt/asH5FnWqP5eiMz1+xVzqZVS1nnFJ1at/u8LuCdQMkcAsB+l/pYVwjYMdmujhr
	 9LGrkpnY2sUopQ2lYhtFLoAcq2d1R0QKhdXAYoykhXiTWG10bHwTdTACyXkGhadZXD
	 4NPoRiRT5UnIozSxG0ZeXQI9/6oli5yVt+25KKlwOQN28FiabJHE3se63Fsv2LIAKA
	 EJqy0uYYWSMmQsH0Ow2kvmVYKW8S6BF+4xrHHbqVAxq+UjQ9LVt68pb7kWz0Fzm25H
	 WWBak1t9gXPGg==
Message-ID: <d63f9b4e-6f73-625d-1d5d-1dfa631ebd6c@collabora.com>
Date: Mon, 2 Oct 2023 12:48:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] media: mediatek: vcodec: Fix encoder access NULL
 pointer
Content-Language: en-US
To: Irui Wang <irui.wang@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nicolas.dufresne@collabora.com,
 Yunfei Dong <yunfei.dong@mediatek.com>
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Maoguang Meng <maoguang.meng@mediatek.com>
References: <20230926101909.15030-1-irui.wang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230926101909.15030-1-irui.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 26/09/23 12:19, Irui Wang ha scritto:
> Need to set the private data with encoder device, or will access
> NULL pointer in encoder handler.
> 
> Fixes: 1972e32431ed ("media: mediatek: vcodec: Fix possible invalid memory access for encoder")
> 
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


