Return-Path: <devicetree+bounces-45417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA52E861D83
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B4B8B272D5
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 20:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E8A1474A3;
	Fri, 23 Feb 2024 20:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="NCQEjgzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156F7146E67
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708719716; cv=none; b=p1ur9pG5xsg4KLbg1656UDXbYjN+YhFIj5gqeQxpwx+jpI3IB8AdCCwiH6Ia8iTETuxoUbPDBDP+N+Q6glKrSCzBlFIgzeiZb04uLRHOwS8nwo70JXRm1G4RpN3L6yVLIoNdA7tc8EqNMbkjQqr8goyFplpW70tDW3NlK49nTYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708719716; c=relaxed/simple;
	bh=VLH2Mi4OrInm+33OQhSlzdebE3jFUI1zn/3KcepgOvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UWV2tqe8eQZaSV4Ul9jXQDRKkF0r/BZkrsU1nMAmFeMRZAQvLGtgeeXjgmCx+lCSsMZ69/7ycT2RhOe7kJWbpaMAzCoIJIwxPIyZ8/Joit6puZhwveUiHaplltLf7RGn8tnDpxvBYRiGK/a/ZM6oKsY6P9W0oVL40eSplpLhQns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=NCQEjgzq; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a3f5808b0dfso170835366b.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 12:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1708719712; x=1709324512; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tBho47Re0b/xThgmy+t3YEba2JQw5AvsTOKzKCpCvk8=;
        b=NCQEjgzqGzN7Hw9GHBo3t5dOKNLtoByfdMISyziQxmEDCrhOI//7nnjdU/5iE/9gcv
         6UXDaCfxcudqVEyuX/kuXsmfhEybfjtYu82/GyYJ9FDVei8NNLS5KggtJn+KbYwqJmCI
         7CjJFXsXYKLK6bqHrmP0AWE++YNuhesVLbwR/zIm1XiEemuttGgFQFh/i679L8l+9jH1
         XVseoDgbcp40ODLcPhq9vrelxATioGjZJxtSoz7kv7Eoq7bEGsAWiYeP8k6IgcqW/7rb
         rR30ZDJo4ixjNEkGHJs/Npo9N4EVEbCku51zg46pBVTXI9SiDPvNSSuczsfVaBQzKAiJ
         iCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708719712; x=1709324512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tBho47Re0b/xThgmy+t3YEba2JQw5AvsTOKzKCpCvk8=;
        b=YfuLE4qbKdwWZL0I/yFqSJxBJblus4db8+9z7M0FvTsdQ5qPtV5lmd5pgXPf9YkZ+t
         jRb93wogqXyrTFvQHY/ybVEW52YcxCcHKZYO6z0Yf51Yba2iWfTRNNEbJcoCdsJc3kkk
         HBL/67JYrUvWsvq4gmnMUQlmyCmb8uhi9UJb7RunCRAMlrHMo/9Lsc4OugUMuCdWGny7
         +hbS+TEzlQGozN23sGjT6GhaDd8lYzwNFtl12QzG2FqEWWVbIBgSMLBAeIB+hGClvybc
         JZ7hW/03RSLXnKiat3ifvCHK23+rxhizbann1PoX5MoX4aCiFA178Cbvb8J3NPm2Z8UT
         TiEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHgHwplzGwDllk7w5tF47da3L2rkyYifhaxuA9GGX4TmgU5aOKuAxy+QKzxtzExol5zpU2BAJwE2LmT4tnCkyujXA10nY3Tkbweg==
X-Gm-Message-State: AOJu0YxYalk5TbYnJ/2JbDgX0oR9zkZVBjsVnphc0yr0BR9ZygfXVpTy
	QhIdI62+b5XmHi0RFtCwuHVRy43e6NT0Wd3DFGqcWYYpufbvQG2bahgZN8RtGT0=
X-Google-Smtp-Source: AGHT+IHtWJagw673y+UMwer0QBUhU1HY4utHp5hJqo4P/vdLpAdLDdu+EQOh9utcOn95Uw0C/hTS8A==
X-Received: by 2002:a17:906:3709:b0:a3e:8223:289a with SMTP id d9-20020a170906370900b00a3e8223289amr593062ejc.31.1708719712213;
        Fri, 23 Feb 2024 12:21:52 -0800 (PST)
Received: from localhost (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.gmail.com with ESMTPSA id vh9-20020a170907d38900b00a3f1ea776a1sm3225743ejc.94.2024.02.23.12.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 12:21:51 -0800 (PST)
Date: Fri, 23 Feb 2024 21:21:50 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: net: renesas,ethertsn: Add Ethernet TSN
Message-ID: <20240223202150.GA1176528@ragnatech.se>
References: <20231121183738.656192-1-niklas.soderlund+renesas@ragnatech.se>
 <CAMuHMdU_CxNu-BF66POeqKv1_=ujBp8Z=cT=08crFxhgQ+gZ=g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdU_CxNu-BF66POeqKv1_=ujBp8Z=cT=08crFxhgQ+gZ=g@mail.gmail.com>

Hi Geert,

Thanks for your feedback.

On 2024-02-15 17:03:33 +0100, Geert Uytterhoeven wrote:
> Hi Niklas,
> 
> On Tue, Nov 21, 2023 at 7:38 PM Niklas Söderlund
> <niklas.soderlund+renesas@ragnatech.se> wrote:
> > Add bindings for Renesas R-Car Ethernet TSN End-station IP. The RTSN
> > device provides Ethernet network.
> >
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> 
> Thanks for your patch, which is now commit c5b9f4792ea6b9ab
> ("dt-bindings: net: renesas,ethertsn: Add Ethernet TSN") in v6.8-rc1.
> 
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
> 
> > +  interrupts:
> > +    items:
> > +      - description: TX data interrupt
> > +      - description: RX data interrupt
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: tx
> > +      - const: rx
> 
> What about the (17!) other interrupts?

I did consider them but compared to say ravb each rtsn interrupt have a 
rather lose description and no easy to define name. So I reasoned it was 
better to only name the ones we use as we can give them sane names and 
then as the driver grows with features we can extend the binding.

As each interrupt have a name this would not cause any backward 
compatibility issues right?

> 
> > +  rx-internal-delay-ps:
> > +    enum: [0, 1800]
> > +
> > +  tx-internal-delay-ps:
> > +    enum: [0, 2000]
> 
> These two should either have a default, or be required (like on
> EtherAVB, where we couldn't have a default because the absence of
>  these properties is used to enable a legacy fallback).

This is a good point, I have sent a patch to address this by adding a 
default value.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kind Regards,
Niklas Söderlund

