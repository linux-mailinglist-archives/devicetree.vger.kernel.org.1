Return-Path: <devicetree+bounces-11920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 185827D70ED
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B535B2122F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 006AD2B5FE;
	Wed, 25 Oct 2023 15:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xW43IF8A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C49F2B5C6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:29:35 +0000 (UTC)
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9101B386B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:28:15 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-66d09b6d007so39941786d6.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698247691; x=1698852491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/OEf6wY4K8LL5fCd9Dam3mad0hP6D3Fcdj2bC0ObXE=;
        b=xW43IF8AQEwDX+cYuI/NbiRfB2POLxdGkH0WoNUe/y3dSi+EcIbq3ItiosYFEXrcyg
         TgQNhXITQbMZZmIjPWCi5TBs2GxIzBg8MRqXpmTmMxS8oLyE9ZZYxOM2Em3y9E3pq5v9
         sRScR0FfKvI0k9aUnTU1Y9YzYMU+ecmL5A3wy04VW5C7C4n2vXdif79yXOXMd9WipWrt
         6QbxOhhMOAp+ZwXlUzZk75eP59BMT6TK2m0MKq6tvMmzW50UN0mftxt4rND1npwwrAHz
         w4HayfcRXdpNS2ayrgYkKuB7ZsD+XT3qS4WTdQ9WMD20NWDeCDp3ovaIrg+pIFgp4+0G
         +5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698247691; x=1698852491;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/OEf6wY4K8LL5fCd9Dam3mad0hP6D3Fcdj2bC0ObXE=;
        b=uuMHZuBd4UO5dGqi/bYGm+GT+pBA2ONk+31soglRoHho5/z+X+/j5ahY5xRR8vkuco
         FRUXlbfn3gptJrG2BOKfDoWtInpBvD3lEQ5UOd0JRbIFP/5FZW/DLDpXRMhC9EzXER28
         0CGlQIwFVnRlkWf+sbOweOPhm8gK7z73oWzAmG7s0+PGpRPxa7iYzdKSBU2dC2/NdWNr
         L//OPZEPgK0tFBBZ8KxYWPdwHgq5cBmHK/IMmJTsVvDYlqUvFZacNaxwO2s0DYjZCvA5
         JD/abNIxv25tq+lwaVqnavPZQuee9CM+E9RmJtamnABxSYmiB4Pg/RjPnT2MSSwdC7eq
         5Yfg==
X-Gm-Message-State: AOJu0Yyau//FCvUY8iyLh4suosw2HH6IKBCRWrIyp3otkRKb0CWWH0p4
	29bsBX/+W3cTbowxyrtEn6cQNQ==
X-Google-Smtp-Source: AGHT+IE+oXbdMGDC42eUqY/5d0Rh7NZd8nWQ0r8DPCttIVT1/TMaphayNooiWx9ODfgyZFTKsCHSrg==
X-Received: by 2002:a05:6214:2586:b0:66d:1d22:42d8 with SMTP id fq6-20020a056214258600b0066d1d2242d8mr20338672qvb.11.1698247691667;
        Wed, 25 Oct 2023 08:28:11 -0700 (PDT)
Received: from [192.168.1.212] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g24-20020a37e218000000b007671b599cf5sm4280080qki.40.2023.10.25.08.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 08:28:10 -0700 (PDT)
Message-ID: <6f145485-c330-4a89-9e5a-af35d0b72e21@linaro.org>
Date: Wed, 25 Oct 2023 18:28:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
Content-Language: en-GB
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Shengyang Chen <shengyang.chen@starfivetech.com>,
 Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Changhuang Liang <changhuang.liang@starfivetech.com>,
 Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-4-keith.zhao@starfivetech.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231025103957.3776-4-keith.zhao@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2023 13:39, Keith Zhao wrote:
> For each modifier, add the corresponding description
> 
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>   include/uapi/drm/drm_fourcc.h | 57 +++++++++++++++++++++++++++++++++++
>   1 file changed, 57 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8db7fd3f7..a580a848c 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -419,6 +419,7 @@ extern "C" {
>   #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>   #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
>   #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> +#define DRM_FORMAT_MOD_VENDOR_VERISILICON 0x0b
>   
>   /* add more to the end as needed */
>   
> @@ -1562,6 +1563,62 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
>   #define AMD_FMT_MOD_CLEAR(field) \
>   	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
>   
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL					0x00
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_MASK					((__u64)0x3 << 54)
> +
> +#define fourcc_mod_vs_code(type, val) \
> +	fourcc_mod_code(VERISILICON, ((((__u64)type) << 54) | (val)))

Please use fourcc_mode_code directly.

> +
> +#define DRM_FORMAT_MOD_VERISILICON_NORM_MODE_MASK				0x1F
> +
> +/*
> + * An x-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
> + * Each 8x8 sub-tile consists of four standard tiles .
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X8		0x02
> +
> +/*
> + * A y-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
> + * Each 8x8 sub-tile consists of four standard tiles .
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_8X8		0x03
> +
> +/*
> + * An 8x8 tile consists of four standard tiles
> + * that are organized in Z-order.
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_TILE_8X8						0x04
> +
> +/*
> + * An 8x4 tile consists of two standard tiles
> + * that are organized in Z-order.
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_TILE_8X4						0x07
> +
> +/*
> + * An x-major 8x4 super tile consists of 128 8x4 sub-tiles in total.
> + * Each 8x4 sub-tile consists of two standard tiles.
> + * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X4		0x0B
> +
> +/*
> + * A y-major 4x8 super tile consists of 128 4x8 sub-tiles in total.
> + * Each 4x8 sub-tile consists of two standard tiles.
> + * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
> + * standard tiles (see Vivante 4x4 tiling layout)
> + */
> +#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_4X8    0x0C
> +
> +#define fourcc_mod_vs_norm_code(tile) \
> +	fourcc_mod_vs_code(DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL, \
> +				(tile))

1) this is not a part of uAPI
2) please use fourcc_mod_code directly.

> +
>   #if defined(__cplusplus)
>   }
>   #endif

-- 
With best wishes
Dmitry


