Return-Path: <devicetree+bounces-275604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bf1TA9PItGmsswAAu9opvQ
	(envelope-from <devicetree+bounces-275604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:32:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C9F28B654
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D31B308D3E9
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C3DB282F0C;
	Sat, 14 Mar 2026 02:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TaPh32x2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F375D1A9FBA
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455564; cv=none; b=VvomTYgJ/Adok3T+cDnSgG9IlW2e5oB6jJsn9MKLI2H/UUc7GbwGiHSMtJtbrWzfNM+gFCwSYStgqSq327HuRCsfl59EikWJaNWnsiIUb6U9SsUce3VbOZfHgl2NqwpnMkugnoDDEJ7ghT1EVMEL0WeyxiQItrsvX/kjK/dysnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455564; c=relaxed/simple;
	bh=VoXeC9IHasi/UAtluQskzXJbdOFysDaXJJx65ggrMMg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IceeQ/PKyHnkeq+4S5fcFMLnmVzVyNOO4v1eogYzIimrbDyDBYxUdjjOldCR3AcADdgRA1XNiw2blEd09rU63t5Sa8I9ZRvvAcvDjMaiq3dxxsAUVn7rg7JxIKspE4wOVCs2Kid9B0qmZdlNOm4La8TmlB9N9UmKcmw3d+yBV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TaPh32x2; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-35a1230c60eso1452476a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773455562; x=1774060362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QXws6LkfRc01I28IbH0KBFSnQLO6Cva5ehRLzaS0ijo=;
        b=TaPh32x2C2PPjVi51SR3q9oEfIiZcUM4QOe0xvRNY79z804WsNw5fXXl65BmZ5lwmM
         4HLkHHFB/Qrqko3BihJf6w0dFbKh10rqO4wLJIw5Crf5QgGoRIatHrbmm6GH3MNiDfrk
         TJARaEqXHk6Pyb7AUlSBdjN1ljsYvnkq6xdgCo+Dt9sBgx8yGVJDfWeBLd9350HQe4vI
         O5c5/BrRxghEis/l+C5SJN5eIPpRWCuz2z64cNPkv06JMAqo9AyvrskGickRVZxMFaXR
         58tOFbEbf5c5a0G/fEWzxDl2jnHNqjcaWqa+DRYCN3mzIlL32i22ILJjLz8QshRZff6s
         yeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455562; x=1774060362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QXws6LkfRc01I28IbH0KBFSnQLO6Cva5ehRLzaS0ijo=;
        b=D1mw5SX7kOuI/W5zVrhtDvXy5jYOtS46NVLEl2gJAbMHiHKhu33c3sGRAzFfdSj9fw
         LosQWOJVV9NfYMqFOFLX1vxA/sA6b2YxjsmoGGFm359wA/POI1nN4s05MR8gTK91d8VX
         vVnlP+ghUw/cAqbH0hNCcYAa/bHwI9BRKFi7owJXVbKl4lFloiRgUqJxlrsGI30QVzzX
         l3ESeY0YlqudMSB0MaHB/1q3SlcPXfrQJ8na/ENySf4ozzHUkiBE7Mxqr+yHD4mcJRt3
         5QMC+AByCjyxmRLIt1+PszqhJHi1jzMKbvc1jXwHv2ntTZvKG9VnfjR9ZoA/EgrL317I
         yLYg==
X-Forwarded-Encrypted: i=1; AJvYcCU4ZlE52mzyogfApsKUBeQoMySfHwEGCwsTcjeXgXE4ZepszWYo4sGHTzQIamY4WvXizJDIkkZM7aLw@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ0Jb+OTZjqecKJBXfepYhJ3uEXNzED3lPO1LrrVxtfrn4Rc5F
	hM9rqMFMxfBmkj0JqcVQuTUeNxXZf6h1FrERo/ZHoNoVE4utqzGjV/OB
X-Gm-Gg: ATEYQzxrbCidyF8mdy0WBDFLLWuVMC2nBptQrOEdr8NHpW8jAUNlX6BMNbf4/aFcTzt
	f1ho/DviTT+eH6jD+OWAbsHc3LSYWB7es0ga64kqSojablTHdHLcaDLa6RHtGHaOHWtPgOOHpYt
	e5kzoLLgAUr8+WuKq+kQxxiGsZBbzAtU6KdBil8ro9+lPmLu4a8UfPRerXdi4s9foPHFmvmsHQj
	iPHHQyMo+oWqb77vBIXJKw1VLutHXBdpP/p0TGzsOctOkzT/Bf97yvhnYNN9TM2PNxsXzfENkLC
	PZ8S96Jgn6++sPX4/TNFwZUgBC2ywZe4GcRB+25OWc/EU6TGE5nTTuufkwQ8LniWRoB1lhNx3DH
	zhKnQ/ayrIowgMyAQ7r/uEPdHcvXRCnxRMSlgL1IjSvJcKMf7pK7dpy3bQ9xL7rpC0VhA2+Yt/X
	zcY8en5pZjplj7ObHgiwgswsRY7Jno6HiZ1Bmp4k/uEFr0eIFk3qxf9o1oyeh/pggskuxllsYMh
	Yo/KbqnynQ+ffv8d4ckSDVzF7H8ww43uKwuayZBUyzi/Z/Wkb09SIovKdx3+WZLAJVXTbx2XRcR
	nQSgvaMgaQ34wA==
X-Received: by 2002:a17:903:28f:b0:2ad:edc4:1796 with SMTP id d9443c01a7336-2aecaa4d681mr54393645ad.39.1773455562268;
        Fri, 13 Mar 2026 19:32:42 -0700 (PDT)
Received: from setsuna.localnet ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece8093casm35373165ad.61.2026.03.13.19.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:32:41 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>,
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>,
 Frank Li <Frank.Li@nxp.com>, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev
Subject:
 Re: [PATCH v3 7/7] ASoC: tas2770: expose SDOUT bus keeper via set_tdm_idle
Date: Sat, 14 Mar 2026 12:32:26 +1000
Message-ID: <5796105.LvFx2qVVIh@setsuna>
In-Reply-To: <6a3cc78a-77bc-473e-bfbf-caffbe8f25bb@sirena.org.uk>
References:
 <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
 <20260301-tdm-idle-slots-v3-7-c6ac5351489a@gmail.com>
 <6a3cc78a-77bc-473e-bfbf-caffbe8f25bb@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275604-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,renesas.com,nxp.com,perex.cz,suse.com,ti.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 56C9F28B654
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Friday, 13 March 2026 12:33:05=E2=80=AFam Australian Eastern Standard Ti=
me Mark Brown wrote:
> On Sun, Mar 01, 2026 at 06:05:26PM +1000, James Calligeros wrote:
> > +static int tas2770_set_dai_tdm_idle(struct snd_soc_dai *dai,
> > +				    unsigned int tx_mask,
> > +				    unsigned int rx_mask,
> > +				    int tx_mode, int rx_mode)
> > +{
> >=20
> > +	switch (tx_mode) {
> > +	case SND_SOC_DAI_TDM_IDLE_PULLDOWN:
> > +		ret =3D snd_soc_component_update_bits(component, TAS2770_DIN_PD,
> > +						    TAS2770_DIN_PD_SDOUT,
> > +						    TAS2770_DIN_PD_SDOUT);
> > +		if (ret)
> > +			return ret;
> > +
> > +		break;
>=20
> This and all the other cases only updates the bits it's specifically
> setting for the mode, so _ZERO and _HIZ don't update the pull and this
> doesn't update the _KEEP/_FILL settings.  Not sure how often anyone is
> going to change this at runtime though.

I didn't notice any side effects caused by not explicitly turning off
the weak pulldown, but it makes sense to do if the consumer has asked
for a mode that is not pulldown.

> > +	case SND_SOC_DAI_TDM_IDLE_OFF:
> > +		ret =3D snd_soc_component_update_bits(component, TAS2770_DIN_PD,
> > +						    TAS2770_DIN_PD_SDOUT, 0);
> > +		if (ret)
> > +			return ret;
> > +
> > +		ret =3D snd_soc_component_update_bits(component, TAS2770_TDM_CFG_REG=
4,
> > +						    TAS2770_TDM_CFG_REG4_TX_KEEPER, 0);
>=20
> Actually this does _KEEP but not _FILL.

_KEEPER is the important one. _FILL just controls the behaviour
of the bus keeper (zero or Hi-Z) when _KEEPER is set. If _KEEPER is
cleared, the bus keeper is turned off and the value of _FILL doesn't
matter.



