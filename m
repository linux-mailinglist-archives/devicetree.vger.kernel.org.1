Return-Path: <devicetree+bounces-2114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 386D87A9AA5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B2971C211BE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD2718B1A;
	Thu, 21 Sep 2023 17:49:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2612618AE1
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:15 +0000 (UTC)
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A719F8F4A6;
	Thu, 21 Sep 2023 10:45:40 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id 4fb4d7f45d1cf-530e180ffcbso1402800a12.1;
        Thu, 21 Sep 2023 10:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695318339; x=1695923139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=baNlgOJnWePw9cKCL/heNAHkNhAX0XDqCt8diliLsFk=;
        b=a8Whe/KtQrWvjBHgfV23XE62aQGa47lilGpgEW7zCAoElZ7f47ULqmTJmYgsnonHun
         dMF34Cjjzor1nDW9ec4p5FwYsBe59sp+an/F6Sz9jqRcjeZbrVawlgjzUAsTzjp3ixdm
         6mI+gPdV5h8HQgbZ/fO+SBz/Wy0XfezdNyegaKCyfqiVEzR7bBc8OKC1xyzRsSBJWLdL
         g7n29HwRDskmrERHKRzZ3HOHQ52BgqiK4DpHhKHYnQSFKEHnuVe/7RBqD0I0k896H7nC
         sHmvapMBFyaGhOO0HKgHNHtxFcCPKZpRk9rGVw+vgy9P07nCkj9LoweMEGhncwkWPOTf
         7cRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318339; x=1695923139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baNlgOJnWePw9cKCL/heNAHkNhAX0XDqCt8diliLsFk=;
        b=BfXoqIEtAZXNPRFVcuE2CNYhODPSWVs0sZbHr5xGscJRhVKFr4olyaQ9vRtKUtvbIQ
         uYkc3zL0nCZVwVBe4jMxBaHKjFbsyK7HRLB7av1Zdl+WZ7rtCX6qECv3i+M4WRnUw6Ri
         SzoUcRJ9Ii25il2JXdUusUkXAH2JDAl046vKSgLreMeB/SuA5guhSqX7vJtksYbG/BNx
         vSKqu2qtgkWJ4+s+wOQd+zvHXaBunkfzqbdSWloCVMx0vApuOu/C+Y67DK9M5CsBvm7Z
         lZPAmAd4TSAnee2Pt9f23wWVFn7Gxy5Wl9uJIAudRNOxlzOUpWTKEwM+iP+gwBbuFcIU
         P6Iw==
X-Gm-Message-State: AOJu0YwhN/dqBlsC4oPVVK57BAm3pzEC4kswIDT48HCbAdqjSdZIxMs2
	RPQ4G8a9O15G/zLXsd1CIDoIR28tvrox0A==
X-Google-Smtp-Source: AGHT+IH0koU/bsuvVlM3BjX3ipEkbzBkUBpc5x70WcHc8JTAs4gsHs92ZrhfG3MpQgIZzAVa/GzWJA==
X-Received: by 2002:adf:f084:0:b0:321:52fb:5703 with SMTP id n4-20020adff084000000b0032152fb5703mr4879118wro.13.1695292223361;
        Thu, 21 Sep 2023 03:30:23 -0700 (PDT)
Received: from ubuntu ([2a02:810d:1640:10d8:fd07:b1e6:bd19:371d])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1379868wrt.22.2023.09.21.03.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 03:30:22 -0700 (PDT)
Date: Thu, 21 Sep 2023 12:30:19 +0200
From: Joerg Schambacher <joerg.hifiberry@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: a-krasser@ti.com, joerg@hifiberry.com,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ASoC: pcm512x: Adds bindings for TAS575x devices
Message-ID: <ZQwbO6BuBOTuCI4C@ubuntu>
References: <20230907160851.14241-1-joerg.hifiberry@gmail.com>
 <20230912151535.GA812148-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230912151535.GA812148-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am 12.09.2023 um 10:15 hat Rob Herring geschrieben:
> On Thu, Sep 07, 2023 at 06:08:51PM +0200, Joerg Schambacher wrote:
> > The TAS5754/6 power amplifiers use the same pcm512x driver with
> > only minor restictions described in the bindings document.
> > 
> > Signed-off-by: Joerg Schambacher <joerg.hifiberry@gmail.com>
> > ---
> >  .../devicetree/bindings/sound/pcm512x.txt     | 22 +++++++++++++++----
> >  1 file changed, 18 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/pcm512x.txt b/Documentation/devicetree/bindings/sound/pcm512x.txt
> > index 3aae3b41bd8e..b16cd0463695 100644
> > --- a/Documentation/devicetree/bindings/sound/pcm512x.txt
> > +++ b/Documentation/devicetree/bindings/sound/pcm512x.txt
> > @@ -1,12 +1,12 @@
> > -PCM512x audio CODECs
> > +PCM512x and TAS575x audio CODECs/amplifiers
> >  
> >  These devices support both I2C and SPI (configured with pin strapping
> > -on the board).
> > +on the board). The TAS575x devices only support I2C.
> >  
> >  Required properties:
> >  
> > -  - compatible : One of "ti,pcm5121", "ti,pcm5122", "ti,pcm5141" or
> > -                 "ti,pcm5142"
> > +  - compatible : One of "ti,pcm5121", "ti,pcm5122", "ti,pcm5141",
> > +                 "ti,pcm5142", "ti,tas5754" or "ti,tas5756"
> >  
> >    - reg : the I2C address of the device for I2C, the chip select
> >            number for SPI.
> > @@ -25,6 +25,7 @@ Optional properties:
> >      through <6>.  The device will be configured for clock input on the
> >      given pll-in pin and PLL output on the given pll-out pin.  An
> >      external connection from the pll-out pin to the SCLK pin is assumed.
> > +    Caution: the TAS-desvices only support gpios 1,2 and 3
> >  
> >  Examples:
> >  
> > @@ -50,3 +51,16 @@ Examples:
> >  		pll-in = <3>;
> >  		pll-out = <6>;
> >  	};
> > +
> > +	tas5756: tas5756@4f {
> > +		compatible = "ti,tas5756";
> 
> Is there anything new here? Just a different compatible doesn't justify 
> another example.
> 
> With that dropped,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
Thanks for feedback. Actually, there is nothing really new. More to show
the reduced availability of GPIOs. I'm preparing a new version of the
patch and I will drop the example.
-- 



