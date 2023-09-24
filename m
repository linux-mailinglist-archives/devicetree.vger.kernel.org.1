Return-Path: <devicetree+bounces-2774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C107AC7EE
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 039981C204F9
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06C21398;
	Sun, 24 Sep 2023 12:15:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB011368
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:15:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F3A4C433C8;
	Sun, 24 Sep 2023 12:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695557703;
	bh=gPXi1eCu0s1miFDC6/sjRthketQrCVLtEzbLlQDVX8A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Qk6DIL+3JVpmfVsGfuoTpzwbFVb9R3arD5zA7u3hs/aC2/zlIcu8eY42UZNKpk/WB
	 VQLEpgsOMaBOzuS/Zq/z9yN5DHTUHYJqKEtcsPLhbzExB2eAoHtRQpgNsgXCN5TK6F
	 f7xsKcNGTBChaF45vSHxymIeu/ZSTMBHrzc3vGAA4Mxkywz3h1/qdeddPhQ1ChGIL+
	 gPiOpJmMNIa2WdrBQkyhoNkaYT4AqbsGLLb8n7RVVuh90DJFuHf83J3bmgV1n0Pcq3
	 JL+5mvuBGvPPaXRFvmIxV6eEqxIHsZBpzeLfQywDuxDCLTdCaLJHzQbkZYZFsdDi7x
	 D0We8EeEiiA1A==
Date: Sun, 24 Sep 2023 13:14:54 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Jonathan Cameron <Jonathan.Cameron@Huawei.com>, Matti Vaittinen
 <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Angel Iglesias <ang.iglesiasg@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Andreas Klinger <ak@it-klinger.de>,
 Benjamin Bara <bbara93@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] iio: pressure: Support ROHM BU1390
Message-ID: <20230924131454.7cae02a9@jic23-huawei>
In-Reply-To: <9d929df3-ac51-7d1f-ec00-856849cc70c7@gmail.com>
References: <cover.1694760170.git.mazziesaccount@gmail.com>
	<f378a401cec4fb0b9287b52ab159f00dd77569a6.1694760170.git.mazziesaccount@gmail.com>
	<20230917113518.7c4bb1a0@jic23-huawei>
	<a5c19874-32ba-60bf-6e72-9139a2873c7e@gmail.com>
	<c987f401-81c4-00e5-51a7-88a6a38a2ca2@gmail.com>
	<20230919155340.0000076f@Huawei.com>
	<7181e56e-9488-25c9-3d03-64e49b2c952a@gmail.com>
	<9d929df3-ac51-7d1f-ec00-856849cc70c7@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 21 Sep 2023 12:00:39 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> On 9/21/23 11:17, Matti Vaittinen wrote:
> 
> > Another thing to note is that, when we build the available_scan_mask 
> > array - we should either pay attention to the order of masks - or change 
> > the iio_scan_mask_match() to not accept first matching subset but to go 
> > through all of the masks unless it finds and exactly matching one (and 
> > in general prefer the smallest subset). Not sure this is worth the extra 
> > cycles though.  
> 
> Replying to myself and to those who I perhaps managed to confuse :)
> 
> As a result of above pondering I wrote this:
> 
> @@ -411,6 +418,8 @@ static const unsigned long 
> *iio_scan_mask_match(const unsigned long *av_masks,
>                                                  const unsigned long *mask,
>                                                  bool strict)
>   {
> +       const unsigned long *smallest = NULL;
> +
>          if (bitmap_empty(mask, masklength))
>                  return NULL;
>          while (*av_masks) {
> @@ -418,12 +427,16 @@ static const unsigned long 
> *iio_scan_mask_match(const unsigned long *av_masks,
>                          if (bitmap_equal(mask, av_masks, masklength))
>                                  return av_masks;
>                  } else {
> -                       if (bitmap_subset(mask, av_masks, masklength))
> -                               return av_masks;
> +                       if (bitmap_subset(mask, av_masks, masklength)) {
> +                               if (!smallest ||
> +                                   bitmap_weight(av_masks, BITS_PER_LONG) <
> +                                   bitmap_weight(smallest, BITS_PER_LONG))
> +                                       smallest = av_masks;
> +                       }
>                  }
>                  av_masks += BITS_TO_LONGS(masklength);
>          }
> -       return NULL;
> +       return smallest;
>   }
> 
> but ...
> ... I see a problem that some of the channels may be more costly to 
> access than the other. It could be that reading some of the channels is 
> just a matter of getting a cached value, while other could require a 
> long measurement time and access to significant amount of registers. So, 
> the knowledge of preferred scan masks should indeed be on the driver 
> side. Hence, the ordering of the masks in the order of preference makes 
> perfect sense. What we could do in the IIO core side is still go through 
> all of the available masks to see if we find an exact match. I guess we 
> could also document the fact that the order of masks matters.

I should have read on in the thread. Indeed - ordering of preferences needs
to be in driver control for exactly the reason you came up with!

Thanks,

Jonathan


> 
> Thanks for listening - and sorry for the noise :)
> 
> Yours,
> 	-- Matti
> 


