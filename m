Return-Path: <devicetree+bounces-126165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E339E079A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F24216ACCE
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D98ED208996;
	Mon,  2 Dec 2024 15:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DkRyrnDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFBD208962
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733153045; cv=none; b=CZ+pgLmvt1KsQNI8DaaSl3gsOHHffrW4a0OaOiP3RkyLx8HN9rkNzgoq+ySz0bGf42Ot7zRXd9tsSMwaNtXEEtFBkfyQ0MyLrviWeYS4mHdyVJpIZmdaDqleDlItZZAGsb1mbVIQ9yb97r/W39zVTbUFPudc9epDIXDWw61zBn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733153045; c=relaxed/simple;
	bh=emBsO7UD/fsFeG160T0J2TEDqg+OGFUi4iJaEE8IBNY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oALW0sjuCjSVUWf1TS6c55nGwK7aVJzqEvEl/ExTpXjqbAGpJbg9mbggPwXgpIJC/zzzgtWcLnJmTNLGxFvK211CsFb+9E6V0qmFqEzYiUrWBTp0jCuorDPJQTIYjZ2QYDDsGx1LhPkzKc8uKAZZXIAWZsYxQX/3bMzAJtsOq+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DkRyrnDG; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e38df4166c7so3536077276.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733153042; x=1733757842; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aBidcxxw0LkaUAD5/9IMQ9Iuz+pdOXkp8f04uFCwiXE=;
        b=DkRyrnDGRJDp26VILXj//3dtmFDuGra1t1T6iCCb+ftjsGYAdDdbSr1/CmY/Awpgt2
         DR6vcmaGeKlb2yWBJFqkY2+ZfmxImy9Wft+W0eq3m12r+zLLq09lZFiAyq3O1QBBiG5n
         A2+7iSTqfPI6H4QSDggQPO6xkchnjJ2I+IPOooD1yZ2hctRDynsDort9qvyiWtSaFtc5
         8tqFCRllsC/gYw4YmUijD67mUOGLj+6YGKmQhFiEkEFOBUiSSTvkQ+4/BdwYnOIPbj5x
         TZmvuGljRo5V4zi3L8hAQ1j4BM7JYJ91/ZoGUDtAFvRcQ+oIbth7K/46e8N6FWwCghKn
         drNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733153042; x=1733757842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aBidcxxw0LkaUAD5/9IMQ9Iuz+pdOXkp8f04uFCwiXE=;
        b=Lx+hq1T1LxMqxRYdcB+Dt80twD8EO3ldZ6D/f4o2MEiPbHk8kPnSjHA5abs22dkrAQ
         wxTd/H35zdtIreZ6zkt9cUgG40nllDCIUlF/R5AmD9g78ZqXgsfYDwnWNzqPCH4raW6+
         UXFbp3hhg/Tp+myQ39UV8Uymz5KMvyqUy28KDrOUG45wIZCiZ+TjmdawyI7/GujhOcen
         9djuHdkpbw4kMDWSGwxKBtJmNCxD3lUAwfMRymdvg8E/bqn9IxiNrE7oswTJwMEsxdVG
         NFrAGZt9/tkiHD3GeVzgvOnYs1cRrlFkusV/JlY5SyPWqs8ULyJVpRT45WjmOJDBxUTO
         7Vhg==
X-Forwarded-Encrypted: i=1; AJvYcCUkd5ScSCOZgQP38RppHCJd6+LBRLYkJpj51QwV47KXzNG6PzHuHFjPJh4Eof3Z4dEKpYbzE25Hb1K/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo+RuFLg/80y21XxLTHwzoxM3EDk2uDBVR452HLps/d52shDqd
	9xR8z7WcS/pQVoUzj3JWm468q1njpmIqm9isXwweidSF/pbfOIAcEp+zlSqv5XdouZz/KWhhSNM
	0lXoaIff/RXvfHr2DOGf7mW7IgJewndS8QDpafw==
