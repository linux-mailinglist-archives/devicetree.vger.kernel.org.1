Return-Path: <devicetree+bounces-254955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DCBD1E003
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C68B6307E988
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9AA8387590;
	Wed, 14 Jan 2026 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UC6xqira"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071A33559F8
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385986; cv=none; b=nChArZKEjStpMtaQamtqnMsOjuRWcH2lB+n8ZVjgw+XCfUBdz6D7vegD0xxvkx1MlB0V2yLsKQBu9B/0ssP7yxAEZOxAdERCv5h50wiUUtOzfV+L0r+3ejdOAP/TdUmX6PJkcUTC52djkVJxT7a4rv6trz1e5JuD+w+kur0r5EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385986; c=relaxed/simple;
	bh=8eibjd2N5XiVRRI4N4yeokngezFp8SvzkItH6b1iECM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=g/qs139s6NpwE6Kdidl9Du7p5sFH/6sPIXK4z8eKVvZrJU3xWgvr1i4jIB++aBiJQnegVLLF0X3QXsHH0lnpYjlwNBb95RiG1JgaD8PsyJizLJjKmHWLz07yGC5R6CQZv85osQZjiD87Mw+cqvKA7A5bApGGQSH1BIVkJ6HynPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UC6xqira; arc=none smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-12336f33098so396539c88.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768385984; x=1768990784; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8eibjd2N5XiVRRI4N4yeokngezFp8SvzkItH6b1iECM=;
        b=UC6xqirahJ9gIyGufYimhxLA6Qge3YzR1jHRVEXuZM51fue2fvFOv8G5b9KYJ5bO4c
         BPx99f6iUwAgMmT6Ng9+Dflyc3QW/gdhkF0Tuly113EhLxRKFOkI/cEpN5Ioq5OFqKNq
         rQfAk0MDMTpXeQSJGQ7ZNZUR2BPm1M5jWhPoRKO2TUGNR8g1EprTBwT1g+GiB2wZF0AG
         /LyJjIhtaNqplsPIQVsadRu/wBFgTaIvyJf+LbzedsazhGGn4Ap8caKW4ch6eYC65zkk
         xDKNyBoqfhT1Kb3hXv5BIIdqqeoNNz1Bx4pMljmJtgqyGVE41J0E1qyvGF7X6qvaGW9D
         DFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385984; x=1768990784;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8eibjd2N5XiVRRI4N4yeokngezFp8SvzkItH6b1iECM=;
        b=kkq8HDJ9uS3KgTsrsrXLOKE+I0TTQohHGLbcPOpNodPe53q3AsNyqMnI39a8YCuSUs
         3Otz0+TrxAFlA/Ouqaxtag5ml2jg3au3kFKZXza6R9eSNBD5x9OMOtK95rWOAuoXj0nN
         uW4GcuWddDKMP/e2XsdwJw7AQA1gMsn/XEvRRryCTs0oCB8ojcocZGhFptARS1xaslLa
         fZQ5uj2RXIQk1c4O30PDruk61seQoSG+IZYmrIRbOjGQmWw9GSuNt7k0yId0W8kFOP5R
         McnjvVNNt9g6xn3a+CoXsSkB/myPjxZFdXFfAw6BMkbsz51xtGM8aLsjSg40nDg3p/Dx
         ckwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVypp6wAzs9FQynAJUhvv5igDj/HM8hS9QJwoDlB0YUsVZNHJ2One2oKzgBxUWP23qkBm/sau2crjY7@vger.kernel.org
X-Gm-Message-State: AOJu0YzlhB/EPE5/nb5HFr8ns6JpbFO1qzXXMYBz+9BhGa3U7SyqMKED
	Oc5zmCvb57cuqXTc+KVuld1SobadoF142dxfBJ7W6vPJLIc+EMLkiNJ/qXSih12Vy5s=
