Return-Path: <devicetree+bounces-3322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C697AE462
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 06:06:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 4AE271F24FCA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 04:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 599591859;
	Tue, 26 Sep 2023 04:06:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC495184F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:06:31 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4E7BEC;
	Mon, 25 Sep 2023 21:06:29 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c02e232c48so132899051fa.1;
        Mon, 25 Sep 2023 21:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695701188; x=1696305988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGB+hW8EcgpXNNSjmf7fJ24sLwC+iJpETWg7Drt2OpU=;
        b=gaiPAfWopoJwjM8g7QJCmAJDfcmXLUWQPBia82fwVD4pdhcbNQi6cu1Im3QwH7/bx/
         xE1rByXkQC7JOQGHlwhmIwHKRVU46ixKA6+/sm+GPYVO6OGDjNKiex1+PNlrTHOf8fkN
         GJdlL347T6R40J1j3oFyuQhx1gUd0xz7JSdpeMYhvTHfXk1JfqNwov6yPiO+YMxsTP+W
         /BXu014NxAzEfhImPCnNUhFOZ8gFd/GRqsI9zyQbhhLx7cL/DOZ+Voh3Hr1kGd77uggo
         QDZPqmuORus5ew7+9YGgfQvsJirI4IvZhwAH7mDQ9+39LXKDS9XljyVpN/kLrCiiu2cM
         cgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695701188; x=1696305988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGB+hW8EcgpXNNSjmf7fJ24sLwC+iJpETWg7Drt2OpU=;
        b=QZdn6SQGxTtp8MB5doW/oYGNqZveAC2gIb5eQzu8n95wA2T30KQsk8qtWI6kQj8taU
         7Pm+5hIwyMb2tBSJYhBeMRgizLCqppfIoDdgH/h7gZ3BF1jM3T0GoY9yPV3yOpLEgzFG
         6LjYJM5rffXEdPtovSo42VKrBA7MfdGINjnpshKQkFfbQsz0sWrLRHRGJeI2Tj6BQTrO
         HkMSKDaNULiPx0SOBNQFSzggOaFzKqPh/KsWBaETunELnFNUnDl2haCvJ4rt2mBiKYo3
         X7a3f2ZubbgCd4vv/o8QeKxqbNIrt+GJrXKQjye1EP4/dXI/hT0woxOv4AvtnbimIHk6
         UGfg==
X-Gm-Message-State: AOJu0YxylVYgzAFxJMwka0DNGEIaI+Fep/FNEVSZ/3iGmy5Wqsj5g7MJ
	CrEoNXUjWXCnyx6LF0B73d8=
X-Google-Smtp-Source: AGHT+IFnZUohBRjAdg6nVKhBrCjO2Fo24nnQvaYhhpnODnccZ+1NZtjpOOBB8jCfNGJgy9YzuEpoYA==
X-Received: by 2002:a05:651c:118:b0:2bc:d94f:ad04 with SMTP id a24-20020a05651c011800b002bcd94fad04mr6668385ljb.13.1695701187599;
        Mon, 25 Sep 2023 21:06:27 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709063c0100b0099bc038eb2bsm7137424ejg.58.2023.09.25.21.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 21:06:26 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>,
 Serge Semin <fancer.lancer@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true" explicit
Date: Tue, 26 Sep 2023 06:06:25 +0200
Message-ID: <2783820.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>
References: <20230925212614.1974243-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne ponedeljek, 25. september 2023 ob 23:26:00 CEST je Rob Herring napisal(a):
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 ++
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 ++

For Allwinner:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml | 1 +
>  Documentation/devicetree/bindings/spi/rockchip-sfc.yaml         | 2 ++
>  Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 2 ++
>  5 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> index a6f34bdd1d3c..e1ab3f523ad6 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> @@ -46,6 +46,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> index 28b8ace63044..3b47b68b92cb 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -68,6 +68,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> index 9ae1611175f2..48e97e240265 100644
> --- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> +++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> @@ -50,6 +50,7 @@ properties:
>  patternProperties:
>    "@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
>  
>      properties:
>        spi-rx-bus-width:
> diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> index 339fb39529f3..ac1503de0478 100644
> --- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> +++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> @@ -47,6 +47,8 @@ properties:
>  patternProperties:
>    "^flash@[0-3]$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index a47cb144b09f..6348a387a21c 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -160,6 +160,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> 





