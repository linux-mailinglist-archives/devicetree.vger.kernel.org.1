Return-Path: <devicetree+bounces-6080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E12497B9D1D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0485C1C20941
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FC16182A0;
	Thu,  5 Oct 2023 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TkVI5vH4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B239F9C6
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 12:58:30 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B4026A72
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 05:58:28 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-533df112914so1574710a12.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 05:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696510707; x=1697115507; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=54uUEylq3LVuurRVtb2mIY1GDBu2n1bSehibVDW31Ek=;
        b=TkVI5vH4Mq8NwWi2aiPtB6u7px28PwXRXDUNBhejq/y1pfLKUjoVJPR5LOz4h9+S/O
         VSb/iSVm0/MRjkx6STM8vVC1EuVqOJ290GzSRYJXeYVSdFE0vdyNLGVl3GvNhWgRE5sm
         RsB6CWMr5IcauVrc4HIFXIgc7e8TOvxWpvVmszNLUkfuGTUyi1dUJG2qLP8oC5Ld+lAj
         IPGwHSILgWzda7Ddm8a9G2Al3ix4IXZiRisjZVZUnX9Kvn7ES4SYTCD/JRhtrMB+moHN
         8EPAXLQ/YViemrrRxKhosF7QyP+3bz9FWR2cYOmjndupHzynSmJcKDseeAYRm4TkA9XW
         NxhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696510707; x=1697115507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54uUEylq3LVuurRVtb2mIY1GDBu2n1bSehibVDW31Ek=;
        b=tACjuX9N3UN50xfIGGbwZOWzljfgzRF+xc6HUjefx2+9RN7gwxM5rucU94cQmUwhB3
         XXZvhuj+CsIaV4JlGgltmsWv4p4kgALjB2n2Xi63iZnrjSjjN6WYgVT8ou2tYV6kylfR
         7dr7FulogB5kyGE+lV29Lv2XODAqrj0icec6O4XIga+70x/VOAaelTDH0OGtmVoxYBgI
         vqTWny1QOnstt0GZGsydQP56caqwfsAsYRw0ZVpb1D4bTqPaV58JLF+OCr6Ep2RxvWej
         YaXcd/FiRvtkZ53rGIKBm7aZ9DiPrlnWiMsv449kRB9Ol3gD/JSZiSszSzkpEa2ZWOMP
         qHfA==
X-Gm-Message-State: AOJu0Yxhv9LK/mZQpYJWC7aDlRnvbZQMSpSgWy9eWKdtUnZJwu3y44cK
	rX9EC+zN5decQXnjLdapQr9uuA==
X-Google-Smtp-Source: AGHT+IGYliWIqnSbYurYXmldF5bpXzcFNUK7z8v11/xiPWf8HMiN9f4fcRM4OMhil9K85Li760ospg==
X-Received: by 2002:aa7:d945:0:b0:523:2e30:aaee with SMTP id l5-20020aa7d945000000b005232e30aaeemr4359227eds.32.1696510707341;
        Thu, 05 Oct 2023 05:58:27 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id m4-20020a056402050400b00533f111b61dsm1024857edv.68.2023.10.05.05.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 05:58:26 -0700 (PDT)
Date: Thu, 5 Oct 2023 13:58:24 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: backlight: Add MPS MP3309C
Message-ID: <20231005125824.GC4874@aspen.lan>
References: <20230925122609.78849-1-f.suligoi@asem.it>
 <20230926130113.GB4356@aspen.lan>
 <DU2PR01MB8034F448F6E66BAC3823CDB1F9C4A@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
 <20231003102138.GB69443@aspen.lan>
 <DU2PR01MB80349344FB8CB1415BFA917DF9C4A@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
 <DU2PR01MB8034F17A9C81FE198CCAC5B7F9CBA@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DU2PR01MB8034F17A9C81FE198CCAC5B7F9CBA@DU2PR01MB8034.eurprd01.prod.exchangelabs.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 04, 2023 at 03:18:24PM +0000, Flavio Suligoi wrote:
> Hi Daniel,
> ...
> > ...
> > > > > > +required:
> > > > > > +  - compatible
> > > > > > +  - reg
> > > > > > +  - max-brightness
> > > > >
> > > > > Why is this mandatory?
> > > > >
> > > > > There's no point in setting max-brightness when running in I2C
> > > > > mode
> > > > > (max- brightness should default to 31 in that case).
> > > > >
> > > > >
> > > > > > +  - default-brightness
> > > > >
> > > > > Again. I'm not clear why this needs to be mandatory.
> > > > >
> > > > >
> > > >
> > > > Ok, you are right, I'll remove max-brightness and default-brightness
> > > > from required properties list. I think to change these properties,
> > > > for the pwm dimming, into a clearer:
> > > >
> > > > - brightness-levels (uint32)
> > > > - default-brightness-levels (uint32).
> > > >
> > > > For example:
> > > >
> > > >   brightness-levels:
> > > >     description:
> > > >       Number of brightness levels. The actual brightness
> > > >       level (PWM duty cycle) will be interpolated from 0 to this value.
> > > >       0 means a  0% duty cycle (darkest/off), while the
> > > > brightness-levels
> > > represents
> > > >       a 100% duty cycle (brightest).
> > > >     $ref: /schemas/types.yaml#/definitions/uint32
> > > >
> > > >   default-brightness-level:
> > > >     description:
> > > >       The default brightness level (from 0 to brightness-levels)
> > > >     $ref: /schemas/types.yaml#/definitions/uint32
> > > >
> > > > Example:
> > > > brightness-levels = <10>;
> > > > default-brightness-level = <6>;
> > > >
> > > > What do you think about this solution?
> > >
> > > If you want to introduce a brightness-levels property then I would
> > > expect it to be defined with the same meaning as pwm-backlight (it's
> > > not relevant to the bindings but ideally it would be implemented by
> > > refactoring and reusing the code from pwm_bl.c).
> >
> > ok, I'll use the brightness-levels property as used in pwm-backlight
> >
> > >
> > > Same with default-brightness-level although I'm not sure why one
> > > wouldn't just use default-brightness for new bindings (doesn't
> > > default-brightness-level simply do exactly the same thing as default-
> > brightness).
> >
> > ok for default-brightness instead of default-brightness-level
>
> Just a question: default-brightness-level is the index into the brightness-levels array.
> But, if I use default-brightness instead of default-brightness-level,
> should I consider default-brightness also as an index into brightness-levels array?

Yes.


> Or, in this case, have the default-brightness to be equal to one of the values inside the
> brightness-levels array?

When there is a brightness array (and there is no interpolation) then
it is indexed by brightness. The values in the array are not
brightness (e.g. the controlable value describing the output of the
hardware). The values in the table are merely the PWM duty cycle...

Main difference is, with a correct table the brightness can use an
appropriate logarithmic power scale (which matches how humans perceive
brightness) instead of the linear scale provided by the PWM duty cycle.


Daniel.


Brightness and "index into the brightness-levels array" should be one
and the same thing
>
> >
> > >
> > >
> > > Daniel.
> >
> > Thanks an best regards,
> > Flavio
>
> Thanks,
>
> Flavio