X-Gm-Gg: AY/fxX5RvLD+CTbAE8eC7UXzkefLrcoBn5mzt4D7hDt+Tta8k9kMyyAw2U+Ot18HBuJ
	URxBPVouCrBKwUoL8OisaSiUba7sM4UWwKumc3NAOlaqdXZ/SBufx4pV2yNjSyB2jbJ7/Nf4rae
	uQGzr5XT8ghuIS7QXGbnFYeXwEtsKO5JP02+7LKbNdSGoaCYC6eO1Dfe73JQkOtFlIW+Gvo6plr
	ssIDKCHInjaMcfzr8xCciAjh/CYW368c93wK/DyKsioVDdgKOM6hN8hlz2L6FuLn6WN3p+Z/4Px
	BvLRW1KxRkC8prxS6tief4S4Y2cqOPMZylM3KaO+WL5DaRwGugsUe3FctXnBR5JMII9tcVaZwVq
	/l3WMR/lR1oEtnFI27yUocMZ6qR9LbvQuWssT+OzXU1vjkD4gAfvfDSfrIUYSmQFasfPr7PyCKC
	E5LibsRqbVLWV1irrd
X-Received: by 2002:a05:693c:3008:b0:2a4:3593:ddf3 with SMTP id 5a478bee46e88-2b4871d0cc3mr3162205eec.32.1768385983766;
        Wed, 14 Jan 2026 02:19:43 -0800 (PST)
Received: from draszik.lan ([212.129.75.26])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170673b2esm19824293eec.6.2026.01.14.02.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:19:42 -0800 (PST)
Message-ID: <48d52ef389ee0e878c36184efbfaa85071f5549a.camel@linaro.org>
Subject: Re: [PATCH v3 4/5] power: supply: max77759: add charger driver
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Amit Sunil Dhamne <amitsd@google.com>, Sebastian Reichel
 <sre@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Lee Jones
 <lee@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Badhri
 Jagan Sridharan	 <badhri@google.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>,  Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, RD
 Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
Date: Wed, 14 Jan 2026 10:20:17 +0000
In-Reply-To: <378ee786-2b44-44e7-a3f6-0cd1db3c0481@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
	 <20251227-max77759-charger-v3-4-54e664f5ca92@google.com>
	 <298ca35590d2180fdcf334f94964b6110e17c606.camel@linaro.org>
	 <50c29a62-1fdb-4de2-8887-0d551eee5ec0@google.com>
	 <255d7726-6758-43ed-b35f-db14726bcc9b@google.com>
	 <2869d309358f27652289c40810ca36b2ec155d1d.camel@linaro.org>
	 <bb9b9afa-0bfa-428e-9372-549d9ba8603c@google.com>
	 <6b37b88e9b7ee57eb1c006916fd995c813ab5e6e.camel@linaro.org>
	 <378ee786-2b44-44e7-a3f6-0cd1db3c0481@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-13 at 16:47 -0800, Amit Sunil Dhamne wrote:
