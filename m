Return-Path: <devicetree+bounces-253935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 41738D12E68
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04E4330A4274
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E6B35B14C;
	Mon, 12 Jan 2026 13:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X0QcilST"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA94435B150
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768225600; cv=none; b=UF/9B2iXu69S1CkAKxngy4uzClwmbPz7Hav9bKw817Ov3xxg6BTplrcjV06KaTZ48wdzuJQd3vDgZKeUOc0UZGC6jxdAUckCRmvN5IZsGrqWrf7ai442mUTCWTHeTc1CvAS2xcgMiU7P+IZ/sMyP+TpcL8MMua0B3naK1/e+nlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768225600; c=relaxed/simple;
	bh=JQnT37UZBBv4j+bw5gvfT5ZfWm5AQfI3JrknLC8ZdPA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oN++y9Bmj0d5HQ0xIYaS9vA5TrECWeWeHYW81Rs+/g+1lw5g9TO9MOIU8SIrvphdVUonjAF+4tm4RPYlF7Fys81eFPBcYlef2+b+pFYH63oXWeVnXLPNUKczf6D1jP5Vdt/pTlYdbiGBfmZziCU0vVDgQ+dMSiF+ThoAB3UXli4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X0QcilST; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8b22b1d3e7fso621840785a.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768225596; x=1768830396; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JQnT37UZBBv4j+bw5gvfT5ZfWm5AQfI3JrknLC8ZdPA=;
        b=X0QcilSTiBziYmVxVDA2HzEqI3et468mJ1K185Epuch6RD5cSAh5lgh83Jlt36q6Yb
         DrAtV5Lh4dNIyiXPQDnw774hlGmrsd2qUANG8HRBQkVir5rB7a8s2WIbVR/tdifJpdgR
         ZMVF4btWSPU4eCWK/KNUoXQW3xU0Ph7QAJxWFfMoUZr+qqlSiETSnPM0c0yxdqczQN2w
         KxxLsRFWctXRQ0q7qVFaAyFmpCN6RAE6GcXuyk7d0GUgnrRY7or0lVb8nDzRKf34uNx7
         vCmNcChwJekjgHzvmOJD8ruUyC0k8iJ4sW6YVhHemaPHlRZa2RFeuSuSnD2yRassaTqc
         zH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225596; x=1768830396;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQnT37UZBBv4j+bw5gvfT5ZfWm5AQfI3JrknLC8ZdPA=;
        b=kEVncZNvaAycbFRlqQzFONlUYw6csMUW9CvU6Tp7jGmax/WbKxP86iOUq7hMirxnO7
         qgNnpgovz5YOGXOXE2wvjVUGqII2yjiL7oZnTHBmNFIDEvSPNO2qrczA6/LI4SxTD5tr
         XQzT2PwDDyMj9h4glahaTN/ghcgQnxYSWrbj/CNsYutWfvJ2ZQRNc+AirAP7rCUVC10q
         UVdgvW06PtJ4OoVIDT1vTKSwOLMoaMKzdOHdhE2RpTXJstufDixPKRUJVZc9YktHrLGT
         ILwsiz1w68mo0yrxXVdd+ehzlHids+sGr9yWkutwiPO6MpQOjudJfvlvXsYTYBwuOwST
         vfXg==
X-Forwarded-Encrypted: i=1; AJvYcCV3YC0Suu4rnRM8QOQtgXCSaigTPkKcWuXjtLENUPAxjVD8oo7THlPPHjiLU8LuRq373M7b7IxpnBd+@vger.kernel.org
X-Gm-Message-State: AOJu0YzxjeP0pPMU0cpiebUkMUdJ+Rt6bMF9N2FiBVUJ9IADZy6/wMW2
	CUOErVKtA8nunR/Jm0mf0JEPcHVt6ZEvqR2/iYJmBG2VCNOmHehXbZdgziIlvMHVN1I=
X-Gm-Gg: AY/fxX6DHu9JxsMD1c7zh7N2xHDZLWsZTSwJDNQdU4uR+gliBfLVL2DtU4oJJeaL1ey
	VGhayXNHS5luzFLFKg35u/WAiroe9aLQmwLNkTbmpBI8VKMlN1G+q3cfytn+XCnwNtjpV07nQEc
	Zd+JT+zX64NDgKiavDL+LOTOpOV+kxE1O8cq8T8J6qaSAE+3EV2DhNu4OKR18H64Sb2SN/3re3V
	JU0Glx9xBUMtEPnsQ6jxJzvxUjmh31jrFsqTf8/nJ9wgfPWamiZIxx660La1nvVtNNr7fg6i0va
	iJlpXR+8vpl9QnbW9EeI0ZfCv+rrftLUJsBnETuI9AxBjE0DOqSdzNiRyNHBzuABzqj1vhC2+YK
	Pcn4EzfgKxvNIcXs2BqG+Luw6hGnKiUiLhpZWbFCOE1K0KxL1YDi4vY/ZNGclfzk/aNcKKN4vBH
	e/8DDjfoTTCg6Hx2nI
