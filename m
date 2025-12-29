Return-Path: <devicetree+bounces-250110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A761CE64EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A43B30056F8
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4A4027F736;
	Mon, 29 Dec 2025 09:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WWMKuJWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6D92248A0
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001122; cv=none; b=U8yTTiV7+KJaqeFOgSyRZ7KwC6FkjzfLnGy9Vuk9feXB9ear9gYfiw7Np2aQfanjVIyeOiEobpZavv4IQ26v+k1nqF4PXDm7ROmC93ftjrHyy7dRU+AMPBz8DxZGagf31jw+ZjUJYYMyuHvaTVZYmdZNzhSYuKpt0fpT1gUw9p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001122; c=relaxed/simple;
	bh=kO0i91k+d7tY6/QG4tUs31NHp8dHfbbaZl7dtded2jI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQqsBZJCfZ2QMX6ElCC9zD38WbqkPGBTsUHZkqEbDSovHqwK3tLf1JXYDi7DGvZMHeEBJlLnA7+7OfOE0LtjthOepPEwip4KFhHN0NOXQ8fC3udffg0pMWJGY71Lo2OyGGi6ORPbfXI604pmnUuoQxZ7vR8JO9mwh7OzlLvPZtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WWMKuJWe; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so69790315e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767001119; x=1767605919; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2v6eGE/fsBCG08y0w+YOqZFZuaUBiOVQSCHWFP/Cm7Q=;
        b=WWMKuJWexeil8ckPYQpGGMns6r+o08XLexOJwKRXhZUiKHR/SQfTCfqb5nKfeB3NGo
         xsSi0y+eufJKfXfd+LjHj+4GSlYkLJerJi10V7fQ3m1N2td2tmDJvYNKvh9jyKtD0soO
         GSC56KLQ0Z0sWEs9SJgoYr1YHKK05HlGmkluihiSol0xNc25tyjp6wcl4fUHgqJVlMxu
         1gAu5JHFfv48Y9AI1quYP3+n6aIb+SJTWqadMRKPofElkDElU4o+HSoKjLpH8oAC7JNI
         cd/Bb6dJsxvuSASPW0kYcWsQ1IQOOR0JyHplBDSqHobBSOEDVa097BltUen2kfw4s2Ki
         B06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001119; x=1767605919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2v6eGE/fsBCG08y0w+YOqZFZuaUBiOVQSCHWFP/Cm7Q=;
        b=TL3lpOOZQegJFxq6ko4M9rt8pk4rNXOUqp68l9iZXaBm8G2tYj+46g/5fBxhG2mBoq
         A8a72tbX3cFyWbBHatIWfNBbUpt/OivnmmjGeBI9rms3kM79N4DP91A7hdoC85r2clFt
         EgBMZpvtWpSQJQYZRZ5Td+TQTBfGyaKwQoQgikQngLCLUXZtJT2Zv6ZPAm9ICrY1FyMa
         QAMeYEZy3QhFP00/U8akuUZqyjIzy9ia3rdVEtN49YSqSHBwbcgzlwLxBMRWS+ll9xPW
         Cms4//mMKTc7Hn7nya7RHF2J3hQMF67W2v8g9vTFF8jY9yvpktYyDq6vEF0NzhMn2F7K
         s2hw==
X-Forwarded-Encrypted: i=1; AJvYcCXg9CVmCSf1xh3Y92Bb4TFjnvRUE+sUWrrwmFQy7kPWlZsXHpEIIo4q/QRaciHQCNNiVZtWI0Mev8/e@vger.kernel.org
X-Gm-Message-State: AOJu0YyEIziWEwKezHAPamCTerSKex+7zjYWg/WDExgOBIJ1tP/jHNKf
	6i51urUMEY3TAdcbQi2fRyxyNI2MsCEIx98sou1SdyGHL4knpQhPKzRB
X-Gm-Gg: AY/fxX4flnc6nCgNF8tYqx31Oww4EiR+cO8SiRywKwY0vpNSezFN0mfz8wlg4HVYrGt
	/0D8jSbCr4tBnPhCoDBriBcJxHzzmGnKNf6WnxRhWSnQtfiygJW4XziRd7/dzJF6jcssHGZKEAm
	gbOLE482Phu0xazRt6snzV2gXBzL4GS8kGdKn9v8bMG0npAeD/dHek1zA4jtzJvrFbs8ERg6mBT
	Ofp6xiGOCuz/b7wb1fzliVoMJOt3KiviG0kfHOBUKoO2CqfhODCn0ouhkQudU9mmP+JS87+FEcw
	EKLRgRgQc+TSMvkb0+d1PfWUkNsmWaUTX90s5CKZUQLzlGcYvtbovEUyV7e1A4vV6NMHFEq3v9I
	OBItmdrNiUNT2CGE7zbY6z6zPGYjOPE3Z+X8xemNlip8grVH1HpvMUUWS/mQTE28x2kGcw3aqGW
	j3mQZ1sr+uowE=
X-Google-Smtp-Source: AGHT+IFmJBKrx79I0aO/TCtk1jPLio3pSmUtd1zLczM3bhThrb/I9UAqTUIaMvwAwmDnYrYkvxa1YQ==
X-Received: by 2002:a05:600c:314d:b0:47d:586e:2fea with SMTP id 5b1f17b1804b1-47d586e309dmr30248375e9.15.1767001119444;
        Mon, 29 Dec 2025 01:38:39 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:305a:a3c6:f52d:de0f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be273e4d5sm588774905e9.6.2025.12.29.01.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:38:39 -0800 (PST)
Date: Mon, 29 Dec 2025 10:38:37 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	horms@kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: net: micrel: Convert
 micrel-ksz90x1.txt to DT schema
Message-ID: <aVJMHQZYugDoWHD3@eichest-laptop>
References: <20251223133446.22401-1-eichest@gmail.com>
 <20251223133446.22401-3-eichest@gmail.com>
 <84bd049b-3c60-47e0-a404-be764758f5b1@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84bd049b-3c60-47e0-a404-be764758f5b1@lunn.ch>

On Tue, Dec 23, 2025 at 03:39:24PM +0100, Andrew Lunn wrote:
> > +      patternProperties:
> > +        '^([rt]xd[0-3]|[rt]xc|rxdv|txen)-skew-ps$':
> > +          description: |
> > +            Skew control of the pad in picoseconds. A value of 0 equals to a
> > +            skew of -840ps.
> > +            The actual increment on the chip is 120ps ranging from -840ps to
> > +            960ps, this mismatch comes from a documentation error before
> > +            datasheet revision 1.2 (Feb 2014):
> 
> > -  Device Tree Value	Delay	Pad Skew Register Value
> > -  -----------------------------------------------------
> > -	0   		-840ps		0000
> > -	200 		-720ps		0001
> > -	400 		-600ps		0010
> > -	600 		-480ps		0011
> > -	800 		-360ps		0100
> > -	1000		-240ps		0101
> > -	1200		-120ps		0110
> > -	1400		   0ps		0111
> > -	1600		 120ps		1000
> > -	1800		 240ps		1001
> > -	2000		 360ps		1010
> > -	2200		 480ps		1011
> > -	2400		 600ps		1100
> > -	2600		 720ps		1101
> > -	2800		 840ps		1110
> > -	3000		 960ps		1111
> 
> I think this table is more readable? But maybe without the register
> value, which is an implementation detail.

Thanks, you are right. I will add a table again in the next version and
drop the register values as suggested.

Regards,
Stefan

