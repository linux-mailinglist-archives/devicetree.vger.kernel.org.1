Return-Path: <devicetree+bounces-219625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 293FFB8D1B0
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 23:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A51321B24EE2
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 21:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7248028489D;
	Sat, 20 Sep 2025 21:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JGCB6x6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E782C28312D
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 21:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758404652; cv=none; b=DumNyburrBHnPm+5cYyTMCWXplV+HbHKpwv2ZUAl4iHKIziXiRqLlZZi+NEirvvOQBixyXvvR270DqrcLkT13w5ndbl2um4HzGNXjwcRTVN4s2MtG2Tcs48Cx12ADVbNf1k3R4vukuFnlZUkcIGfLaX3vGxB8W9aqTrUpkzrNs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758404652; c=relaxed/simple;
	bh=DVCcp2q5VKcd7KC9g3EJSBxxRQgEDpwWkfmRLnIh1Xk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pCFRKmHSGQkBcsogHv430SsjTgLHjLxQh5/aVFgUfKiOPR7Roq+jd+k0ywAG/IQxZ1a16kTjd1gQaIWQyBhc0s/ee/Ga+rj6eUhw5qXm26aKyVY4m2LdRKoxOKz+ftZV96hGlSG5G4jiyyXCguVTS9/E4TWKqJYHx58ljcyWD/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JGCB6x6m; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-267f0fe72a1so21071565ad.2
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 14:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758404650; x=1759009450; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/XaK3Ga5I4OskdvUpK/KRvj93+5lScsBFICoRwq2vUw=;
        b=JGCB6x6mP5ozvGnpZuiO6YO8WAsnhGdkS9KRxIH7POkfsJWk5CaOfkPNjZBn3O0XEx
         pKPPFuqlsQgeKTF1hdV7pMDq7KQCjytDu4LvIz/6/ULoBqtmvaPDJO4RonWCR83c0Q+7
         vIhdj8tAT8DEmV3ewr4TV16zU0s8glyt9e3NxNkSR8kA+tk+LCY280X+XpuSvT6gmvbt
         qK0SO84rHCxd0DB7KyykFpXgdZil341JV7mnp9GtFu1QtGgdDkV4Uh03bqJprT66H7rn
         1Jhp+EZPomENlrqzed0ABy6MSgX/szhR4Ajw7uKKMZsxWG6K2+1TE/cneO98Xg6w+TBu
         Pwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758404650; x=1759009450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/XaK3Ga5I4OskdvUpK/KRvj93+5lScsBFICoRwq2vUw=;
        b=itAFgW4+Loi6ME3xDP/SU3RI1j3Z+Vsgo2zkmBFv8prpt0+yMKyWo2ahmsgXlUAkmn
         INpWXlOxV7t2WXeuXlweQ4alynzLnjnfAQMzqPqhjngy0tjJzNjtaHO5srSYTys2IZTT
         Y3lQ/Vk2RxrMYoOo3L32dhuPzGmxYAO1Ne5DC9YeYyLSD4hGELF2PrG3Q+9Lsd3XTpNU
         EnK7omUZbAkbKnIjsvLcmZ4cYohnxXuR/tLOnBfDPS1CXXCEE4epaRSLpHutJbukMFl3
         i3MIxe2Irw1fS7z4pt0ktr0m9edgQptVL3TTN/JkGmjxvIk5Z8zReTM9XZLWZPM85I6n
         86Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWXmynXo4oynUhQrvzuvJ3EQEbGTJKNMt7GkRtUKJkCg7QoxlxWuVMhvmoo6A4uRLMiXcdcvykcACjR@vger.kernel.org
X-Gm-Message-State: AOJu0YxrWwyuneyaNfLx02rvDh1nsTVMXxjj/dijC4kCYUQIXD7kmLze
	THZYu7rZGezJK4RRbFVE27K4614V93dRZm75oeM4RWwRbg9/0wwgKIpD
X-Gm-Gg: ASbGncsrqj7ffoJPNy3tPGhXTdDfZgPvcplDs8YXISnrps/sw/F8E2FQWxKPp/oJ2OE
	pYYIXMQlDO+eLChVtbz2ffHWHqzwLXe0Uqx7rsi93IttEYB6H/1m4BEJ3ixVbUjDcITKvtcPLe8
	PB/U6xgt8/kD9njyMskv+oNFcg1m721zgsvmAimrGaGrPM4SqS1xBYizT0Hdx+VWJ7iARaxa6aK
	fBKw8q5Sl9uwi4kPlME/AE3frkH0FULkNFk8HRdAv0V0njwJI8EaUkhVcsNOTVsyvHcUchtRK8Y
	VVo4Z8G+7lRK/EcPW01IshWpmMxTfX+A/Tstk9wnz1jlOjK1mzjaFfCfod72LyE1hkUTUZzznyg
	fIW7CRdxTGS0ZFZgZJPFBWjoS4tSLpRo=
X-Google-Smtp-Source: AGHT+IGstBVeN4BQ2EHAw6pn8u8U0MiwUr1OFBQKcuOmxzx9i3nxQXrFoOaA2+s/lnUkyZn6bVvZmQ==
X-Received: by 2002:a17:903:2284:b0:269:9adf:839 with SMTP id d9443c01a7336-269ba427cb8mr100761545ad.19.1758404649948;
        Sat, 20 Sep 2025 14:44:09 -0700 (PDT)
Received: from localhost ([2804:30c:b65:6a00:ceaa:2ed0:e81e:8f51])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-330606509e9sm9225974a91.9.2025.09.20.14.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 14:44:08 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:44:52 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Jonathan Santos <Jonathan.Santos@analog.com>,
	Dragos Bogdan <dragos.bogdan@analog.com>
Subject: Re: [PATCH v11 1/3] dt-bindings: iio: adc: add max14001
Message-ID: <aM8gVOVEujP6Yzxx@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1757971454.git.marilene.agarcia@gmail.com>
 <30f33a64da0339eccc1474406afb2b1d02a0cd6b.1757971454.git.marilene.agarcia@gmail.com>
 <8e88b601-1329-4cdb-bbd7-feb998c552e8@baylibre.com>
 <20250916-alto-vaseline-f8dafbab03e9@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-alto-vaseline-f8dafbab03e9@spud>

...
> 
> > > +  interrupts:
> > > +    minItems: 1
> > > +    items:
> > > +      - description: |
> > > +          Asserts high when ADC readings exceed the upper threshold and low
> > > +          when below the lower threshold. Must be connected to the COUT pin.
> > > +      - description: |
> > > +          Alert output that asserts low during a number of different error
> > > +          conditions. The interrupt source must be attached to FAULT pin.
> 
> These descriptions read wrong to me. They __are__ the COUT and FAULT
> pins, given what David responded to above, not something that can be
> connected to these pins (if they were, they would be represented as
> -gpios rather than interrupts most likely). Unless you mean that these
> pins can have some other use and are only available on the COUT/FAULT
> pins when some register value is set - but even in that case saying
> "must be" doesn't fit since the interrupt property could be used to
> configure the device accordingly.

COUT and FAULT are just two pins on the ADC chip that can be used to generate
interrupts. Would a description like the one below sound better?

  interrupts:
    minItems: 1
    items:
      - description: |
          cout: Comparator output signal that asserts high when ADC readings
          exceed the upper threshold and low when readings fall below the lower
          threshold.
      - description: |
          fault: When fault reporting is enabled, the FAULT pin is asserted low
          whenever one of the monitored fault conditions occurs.

Best regards,
Marcelo

