Return-Path: <devicetree+bounces-275135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIkEFpTrs2n5dAAAu9opvQ
	(envelope-from <devicetree+bounces-275135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:48:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7608281B9D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89DC330329BF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 423D138656F;
	Fri, 13 Mar 2026 10:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fQfqXbF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C370734B1AC
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398894; cv=none; b=IespI8C/h+WAhaFq4Ej5Xvr1lRKYRtE7zVzvK+5Un50fKLPk85t2gSrXLYzIK9mGO0x6UIP2IrS/HqnZ2ScKUetPtEQM/JbK83KykRGKhBHDgUAda+5pmOoEgJsdWCe7tKFJPsDUu7jQZ/DPuUO14ZW3XgMVEzEx5JDVf3vG/8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398894; c=relaxed/simple;
	bh=zzplZJ4Qyk51rYHGGTOx2eXlOHiYAraldVZ2IfKSWm0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ypu65+L6kOwShw71HfEDGUIbzBzCKtGyny0Dem+trRMoM0Mz8uWonsD/7kkDjMWufz7I7MWVK8VNHyJjrM76RK+hubCg7TsFur4gWDDwL6t+mHSUKFJMlJ8zpYex1Ld/n3gJAZCapPDB+UxDEUZlsT5CFYsPwWIa/Sulc+yFZAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fQfqXbF3; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so1642282f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773398891; x=1774003691; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zzplZJ4Qyk51rYHGGTOx2eXlOHiYAraldVZ2IfKSWm0=;
        b=fQfqXbF3hXT91xZVm4lwyVdXMB2ZYGv2r6RtxrqBmzJzZmL8zLLHGZlhOeY9RTFHXs
         YVi8VRkcWNiGQFfvO4lW2syuRnxBVQiE8Qm+xyBIyfnezP1K42bVBnNa6Fpbbr/aedM9
         wY9GvGNiinCYZlBKH1MeWicNKtkaN3j3sne2l3IAcfzKF5CQVzd//1847fbo8Dg2Y9ng
         fRtPAHlBPl/0+hRshaq+LhRhJrgIVKDj9IpSrwbjrfGhJXaUF11E+tXa6XZo4sVNZQp/
         o9oZlZPy5gd1t9tWymKlDpTtIdc3o9uFG7QZoOAHFFoNnx1KLNWAgUKftvVlA4i1Zgeo
         imKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398891; x=1774003691;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zzplZJ4Qyk51rYHGGTOx2eXlOHiYAraldVZ2IfKSWm0=;
        b=YlFrdCtkE/YU+RjOepHDFp0qjW6vYcYk3QnlI7YU+xskJb241SGeWH9TGV1jkUjAxc
         whiEotBoav0ev++WjTyVKdFvsNCM19sCJ+8jgKVjsmARWudR1CWcoDLr3DFwKyxxVprG
         jsCeZEKNICITz1s9QeCRkOBwThkx3Is6NYDNVrCHorigNhWK8safdH3/RnXCQy0uIItM
         b4q51whYyXOZIYJCTvwO8tum5PQVAtYdmM2xcg3WvbueB442PpLsUl2YmuUcfnj/V3s9
         coDwqmT47ILGwIjBnXUh0QL58XyMO+Cu+4XX7siQosZdwWY3lGcMGMGbtJbuG2Khnm3b
         INFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzD268fBXdi0Eu8DlPZfmslyFzA7K585W82I5lLyYwWZCg94Od/+xfj/fnRiDG5ugL0/NiUyDW8+aP@vger.kernel.org
X-Gm-Message-State: AOJu0YzloQlVgc3SBn2yrClsd+7Bpe8Pk7y0J0nxnOu+grzpZlT7j9VN
	WWs2vMaWZkqPdyQ9GbUrtmlEqipWspnstzIO3ObcW0irioO8nfab9RN1LHiEvhAbYVk=
X-Gm-Gg: ATEYQzzSgkU0GPB50/un6kEsmG58hT3aVg0oRHADb5tFJjgYzrPnEyn2Qjw7wDVqeN1
	gV6Qavnkh/DSG2W2zNMZTXZr9XjFL+Ka+4E6VaMdDN9fTYCbThHKFJaN43F+VmQjJZ3ZvrNN7Zu
	MYW5BeDpO20wMX/c4Mj0ve8ulDOdy98WtJC1zk+HxduzxNjztqDW3i0gqXPfp1/PwOTFtWYBCg0
	mGkQOBjYN6tF+vTG4al4sYf4UWZU4dZqDlrTnD4nGCQxMU9yo1vW9cElSCa+FjreLOToS4k4BSQ
	YO1su3aWjfUnLqQKv9MA0cLFAoOBG5xaHzgjUTLQeHlVlV+2u4FZhsn+uxcUZIH3bsQADEQK3Xm
	Y7kbohzjT8vzNOI1L4CePfe+VI4dI4sFFLrnkZFGfAJjROuMW1IwMUfu/hd1/mskoZRtw0kXD2b
	O21LrbBwm4IY40ByBTgDtrdWWJ8KWZhFmr+6DMP+Ge
X-Received: by 2002:a5d:588b:0:b0:439:b114:60c2 with SMTP id ffacd0b85a97d-43a04db64b2mr5501570f8f.34.1773398890938;
        Fri, 13 Mar 2026 03:48:10 -0700 (PDT)
Received: from draszik.lan ([212.129.81.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19b936sm19109536f8f.5.2026.03.13.03.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:48:10 -0700 (PDT)
Message-ID: <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
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
Date: Fri, 13 Mar 2026 10:48:55 +0000
In-Reply-To: <20260312151228.GA3136988-robh@kernel.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
	 <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
	 <20260312151228.GA3136988-robh@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275135-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.10.107.32:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: B7608281B9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 2026-03-12 at 10:12 -0500, Rob Herring wrote:
> On Fri, Mar 06, 2026 at 10:29:55AM +0000, Andr=C3=A9 Draszik wrote:
>=20
> > =C2=A0=C2=A0=C2=A0=C2=A0 system-controller@17460000 {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "google=
,gs101-pmu";
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg =3D <0x17460000 0x=
10000>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #address-cells =3D <1>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #size-cells =3D <1>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ranges;
> > =C2=A0
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 google,pmu-intr-gen-sy=
scon =3D <&pmu_intr_gen>;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pd_g3d: power-domain@1e00 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 com=
patible =3D "google,gs101-pd";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg=
 =3D <0x1e00 0x80>;
>=20
> I'm assuming 0x1e00 is an offset from 0x17460000. That's not what ranges=
=20
> says though. It says both addresses are in the same address space=20
> (system-controller@17460000 parent's address space). You need:
>=20
> ranges =3D <0x0 0x17460000 0x10000>;

Thanks Rob! On gs101, the PD driver can not do direct mmio. Instead it
needs to use the regmap that the parent has created and apply the
offset from the PD's reg property (using struct resource::start)
(patch 7).

When using ranges as per your suggestion that doesn't work anymore,
as resource->start isn't the offset anymore but the final physical
address, and using that in combination with the parent's regmap
doesn't give us the right address anymore.

Is there an alternative other than using completely arbitrary indices
like e.g. rockchip is doing?


Cheers,
Andre'

