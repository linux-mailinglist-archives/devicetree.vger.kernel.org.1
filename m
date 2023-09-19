Return-Path: <devicetree+bounces-1502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D39F7A6B8A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 21:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE3092813E7
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79E5328A2;
	Tue, 19 Sep 2023 19:23:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F84F30FA5
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 19:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31B15C433C7;
	Tue, 19 Sep 2023 19:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695151384;
	bh=L9B6iQFYVFE8/QUAlzZYDGUhWzMyXslVtHTNTP0/pg0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nXMjocKI9U/ID2nceoowFp0f1rdOUerNUb0a/Dc78S45mJJZvivEDg7/PE0kd0n19
	 pjbXlHJms5NC23Wc8jj/Ie2VrbCZ80U5saYJBunoauCWjHX5SBPdlFlmLv5fGLB9/C
	 2bLkwEsGyciU5gcwhx7CAy95HM/HkXloV05f6e7o1LAklUDLDWdvbISThXUAEdM0lb
	 I9oyGoxutjNzKUt5BV6JVCrgNZfryd87eVN+qqgffEXdIFUPwkbVp7bgStNicQutla
	 eUmAFGl/zpns+Np8UJx8MBUlNGVTpLpuUAQ2PjW/zgGT3B/VwOnCz3v6zeonnLr+ZR
	 5H6+AKxcr0ESA==
Received: (nullmailer pid 56749 invoked by uid 1000);
	Tue, 19 Sep 2023 19:23:02 -0000
Date: Tue, 19 Sep 2023 14:23:02 -0500
From: Rob Herring <robh@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, patches@opensource.cirrus.com
Subject: Re: [PATCH 1/5] dt-bindings: ASoC: cirrus,cs42l43: Update a couple
 of default values
Message-ID: <20230919192302.GA51154-robh@kernel.org>
References: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
 <20230919103116.580305-2-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919103116.580305-2-ckeepax@opensource.cirrus.com>

On Tue, Sep 19, 2023 at 11:31:12AM +0100, Charles Keepax wrote:
> The bias sense is being enabled by default in the driver, and the
> default detect time is being dropped slightly. Update the binding
> document to match.

That's not really a compatible change. If I wrote my DT expecting bias 
sense was disabled by default then the OS changes behavior, my 
platform behavior would change. Maybe that doesn't matter here? IDK. 
It's on you if this breaks anyone, so:

Acked-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
>  Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
> index 7a6de938b11d1..4fa22fa70ace5 100644
> --- a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
> +++ b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
> @@ -83,7 +83,7 @@ properties:
>        Current at which the headset micbias sense clamp will engage, 0 to
>        disable.
>      enum: [ 0, 14, 23, 41, 50, 60, 68, 86, 95 ]
> -    default: 0
> +    default: 14
>  
>    cirrus,bias-ramp-ms:
>      description:
> @@ -97,7 +97,7 @@ properties:
>        Time in microseconds the type detection will run for. Long values will
>        cause more audible effects, but give more accurate detection.
>      enum: [ 20, 100, 1000, 10000, 50000, 75000, 100000, 200000 ]
> -    default: 10000
> +    default: 1000
>  
>    cirrus,button-automute:
>      type: boolean
> -- 
> 2.39.2
> 

