Return-Path: <devicetree+bounces-41016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 079F2851F32
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1DDC284C02
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 21:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D72C4C601;
	Mon, 12 Feb 2024 21:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hJ3fTcjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BAC4C618
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 21:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707772123; cv=none; b=cQksKw/3plglDxC1KsIRprYUTTv0bGQoPtEP0ywF8rHuYVKejhRDHnOHXA0eYk2Q/Gv5cald0/8Py9MGwMggNP7QzmixmY4XPgTkTfc5tIP9tj4PR7ubtCzh6pVxn/MwHmDOTLJoVmmhbxbk25FqWYNNA4SeBmx6MVs59uVmXl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707772123; c=relaxed/simple;
	bh=cT6oEXxc39vrH0YgJRtkQAV0D4LcChlx3yJhcWWEjVs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nwJdTMBd02wK+y5xH0sBb1IhKZKnAgtcY90wWEdUGD0Jo368V7Gr9d1FUGRPzbVgL2+cb5w8GOwhlodcGhNa/zka8wY1LOMc/oTyb6VUW/ZNcP0ZcbxfXWkcVyTLQL+D4Zs+WWMqSRxnr7Cgydlk72Svhu7pGFIVXKGWtFvJHlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hJ3fTcjD; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42dac9f7183so11481cf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707772120; x=1708376920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+d9JGQ7QCBLiQWxTJtAp8Y26oWjCdolLMdTv/a9cv8=;
        b=hJ3fTcjD2qK+ZT2cue8yvJiBJct/GnJmMSN1oh5lRLE/zIRKzbsg3lPxjBF+AacREp
         5BfEWSFqAMXv5U35A8NpARy0ZTvhwF/uPRB4BATluCVW0Rmjg3h0Fuvd+4QxdMVC/Izd
         NLvHE6Z6cPU0IyU0u7AyTai+7qi3lrK6N62Iwi3K9+aX2RM1fVhHTaBce4AGcTRMwkmO
         u2q+folIeuHrdXgzGhakiVofHvvIwL/NIGh08mdSspWUupvwUTn8RqPMC+YUpNcLR+XP
         yVfdyREehL6KBOru3tbYylC6wLHV7CCdvzfgeC+nHcyBSg2NALKZKPt+5knKwb2Pwrdx
         eDSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707772120; x=1708376920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+d9JGQ7QCBLiQWxTJtAp8Y26oWjCdolLMdTv/a9cv8=;
        b=CYkGkXDdaRviivdhCAsYPCeoDP5/UMx8mXHVEQfBTUnJiqB0ZE25ut591WGlbfWqpI
         3rsVVvaLzmhPAYFNV/r7U0rTy+WgasFE15eBCNZl9RnlXg1Jr5INei5X5lWHejWmCnaX
         vNV0MJxJFvaw2zI7VbBJlNVpmyUY50saoejnQPVZkWQBBHgGddmAPUeomHvA8q9bgs7C
         ctgDCjsKj6MN3GPSPCPs5l3g3LXfNz3oiBu6qOGcJvWOGeYDB6JMzKB3tR4Pv/ksYVmU
         iJddor16/hSdpk3vljjLg2Scm5AP5jDD6d0aJ5k8RJVoUeFwe8PuXe/HZmCaWhzYKJMn
         HYGw==
X-Forwarded-Encrypted: i=1; AJvYcCXoNIC3vEstiNcSdiSeKGThoeqUAruW9EZo5vCL9t5QNgCQXboEgcbuqnvPrGt7oRWtDkkR2EklgsCrbIl8r/FqBt9Pzm2bnmPIbw==
X-Gm-Message-State: AOJu0YzeqYX8WcWtsjCPx+uf3R09DqORM0pKAampTiqKEvvm0gDoyPyy
	9rRBVFmN4lywndlzk4fh7aJti/XEEiEc6OD08bgBoelvoYEIp5Gh4/rt3u95s/SVOpGms8DuDWN
	hwcw618CzIbLPmCePIcPhN3oY7ZvRxY6fp568
