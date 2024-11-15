Return-Path: <devicetree+bounces-122128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 059D69CDF8D
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 768AFB21CC4
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 13:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090E71BBBEE;
	Fri, 15 Nov 2024 13:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JN9MV5h2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858A1B85D7
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 13:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731675936; cv=none; b=bMQggwQIlJ4/BabUKlPKiTngf4OqCqzjQfcBxWPy53VEEUUQaI3HM1mc3WCXsE2TUmQLMB9+Ap2eP3aX0W2nQ2SjZyqPhYxAyMVjKzhRO1IGmyXgI8TbFhXVaKsbZNQAHmYkW3+IKbgfjuKV0VIwhW/XQKdM4AeNEr2UT3PEtGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731675936; c=relaxed/simple;
	bh=7zxJwl48SlJaTrjD+9OxouqtfF6eSD0d8x2M5p2XuDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTG+YWBGwD3UFQKVOO3oMcR4cHoChiX5lbI8qc1OTU6neoq/ILdtKHeENzDbr9dVS/7utTSJPdvNLVj396u9Gr1Gpz43+NgKqqPcQIMO0vi/XNG3wyQHzv6NesLp/PiOPkPfbpyv4Ra9h/Fa8c6lC5ro3K4nVk/rcLiY/SrXZ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JN9MV5h2; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so5564235e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 05:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1731675933; x=1732280733; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2iRJDtsWqL/piKJhgDPwUvSiSVRYQD6fYDgRKmvQlho=;
        b=JN9MV5h2RadtDjkm0A8YPvnQ+qLuV+G7h93J9H3rF4kTpgwPBN0BKNRdgblBCWK9Jx
         x6XxGdabltG0pEsAhF/bMrbj/sEKh06oauMweMRjeoPWC7A6wUp2kBA4OmENA7pmlEHH
         9j//nGmLXjKBQlhsiMu1rY2lj0JDB7Av4QfwehpPICE62mGgG9IY3Aw055P6ZoPma2v/
         /ty2JxRpFRBR+ovyrU5aaGii0/XF1Srp3xKGfOrh86veZQHAqNKwcmG6PBQPeuVqDsZf
         8hIIzjwNzQnxEpOc8DVcqHyQKdda8O55aw3Lo4rOZTXBwdQIfghdGFRPORDJ9pKgAJZz
         eUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731675933; x=1732280733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2iRJDtsWqL/piKJhgDPwUvSiSVRYQD6fYDgRKmvQlho=;
        b=Fim7wok/CaecFkr140oxIYqvzkx0uuwLe31NqeYwxR0OnJJ+8HIVIqcaPC/NWq3J7P
         vzM9TwpgcEgPVFd4cSRHHmrjP9ff9VmtLpUdP0NvwOMtlpgL11AqdO7i3p7yNeTwyoY4
         pQDDatgfcG9u4u7BfnwAfQVZ0GYURcPqkkjEhqYA470Do7DdVZ80FEh/t+VfKX1ue4xw
         tIGcBlvoB2CITUDxXmMO+Ccf/VIxn+5G47KVFs+Oy00Ib6WCM4c/wNjDnik2jMplFM+T
         JEEB2+1JwPd4+qfIhJdzTc1rrfcMye6Z1UGzji9tJ//CABjWLnSBh+OeVO68aqyb2/zy
         8N5g==
X-Forwarded-Encrypted: i=1; AJvYcCW6DyTqXe6TVe4WlR6v5jA8LxB2gWmumSb3WXya82L8QciqFeH+i2d8elSV3/wdp9/SzjWiE8Hxf1fL@vger.kernel.org
X-Gm-Message-State: AOJu0YyvjCyqt/jkHXKJ88paeTwy2Mv4zvCacZSD8C8lGX67wYjgwKiK
	6uCSvHYmPcOg0zruEN5U1xLWGwTOBcY578pJTkmET/+8yaUBR0Gp8wO+yqRzG0I=
X-Google-Smtp-Source: AGHT+IFDp8PKpaQGVUAOAXQCxAUj6XSIILVhyKbCpLBYq5g/YknCPV3knkGIUqTxSWKWzG3K7rZY6Q==
X-Received: by 2002:a05:600c:46c8:b0:431:58cd:b259 with SMTP id 5b1f17b1804b1-432df790731mr21679875e9.31.1731675933284;
        Fri, 15 Nov 2024 05:05:33 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432dab80a28sm53496875e9.24.2024.11.15.05.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 05:05:32 -0800 (PST)
Date: Fri, 15 Nov 2024 14:05:32 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 08/11] riscv: alternative: Add an ALTERNATIVE_3 macro
Message-ID: <20241115-1c2467159f117132dc94db26@orel>
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
 <20241102000843.1301099-9-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241102000843.1301099-9-samuel.holland@sifive.com>

On Fri, Nov 01, 2024 at 05:08:02PM -0700, Samuel Holland wrote:
> ALT_FIXUP_PMA() is already using ALTERNATIVE_2(), but needs to be
> extended to handle a fourth case. Add ALTERNATIVE_3(), which extends
> ALTERNATIVE_2() with another block of new content.
> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---
> 
>  arch/riscv/include/asm/alternative-macros.h | 45 ++++++++++++++++++---
>  1 file changed, 40 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/alternative-macros.h b/arch/riscv/include/asm/alternative-macros.h
> index 721ec275ce57..b6027a8b6b50 100644
> --- a/arch/riscv/include/asm/alternative-macros.h
> +++ b/arch/riscv/include/asm/alternative-macros.h
> @@ -50,8 +50,17 @@
>  	ALT_NEW_CONTENT \vendor_id_2, \patch_id_2, \enable_2, "\new_c_2"
>  .endm
>  
> +.macro ALTERNATIVE_CFG_3 old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
> +				new_c_2, vendor_id_2, patch_id_2, enable_2,	\
> +				new_c_3, vendor_id_3, patch_id_3, enable_3
> +	ALTERNATIVE_CFG_2 "\old_c", "\new_c_1", \vendor_id_1, \patch_id_1, \enable_1 \
> +				    "\new_c_2", \vendor_id_2, \patch_id_2, \enable_2 \

