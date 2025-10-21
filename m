Return-Path: <devicetree+bounces-229491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 863D6BF8345
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:12:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20E2C19C00C9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE9FC34B697;
	Tue, 21 Oct 2025 19:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KrlaPjw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8793431FF
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761073938; cv=none; b=NTzAfFQzfeb5viEPc8spE4TWDKCjLtSwWFL0CtPeuoz9CYwlEGXATZtQkhCWsqqXiU9+Kne8HtIIeNPzGvnOq2lbIxgOzSrX+IvlqIRfYCGGnX+RuScHPNj7COvHTmygVF2Z9F7LpkFOHgDauOGxzxCMN5lpQrK/WMcrfedelsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761073938; c=relaxed/simple;
	bh=hstBXS/TVUOaaiIRmLPtbLaaswkp/Zt78i4TpWCCmEw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZljrKechhDGxZeQ1aTmeYl/7PXRczzFs+ZIZLLoAxnu2bL3HmevaIF7XO7I6ln4i6Vtgek5dXbctDH8VFpSYZ29rFUAKespGJQycvj/m2elFh/BkiWJ9/Xx/RDJj6LaIRQzy1Nb2QT7O7zbfTA36wg+3zTrF+iq0ypuKVOHJb68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KrlaPjw/; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-63e12a55270so946131a12.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761073935; x=1761678735; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hstBXS/TVUOaaiIRmLPtbLaaswkp/Zt78i4TpWCCmEw=;
        b=KrlaPjw/zw83E0ZbRGZ0Td1jS6BrwjCH6V1EXhGzJF/Writem6G3OOPRA1cx4kzrDC
         uP2sHV+R58D51KsXZEc9Wm0rp6q4cdHKl8t5mbztfxbpy6KGhal5lG5mqd0KHu+6u2qI
         6pUDBWgh+DLkX61WWTOVbHkWXu2n0z/jrw/TcHvHTpa9SlpUtO9YIAMWjYo5NnYHhuQn
         nB0bWhkFTSOb6kY2VYBFxKAnzfjF0pJcYb+UDbGxYpP6hN9WdnsRklvxVqnnCxj7Y72a
         TPKKnVwAwMGGQVwMkKtLN6YqJdYUWHCL75OHVbLmafpIbda6fzGD/eNAlhuGL7Z86FIj
         nfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761073935; x=1761678735;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hstBXS/TVUOaaiIRmLPtbLaaswkp/Zt78i4TpWCCmEw=;
        b=e0hK8Gbmb7G9m9NIOZITEvHH2WVGATS7O0V7ymjCB5dVh/76+KoWkoHIYvQEC9Vh1S
         D9bRMA149yCJnX2hvCdUuQCODzHQConDvQQGYWREmq0b5BqIq3mYbUhc1cQUcaAhcw5P
         0a3C6Lh3u8h+eMdiR9/9dhhqv741Gsa1GKc+xDJWqmyvaylzof+XdRCxWg0KGgBIqf/w
         XE9Cc2vv+HTGBW3dTklMS/cdJ8wFowuF5c1Y5RW1Ka/m42JzWcc5DeCLW+xNdnxTlAko
         SslY4RIiC2uG89+Pc04HJWdqwn7mNv/BoSRR4TC7xa3oo2ed/zw+0CnnNG1KDS2WG2Hb
         3IFg==
X-Forwarded-Encrypted: i=1; AJvYcCU4PfqN6DDkCWc+1R3XykYV8dvSorgwUL6OFliDtvKKxohD0AbaIt1KByXYuQqfB99p8krBpgjfSiYp@vger.kernel.org
X-Gm-Message-State: AOJu0YwBSAVMOozeOUOrjPOZN98tFI3tDFT64r0GPXH1xT+BCkGS9sAA
	5A4+aEdg4HntxJcNTGZZyiGIejYPZ7X8/N63C5CbRFztDzQ+T6ms97M7
