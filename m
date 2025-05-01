Return-Path: <devicetree+bounces-172708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3701AA5F7E
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23CE94C205F
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 13:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E1E1B0424;
	Thu,  1 May 2025 13:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vgnU+EcW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C219F101
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746107460; cv=none; b=QBgAi7IT31ePuMduk521C/ehR2ubPWieZbVrxQNBSsHejk2LfobL7c+JzvZ7S9FjbRV1/Px1QyszeUyKYjO+FSLIi6vf+bcv2QfKtufkf4Xz6E7iFH2OihTy2qLROsBY6CuDEW/VqMIHdtEsXEW4al2+CYIg9tUmS741co5Z7uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746107460; c=relaxed/simple;
	bh=3S2ZpOURBmPgdkON47FakSSexpUR54q6fL0CBQ8Af3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LQgDaDJm1tMFIMDuL1KB2yMbwg0y79TlL6zX1pdGR2MzHkqCesKrddEQV4VFRU1LQ3U/HMuXiyMSsryumRPJbAA5gihcKIK9S07yo0YAh2zSMS8Tf/iUyvf3t7KFMewkMSZcFfxbaR4ldxA+rN7zKAnrXr5R9NimbjigF8rqXf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vgnU+EcW; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso3729395e9.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 06:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746107456; x=1746712256; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zruKVRDRscyVarFUye9F0wOJCzPUiyyhJYtA+dpYCeQ=;
        b=vgnU+EcW5tJK8ImxTmCLn3xRp9ZKyW1CpdkXojWMYnrCILvRhitmJYOOTW5iPw1Cw1
         qkW8BUwAwQpOPK0wdlTiCefJd2ntpe4ilWDXDD9HTKbcZavyJqEPazltzpqdzp68xH2I
         Fqd9SnFS8EOCSeR+/1VUKz+QTFBje2aAJfu6601D3lZSDYfS0nw6vligl87G+bs6cAIO
         Q2mpBf4sAdivzTHn8lFBCafLzH+vJWOlxBcrGpw86sNc/1w6AaI8+ieS1y5btPKBWd/O
         0Lw/FUZCqLkmDwXmj4T3aXN+Rn9O7QvTYBa8WWOdBOKfANAKPqRbAa2AjgNeZQUrgin7
         TFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746107456; x=1746712256;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zruKVRDRscyVarFUye9F0wOJCzPUiyyhJYtA+dpYCeQ=;
        b=O2Jd+k1LZ87bRfihaK4+uIqfiGjTu8A3pzMJ+94y/DaN0W+Edl4Xuicd9PMSl2r/qd
         svyhyR/xc5o+Olkw7T2ZGOn+y+i0ZoE7DQ6/1XpXmNcBCsiliFgz0SozKrAMHxarTVmp
         zOt67un9dvcWgK/bant86YXzG6u69v5G8tqEWc8h7lo0eUN77Zh5DqV3FjnOwa7V/rn5
         i9o1g4RlHMOTcG84us/Nc7v+YJs1EkpU4MoDHw85sXGzjLWeHlTL7HTDKPPsO6o3flyz
         Qf92o7WKqDHOKxnWU3f70nWOhA9Xm3ZFhOgwni4LB37OGrozvsGISILdmCHtrazKZSlk
         w6sg==
X-Forwarded-Encrypted: i=1; AJvYcCXtzjp7nPrON1WK1WZDX4e0QwyEE2yHwjoDHsP347JYnJpnZZW3B/WM/f2sG7++wiG/hSiP2XqwIoYN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8fPL6dztH9GeuDZzDBtexBVH9RYgc/ph9NsoZDDHjclV6aI1d
	iiMK1nmjFkBjRJcX0gCR2ciOrsFy6tw7iRBwfI3ojGvKE06Hf4QaiP21JDtVbuY=
X-Gm-Gg: ASbGnctY7UzbPORTvLMJngTRJZa8fVfRnHR3BFXaPJdbSRLCOYgzQi7WWS/Z8C2NPUJ
	+pnjLI3cx6cXxdAZ4Ma5NCL3k//xUlVVQYU8iIW2kh7DULSZ7mQxkUS53OJA4+Eq3fXFo0jDfcv
	qOsS1RG4NG/DiQc+Vud3p4GDCTuRV6i2T1awSDl2FpZ2ty8txK0gkSLlGbIllnNZLlIuhJ/VE3Y
	KptTNe+Zfl4ff/lglMJbERyDC0hRYodjH6O/hhoa3ijPfpgovTGvRg/xTZPktC/e0OdlKu5qYEb
	w79XwlSz8B00RFzYo7KutzTg9HbWJctpyPx6YBs0CYZ9/JPZBkc9BKDZKaOSKhqbNkqbIfPAvbL
	i0Tckxa0=
X-Google-Smtp-Source: AGHT+IHupedOPMOM0/qcAF0IPZeZXqgUOFSKpReFgbOJMXAFwMjiMXlEwXf+hlUk6b7Aa4h8TEFLmQ==
X-Received: by 2002:a05:600c:502a:b0:43d:609:b305 with SMTP id 5b1f17b1804b1-441b6500698mr29167515e9.17.1746107456371;
        Thu, 01 May 2025 06:50:56 -0700 (PDT)
Received: from archlinux (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441ad8149afsm48670895e9.0.2025.05.01.06.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 06:50:54 -0700 (PDT)
Date: Thu, 1 May 2025 15:49:44 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] iio: adc: ad7606: add gain calibration support
Message-ID: <okavvmsyg6jpdleye5e5oxg2cwwgkr42f6wlq2dlsswrzxkpnq@66apz7uva5eg>
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
 <20250429-wip-bl-ad7606-calibration-v1-5-eb4d4821b172@baylibre.com>
 <CAHp75VfBrodRH0gW8teULNSt3f_uJA0Ze+P+YOTKLhtec84-3Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHp75VfBrodRH0gW8teULNSt3f_uJA0Ze+P+YOTKLhtec84-3Q@mail.gmail.com>

On 30.04.2025 01:34, Andy Shevchenko wrote:
> On Tue, Apr 29, 2025 at 4:08 PM Angelo Dureghello
> <adureghello@baylibre.com> wrote:
> >
> > From: Angelo Dureghello <adureghello@baylibre.com>
> >
> > Add gain calibration support, using resistor values set on devicetree,
> > values to be set accordingly with ADC external RFilter, as explained in
> > the ad7606c-16 datasheet, rev0, page 37.
> >
> > Usage example in the fdt yaml documentation.
> 
> ...
> 
> > +#define AD7606_CALIB_GAIN_MIN  0
> > +#define AD7606_CALIB_GAIN_STEP 1024
> > +#define AD7606_CALIB_GAIN_MAX  65536
>
Hi Andy,
 
> Are those values in decimal in the datasheet?
> It looks to me something like
> 
> _MAX = (64 * _STEP)
> 
> but is it for real? Usually values are limited by the amount of bits
> in the HW, here it spans over 65 steps, i.e. 7 bits would be needed...
> Confusing.
>

true, thanks,
there must be a typo in the datasheet that says 0 to 65536 with a
step of 1024 with 6 bits. Only 0 to 63 are possbile here.

step 0 = 0
step 63 = 64512
 
Will fix that.

Regards,
angelo

> -- 
> With Best Regards,
> Andy Shevchenko

