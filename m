Return-Path: <devicetree+bounces-263700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEKjKHeiiGn9swQAu9opvQ
	(envelope-from <devicetree+bounces-263700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 15:49:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E2E108FAB
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 15:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4D633012C4D
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 14:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59F1359FB3;
	Sun,  8 Feb 2026 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T+hiCOLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A442BE625
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770562162; cv=pass; b=R4bWAJ+2Hxlge3d0ovsnPtmoaA+cmIh6DOeuzptx/aNSZ+YEsbvkZfZY3BDoSJPyfRvU1V3h0eXioPd1JRqSrxCzKesybrOBg6usjPJ4RBwW4DGCsbgUB02fQxf3zjqbrZUhzMROcLRCaNAPqP4RvY4iYoKmbAKH3SIO3FZcnHY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770562162; c=relaxed/simple;
	bh=FmHJHscw4UGRqf6tadsbey53/7alBZ0goPH23uKBsZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qYNyKUWE1JXkZfdToyhkgGtrEREDTIWs9j2sJTyWUz9vt3ssP7G0vTi857+2i/6TKk9JHs8j1AVuyfzUUZ+KnUWARgApCYjbryzfaB4+tNXE3CbWHOlK91y+OFGfBH109S4s8QhdWseqELN6mIkm0gDSsEg6FmQJB6VDhd5I4sg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T+hiCOLF; arc=pass smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b884ad1026cso557834766b.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 06:49:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770562161; cv=none;
        d=google.com; s=arc-20240605;
        b=RiJPPuGjR6ND2zEWGrhnhallrNbdhqoa/XgQZ0yIQq1ZqfDyyWWaBpyMYioFGW1770
         xg76VWSbx1ZhdVovbX6YH4DQhyTlofA6R0pzMrLgtdJjQzc7FEh7QcVhepzsMCTu1SOc
         Z1k5E6aVG15AGjTlC09gDzWhvyydDFlbd6L+rHRAsrH92Bn24ZT8sGt1tNnQ6Atgrdl1
         ZrarPgPYBJIXEzo2he1yraRB9FbKADKpU7vzbd2YlAY4vl5kdpDFumaOa1MHWsBn3xPc
         GtWAX2sPB872CyqSHLFpe5sWTsizUADujPo3Mg7PD5MNlwvqyY81E3RRxVudCbxGiALs
         j8xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7QS0VkNqOpSXotrnDMRD5sTIzzQObxdRFOn5/qTfAgQ=;
        fh=jt9XRfn2TraQj9VWnrmEUOwHUXyqqWmJMji/n8r4Hzk=;
        b=Nbu+VarwVG7I7Ra7rgATaHFEjeCeHmNJaLMFlgqn6IxY5TLuHHn6Dnb15Ugi6LrRaA
         3ycBOCd44bRPmupWkTWBt9dBMpUEl9Nyc9FM283lWWD4SLDv3gXX+XjB4HkRS/qioPdA
         8JqoZBNS+BAhNsRBTziXQD/dOJSyyOPbdOqN5REroBeOmfvAhknJEc02SIk9Y5P4CDMs
         gOqg8qNO1u4IpUKKzlbfSh3mYy/EwfBOg71yOKmtBjY7wAKEu3HtiGxkdEtkZQEYWD5f
         144bKmvvhPMi7CXfeLvO557mfXYRcZU81+tETg86roI0uJLOv/AYkLcYugC1vERPwyQK
         pfFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770562161; x=1771166961; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7QS0VkNqOpSXotrnDMRD5sTIzzQObxdRFOn5/qTfAgQ=;
        b=T+hiCOLFdGVaRU4AS5E60jFWT27jFP/yUq2q3RU/DhEQvXsB1HWbwojWFVn0RONcCp
         NwbnVVVBX6OIIFMZqcOsEw3co9xxpT90WlSLJyxJ3NGMOVB62Enn5j6zCGRusNX412ak
         qABLXe/BFjyrEkc5xm+/zRs8iYkDtx0zzIn/uQwTafbKKEPjfBc4pBHir3EcnyOoQtfB
         mAGmM7X2Uu1yChZkbh8shRxdHkyTzaHe/Z0mWcByCsUY9zTu/SSlPy7RRvApo7i9wzmD
         YqCJaBuJU5kWkPUvv0kUbFIbwU9PenncD04ST7UxABy6dhVB4eaHP83SSZPR1Nic1S7m
         hdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770562161; x=1771166961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7QS0VkNqOpSXotrnDMRD5sTIzzQObxdRFOn5/qTfAgQ=;
        b=ZxTfKaVgAV80NCQGwxVirCqMPePFUriiKkyzEdQVU2B8+VK0+ocqjWg7GkVSpQ1ZO5
         HMwjADJy/H9WihiBlFyUGYhRV3jIpyHiinIATlnp8fkiuUogwSVNoRd2WAlcvkdF2RZY
         r1ra0U296clnCuf/pHEbOGPRW0Hhdk9gVzu740an3H3+9OLBkUMUrEamZxUUwWGPPstr
         YFAHv+bF4SsgmI9GqpQHP07rLohlCMhg87m0M14c9XsjS6p9J27xI2YT1GFaD0xyLwks
         tD/6IR6M6Yhxmc0at4gYcoGiPHiu0kNqk+jCrMqHw6RuDX9f7sHWt5i62UyTztC7y1Cq
         DHTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp44iRUteXt0hl8dlftFHfETo4oMXIS0eBSw5tqWUTft8ePhR/SlTFppHbx8OJ+uaSJYpF0JHuejYr@vger.kernel.org
X-Gm-Message-State: AOJu0YxFekyyT3Tu2Is0/GzhDYD53DU6e44Eiwq81D+GvyqyaFGpGpHv
	3UkbS/TIgwcnGql2UZhDnE0alGhf+DUgz1Oqhj0n89uC0OV1DD7gmYjPQXa//bRiLEWAQTuwTAu
	vdx/Z83nxC0NmN9Kz7oVUnY42lgwje9M=
X-Gm-Gg: AZuq6aJNFW5WZeX6gfEgzlOCu5dfMrK0qvcyoZQVhLdfgzWhemr98K2U+ddOzZJO4gq
	DAqzTq9dSahL+rKByc8lr73NtqamQwRBbDAC+cILEr59Tchy+lALv6EC3XKxLNkiW4yKAwMq2YE
	luMfAVJyYjkQ2n4l0++AyxSoqx0WMywsrquoZ1ktAOAO57orKHOIIyoHXVo1FoGEi1waF7iNRDu
	tX8xN2IUEti1ncMsDqirpME/MKjrWgSQzv0cvWBGUqnj+/fO49iF3Y+Fq1pFUMuqyYC1SIo230M
	Pf6n3tNanrxx9iGWbhcyfSmfnlxx1Zp/iM3aiJXT3BcfiSAPoXJtdIfTBNDNo3KITrUk2yw=
X-Received: by 2002:a17:907:9413:b0:b7a:2ba7:197e with SMTP id
 a640c23a62f3a-b8edf25c528mr436693266b.29.1770562160683; Sun, 08 Feb 2026
 06:49:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-12-clamor95@gmail.com>
 <aYiH8iwetvRfWxGI@smile.fi.intel.com> <39B7F089-5B4A-47F7-B2EA-A526B290FA77@gmail.com>
In-Reply-To: <39B7F089-5B4A-47F7-B2EA-A526B290FA77@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 8 Feb 2026 16:48:43 +0200
X-Gm-Features: AZwV_QinSJks_QhB591HGO3jm53Tp3IPIh1wwVGFN0DYduqCRz4P0_2il4ahi50
Message-ID: <CAHp75VdatO1c5DvFghpSOLvr9PomrT3=tEADHJ7U8Xf2tgN2ag@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] mfd: motorola-cpcap: add support for Mot CPCAP composition
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263700-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,kernel.org,baylibre.com,analog.com,gmail.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshevchenko@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F2E2E108FAB
X-Rspamd-Action: no action

On Sun, Feb 8, 2026 at 4:41=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail.com=
> wrote:
> 8 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 14:56:18 GMT+=
02:00, Andy Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=D0=
=B5:
> >On Fri, Feb 06, 2026 at 07:28:45PM +0200, Svyatoslav Ryhel wrote:

...

> >>      { .name =3D "cpcap", },
> >>      { .name =3D "6556002", },
> >>      { .name =3D "mapphone-cpcap", },
> >> +    { .name =3D "mot-cpcap", },
> >
> >Drop inner trailing comma.
> >
>
> That would be a stray change, wouldn't it?

Have you read below?

> >>      {},
> >
> >Drop a comma at the terminator.
> >
>
> That would be a stray change as well, wouldn't it?

Have you read below?

> >>  };
> >>  MODULE_DEVICE_TABLE(spi, cpcap_spi_ids);
> >
> >This can be done in the patch that adds driver data.

^^^

> Then lets move there.

Exactly!

--=20
With Best Regards,
Andy Shevchenko

