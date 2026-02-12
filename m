Return-Path: <devicetree+bounces-265199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCuCD55EjmmPBQEAu9opvQ
	(envelope-from <devicetree+bounces-265199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 22:22:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FDB131386
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 22:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 214C8301DAB4
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A9B31984E;
	Thu, 12 Feb 2026 21:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EDts6vKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20809298CC9
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 21:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770931341; cv=pass; b=oIh6vBuuS44lOjtIkJMszw3oWW+riVsXDnDuerTwf9csz2PaUlV1sz0+TopdW5uJdNPBtHhAtvrHE+31QEd6zNsAlPbOM6dIqcW19+bmw7YrE4FItK4yK94GwxEESHR50g7ck6kaIHyUbREsVPmSDAcPNXBh8VMjbFkxqeGiSuE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770931341; c=relaxed/simple;
	bh=2Q80iWLlO/EsAMi2xxRZK64CHFdB+K1b20bleGuBlSQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m1lS9vZNF7uGFO6yqD/NrTmqTdwuACpfpnM/bhgMKasFJz3kHmJ+k5tBDZaj266Y0Et/G63xEplan9Hv/msHr/FFmUeBrav5RSXHBF0ZCUeuiIKNX3ziuNeJTEEtxllMz724hHZMcInSD5ZfIU8dFN7F17FOLFqN+eTdrv9lZD4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EDts6vKw; arc=pass smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5fc4220b0acso106292137.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 13:22:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770931339; cv=none;
        d=google.com; s=arc-20240605;
        b=dlO2yKviKreafQTOMaaF8YQZnl0mmAMA5MVPH/A51/XolHCZEJy8KrKRWXe8Uouo2P
         xt8wdzXBtV/cAFSIFYC+0C9BicAenUQF2mDug0UAONacJzeuQVU5F9FjsABtv0NX37iM
         U0SNi3sKJZCb/uRSW+xtdtGONnqUBS2llAuZ39aY+O4F0eGV8XxqMqkD+9KFhTKa8tSX
         maWSNVOpmUulI4x5HZyX9WDiy8Mn05iQ7E82MkfPRB51lJQaTkYPl1CaJwkElvpcOroZ
         dKhaaP+8eGImM9LUO7uKE5qKW2DsZ7htX6j4PwNdVmoVwHhRKv8AtZzuZoKVWudie+Mj
         SdLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lJbkjkMJnR0L+7fmUU2v5pdQLPoQqPz3qy/LeQMOfTI=;
        fh=vxcajKJw83pI0A9igtGVrSmrW7mzr9n7wjSyA3z+n58=;
        b=BOXfQ/vw5PgJX1oDWsx6yezakerMQ+BpO2btlFCvZGN7JnLwUCGJXH6Uql6rpwCogW
         BRxBeytXqEEj0jt93bairUza8BufuWsJQMW5WizLfz/yT2r+hqG6B5aQBlA9WnwTy1bV
         nAsIim3RLtlHuAij2OknfijbcQm8PS3jDb5j2UuM4B0g65ROEauK2FPWQqRqk59XTc4+
         3FkHOvoT1lXSyCsXTqwVLh41LpP8/sAOEXE9Gfh7voev+/mkk9eW9ZnXQAp6IOeKneQO
         JyNGpCrDaJvCEtMEopbQ5PjrwFySJHHpa5imDYjzhO6DMoq4vNGVBPzgFMGVd2cQzd11
         dLtA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770931339; x=1771536139; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJbkjkMJnR0L+7fmUU2v5pdQLPoQqPz3qy/LeQMOfTI=;
        b=EDts6vKwk2USlhd6hBjgjOf5FnDiPukq2EOYc8mOWdAwcAjRQK3LQKe23UoCmwIXk5
         CPZOAj3trm8RcexwHiYY260RznRs0Rdro6QNzSenyrTkOwYoHGzilnoRjpZt0DaA3lb6
         HeYOlvdLsQdCmv6+OwGM09QSrAfFmzi/2y5po6JsRIn+oPI8cbu+Qm20Oa6uHQjVEwyt
         iJsKKPoGxu92Zp6IR81bWf6vVg1bzA0DZpWVv0p4xha8klIvJxTEc9Pa+rbIKRZ8EZmq
         VWo2AqBFol7zmN2PJNtk6xk1LwvLElitU9+Qspr4tEG3C9xvG6uPtUngHL3Gtof0yt78
         WFvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770931339; x=1771536139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lJbkjkMJnR0L+7fmUU2v5pdQLPoQqPz3qy/LeQMOfTI=;
        b=K6GEw1AwIOrTw7zkuzz3tmytfpyyl4Q/LgJxY7zFx4A93Q8ITzWl0JC+AcMPCWE0DP
         BOMLu3LlJ9067TZAqRTK9H04g/zfVXvRO7GMKEMousXZNgYg3UsYAI14LBHsJGaKvB5f
         5THMDJ6R8e2TPC1bj//8V8GlOvGLNKdMDg1ar2YIyV4Pvcnl919rdH8Z6A17m8OiWBI2
         0yAUfx0fE9S3tJjxmJ3VOrCAPU/d3QaVa4/z2sDbfrH91ueGkZYzg/87IJoKYJdEjdfC
         DVLmx1RBGYmDJziRTd1a1KRXFekDiyEGlb+OxFA0A36H0F0ARVWtC/mHTW9UNi7DTaGR
         UKcg==
X-Forwarded-Encrypted: i=1; AJvYcCWS6GVpSEHbN8NaaeD1CmBnx4BHE+Xv64MVGPAH04lpFP/Min1pfHoA7iMyDW/+el1+gMnDTS285efX@vger.kernel.org
X-Gm-Message-State: AOJu0YwFLWETbtsn2UcOe2wJG9uO6GlHwkQ0KZU/yi9kVTtkEKU/B7Gc
	V+dqHsa5VFI84nQmkS5MGObgCvfrdzYVvnwRFfa2xOvwhDRoptwFUnJ5OZF+ZWpHhSJ/RHXCSAN
	pD9JoIZt0c4Hi2WGOntcIjTTLxWj6yOQ=
X-Gm-Gg: AZuq6aJndfZAJBAIoR5e3iEtX0EinVjn8Oca7ASGcV64XxoJZiKSzINBocFVWJZtcw4
	w3jS41rhxvLHPYu/3e/ayWlFFQMJ4QNRRKwipgikmUrgA0s+SKV2/D9mTB+bxnm1xsQbYZ9QZYM
	UKFkuz+/4jTcgW8/JyAT4x5/znt+iE8Lu5gnI++5T1MiciMckCO0autXWKG6AdNu9x1+FIkI4tP
	XvhhpB+8zcDgrwMwT/ALyfJT/dCaT7gsz3chSgqLiAUp45ZHDGkFcB/3uLK/VV27GjGpW9n1406
	OujquUMTn0Izi5RSThyxqVUWbEICh1aGgbSDH+6wMUBMwU//SEywx/mCnclGNxH6AZ+b
X-Received: by 2002:a05:6102:3a14:b0:5fd:eff4:825 with SMTP id
 ada2fe7eead31-5fe16eb84f7mr64745137.26.1770931338959; Thu, 12 Feb 2026
 13:22:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
 <20260212195423.GA787785-robh@kernel.org>
In-Reply-To: <20260212195423.GA787785-robh@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 12 Feb 2026 14:22:08 -0700
X-Gm-Features: AZwV_Qj2iNJknyOdMvovav2QeJixLpYucI_gIuCIgL06PMhb9lk3yHI7CRg8Nv8
Message-ID: <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265199-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 68FDB131386
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 12:54=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Wed, Feb 11, 2026 at 10:01:05AM -0700, James Hilliard wrote:
> > On Wed, Feb 11, 2026 at 1:44=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> > >
> > > On 11/02/2026 09:28, James Hilliard wrote:
> > > > On Wed, Feb 11, 2026 at 1:19=E2=80=AFAM Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> > > >>
> > > >> On 11/02/2026 09:17, Krzysztof Kozlowski wrote:
> > > >>> On 11/02/2026 09:13, James Hilliard wrote:
> > > >>>> Document the gpio-aggregator virtual GPIO controller with a dedi=
cated
> > > >>>> schema and compatible string.
> > > >>>>
> > > >>>> Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the n=
ew
> > > >>>> binding file.
> > > >>>
> > > >>> <form letter>
> > > >>> This is a friendly reminder during the review process.
> > > >>>
> > > >>> It seems my or other reviewer's previous comments were not fully
> > > >>> addressed. Maybe the feedback got lost between the quotes, maybe =
you
> > > >>> just forgot to apply it. Please go back to the previous discussio=
n and
> > > >>> either implement all requested changes or keep discussing them.
> > > >>>
> > > >>> Thank you.
> > > >>> </form letter>
> > > >>>
> > > >>
> > > >> First thing which was missing (I did not even check the rest in su=
ch
> > > >> case): missing rationale for this patch, missing hardware descript=
ion.
> > > >
> > > > I added some more details to the commit message, this is a
> > >
> > > No... Commit msg is exactly the same.
> >
> > I added the details to this commit message specifically:
> > https://lore.kernel.org/all/20260211081355.3028947-2-james.hilliard1@gm=
ail.com/
> >
> > >
> > > > virtual gpio driver though so AFAIU it's not hardware specific.
> > >
> > > You can give example of any hardware where this is useful. You need t=
o
> > > make your case with actual arguments.
> >
> > The sunxi h616 board I have has hundreds of GPIOs, only
> > a few of which are needed, I want to map them in device
> > tree overlays since there's some minor variants with different
> > hardware gpio configurations.
> >
> > Setting the gpio names on the parent controller is not practical
> > since doing so would require setting hundreds of values for
> > gpio-line-names, you also can't really combine sets of pin
> > names across device tree overlays AFAIU.
>
> You can do: gpio-line-names =3D "GPIO0", "", "", "GPIO3", ...;
>
> The clock binding has "clock-indices" which is used with
> "clock-output-names". We could do something similar if
> all the '""' entries are really a problem.

AFAIU this doesn't solve the line name merge issue.

I have some GPIO lines that are common to all control card
variants, as such I would like to put the names for these lines
in the base dts file so the names always get applied.

I also have some lines that that are common to a subset of
control card variants(which I detect via GPIO strapping in uboot),
as such I would like to put the names for these lines in a dtso file
that is conditionally applied by uboot based on the control card
variant. There are actually multiple GPIO groupings, some are
for peripheral connectors and others are for control board
integrated hardware.

So what I want to be able to do is effectively merge all the GPIO
names from a dts file and multiple dtso files, and you can't merge
list properties, you can only override them entirely AFAIU.

> > > > Use case is I have a device with something like 300 gpio
> > > > lines...and I want to name/group a small subset of those
> > > > lines for delegation to a userspace app rather than trying
> > > > to set 300 or something gpio-line-names values, also I'm
> > >
> > > So if I change the approach in user-space or use different user-space
> > > app then I change the DTS?
> >
> > The idea is to make it practical to set gpio-line-names for a
> > subset of the GPIOs that are wired to peripheral boards.
>
> Humm, peripheral boards! So there's a connector. You need a connector
> binding. And the one solved binding for such a thing is GPIO! The
> gpio-map property lets you remap GPIOs from one provider (the connector)
> to a parent provider (soc_gpio). It would look something like this:

Well...some GPIOs are wired to peripheral board connectors...but
some are wired to things like built in LEDs and a few different
on-controller components as well which vary by controller hardware
revisions.

This gpio-map feature doesn't exist in the mainline kernel does it?

Would this work with multiple connectors?

In my device everything I'm wanting to name is off the same gpiochip.

>
> conn_gpio: connector {
>         #gpio-cells =3D <1>;
>         gpio-map =3D <0 &soc_gpio 3>,
>                    <1 &soc_gpio 123>;
>         gpio-line-names =3D "GPIO0", "GPIO1";
>
>         /* in an overlay */
>         device {
>                 foo-gpios =3D <&conn_gpio 1>; /* soc_gpio 123 */
> };

I think in my case the entire connector would be in the overlay, as
the connector GPIO lines vary by control board hardware revisions.
Would that still work?

Would the gpio-line-names defined here get set on the parent
&soc_gpio gpiochip or would they show up under a virtual
separate gpiochip similar to gpio-aggregator?

> >
> > Say for example I have a control board connected to a few
> > different peripheral boards, there may be different mixtures
> > of peripheral boards, some of which can be used at the same
> > time as they use different GPIOs.
> >
> > The idea is we load device tree overlays for the detected
> > peripheral boards with detection done in uboot based on a
> > GPIO pin strapping based detection.
> >
> > In userspace we want to match the peripheral board GPIOs
> > based on the GPIO line names, but using gpio-line-names
> > on the entire GPIO controller isn't practical as that doesn't
> > allow composing gpio-line-names configurations from
> > multiple device tree overlays and would require a ridiculous
> > number of placeholder entries due to there being no way
> > to configure individual gpio-line-names for non-hog lines.
>
> GPIO lines typically connect to something. Relying on gpio-line-names
> seems like a failure in defining (in DT) that something.

Isn't gpio-line-names intended to describe what they are physically
connected to? At least that's how I'm seeing them often get used
in mainline device trees.

> We would never rely on GPIO pin names in the kernel. Userspace doing
> so is pretty suspect too. More importantly wanting to do something in
> userspace is irrelevant to bindings. What's in userspace today may be in
> the kernel tomorrow. Look at serial attached BT or other h/w.

Why is that suspect for userspace? The userspace tooling for
gpio manipulation largely seems to support flags for name based
lookups as an alternative to gpio numbers.

In terms of userspace vs kernel drivers...the current situation
for my hardware at the moment is that it's effectively a hybrid
situation, some peripheral board components like eeproms and
temperature sensors have proper kernel drivers, these would be
on the i2c lines for the connectors. There's also uart lines as well
for high speed communications and plug detection GPIOs, reset
GPIOs and reset detect GPIOs on the connectors.

Overall management of the peripheral boards is handled by a
userspace application that needs to know which GPIOs are
attached to which physical connector lines, and since this varies
by the hardware revision it seemed logical to use gpio line names
for that rather than implementing the mapping logic in the userspace
application. There isn't really a good way to control reset lines
and such from userspace other than with GPIO based interfaces
right?

I'm trying to push as much logic into the kernel as practical,
hence why I'm trying to use the gpio names instead of having
the userspace application handle the mappings.

For this hardware there are roughly a dozen control card
subvariants and hundreds of peripheral board subvariants,
although the peripheral board subvariants generally don't
require much differences in kernel features/configurations so
the userspace application can largely handle those differences.

>
> Rob

