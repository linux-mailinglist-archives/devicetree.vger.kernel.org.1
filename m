Return-Path: <devicetree+bounces-248511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD5CD34D9
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B4523010FEA
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AEA02F260E;
	Sat, 20 Dec 2025 18:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lOYHFivu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D911279DB1
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766253942; cv=none; b=W8J3hDQ6T601+cp/gH8ppCgRqzyJyZhBWh8z0xx3ruvswNdyXLx7AkqFW/+chIsEBMdNXKv08k0iN4myan5exEnYVeE9WG1BYZm7SdVqmwiAwbeIq3AO9Wb5zokdeSMmCcaRCeRlp+OpKHi66vMlN6hPeEpNCfqOSWC1xVP8B/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766253942; c=relaxed/simple;
	bh=ION7h3GiimdnrChMZfYJ4FJw5Q0+r+Pu4ixf/ze1IGg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qDBwMOEBkiHRlmc01wUxCqJaDMyiPSRkxmzyArO0nlkPElZUUUu2Ac7axhAWHoT1z3I0LDXA740otv9Qst8S0TPpX1lMAUkOwHlPQh6nh4tTVjlXapBkaPr00o8iaFJ5ldwuX9DZvbMUjsk+hu9uvlY6U+zZV57K54rqKHda1fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lOYHFivu; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso1670969f8f.3
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766253939; x=1766858739; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ION7h3GiimdnrChMZfYJ4FJw5Q0+r+Pu4ixf/ze1IGg=;
        b=lOYHFivuvy/kA+SQDrYDMUwxTuMvxgUOcbu7wjsTMR6tQ4hXDSszzWK2E4oTdoIhOC
         vxQm+fv6SMp6xX9f8hcicy0lz7ud32UiqFxHX5dXUSCDaLP0Ef49a3ZYuZhur34opY40
         fPnHuMWDrnAV4R+5QUv1md081Rm5oGzxVMbdxI155AD5nn4tZ8trdzENUkbTOmVFOgWH
         023776+yDW16lg7T4yXHKks1taQnjO+cmlIM0oiZNJevQCAk4ixYBkiM5FMtlEUycI7W
         rGVfLB3C1E6pckpziE7YebQ5muDyGxpPnKPsnDdbFccGDAdCAyCA/q3GO9/JNnqwpd5p
         +i8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766253939; x=1766858739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ION7h3GiimdnrChMZfYJ4FJw5Q0+r+Pu4ixf/ze1IGg=;
        b=KC2H9cky+BECUKnxfR78UjPGmizEiUh6UCUq+SSFW/i9GIyOK1JSDd80RHIBx6qdUh
         Eoj8jA/x25dHLx3tke+/cGupoqVRbDthkU/UK8EsVdVZux+7Lsp80EBUJHP0XVqrJ+Ox
         TsAUb/Vk9kfqIxlLxf1A6459VhsvogK+7NxuD+0uoTnBe5VjVv/0lgFbsoywjL0ASdlY
         VLGKp5YjWUiIF89hGvyLdcuwtp3cZ9h0A4vUuOpz5B76TdqTnCuxKRAzgDMPqwn1n3P+
         5oYosk8Zc9TuDSXEKxQOg5F8iIlc9PJEUueB6BV/ccpdXs6ccwTa1EJa5pORZI5Dxe4v
         vdvw==
X-Forwarded-Encrypted: i=1; AJvYcCUpdxDwgGW9Vwgxt9Vygztkm/BaI7oq+YsWKumh/pW+Pj78uTxNpZphfV0nrhO91GwTCHCl+b1eClAv@vger.kernel.org
X-Gm-Message-State: AOJu0YxWuF1sazbjPrDWEZM6sYEjTOg5w6E+TQHVgMiks6VcIM0NnhGF
	GCZax5d+Vi9CFj3BDRBh5S+P4gqYHJvZaqa/SCppwpY9Zw5FLB2V5riN
