Return-Path: <devicetree+bounces-259430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEK1M5g+d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:14:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFA6868B7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 183203003D0C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917C532ED51;
	Mon, 26 Jan 2026 10:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZSQ0iVFX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FBC32E6B1
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422484; cv=pass; b=a7cAPSTnMG7OqUuPEbog125FqGu6AVRZi4MuaRaFLI5rQNN4IlpW+A24jRorikYYg8SPNPlJgx+Ydi2W4NyGlT79YBteNXUbeu1Nt1KQ0vBWQUprfK+SSuyTA+7QU/WoUf4pw1074iGsGEQ/PoLOXX5pWSbDu2y3Kb8edD0Br+4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422484; c=relaxed/simple;
	bh=592arfCzKGEEI9SsaoPXnjPAToUssVCz65hbUHolUeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mdJWo80EeSdqmxtqQMFmrQMzaQEhmeA2uUNrgcszJW6E+LdOaRZFsko0ydWJLFViOEOJXyRsl5Wnniwqb+z793eEn1fZtJlvRkbmvIRabHJ2wCn4JF+MQY2r/hN8oqIjwXNl25kxbKbfEY5VEDvVUgc/s56d7zFe45GO6IvhpW4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZSQ0iVFX; arc=pass smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48049955f7fso36547825e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:14:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769422481; cv=none;
        d=google.com; s=arc-20240605;
        b=kaDJB87z8TPvT5EfEN5m9V906b00ECc3+AxwkVUHxzDaQZWp3Zpg8heIFTB5w6gH35
         EGmcmNCtw3zaXxNwU3odwMzoMdXl8QUCv2yopD+uT9tND6ZNK2jMtco740ZUyWUkhesF
         1or0dTjVAL7KBOKtPGVbBBie5avCioh7A+c6Ywu8e0ltBJCOwaI7DN5mzZlgCSziF5Dp
         NROD4Xyke2BdbbRnOD38zuQG1vUZIr3xXFb7G2Z2xKfKSD+E1KFKcrQIICY9XaYltxSy
         xkqOTYkBFKKJ2Y1ETRIxwOCdS7iG+FpFHqp9nE146Ob+l7Lw59r8YdnrhBxChttyYUkW
         ictw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5fg+wculjolsM/YfIrc/6Q4VkgefoBAjkv+6Ml7KMXI=;
        fh=tOmMq/DHUTYHKSkJaqt3Lu9kHmsl4lTHKf7E3LFSJds=;
        b=IjAWkjFqs9nCeMKgkcP21KfFu3+MBh60TCDQh0Mylo9K8RBJbkcNgB3n+1T+Jhktsx
         QCG/u5HgMtBJxcPddn1qnlA3oa1+MBsR9aj1HS4Vk4Tae4rN0HcvquYBBM7iwSPnCPdc
         Uq2o1TjivbNcCmnIaDSEVG3lmhLygJ4RZHccTBp79UGc2rGh9qbRANW4KhhLJG802Jmm
         iW/lJGUFozMR0L1ocU/GThz7iQOxvwFi30IBzFUvZv1nH+LN0xGgcuWxsITCLySSpiei
         hVb+VKAmwdkDwmHJhjF9FwSwA4GOjlWtgsrxgsRaEuOlNJRazHyycpQqWlHlSwYHytVB
         X8/A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769422481; x=1770027281; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5fg+wculjolsM/YfIrc/6Q4VkgefoBAjkv+6Ml7KMXI=;
        b=ZSQ0iVFXMmjK/kc/36PWwYn4SIrOzwzn64dBLWxLogB/IELrzncsWDA2xmecOprrql
         XB02nP+PMTjnLm9+7uQWvkVWfFQuFyJHqwnyyOLewAUvPrxlZ35sX6hdzEHSJJ35tfhy
         GToGY9njBZgbwQmlJnAysa7a9cKAExGnzIgRHVFDt7HTPd8aye5R3dKMj6SoCP9h4nKR
         KjG4ouvwKNB/XLuganokKzr4Sks2DKsa1Wdtyj+5BCGndEPt521lm3uJR1lEjqVWvIQP
         AMUC3K66yaytIOkv7DztJ5qn46kpw5Y220aiMyHvs5louFTljILfK6LpFWjcyNfRmcvM
         Hxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422481; x=1770027281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5fg+wculjolsM/YfIrc/6Q4VkgefoBAjkv+6Ml7KMXI=;
        b=rB+c3IXygKZOdgg1OWyOHw75S0Mjj4+erH1e3XmlCNbTOkINqLldsc9eHluGm84Kst
         5D0F1yKXKf8nmeklBm+EuHo/vGU1OG5PQBo8JwXaSScrgpPam1uqwhFehbIckpgKz3kx
         T0AU87IwJOjNEYSjMgEMDkrulghRqE1aqyd404rPGEH6k/juQhS4Fj4eT0z//8XkzsvB
         jasutca4jKJ/NZEGO/mMLKWjzCJTU+AYPbpDkCI48nrzjLUWTIr7bksaIa72WlcWwi+y
         5XTmdfg9W2uLg6ouTwSel35CllDVkylyh/HTIXyZqRKHLhyxOmGmG0cTzYHZ5wgQqwCX
         ioww==
