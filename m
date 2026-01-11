Return-Path: <devicetree+bounces-254246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9956FD16866
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1590B3025169
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1A2346E62;
	Tue, 13 Jan 2026 03:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cFI7UuR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAB717BED0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768275155; cv=none; b=pRBvG4lavfRG27U5ywivOeN0svE94icErS8josrTkj99neg5CDlFl3x2E4Ut4VRE8Run6KUlzpQX25cegt539rXxPdS2TRqb/bElPVLtDrJe06DqMqo9UduuvEcQg5TCdR0wLzTnP7UOV5n57P1pPGugEkEj0e47M4Mub+FjQ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768275155; c=relaxed/simple;
	bh=VBvnDLdfB6iwcfRLrlJ/kuNKTe4GcJzd0Rz2MGm7M04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J7xhSP8iHTYDx9zEvqGb3wnfdc5S23xT8Sn9Ox7qID7YqCdWp4CDsBuc/Q/DOZuarvpen+94DQzwi/qyd/2bcVsslPuwrU9drzZ66tx/cqaJRq9wJBatnUybtEdyNI0k64B9VtvxPmaSLBtJVFgLe5rUtwL7SbktkOVY397GI4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cFI7UuR7; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4ee12fda47bso10189791cf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768275153; x=1768879953; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oV5NIaorlKMCTvp26ZszHHcSIm+HDcOR72Vp7/q9+SY=;
        b=cFI7UuR7lRv47brkD0FFaMhFUHCkWsJjAAh+BbAMNDTigoAMpCW22c3LJrMPEIsXJq
         PglKf66Lc52ZEUDqLzl/Pc4Fqdi6j4I2SQn0pO1OXqEnC172hCPxdkG3pGlhJe/EZ8oN
         LqU7YYp0dRtV6NhahAzcjUGAXGguNPXdkKu56tyQT+98qAkLZKAUGEq0CfxYQMKfRkCe
         a4EB/014DWzbnjGveCJPyaHSFr0PjfXBu60o9zfOijQajeROTwiquMTSSDNN+vFX2sbI
         f90i6DnA+BQ9rZHv1/J6lK0yo0DSXsVGIcPkdcGNFwJy2WSKIxPGlKc4xr2FugXZN5uF
         G9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768275153; x=1768879953;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oV5NIaorlKMCTvp26ZszHHcSIm+HDcOR72Vp7/q9+SY=;
        b=ihJVA+MAZusZzBNjbfrAB8dkNDU7z9+QfhO2XjIt55qtDyO6yQw8onYnTswTmzlwbv
         JjQxDwbFaTTek75LLOCrPzdisjlmJO6LUnUQrsdXGG2+kNWGJ4ispglj1VaHo7j+AxoI
         A06C9/XA+aK64GkpV2gopn6btcUGrGKZ4a9fgMw+FqVeH6iPOFDGudQ0VWJVg6GPnCQ1
         4mNdlrrFZVzE2aDy5R3McU+RR1fKR0ll6H984rqAFtSvyYKgH/JNueUlNtA7KGP0i6ZQ
         2YJQxPgY9fRbT5vtRohNeSjs3DL23NjMgtezj0acBl8LoFUifcJvUZSohREtcCIVMP1H
         1wQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvuo1GnA53Y53a7jPOylO5oRxIwluN+/k7JQvoserajCHiiptIOr5rV1rBjO/7bYj/wOUcnxoOa1SE@vger.kernel.org
X-Gm-Message-State: AOJu0YzP+WQEQlZyuISjXL1nWL8Mv866g87LqnScD82oRyibCBJUGUI7
	Rapm6lhFsyR9pJyREdTEOYB9PXu8NYlx7LGp6ji4LKWpzE2a+WCnagAM
