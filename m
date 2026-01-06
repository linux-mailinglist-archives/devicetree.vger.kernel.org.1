Return-Path: <devicetree+bounces-251887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C5239CF7EF8
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:01:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 54F2D301CCE1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 11:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1FC337BA1;
	Tue,  6 Jan 2026 11:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nZRv1uO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D62337B9C
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 11:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767697285; cv=none; b=rFbIurmd/5Vxs73MdAykN6mJDm30gG8zM3TZzS/BStS7gojc/aFxG0poDXptp2PYKS27FB5NDYPaaO1i7la6Fr8NXeyVvbZuioS46xyG1twD+Xq4UuNzNpY4UXY074wc6JwAP4cSWeaKxQx5beAgJtjDuf7w54FDXkj0LGsKY7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767697285; c=relaxed/simple;
	bh=K8B1ITgIq3FUq81iGq9UYGee0jVJIvlcDFoY0m6i980=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dld/u80/x39aBhpLodUVZN65aoV+ZSQAsy/wYuTdMPxBecVdzFbnYOJvw+NFf/FtyGGnV2DlUlYmUlnu9CrHFAlB0LuRizprXUNJJmwka8yfqhOYNuHojroq5ZG5s2UhICvjZyhlzH460q1VF/fkwr7fNG3cVbPOpB6i5sEhU9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nZRv1uO3; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fbad1fa90so658819f8f.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 03:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767697282; x=1768302082; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O3m/v4VXTV6NMfNLvVjfAE6l9ij7+j/SxZwfjGUHi2c=;
        b=nZRv1uO3zkmd8QC5Vlihl4uoydpF7fR9m2RAkVFjUx9Xdj7uKX2uRSXip1oGOs+YGv
         wpbkvTFeG5xOJQb6GuGWeTLH/pSHdY+bHbRoI3VTCjJAvL9fHnOqiR49oT+w5qU7Lctn
         g5nkdyErB7GxgqhPSz0YLcQeFjkdfIVqKuvI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767697282; x=1768302082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3m/v4VXTV6NMfNLvVjfAE6l9ij7+j/SxZwfjGUHi2c=;
        b=SPSpU910bD/vMWD9WPbcD0oZUryFURL60rA88r4O2uzx1KZ39oyT/EmD/p3M1ewKQS
         74kvS3EqGSA/GbuJRCgZ2MRaVb/5O54w95+JMI5XHB7IHCUWq98sVs70teFcjdAB2eg4
         eSaadgGbCOJBIXKAmsMksj6gbY+uDiojrPuSXKL/UXvLZUctWCxq5TWfj77SsySC35ZP
         31y6AhKhQbQ8a5jO38I+RFKuF2O/6UKwtCIIBPJaQddVdpRo3ehiUTdTgbobrICNjCKN
         dDTCGBBnJ1WjkPgN35lqr5B/inX2gAoR2hzhqyfH3wnvzrHI4vG4FZ70mCXLsMhFQH8Q
         lquw==
X-Forwarded-Encrypted: i=1; AJvYcCUNuNVFweoeHZQ8WDPEhKdJ2CRy+8JPek1/u7JXol0r4103GyvFGkd7NDzRokjFT2PDbbik1SzibahI@vger.kernel.org
X-Gm-Message-State: AOJu0YwbSkXN7snTPOiaS2GuRfInEMqONhZkTZOYSz7IW7sh87qcwU7H
	eYLqbN4Lf9+tTua6whFH8YQ5GjKilP/DG8cUwSEagNlf3H4D+iswAPjnan24MlKOBA==
X-Gm-Gg: AY/fxX6SCQSNePkRsLux3W/CF7SfEK8NqLzEhBQrtr719UTIbgSpBBUHDTh08GdpvaZ
	7QTDtYCoBGeFgwDfoT2q1e7u2cSDyBLtaobANgxTDcKA29GAWaXVdcusljq78T3m/lJY1mIITr1
	P4PUvW73cSUNOWusUnrLtgJhUO2KCh7x0w76oKXcjIf5t8MQW5g2/yXjwFDhLubfAGokK0rVl0G
	JIbzdghkh9u8SNRsJwZzNHkya68Uz4IMaRxsYvcDcIRPi3qMzUZ5xaFpIwUqlB+zIoQGtqV6EoP
	xAhjjcnVO3oQgoyeejLaMhIh45f2/rENM2Q8zldA2iM+dMr/VwhInVBK6URgWXb6Cdr+9PH9jO/
	41AWZdAPKayKuJTo2Agko2LPLbYk2Ev7qIH+MkfVzQmLrrshZAgdb+ePI3UHsYXzb47cW4vlwVT
	umiqN9sCP5ZIEQd/R71A==