X-Forwarded-Encrypted: i=1; AJvYcCXkjag96YEvbo1QHBu2fcNrOgBeOBoTnUYt+AXfCnB4T7OewALEMoQHK9CaOkXIIDksA6IbJLmSkuRA@vger.kernel.org
X-Gm-Message-State: AOJu0YxyFxeGzOnMSgQauN5ZRhN9AOcV77AZ5EHFdU9iXRxiWah6OjBs
	tUOKfF29z72Pkwq3tREYfdt+whNRptqPaBbaPjK+Jom2L7IjAz6uxIKSERfihSmfba8BJSWSmZW
	ITTx/TaYxS0xjXZOcXVHc5AXOaoJyBvc=
X-Gm-Gg: AZuq6aKnZzMWKhU05XC6t7ShDVc+TMpQA7hPRBmJJga7S0LHjgrahfWPoylcJSv+f20
	38rxMhVGupnTWf03aZGrjhpLQ7cCOwz2uzYuFbPlErCvKL8cMD4UpzdzwK7L4HcT0t/EzpTUYFj
	JhEynztfEIPndnfMhlX4GSJOLVJG500hPfztgaImUwQxnEptSIFsS1IXBFgjrSgtwj8P2hjagCi
	FHmdhnV4/ZiM+2/TuPRsbXqhU9swubzzCMF22rL603O7VYfzy5mqivhztmKRqc35OXtHEBs
X-Received: by 2002:a05:600c:5494:b0:47e:e78a:c833 with SMTP id
 5b1f17b1804b1-4805d064297mr63059575e9.32.1769422481165; Mon, 26 Jan 2026
 02:14:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125134302.45958-1-clamor95@gmail.com> <20260125134302.45958-10-clamor95@gmail.com>
 <aXc-Sklb6QTWLvcE@smile.fi.intel.com>
In-Reply-To: <aXc-Sklb6QTWLvcE@smile.fi.intel.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 26 Jan 2026 12:14:29 +0200
X-Gm-Features: AZwV_QihBi0RBeQR-keWUCWb4tTVxVMg1HeR7j7c13MGT36B2hq70uBMvm9ETsA
Message-ID: <CAPVz0n3QBhi4qmyT2y7J8i_3kXDW3tXtC6D4XQnhz2H2W4-XRA@mail.gmail.com>
Subject: Re: [PATCH v1 09/10] mfd: motorola-cpcap: diverge configuration per-board
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dixit Parmar <dixitparmar19@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AAFA6868B7
X-Rspamd-Action: no action

=D0=BF=D0=BD, 26 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 12:13 Andy=
 Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Sun, Jan 25, 2026 at 03:43:01PM +0200, Svyatoslav Ryhel wrote:
> > MFD have rigid subdevice structure which does not allow flexible dynami=
c
> > subdevice linking. Address this by diverging CPCAP subdevice compositio=
n
> > to take into account board specific configuration.
> >
> > Create a common default subdevice composition, rename existing subdevic=
e
> > composition into cpcap_mapphone_mfd_devices since it targets mainly
> > Mapphone board.
>
> ...
>
> > +#include <linux/of.h>
>
> Why?
>
>
> ...
>
> > +     cpcap->cdata =3D of_device_get_match_data(&spi->dev);
>
> device_get_match_data() from property.h.
>

noted

> > +     if (!cpcap->cdata)
> > +             return -ENODEV;
> > +
>
> ...
>
> > +static const struct of_device_id cpcap_of_match[] =3D {
> > +     { .compatible =3D "motorola,cpcap", .data =3D &cpcap_default_data=
 },
> > +     { .compatible =3D "st,6556002", .data =3D &cpcap_default_data },
> > +     { .compatible =3D "motorola,mapphone-cpcap", .data =3D &cpcap_map=
phone_data },
>
> > +     { /* sentinel */ },
>
> No trailing comma for sentinel.
>

noted

> > +};
> > +MODULE_DEVICE_TABLE(of, cpcap_of_match);
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

