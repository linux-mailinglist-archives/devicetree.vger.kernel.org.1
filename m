Return-Path: <devicetree+bounces-112296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE39C9A1B2C
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 08:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 872431F28510
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 06:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D70194A4B;
	Thu, 17 Oct 2024 06:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zh1wdYFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBDA1C1AAF
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 06:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729148307; cv=none; b=bIpQblWR9QfnlyXecbjpEL5VHHM/eyusrIUHx9G+x+eBnio36cJP/0zeqKV1DS5/0knym/v9ueCQGIsQb/xHDt5vHHOL/8ueHmGEKfDbNZc7Kdd7TS6J7KQ36eJeo1JGZQ+smMuB8XsN7LB0Oqp20oiEYbgXpcUBvIj9Ci/WHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729148307; c=relaxed/simple;
	bh=eikXMQQTQFtDuJEmxx594Z1tR3sjWpjfu06Fxs5TST8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kWvlikJR83aVY88H6SGxkzxo0wwiLouyZeNNn4ohLKGCu+B/3jvjWw1bnIqJvKssESIR+6vWcnKqN25QvNN4mYObbMlMP2+yQSQ81R5LK6ELE+36JhT8jDFO+NKF9lRuemvxrvVuhrhVMbe6+aIbGKyDnbfS7f3tv5+Prqj/FTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zh1wdYFZ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43118c9a955so5996705e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 23:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729148303; x=1729753103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yeLvVHAahzMmmigQ0rhyHbTviJd4gJG97Yv+5p31+60=;
        b=zh1wdYFZBQPJ6pjSSBS08fGuYjlZ3C5VjGuCU+FGXvuZYeevQPS0bZ1KnZV7xn0L07
         bnc8HsfRQjG1mp/GfF1HwROVduZK7KwfBwB6dXWRGTp8Oicq/NxKRys56CEqIarfz6Cz
         fFJUdIBA9q6CylIKWTFdrt0IX0cHeOWyKDFlxF0xndrvyXZfwBFeoABl6+Z4PzKW+8Tl
         7Zr0Th+PA9ya2y1/icJHlgHy2ySdaAgpWELHw7MIaxwZlTtTjsTNxBluhBSDr0KUyBKI
         rJVZv5QI9OlTokTBNA6FOtwlAOeeJi/LFOGUQ+DAcc0ypz9dx5+VzXKmwpYnUcMFpJUT
         v5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729148303; x=1729753103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yeLvVHAahzMmmigQ0rhyHbTviJd4gJG97Yv+5p31+60=;
        b=CvZQlJQfVKr9vTOXHB7qRjCSOhyAN2JS4cx1QbA8se/pdmkMEMiDR8oBV1RWoI1M16
         zxgTauPPn5WS0ScZUyJptEJC236NyA6KAG6zplYPnlrW3gdUGViWOJn9ODHyL0LpvcvZ
         4JyzlXPaHfQanAbDdydTTqvt848botqXQotFS8LJZGuVO7NgkulDCAPPTLkbctLaYOJZ
         J6BIOk59vTIfcPORNGvASylmVGpAuameoFsfE1duqYqfgEErSUzd6+ip0LaMEXT43gas
         Ob/mEeEcEPopl1/LX161KkSNcCMYML9eH4SRDatc5Tae2kfepjGcE7RUXpMg1woxcaCR
         RdNw==
X-Forwarded-Encrypted: i=1; AJvYcCW8TQhAOFAndVHKSl6paqgEbmESdfeCsFtFLcUHgt0Utwg3eoshNtzjwwHqUt3X0V6PnAnMVNIQ6ebu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3G98PIYJB5BPqolvjwc+fbAZGjpQNLotkZQkywHNCVOKzivCR
	vKeIhaxnBVzartx6WhH9SNjhd6VvgcEd0GFdq9AQ//OGTDP/yyny10pn0Equq0ua0elHPIxc+Tx
	SutI=
X-Google-Smtp-Source: AGHT+IE3taqIWL9QmJ5JHNSmCD5QX4JIPb6rHSNX0e4A6iWAkyFY2s5keuSgw/xpQbIvUxwI/i+2GA==
X-Received: by 2002:adf:fe89:0:b0:37d:5129:f454 with SMTP id ffacd0b85a97d-37d551d4fd9mr13656287f8f.15.1729148303407;
        Wed, 16 Oct 2024 23:58:23 -0700 (PDT)
Received: from localhost (p509151f9.dip0.t-ipconnect.de. [80.145.81.249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa87bbesm6283069f8f.41.2024.10.16.23.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 23:58:22 -0700 (PDT)
Date: Thu, 17 Oct 2024 08:58:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <Frank.li@nxp.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, festevam@gmail.com, 
	francesco@dolcini.it, imx@lists.linux.dev, jun.li@nxp.com, kernel@pengutronix.de, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, marex@denx.de, p.zabel@pengutronix.de, 
	pratikmanvar09@gmail.com, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, 
	xiaoning.wang@nxp.com
Subject: Re: [PATCH v8 1/1] pwm: imx27: workaround of the pwm output bug when
 decrease the duty cycle
Message-ID: <pz267mfsmohgthip52s7qeeo6xvw6w65eug23jw2qoghfnudzo@kjbp3brumgy3>
References: <20241008194123.1943141-1-Frank.Li@nxp.com>
 <Zw/maOfa12uoJlO6@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtagf2jnmwccljol"
Content-Disposition: inline
In-Reply-To: <Zw/maOfa12uoJlO6@lizhi-Precision-Tower-5810>


--vtagf2jnmwccljol
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v8 1/1] pwm: imx27: workaround of the pwm output bug when
 decrease the duty cycle
MIME-Version: 1.0

Hello Frank,

On Wed, Oct 16, 2024 at 12:14:32PM -0400, Frank Li wrote:
> 	Do you satisfy for what my merged comments's results and do you
> have other comments about this workaround?

I think it's good enough even without the comment that Marek requested
and applied it to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-next
as-is.

(Although the mathematical pedant inside me shivers when reading things like

	2us = 500 kHz

:-) .)

Best regards
Uwe

--vtagf2jnmwccljol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcQtYoACgkQj4D7WH0S
/k4bBwf/ZEIHwRC7YoX/I8XH4VxCiCkGMwD9TeUVYDdhckzALnmiXnP+2zqBHwk4
9Z0G/bDToAY9yy/hDPxvjcZAmlZFKesEJhX+yUQC9O2xxmmTsDO9iq23brROR3ce
yzmVt/HMVPdZmXLkZHAOeGN5R7OkC2cSLcCeQ7sHuKS2X+K5fSPahweUGmw/OT+Q
a0OxO/bBIkCA8H5JdG5E0zg7e10WCFqbP+HtqQxF0mcJNcKmlGNjr2LkxB/2PXUD
GxuhwRr8Yl5bYjEq+dmUQN2v26jCyizjDLXMaRyPJKfSF3OArfz/17QLPtKy0Rk3
OdYSAeOz0ag/O42mOaDPegULR4B7Yw==
=KwPb
-----END PGP SIGNATURE-----

--vtagf2jnmwccljol--