X-Google-Smtp-Source: AGHT+IG9g5Uruo7F3IpKCSwx4dA/EzxEcppJATTbysJnloBLnkO2XLfNlAmhjuyITGfSxfeZpj0FHw==
X-Received: by 2002:a05:6000:2c12:b0:430:f9c2:8500 with SMTP id ffacd0b85a97d-432bc9fc09emr2909739f8f.43.1767697281958;
        Tue, 06 Jan 2026 03:01:21 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e16d2sm4050362f8f.13.2026.01.06.03.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:01:21 -0800 (PST)
Date: Tue, 6 Jan 2026 11:01:19 +0000
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
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: add has-fn-map
 prop
Message-ID: <aVzrfwY8SrIAGn-e@google.com>
References: <20251231143538.37483-1-fabiobaltieri@chromium.org>
 <20251231143538.37483-2-fabiobaltieri@chromium.org>
 <20260105-helpful-ocelot-of-eternity-6bb1ee@quoll>
 <aVuYt24q6nihC4t0@google.com>
 <20260106-oryx-of-major-protection-10c4e3@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106-oryx-of-major-protection-10c4e3@quoll>

On Tue, Jan 06, 2026 at 08:27:10AM +0100, Krzysztof Kozlowski wrote:
> On Mon, Jan 05, 2026 at 10:55:51AM +0000, Fabio Baltieri wrote:
> > On Mon, Jan 05, 2026 at 08:52:56AM +0100, Krzysztof Kozlowski wrote:
> > > On Wed, Dec 31, 2025 at 02:35:37PM +0000, Fabio Baltieri wrote:
> > > > Add binding documentation for the has-fn-map property.
> > > > 
> > > > Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> > > > ---
> > > >  .../devicetree/bindings/input/google,cros-ec-keyb.yaml    | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > > > index fefaaf46a240..fa24b1cbc788 100644
> > > > --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > > > +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> > > > @@ -44,6 +44,14 @@ properties:
> > > >        where the lower 16 bits are reserved. This property is specified only
> > > >        when the keyboard has a custom design for the top row keys.
> > > >  
> > > > +  google,has-fn-map:
> > > > +    description: |
> > > > +      The keymap has function key layer. This allows defining an extra set of
> > > > +      codes that are sent if a key is pressed while the KEY_FN is held pressed
> > > > +      as well. The function codes have to be defined in the linux,keymap
> > > > +      property with an offset of keypad,num-rows from the normal ones.
> > > > +    type: boolean
> > > 
> > > You still did not answer to my previous question, why this is not
> > > deducible from the key map (presence of KEY_FN in the map).
> > 
> > The driver behaves differently with the fn layer is present, has to make
> > extra space for the extra codes and enable the logic to use it. I can
> > certainly detect it in runtime, would have to always allocate the extra
> > space even if not needed and check not only that there is an FN key but
> > if there's anything in the second half of the map.
> > 
> > I'm not overly enthusiastic about it, it's a bit wasteful on memory
> > (probably no big deal, half a kb of RAM I guess) and somewhat less
> > defensive to misconfigurations and in general I don't like the new logic
> > to be enabled magically, as a side effect. It'd be extra complexity for
> > the sake of saving one boolean property, but sure if you think that's
> > the way to go then I guess I can implement it that way.
> 
> Driver logic is not an argument here, we don't care about it. You should
> answer why presence of google,has-fn-map in DT makes sense when none of
> the keymaps has KEY_FN. Why this is a valid and desired configuration?
> 

Think I answered that, it felt like a clarer design to me. Anyway I got
the message will send a v4 with runtime detection, it's certainly a
valid option and works out for me.

