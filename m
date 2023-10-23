Return-Path: <devicetree+bounces-10825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA64C7D2D5C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAFC91C20929
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30EA3125DB;
	Mon, 23 Oct 2023 08:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="QQY8v5K6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB3C125B8
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:56:58 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415F6D65;
	Mon, 23 Oct 2023 01:56:54 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 496E866072A7;
	Mon, 23 Oct 2023 09:56:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698051413;
	bh=IJb+TCZh/kfGnk0oqJJZC2x/pdX+EuXkd62kRgrc6wo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QQY8v5K6pizejh8QHjCjw/woIF9HrNfwBsIxUnf20R6D5fHWS91/y9N2S/z0lqXGJ
	 3XLzydIvRJakWpUaPzNinx+FC1p5oGC1oTKSXkRSWoU8znwbpeNCHBimv7n55AjUYp
	 OiWE0XPxf7HVRrE5zt4/LzAp9jl8Ld2VsZVBuq55o6yWfOWgOgKEC0MZZEPAJNaBlC
	 0cXIacZvvO1InZMKdxBwpP0VC6Ftta3kZjAiUDdLYbts9yTqpBwCyqOyKaOCEOsYkP
	 Ds9bn6KAI67YOG/qFfAUbGGS4PREiyPjASfOWfjHsyLesHFzWeJgdJ8VgE4oE724E1
	 apSNOGvCPTS7g==
Message-ID: <b64c5ffe-1ec8-4213-a914-3f7349985275@collabora.com>
Date: Mon, 23 Oct 2023 10:56:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2,4/7] media: mediatek: vcodec: Set the supported h264
 profile for each platform
Content-Language: en-US
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nathan Hebert <nhebert@chromium.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231023030640.16393-1-yunfei.dong@mediatek.com>
 <20231023030640.16393-5-yunfei.dong@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231023030640.16393-5-yunfei.dong@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 05:06, Yunfei Dong ha scritto:
> Set the maximum H264 codec profile for each platform.
> The various mediatek platforms support different profiles for decoding,
> the profile of the codec limits the capabilities for decoding.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


