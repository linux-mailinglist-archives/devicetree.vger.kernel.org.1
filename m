Return-Path: <devicetree+bounces-110468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C2E99A7B1
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 17:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 215B11C2653A
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9F9195F22;
	Fri, 11 Oct 2024 15:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="NycKO9b2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804FC195385
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728660583; cv=none; b=m2sKP6O5g51k4c38fdteBDjljBiQZhUwnx8vdeXSh3fn/19wnBNj+sfc24Z3Au2zhNrPKAUpSYONr3LhSisLGVZidtb2ZhSl5mGI3WZlr2XBdBI3iPpnAc37xg9wBn2CBiSyw7X5LabCoAcriwkJrkUvJxuRc5FA5Qvsb18vjiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728660583; c=relaxed/simple;
	bh=L+1vIZ1LGvXuZQq8x99G7kK5sIk7Bhl5Usj3xUZX794=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fc2nSh2kHJN+Uz7PwE20TOmY93eFgKTINOC593SdndFwMtgTDShSMwqrIWWTJN6eNq0HWL9okMrA+9wOFsUTtmmMhwI2o7WPVLZD2D+cNMwdo6VMX4YRz8Zq4W2rlIRzfrfhxU7VZ70fNo8TU5YozyYV5AkDjeCyr5raU9AT5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=NycKO9b2; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2e2bd347124so1507959a91.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 08:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728660581; x=1729265381; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OfEakMtjipcZbjXlN6+R0PDo0Z9g86WwST3PngXMQx0=;
        b=NycKO9b2BIx8v0+JqOCpzYkycgK1qceNSMy/8pAlEbccJ9NzSiF6UVQo+nGtC04wlw
         AKf9pifUQ65DjwRfJsVgrvJ9y1Oq43//xVCF13BO70yUZ7C1c/G9J+iE1nsgRz5jcJEx
         +J97Hyr2VSAf1rmUDzh0z6fj5k4M2JWRnMXe0XjsAPO+cySzpuoIOaS45ftr1F6x++2W
         kK2hK9yeElM9V8O+vbwTn54odNlu2FsFXI8rmw//yxJxMzefOXR/+vL3EtaSyqOMKojL
         r6BZ+X9rC4sWqEb30fbZlMwYdd9jqK7Xez9tx+o665xGI2/FRT7NhjzC9Q6DVP49r2Xo
         YudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728660581; x=1729265381;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfEakMtjipcZbjXlN6+R0PDo0Z9g86WwST3PngXMQx0=;
        b=MEC2UPomRoqrWgNYjzmFaReD5a6CHWKwPyCxcZgl5L9gxkXTYUbcjmiNBUqD821gF1
         Gc/6VBK1kfgOs/d/FPKbJeZJpkpe1cbIoF6ANIYU5kEXpwGS2Nq/s2KFsPPEqhnPNXAm
         RYv8sGpp5qkJ1C8iorxuwwuB9GNBQ9KRxEi3lxcm/VDMxUe0QVuEgyKgPlQvmQuWgUHV
         x7uTZ3WW8BthEJn6DLwYq0NAISf2lUhncqgjQ3QzFDuXhDUVndZCMnArmz12Xs4QFaGK
         hYe9N4anNpx1SBNctcLZ/VJZ9o7BanARFM0DzwEvDMmDnP7Djaxl6gbN69AuyPXAlAZW
         eRQg==
X-Forwarded-Encrypted: i=1; AJvYcCUMeRhtpFlyCpOiVKWLuRUbu8wYLO0f3D26nMkhtyfsqIdOho8cZIwLfrKIjfpbdtPKQAcKHdChcav8@vger.kernel.org
X-Gm-Message-State: AOJu0YyUmHMWf3FZPzl9oEgWMw7Nr5rHqRq2veUG9Do66T5Q1GkuUQse
	jCtpuv56pjtF5EZlBYdXJtjaztfv4lVIJah58j19P4UTWe3dKHmahkxuOSC603NgeU2cLcOBTeK
	Y
