Return-Path: <devicetree+bounces-219442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB97B8B1E4
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 21:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47C951B28A1B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 19:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40ED231326C;
	Fri, 19 Sep 2025 19:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XguB15u1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA922BE65E
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 19:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758311549; cv=none; b=SaVS+DpRijCNQ1ZWH9gQNCYM7pUOqGB+BAuStxpMfpNDuiEtXOzsmvPVYLmoQru5S/XnjL339guuta62UwGgQO/yiYjHKE2EpvVwlVeoOYbdG81q6IhQKkhvuIiA7NMnD2QjYjF5l+AmOllxzxEylpgs/Wk58q1ztJrrL5UCoFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758311549; c=relaxed/simple;
	bh=7BNN/+6O9B5eINKNRJxGqr5Cq/Dm4JwptewHXdKQIbE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OGUWf3XYhLqcE+b8PZbonsHs1eoqMwqko3TzOk5IcGUi8Gh66gJDMuNklZ+9Y7FYBKH+D/hsH0cp6dp/357Rfz6KEgZf0hQVcKq1KSF0kTMl6M9wZFKfJe17HA1xmavAg0ztAjXstk6LLRx8BKbTC/O2b22/jsgYEyteeRwACkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XguB15u1; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2445826fd9dso30113865ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 12:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758311546; x=1758916346; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0ksb2nXkV2vduJHijEyrj53A5/36Sjs0B083iUbWv3U=;
        b=XguB15u1tXiIdmYjedxVhyM0Oa7/Wenq1kXtTjBgdhq/bitlSZyFGKX4Q+UgFqfJ9k
         MXTA3uOZdFl82hdGRXb+JNjwMkjVgkE3YtHOtHezpbTGHnctwgO9P0osXw3dFFAHoiHu
         NIWXkzN2pnbupFhgxgCdLB45xSUP8EJ7DZHm1+y+k4BY3C2CRSnCCyHY/P5jPjbs5p9P
         qhQrexH7god+RJR+uKGX3dbaxy8Fr6+/Cu6Y6lQiXAo3wlxlZc5goWZgvIem9FnO4poO
         I1zzUASdin2Nf+kuav1c/tnQQQnGf1RVZnNC2T7pIC5TTM21Q7Uj0viPZk0waPADzcxW
         lqUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758311546; x=1758916346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ksb2nXkV2vduJHijEyrj53A5/36Sjs0B083iUbWv3U=;
        b=k+LL/titrvh+qkGTWDa2HC9YLaQWhSoWsQKhrbLeonvR1kz/V8N4w/ooqpcxdPrD4c
         +bV56wbkIbATs7tjsfDRAA0ezDSHNW0eN7mfxH4u6sTNrWRhSWZ0kQr+6kXLYkvlbXgY
         sSPrBCYg3cmGAcVjhyIldpEsiWZtJjwHXVy2ZYpqgKekJg4tYgglOpX7j9QwCAwhR8CO
         wZQh2T6xXvOBYPoUat9wdwaF7ESwkpeJXzmgF1B3nP0k5FKJFoMMcdEVCuWuQLTu9Ya8
         15fMlYCe68FaPpg6a1uz7QuxpZY2DEnx8juTLkqxQFZA/viRFGTINc5Or6QVo6sghPz/
         iuzg==
X-Forwarded-Encrypted: i=1; AJvYcCXdTf4bq0Gz4JYNREFZ2UYMw+IM4m+f0YhyE2MfYMDjOQa0XhDiox1EnXls55/hDVZSBstP1SvJyaQD@vger.kernel.org
X-Gm-Message-State: AOJu0YzjPCHuR/7HQLLcm8qLDAZD6FjxCJlX9vE+GJjYQKIvxY2dSEDA
	uV3pWccCjI15kNG2Yp6SUMIUBlaTWGm1GMxCSx3QRmU6SCAnkp9xWwyk
