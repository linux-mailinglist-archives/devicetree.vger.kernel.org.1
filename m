Return-Path: <devicetree+bounces-106706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1849298B691
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 10:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9230F1F21DEA
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 08:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB251BE229;
	Tue,  1 Oct 2024 08:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iqhe7qvw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3183B1BD514
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727770236; cv=none; b=C937n2gB4LbtYRM0GnDQRedRc2XRiEOmHc/PmqlrA4obatQLTbTE9aqMYFVIr39NjbsmMqINMj6MY87ScbRYbKo9cA9VynQR/vrd/aTU7yxuc3Jp3cHak3HBAMvG00Ccvvob6VJ51SUxdgtB1I/hm5mxYbs3wlNRF23QyucTHy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727770236; c=relaxed/simple;
	bh=xDBEBJYP/Tdw9WDuI3MHDdod4ymMNREYAh/l2E6YSV8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TX44d/LCyfxgGwWkS3rGXO4Bb8nJ1bKQV/VIEt1qG0KJAebH9eo/1mS+gIJvzlUDGrt+U/egeag4pGRt165/CH+06RjdjQGz6gTRRXpUxbDQEsOaFWZcyLxzXQWBSizp/ms0B8d5ebKVm4wBMsiTbjrHk5irTtbUs7mLjJ3QGuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iqhe7qvw; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cae6bb895so47569285e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 01:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727770231; x=1728375031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mt71aA3aNionD9vjty8trgPSbvpRPNwvwgRBKUpuCro=;
        b=iqhe7qvwgsAYOosPsxBxNtKnzSPvRJLpAEnOTsufYh6RP+Zf47Eqdh2lIJTo4tYReK
         fkrPWRlKu1pwS6GPAHiDrilHxefninkzuT6A0X5jXF5Yrb6/9ojRBE8D9gb1H6j2ATLg
         O2ayBumTl6pP+YqVJzxheTL27FyT3mjY4v59mPqCtamdYRCrHDNCTsjYHlCvbAkvDVeu
         kZn/9UdqYRRG5yOIH0z3ZpMX+cwXQYE+NFPPnootd+p/+Sxdxn7TxdA4vd9MW0uy8K7D
         /Z5rhSunAM3LdBm+H3xF8A+8zICD3pbKKcAfPT2o5A/EoQ8f1UZ9xaoceZfI52YPyNG+
         mlpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727770231; x=1728375031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mt71aA3aNionD9vjty8trgPSbvpRPNwvwgRBKUpuCro=;
        b=fIC/jDXXqzkxcNQ+eX5a7XIBUsVFOKE1laz8q42C+bzov3+HXgQ6FAbMO2J1X0hQSj
         H3HCIM1RHKshpFQdcSslY46zJaERM5PViabeMlo+kAw0KThoFcsOMWEqgDmpfTCwVLY3
         HOvTYF7FFNfIdBdS9XX+jhejad4dnKAR3UmHQZXtm9ojmdacGr9Gqm1YSq3+3Biqn/0I
         7fkJoZKyqM9WSaCzwLR5UtYs3tUSqQ6AnCUln1aeq+j8FKzTtsU0ERyJVp4TuLLwCDau
         Qz8Brq/RTaVaMW1pmIqvIG5SAYdVXskE/VCnYLvcF5PmZZwok85hPlx/ewhJQhhd9nYr
         y5/A==
X-Forwarded-Encrypted: i=1; AJvYcCVGnd4A0Qvjy2UjidTxdeMCdLYZAS/zJ/Ziwyp/OD22adggRUinzaGE9Oe65iRd9XSNZwBBb1NjfSTx@vger.kernel.org
X-Gm-Message-State: AOJu0YwP7aXV0wdFr9WmEcC6J8CnuT7fA7Gqkdq/bgM4qP4EFtFKzL51
	Pm5Td/Mdn+5YOQpixy664HZhvqobqZiDrHyAspgqB4rImT17jbELwBKx1UWUHHM=
X-Google-Smtp-Source: AGHT+IFAT2GKz+3bbbUxTwJ5qGuV5dXG3CAZRzMSRP57EqszCzBxYwM1Phs9qCxbipijlK+Xp1Ma5w==
X-Received: by 2002:a05:600c:458b:b0:42c:b1ee:4b04 with SMTP id 5b1f17b1804b1-42f58488161mr101014635e9.28.1727770231366;
        Tue, 01 Oct 2024 01:10:31 -0700 (PDT)
Received: from dfj (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f57e13524sm125973965e9.37.2024.10.01.01.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 01:10:29 -0700 (PDT)
Date: Tue, 1 Oct 2024 10:09:11 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 04/10] dt-bindings: iio: dac: ad3552r: add io-backend
 support
