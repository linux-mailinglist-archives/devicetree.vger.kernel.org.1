Return-Path: <devicetree+bounces-11856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 436DB7D6D9F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:50:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2121281C36
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E7228DB0;
	Wed, 25 Oct 2023 13:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="n2ZJHzPO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E96828DAF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:50:28 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A93A1AB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:50:24 -0700 (PDT)
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 642443FA94
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698241819;
	bh=W1x37B91j9+69z88CpRerUtWigBjNUnfhOj4SQBIvW4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=n2ZJHzPOU5KatvOC50OPBBEV94Zw/oP5qAGeHYojNJHhsFk0d9L16rD8LtCbvW5wY
	 GI0ZRW72Iqr4XOqiZ+gdyFjVUthuZbDMdNZ0nj2tLFXlnrz9XrJ3C5tsvXBlCuOicB
	 k9Di1e0Wwz9acEbZ0j7xNGpEqCFr1Lmm7DXnwHmCM+pOVnsGXXDpket65InmWzn1ud
	 8FHHoE/uPU4D86CfLjt2XtaIpbwA3USzkMD76tprNBFrNj3yxWNNjlgJ9YqnVBsXZL
	 sJ/zETyEDZ9BMvR8CgSXsRqxow4QSBU0f51TiiH4r4xW33rF2zrkvF0/Yt9jyfO4A5
	 ZcfYfpEikTu7g==
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-4a8f198bd1bso33812e0c.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:50:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698241817; x=1698846617;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W1x37B91j9+69z88CpRerUtWigBjNUnfhOj4SQBIvW4=;
        b=UIVOpIAISLTFjsfUOzX1LO9rQk/GOn9tq8YQ3xC5kpOrn6twIEDEdZ9R93fdCNyKtB
         JQspAKB6+BMNtPqRn+Xe5V9202gVssJBir19xaFvFbyekyMzN0qJLGgcC4vNUAQPY0Cx
         QE+zq15t9msjVcerBNFY3rT2DSQqqS4YoF5bzQJ0RnpQDq9+uOSZCjqu6xEzSDGFVIUq
         RJciSrGJVl2Ow61wsY58g4boNVH6XxwbKbhWs0YcRBxvxUos31WlluLj9i3qaol7jBM/
         sB6TZSJxiy3W3GUV+fenDEkNYNrv0hfz5ZLBgeBkxLyNtoBB8lY2L9iWyMwv+jeRQEvL
         wz5w==
X-Gm-Message-State: AOJu0YxkLTptzvQqJCWUsCUGjUV8LOG9dwQI5NokN+0BIa8UdAT7M+d/
	U31kbZ2gVHpDHngAW5yuueTljadTYCifEOxiQ6p9asFo1amN5FwerWBhgVY1tj0wtASReuvl6e3
	Y5rW66op5PGQ+BoxwPDfINRV7gkclOO/8LYFuuI9IZjwz9GKZRoPR+Iw=
X-Received: by 2002:a1f:2413:0:b0:496:b3b7:5d4c with SMTP id k19-20020a1f2413000000b00496b3b75d4cmr9124780vkk.16.1698241817329;
        Wed, 25 Oct 2023 06:50:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9zDnpBEjkuG+zK5+I3md5OYseNj7+FyeAufjrHbMrkjT4o0+aAODqiZVHTJv2jiFeyLuyYUPzrjH27o2gXYU=
X-Received: by 2002:a1f:2413:0:b0:496:b3b7:5d4c with SMTP id
 k19-20020a1f2413000000b00496b3b75d4cmr9124773vkk.16.1698241817037; Wed, 25
 Oct 2023 06:50:17 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 06:50:16 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231025103957.3776-4-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-4-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 25 Oct 2023 06:50:16 -0700
Message-ID: <CAJM55Z_SS351YyudUkiS3YvBx7O9OM=MGL6PpgVZZjaYjLy3+w@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
To: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, 
	Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, 
	Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Keith Zhao wrote:
> For each modifier, add the corresponding description
>
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 57 +++++++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 8db7fd3f7..a580a848c 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -419,6 +419,7 @@ extern "C" {
>  #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
>  #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
>  #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
> +#define DRM_FORMAT_MOD_VENDOR_VERISILICON 0x0b
>
>  /* add more to the end as needed */
>
> @@ -1562,6 +1563,62 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
>  #define AMD_FMT_MOD_CLEAR(field) \
>  	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
>
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL					0x00
> +#define DRM_FORMAT_MOD_VERISILICON_TYPE_MASK					((__u64)0x3 << 54)
> +
> +#define fourcc_mod_vs_code(type, val) \
> +	fourcc_mod_code(VERISILICON, ((((__u64)type) << 54) | (val)))
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

These indents are all over the place. Please either align them with tabs or use
a single space like the AMD defines above.

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
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> --
> 2.34.1
>

