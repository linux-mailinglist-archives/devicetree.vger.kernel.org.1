Return-Path: <devicetree+bounces-118708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E7E9BB50B
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7962F280DBD
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466731B21B0;
	Mon,  4 Nov 2024 12:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jdpG2xNi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4A618BC0E
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 12:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730724578; cv=none; b=CJlI0VficE0ixIc7TrG/voDSgpavh8KhCBpJLn2aJCJA5T+wAhVMZ3vS14Wf2opV/z4nxT1XIfU6jibblV641QtRf5HcsKKWTUIQKHKN5mQg1jE2C1chQ4x0q2KodhDgYez9sjyG+2LuRZcDBdkJ13X2eKWIlq43ElE6xOL7iLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730724578; c=relaxed/simple;
	bh=XW7hs8G36CNAEwjYMdInvWPMG8A66qheBKqJ1JBE+gQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lYFSg1GuZdoPm19AiAl5do/aANwZHnTctX9otWSnE4NauaVjbM2IK8e90GeLkHYJYywj12S1ZRFBT63oMrkeMzb5oFIWeaso4VXWuKVkmKpblRbYjlI9ZVVNFfX2r/SCfd/gM7BwfC+MlBt1fVkXlyZANy6N7/TXxQ3GrcD//ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jdpG2xNi; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d4d1b48f3so2456794f8f.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 04:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730724573; x=1731329373; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O+8ar25+zkPQftQoW0zSux+U6wynSTjWRmQVVLNYVMU=;
        b=jdpG2xNiyCJ1ErLBP8vWoygbwWBzaQrGJRSUt4QXWuqjtM945UF6qPaoAiEvH/VjuE
         AnHmMaLZ7GJD75gk2+Qozal0Qw5huo847vYlEtKqEw0oQRt9V2oEmiTBy+0rMS+sHqDH
         b4ewDf8S36hdCJZ8MtvckIsiP+XhAt9BU9yzqA3qVvvsTBn4isIdTp78J/CJcTnueAOs
         x57XstmqUrawt60Uj50dDDpMXoKYILDfZLoex1EO1pKhiIlMlkyIepFclpQPkyQL/OS+
         floUPRJAK6uVXFqrZAnxliRHCmO0K4Ht/tZaoxfbXhQA2r7AFVXJfyaba3sTfqwM9Pl2
         sIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730724573; x=1731329373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+8ar25+zkPQftQoW0zSux+U6wynSTjWRmQVVLNYVMU=;
        b=oaumYMIszv6KRioJz6/Od4V4zlwRh+IZPH+1EzAwlok9egOumMQL39P8JmGOq9Zncc
         sXvHML1kB06dRg92u8H462j24IJ1zjAMpC1oUqWyHE+F7TkupX7D3nfgzQxzfV5U9d9Z
         DIwXYmK36U+5lST0vQawS2xXQeH6qHbrK1z1l0YzELEU3Nc1v/rNIqqNk2jIx/Xxg7Yd
         kogIVUiL0+6JyqRB4ax003yHgUegseLe79t94Sm7phkl120k66zz40Cz4njICHcsxCl5
         YXwx9SHgbvNHtCIP1Lt+DuH8ZSDIjX4LARNQ+Hcy53q4142ZCqXRVUwiE1SU8H9NwSxW
         FqrA==
X-Forwarded-Encrypted: i=1; AJvYcCXVUcj1xjrof8ji4VVkPQt6xotlYze+jSpqRMVb8sLN+8Yx8v7Ot/iUJQWo+6MI1BUi9zCriJCGOVvQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg3kbAfXHJqWQgNnVzGESEb8OODQr8W5Kb+laPVc8jSXVf/Mn4
	fHTq+AtzYRDM4isThssqxXfSq7ejs51vMW3SNVThwgVyDS6QDybwnPTR3LKmbtg=
X-Google-Smtp-Source: AGHT+IElm1HbGEaP5DlS+q1JvYrUwqy8DDZ7yjKcYxuoKpT+ohFbYVJ6uOgTgXWdNzisAUhMCIAYvA==
X-Received: by 2002:a05:6000:ac1:b0:37d:3280:203a with SMTP id ffacd0b85a97d-381b7057644mr14063522f8f.10.1730724572692;
        Mon, 04 Nov 2024 04:49:32 -0800 (PST)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116b181sm13046590f8f.107.2024.11.04.04.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 04:49:32 -0800 (PST)
Date: Mon, 4 Nov 2024 13:49:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 3/4] iio: adc: ad_sigma_delta: Add support for reading
 irq status using a GPIO
