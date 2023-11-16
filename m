Return-Path: <devicetree+bounces-16386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D689E7EE74F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 907EC280E5D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF65B3C466;
	Thu, 16 Nov 2023 19:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54CE6B8;
	Thu, 16 Nov 2023 11:17:16 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ce37683cf6so659916a34.3;
        Thu, 16 Nov 2023 11:17:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162235; x=1700767035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4w5UhWj3hbb4d/FKde11FknmcVtAxnC2jsZu5oUyN9M=;
        b=VCQsBH3+K4bCSPi7EpflONnV7CXEwAmUNWUCWB0eIvyAzdWml2gYJaytUlBzIt2QxX
         u0EY/gy/U2KwfXwLRIRE/jMz9w/P4jVU0BQ3pDqZ6heWG3m33uKZP/rKdQSpwxL1dS4X
         kbn6PQKRBGfTFisbsOvsMqkApdQrtUq7xNcQhJbovwx/xg9Bnuc6v2UAU7bf1OhQUwf6
         IlOxpiRnwBlEzNBxqQBHkMiza42l6KUVRBkmOIYXlAEmSidQPQEmd5impiAVZL5XxOO+
         flCygNjuiKFp589gV2zCqTZYlX3OB/Vi71uKLyJFdnnvLoVGhODleSCfe0OK39rttW/Y
         76og==
X-Gm-Message-State: AOJu0Yz0yNObyAFwzumW+idiqOQWRAWQLYL04FCNIk9P8u9iwKATpIR/
	Nxt3shm/b5y6mYiviL3qkQ==
X-Google-Smtp-Source: AGHT+IG0dWaW6tFrBElu5QUb3DSisr9iYALjGfSRL29jl6NjzlaYGp019y8ZX6nYjM5CogtUU/RLzg==
X-Received: by 2002:a9d:7499:0:b0:6bf:5b30:5b69 with SMTP id t25-20020a9d7499000000b006bf5b305b69mr10798478otk.17.1700162235627;
        Thu, 16 Nov 2023 11:17:15 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r3-20020a056830418300b006ce32aac3e4sm1034422otu.48.2023.11.16.11.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:17:15 -0800 (PST)
Received: (nullmailer pid 2970292 invoked by uid 1000);
	Thu, 16 Nov 2023 19:17:14 -0000
Date: Thu, 16 Nov 2023 13:17:14 -0600
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Aymeric Aillet <aymeric.aillet@iot.bzh>, Yusuke Goda <yusuke.goda.sx@renesas.com>
Subject: Re: [PATCH 1/4] of: add __of_device_is_status() and makes more
 generic status check
Message-ID: <20231116191714.GA2821275-robh@kernel.org>
References: <8734x9tda9.wl-kuninori.morimoto.gx@renesas.com>
 <871qcttd8v.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871qcttd8v.wl-kuninori.morimoto.gx@renesas.com>

On Tue, Nov 14, 2023 at 12:00:49AM +0000, Kuninori Morimoto wrote:
> Linux Kernel has __of_device_is_available() / __of_device_is_fail(),
> these are checking if the status was "okay" / "ok" / "fail" / "fail-".
> 
> Add more generic __of_device_is_status() function for these.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Tested-by: Yusuke Goda <yusuke.goda.sx@renesas.com>
> ---
>  drivers/of/base.c | 53 ++++++++++++++++++++++++++++-------------------
>  1 file changed, 32 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 8d93cb6ea9cd..d67cb650dcd6 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -415,15 +415,8 @@ int of_machine_is_compatible(const char *compat)
>  }
>  EXPORT_SYMBOL(of_machine_is_compatible);
>  
> -/**
> - *  __of_device_is_available - check if a device is available for use
> - *
> - *  @device: Node to check for availability, with locks already held
> - *
> - *  Return: True if the status property is absent or set to "okay" or "ok",
> - *  false otherwise
> - */
> -static bool __of_device_is_available(const struct device_node *device)
> +static bool __of_device_is_status(const struct device_node *device,
> +				  const char * const*strings, bool default_ret)
>  {
>  	const char *status;
>  	int statlen;
> @@ -433,16 +426,41 @@ static bool __of_device_is_available(const struct device_node *device)
>  
>  	status = __of_get_property(device, "status", &statlen);
>  	if (status == NULL)
> -		return true;
> +		return default_ret;
>  
>  	if (statlen > 0) {
> -		if (!strcmp(status, "okay") || !strcmp(status, "ok"))
> -			return true;
> +		while (*strings) {
> +			unsigned int len = strlen(*strings);
> +
> +			if ((*strings)[len - 1] == '-') {
> +				if (!strncmp(status, *strings, len))
> +					return true;
> +			} else {
> +				if (!strcmp(status, *strings))
> +					return true;
> +			}
> +			strings++;
> +		}
>  	}
>  
>  	return false;
>  }
>  
> +/**
> + *  __of_device_is_available - check if a device is available for use
> + *
> + *  @device: Node to check for availability, with locks already held
> + *
> + *  Return: True if the status property is absent or set to "okay" or "ok",
> + *  false otherwise
> + */
> +static bool __of_device_is_available(const struct device_node *device)
> +{
> +	static const char * const ok[] = {"okay", "ok", NULL};
> +
> +	return __of_device_is_status(device, ok, true);

Available is special compared to any other status check. Rather than 
passing a value to return, I would make this:

return __of_device_is_status(device, ok) || !__of_get_property(device, "status", NULL);

Rob

