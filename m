Return-Path: <devicetree+bounces-271487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN8nEm1XqWkh5wAAu9opvQ
	(envelope-from <devicetree+bounces-271487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:14:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6B120F820
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 803E7300B06E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F80337AA98;
	Thu,  5 Mar 2026 10:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q3NL0/aX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903A73783CA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772705625; cv=pass; b=KIrSRb6uiuco6pIFpyX6ZoSlKrBWco/Ws+lloJeZmYlIAcVr46CuUDhJezwxbeTcu5QxtwX2wwTB/4oI7/Kmw0FL+2iLS3H9BGMVuDBLcn7C4RS+NJTHho1Ngg2kpaXyWEm8ZiYBgsp6uj7jP0YtiLqrXWu/OBXxrkuGtirpPEI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772705625; c=relaxed/simple;
	bh=GFDwCGFB/AQTCAHU5tMsZ7q+/z20+AbsOn7k0Q64tAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DvRT0fOV6NHE76FhMcwMToI60tz5EFGbAUFQCxmXw57iHjSSBaKNDF7TSLVo6f79evk68DEY1LapaXT72IbNkMKXcAa71F17qxiN67Se4Ejm0+CqC9wgo6Pk4xAP/Uaqw8eNGw8Oj3QKV8d0htKi6JePwQXSUl5pQ2V6q8BhY3I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q3NL0/aX; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439ce3605ecso442697f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:13:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772705623; cv=none;
        d=google.com; s=arc-20240605;
        b=K+UNQ80iInZ1VUx1wNa7u4EPLyt43MxmBKbFLRpwYHk9RfR22j3F2p6LESp89FD7SD
         UkzfQNcPrimYl7VngZglAGmiIw5vc/JeXrlM0SEoHhoSicv3TPr/rylD452ez00150a8
         7eTUb+QpwUgRCkuF3ezJpXL40D4r8eKjHG+BOe3Z0TUYiEuEBhqrOLEYGAqv9vlRWY4o
         nCjO1GvaouQYM6nHLx4jlPXK6jMqZsCNL9RuIaNs7OsP56g6HrKjisn4hSdEAxbVbYR3
         i0GXTtfsHmhlWAJesjPNp7J2sYc8qhxz/Ohj0s9AmP7aKJa7CBi4uIgigabUigQ0Xw8k
         zrVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rh3t36422Qx271p1OO0jFz9CqKGbapAyF7HmVo5B8yg=;
        fh=+vMYjN1fCkEMyICpqH58AjZcbt5H6qniKfLaRXOr3Mk=;
        b=k/G0GQSYfkGC8TICT3qVTF59k3cNUb0jHKSUx7h808jzv5JDb+20Lv7ElPRu1ywbmp
         LtTrwvRR02MfUe0s0EWab67uvXXZuheshyNHxZIUL9cU6KjGxwaaNsx55jRayOmDqH+W
         MWFdkvhWObQj8Sn2Ne/LoBElmQ49SoH03yfbQGEfetQMF2/p8FSvO4RTovZWXPWK89A+
         GYKYcPYFd1XC91C8msuXZyftz7cmaFu+sp7HGkTXfLOFw1Zla9EQLlbrjEPyZDk+sBMB
         3e73sQAInEXsCyitX7KYUp1RuyVZxgSxWLxfQfdJHxCZaaQqVSLz6/TYKGilbOYvczYg
         pqjA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772705623; x=1773310423; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rh3t36422Qx271p1OO0jFz9CqKGbapAyF7HmVo5B8yg=;
        b=Q3NL0/aXAvHFVCIz1Ydn/kKZ4qsg+3H6AGq4vuJtmKPzsjHxlKvyW6l40BtnBTluZl
         hzhbPvy73RJoEbenPH2LF/pk/9XpX1pfw+pRMaFSpsjwKSgQXTLBdPAw4hExcNEaFz2H
         wFSKvbMgj59fd9InBOrnGmjawmrMMInmc9EfRrAb61g8kmZXN3Wk1zL9YupA6H1j/vmb
         CI61UvFTkmo6EbWoDmO1z0q8KRXpZJC9sZw+mtAK8thK7n3QyFehiVT2eTnMJXd4KQVy
         vWGHu3+CJce1+awcW5YbNpb7TtzuqW7qKeGmWzKxUWJ39NtoOHBwg9w6itWEYRlTdegB
         LAWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772705623; x=1773310423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rh3t36422Qx271p1OO0jFz9CqKGbapAyF7HmVo5B8yg=;
        b=McKoPJRyQWinx34yhWzpb/+V6OM+jQFoL166Xr5cV6bv3IK/7LYQqf1dayeB0COP5B
         3siVHaWLFyRfhaURv82+is47KB314H1uMFTqwdaIqvNn37pGfqo1WCGhrf2jgsX62YUr
         8TR9LvNyMmYQyKAsjT6lq8dt8xbK1TBQf+xFH5GgPILG8KUSGBdnCcTRFSm7WrttZ1lb
         mOIviTrrTIT4HxpMrWyE3fHU1QKijs78RUvLZlD79B6JRbPsybTk58wxOSskmpzocUDK
         YEDkyvsF65BG/LR7QIkRkYrBKmY5uxttCyxaUZuJOcu9Wjospv+3ntmg4f2z5IAaZhB7
         wlZw==
X-Forwarded-Encrypted: i=1; AJvYcCWt5FVzjWzsXtCXrLZpXYkvZw1CeBAqWa3BpUr8XViOMj6zA0klQ2Iz0NYKaSuDJZT/FwMC7/z1e5qt@vger.kernel.org
X-Gm-Message-State: AOJu0YwEtedM/+XmRqxq1zM58VnM4rC8yLIV1DFOJvRy+eLi0o+gIxWr
	uWpvGN0XU2kkpXkflwUCaTLJLPeD5Hvz7orAZvZzqAVVe8iHuwaJIo3tjjzys5NycipAk725wVM
	MImDBhkdrqXBI+jdxAIERBTwkKckgmQjY9w==
X-Gm-Gg: ATEYQzzstUj1psbm/B/IMgdDTnA5Cyy1qi2yfnRS3Skb9L9XSuis5CskYs2XT6Yxwou
	/0Iw17CMyhGIil3NPW42h10qDhgn9lD0vOoFQ6ZK/nf+ap1kZUPy8L/Ce6w29YThnLd/1zIykrW
	4rBQ5ifiOIKYW5RXcL0Mi5Loxkna3hd2GzizdoNOnFKvRUuJntJACBUTmHlXR8cPKtTxVl4Bk26
	4RDR2yNvetUf7I98pPNBUAoHzPUfH/WCCqINgUlX6ZwkNy9Bbs4uKsDf04t0xQNrrGuC2iD5XkS
	p5s4iEpj
X-Received: by 2002:a05:6000:2c10:b0:439:bce5:6518 with SMTP id
 ffacd0b85a97d-439c7fa448bmr9643738f8f.22.1772705622716; Thu, 05 Mar 2026
 02:13:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304185001.82988-1-clamor95@gmail.com> <20260304185001.82988-3-clamor95@gmail.com>
 <aainoYv6RXkXFcHv@kekkonen.localdomain> <CAPVz0n2e3HCJRo0_Q5zbYp4w_-=ZCypoaw9vaN0NTfFr7qgorw@mail.gmail.com>
 <aalUTnqTFAWR6nPo@kekkonen.localdomain>
In-Reply-To: <aalUTnqTFAWR6nPo@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Thu, 5 Mar 2026 12:13:31 +0200
X-Gm-Features: AaiRm52wOY-IpQJuqUqpdfH3xEKrQOQebVgAQeqDUY7MYKuR7sv5CHygFlx1XeE
Message-ID: <CAPVz0n1a6MKYV8F5j2moP7Ym8K=e-r0ka58qarfMrXif=+kbXQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: BC6B120F820
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271487-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Action: no action

=D1=87=D1=82, 5 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 12:00 Sakar=
i Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi Svyatoslav,
>
> On Thu, Mar 05, 2026 at 10:36:25AM +0200, Svyatoslav Ryhel wrote:
> > =D1=81=D1=80, 4 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 23:43 S=
akari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > Hi Svyatoslav,
> > >
> > > One more thing...
> > >
> > > On Wed, Mar 04, 2026 at 08:50:01PM +0200, Svyatoslav Ryhel wrote:
> > > > @@ -2646,9 +2658,18 @@ static void mt9m114_remove(struct i2c_client=
 *client)
> > > >       pm_runtime_set_suspended(dev);
> > > >  }
> > > >
> > > > +static const struct mt9m114_model_info mt9m114_models_default =3D =
{
> > > > +     .state_standby_polling =3D true,
> > > > +};
> > > > +
> > > > +static const struct mt9m114_model_info mt9m114_models_aptina =3D {
> > > > +     .state_standby_polling =3D false,
> > > > +};
> > > > +
> > > >  static const struct of_device_id mt9m114_of_ids[] =3D {
> > > > -     { .compatible =3D "onnn,mt9m114" },
> > > > -     { /* sentinel */ },
> > > > +     { .compatible =3D "onnn,mt9m114", .data =3D &mt9m114_models_d=
efault },
> > > > +     { .compatible =3D "aptina,mi1040", .data =3D &mt9m114_models_=
aptina },
> > > > +     { /* sentinel */ }
> > >
> > > The driver also supports ACPI. mt9m114_models_default needs to be add=
ed to
> > > the ACPI data, too; otherwise ACPI support breaks.
> > >
> >
> > So turn into
> >
> > static const struct acpi_device_id mt9m114_acpi_ids[] =3D {
> >     { "INT33F0" },
> >     { /* sentinel */ },
> > };
> >
> > into
> >
> > static const struct acpi_device_id mt9m114_acpi_ids[] =3D {
> >     { "INT33F0", (kernel_ulong_t)&mt9m114_models_default },
> >     { /* sentinel */ }
> > };
>
> Looks good to me.
>
> >
> > I want to be as specific as possible to avoid any misunderstandings.
> > Additionally, please ensure these are all the required changes to
> > avoid unwanted reiterations, as I may not be as familiar with the
> > media framework as you are. Thank you!
>
> That's what I noticed after going through this once more.
>
> Review won't make patches perfect (mostly) but the more issues can be fou=
nd
> during review, the better.
>

Yes, but the more iterations pass, more issues may occur due to
mechanical typos or unintentional misbehaviors.

> >
> > > >  };
> > > >  MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
> > > >
> > >
>
> --
> Kind regards,
>
> Sakari Ailus

