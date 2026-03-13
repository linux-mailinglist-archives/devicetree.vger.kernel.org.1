Return-Path: <devicetree+bounces-275315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F4HCeYctGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:19:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3D5284CC2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C1653290464
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A6739891C;
	Fri, 13 Mar 2026 14:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kciLrQqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8756739658D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411288; cv=none; b=NCcYPqbG0zVEZqgocQ/5jAQjBHqfyhKVBiNooIAxwKxjO3w9om+d4CyZe+2q4DjxYJxQMOZjlW+7oWb301/gTgTUzaWeKpLw/kzNM8eQ37PxOMM2xoVD2t791kmr4vpPTerL2zLwxSg2vxeD9P2hdo51XbOxLhdIyYhsgLGg6Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411288; c=relaxed/simple;
	bh=yxLMf+p2GuGBniwtiAZ7R8MSn2ihPWUg3zgiw3eOsUw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=i2tSbRg7cuV09j80E2dPYArHz2PyABzY+aOtJ37ZRqytALPT82J3gCcN28C6IDcrvEfEAT7p6fkRv9e9W1L5eyOuA9B0jobeQcR4dawSdw64zqYUvvf/0HNsZAsM2/o6REhW0w8bBs1Igs/rvoL+rXAP4g/efd4HjDPrf69uhf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kciLrQqA; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b942a41c5fcso304295066b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773411286; x=1774016086; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yxLMf+p2GuGBniwtiAZ7R8MSn2ihPWUg3zgiw3eOsUw=;
        b=kciLrQqAi4EKYCA2AxVgKL4yEu6as0tpMa11p2mqIegQglDtql0VHepjsij6F2hTI+
         lwjJEBtOkmmH/K09zAxbnmUd80rPndsgdFGPxLxjEoRMa1NCk4mMt5KfPjMseeEjKcBk
         +4Fl+peOANpOSi0FXnhTsRB+Pymp4mAsTn6+ady4RP+MyFSH+Yvo9B4p8mjUThXvKkuQ
         LCEENHm8yDRUNtWfKbOZfgc8keWcqUR/SnUYwFTuYr27MVWSXrqbUtLX608G/NGG9NW2
         9t6O+zi9Y+b3+qUX5Fe73i+OpW0WOJUYRRdaK0qJyg4c9Tylo7vwz4ZUoTEioZyIepHV
         zwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773411286; x=1774016086;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yxLMf+p2GuGBniwtiAZ7R8MSn2ihPWUg3zgiw3eOsUw=;
        b=mdAelpFhcu5bvgRF5QbBcN1T1Mh/MVjrks7cLpxjX8dJ3L77qaGpY2JXBDbHP7Ybwt
         VLZA70eBqzO/Wt/ljikA1OB4HBw39NYKUmhmvkixuSLxAJ7NqPNiWQVikqzGZ/Sv0UvO
         ZBH/RFvVP4nhbgPmnMmsLsUo+RKQ4GqxB5vt5PJqu3r/ujIBc4AKYuaorwJGjnJPF26d
         R8h353gxgHAhnDuUjqjWGOtt4LvJFkjWpKInBaFO7f5vDCKKLG+nbUr8fiY50m+Z0S67
         l6ITNoKcwuz8lwa7/6HnF116LOtAEepYkt7x9U6g40zMD/r58j5XkOhQTaZx5z+H0kas
         SyfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpo048bQO7soywwc7aQtIXZRyddJbbYyVDAWyKp01P54AFJyVQGeL0GclFXcTbleK4XYUutoScqq5m@vger.kernel.org
X-Gm-Message-State: AOJu0YxnrzL4CzNPYooIu2hIwcJHMC6T8f94tFP9eUh+akYbB0KKY05e
	WI37iq32pBcyGybr58d/RMgU6kv321r3kvTKX0MQncU6blMgeV+3ndeJRD8MZTxqMpk=