X-Gm-Gg: ASbGncub/Jrod0iCn6ugUJzxzVb/WOyewjQn5Lz5kCPe27REJEuy0Exgmc+M8vof0qq
	NhgaE8cfe0RBKiFy/jP9Gwk87/hHkdbLR
X-Google-Smtp-Source: AGHT+IHloKnYMU2YPvEvU4xjaTsmIlSJr7XS8O22fOpOceAV6w9xzQeEE9Oq/ecfzP79HELT5y0lhlpm0hWJnPxFg30=
X-Received: by 2002:a05:6902:11c2:b0:e39:890b:a55c with SMTP id
 3f1490d57ef6-e39890ba7a7mr14479567276.20.1733153041992; Mon, 02 Dec 2024
 07:24:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113225602.1782573-1-robh@kernel.org>
In-Reply-To: <20241113225602.1782573-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Dec 2024 16:23:26 +0100
Message-ID: <CAPDyKFohGpnh0fCgktbeSatKyrD3Za7TsvnyB03xDmHh6AxKtw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: marvell,xenon-sdhci: Simplify Armada
 3700 if/then schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Hu Ziji <huziji@marvell.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 23:56, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> Properties are supposed to be defined in the top-level schema and then
> disallowed in an if/then schema if necessary. Move the "marvell,pad-type"
> property to follow this.
>
> "reg" can also be similarly described at the top-level with only the
> number of entries restricted in the if/then schema.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../bindings/mmc/marvell,xenon-sdhci.yaml     | 48 +++++++++----------
>  1 file changed, 22 insertions(+), 26 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml b/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> index cfe6237716f4..3f48d8292d5b 100644
> --- a/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> @@ -38,15 +38,9 @@ properties:
>
>    reg:
>      minItems: 1
> -    maxItems: 2
> -    description: |
> -      For "marvell,armada-3700-sdhci", two register areas.  The first one
> -      for Xenon IP register. The second one for the Armada 3700 SoC PHY PAD
> -      Voltage Control register.  Please follow the examples with compatible
> -      "marvell,armada-3700-sdhci" in below.
> -      Please also check property marvell,pad-type in below.
> -
> -      For other compatible strings, one register area for Xenon IP.
> +    items:
> +      - description: Xenon IP registers
> +      - description: Armada 3700 SoC PHY PAD Voltage Control register
>
>    clocks:
>      minItems: 1
> @@ -61,6 +55,17 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  marvell,pad-type:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum:
> +      - sd
> +      - fixed-1-8v
> +    description:
> +      Type of Armada 3700 SoC PHY PAD Voltage Controller register. If "sd" is
> +      selected, SoC PHY PAD is set as 3.3V at the beginning and is switched to
> +      1.8V when later in higher speed mode. If "fixed-1-8v" is selected, SoC PHY
> +      PAD is fixed 1.8V, such as for eMMC.
> +
>    marvell,xenon-sdhc-id:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      minimum: 0
> @@ -147,27 +152,18 @@ allOf:
>      then:
>        properties:
>          reg:
> -          items:
> -            - description: Xenon IP registers
> -            - description: Armada 3700 SoC PHY PAD Voltage Control register
> -
> -        marvell,pad-type:
> -          $ref: /schemas/types.yaml#/definitions/string
> -          enum:
> -            - sd
> -            - fixed-1-8v
> -          description: |
> -            Type of Armada 3700 SoC PHY PAD Voltage Controller register.
> -            If "sd" is selected, SoC PHY PAD is set as 3.3V at the beginning
> -            and is switched to 1.8V when later in higher speed mode.
> -            If "fixed-1-8v" is selected, SoC PHY PAD is fixed 1.8V, such as for
> -            eMMC.
> -            Please follow the examples with compatible
> -            "marvell,armada-3700-sdhci" in below.
> +          minItems: 2
>
>        required:
>          - marvell,pad-type
>
> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1
> +
> +        marvell,pad-type: false
> +
>    - if:
>        properties:
>          compatible:
> --
> 2.45.2
>