X-Google-Smtp-Source: AGHT+IEDqmoTtT2agh02uJiNKeZfP9bWjW02lWNGSEM6It4rrTXIHzftcneItrx4H7q3pIKgvKfKACqaEEyykLLBu0g=
X-Received: by 2002:ac8:6e8d:0:b0:42c:5c91:b93c with SMTP id
 c13-20020ac86e8d000000b0042c5c91b93cmr7185qtv.27.1707772119457; Mon, 12 Feb
 2024 13:08:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210030549.4048795-1-saravanak@google.com>
 <20240210030549.4048795-4-saravanak@google.com> <CAL_Jsq+tMK6myLtvD2EYEE2juev+wMvWoVMnYpT8JPy2eD9hKA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+tMK6myLtvD2EYEE2juev+wMvWoVMnYpT8JPy2eD9hKA@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 12 Feb 2024 13:08:00 -0800
Message-ID: <CAGETcx-g6MXk0DP8pNwiGfjr4amdc0Mha3Uk9Kx74xaqxbUHOg@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] dt-bindings: Add post-init-supplier property
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-efi@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 10, 2024 at 3:26=E2=80=AFAM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> On Sat, Feb 10, 2024 at 3:06=E2=80=AFAM Saravana Kannan <saravanak@google=
.com> wrote:
> >
> > The post-init-supplier property can be used to break a dependency cycle=
 by
> > marking some supplier(s) as a post device initialization supplier(s). T=
his
> > allows the kernel to do a better job at ordering initialization and
>
> s/the kernel/an OS/
>
> > suspend/resume of the devices in a dependency cycle.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  .../bindings/post-init-supplier.yaml          | 99 +++++++++++++++++++
>
> This should probably go into dtschema instead, but fine here now for revi=
ewing.

How do I submit it for dtschema?

> We have to consider if this property should be automatically allowed
> on any node or nodes with specific suppliers, or if it should be
> explicit for users. The former needs tool support. I'm leaning towards
> the latter as I want to know when this is needed.

I think I understand your question. This property can be relevant for
any device -- it really depends on the device's consumers and
suppliers and if they form a cycle. Ideally, we can check if a device
is in a cycle and then allow it only for those, but that's going to be
too complicated I think. So, I think this should be allowed for any
device.

Since this property is defined as a "post-init-supplier" and only
applies to an existing direct supplier, there's not a lot of room for
misuse. Actually if you can add a check "are all the phandles listed
in this property also present in one of the other properties in this
device node", that should be sufficient.

I'll also edit the documentation to make it clear it's meaningful only
for an existing supplier.

>
> >  MAINTAINERS                                   |  3 +-
> >  2 files changed, 101 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/post-init-supplie=
r.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/post-init-supplier.yaml =
b/Documentation/devicetree/bindings/post-init-supplier.yaml
> > new file mode 100644
> > index 000000000000..cf9071ecd06e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/post-init-supplier.yaml
> > @@ -0,0 +1,99 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright 2018 Linaro Ltd.
>
> ?

Oops... didn't edit out all the lines in the example.

I'll address all your other comments in the next patch.

Btw, this is the command I used to validate this file (before I sent
v1), but it didn't spit out anything meaningful that I could
understand:

make dt_binding_check DT_CHECKER_FLAGS=3D-m
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/trivial-devices.yaml