We don't want the '\' on the end of the above line.

> +	ALT_NEW_CONTENT \vendor_id_3, \patch_id_3, \enable_3, "\new_c_3"
> +.endm
> +
>  #define __ALTERNATIVE_CFG(...)		ALTERNATIVE_CFG __VA_ARGS__
>  #define __ALTERNATIVE_CFG_2(...)	ALTERNATIVE_CFG_2 __VA_ARGS__
> +#define __ALTERNATIVE_CFG_3(...)	ALTERNATIVE_CFG_3 __VA_ARGS__
>  
>  #else /* !__ASSEMBLY__ */
>  
> @@ -98,6 +107,13 @@
>  	__ALTERNATIVE_CFG(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1)	\
>  	ALT_NEW_CONTENT(vendor_id_2, patch_id_2, enable_2, new_c_2)
>  
> +#define __ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
> +				   new_c_2, vendor_id_2, patch_id_2, enable_2,	\
> +				   new_c_3, vendor_id_3, patch_id_3, enable_3)	\
> +	__ALTERNATIVE_CFG_2(old_c, new_c_1, vendor_id_1, patch_id_1, enable_1,	\
> +				   new_c_2, vendor_id_2, patch_id_2, enable_2)	\
> +	ALT_NEW_CONTENT(vendor_id_3, patch_id_3, enable_3, new_c_3)
> +
>  #endif /* __ASSEMBLY__ */
>  
>  #define _ALTERNATIVE_CFG(old_c, new_c, vendor_id, patch_id, CONFIG_k)	\
> @@ -108,6 +124,13 @@
>  	__ALTERNATIVE_CFG_2(old_c, new_c_1, vendor_id_1, patch_id_1, IS_ENABLED(CONFIG_k_1),	\
>  				   new_c_2, vendor_id_2, patch_id_2, IS_ENABLED(CONFIG_k_2))
>  
> +#define _ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
> +				  new_c_2, vendor_id_2, patch_id_2, CONFIG_k_2,		\
> +				  new_c_3, vendor_id_3, patch_id_3, CONFIG_k_3)		\
> +	__ALTERNATIVE_CFG_3(old_c, new_c_1, vendor_id_1, patch_id_1, IS_ENABLED(CONFIG_k_1),	\
> +				   new_c_2, vendor_id_2, patch_id_2, IS_ENABLED(CONFIG_k_2),	\
> +				   new_c_3, vendor_id_3, patch_id_3, IS_ENABLED(CONFIG_k_3))
> +
>  #else /* CONFIG_RISCV_ALTERNATIVE */
>  #ifdef __ASSEMBLY__
>  
> @@ -121,6 +144,9 @@
>  #define _ALTERNATIVE_CFG_2(old_c, ...)	\
>  	ALTERNATIVE_CFG old_c
>  
> +#define _ALTERNATIVE_CFG_3(old_c, ...)	\
> +	ALTERNATIVE_CFG old_c
> +
>  #else /* !__ASSEMBLY__ */
>  
>  #define __ALTERNATIVE_CFG(old_c)	\
> @@ -132,6 +158,9 @@
>  #define _ALTERNATIVE_CFG_2(old_c, ...)	\
>  	__ALTERNATIVE_CFG(old_c)
>  
> +#define _ALTERNATIVE_CFG_3(old_c, ...)	\
> +	__ALTERNATIVE_CFG(old_c)
> +
>  #endif /* __ASSEMBLY__ */
>  #endif /* CONFIG_RISCV_ALTERNATIVE */
>  
> @@ -152,15 +181,21 @@
>  	_ALTERNATIVE_CFG(old_content, new_content, vendor_id, patch_id, CONFIG_k)
>  
>  /*
> - * A vendor wants to replace an old_content, but another vendor has used
> - * ALTERNATIVE() to patch its customized content at the same location. In
> - * this case, this vendor can create a new macro ALTERNATIVE_2() based
> - * on the following sample code and then replace ALTERNATIVE() with
> - * ALTERNATIVE_2() to append its customized content.
> + * Variant of ALTERNATIVE() that supports two sets of replacement content.
>   */
>  #define ALTERNATIVE_2(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
>  				   new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2)		\
>  	_ALTERNATIVE_CFG_2(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,	\
>  					new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2)
>  
> +/*
> + * Variant of ALTERNATIVE() that supports three sets of replacement content.
> + */
> +#define ALTERNATIVE_3(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,		\
> +				   new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2,		\
> +				   new_content_3, vendor_id_3, patch_id_3, CONFIG_k_3)		\
> +	_ALTERNATIVE_CFG_3(old_content, new_content_1, vendor_id_1, patch_id_1, CONFIG_k_1,	\
> +					new_content_2, vendor_id_2, patch_id_2, CONFIG_k_2,	\
> +					new_content_3, vendor_id_3, patch_id_3, CONFIG_k_3)
> +
>  #endif
> -- 
> 2.45.1
>

Otherwise,

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

