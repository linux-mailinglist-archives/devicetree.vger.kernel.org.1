Return-Path: <devicetree+bounces-14160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2D57E2739
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45A802810AF
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9E924214;
	Mon,  6 Nov 2023 14:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84D7AD21
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:41:44 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3F02184;
	Mon,  6 Nov 2023 06:41:43 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6ce2cc39d12so2885335a34.1;
        Mon, 06 Nov 2023 06:41:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699281703; x=1699886503;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nKvqk5gir/9qqqDIfkQNJgvfbuZQ5kJzgHbwZKn9mQs=;
        b=u/0SaHgCOk0EpOow0Cp+rF2fvvvS95P/VIOcDVq57J8s43/1sBSYLdNxl/xqMCrasd
         6naIIrROplHEEHaapSvT6J8rv8tODlMxXFb9488QziZsxwA2QFofL5O0GBhv5khYcrCb
         xXHIR8eTp0/yu9kBZ+hD0w+84266akDo60jU1BAvSSefE7i0LiSpBiqPQ5ykMs5Z/ACl
         hQKGQkKbrlP46cMhlcvsbEo4YKMxstp4mg8Ptf6G4vYg9bNcVTf+NPeGXxVWZP3b9kwj
         7LYG6nPh1W6cJ0xCFi/Dwm4CkSG1d/PAGw2eT8T3Ha33ejIQ7Z0PFLp7RdSzNegWzt0B
         /EgQ==
X-Gm-Message-State: AOJu0YxLOfcb4Bb9wSzMR+gbbO5pTle9ke9t6eFWqK2bECgrBc69MrcZ
	Mvb7R3RXpWriJBwj3hHLrEGXFr6E8g==
X-Google-Smtp-Source: AGHT+IFGLVSQjQpsvTCqqKZz/oXWb4ln1j9IpZTysYqr4mTbsYvnPvKbsLqX2dGlf/8Kr9A3o8iOgw==
X-Received: by 2002:a05:6830:2085:b0:6ce:2733:f71b with SMTP id y5-20020a056830208500b006ce2733f71bmr31850416otq.26.1699281702959;
        Mon, 06 Nov 2023 06:41:42 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b24-20020a9d6b98000000b006bf0f95f702sm1268436otq.64.2023.11.06.06.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 06:41:42 -0800 (PST)
Received: (nullmailer pid 314184 invoked by uid 1000);
	Mon, 06 Nov 2023 14:41:41 -0000
Date: Mon, 6 Nov 2023 08:41:41 -0600
From: Rob Herring <robh@kernel.org>
To: Seven Lee <wtli@nuvoton.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org, YHCHuang@nuvoton.com, KCHSU0@nuvoton.com, CTLIN0@nuvoton.com, SJLIN0@nuvoton.com, scott6986@gmail.com, supercraig0719@gmail.com, dardar923@gmail.com
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: nau8821: Add DMIC slew rate
Message-ID: <20231106144141.GA312869-robh@kernel.org>
References: <20231101063514.666754-1-wtli@nuvoton.com>
 <20231101063514.666754-2-wtli@nuvoton.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101063514.666754-2-wtli@nuvoton.com>

On Wed, Nov 01, 2023 at 02:35:13PM +0800, Seven Lee wrote:
> Add input with DMIC slew rate controls
> 
> Signed-off-by: Seven Lee <wtli@nuvoton.com>
> ---
>  .../devicetree/bindings/sound/nuvoton,nau8821.yaml        | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> index 3e54abd4ca74..48c389276a15 100644
> --- a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> @@ -89,6 +89,13 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 3072000
>  
> +  nuvoton,dmic-slew-rate:
> +    description: The range 0 to 7 represents the speed of DMIC slew rate.
> +        The lowest value 0 means the slowest rate and the highest value
> +        7 means the fastest rate.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0

Don't write constraints in prose:

maximum: 7

> +
>    nuvoton,left-input-single-end:
>      description: Enable left input with single-ended settings if set.
>          For the headset mic application, the single-ended control is
> @@ -127,6 +134,7 @@ examples:
>              nuvoton,jack-insert-debounce = <7>;
>              nuvoton,jack-eject-debounce = <0>;
>              nuvoton,dmic-clk-threshold = <3072000>;
> +            nuvoton,dmic-slew-rate= <0>;
>              #sound-dai-cells = <0>;
>          };
>      };
> -- 
> 2.25.1
> 