X-Google-Smtp-Source: AGHT+IG31NYG+AAMbXiciSTHwir8DbiWnqbFPpl0WS7rz5lNjd1hETy3FhMv6H1NKdch14tiCMTiMA==
X-Received: by 2002:a05:620a:bd3:b0:8a3:cd9e:e404 with SMTP id af79cd13be357-8c389400554mr2655171085a.68.1768225595576;
        Mon, 12 Jan 2026 05:46:35 -0800 (PST)
Received: from draszik.lan ([212.129.79.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51d06fsm1477599385a.32.2026.01.12.05.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:46:35 -0800 (PST)
Message-ID: <2869d309358f27652289c40810ca36b2ec155d1d.camel@linaro.org>
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
Date: Mon, 12 Jan 2026 13:47:12 +0000
In-Reply-To: <255d7726-6758-43ed-b35f-db14726bcc9b@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
	 <20251227-max77759-charger-v3-4-54e664f5ca92@google.com>
	 <298ca35590d2180fdcf334f94964b6110e17c606.camel@linaro.org>
	 <50c29a62-1fdb-4de2-8887-0d551eee5ec0@google.com>
	 <255d7726-6758-43ed-b35f-db14726bcc9b@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Amit,

On Tue, 2026-01-06 at 17:14 -0800, Amit Sunil Dhamne wrote:
>=20
> On 1/6/26 3:41 PM, Amit Sunil Dhamne wrote:
> > Hi Andre',
> >=20
> > On 1/5/26 9:32 AM, Andr=C3=A9 Draszik wrote:
> > > Hi Amit,
> > >=20
> > > I haven't done a full review, but a few things caught my eye.
> > >=20
> > > On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 Relay wro=
te:
> > > >=20
> > > > diff --git a/drivers/power/supply/Makefile=20
> > > > b/drivers/power/supply/Makefile
> > > > index 4b79d5abc49a..6af905875ad5 100644
> > > > --- a/drivers/power/supply/Makefile
> > > > +++ b/drivers/power/supply/Makefile
> > > > [...]
> > > > +
> > > > +static irqreturn_t irq_handler(int irq, void *data)
> > > > +{
> > > > +=C2=A0=C2=A0=C2=A0 struct max77759_charger *chg =3D data;
> > > > +=C2=A0=C2=A0=C2=A0 struct device *dev =3D chg->dev;
> > > > +=C2=A0=C2=A0=C2=A0 u32 chgint_ok;
> > > > +=C2=A0=C2=A0=C2=A0 int i;
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0 regmap_read(chg->regmap, MAX77759_CHGR_REG_CHG_=
INT_OK,=20
> > > > &chgint_ok);
> > > You might want to check the return value and return IRQ_NONE if it=
=20
> > > didn't
> > > work?
> > >=20
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < ARRAY_SIZE(irqs); i++) {
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (irqs[i] =3D=3D irq)
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 break;
> > > > +=C2=A0=C2=A0=C2=A0 }
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0 switch (i) {
> > > > +=C2=A0=C2=A0=C2=A0 case AICL:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "AICL mode=
: %s",
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_AICL));
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHGIN:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "CHGIN inp=
ut valid: %s",
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHGIN));
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHG:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "CHG statu=
s okay/off: %s",
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHG));
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case INLIM:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Current L=
imit reached: %s",
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_INLIM));
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case BAT_OILO:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Battery o=
ver-current threshold crossed");
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_CC:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Charger r=
eached CC stage");
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_CV:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Charger r=
eached CV stage");
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_TO:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Charger r=
eached TO stage");
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > > +=C2=A0=C2=A0=C2=A0 case CHG_STA_DONE:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(dev, "Charger r=
eached TO stage");
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
> > > Are the above debug messages really all needed?
>=20
> I forgot to respond to this comment in my previous email.
>=20
> I think we can keep AICL, BAT_OILO, INLIM. They're either special=20
> conditions (AICL) or faulty conditions (like BAT_OILO) and we can in=20
> fact keep them at dev_info level. Rest can be removed and a=20
> power_supply_changed() is sufficient.
>=20
> Let me know what you think?

I don't think dev_info() in an interrupt handler is appropriate. At
least it should be ratelimited.

If it's something special / unexpected that needs attention, having
a dev_dbg() message only will usually not be visible to anybody.

Also will the call to power_supply_changed() down below handle the
special conditions (e.g. convey to upper levels)? If not, can it be
made to do so?

Cheers,
Andre


