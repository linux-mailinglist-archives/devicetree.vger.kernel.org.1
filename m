Return-Path: <devicetree+bounces-234314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F47C2B3B3
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:04:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 31DF14E35E7
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43B72FFFB9;
	Mon,  3 Nov 2025 11:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g7qj4bp9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6992FBDF9
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762167865; cv=none; b=Jnzk8te3n1HaQxV99FueK5fqGGRWxTCpW41FZD7XvhArLo/qZS48fzzRUqtVJw+yaRZ9da9G0Fwlokd7XAXXuQhwacb9LTCZ6unH/XOiZ1io1pjq4koU+H36FJZoi4D8AY8iHkhc2gY5TX1N3b5l9ldWc0nrO7Mt//6m4oxeC/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762167865; c=relaxed/simple;
	bh=YmXJRtzOufvUHPwELRF0zdL2TiwoBzb3Znnmr9vFFPA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pu6Hbkuu1L3uOFuSFGlnEskSxAKKAT5MjtsdfSIzg+QZXFq4VMqZ0F1+XXAImwKRZQ54KipXnk5JHCm6S1CPIMoC+hi/5VvxD7aXn5WMB9mLkKIflSbLfbgfLc90YNdWduuQiSMY5QrzsDjOXbcDpbprLGsTQOVgifJDtlDaSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g7qj4bp9; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-475de184058so12499305e9.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762167862; x=1762772662; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KswR4Jh4x5x2b1p6DA2Aa6YMOayJHkPhM0EO8G3PYyc=;
        b=g7qj4bp9OZdgxwa6ziAdEvMThqlPTjoThuGJ/5Z4AGK6Q2wRCz/jhtonxBtTsdTzmq
         zFxNTsoAarkXx1T9N0Mns3YRC/qmu2jy3UyMmSCAWWzUwJj1UdAwH6XfRCU0UOSOAHO+
         T+aKV5OEFRLLEWx9nDDsR8TNAuLcatUQWddM98UAAtqLsftkKSDyU3bdREp8hTgW1gDO
         UaVx+6ORQPsmqjO0QFoLW4BlBIG9y6i5ZIwMqzVdq2X+biZ8aXmYFPSO9Skmr/8b7B4/
         dOXyUPyGprsQmrxVyFzaH7gb2vJTCBFiJarvtQDnX2adUY0tGuCTkeXKH7zFU36WChQ6
         4ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762167862; x=1762772662;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KswR4Jh4x5x2b1p6DA2Aa6YMOayJHkPhM0EO8G3PYyc=;
        b=LFveKxk4nsqhv4wcvuSwOCnZlgTEVg2gtUZeu0iTnLZXn32XXq4hukGnyw4JQ5frk0
         JACDjWq+qSxPM8R0QeeFwcvOeDI4PUcNrksp5+02UkMNA8lLet7B2fL0Llb0avXS8q4P
         KSNVcXoIPZb1wcCVQk1SMJpxDa3ZBJnQWs3Y0FKRuOpDjrcrOaLk2nUTtKpga517j8GU
         IXCs+H2YzF2VCAg2Q/YkOqoTu6D1DtQ6GuXB90f437OXe3go0gj7OBtSme4+a9aU4wT/
         KJu7NIlTqbZR3ZpC2mRRXobrlsy0g5ELrdoQ4Uzh6lLGx8wlpsR97c4GQGV7QvD1fKyL
         PEaw==
X-Forwarded-Encrypted: i=1; AJvYcCVliG+vUUeVCcY9OzLNDagapnyqKoYAyBaRrZ/dkbNLdhWCbcBPnYnPz6DijygdI6U7CiOAz+NUoccH@vger.kernel.org
X-Gm-Message-State: AOJu0YwwUbNBSJ7vePadpiiNrahCsf36/cgyDIDldVs5SaflxcksxkbL
	APZna1TF9DoxWdBzm7YLnx3dGRaYkVl6RKySRAgyciF7Hmrq6bWE0J+j
X-Gm-Gg: ASbGncu/ptilNwK1PSTGgRo5fcceA1r3+4oSVgaQyNwSHJdeZal0C1bntrSHJmY0FrP
	KIqoIc/0zN8TiRewYHaC9KqsXV8G6Uzd2rzctRdHeglTJlLRwzqw74ZUwOR7wppoUdGTAXEXS3M
	AIs+kVTHSdRc3hnz9e61IXyl6DVPWaiytkDW2CqYz248l3I2bkQrbZqYlRf6mi1cRNRoFzkFn2G
	ElpzzLJ43leVYBJpiD/YuHUjtUGvOb5Q8xaRR2H+74rsMaS52o6Czjp6+lsQ2tWr76XRigGDzKL
	LAtAczPEjMXC7JJQMKKqo46N0s9ZJfSRXEgFBgt4PoYeSqLzPsc5V5r71nWbUb7aBzFOCk//2w/
	OC/I5wgAot6o1LN5SZw3r+c/t1dWLpAolD1g04s4XAkoJ4/XCh9ID02OasfYxQNhMdmhajd1DPk
	ut26Dmp2AT
