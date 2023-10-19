Return-Path: <devicetree+bounces-10146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1E17CFCC4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76771281F86
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB33225AE;
	Thu, 19 Oct 2023 14:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFYDZo5l"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FB32FE0F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:32:44 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAC9510DF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:32:30 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cab2c24ecdso8063925ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697725950; x=1698330750; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+XNrx3US1TBoOT89cC/5dM/an9l4kgmeujKRHDCLupM=;
        b=IFYDZo5lAbF2e10ozpQXYA9YrKwGIuwspFDgA+0fUygPYHP5/v2JqhCVXAPVIGWlQC
         qgWDZ+6PvRDa2X/1GBKbyhbQHpyalEKtHfm+EPtsuheiljoGk1cG4b9FbHFwTECAjT68
         lu9CYAoA5A9u21MeQztev2qtCYokCoYTLt4gvOetS+byi0lnkKVYNxW/aOWr53uKOjnU
         XSzLN3Nh1b+DNkpen+QYkC+qWIYYjJkCYH4wfewUnE8XOZLieNMwtwmAzdUcmjp2ByZr
         17FJ+Ksl31izGAhRcN1+0yLsbCvzq7eguMETPKWT3j5aq5iRkawbahM5R8TEA1AFj8TS
         6ArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697725950; x=1698330750;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+XNrx3US1TBoOT89cC/5dM/an9l4kgmeujKRHDCLupM=;
        b=JMs+PdVGAx4Gj3l6U4iCYnOE9/jJwkpwCjyxJeMOl7dJcIPBe3Xw8LaQuWuAdD5G6F
         GOU1JgX0rodNZO0RkMAA9hOFPgpgOTm3X+0ijI3kjyypD51X8vAvCKKHjIcqFjjW7yxl
         BbXmEqT2uEl+B+miQgYGrd129YnqPZEGK0a2vMtjeSlvlkQ5grkAIXnioPxLGK5gn1JY
         xx/tw5TxS7RtOgEmPhikJWNqb7OK/JaOmqEQaxKNc6d/5tvRxmY5BJIFr18Ehf4ZoMQV
         Go+gOcyE73ihpSEqrAUdOimjCnSESddNzZpSGlD+wfHCwA4EjWJTnKci+nfDxca3lCUL
         pBYA==
X-Gm-Message-State: AOJu0Yw/y15H92Q3VK0HCUT0B8kOJtTg71Anq8EsMO3aRw3oM5SzhBHD
	WALnypD8rozARkn0GkmtepkWsZEKuH2m9cxz4vOXng==
X-Google-Smtp-Source: AGHT+IF0maLNEBc0Dq3xbTv91IIXRq9WGF5Xiw5WZ5EZSw0JzAXHB7waQNn5r9NmgLXvWrREApajxxBXEDUsi9Q9LUc=
X-Received: by 2002:a17:903:238c:b0:1c9:d25c:17c6 with SMTP id
 v12-20020a170903238c00b001c9d25c17c6mr2158169plh.1.1697725950072; Thu, 19 Oct
 2023 07:32:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231019100639.4026283-1-andre.draszik@linaro.org> <20231019100639.4026283-2-andre.draszik@linaro.org>
In-Reply-To: <20231019100639.4026283-2-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 19 Oct 2023 09:32:19 -0500
Message-ID: <CAPLW+4=DG2g1=fZB9do_xb+q2ZU+BcyTgH5i15rqWoi_WUcdVQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: serial: drop unsupported samsung bindings
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, alim.akhtar@samsung.com, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 5:06=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> Now that no implementation exists anymore for
> samsung,s3c24(1[02]|40)-uart, remove those bindings from here as well.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b=
/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> index 8bd88d5cbb11..d45079ef7bd9 100644
> --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> @@ -24,9 +24,6 @@ properties:
>        - enum:
>            - apple,s5l-uart
>            - axis,artpec8-uart
> -          - samsung,s3c2410-uart
> -          - samsung,s3c2412-uart
> -          - samsung,s3c2440-uart
>            - samsung,s3c6400-uart
>            - samsung,s5pv210-uart
>            - samsung,exynos4210-uart
> @@ -96,7 +93,6 @@ allOf:
>          compatible:
>            contains:
>              enum:
> -              - samsung,s3c2410-uart
>                - samsung,s5pv210-uart
>      then:
>        properties:
> --
> 2.40.1
>
>

