Return-Path: <devicetree+bounces-302539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aP0AIUwYFGo4JgcAu9opvQ
	(envelope-from <devicetree+bounces-302539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:37:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 224545C8B8B
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:37:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79487301A7F2
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 09:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1F123E8335;
	Mon, 25 May 2026 09:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L8o0RsKP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCA03E7145
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 09:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779701820; cv=pass; b=MpD6m40J5CeqczUPUXY5yqs8hScZ715EKgBjWBvbaqmnP1PmI1VKgagY/dreXl8b2ivX5HfjW12hxMBdrRlentO04XxnWP2DqXJJUXMl29YnYxgIZC5H8Nw4HADJHrieXlS+zZ0Ec2Ghnyg4kr4Gx3a3eQotd4gBrWxE5qUYCNk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779701820; c=relaxed/simple;
	bh=bG2lZTq0AlonyzQJsp3hruKHT4bKY6rEQmFhRZ/Om5Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aZcghT5xdFeplHReSkBvj/n8B+ZDLXLx9rILMsl5RTHQNafnbCJuRTKF/+8Vxcr8840MPm0NvOnMmNCvP8UvQ/fL7hdnR9S8KgZ/rR2xeU+boeJ85gAixkX58sJQoxtsvOrkF5bXqSZq17xNcmPH3OtI0+AS/UTsMxV+xbAVloo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L8o0RsKP; arc=pass smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-65eb1b25c77so3864310d50.0
        for <devicetree@vger.kernel.org>; Mon, 25 May 2026 02:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779701818; cv=none;
        d=google.com; s=arc-20240605;
        b=Wg8Gx71Y0rEC6YI2dDiLzmWlgvOU87blDjB9sUwJvNLXWcYc5stR8TCw99OA5Nc1nh
         65uKVIqtjBTmnzs173rcs2wyQTGipC8iX5M1JqNMPRT9lGli5ArM5kheIZUKP6bA/Xpp
         Rv33PlU82sh7hEQ/zZ8mafQHXwbgekeTuHDQQrlcJSLYuD93cKnWJXoaPHIJ5aRhY7pi
         l1+kyVdixhthvnOdYBRZyI8x5zBMpdnq4tXl3Rdlo5BdcvfB5zT/D88LsqLROHXH3L8H
         cjBki+ORN+04K7xWWEyp4VKpbmwbzg1J5fXZuGk/iAH4v/uRqAo4pF3QpJdCSmLSKfQF
         J4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bG2lZTq0AlonyzQJsp3hruKHT4bKY6rEQmFhRZ/Om5Y=;
        fh=vw+t/3Raoyne1XInwqH5Ga9McupA7tuBwFgtOIVT9cQ=;
        b=O5Gx6Lg2FFnWEWsW82JogdPBJt5x2OqcGxSPB26UZShYeJ4+REaseAGNToAzji7jT9
         gziYqaLhh2jIb4mO39movFZPbBCJrhV/MGXmDkzBYF14KfgH2T7/0jd82KwOdKtb/UCO
         sn8taoxF8nmfd+qijVR86l5X4ftDBBRcgIsYuRzNVk5X4lUgRNLrVzko/oQ0xSfONUcw
         R9CCv/jp3BbLtuvCS84oKiR3jCnfHnvPIykTBxdaNguyAiAtEM6pJ8TYeUorAasY0R9D
         1YHZGHUTcAKJ83tx4c3wj1awrIzldL7X/HSPs7WFAv0rLMK62u9d0FL6A7pWnlfwLXmu
         KdbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779701818; x=1780306618; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bG2lZTq0AlonyzQJsp3hruKHT4bKY6rEQmFhRZ/Om5Y=;
        b=L8o0RsKPN0cnIHtL1LC8UVEOx3Okug9D7cpGaD+fBdAnBtUUE6GrkEZ3yJI2NoPTyU
         cgQFbJmo4Lkv3zZ4uP2bpbmc+G53eX+w8M85wXGCBNPEA9exX4mU8elTsisgJ+BOBIHR
         kYWtDhBV5LxYqbF8BRvb+bTUGTwfaojETUxQQEk4JnEiu4/btCirFuqJnH1kMcOrRp+R
         rf98Z/lSNf5YtmClN75wICZK3OMP16CxgRPlzCt5ruCJ4K1HZWLRCSESTJCqQfNM6awC
         GtJrV7+ivjoeyB8RBXhO4rR2vc9Qd+fedLNi85AmB2rb+tP32ZPavJxvwYc1ejPq8UpV
         77xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779701818; x=1780306618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bG2lZTq0AlonyzQJsp3hruKHT4bKY6rEQmFhRZ/Om5Y=;
        b=SD6t0poYEG4n2bSWIlMlff5mvELcM9kblfrkg21eABIrV6JDY8V02n6CkyqVO6BOt3
         7IRrKVK3O4QZPcKZC/d1876HYgzKJZZR0UL6y+7JznYy3i+R6O5v3Tc01GLSvp3bewoP
         dZh3c+QL0hZedjyUZsx2oJCTcr6TEY7oj2HzPZca/k9morxfdbUVuDzccXI9Uv/CA4z+
         1Dc2BC+3P0qGsGYtXVL97tNo1SV4nxNdAuOINaiyJiX3xufS/d0L4USngXDonDtAwE/r
         4UwsK0+ozklb0FY11FSD18gLfpxESPqvRy7VJSHsfWR5lu43crzOcfy0v/FoUPpDVHxn
         xxzA==
X-Forwarded-Encrypted: i=1; AFNElJ8U6T5CpYI/B4UMc4GFcDl+qsVpwPzrYj8op3C8WBrVhExeIw3nvTPr0YdR7qRW/nwL3Zu+kCtsADZN@vger.kernel.org
X-Gm-Message-State: AOJu0YxGkr9IetP805zSegD7MtLF1mzmUCkFX4mjs79Gh57ms3BLEbfD
	rjDjzQ3xD6shtNMkcSmH70C7SYKBZ4EGGIh3GEWvMg6xAcr1EdnAKRWa9pSSXRUh7WdR3trnhTh
	iKrGn6pR9vyjMvmFb+i5g4cbxql4pfqo=
X-Gm-Gg: Acq92OH8BD8BlzG3YGJ+XddkVk3FqVjvcnqzTu621rAU89n8ZhdadXz5C9iyBdBTC2K
	Xr8i+XnLf9GiMB6G2i4ZEwpvhmCtkRRhnXivbbsBFvDjKWKoHSRIqC4APJBsgFrdGf0wLaqgGsm
	MBEl/KwdO9r5rnJIXo6g2V1iZaLZMctstDmviEEaWFw9MIPYkb4Cmb9QtXB7dMKsVej7fXxkhiy
	HRu1CGSJm1DXNne3mkHevH4ee8RPpLw/vlcLHPVa4KkHrtik1FYQRqD893Dwskv9SZROEYa9qjp
	3c9MX1+bKSySQm+Q+gEmZJIYuohl9g==
X-Received: by 2002:a05:690e:4383:b0:654:54f2:9e50 with SMTP id
 956f58d0204a3-65ec9775082mr9988663d50.25.1779701818177; Mon, 25 May 2026
 02:36:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260515-orangepi-sd-card-uhs-v10-0-094af27e310d@gmail.com>
 <177889984452.2298656.1074391459031404894.b4-ty@b4> <7e68e745-0d70-46db-9475-38d3dd5b9cf4@baylibre.com>
 <6b945153-5a7b-415e-904a-1c350b7d52ee@gmail.com> <86ac46cd-b7bc-42cc-8c29-996ae21f3654@baylibre.com>
In-Reply-To: <86ac46cd-b7bc-42cc-8c29-996ae21f3654@baylibre.com>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 25 May 2026 11:36:46 +0200
X-Gm-Features: AVHnY4I_k1DJLPTVcDE4dQLLOOZPqA-S_Z9vI3VGZcAzyFnMwYf6XDaI2FWsQUo
Message-ID: <CABdCQ=M_E1uHU5WTXCn2mXaxf3-+7M9gXCL=tp1qBW50jf7d5Q@mail.gmail.com>
Subject: Re: (subset) [PATCH v10 0/4] riscv: spacemit: enable SD card support
 with UHS modes for OrangePi RV2
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: Andre Heider <a.heider@gmail.com>, Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Ulf Hansson <ulfh@kernel.org>, Troy Mitchell <troy.mitchell@linux.dev>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>, 
	Vincent Legoll <legoll@online.fr>, 
	Margherita Milani <margherita.milani@amarulasolutions.com>, 
	Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302539-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,online.fr,amarulasolutions.com,aurel32.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 224545C8B8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Sorry, I've been on vacation and I haven't checked my emails.

El mi=C3=A9, 20 may 2026 a las 13:11, Trevor Gamblin
(<tgamblin@baylibre.com>) escribi=C3=B3:
>
>
> On 2026-05-20 03:53, Andre Heider wrote:
> > Hi Trevor,
> >
> > On 16.05.26 2:35 PM, Trevor Gamblin wrote:
> >>
> >> On 2026-05-15 22:57, Yixun Lan wrote:
> >>> On Fri, 15 May 2026 12:48:58 +0200, Iker Pedrosa wrote:
> >>>> This series enables complete SD card support for the Spacemit K1-bas=
ed
> >>>> OrangePi RV2 board, including UHS (Ultra High Speed) modes for
> >>>> high-performance SD card operation.
> >>>>
> >>>> Background
> >>>>
> >>>> The Spacemit K1 SoC includes an SDHCI controller capable of supporti=
ng
> >>>> SD cards up to UHS-I speeds (SDR104 at 208MHz). However, mainline
> >>>> currently lacks basic SD controller configuration, SDHCI driver
> >>>> enhancements for voltage switching and tuning, and power management
> >>>> infrastructure.
> >>>>
> >>>> [...]
> >>> Hi Iker,
> >>> I've picked patch 1-3, for [4/4] I think it should be merged after
> >>> https://lore.kernel.org/all/20260513071958.29574-1-a.heider@gmail.com=
/
> >>
> >> Hi Yixun,
> >>
> >> That makes sense. In response to your earlier feedback I had drafted
> >> a more
> >> complete dts after another schematic comparison, but Iker and I
> >> discussed it
> >> and opted to avoid changing scope too much. Andre's series includes
> >> the bits I
> >> wanted to add and more, so that works out.
> >
> > I have 4/4 rebased on my series anyway, do you want me to send it?
>
> If you have an update to make, please do!

So, how has this turned out in the end? Andre, will you take care of
sending the latest version for the MUSE Pi Pro?

>
> Trevor
>
> >
> > Thanks,
> > Andre
> >
> >>
> >> Thanks!
> >>
> >> Trevor
> >>
> >>>
> >>> Applied, thanks!
> >>>
> >>> [1/4] riscv: dts: spacemit: k1: add SD card controller and pinctrl
> >>> support
> >>> https://github.com/spacemit-com/linux/commit/2d77e577109967ef65f269c1=
fc1d6a659d4260fb
> >>> [2/4] riscv: dts: spacemit: k1-orangepi-rv2: add SD card support
> >>> with UHS modes
> >>> https://github.com/spacemit-com/linux/commit/2585c60ce2f977b13f14a67d=
1e3ed9c73fd7f381
> >>> [3/4] riscv: dts: spacemit: k1-bananapi-f3: add SD card support with
> >>> UHS modes
> >>> https://github.com/spacemit-com/linux/commit/c76e2f058cbcab84e4a703f2=
6857a58bdf6a0042
> >>>
> >>> Best regards,
> >

