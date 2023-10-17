Return-Path: <devicetree+bounces-9353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9997CCC61
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:34:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B28371C2097C
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122EE2DF61;
	Tue, 17 Oct 2023 19:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204522EAEF
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:34:43 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD5DC4;
	Tue, 17 Oct 2023 12:34:43 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1ea45b07c59so1516588fac.0;
        Tue, 17 Oct 2023 12:34:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697571282; x=1698176082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+6mXWeDRt6o7fuGwuDOyCooBMwhCyvxnxAXJHdY95E=;
        b=eZCnWRu/e7l0kWpLXCMVAQqbAeGY1CSlJfFHk28YMMVXJiy1YM60Ho05UTUz86V0SL
         /NekdgMfNMcIm4Gis2TCiwewFmpuJenTL8ODnGWLm6VNdkL+N9v8265ITAP8U0Ja8tv8
         An+AsxKcVAgOnbFGH26g7HDP7jyRRoFyzRCMhCAXwh2mfEISuDZR54USjZNXwPiR3J4Y
         ff5lODd4d70iRltmnh0Qum9O2ZQ0hg/+I4ji8p3YxJA/sSMowhfCMzRSs2GKALCfb1jL
         HpBIHLw2Cf90ThxDvVXugMGeScUDsOWyDhxJ/h0d2WHjqPwd1KHPYM42kex2nfBk4ylW
         54xg==
X-Gm-Message-State: AOJu0YypfcyRZmuHnb57uB6WlRflpUKTmzUt4czX6VeWVNzX+NHStqi2
	TVE+vDAzqb5vJBwqphLgdg==
X-Google-Smtp-Source: AGHT+IGoF4k9W8ulvRERINdWfZ/SgkNtX2KbwPeBIHaX2dYY2wdVlTIdNlFfK9n0lRWOhTMdcUZN+w==
X-Received: by 2002:a05:6870:104f:b0:1e9:bb7b:6dd0 with SMTP id 15-20020a056870104f00b001e9bb7b6dd0mr3235767oaj.55.1697571282217;
        Tue, 17 Oct 2023 12:34:42 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z18-20020a056870461200b001e169e7268csm374214oao.53.2023.10.17.12.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:34:41 -0700 (PDT)
Received: (nullmailer pid 2554948 invoked by uid 1000);
	Tue, 17 Oct 2023 19:34:40 -0000
Date: Tue, 17 Oct 2023 14:34:40 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, andi.shyti@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios
 property
Message-ID: <20231017193440.GA2553498-robh@kernel.org>
References: <20231016023504.3976746-1-chris.packham@alliedtelesis.co.nz>
 <20231016023504.3976746-2-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016023504.3976746-2-chris.packham@alliedtelesis.co.nz>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 03:35:03PM +1300, Chris Packham wrote:
> Add reset-gpios and reset-delay-us properties to the marvell,mv64xxx-i2c
> binding. These can be used to describe hardware where a common reset
> GPIO is connected to all downstream devices on and I2C bus. This reset
> will be released before the downstream devices on the bus are probed.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> Notes:
>     Changes in v2:
>     - Update commit message
>     - Add reset-delay-us property
> 
>  .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> index 461d1c9ee3f7..7223797b0572 100644
> --- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> @@ -70,6 +70,12 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  reset-gpios:
> +    maxItems: 1

It would be worth saying this is common for all downstream devices on 
the I2C bus here.

> +
> +  reset-delay-us:
> +    description: Delay in us to wait after reset gpio de-assertion.
> +
>    dmas:
>      items:
>        - description: RX DMA Channel
> -- 
> 2.42.0
> 