X-Google-Smtp-Source: AGHT+IHgtz1x0nXARrJgLDPonSVb2k7CZhKElZ+N4WzyvXUVmzhbMekGN14tBxZaVtYhG/oDkXvWBQ==
X-Received: by 2002:a17:90b:4a08:b0:2c9:6a38:54e4 with SMTP id 98e67ed59e1d1-2e2f0dd81efmr3710515a91.41.1728660580594;
        Fri, 11 Oct 2024 08:29:40 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2d5eeafe8sm3361493a91.13.2024.10.11.08.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 08:29:40 -0700 (PDT)
Date: Fri, 11 Oct 2024 08:29:38 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Subject: Re: [PATCH v1 1/3] pinctrl: th1520: Fix pinconf return values
Message-ID: <ZwlEYi/AFCTWVOl5@x1>
References: <20241011144826.381104-1-emil.renner.berthing@canonical.com>
 <20241011144826.381104-2-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011144826.381104-2-emil.renner.berthing@canonical.com>

On Fri, Oct 11, 2024 at 04:48:23PM +0200, Emil Renner Berthing wrote:
> When Drew took over the pinctrl driver he must have changed
> all the -ENOTSUPP returns into -EOPNOTSUPP. This subtle change
> was most likely not spotted because it was never mentioned in the
> changelog of the patchset, but it breaks all the places in the
> pin control and GPIO frameworks where -ENOTSUPP is expected.
> 
> Fixes: bed5cd6f8a98 ("pinctrl: Add driver for the T-Head TH1520 SoC")
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> ---
>  drivers/pinctrl/pinctrl-th1520.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-th1520.c b/drivers/pinctrl/pinctrl-th1520.c
> index c8d2ee6defa7..03326df69668 100644
> --- a/drivers/pinctrl/pinctrl-th1520.c
> +++ b/drivers/pinctrl/pinctrl-th1520.c
> @@ -591,7 +591,7 @@ static int th1520_pinconf_get(struct pinctrl_dev *pctldev,
>  	u32 arg;
>  
>  	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
> -		return -EOPNOTSUPP;
> +		return -ENOTSUPP;
>  
>  	value = readl_relaxed(th1520_padcfg(thp, pin));
>  	value = (value >> th1520_padcfg_shift(pin)) & GENMASK(9, 0);
> @@ -636,7 +636,7 @@ static int th1520_pinconf_get(struct pinctrl_dev *pctldev,
>  		arg = enabled ? 1 : 0;
>  		break;
>  	default:
> -		return -EOPNOTSUPP;
> +		return -ENOTSUPP;
>  	}
>  
>  	*config = pinconf_to_config_packed(param, arg);
> @@ -661,7 +661,7 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>  	u16 mask, value;
>  
>  	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
> -		return -EOPNOTSUPP;
> +		return -ENOTSUPP;
>  
>  	mask = 0;
>  	value = 0;
> @@ -676,14 +676,14 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>  			break;
>  		case PIN_CONFIG_BIAS_PULL_DOWN:
>  			if (arg == 0)
> -				return -EOPNOTSUPP;
> +				return -ENOTSUPP;
>  			mask |= TH1520_PADCFG_BIAS;
>  			value &= ~TH1520_PADCFG_BIAS;
>  			value |= TH1520_PADCFG_PE;
>  			break;
>  		case PIN_CONFIG_BIAS_PULL_UP:
>  			if (arg == 0)
> -				return -EOPNOTSUPP;
> +				return -ENOTSUPP;
>  			mask |= TH1520_PADCFG_BIAS;
>  			value &= ~TH1520_PADCFG_BIAS;
>  			if (arg == TH1520_PULL_STRONG_OHM)
> @@ -718,7 +718,7 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>  				value &= ~TH1520_PADCFG_SL;
>  			break;
>  		default:
> -			return -EOPNOTSUPP;
> +			return -ENOTSUPP;
>  		}
>  	}
>  
> -- 
> 2.43.0
> 

Reviewed-by: Drew Fustini <dfustini@tenstorrent.com>

Thanks for the fix. This was something I changed due to checkpatch
("ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP") wihtout
realizing the implication.

-Drew

