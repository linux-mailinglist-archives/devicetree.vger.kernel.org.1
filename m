Return-Path: <devicetree+bounces-323410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eQy2EjBZT2q+ewIAu9opvQ
	(envelope-from <devicetree+bounces-323410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:17:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 975C572E291
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:17:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WTBH081n;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323410-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323410-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4012F313D069
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24D43E9C36;
	Thu,  9 Jul 2026 08:10:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF793E9C05
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:10:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783584634; cv=none; b=jydIVkWRuPcIZ/HxdZah7zrEy3AYpho5LzqJKis8v0avCwQKz1PoZtlwBlBHstMjPPRuIHVJDt6iJpawUu42Q7fRxuA8srg7Fi/I5AsOphbUMzDcasj/9u4FT0KcFHDEzFL3SqJootvhwCFs4fWnkngrGCeTh5rCaSE2D8EpFwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783584634; c=relaxed/simple;
	bh=OEahzOA/KTRGTvkyoCk8o8fpVF85458RzotimJ/M6YA=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FgI9aymOPSjmyVZqfVrXi/5ekvy9Q6BpNTWpT78NH9S3UjLBZYXNdyjqsFnac/NvlcX/rmfc1hOWiSDW3bP3exWOcgxJcXQHKoKEWkm4ESeDTVZbP0DXZhSoCFYfJrRagG8QGgUAl1j1r7rc5vmUSu7W3lfMI1pUfYSeFW1Lr+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTBH081n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77B421F00ADB
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783584633;
	bh=OEahzOA/KTRGTvkyoCk8o8fpVF85458RzotimJ/M6YA=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=WTBH081nAVdwug7LFzIXFDgrbegoCxoadFT6WO6Frj2908/6QzMGpqt+CfrEXJqRU
	 rcgGiDX4HCNTU8FqoW1govO01jdvhuzUXNNJ0tTwJ/a75ha6cknVn+4Ri9j8V9UT6j
	 FEDw2qbGgQMoPPJBJI33u2xbH/NNR/2Po70XNcNawxYMXR37COZ6bP05UqWxnXPglt
	 +/3qvpADr+xjrw+F8R/KNXi2aw9RGkyyEgsPKWJU1EspALz+kc34kr4mUtD5XemHJd
	 k7mj/FGZm/6JeoPOKEQouTiImik/jECjqVZ4/3PN4IM+ItDJKnXZfeOx0R9CmyjUkp
	 t8QVaWsR+PBRg==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aebba706b3so1812440e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 01:10:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoHoyTJ+RfFSNsAzTono5VhWxP0SD7oQsGLe6Fta/sCnk8Go5tcIfHDIQZuFoImK4efQZJrnEnRA1W7@vger.kernel.org
X-Gm-Message-State: AOJu0YwORKxNTj84J5jJ/LqU+ugET98rgFKtXjIO+dpSzhOuTv3ncqi2
	t0SHTdOhKCFxgW7N71tYrOmumWQxX2abeeQ0zSsu5EuLiSIZMmVviD0YJBf7nJW4tR7+fZR/u/M
	/PHXnq2nfCh/HWdHrx9VzPsBAIz+zBd2cRhIsx862Mg==
X-Received: by 2002:ac2:57cb:0:b0:5ae:b75a:7176 with SMTP id
 2adb3069b0e04-5b0115b31cbmr957946e87.65.1783584632201; Thu, 09 Jul 2026
 01:10:32 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 01:10:30 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 01:10:30 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
Date: Thu, 9 Jul 2026 01:10:30 -0700
X-Gmail-Original-Message-ID: <CAMRc=MfJQm8RqhiLbRA1x7skt=jW8vvTD-1VCDcw-dO_VjisZQ@mail.gmail.com>
X-Gm-Features: AVVi8CddxA9iUF7IgAB_SRFc1uKWkA3NnqyOXCt0i1LuR82tf86E-F3pS5f_rfg
Message-ID: <CAMRc=MfJQm8RqhiLbRA1x7skt=jW8vvTD-1VCDcw-dO_VjisZQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Remove support for platform data from samsung keypad
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	patches@opensource.cirrus.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Russell King <linux@armlinux.org.uk>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323410-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:krzk@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:patches@opensource.cirrus.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:linux@armlinux.org.uk,m:broonie@kernel.org,m:linusw@kernel.org,m:ckeepax@opensource.cirrus.com,m:semen.protsenko@linaro.org,m:arnd@arndb.de,m:brgl@bgdev.pl,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 975C572E291

On Thu, 9 Jul 2026 06:52:58 +0200, Dmitry Torokhov
<dmitry.torokhov@gmail.com> said:
> Hi,
>
> This is a reworked and extended version of the series previously posted
> to convert the Samsung keypad driver and Cragganmore 6410 board to
> generic device properties. The first 8 patches of the original series
> (general cleanups) have been merged into mainline, and this version
> focuses on the remaining keypad rework and extends the board conversion.
>
> Specifically, we rework the Samsung keypad driver to stop using platform
> data and instead rely on generic device properties, and convert the
> Cragganmore board to use software nodes for all its peripherals, removing
> legacy GPIO lookup tables.
>
> We start by introducing a compact matrix keypad binding and implementing
> it in the driver. To support referencing Samsung GPIO chips in board
> properties, we add infrastructure to register and attach software nodes
> to Samsung gpio_chips. We then switch the Cragganmore keypad to use
> software properties and drop platform data support from the driver.
>
> To convert the PMIC DVS regulator on Cragganmore, we add software node
> support to the wm831x regulator driver, allowing DVS configuration via
> device properties. Once the board is converted, we clean up the driver
> by removing legacy DVS platform data fields.
>
> Finally, we convert the remaining peripherals on Cragganmore (GPIO keys,
> PMIC, WM1250, SPI0, basic-mmio-gpio, and LEDs) to software properties.
> This allows us to eliminate all legacy GPIO lookup tables, which also
> fixes incorrect GPIO chip names ("GPIO<N>" vs "GP<N>") from previous
> descriptor conversions.
>
> Mark, it would be great if you could give this a spin on Cragganmore.
>
> Thanks!
>

I admit I haven't looked at the series in great detail but it looks sane and
you've been doing these conversions before so I trust your judgment.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Thanks,
Bartosz