> Hi Andre',
>=20
> On 1/13/26 2:02 AM, Andr=C3=A9 Draszik wrote:
> > Hi Amit,
> >=20
> > On Mon, 2026-01-12 at 11:37 -0800, Amit Sunil Dhamne wrote:
> > > Hi Andre',
> > >=20
> > > On 1/12/26 5:47 AM, Andr=C3=A9 Draszik wrote:
> > > > Hi Amit,
> > > >=20
> > > > On Tue, 2026-01-06 at 17:14 -0800, Amit Sunil Dhamne wrote:
> > > > > On 1/6/26 3:41 PM, Amit Sunil Dhamne wrote:
> > > > > > Hi Andre',
> > > > > >=20
> > > > > > On 1/5/26 9:32 AM, Andr=C3=A9 Draszik wrote:
> > > > > > > Hi Amit,
> > > > > > >=20
> > > > > > > I haven't done a full review, but a few things caught my eye.
> > > > > > >=20
> > > > > > > On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 R=
elay wrote:
> > > > > > > > diff --git a/drivers/power/supply/Makefile
> > > > > > > > b/drivers/power/supply/Makefile
> > > > > > > > index 4b79d5abc49a..6af905875ad5 100644
> > > > > > > > --- a/drivers/power/supply/Makefile
> > > > > > > > +++ b/drivers/power/supply/Makefile
> > > > > > > > [...]
> > > > > > > > +
> > > > > > > > +static irqreturn_t irq_handler(int irq, void *data)
> > > > > > > > +{
> > > > > > > > +=C2=A0=C2=A0=C2=A0 struct max77759_charger *chg =3D data;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 struct device *dev =3D chg->dev;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 u32 chgint_ok;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 int i;
> > > > > > > > +
> > > > > > > > +=C2=A0=C2=A0=C2=A0 regmap_read(chg->regmap, MAX77759_CHGR_=
REG_CHG_INT_OK,
> > > > > > > > &chgint_ok);
> > > > > > > You might want to check the return value and return IRQ_NONE =
if it
> > > > > > > didn't
> > > > > > > work?
> > > > > > >=20
> > > > > > > > +
> > > > > > > > +=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < ARRAY_SIZE(irqs); i++=
) {
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (irqs[i] =3D=
=3D irq)
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 }
> > > > > > > > +
> > > > > > > > +=C2=A0=C2=A0=C2=A0 switch (i) {
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case AICL:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "A=
ICL mode: %s",
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_AICL));
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHGIN:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
HGIN input valid: %s",
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHGIN));
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHG:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
HG status okay/off: %s",
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHG));
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case INLIM:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
urrent Limit reached: %s",
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_INLIM));
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case BAT_OILO:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "B=
attery over-current threshold crossed");
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_CC:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
harger reached CC stage");
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_CV:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
harger reached CV stage");
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_TO:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
harger reached TO stage");
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_DONE:
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "C=
harger reached TO stage");
> > > > > > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > > > > Are the above debug messages really all needed?
> > > > > I forgot to respond to this comment in my previous email.
> > > > >=20
> > > > > I think we can keep AICL, BAT_OILO, INLIM. They're either special
> > > > > conditions (AICL) or faulty conditions (like BAT_OILO) and we can=
 in
> > > > > fact keep them at dev_info level. Rest can be removed and a
> > > > > power_supply_changed() is sufficient.
> > > > >=20
> > > > > Let me know what you think?
> > > > I don't think dev_info() in an interrupt handler is appropriate. At
> > > > least it should be ratelimited.
> > > >=20
> > > > If it's something special / unexpected that needs attention, having
> > > > a dev_dbg() message only will usually not be visible to anybody.
> > > I agree. I can change the prints to dev_info_ratelimited for the stuf=
f
> > > we care about.
> > If it's an erroneous condition, maybe warn or even err are more appropr=
iate?
> >=20
> > But then, what is the expectation upon the user observing these message=
s?
> > What can or should they do? Who is going to look at these and can do
> > something sensible based on them?
>=20
> The logging will help in postmortem analysis which may or may not=20
> possible with just publishing uevents to userspace hoping that they log=
=20
> the psy properties. Illustrating a situation:
>=20
> 1. Over current situation happened where the Battery to System current=
=20
> exceeds the BAT_OILO threshold. This would also generate an interrupt.
>=20
> 2. The MAX77759 takes protective measures if the condition lasts for a=
=20
> certain specified time and reset. Resetting will cause Vsys to collapse=
=20
> to 0 if the system is only battery powered.
>=20
> 3. It'd be better that the BAT_OILO interrupt is logged in dmesg,=20
> instead of just delegating it to user space as user can debug this=20
> condition by looking at last_kmsg or pstore.
>=20
> 4. This signal can help the user debug conditions such as moisture (this=
=20
> signal + contaminant detection) or indicative of a mechanical failure.
>=20
> I do agree though that this is a hypothetical or very rare situation and=
=20
> if you have a strong opinion against this I am okay with removing the=20
> prints completely.

Thanks for details. OK, they sound useful in this case, but should still
be warn, not dbg.

> > >=20
>=20
>=20
> >=20
> > Also, I just noticed there is a max77705 charger driver. It seems quite
> > similar to this one, maybe it can be leveraged / extended?
>=20
> Thanks for the feedback. I reviewed the max77705 charger driver. .
>=20
> Here is a breakdown of why I believe a separate driver may be a better=
=20
> approach:

[...]

Thanks for the analysis, I agree with your conclusion. Mainly I noticed tha=
t
as part of AICL interrupt handling that driver does a bit of work, while he=
re
we don't. I am wondering if that is applicable here is well.

Cheers,
Andre'