Message-ID: <xka5svqs3jbjiqcz6bacih7hjqzjbrugutjii6qusdbqoxfrp5@5hcv3htsjtlp>
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
 <20241028160748.489596-9-u.kleine-koenig@baylibre.com>
 <a575430a74a7825a2df9fad1a8e073ad0507b0e7.camel@gmail.com>
 <20241030204429.70cdcf35@jic23-huawei>
 <y3amm7yj37lravbk6fcwze3jlllp4extmffqtx4jaoeqjt6uyl@nsdrcy2dk5kr>
 <1de551c284aaa9f4e91f91fa0c4ac570c8b7f2c9.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wdbnsv6t56wxh6yu"
Content-Disposition: inline
In-Reply-To: <1de551c284aaa9f4e91f91fa0c4ac570c8b7f2c9.camel@gmail.com>


--wdbnsv6t56wxh6yu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/4] iio: adc: ad_sigma_delta: Add support for reading
 irq status using a GPIO
MIME-Version: 1.0

Hello,

[adding rmk to Cc as the docs state that he invented lazy disabling]

On Thu, Oct 31, 2024 at 01:05:21PM +0100, Nuno S=C3=A1 wrote:
> On Thu, 2024-10-31 at 11:40 +0100, Uwe Kleine-K=C3=B6nig wrote:
> > On Wed, Oct 30, 2024 at 08:44:29PM +0000, Jonathan Cameron wrote:
> > > On Wed, 30 Oct 2024 14:04:58 +0100
> > > Nuno S=C3=A1 <noname.nuno@gmail.com> wrote:
> > > > Regarding this, I do share some of the concerns already raised by J=
onathan. I fear
> > > > that we're papering around an issue with the IRQ controller rather =
than being an
> > > > issue with the device. When I look at irq_disable() docs [1], it fe=
els that we're
> > > > already doing what we're supposed to do. IOW, we disable the lazy a=
pproach so we
> > > > *should* not get any pending IRQ.
> >=20
> > I think this is wrong and you always have to be prepared to see an irq
> > triggering that became pending while masked.

I did some research, here are my findings:

https://www.kernel.org/doc/html/v6.12-rc6/core-api/genericirq.html#delayed-=
interrupt-disable
reads:

	The interrupt is kept enabled and is masked in the flow handler
	when an interrupt event happens. This prevents losing edge
	interrupts on hardware which does not store an edge interrupt
	event while the interrupt is disabled at the hardware level.

This suggests that lazy disabling is needed for some controllers that
stop their event detection when disabled. I read that as: *Normally* an
irq event gets pending in hardware while the irq is disabled.

The lazy disable approach is expected to work fine always, the reason to
implement non-lazy disabling is "only" a performance optimisation. See
commit e9849777d0e27cdd2902805be51da73e7c79578c.

With the DOUT/=CC=85R=CC=85D=CC=85Y pin the ad7124 (and others) is in this =
"Unfortunately
there are devices which do not allow the interrupt to be disabled easily
at the device level." class.

However that makes me wonder what is the difference between the
irq_mask() and irq_disable() callbacks defined in struct irq_chip.
I don't know, but there is a difference for sure. So please forgive me
for (probably) using the terms disable and mask wrongly.
Also I wonder what happens if a device driver calls

	irq_set_status_flags(myirq, IRQ_DISABLE_UNLAZY);

when the respective irq controller is one of those that miss events
while masked. Shouldn't that better be caught?

Best regards
Uwe

--wdbnsv6t56wxh6yu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcowtgACgkQj4D7WH0S
/k5Qmgf/X+jaKnfDQ6JwsJEY35+UnbzimBPfwS8Uj8CBFwwUKg1bA1tmFyF4xmZJ
sAjHWQtjR7bxtiVm7hDGzieLjWNTeP01xHM+jkXvLSXYcSeUW5A+A8mUy29N55DN
PVWLkbG09V2AudOc7GvzPL+Y8dZ7H45XbtauKs3OiyfZdJLZUXhqzsKfsg3t5jDE
chTVMQ9cM4tdMdBVm82XHrySR5bQWgyfINr5Ko9r3o1rH5aXxXNYTORlhBu8vqJt
rj2KKnP73YS1lDKYJjgrga/8suMZft/bKKQnEXXwXCP7USm6PHDtJOmlwzurTgOV
iyqD1dNq4nPhFC/ikU7CfcZCFVpygw==
=dgpW
-----END PGP SIGNATURE-----

--wdbnsv6t56wxh6yu--

