Return-Path: <devicetree+bounces-249877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6482CDFE83
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 16:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFE9730141EB
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 15:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F94525FA3B;
	Sat, 27 Dec 2025 15:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Fk53Uzd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D075B2571DA
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 15:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766850497; cv=none; b=aMpLrMOVM2dwAFinQ4n+uWpCQ7GEyWR8RRSB0RfrPZxK6aftd4oP0x6hbLkXXyvb3rWgmqFmGCDG/AQsZ3abr19ZoGj+KjXLDzkQfhcgq0hbmcnvazjcGYAX+7kM1wReD6f7rYgAYUpt2lMWPAASo/d/hyDnxsCMEOYgx0Ou6kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766850497; c=relaxed/simple;
	bh=6EyvenFkUbRfEc/p3VGn5q6/vzpXU8dt1a2C1/gKoHE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IxK/ddH+TV/QImNC3m11Ym5PrXxTPM3ytOcpnrqt05ghpwwnPpTKrwIddny3O+hNMFZGJXaIW1ls1tyn5opkJieMfGEshgFB/aD4ldoV0SI4NH9o9sAbnm8mpQLv8P5OQ/o/n5ih+NRzyZOr/1SX+yN3vnWEUyegZYTod8mYCkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Fk53Uzd4; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47796a837c7so51364385e9.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 07:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1766850494; x=1767455294; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r+FpSWC3Nc9MHvTyQKmZfza7qICMlSOsmY2JJtFLFDE=;
        b=Fk53Uzd4i7UdaJwJC6PZ4zKjkdsmvbtL98FOY2BlbEFJix6Q1zsQ227YrJ8dZYzB6X
         b2ObaJu14FC8AQSmm5ZTatNvhGfA+1VVKeIHhuVHhc3pu6XEHKMtSq3c/Y9rG6NY8QkC
         3Y9NaHDc6tuSWvvqiPlqky2YRitYTM0k6PYL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766850494; x=1767455294;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r+FpSWC3Nc9MHvTyQKmZfza7qICMlSOsmY2JJtFLFDE=;
        b=fSQ/nXOzNJvObci2MHVlDVWl4HiLf+sJM1DdiXiNH/ourF8A/WI3HR/QMNhUemQvAk
         kxgQ54uHbX3Ok1yxpmUrWj/7SJa4sNz/rI1exoWPQCkcN+T1dgEYKcrlmbdhizoaqkpu
         vsN6PkM/gQ3VP8Z0o77jjP3WbmyHA/gCh99BtR3uGRLIqsLZxcov1YnB2hx6BpvyoghH
         8Wcx/MPsUJIWxov70SmC0NLwcIYvtvPqIJaNCfTVh3V1VaJn64IUfZ4qPejbHaaIkKeS
         DNpsdrGXk4bH6VQFguDMNeOtEUUlUinT3gbRjyR+p5pcw8l/ujGalYnSXowqFQ9t+gDi
         RFeg==
X-Forwarded-Encrypted: i=1; AJvYcCXBxAyZ06p7bGqz3ZHANbFIQvxGZRb4X/Ear75j0ykQVBN13Mqnvy2BPhD9H4zBukMHH41Xcc3hviqH@vger.kernel.org
X-Gm-Message-State: AOJu0YxfMpjWDah0jvfbG4/Cev0yfNvc7nbFgKuboJzZ2y3PHjT0SVaV
	yQ/71aj8YCgXzBE+2EAhLXeI+kFlznzc5O9Hs20OAu1dx/FeSbGuaCW55LIAAa2Mjg==
X-Gm-Gg: AY/fxX6OQr8pWXk47sepWyYMuvEayYz50BeQltfBimeF+lNYnSQWcyekjTbFzSpw/Am
	HZ9TBBnFus33mBAJCZ/i2uvP3o7t9a3aIQXFNHA3flzCmJrj3gBvr/8T3TPJBtjU9gi69yOgtLj
	LNxt+C6+lIn2d3pz9tczZxh8NWkez8YB4iNRUbOhZLXG6MhIaGuWZNVD/r/iIkm9oIDZ1Hh+GaA
	OcJxn1w9qSnDJqBrV+0CdPjukTVPJiUC0udHpHlfDjdNAGsNBgZJkthr7HEDIGxmB/13qXIuJuV
	p4YaoRDSIOVckqV2H3cdaf4oWoZxrL2VIofeAFpus0s/FwuoXvXiwlCie791JxVSgNQ6KeoldtS
	6eyavDoT+H+l9Z8lOYEVqg5yk+9+vktHnW1GnFs0zYa0pcJ/chGDqkyfZ/tRsaqyE0dg+ieC13a
	PgqNrCcI2RYULghdK07Q==
X-Google-Smtp-Source: AGHT+IEgCUZpTF8yVMFQbUK1f2VfqWGes79Q7SFq4BTt5go/LyghCIYXvXp0oSXhz5n1SME9CswxKg==
X-Received: by 2002:a05:600c:470e:b0:46e:506b:20c5 with SMTP id 5b1f17b1804b1-47d19589469mr282225585e9.26.1766850494231;
        Sat, 27 Dec 2025 07:48:14 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa477bsm51705043f8f.36.2025.12.27.07.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 07:48:13 -0800 (PST)
Date: Sat, 27 Dec 2025 15:48:11 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: google,cros-ec-keyb: add
 use-fn-overlay prop
Message-ID: <aU__uxDmeUq20Mg3@google.com>
References: <20251224152238.485415-1-fabiobaltieri@chromium.org>
 <20251224152238.485415-3-fabiobaltieri@chromium.org>
 <20251227-laughing-white-dalmatian-f9d98a@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251227-laughing-white-dalmatian-f9d98a@quoll>

On Sat, Dec 27, 2025 at 01:44:26PM +0100, Krzysztof Kozlowski wrote:
> > diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > index fefaaf46a240..437575cdf352 100644
> > --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > @@ -44,6 +44,14 @@ properties:
> >        where the lower 16 bits are reserved. This property is specified only
> >        when the keyboard has a custom design for the top row keys.
> >  
> > +  google,use-fn-overlay:
> > +    description: |
> > +      Use a function key overlay. This allows defining an extra set of codes
> 
> What is a function key overlay? Overlays are DT term and therefore are
> not suitable for bindings.

Ok, guess I can rename it to `use-fn-key` or `use-fn-layer`, open to
suggestions really.

> > +      that are sent if a key is pressed while the KEY_FN is held pressed as
> > +      well. The function codes have to be defined in the linux,keymap property
> > +      with an offset of keypad,num-rows from the normal ones.
> > +    type: boolean
> > +
> >  dependencies:
> >    function-row-physmap: [ 'linux,keymap' ]
> >    google,needs-ghost-filter: [ 'linux,keymap' ]
> > @@ -132,6 +140,23 @@ examples:
> >              /* UP      LEFT    */
> >              0x070b0067 0x070c0069>;
> >      };
> > +  - |
> > +    /* With function keys */
> > +    #include <dt-bindings/input/input.h>
> > +    keyboard-controller {
> > +        compatible = "google,cros-ec-keyb";
> > +        keypad,num-rows = <8>;
> > +        keypad,num-columns = <18>;
> > +        google,use-fn-overlay;
> 
> Difference in one property does not justify new example.

Sure but when the property is set then one has to specify the extra
codes in the linux,keymap property and this examples shows how. I'll
drop it if you want me to but I think there's value in it.

> Please organize the patch documenting the compatible (DT bindings)
> before the patch using that compatible.
> See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46

Ack, will do for v3.

Thanks for the review.
Fabio

