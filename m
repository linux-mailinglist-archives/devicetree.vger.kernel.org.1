Return-Path: <devicetree+bounces-259213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLYDNqCZdWmPGgEAu9opvQ
	(envelope-from <devicetree+bounces-259213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:18:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36F7FC03
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4655C30094F0
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 04:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB23621ABC1;
	Sun, 25 Jan 2026 04:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Tg9qPUxF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1DB1DF75D
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 04:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769314716; cv=pass; b=FYTNEKXVUc4T29n+bwnE2i4xnYNRtzx57DpJZm2cKoOW6geIp1PFg1SWzA2M3F4UBfukQqddumEom/mUjHt/hsbc/UcGV4IDoR1tbibf+3Ye/hAKbD0IfToXioJj195FQvMGo3LgSckHk+NBoX+q58RWOS0J+sd+scxnrL0QZBk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769314716; c=relaxed/simple;
	bh=iBs58lRv+CFAVUT3Ztjx1vffOsaNZMmPIYlH0Ymka2w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vfu6stUzpwd9eeFj0mf7lwjqIKGRvYGAQym5oHsRYIGxZiIeHM7KpwnfNZEjix2Tcq3zqh5UzHyHoakvoEdencgPlZcmNz7J93H0hN9/YFnFoyOFlPJIIkujxi3mQ8RplwRPeFxv9V5pDp1ydt5GFQMZ8cl1r/lprnbpTyzh7mA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Tg9qPUxF; arc=pass smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7941578064bso22130517b3.2
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 20:18:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769314714; cv=none;
        d=google.com; s=arc-20240605;
        b=YXLsnVGJ8LFv8E6hifshJNJcHRBw8lhoGk7gjKhAtak0O7hhIPD5vEeYrCefHGzetb
         40OyEXEwshp+LHQVIHk0AoZhg+okEmGx1W0i7k+tYkWcXakJVWtPRN60Kk4C7/A+sgcc
         211gyJGyfGW8TIJJP/5bD6fTWqcxKApwHXn1NMNXAF8IjV99hjXBaN6eeQmhP1YUgTen
         punBmZG4bMGTyGsq3HaPaQJS8eeGK0rnPTdsLPjUibOU1m78no5HNUq9acMzkdo6gwxJ
         egKoBeSdjIfxxbUiw0d29ixQHPRWVSi//kxIm3no//UscpHgB/LRNs6yPYbKAlwxhGaw
         rHMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iBs58lRv+CFAVUT3Ztjx1vffOsaNZMmPIYlH0Ymka2w=;
        fh=S/2y/Mox/tsjiL24G2Pce72T1GE70HiCycrWmj8q9wg=;
        b=lnx9mwTUfwZqYuFcW25YmugwSSWsHRbQGa14Aqkq7qB+cxPPoIpVyUAi6OJ6AvZbMw
         fCJOgJ4dfZrNyS88R7KzgXppfoGNFVcSAaCHTEGNnSMp8GMMhJKUzxdh/JOUMLDBAcjM
         lTA5wrpXmqYugpIyDfZ11/m1jUqHzJhh5jwEMEWBPMGGhpyMBiZGb1hqQlNctKYS6zZ9
         XdF1zwDFkJwnjOt30gAN+jQ0da9fRzZ1FrboPYlB5HEaOr0dKFPnCZ3hNQVpMgWaxRhj
         i59LKmxAWP769bhjIlkMT/P2/7iKrd4KTVvo4WFrcoYbSKN25qDImgyXkIPapgf0PiU8
         Dh4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769314714; x=1769919514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBs58lRv+CFAVUT3Ztjx1vffOsaNZMmPIYlH0Ymka2w=;
        b=Tg9qPUxFt3VVa4tLKOAe0wzzLc20KY/QMpb9yYMbJSWWZd9gE0gfEGltF/zl5WeWvy
         UyKyWhm8Ij0eIKQFih8Ug+98l7sYZOqYFVw+m4Kovf8NrkDzRZItNSfSjoeVIMxXvwLY
         cx9y951FQuj/7WuLjz3PfCvhliuo+N2QrZAcIrjuzoMFx9A4ohhkl9l50PZwF84JeA7M
         XbTvl29KMGLRWuayRSxHHUrABEJz8+/yQTAR7iACbw0w70f5ZhG4fMzxZ7is4gJhPCHq
         Jfz0MBxidCVjvzSmwnneyTKtx3MbPRmoa6I6X9P9NHkl4NJ7aVR6rKYMsC8jkootnfKf
         30vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769314714; x=1769919514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iBs58lRv+CFAVUT3Ztjx1vffOsaNZMmPIYlH0Ymka2w=;
        b=FVF9XPP7JltJvyt4tamySNb1rfXTPRCZuZXvLSpGKssrUXB/VBy2lHNrex+noLWZ4s
         YWRziHH+eOUKtKyhbUH2mu3NxYCYvnlh8elOFhBD0H0z/i/wRWZTa6/VepiXlf2Unz6f
         kROJe1c7TCE3v/LN08koqmV4UmJ5SYOk9oPWwxcd0J8wQeXh/xiN3mKU527cbYS7nnT0
         SlOb0++nfZPDdsav+Q8ljqN/cs4nqGy8cNlb7olkp1tToniert1x6do+IKk84o351Pfv
         cJJl7S45g4rD4rrkMCZJyXUOi8/dyhh5+fnrs9maCShA02QzoMpfO9RyGpdbOceNhd1d
         2yjA==
X-Forwarded-Encrypted: i=1; AJvYcCXRlVPNl46nTJ9Shi4nTefXUzJTg5pp4D9zt5HdWe2gmHgnVzC9Nchgm7mXTfi5PX23sj62WpJqHPWa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk7qT4263ATQUlNGCy4xb99p8iQe9qcqaQqHGM8NqXqel5w+Lq
	N9DFDELZioijWPvAsLeFYyUVcNDVu0zo6Gynpfnp3RDm7sRmMZn5EO6RHsEHCvAYPCqemRKLvA/
	2pK0coP10Y4sN2V6IkzTiOERglXetQ0JOr8zNvN0EkQ==
X-Gm-Gg: AZuq6aJ5tzAb9ScvghsEh/k0hM0DfoF5nkkxIxv+84d4WLV2zo3diPYWiVsuBPHH/mu
	B34WeCBieio2HBpR2JMv7bYEGzoGSXDQQfy+Z8z+2EfQEXfPiihx3lIClkqjrtK6zyulyDewc95
	AQRN57UjOrMXjPK9GS/6ErQPebRNTjD8f/R5oH4RHtjlu6/2+E9h+3mgFDPl5tRkhkMEI0RvhiI
	VXvJOUdDwYv6uTBC5nYDdOdmNgwlZCLzGLRosn3jCgvSbRy2oVprsSrOGnjRPtim+YCOcO9Kx9R
	PdBRYFlAjbPPSnaeXsY4yUj/fOaf2ENwqoYyJxIEQNNS
X-Received: by 2002:a05:690c:34c1:b0:794:ba4:37ab with SMTP id
 00721157ae682-7945aa0d1d5mr4627237b3.60.1769314714172; Sat, 24 Jan 2026
 20:18:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com> <76bd53dd-0ca9-4358-a0b6-a49283e43c5f@iscas.ac.cn>
In-Reply-To: <76bd53dd-0ca9-4358-a0b6-a49283e43c5f@iscas.ac.cn>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 25 Jan 2026 12:18:23 +0800
X-Gm-Features: AZwV_QjGxwCPzpLtYSF4QmRJP_WFZqaZPqsFostohF7SoLsMOdNcX8p86IQQwtU
Message-ID: <CAH1PCMZq++FYr_2WB=HvouXvnxcYGFk6tngqNUk3zTOM6xXLZQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-259213-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4E36F7FC03
X-Rspamd-Action: no action

On Sat, Jan 24, 2026 at 2:25=E2=80=AFPM Vivian Wang <wangruikang@iscas.ac.c=
n> wrote:
>
>
> On 1/24/26 08:20, Guodong Xu wrote:
> > [...]
> >
> > Note: Patch 3 introduces a bisect breakage by transitioning to
> > pin-specific supply names. Probe failures will occur on existing boards
> > until Patch 4 updates the corresponding DTS file.
>
> Ouch, that's not a bisect breakage, that's an *ABI breakage*. And AFAICT
> this is still not okay in 2026,
> see Documentation/devicetree/bindings/ABI.rst
>
> So the bindings would need to be changed to accept both the new and old w=
ay.

Ideally yes. However, considering this ABI change's actual effect, the two
K1 boards (BPI-F3 and Jupiter) in the kernel get their power settings
from boot firmware as well, and the types of peripherals enabled in the .dt=
s
files are very limited, the probe failure of the pmic regulator doesn't
affect much. So, I think this breakage is acceptable.

>
> Driver-wise, at a cursory look from someone not familiar with the
> regulator stuff, maybe we can make it compatible with old DTS by adding
> the new names as aliases ({devm_,}regulator_register_supply_alias?) as
> "vin" or "buck5", if we see the old vin-supply definitions?
>

We can do that of course. My hesitation is, however, it makes the driver ta=
ke
extra code which may not be needed once all .dts files have been updated. T=
he
driver code will be left there forever.

BR,
Guodong Xu