X-Gm-Gg: AY/fxX7UtVl4Gl+hQDdHOL1/HJ5aB+6DhSEEflTesqv+gwOeGtz/1wykZp2OV93FKG3
	gI1UTIR2QW0S6fpOtmUa1BOjGJkI+U/vcdKFkuowTjVRCwsYspTV4xh9d66JgUmqt/XTDPnLOGs
	uCx2cPwf+GftgYJ/KCYkuUJ5E4LMcud7vKpoc2HDG6Scctorr5EC+4kqlDxXDs9qEDrByW74ATb
	XDi1YwbGvcTww+FTltenlhHcsltv9VWcy39zvVxTMfi7knvPanIuQ4VScuutnSG1EvPASzlxyH0
	1W9DhlsKeMf8rkCXRN8JZun06ZIFcO25Gtexfmyrx6YaMBCoe9CI+fCK+3pt4otc/13dygWHIIt
	zowF3OwwoDQuTLQT45oghbUKl9s2Das44Yn3R/QFYDgvxVaZlpvYFD0crAbdc4MwZrC5VllaRpQ
	K1vJzjKqagvS6STdXLNkVA2bhFtb2/CmohqTiUp14=
X-Google-Smtp-Source: AGHT+IFUp5OFF4KEikizn6MysRARr9EShs8KxKd0mg/n83f3PKFKfM8PRx8cj6fUpU2eiwtqBDh5hA==
X-Received: by 2002:a05:622a:211:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ffb48b6d14mr229624801cf.5.1768275152656;
        Mon, 12 Jan 2026 19:32:32 -0800 (PST)
Received: from JSANTO12-L01.ad.analog.com ([179.146.84.3])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89077234ca1sm148878436d6.36.2026.01.12.19.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 19:32:32 -0800 (PST)
Date: Sat, 10 Jan 2026 23:11:55 -0300
From: Jonathan Santos <jonath4nns@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Jonathan Santos <Jonathan.Santos@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, lars@metafoo.de,
	Michael.Hennerich@analog.com, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v5 3/5] units: add PERCENT and BASIS_POINTS macros
Message-ID: <aWMG6+ORRTy4ll8d@JSANTO12-L01.ad.analog.com>
References: <cover.1765900411.git.Jonathan.Santos@analog.com>
 <43504217d5b3c32da946bed0ce4d81e216f7c7c7.1765900411.git.Jonathan.Santos@analog.com>
 <20251227155525.6d712f42@jic23-huawei>
 <CAHp75Vd0n+aTkdzMC53y9LrPW4t0mckpzmmud4Ez5gXbAdLeVg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75Vd0n+aTkdzMC53y9LrPW4t0mckpzmmud4Ez5gXbAdLeVg@mail.gmail.com>

On 12/27, Andy Shevchenko wrote:
> On Sat, Dec 27, 2025 at 5:55 PM Jonathan Cameron <jic23@kernel.org> wrote:
> > On Wed, 17 Dec 2025 02:52:45 -0300
> > Jonathan Santos <Jonathan.Santos@analog.com> wrote:
> 
> ...
> 
> > > +/*
> > > + * Percentage and basis point units
> > > + *
> > > + * Basis points are 1/100th of a percent (1/100), commonly used in finance,
> > > + * engineering or other applications that require precise percentage
> > > + * calculations.
> > > + *
> > > + * Examples:
> > > + *   100% = 10000 basis points = BASIS_POINTS
> > > + *   1%   = 100 basis points   = PERCENT
> >
> > I don't understand the final equality in these examples.
> > The top line is as it says 10000 basis points but you have it equal
> > to BASIS_POINTS?
> 
> Also there are pp (percentage points) and others like per mille
> 
> https://en.wikipedia.org/wiki/Percentage_point (see "Related units" section).
> 

Hi, Andy. Thanks for the suggestions,but I am still questioning how
the percentage points would be implemented, since it is defined as the
difference between two percentages and we cannot use floating points.

Also, should we keep this approach of unit conversion?
Example:
value / PERCENT -> converts a value from percent to ratio
value * PERCENT -> converts a value from ratio to percent

Just to make sure it is consistent with the rest.

> > > + */
> > > +#define PERCENT              100UL
> > > +#define BASIS_POINTS 10000UL
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko

