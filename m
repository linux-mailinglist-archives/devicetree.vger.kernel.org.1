Return-Path: <devicetree+bounces-12567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C73A37DA288
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82CA92825F1
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB29C3FE38;
	Fri, 27 Oct 2023 21:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9953C08B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:35:46 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE78A129;
	Fri, 27 Oct 2023 14:35:45 -0700 (PDT)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-581f78a0206so1381989eaf.2;
        Fri, 27 Oct 2023 14:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698442545; x=1699047345;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S01/m+UkdNRB6iMJPFGQoMRsSYHCWIY0UEsdJKSaDcE=;
        b=TXMaaiKx8JABdH5L70p3xHUQQRyG879VnQqmRvld2hqggsXrGaubnFPCcrK5J2iLOL
         DulAJ+BBSAfqOn6b4SkHqsOaUBnDgI4oAcOVN10Qbh0LFHxTbjzPEjDBDRY4pP/2jzgR
         FUJrXnNbHkR4G97zRXt3K3zeU1xJT8Ym43l9bbfG6cM0LkzxCS+QklkGHyNEsZW9U8Ds
         P92IytWNTYVrenMA/MZcJIFaflMcqIMeNsLjSJC5IlZjKelXa/5vS2un+6nIs6qXMFGi
         ydrw8ZpsjzmYxo0+bh7OTTm4qmZPhYqmBwiqQgYno8k/D/RgE+pbdhZ5P9//Tx5aGiYB
         rFcQ==
X-Gm-Message-State: AOJu0YzsVJZI3F6bFFpVAc+C7JwjTL/MspdbYuY/WvwXBEUTeXg94Vpu
	KniljzJ+k8OkSOe49Rgv/ANIdTLgBQ==
X-Google-Smtp-Source: AGHT+IHC3Ocx06EeQtGzauTEivlJu9qRN/UWQolL0W2b0N/emKZ2p5F/Qqyuf0mOd25BGAXFc+0TQw==
X-Received: by 2002:a4a:eace:0:b0:586:b79f:b0ee with SMTP id s14-20020a4aeace000000b00586b79fb0eemr4106284ooh.5.1698442545087;
        Fri, 27 Oct 2023 14:35:45 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c4-20020a4aacc4000000b00581eb0bc164sm526287oon.0.2023.10.27.14.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:35:44 -0700 (PDT)
Received: (nullmailer pid 3412526 invoked by uid 1000);
	Fri, 27 Oct 2023 21:35:43 -0000
Date: Fri, 27 Oct 2023 16:35:43 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Seven Lee <wtli@nuvoton.com>, broonie@kernel.org, lgirdwood@gmail.com, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org, YHCHuang@nuvoton.com, KCHSU0@nuvoton.com, CTLIN0@nuvoton.com, SJLIN0@nuvoton.com, scott6986@gmail.com, supercraig0719@gmail.com, dardar923@gmail.com
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: nau8821: Add DMIC slew rate
 selection
Message-ID: <20231027213543.GA3405817-robh@kernel.org>
References: <20231027082144.639369-1-wtli@nuvoton.com>
 <20231027082144.639369-2-wtli@nuvoton.com>
 <20231027-pronto-prideful-2cf3415a9d87@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027-pronto-prideful-2cf3415a9d87@spud>

On Fri, Oct 27, 2023 at 03:11:35PM +0100, Conor Dooley wrote:
> Hey,
> 
> On Fri, Oct 27, 2023 at 04:21:43PM +0800, Seven Lee wrote:
> > Add input with DMIC slew rate selection
> > 
> > Signed-off-by: Seven Lee <wtli@nuvoton.com>
> > ---
> >  .../devicetree/bindings/sound/nuvoton,nau8821.yaml        | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> > index 3e54abd4ca74..01028b7ff85c 100644
> > --- a/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> > +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8821.yaml
> > @@ -89,6 +89,13 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> >      default: 3072000
> >  
> > +  nuvoton,dmic-slew-rate-selection:
> > +    description: the number from 0 to 7 that sets the DMIC slew rate.
> > +        The unit is mV/ns. 0 is the slowest, and 7 is the fastest.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    maximum: 7
> > +    default: 0
> 
> I meant make the property in terms of the unit, so
> nuvoton,dmic-slew-rate-volt-per-sec (or similar, Rob would likely know
> better how he likes the unit suffix for a more complex unit like this
> one) and then make it an enum with possible values corresponding to
> the real values that putting 0, 1, 2, 3 etc into the register produces.

From what I've seen, you often don't know what units the h/w settings 
correspond to. Often it's just fast, medium, slow or something. And 
here, 0 doesn't make sense if the units really are mV/ns. 

So I'd just drop '-selection' and be done with it. (And clear up the 
units part).

> 
> Cheers,
> Conor.
> 
> > +
> >    nuvoton,left-input-single-end:
> >      description: Enable left input with single-ended settings if set.
> >          For the headset mic application, the single-ended control is
> > @@ -127,6 +134,7 @@ examples:
> >              nuvoton,jack-insert-debounce = <7>;
> >              nuvoton,jack-eject-debounce = <0>;
> >              nuvoton,dmic-clk-threshold = <3072000>;
> > +            nuvoton,dmic-slew-rate-selection= <0>;
> >              #sound-dai-cells = <0>;
> >          };
> >      };
> > -- 
> > 2.25.1
> > 



