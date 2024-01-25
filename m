Return-Path: <devicetree+bounces-35236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B92CE83CBAE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 19:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 433631F21565
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 18:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4D313472F;
	Thu, 25 Jan 2024 18:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z5IALI8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E53B1339B9
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 18:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706209108; cv=none; b=C2VbsdWLTTva/ZkwW0J7e2PdwluumhPNgr/P/rD5leKOE/2MkWLqYvz0jcZ0ZWNhVTe2MGVh9/nXnUQIaODNQg9ygiQcu0mXBUrEYLV186HyzZ7Sdlf0ah2BERlaS1oWzOBhMYwCp8efYBpeHXLN8nNHssbOP1mFgqlip5NnPuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706209108; c=relaxed/simple;
	bh=/yuX+ZwAqeiEBG+9snyPxfUHA4kLw20Lq3tkl7WzUfU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ITnekcG3MLFB+ituY3U/jj1Hl4CUw4HWHTh8mRt62CTp0GR9m+NTq3nkf1lK0Axiv1NkDJvnYzr8SHziA7PwpUe/DU9fHNgctNjWNGArMXa3FLRVtEa53hdyLxlIj8mgwpLVh5EWi8wwEdGHfRa8sSh3s3qdr02OXDA7ICyydS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z5IALI8I; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-290d59df3f0so2530773a91.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 10:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706209106; x=1706813906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKodC4CUWzXNZRd0RvY8kflDnv2+qlK7ZzKTDP0BS34=;
        b=Z5IALI8IARtyOtpRCxsnd1W3OOtIIGd8wZHPboiTW3oRYv9oOv0oPbvIzTPYchOJky
         k2UxtyH051QIyOstuDzppF8Uo6ESHt6h7LswT7KHEvH8XymbOJE8FlL2eiKMQNHLMfO5
         zrDWXTrhlt1LdB7CVNLSZ5UJ5p4lSDS7Fnpo/BZYuNjBY3cTWIVqYlh/H6v1plUt0IRo
         2q63v+wsbkvXlPondLo+MQThOsduqhhiRwvP7lCSIhRNkGLzPI4z61AiOLuWQZmEtREt
         1JwGQIoYisbgGsWwuC68mx6FirZKy9J8t+3t8/XKu82mLFZ3ZC08uU0Rb/HsHc/1aZmd
         uKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706209106; x=1706813906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKodC4CUWzXNZRd0RvY8kflDnv2+qlK7ZzKTDP0BS34=;
        b=Haef/Ex2BVgwVrBs05DDDi05cNz4d2mz/NzdFfGa9yWWPe3U3YGpzyRcjnaxEdeWLy
         gJASc1wTyhEIJb+FHB+Y24l6QZs1S9ZE/GkXtl0tCuBcVotBaTBu4p0zwnzISuywhrzR
         RPKW/xBsdmhOVQ6uKlX36pAgCuVnAyiquh7YHSRhEX0Yggo/LEen1rnEbCto7zb89A7N
         MSdZsO2udO9q170gmbNh0B6eNXe6IJTKeoQfv1EmhOixNf4RR3cm7N6+YUa0KNqiXysj
         BovOF292O/8fboYjeBbZseLkLWqm559dIx6p/IFaqwhKL8t6FoOWifMDV/nJBUN+PNnA
         L2lQ==
X-Gm-Message-State: AOJu0YxD5zZ1zCLNKxqBlO8RMB1AAtAF7Lvh76wubHA5u+13dgifNd0A
	xOJngKmDUyDN/0JFFF0Wa5C52h2ubFI0Bysy1QEs7PpRd7WbJveHf+g5USA53cgAILmX6xwmOAq
	3jS/QZFfs9DuZpqRFj8k2+naQutIljRmGbgzxyA==
X-Google-Smtp-Source: AGHT+IHGqu+F52i8g1m/kMXpX3DElw6QjaxmyN1VJK+gS/nX+WAvT8nHp1ClH077kwlifFuyQq5EZg0+FOpZfc3CsKM=
X-Received: by 2002:a17:90a:1986:b0:292:bcc9:450e with SMTP id
 6-20020a17090a198600b00292bcc9450emr70570pji.11.1706209106577; Thu, 25 Jan
 2024 10:58:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125145007.748295-1-tudor.ambarus@linaro.org> <20240125145007.748295-2-tudor.ambarus@linaro.org>
In-Reply-To: <20240125145007.748295-2-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 25 Jan 2024 12:58:15 -0600
Message-ID: <CAPLW+4=kEhMz5eUCTLO5e4RCK23g+EWqRqcGQ-V9FNnL6jaFtg@mail.gmail.com>
Subject: Re: [PATCH v2 01/28] spi: s3c64xx: explicitly include <linux/io.h>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 8:50=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> The driver uses readl() but does not include <linux/io.h>.
>
> It is good practice to directly include all headers used, it avoids
> implicit dependencies and spurious breakage if someone rearranges
> headers and causes the implicit include to vanish.
>
> Include the missing header.
>
> Fixes: 230d42d422e7 ("spi: Add s3c64xx SPI Controller driver")

Not sure the "Fixes" tag is needed here. AFAIU, this patch doesn't fix
any actual bugs, seems more like a style fix to me. In other words,
I'm not convinced it has to be necessarily backported to stable
kernels. The same goes for another similar patch from this series.

> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 7f7eb8f742e4..c1cbc4780a3b 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -10,6 +10,7 @@
>  #include <linux/clk.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dmaengine.h>
> +#include <linux/io.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/spi/spi.h>
> --
> 2.43.0.429.g432eaa2c6b-goog
>