X-Gm-Gg: ASbGnctMappoy0hmsu6M8rViwo+NGIODTDqkHtFI8KJGjcSYcytVxHs3Xqc1nNp+WL6
	J1fzb+KzyDvRZTEC6UT2/h3usla0yWRWMrP8bpNYpPH2DJm3lUQ2X0KfoFmzeOOlrll1onjVjqs
	cpVjOQuZIMv8wlYje+5bvV4kHNCu3EqfsQY6pqBn6ToRhUGJkp0LVQwdGTbjxrDvBeZuupX/N5m
	3PkRYhwwqie10HH60eyCqDsuuYWOMe7QsNapj5HZMlzPEkwclUnGaCvsz5jMQgdv7CvMk3mrr8M
	B7y3ALPE3x4+BernHmnWR+hq3HxpATK4x2cPp6kCeorG0Q4cgt8M3yV8p8qla5x2arJKecTJhsY
	YquL6n/4JuAjGDKlCA0dbLeFM5kKndy0=
X-Google-Smtp-Source: AGHT+IHYbvRT0GxDchBu+SAI5IC3ONMAwpARuUEl29/WtzEddjc5bnwSs5bvc5dFwtpfoAvT/5aEWA==
X-Received: by 2002:a17:902:fc45:b0:269:4752:e26a with SMTP id d9443c01a7336-269ba57fa03mr73047415ad.57.1758311545931;
        Fri, 19 Sep 2025 12:52:25 -0700 (PDT)
Received: from localhost ([2804:30c:b65:6a00:ceaa:2ed0:e81e:8f51])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-26cbd206904sm21775175ad.0.2025.09.19.12.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 12:52:25 -0700 (PDT)
Date: Fri, 19 Sep 2025 16:53:09 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net
Subject: Re: [PATCH v2 2/8] dt-bindings: iio: adc: adi,ad4030: Reference
 spi-peripheral-props
Message-ID: <aM20pbc2XAYq88BN@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1758214628.git.marcelo.schmitt@analog.com>
 <5c1c448e3e731fc013e1e3b3fdcbc31f806d41fe.1758214628.git.marcelo.schmitt@analog.com>
 <f7d7f400-cc43-41d9-bc97-39d308363f14@baylibre.com>
 <20250919-paramount-headstand-c9b5d4d03c58@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-paramount-headstand-c9b5d4d03c58@spud>

On 09/19, Conor Dooley wrote:
> On Thu, Sep 18, 2025 at 02:39:01PM -0500, David Lechner wrote:
> > On 9/18/25 12:38 PM, Marcelo Schmitt wrote:
> > > AD4030 and similar devices all connect to the system as SPI peripherals.
> > > Reference spi-peripheral-props so common SPI peripheral can be used from
> > > ad4030 dt-binding.
> > > 
> > > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > > ---
> > >  Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml | 2 ++
...
> > > @@ -20,6 +20,8 @@ description: |
> > >    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-24_ad4632-24.pdf
> > >    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-16-4632-16.pdf
> > >  
> > > +$ref: /schemas/spi/spi-peripheral-props.yaml#
> > 
> > I think this is already referenced for all child nodes of a SPI
> > controller because of pattern matching of:
> > 
> > patternProperties:
> >   "^.*@[0-9a-f]+$":
> >     type: object
> >     $ref: spi-peripheral-props.yaml
> > 
> > in Documentation/devicetree/bindings/spi/spi-controller.yaml
> > 
> > So perhaps not strictly necessary?
> > 
> > Would be curious to know if there is some difference.
> 
> I think it's good form if you're actually referencing the properties. I
> don't know if it actually makes a difference in the end result of
> dtbs_check but it may in terms of making sure properties in this binding
> are properly typed when it is tested against. In this case, it appears
> you're only looking at uint32 properties so it mightn't have any impact.
> Rob would know for sure.
> 

There's no difference, at least on dt_binding_check output.
Initial idea was to allow using properties from spi-peripheral-props.yaml, but
they are already available through the pattern in spi-controller.yaml.
If the noise doesn't worth it, I don't mind dropping this patch.

Thanks,
Marcelo