X-Gm-Gg: ATEYQzxKHxCKBYmGhBR5yM1NfbfnAhw6UV6CNwsD7ptshfZuSh5TWVz3Tlb+zFKAmOh
	CF/KY78RmfPlJXfW4/UWwjBJzecXxQhcYkkH2W65wUo0CkVW7b+sqr8aw6nwMLyA0ZAAXRZW4n8
	FuYLNwMNUbvbFrLAs4QqVb9Qv5Y8b8/Y6evLfADBhYWkeA/3uYsBNUcI06JPiOX1ursJ4JnU6ly
	zSWx6J45Xr0mJjuXmOHSM53R2TraWi/p6+RWqC3ufVMK4rr59DqLxSJyszBVYUXVzED0qL4KMRW
	xJZhtFJCaDZW5s0grptM4GmDd5elIBFZDugXbikWQaD1vITaGbtvcCG0mOLJXHIYm3rKKINGewM
	of4CedEda3Ye3xFchyaSPZU7GlXDzqlVCQdWmT8pkUnzZyTmNimG6Bw2SMy9WW50z1DOAGMnzAo
	2I8YwgC9E1y4U5McXx6LuztncyyeQDCGaRriFY1ZGz
X-Received: by 2002:a17:907:e98b:b0:b96:f6f1:e7d6 with SMTP id a640c23a62f3a-b97650e6e1emr210223966b.18.1773411285513;
        Fri, 13 Mar 2026 07:14:45 -0700 (PDT)
Received: from draszik.lan ([212.129.81.187])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cbf4879sm49502766b.17.2026.03.13.07.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 07:14:45 -0700 (PDT)
Message-ID: <82d2d515a38eabd78951effff1dbc459db864130.camel@linaro.org>
Subject: Re: [PATCH v7 04/10] dt-bindings: soc: google: gs101-pmu: allow
 power domains as children
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>,  Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Ulf Hansson	 <ulf.hansson@linaro.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown	 <broonie@kernel.org>, Peter
 Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, Will McVicker
	 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Date: Fri, 13 Mar 2026 14:15:31 +0000
In-Reply-To: <CAL_JsqKeSimB6OYFzOk2tWy-nbFez3qRwWrc=yD8uKDALYP8pA@mail.gmail.com>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
	 <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
	 <20260312151228.GA3136988-robh@kernel.org>
	 <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
	 <CAL_JsqKeSimB6OYFzOk2tWy-nbFez3qRwWrc=yD8uKDALYP8pA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275315-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.10.107.32:email,linaro.org:dkim,linaro.org:email,linaro.org:mid,1e00:email]
X-Rspamd-Queue-Id: 7F3D5284CC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-13 at 08:26 -0500, Rob Herring wrote:
> On Fri, Mar 13, 2026 at 5:48=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik=
@linaro.org> wrote:
> >=20
> > On Thu, 2026-03-12 at 10:12 -0500, Rob Herring wrote:
> > > On Fri, Mar 06, 2026 at 10:29:55AM +0000, Andr=C3=A9 Draszik wrote:
> > >=20
> > > > =C2=A0=C2=A0=C2=A0=C2=A0 system-controller@17460000 {
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "go=
ogle,gs101-pmu";
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg =3D <0x1746000=
0 0x10000>;
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #address-cells =3D <1>;
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #size-cells =3D <1>;
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ranges;
> > > >=20
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 google,pmu-intr-ge=
n-syscon =3D <&pmu_intr_gen>;
> > > > +
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pd_g3d: power-domain@1e=
00 {
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 compatible =3D "google,gs101-pd";
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 reg =3D <0x1e00 0x80>;
> > >=20
> > > I'm assuming 0x1e00 is an offset from 0x17460000. That's not what ran=
ges
> > > says though. It says both addresses are in the same address space
> > > (system-controller@17460000 parent's address space). You need:
> > >=20
> > > ranges =3D <0x0 0x17460000 0x10000>;
> >=20
> > Thanks Rob! On gs101, the PD driver can not do direct mmio. Instead it
> > needs to use the regmap that the parent has created and apply the
> > offset from the PD's reg property (using struct resource::start)
> > (patch 7).
> >=20
> > When using ranges as per your suggestion that doesn't work anymore,
> > as resource->start isn't the offset anymore but the final physical
> > address, and using that in combination with the parent's regmap
> > doesn't give us the right address anymore.
>=20
> You are mixing kernel implementation details and h/w.

Just trying to get to the best solution, considering both.

> Are the
> registers in the child nodes MMIO or not? If not, then drop ranges. If
> they are, then what I suggested for ranges is correct.

While they are MMIO in theory and offsets into the parent's address
space, in practice access from the OS is not possible via mmio APIs,
only via the custom regmap created by the parent (which defers to the
EL3 firmware) - hence the driver's need for the offset from the
parent's base address.

> For MMIO, your kernel implementation options are what you suggested,
> do a regmap for each child, or use of_property_read_reg().

OK, I'll go with the first option then, thanks for your patience Rob!

Cheers,
Andre'

