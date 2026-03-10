Return-Path: <devicetree+bounces-273373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHoHJTLhr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:15:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FCA2481BD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB0203202257
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E202843E4BE;
	Tue, 10 Mar 2026 09:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGvv3mFp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE63743CEF6
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133546; cv=none; b=tLtWDGg10/WmrNIw8OMCaaB0UgrKBF44mWECwAJ3yy2Pa/oWUtXN+RzyyRaPKVSvS3+CvBKQcWAMwmtfw+i8Q/9CyKz9yZrJNhPZ0bJGaru3/RW0OOU3D9ER0uJVTcsvyAGZhCgggZc5p1V3XYVLM76Vd1pSg734PZqkgktfpuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133546; c=relaxed/simple;
	bh=urzp3iSHfEjQ6iVXeHxOKd723Bxmh1Dpct7m2pzwYCw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rtr3Cbdrm7LXSJGinC8yImpV36YJiJCY6YgU9CRMhxfOCw8HCMmU4qCJO3kXRbqRmpyYhtngJf3HzW9V+xE1csjCdW8OcvkgYGnn+PEwUKOGi0nbdelzyuj56XjfJ6QngCcjjIX8sUBN8xXnLmH7xGfaa0ScGrNA3h6gCZiL72o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGvv3mFp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92763C2BCB6
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133546;
	bh=urzp3iSHfEjQ6iVXeHxOKd723Bxmh1Dpct7m2pzwYCw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BGvv3mFphJVr/W71Ab+mLz86MOU3m31cH/kSXOLTT1V2yP2h099oBKQNjkWk0enm2
	 7TtNKpFbND6vPDUrU1IvTpeENJy8zSUO5+0mTxp32GJ+KB5aZYllCqeqI3GBRXB+Hl
	 /KYwZo4tPT4tJKeU6O0Nb84vDe0stWZrr13Gto3abeNXVZy/w+hCWjh4//9STHJRxg
	 wuNpQCUozana+xGeNK7NI2DZ+EgUv/+UZxq95rppKjjW+TnRFt8w9d/9CnhamFV3cK
	 xXjVSkqw/eVqfYkC+I4Fn/KrIBpxs0PEDbgJ3lp7bS8g+XLydaJAgmBlWhb0SxWqIV
	 s7mhMQV14bQFA==
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7985d11da10so125797287b3.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:05:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUCku7Y6A9E0Ey3SwnQEWMA9HOHpN1guVoapkUrZZCrSlqnv0n+YFgfX6fkHPZJx4WzlytlCLTc/RKo@vger.kernel.org
X-Gm-Message-State: AOJu0YzQCM6r5UlHz5kl235/0ZIWBn427Qn18vyD75SYD1Sa2AM7eJ7q
	J4V4FzOnvJ/XAiCHwEjT/JW6W0pPiApJUtgrinxs4+vG3Awlfv2LcPjTgT5lwyYV6ZnaLUQ+4kA
	49vpGk7BPjk+eUldN8bbDyl6cabVEek0=
X-Received: by 2002:a05:690c:650e:b0:797:dd13:c34 with SMTP id
 00721157ae682-798dd79681fmr141387157b3.60.1773133545879; Tue, 10 Mar 2026
 02:05:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309134920.1918294-1-o.rempel@pengutronix.de> <20260309134920.1918294-5-o.rempel@pengutronix.de>
In-Reply-To: <20260309134920.1918294-5-o.rempel@pengutronix.de>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 10:05:35 +0100
X-Gmail-Original-Message-ID: <CAD++jL=3GeHNirtN9diGc8R2rxczo4UUL9_ON28jOj_DPP2Sjg@mail.gmail.com>
X-Gm-Features: AaiRm52uh6SAnzEBILcvzoRESMbYM7g3W10GU92cjVyRNQU9KO9ihPcuvQ7y5Lk
Message-ID: <CAD++jL=3GeHNirtN9diGc8R2rxczo4UUL9_ON28jOj_DPP2Sjg@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] gpio: gpiolib: fix allocation order in
 hierarchical IRQ domains
To: Oleksij Rempel <o.rempel@pengutronix.de>, Bartosz Golaszewski <brgl@kernel.org>, 
	Thomas Gleixner <tglx@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Peter Rosin <peda@axentia.se>, kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-gpio@vger.kernel.org, David Jander <david@protonic.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 13FCA2481BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273373-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Mon, Mar 9, 2026 at 2:49=E2=80=AFPM Oleksij Rempel <o.rempel@pengutronix=
.de> wrote:

> In gpiochip_hierarchy_irq_domain_alloc(), calling irq_domain_set_info()
> before irq_domain_alloc_irqs_parent() causes a NULL pointer dereference
> for slow-bus (SPI/I2C) IRQ chips.
>
> irq_domain_set_info() locks the child descriptor, triggering .irq_bus_loc=
k.
> If the child proxies this lock to the parent, it crashes because
> parent->chip is not yet allocated.
>
> Fix this by allocating the parent IRQs first, ensuring parent->chip is
> populated before the child's .irq_bus_lock is invoked.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
> changes v3
> - new patch

Bartosz, tglx: is this something we should apply for fixes?

I think it needs to go into gpiolib for next at minimum, unless
there is some semantic problem with the patch.

Verbose quote:

> -       /*
> -        * We set handle_bad_irq because the .set_type() should
> -        * always be invoked and set the right type of handler.
> -        */
> -       irq_domain_set_info(d,
> -                           irq,
> -                           hwirq,
> -                           gc->irq.chip,
> -                           gc,
> -                           girq->handler,
> -                           NULL, NULL);
> -       irq_set_probe(irq);
> -
>         /* This parent only handles asserted level IRQs */
>         ret =3D girq->populate_parent_alloc_arg(gc, &gpio_parent_fwspec,
>                                               parent_hwirq, parent_type);
> @@ -1657,12 +1644,27 @@ static int gpiochip_hierarchy_irq_domain_alloc(st=
ruct irq_domain *d,
>          */
>         if (irq_domain_is_msi(d->parent) && (ret =3D=3D -EEXIST))
>                 ret =3D 0;
> -       if (ret)
> +       if (ret) {
>                 gpiochip_err(gc,
>                              "failed to allocate parent hwirq %d for hwir=
q %lu\n",
>                              parent_hwirq, hwirq);
> +               return ret;
> +       }
>
> -       return ret;
> +       /*
> +        * We set handle_bad_irq because the .set_type() should
> +        * always be invoked and set the right type of handler.
> +        */
> +       irq_domain_set_info(d,
> +                           irq,
> +                           hwirq,
> +                           gc->irq.chip,
> +                           gc,
> +                           girq->handler,
> +                           NULL, NULL);
> +       irq_set_probe(irq);
> +
> +       return 0;

Yours,
Linus Walleij

