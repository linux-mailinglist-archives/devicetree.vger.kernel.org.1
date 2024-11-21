Return-Path: <devicetree+bounces-123554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 835539D517F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED635B20E41
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E3E18BB9A;
	Thu, 21 Nov 2024 17:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="ENWjK1wT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759C713E898
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 17:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732209582; cv=none; b=SfsYnesRlMDH9ttFXAKj2IO4vXESWDGe4kTZ4+3rJGiveLOEetVt9Ps7740gOl/xAljYRvQErCnfYsejc9Miq7x7R2VEScqX4+QWxbVPrQTyQtnLdcmC8OVAjyyZtkk53DALB2yROWpLNZlclnX20z+x6D16dV9WbYksZvfnVP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732209582; c=relaxed/simple;
	bh=n8Wo1iQ52Aw1E64TSb6ntmmEig/Iw/KhYEDmtwYBRLA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eVTG5xXukdT6VGSF3L9wLjE5RakoRkYUy0omhlFJI40Tauaayg1BxKFhDB8T6tEE6lzy1CiaqF2XjdRMQ4x4gBg6Q7byQGkHeX/5iMUTatuzSd6eULM+jtT5ZBvW9jjeqLemmIvgOh78fitscl3Xu/mwJSY3N8nTaqISyjyyZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=ENWjK1wT; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a9a68480164so179034666b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1732209579; x=1732814379; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fik5fg6pZ4xpZXDrf0q8ORna4/F0UwRhMO+ozPaBmr8=;
        b=ENWjK1wT3eUfJkxbfMf4px8lL6ij0/oLqYz5HRxPXiVu5yhjRcWni2nH3GEQDUZBiT
         z+VZ322C0k3eoZWvVDNXsiTI8TH7wOmT1Fygk5haGl8ISL7EgR8oDEwa8Rv0VVg9M3y/
         DzRa6dtdTO5r6MH6KhVkU9KnJhtgTEhsx4u+gngQ6B8rVn28mGGH4r+Pe7NHUY3zldzy
         xSaAgBX0uPNWW1PVPqZDEsCNyZEjHQGGBYTe/FhT7k5PAJz0PwbKsjUxJVkB0AO5oApF
         TVZkPm04GhT2lyLuO8jBxXH9F35tiggUihGUIr/elSkokSn1hlDsXNUmqQbbRmuPQyou
         9Evw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732209579; x=1732814379;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fik5fg6pZ4xpZXDrf0q8ORna4/F0UwRhMO+ozPaBmr8=;
        b=YSP5FrBOkxlrKMhUruJSusZTcxVyiUpGJ/ieznKniqeqGdw1mLF7rltXwwQeLTq0sR
         wjX35svFY4M4IPavN97TBjGM7q4vbOmLd42swV5fFQDcSSohpdlof86n8VsShYgOtA32
         0x6V6kwpSOpKvCeOb9yBm39qycWoCaGJ5CMVZAIMSfe0Z5zbagKsAyzqYO+H+ghSOHby
         DM1CjPgUxIiIkNZtYY3NBLWCc7uTdWaj9Vbx0sldlwfu5AbQIFz9DrpRqBX85M5JA13b
         b2z2N8deoZPbh5gtreeiL/VZUIWdeyObPTj6ax7W4+J1PEPpH+TJ5AkhX2aT0smHNNM1
         Vyjw==
X-Forwarded-Encrypted: i=1; AJvYcCXH46kS3rr1DNb5qF0AN1ua8HQOSZy5TBp3RhL/7Oyjecac+I7IG8OKz0gzoNN9SvsbA1rshS5Q5mDw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+ZhpFMVEcwwrXqfG0MgErvHcybgu7NQoFPyuYUQXzVNJq8Qib
	JwXrIARKiqw/1hSnxyyvkpAZ7JyBJa6bmk90j85uBNt+MZD1sd5go41NpKYVmPlSQoSJfe8f/47
	sbnywyT4DXiPWXXUw0/ayKgavDk8synJ010FqaRdYJPb1neHMxUj0KYShCgAX/3crSVRjedvcBx
	r+apvXCSNEhonR7sreFBsWGsxP
