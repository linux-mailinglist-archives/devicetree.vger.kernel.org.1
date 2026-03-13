Return-Path: <devicetree+bounces-275156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHUlL6T4s2nUeQAAu9opvQ
	(envelope-from <devicetree+bounces-275156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:44:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E79282677
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25E07302D08C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA05D383C61;
	Fri, 13 Mar 2026 11:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ng5SEgnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6500935E930
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402163; cv=none; b=LNpOzoNqZAXA/794DjxygVp9LfSxUl5pBbu2Cc3/BkS7pttvlUgEWU+kDD1b8LSX5GKhuidAWGD2Jp2HbD0m6BmPZo9AmAAlqFCcQWMwqH1Zj06e8lINBnZIMGyfF4Q9Rkq8cnnYMcYXKJPyB9ZI56PkX1NZq2PM4OHP1ZZGPT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402163; c=relaxed/simple;
	bh=MpDy9kxJirWIecuc/r/fCES5V/lGLJUYErRHXyLbLAU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IrD1y0CyZa6ktnrziuJVn71BKAm7sGJdplWTx6vV0Ill43D0F7yJsak8cBIp2M9tx9Hx/ngnLnUNGzgy81pjpxNjvJhhAcToaUkuD6NkuN6pE0vpNFtSdnU5Dut+CQblfguP7P7M42Sxpd6K2sw6JtxiYRSyvRGNk448iO84R08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ng5SEgnW; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6616cb8c80cso3120108a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773402161; x=1774006961; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o2dyCthQPSviIjLo6GGJyjNwIRguOwqd/MGhvd/maVE=;
        b=ng5SEgnWWmD2Ec2hDVmgqgWDcFz9SqSjnguXdY6fpr/0i8sxJIcjIWptwHhwF/pcYn
         TxU8EpRDSyeKNs3P3lmtbALG0I2l+eDplj9cYfRNwxuwhaAgoswaYqxc0z73Je7iKl9j
         Nej3pWA2+RzHo5KTQBS9EuSFzSQrE/p13w0OnNOjFXq+v5xVaMqqyZp0HsLlvzP1vpsL
         dEKahMtADN4oML2vBGvCaahw5LHwnDwuNjBBxxAeq+wamK9yOnRrs0DBNx2FXq/uIEQk
         7Bf0isAJgqjM1eKeA8JjzYz4KGslXoUAQP8+FcNCix4csVy7K23vep3cOE3J2BrcJxE5
         A6aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773402161; x=1774006961;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2dyCthQPSviIjLo6GGJyjNwIRguOwqd/MGhvd/maVE=;
        b=YvjSKOwZxt7oVpMgEeGyS37qE/NSM5JgfWeC/BTRet9/sTs6gzYHe9X4tmpEEjfzPM
         gsP5/FWk+9DfwHvgLwAl5vRVdfw9HupGhLJl5oeFxe0FeJl9L1PzwiIkeVRyFRk6CMin
         ZfPxOo5Fok/1Y+gpnNL4Gs9/6LBh5zNSzIwkNDUtD+bZLYtOLUsrZ2qNAG/aDbNLfNEV
         YOlor8kkMYKDWsYF+Mp2gm+WLa2YgW1Ts+s+lOf5atef42fqM1cWr/rDhgchlmzng7Ps
         qr/TBoGKWH4T9R6k6nWz1SH+rMSMg/4xGihUopDclKY+u5uXJo7+j20QyCnFYv9QPndP
         YQZA==
X-Forwarded-Encrypted: i=1; AJvYcCXnI6kt2+lnwXM628XSziDF/ldIuSLEDpQJMWV65B7+YFi62GD0rWkWPD51MEnS2rwdHq83hA2H6sFL@vger.kernel.org
X-Gm-Message-State: AOJu0YykZeviX9w8qpZ8Av/hULIwrF3yzuFKA8yLAo8zIGjQhKmv9KOv
	jfBARMjOh8R3OtWHPWEeP1Rxk0L4N+5aaYNWyhT4I9brj4dUu12gHCp51OqGTolRtxg=
X-Gm-Gg: ATEYQzzpVAd56XT6jvlzb/TwtZeOO3Q0Cj9vSx8Vk9dtONVqd4RpWr0wYxHBVOn0Z38
	hVhVR8YZWvpRrXMzh7YKJ3e4OEXomCbzRNqiYphC2uc7xFcQx2NU5LKwkDiCgK+hV6lly2Z9bV1
	dh3xIx2UMI0qlu+QwNjq3froUaRm/l51mln8Qfbd0HGp+UJXpH18BS7S/POuagmk4MVcbjep9rv
	QmOdMP1CQyooy52+AdLno0hQCoQ77IZvAbQnCyCe29fR8AaC+LPS4FXgR5dhWAKsctuz8fwIvY0
	7Od/vY7i75Oqt1FScBY8dMnkkPZhf9cJbeWzsCsI2h7gmBIOjAaj4VEcJ2IIqWtrAYNQUfITWxF
	1qhjWBwpT7OAaymmmfGZD0DDGQHH2AhxmGtxIfkpc6yVAxzmrGdhnk1yqCQrnHwNXJRER34DQNX
	UFiyVRoUmmvhvJkwdZRxpJM9Q9KcbFcw==
X-Received: by 2002:a17:906:a291:b0:b97:c19:2972 with SMTP id a640c23a62f3a-b976500f96fmr117661566b.5.1773402160491;
        Fri, 13 Mar 2026 04:42:40 -0700 (PDT)
Received: from draszik.lan ([212.129.81.187])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf02b14sm40474666b.51.2026.03.13.04.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 04:42:40 -0700 (PDT)
Message-ID: <451f74528021a67b40a4d08fdd0e5c80f6a90025.camel@linaro.org>
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
Date: Fri, 13 Mar 2026 11:43:24 +0000
In-Reply-To: <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
		 <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
		 <20260312151228.GA3136988-robh@kernel.org>
	 <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275156-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.10.107.32:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 21E79282677
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-13 at 10:48 +0000, Andr=C3=A9 Draszik wrote:
> On Thu, 2026-03-12 at 10:12 -0500, Rob Herring wrote:
> > On Fri, Mar 06, 2026 at 10:29:55AM +0000, Andr=C3=A9 Draszik wrote:
> >=20
> > > =C2=A0=C2=A0=C2=A0=C2=A0 system-controller@17460000 {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "goog=
le,gs101-pmu";
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg =3D <0x17460000 =
0x10000>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #address-cells =3D <1>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #size-cells =3D <1>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ranges;
> > > =C2=A0
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 google,pmu-intr-gen-=
syscon =3D <&pmu_intr_gen>;
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pd_g3d: power-domain@1e00=
 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c=
ompatible =3D "google,gs101-pd";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
eg =3D <0x1e00 0x80>;
> >=20
> > I'm assuming 0x1e00 is an offset from 0x17460000. That's not what range=
s=20
> > says though. It says both addresses are in the same address space=20
> > (system-controller@17460000 parent's address space). You need:
> >=20
> > ranges =3D <0x0 0x17460000 0x10000>;
>=20
> Thanks Rob! On gs101, the PD driver can not do direct mmio. Instead it
> needs to use the regmap that the parent has created and apply the
> offset from the PD's reg property (using struct resource::start)
> (patch 7).
>=20
> When using ranges as per your suggestion that doesn't work anymore,
> as resource->start isn't the offset anymore but the final physical
> address, and using that in combination with the parent's regmap
> doesn't give us the right address anymore.
>=20
> Is there an alternative other than using completely arbitrary indices
> like e.g. rockchip is doing?

My driver could of course peek into the parent and get the parent's
IORESOURCE_MEM and subtract that start address to get the offset
back.

Is that considered clean (enough)?

	ppdev =3D to_platform_device(dev->parent);
	pres =3D platform_get_resource(ppdev, IORESOURCE_MEM, 0);

	pd->regmap =3D syscon_node_to_regmap(dev->parent->of_node);

	pd->configuration_reg =3D res->start - pres->start;
	pd->status_reg =3D res->start - pres->start;


Cheers,
Andre'