X-Gm-Gg: AY/fxX63pS0L67kozgr9LJp+JEMCm2EplS+YqZwrJTZC+OXIZiJ5JthFLNjJ0sF9d5K
	jw+mo5eo/doOeRe2Cvz7iGHYYwmHXvn48TNot2Y4u9VAJ4eJrJfa13AW+vQTw2EyXrXxpY54bTV
	USI7WSj2mU9j/09rpnrhqy9k7HNq+MPIQd4vlhEJZb5hbNI8OE0rEjHW+i3siglHekG/TIvI+K6
	JthwwkjIxGn+t41V27dCtNfwi4JPt9eFG2yoFa+obV3dMoDXMdWDS0IWvDwD9mRuWN5arFJe5Xs
	BWKqlE7VfUOjlfrwdYbbdoy1uQwCx+U4eY1SaUXjbI7FMOJr9hMspi3JwC/N33Y3igK88LFR8Gb
	wR7r76+IApF6JSIjdQRqDO/9LvCtVxq8JfT+WK//wef/Q/kNE8dJLncDzORRd9VxGk3dcxHYpRr
	IgB+3R55j8WY+eU9A2ClH4imOdplHa9w4WjjiQvr+Fvzr+kK5yKI+x00lf/ePpJlWztw83UHxek
	zPl+sxxtxKPxZ0=
X-Google-Smtp-Source: AGHT+IFdh7686Hic2EQT/ge0CqMXmqAJuelRm9kiOsqQ7eXjvB0HmW7I0JGYyXOswbWut1zyR+Yt7w==
X-Received: by 2002:a05:6000:40db:b0:430:fa52:9eaf with SMTP id ffacd0b85a97d-4324e70ecf1mr7519861f8f.60.1766253938486;
        Sat, 20 Dec 2025 10:05:38 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82e9fsm12234440f8f.26.2025.12.20.10.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:05:37 -0800 (PST)
From: 455.rodrigo.alencar@gmail.com
X-Google-Original-From: rdealenc@rdealenc-l01.ad.analog.com
Date: Sat, 20 Dec 2025 18:05:34 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Rodrigo Alencar <rodrigo.alencar@analog.com>
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v2 1/6] dt-bindings: iio: frequency: add adf41513
Message-ID: <gz36kmewv4bhwqz6d3xqatcx65uzukqcgsvfbwhr7c3yhw225z@edeggfhjws2h>
References: <20251219-adf41513-iio-driver-v2-0-be29a83d5793@analog.com>
 <20251219-adf41513-iio-driver-v2-1-be29a83d5793@analog.com>
 <20251220-bouncy-perky-tarantula-d9b3be@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220-bouncy-perky-tarantula-d9b3be@quoll>

Hi Krzystof,

thanks for taking a look into this again. It was my first patch it didn't want
to draw more attention or discussion to the V1 patch as it was declared not ready
at its very first review.

On 25/12/20 10:21AM, Krzysztof Kozlowski wrote:
> On Fri, Dec 19, 2025 at 12:34:48PM +0000, Rodrigo Alencar wrote:
> > dt-bindings for ADF41513, an ultralow noise PLL frequency synthesizer that
> > can be used to implement local oscillators (LOs) as high as 26.5 GHz.
> > Most properties refer to existing PLL driver properties (e.g. ADF4350).
>
> What is "existing PLL driver"? I know about motor drivers, but can you
> drive PLL?
>
> And how is ADF4350 related to this binding. I do not see ADF4350
> compatible here at all. Describe hardware, a real one.

ADF4350 is an older one, and its bindings can be found at:
Documentation/devicetree/bindings/iio/frequency/adi,adf4350.yaml
It is a similar part, but yet very different.

>
> Nothing improved.
>
> You ignored comments, did not bother to respond to them and then sent
> the same.

Sorry for not responding on the V1 thread, but the previous patch had to be reviewed internally
first. It is not true that nothing is improved, in fact, it has changed a lot, here are some notes:
* adi,power-up-frequency is not carrying the -hz postfix because it forces to be a uint32 by
the dt-bindings check. For that variable it needs to be uint64 as the part supports up to 26.5 GHz > 2^32
* The properties related to the reference input signal path: reference-div-factor, reference-doubler-enable
reference-div2-enable are declared here because they are constraints for the PFD frequency definition,
which is the frequency that the output signal is updated, important for the loop-filter and VCO design.
* added support for all different power supply regulators.
* adi,lock-detect-precision and adi,lock-detect-bias-microamp: removed, now set
with adf41513_set_ld_window() following datasheet recommendation
* adi,fast-lock-enable: removed, faster lock detect clock is set depending on the lock-detect-count value
* adi,phase-resync-enable, adi,12bit-clk-divider and adi,12bit-clk2-divider: removed, now set with
adf41513_set_phase_resync(), based on the t_sync (from the datasheet: Phase Resync section)
value determined by adi,phase-resync-period-ns, which is also bound to the loop filter design.

kind regards,

Rodrigo Alencar

