Return-Path: <devicetree+bounces-18402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA047F652B
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B3D71C20F26
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566173FE57;
	Thu, 23 Nov 2023 17:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DFzdOu5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3522B171B
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 09:19:14 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-d9ca471cf3aso1039761276.2
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 09:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700759953; x=1701364753; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WDJYrmtNCIUgBOwBSSL6LRWpJjXJzrwGqwfLZWO8IyQ=;
        b=DFzdOu5XT5IUX9fSr0l9fvliDSyr5vRUcDw9YPXrsFR5hKYUwUP36f7CN6xSpKf+HR
         iRTCNFoko4S/DegreD70QPQAWieByI6K/1AFQcvsq9XxE1Mn+b1WmCOk7Lw2FZ70+U/o
         +DF4LrDFMHRdoR3c4rezUEWXjhORu76OEKd9dj+VsdJl7wg+ZHOC4kIZ9v+9zJwN0gRL
         hNsA49wW/ywcCPKSkFNBrkWD8M6wgwcGCm4tzmrhxgxxYO+J1C7ZRoTTdpdyK3aIKG85
         nThlxp2/4GuWuwHuHY8yvlEF72EIRx7wjlYhhlxOZP3fJX9z2XOnWXRt8osE/t+pWILR
         knVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700759953; x=1701364753;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WDJYrmtNCIUgBOwBSSL6LRWpJjXJzrwGqwfLZWO8IyQ=;
        b=sCf6ZD7RsjDlfkXX97vLRy2ogpoddgbLu8T4+40CEqou+SqHfS5BohAnAxNNTuSdWN
         eHdggzdJ8xIJWZrCGgzZ2qEgWD0rqOVTZr3qP4BbfWpVSljGBc9HmK96cybom+W331Yt
         X3XAnM/9XE0O4PSs2bY1vDyWAHv6dve7uZP9cjVWwMEYiAkeNJwitZUuJsXjIltq365i
         zq81Q85hAtkr5kgX6dkAE7EO3noSJ6W0pDBcfORKqjeejVkELUR6nqSpRfhH61QmL1fk
         2ymSVfST9ZMMCUmmqVd+3haqM7wowjB7u2O2My4sO2CyC+7cgGlNYjMWMVtslDXgEnPX
         I+Rg==
X-Gm-Message-State: AOJu0YyMkxyy/yb8BBZyhT5oHiyfnpxNIQDnWNkFZaajsfhFEvRRmCHB
	4memTuljI3Z0lJhCnx9Y6rvnFrbpOVMdjnluqm6n6A==
X-Google-Smtp-Source: AGHT+IGT2udCJz5BPSeOk3YH2WTr86oiAessLfh8FLsQCx64BtWfnypvCEPOKUg6aGqq2V/JfmXDaQglA91rbdQEg2c=
X-Received: by 2002:a25:808d:0:b0:db4:7ac:feb5 with SMTP id
 n13-20020a25808d000000b00db407acfeb5mr4596961ybk.15.1700759953249; Thu, 23
 Nov 2023 09:19:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115203254.30544-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115203254.30544-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 23 Nov 2023 18:18:37 +0100
Message-ID: <CAPDyKFp=zNBH2Qo_hhF-mrptYAwWjjunTJX=3Q5e_5uZamGVdQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: Document RZ/Five SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Nov 2023 at 21:33, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The SDHI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,sdhi-r9a07g043" compatible string will be used on the
> RZ/Five SoC so to make this clear and to keep this file consistent, update
> the comment to include RZ/Five SoC.
>
> No driver changes are required as generic compatible string
> "renesas,rcar-gen3-sdhi" will be used as a fallback on RZ/Five SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 7756a8687eaf..27cd985b1006 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -56,7 +56,7 @@ properties:
>                - renesas,sdhi-r8a77980  # R-Car V3H
>                - renesas,sdhi-r8a77990  # R-Car E3
>                - renesas,sdhi-r8a77995  # R-Car D3
> -              - renesas,sdhi-r9a07g043 # RZ/G2UL
> +              - renesas,sdhi-r9a07g043 # RZ/G2UL and RZ/Five
>                - renesas,sdhi-r9a07g044 # RZ/G2{L,LC}
>                - renesas,sdhi-r9a07g054 # RZ/V2L
>                - renesas,sdhi-r9a09g011 # RZ/V2M
> --
> 2.34.1
>