X-Gm-Gg: ASbGncs3HVEBuvGa0auP3pamlsohTvizwZwdNKh3ZtkDazQVbyxFrPAZLmCV4f/u3/m
	wYKLCUsmk84T8ECk4kkSALk+2xVDc2Fr8Hm+Y4n+2+C5Iusnwo7a/qUrCPoJAATkjfYfR0qhcbR
	zgWURfF38oR7dkKV2MLDYQIlslZVVE9VU43Cb2yfAqUdZFC8RTS45SwbYKGLvbFWCti/nEnSagg
	IgRvzi+3KzY0nyBca2NUuYLXh4jcHZX9iboCzxM/aeJMIUFBIe9b5qNUrXKKDUsCFlOERK/GHzq
	uz0mmNGV/VYJZ6L75U50YSJrHBLGF0izieWmDgNPx/xR4AE3qQHpygoW5rd1+9PDqCSXFT4AtfQ
	IM4pQc2k/NdZX4mwha4N5OPkUduXAtn0wjQ/mFd4rx7gmEF5fjJ9f+FEb35qwmnIulfC6+pfUzO
	dnnJHS0fYjf8kkWZzkPhygZKbrP01H+6+cm6v5coCWD4TdEmGorPGXYMWS
X-Google-Smtp-Source: AGHT+IF/mcKyBnV5vQ1RTt10Y+TO7vaXwW267VWXkDS1GyTMV+9b8aBDdkZD6aV3L8pfV3t1oFBifw==
X-Received: by 2002:a05:6402:1d49:b0:63c:43e6:16f7 with SMTP id 4fb4d7f45d1cf-63c43e618d3mr16489930a12.26.1761073935222;
        Tue, 21 Oct 2025 12:12:15 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4945ef35sm10305713a12.28.2025.10.21.12.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 12:12:14 -0700 (PDT)
Message-ID: <e7873e6ce07cd92f4b5ce8880aa81b12c2a08ed3.camel@gmail.com>
Subject: Re: [PATCH 1/3] ASoC: cs4271: Fix cs4271 I2C and SPI drivers
 automatic module loading
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>, Wolfram Sang	
 <wsa@the-dreams.de>, Herve Codina <herve.codina@bootlin.com>, David Rhodes	
 <david.rhodes@cirrus.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>,  Nikita Shubin <nikita.shubin@maquefel.me>, Axel Lin
 <axel.lin@ingics.com>, Brian Austin	 <brian.austin@cirrus.com>,
 linux-sound@vger.kernel.org, 	patches@opensource.cirrus.com,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Date: Tue, 21 Oct 2025 21:12:13 +0200
In-Reply-To: <42f11845-35f2-40e0-b860-c25ba6f8d503@sirena.org.uk>
References: <20251016130340.1442090-1-herve.codina@bootlin.com>
	 <20251016130340.1442090-2-herve.codina@bootlin.com>
	 <60fbaaef249e6f5af602fe4087eab31cd70905de.camel@gmail.com>
	 <20251017083232.31e53478@bootlin.com>
	 <d6bd466a5d11b016183db0ac3c25185fad3036fc.camel@gmail.com>
	 <4b851d47bf1d03988a27671ae21208cdeed76837.camel@gmail.com>
	 <5f2aeb66-97d6-41b7-8c80-87674c1b14d8@sirena.org.uk>
	 <d51a3e4e0ea960df60d5ba91817ae50eba0a4026.camel@gmail.com>
	 <42f11845-35f2-40e0-b860-c25ba6f8d503@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Mark!

On Tue, 2025-10-21 at 20:00 +0100, Mark Brown wrote:
> On Fri, Oct 17, 2025 at 08:14:43PM +0200, Alexander Sverdlin wrote:
>=20
> > "Reparing" them as Herve proposed would result in I2C modules being
> > loaded only via "of:" style modalias and SPI still via "spi:". Which
> > sounds all but consistent.
>=20
> > If SPI ever adopts the same of_device_uevent_modalias(), both backends
> > would require "of:" prefixed modalias, and it will not be possible to
> > load the proper one for the corresponding bus type.
>=20
> > What are your thoughs on this?
>=20
> Or at least you'd get both modules loaded with one being redundant.=C2=A0=
 TBH

I'm quite confident that udev/modprobe will load only the first module
from modules.alias file.

> I'm very reluctant to touch this stuff for SPI without some very careful
> analysis that it's not going to cause things to explode on people, right
> now things seem to be working well enough so I'm not clear we'd be
> solving an actual problem.

The actual problem is that i2c-core is producing "of:" prefixed uevents
instead of "i2c:" prefixed uevents starting from v4.18.

Most of the dual-bus ASoC CODECs are affected.

Now declaring "of:" to be the new I2C bus prefix for uevents starting from
Linux v4.18 sounds strange.

--=20
Alexander Sverdlin.