X-Gm-Gg: ASbGncsko1HoqpMyOmmeQGrfuSeclrdcp1g5OlAL3sJ8lskLy+oZoa8kV2ndE7sLoyT
	bQtX7+g8LURAs18MihRE59vtXec445c19vLaxpcb+1V6+8DATbT/dOt3ZOew0f1b8LSLX9HHlTQ
	5nZgxfa4SEGGpvbfaAUZVv9aCSEYYJe4tbVVRku2QxpLnSSaiXTz/LrkoxoINLLbYwAFpge8F7W
	D92uQqeaYHg91L7WT0yj8/8hxXEcDUUQJxwe01BaupoLZUQUST1sdNIKHFNM0wWMN0I7YTyWaGO
	OeWWyRbvm3OuOPrOdA==
X-Google-Smtp-Source: AGHT+IEgydldMZZK3DL67PowCK6G04XlplMKaFxYYjgxXS8/yAqD7Uv47pTRRe/rOwuReXnCnuRW8w==
X-Received: by 2002:a17:907:97c9:b0:a9a:e0b8:5b7c with SMTP id a640c23a62f3a-aa4dd52c717mr743373966b.7.1732209578751;
        Thu, 21 Nov 2024 09:19:38 -0800 (PST)
Received: from admins-Air ([2a02:810d:aec0:2a54:6de0:d3b6:653b:5260])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa4f42d48dfsm102526666b.106.2024.11.21.09.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:19:38 -0800 (PST)
Date: Thu, 21 Nov 2024 18:19:36 +0100
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v7 3/3] leds: Add LED1202 I2C driver
Message-ID: <Zz9rqJ4CXENy7wZm@admins-Air>
References: <20241118145449.7370-1-vicentiu.galanopulo@remote-tech.co.uk>
 <20241118145449.7370-4-vicentiu.galanopulo@remote-tech.co.uk>
 <f6620b99-aabe-4b76-8a60-deae0a9042ae@wanadoo.fr>
 <Zz9pZsQEM29dLu7k@admins-Air>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zz9pZsQEM29dLu7k@admins-Air>

On Thu, Nov 21, 2024 at 06:10:00PM +0100, Vicentiu Galanopulo wrote:
> On Mon, Nov 18, 2024 at 09:13:32PM +0100, Christophe JAILLET wrote:
> > Le 18/11/2024 à 15:54, Vicentiu Galanopulo a écrit :
> > > The output current can be adjusted separately for each channel by 8-bit
> > > analog (current sink input) and 12-bit digital (PWM) dimming control. The
> > > LED1202 implements 12 low-side current generators with independent dimming
> > > control.
> > > Internal volatile memory allows the user to store up to 8 different patterns,
> > > each pattern is a particular output configuration in terms of PWM
> > > duty-cycle (on 4096 steps). Analog dimming (on 256 steps) is per channel but
> > > common to all patterns. Each device tree LED node will have a corresponding
> > > entry in /sys/class/leds with the label name. The brightness property
> > > corresponds to the per channel analog dimming, while the patterns[1-8] to the
> > > PWM dimming control.
> > > 
> > > Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
> > ...

Sorry for resending this, I pasted wrong in the previous one and didn't notice


> > > +{
> > > +	return value/ST1202_MILLIS_PATTERN_DUR_MIN - 1;
> > 
> > Can value be 0?
> > If yes, should the return value be clamped?
> 
 No, it's called in st1202_duration_pattern_write, which is mostly a wrapper,
 called in 2 places:
 line 225: ret = st1202_duration_pattern_write(chip, patt, ST1202_MILLIS_PATTERN_DUR_MIN);
 line 258: ret = st1202_duration_pattern_write(chip, patt, pattern[patt].delta_t); 
 
 for line 258, I make sure in line 250:
                          if (pattern[patt].delta_t < ST1202_MILLIS_PATTERN_DUR_MIN ||
 				pattern[patt].delta_t > ST1202_MILLIS_PATTERN_DUR_MAX)
 			           return -EINVAL;
 that it respects the range provided by the datasheet and supported by the chip.
 
>  
> > 
> > Is it needed?
> > (There is no i2c_get_clientdata())
> 
 Indeed, not needed so removed.
> 
>  
> > > +
> > 
> > CJ
> 
 Thank you very much for thanking the time to review!
 
 Kindest regards,
 Vicentiu

