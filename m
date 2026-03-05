Return-Path: <devicetree+bounces-271419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IN3xAVhBqWkZ3gAAu9opvQ
	(envelope-from <devicetree+bounces-271419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:39:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 577C620D920
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 400BA301184A
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7B237186B;
	Thu,  5 Mar 2026 08:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j4xQNHT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170D93469F4
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699800; cv=pass; b=OMiUQWOnM/G4OIswPV44SOULxA5tWgQCamyCvqFv9GhY0fM8dRLjKEfZUnuy+fcZEvD8H+/hqHpK8Lkc/2YYe92loH8XXwgUSGqMewaWqVfdwsyrQQLQEx4psZkSpmRv05D/GUDp/lHFfpXhjuOk1wuXb2W2xMDsIhLheRHgqos=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699800; c=relaxed/simple;
	bh=hSOSB0OeD4m9d1BJ3woE+QzZlposwfo3umzcGKPJDQQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vEpXerdaM0if7Zkp730fOTlpFhWosKxpLvG9KYx8zhCp6mCwvBOm41UyQe75xBOO3C9hsn6cONGoNCWLKFltWeFGO6YnCIrj4ifflxnw4LZk2CuHxARu+Ed7MQDJbx10ObFyv5pln/X13qjVcYZmXi4yHUuDW9SRj9r1/dw8qLw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j4xQNHT0; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b8a3f2bcso3291269f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:36:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772699797; cv=none;
        d=google.com; s=arc-20240605;
        b=ETIryfx4ROzwnOjGrbHbJrR5atK9TNG6qrY+nOe4ZoPhpJX4i/FsQ8GcTTM/Edfrkd
         Xd6zzFseqcvO/QAFol2hFRvYXOgQCFHn9S/rVeYkV6BaqGgwYUsF/XAaPK6msUlaLMtH
         AKXcRc6gq+d5F92xZ6K+xNM2grlPlGQAsdV58cKrFjhyfu/E5uvtO69E85U8cBzCTrdd
         Kr5zr4uoXzLeo1vpdOVUHts89ukyR26QcmKzm5k4UKB+nM2DaT3XogOOjtO7Pu+7yvrL
         wUTb9VkwDcag/GEXwu5zWrcBCI7DEC2dNsq5K4ykXPFlM396jr25OQghikdLqMncpAgu
         7vYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k5G0xZ9vhNKI2yHTPb4OU1Vd6k8/Kyp+TwAEkhLBCXQ=;
        fh=NdvrHb/AzIsOMRX5oAQx/9WwSvOlOifI7MhlXBES914=;
        b=R48vnlUdcwoR6sIzbMar6ed50f+n+tYV84SLiYSBvF28Bp+vr9OgnwohZ0xOZtflAi
         CyVfg7ux6kv98C8UwaEwUouGeiBjSLh4NNhhMOPYZSNBZA3mE2HZJBiszsKmehxMGKwj
         brJMCT94qbYYgGkSkQ14EaExPSlAOdUr01DT+4SHXyqiOHOMC9FLqxjDUGXQrrc5If31
         x2J94sfUCmvVft+5aNj1R2sKm9UCKNjoxjvBH8cwrw9QQ1wDTUwCR9rRdRvgfLcoxuan
         ylruwTD/iH8XB1H84ImSuXXdIfjS7Fl8RBt0pEDqpi2m6KvyaXrVoazZk5JszbLDz+VG
         7aLg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772699797; x=1773304597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5G0xZ9vhNKI2yHTPb4OU1Vd6k8/Kyp+TwAEkhLBCXQ=;
        b=j4xQNHT0UYnKQ+rEpWViENzb2S8/eUp7RUqLRzhktHaKal2AlCu9GJt1IE/dnrHk/K
         y1UC0IQfVS4f0gix9ENFVNahdD16k2Dv3+qyqqqGxmrZz5Q3C7dcltuczp2kfurtw4rc
         /JjAduQknDw3S3Iy13wuZx9sszLNtSmx87jfq63ayZdcrvV+Qp+ubL6p9XVkP260IpoC
         pdzAiGbryN5WirerS+KXhGKLKQEqrlqRP062NUQ8/uPX09AUzdnUEdpNkCdE1uzEH96O
         6cXkLUgNH/36W0/oS0+KBi1rSblzHETiaH6kkTyibsLQoCS3z+JAssW/Lj6zPQMAWy2r
         ZK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699797; x=1773304597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k5G0xZ9vhNKI2yHTPb4OU1Vd6k8/Kyp+TwAEkhLBCXQ=;
        b=XfnBSCSZwR1wzT+GB7RTRyeRvj+WdlIr2rOa5yhve9Drx6Pz1DMS6yoL8zVelCZqMe
         awsHp5ERR+0Rgasz1FmjtjTOAoNs5E6c2o2BAswZ3K0xwsfhllB9YXoF7gafJKXOQTaj
         0yUqJ1hUfC50rDXqtCSQPEYJpnCGS0pII/OpMv0rsqfiRUQ5YY9wuVH5DXBZsn6nwEj+
         ryvo2WgLOde9uymFryqptJ9OuISH9PK+Csk43ecCtqT7QNbJDAoLxO9S/Re+HG+3ATzM
         RZ1jYFXEkDfJA4HydivjYKfQeSbtJlv4uLy+elIRfMAIFYA5Nqlpzf4xpMTetyRVAgXh
         NKjg==
X-Forwarded-Encrypted: i=1; AJvYcCU2HKBG2chmp8ypzJ9nLDFGClMQ3+AI4fMg5kO4E5ZlvSUHUomNClmHpeHroqzgTuZAIeUJGyVfiCkt@vger.kernel.org
X-Gm-Message-State: AOJu0YwWSEXUSP90GhJkFWs4z6Hnct7MgZOYynoxRk2Eye0H5m5OIAVq
	mX9x/tHNzlt6nANB7+8Ur649JI5giZHkwV3j0qVmKXoCfo+lIQ+8xMHA3qGSlwNv9pI0qVho4BV
	edr6Ml4PqX/+HwzavPmScl6QwCJHYENU=
X-Gm-Gg: ATEYQzwRhn4j06kskCWfT1HoWA0qm6+PgIhQCvB6q3rjyvQiIlqlHHmBzh17w58a/Lb
	do/VpD8yAHIRoxzdWaY1hNZxTWWoGWk1oGATrD86H6WkJqj+CB7GZH23jgHeF9ZU7bZOt/8DCYs
	r/we/BvDVCR0z1UscQdbx4xay45OaxEFJyGM4oE4umxbi84OM3i2vAeoTVDCL5ju7hPskDzrHLS
	vM8EVpTJnbxJCiEb9k3NsOY+xYe2/c77Q81JVVqcAReOKo6s+TQZej0rMrXgC1Og4rEfk2bGzjF
	G2ofnx/t
X-Received: by 2002:a05:6000:3113:b0:431:808:2d58 with SMTP id
 ffacd0b85a97d-439c801f516mr8369434f8f.51.1772699797219; Thu, 05 Mar 2026
 00:36:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304185001.82988-1-clamor95@gmail.com> <20260304185001.82988-3-clamor95@gmail.com>
 <aainoYv6RXkXFcHv@kekkonen.localdomain>
In-Reply-To: <aainoYv6RXkXFcHv@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Thu, 5 Mar 2026 10:36:25 +0200
X-Gm-Features: AaiRm51wWcAzTlCAo16hjl9YtY3WCpC_whcBCHj-JdnT9M7JLgnBhssMy-E9L0E
Message-ID: <CAPVz0n2e3HCJRo0_Q5zbYp4w_-=ZCypoaw9vaN0NTfFr7qgorw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 577C620D920
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
	TAGGED_FROM(0.00)[bounces-271419-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Action: no action

=D1=81=D1=80, 4 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 23:43 Sakar=
i Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi Svyatoslav,
>
> One more thing...
>
> On Wed, Mar 04, 2026 at 08:50:01PM +0200, Svyatoslav Ryhel wrote:
> > @@ -2646,9 +2658,18 @@ static void mt9m114_remove(struct i2c_client *cl=
ient)
> >       pm_runtime_set_suspended(dev);
> >  }
> >
> > +static const struct mt9m114_model_info mt9m114_models_default =3D {
> > +     .state_standby_polling =3D true,
> > +};
> > +
> > +static const struct mt9m114_model_info mt9m114_models_aptina =3D {
> > +     .state_standby_polling =3D false,
> > +};
> > +
> >  static const struct of_device_id mt9m114_of_ids[] =3D {
> > -     { .compatible =3D "onnn,mt9m114" },
> > -     { /* sentinel */ },
> > +     { .compatible =3D "onnn,mt9m114", .data =3D &mt9m114_models_defau=
lt },
> > +     { .compatible =3D "aptina,mi1040", .data =3D &mt9m114_models_apti=
na },
> > +     { /* sentinel */ }
>
> The driver also supports ACPI. mt9m114_models_default needs to be added t=
o
> the ACPI data, too; otherwise ACPI support breaks.
>

So turn into

static const struct acpi_device_id mt9m114_acpi_ids[] =3D {
    { "INT33F0" },
    { /* sentinel */ },
};

into

static const struct acpi_device_id mt9m114_acpi_ids[] =3D {
    { "INT33F0", (kernel_ulong_t)&mt9m114_models_default },
    { /* sentinel */ }
};

I want to be as specific as possible to avoid any misunderstandings.
Additionally, please ensure these are all the required changes to
avoid unwanted reiterations, as I may not be as familiar with the
media framework as you are. Thank you!

> >  };
> >  MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
> >
>
> --
> Kind regards,
>
> Sakari Ailus