Message-ID: <bih7fzhv6ecpk2lkszsnweiduycc6ensofxpjjrfxwqz7wyplt@3mtqxpl7bsc6>
References: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
 <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-4-a17b9b3d05d9@baylibre.com>
 <20240929115150.6d1c22b3@jic23-huawei>
 <oh2xoym6dwvfn5lbzx3j5ckd3gfzvl2ukohrs4ukumkv6kzwi5@ume3z224gjta>
 <20240930154958.00004507@Huawei.com>
 <ipnqs4uektoysenkr7jvf6ic2rh56n3e5fmmheay323yhavs7u@th7qmxwmkiqo>
 <453ab98b-618f-45ba-9eab-e462829d25ae@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <453ab98b-618f-45ba-9eab-e462829d25ae@baylibre.com>

On 30.09.2024 14:20, David Lechner wrote:
> On 9/30/24 10:08 AM, Angelo Dureghello wrote:
> > On 30.09.2024 15:49, Jonathan Cameron wrote:
> >> On Mon, 30 Sep 2024 16:15:41 +0200
> >> Angelo Dureghello <adureghello@baylibre.com> wrote:
> >>
> >>> On 29.09.2024 11:51, Jonathan Cameron wrote:
> >>>> On Thu, 19 Sep 2024 11:20:00 +0200
> >>>> Angelo Dureghello <adureghello@baylibre.com> wrote:
> >>>>   
> >>>>> From: Angelo Dureghello <adureghello@baylibre.com>
> >>>>>
> >>>>> There is a version AXI DAC IP block (for FPGAs) that provides
> >>>>> a physical bus for AD3552R and similar chips, and acts as
> >>>>> an SPI controller.  
> >>>>
> >>>> Wrap is a bit short. Aim for < 75 chars for patch descriptions.
> >>>>   
> >>>>>
> >>>>> For this case, the binding is modified to include some
> >>>>> additional properties.
> >>>>>
> >>>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> >>>>> ---
> >>>>>  .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   | 42 ++++++++++++++++++++++
> >>>>>  1 file changed, 42 insertions(+)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> >>>>> index 41fe00034742..aca4a41c2633 100644
> >>>>> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> >>>>> @@ -60,6 +60,18 @@ properties:
> >>>>>      $ref: /schemas/types.yaml#/definitions/uint32
> >>>>>      enum: [0, 1, 2, 3]
> >>>>>  
> >>>>> +  io-backends:
> >>>>> +    description: The iio backend reference.  
> >>>>
> >>>> Give a description of what the backend does in this case.  I.e. that it is
> >>>> a qspi DDR backend with ...
> >>>>   
> >>>>> +      An example backend can be found at
> >>>>> +        https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
> >>>>> +    maxItems: 1
> >>>>> +
> >>>>> +  adi,synchronous-mode:
> >>>>> +    description: Enable waiting for external synchronization signal.
> >>>>> +      Some AXI IP configuration can implement a dual-IP layout, with internal
> >>>>> +      wirings for streaming synchronization.  
> >>>>
> >>>> I've no idea what a dual-IP layout is.  Can you provide a little more info
> >>>> here?  What are the two IPs?
> >>>>  
> >>> IP is a term used in fpga design as "intellectual property", that is
> >>> intended as a functional block of logic or data used to make a 
> >>> field-programmable gate array module.
> >>>
> >>> A dual layout is just 2 same fpga modules in place of one.
> >>>  
> >>> I can add a "fpga" regerence to be more clear.
> >>
> >> IP I was familiar with.  I'm more interested in what each IP is doing in this
> >> case.  Or at least an example of what sort of split of functionality might
> >> make use of this.
> >>
> > 
> > I have an image of the project (that is under development or testing now),
> > not sure how to attach the image here, btw, something as
> >  
> >           axi_ad3552r_0  ----------->---- qspi0
> >               sync_ext_device --.
> >        .- external_sync          |
> >        |                         |
> >        |-------------<-----------                        
> >        |
> >        |   axi_ad3552r_1 ----------->---- qspi1
> >        `- external_sync
> >  
> > My understanding is that it's just a method to use a octal spi,
> > duplicating the transfer rate. I can collect more info in case.
> > 
> 
> No, it's not for octal SPI. It is for synchronizing the data
> transfer to two different DAC chips.
> 
> I think we need a bit more in the DT bindings for this to fully
> describe the wiring shown. We need to indicate that both of the
> two AXI AD3552R IP blocks have external_sync connected, so a
> adi,external-sync flag could be used for this. Then we also need
> to describe that sync_ext_device is only wired up on one of the
> IP blocks. So we would need a separate adi,sync-ext-device flag.
> 
> Then the driver would use this information to A) know that we
> need to set the external sync arm bit when starting buffered
> reads and B) know that the buffered read for the IP block
> instance with sync_ext_device needs to be started last so that
> the data streams for both DACs will be synchronized.

I thought to add this sync stuff thinking that it will be needed
soon, btw, it is not used right now for a single IP. 
I suggest to remove it entirely, since it is actually dead code,
and this hopefully can fast up things.

-- 

Regards,
  Angelo
       

