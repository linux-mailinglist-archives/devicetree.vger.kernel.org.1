Return-Path: <devicetree+bounces-11181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBEA7D4A73
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 098822818E5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C8C6D18;
	Tue, 24 Oct 2023 08:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LGQgRQS/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911CC748C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:37:55 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C4E10C0;
	Tue, 24 Oct 2023 01:37:54 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D30766072F1;
	Tue, 24 Oct 2023 09:37:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698136673;
	bh=zP6vOilkZ0sm+tw53oGfhBi7YFiKClwvxIzUr5yGLpI=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=LGQgRQS/VTjZqKg/j9fomOFt2RWMhGEpZj0kzuxJI55ULzIweIUjZP5mnTXgqDeZX
	 Ej/PRdJpmMO3gkPKa6lcfdmKxDHBGwpXvSW+482Kd5mNonPFPeXMq/sT+/+tz8C8YN
	 /AsrD2dDo08jvpbXFgBIUGsa5P8OqbmnLVC5SpqAS7E+s9imGhmIlYS2ve205xKoK1
	 ICMBBSUe4Bk31NVDn0LBa6/jMlBu8LZGHTNAxodVafW2gRHiIfzGHDJVFbiLVUzXO1
	 0wkLr8OpBYK6Fe9FisOI2qsEgdmCFfPIjnw/xmI69sV3QmKVCa7x/yKZHlMAJxOkQH
	 eU46ccydvDnMA==
Message-ID: <f7fa1c3c-8233-40ab-858a-fdf8a2117a04@collabora.com>
Date: Tue, 24 Oct 2023 10:37:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 02/11] drm/mediatek/uapi: Add
 DRM_MTK_GEM_CREATED_ENCRYPTTED flag
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Jason-ch Chen <jason-ch.chen@mediatek.com>,
 Johnson Wang <johnson.wang@mediatek.com>,
 Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Jeffrey Kardatzke <jkardatzke@google.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
 <20231023044549.21412-3-jason-jh.lin@mediatek.com>
Content-Language: en-US
In-Reply-To: <20231023044549.21412-3-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 06:45, Jason-JH.Lin ha scritto:
> Add DRM_MTK_GEM_CREATED_ENCRYPTTED flag to allocate a secure buffer
> to support secure video path feature.
> 

You have a typo in both the commit description and the title. Please fix.

> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>   include/uapi/drm/mediatek_drm.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/include/uapi/drm/mediatek_drm.h b/include/uapi/drm/mediatek_drm.h
> index c050de320a84..93f25e0c21d7 100644
> --- a/include/uapi/drm/mediatek_drm.h
> +++ b/include/uapi/drm/mediatek_drm.h
> @@ -48,6 +48,7 @@ struct drm_mtk_gem_map_off {
>   
>   #define DRM_MTK_GEM_CREATE		0x00
>   #define DRM_MTK_GEM_MAP_OFFSET		0x01
> +#define DRM_MTK_GEM_CREATE_ENCRYPTED	0x02
>   
>   #define DRM_IOCTL_MTK_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + \
>   		DRM_MTK_GEM_CREATE, struct drm_mtk_gem_create)