X-Google-Smtp-Source: AGHT+IGRXtPlRCze14TWLiPoffmVUCfzc62R00mariBM2Y0aUT/gJK67BJa3O83yh9SFO9vGANCX2Q==
X-Received: by 2002:a05:600c:628e:b0:46d:3a07:73cd with SMTP id 5b1f17b1804b1-477346ee158mr99537455e9.23.1762167862299;
        Mon, 03 Nov 2025 03:04:22 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c2e677csm149685925e9.3.2025.11.03.03.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:04:21 -0800 (PST)
Message-ID: <e56fce0f5e89037cab3889135d150fd4f28b4c31.camel@gmail.com>
Subject: Re: [PATCH v5 2/2] regulator: max77675: Add MAX77675 regulator
 driver
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Joan Na <joan.na.devcode@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, 	linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Joan Na	 <joan.na@analog.com>
Date: Mon, 03 Nov 2025 11:04:57 +0000
In-Reply-To: <aQgXWGzUW720mH+P@HYB-iPCgmhaB8Cy.ad.analog.com>
References: <20251029023253.150257-1-joan.na@analog.com>
	 <20251029023253.150257-3-joan.na@analog.com>
	 <3a9441f01e82dfcbdf146a809ba4a6f9604c63d7.camel@gmail.com>
	 <aQgXWGzUW720mH+P@HYB-iPCgmhaB8Cy.ad.analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-11-03 at 11:45 +0900, Joan Na wrote:
> On Wed, Oct 29, 2025 at 09:55:53AM +0000, Nuno S=C3=A1 wrote:
> > On Wed, 2025-10-29 at 11:32 +0900, Joan-Na-adi wrote:
> > > From: Joan Na <joan.na@analog.com>
> > >=20
> > > Add support for the Maxim Integrated MAX77675 PMIC regulator.
> > >=20
> > > The MAX77675 is a compact, highly efficient SIMO (Single Inductor Mul=
tiple Output)
> > > power management IC that provides four programmable buck-boost switch=
ing regulators
> > > with only one inductor. It supports up to 700mA total output current =
and operates
> > > from a single-cell Li-ion battery.
> > >=20
> > > An integrated power-up sequencer and I2C interface allow flexible sta=
rtup
> > > configuration and runtime control.
> > >=20
> > > Signed-off-by: Joan Na <joan.na@analog.com>
> > > ---
> >=20
> > Hi Joan,
> >=20
> > Some comments from me...=20
> >=20
>=20
> Hello Nuno,
>=20
> Thank you for taking the time to review.
> Please refer to my response below.
>=20

...

> >=20
>=20
> > > +
> > > +static int max77675_apply_config(struct max77675_regulator *maxreg)
> > > +{
> > > +	const struct max77675_config *config =3D &maxreg->config;
> > > +	int ret;
> > > +
> > > +	ret =3D max77675_set_en_mode(maxreg, config->en_mode);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set EN mode: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_latency_mode(maxreg, config->voltage_change_la=
tency);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set latency mode: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_drv_sbb_strength(maxreg, config->drv_sbb_stren=
gth);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set drive strength: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_dvs_slew_rate(maxreg, config->dvs_slew_rate);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set DVS slew rate: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_debounce_time(maxreg, config->debounce_time);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set EN debounce time: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_manual_reset_time(maxreg, config->manual_reset=
_time);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set manual reset time: %d\n", ret)=
;
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_en_pullup_disable(maxreg, config->en_pullup_di=
sable);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set EN pull-up disable: %d\n", ret=
);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_bias_low_power_request(maxreg, config->bias_lo=
w_power_request);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set bias low-power request: %d\n",=
 ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret =3D max77675_set_simo_int_ldo_always_on(maxreg, config->simo_in=
t_ldo_always_on);
> > > +	if (ret) {
> > > +		dev_err(maxreg->dev, "Failed to set SIMO internal LDO always-on: %=
d\n", ret);
> > > +		return ret;
> > > +	}
> >=20
> > This seems to called during probe. All the above can be return dev_err_=
probe()...
> >=20
>=20
> I=E2=80=99m thinking of handling it directly where the return value is ch=
ecked. What are your thoughts?
>=20
> ret =3D max77675_apply_config(maxreg);
> =C2=A0=C2=A0=C2=A0 if (ret)
> =C2=A0=C2=A0=C2=A0=C2=A0	return dev_err_probe(maxreg->dev, ret, "Failed t=
o apply config\n");

Up to you. You'll have less details if you encounter some issue though...

- Nuno S=C3=A1

>=20