Is that the right way to run it? I'm using yamllint 1.32. So it's not
terribly old either (can't install anything newer).

-Saravana

>
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/post-init-supplier.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Post device initialization supplier
> > +
> > +maintainers:
> > +  - Saravana Kannan <saravanak@google.com>
> > +
> > +description: |
> > +  This property is used to indicate that the device(s) pointed to by t=
he
> > +  property are not needed for the initialization of the device that li=
sts this
> > +  property.
> > +
> > +  A device can list its suppliers in devicetree using one or more of t=
he
> > +  standard devicetree bindings. By default, it would be safe to assume=
 the
> > +  supplier device can be initialized before the consumer device is ini=
tialized.
> > +
> > +  However, that assumption cannot be made when there are cyclic depend=
ecies
>
> typo
>
> > +  between devices. Since each device is a supplier (directly or indire=
ctly) of
> > +  the others in the cycle, there is no guaranteed safe order for inita=
lizing
>
> typo
>
> > +  the devices in a cycle. We can try to initialize them in an arbitrar=
y order
> > +  and eventually successfully initialize all of them, but that doesn't=
 always
> > +  work well.
> > +
> > +  For example, say,
> > +  * The device tree has the following cyclic dependency X -> Y -> Z ->=
 X (where
> > +    -> denotes "depends on").
> > +  * But X is not needed to fully initialize Z (X might be needed only =
when a
> > +    specific functionality if requested post initialization).
> > +
> > +  If all the other -> are mandatory initialization dependencies, then =
trying to
> > +  initialize the devices in a loop (or arbitrarily) will always eventu=
ally end
> > +  up with the devices being initialized in the order Z, Y and X.
> > +
> > +  However, if Y is an optional supplier for X (where X provides limite=
d
> > +  functionality when Y is not initialized and providing its services),=
 then
> > +  trying to initialize the devices in a loop (or arbitrarily) could en=
d up with
> > +  the devices being initialized in the following order:
> > +
> > +  * Z, Y and X - All devices provide full functionality
> > +  * Z, X and Y - X provides partial functionality
> > +  * X, Z and Y - X provides partial functionality
> > +
> > +  However, we always want to initialize the devices in the order Z, Y =
and X
> > +  since that provides the full functionality without interruptions.
> > +
> > +  One alternate option that might be suggested is to have the driver f=
or X
> > +  notice that Y became available at a later point and adjust the funct=
ionality
> > +  it provides. However, other userspace applications could have starte=
d using X
> > +  with the limited functionality before Y was available and it might n=
ot be
> > +  possible to transparently transition X or the users of X to full
> > +  functionality while X is in use.
> > +
> > +  Similarly, when it comes to suspend (resume) ordering, it's unclear =
which
> > +  device in a dependency cycle needs to be suspended/resumed first and=
 trying
> > +  arbitrary orders can result in system crashes or instability.
> > +
> > +  Explicitly calling out which link in a cycle needs to be broken when
> > +  determining the order, simplifies things a lot, improves efficiency,=
 makes
> > +  the behavior more deterministic and maximizes the functionality that=
 can be
> > +  provided without interruption.
> > +
> > +  This property is used to provide this additional information between=
 devices
> > +  in a cycle by telling which supplier(s) is not needed for initializi=
ng the
> > +  device that lists this property.
> > +
> > +  In the example above, Z would list X as a post-init-supplier and the
> > +  initialization dependency would become X -> Y -> Z -/-> X. So the be=
st order
> > +  to initialize them become clear: Z, Y and then X.
> > +
>
> select: true
>
> Otherwise, this is never applied.
>
> > +properties:
> > +  # A dictionary of DT properties for this binding schema
>
> Drop
>
> > +  post-init-supplier:
> > +    # One or more suppliers can be marked as post initialization suppl=
ier
> > +    minItems: 1
>
> That's the default.
>
> > +    description:
> > +      List of phandles to suppliers that are not needed for initializi=
ng or
> > +      resuming this device.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
>
> Should be phandle-array plus:
>
> items:
>   maxItems: 1
>
> (as each entry is a single phandle)
>
> > +
> > +examples:
> > +  - |
> > +    gcc: general-clock-controller@1000 {
>
> clock-controller@1000
>
> > +        compatible =3D "vendor,soc4-gcc", "vendor,soc1-gcc";
> > +        reg =3D <0x1000 0x80>;> +        clocks =3D <&dispcc 0x1>
> > +        #clock-cells =3D <1>;
> > +        post-init-supplier =3D <&dispcc>;
> > +    };
> > +    dispcc: display-clock-controller@2000 {
>
> clock-controller@2000
>
> > +        compatible =3D "vendor,soc4-dispcc", "vendor,soc1-dispcc";
> > +        reg =3D <0x2000 0x80>;
> > +        clocks =3D <&gcc 0xdd>
> > +        #clock-cells =3D <1>;
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 3dfe7ea25320..40fd498543a5 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -6055,10 +6055,11 @@ S:      Maintained
> >  F:     drivers/base/devcoredump.c
> >  F:     include/linux/devcoredump.h
> >
> > -DEVICE DEPENDENCY HELPER SCRIPT
> > +FIRMWARE DEVICE LINK (fw_devlink)
> >  M:     Saravana Kannan <saravanak@google.com>
> >  L:     linux-kernel@vger.kernel.org
> >  S:     Maintained
> > +F:     Documentation/devicetree/bindings/post-init-supplier.yaml
> >  F:     scripts/dev-needs.sh
> >
> >  DEVICE DIRECT ACCESS (DAX)
> > --
> > 2.43.0.687.g38aa6559b0-goog
> >

