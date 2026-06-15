Return-Path: <devicetree+bounces-311546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JGUsAcNPL2pB+QQAu9opvQ
	(envelope-from <devicetree+bounces-311546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 03:05:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 718D5682AE4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 03:05:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nQnNStKa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311546-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311546-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C99630013A9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 01:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D431A680E;
	Mon, 15 Jun 2026 01:04:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D17419ABC6
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 01:04:53 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781485496; cv=pass; b=E/sQJBlgxwpBjc7oUJibKxULaN0CINnurzfvoUfaaXSD3cDkwT+V0oVfitB8b1zKl4nH8/PrEJmgVIeWkfMjAWAA1hbELTAz0PGSBmjfONL7rULQGqqWVLH56zEdsmVLwmOeDMBRvN4YTVF4LLEeGu0TZGnEuQmw/UHINZ/xSQE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781485496; c=relaxed/simple;
	bh=R2ycl9QhnYSUjK91R3xYK2Q1tAb2Ce8h0XOfR+YQzug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PdjAwPKkXSMiqpmLVmmwf1Ub4TB0LD3dUGt2BLzDXwAmo6QnAZIX8QUu6k8ddXA0QRj6XVBh6Xt51G8NDlE7i6vZTHNE+lCQJxLYQ0lEIr2OrxPuTaMmCL0kMCGGVbKCTsW1oPwWzVE528eEdZwQb+X7pFkZYLKRcQwEUq6lxtA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nQnNStKa; arc=pass smtp.client-ip=209.85.218.48
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-bec405a6ea5so368109566b.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 18:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781485492; cv=none;
        d=google.com; s=arc-20240605;
        b=JsxZJ0VFn3YvqlyBiw3ywmg/z11gYP9nqfTaQF7XSf3hD5HvGDCP9kDMoLAM5Nk1/C
         uK+p28oWo9Jx4fdTtiiv7wCeKoYKBHRCtOlzao2Fr1tb6QnYAvIC3RQR06t8jwahLP0s
         PaToLiZOtrI0O6BESu68vLCm8ePV/IUW1yDk9NSdbYIsNszPkj0yin81iUqSiTtE/WCV
         9vCzJvSJCpl/xKmUpEVIa8jOixZ1yk1UPPZGxhjB1Dcds4Qgfe03AexlRmyQcFDriAwB
         0BR8re8bwu8asAgc4UbfugzXEaTUNLCL0jVNxhl0Eb+fxA8RRvMMf4ayW504YK50Pz2v
         RxLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wQSOOV+DBTiCCEtastW35rFQgcJIi8WkjbxM6bIBd6s=;
        fh=Cj6Z64pJ+2O6tVOkYwhCoNfMszzM5R0wHxV5srV/2eg=;
        b=QcSGgrGpopFvvK6ypcTx52Q1mTEO/mrIDgs1VtUC6P05od2MFhvkz2dP+w9tLv0nRd
         /9OY09OOYBIzpurfxYPLFdHFnFxxcpbYo15IGUqizT5gGivn559Fj90ITv0Z9iEzsshR
         7xazT33XmgA6Kt1JUwNmM1gakk3GXbPoaNCLbgT14DF0o1Y7ZoiLxubdGufLSdaJkvu1
         P5PXwssXgsOt50pxyjQkWJJhFnAp//BvUd5MDP/N5YwYA/SFSkTqh/O6QX6bUmufp2Bb
         4Fu9f9J30b97GH+Do1MZN26xThQBkIT+QKTQtg717dadgKt2PPvQyk+lSe4Ndwgnnlk0
         88DQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781485492; x=1782090292; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQSOOV+DBTiCCEtastW35rFQgcJIi8WkjbxM6bIBd6s=;
        b=nQnNStKat8O5PFdQJu/FdBnZU1DzxV3pE17Al6Ok8Vn8wDC3aqS5lb2u2vIe93Fonl
         scLZ8MwMxQ0xRi/QlXFHylaqQUBmo4tFTkddDG01XekCzTxwPBGGzvdphA3oN2sVlc1L
         arHlFGZ4kLZZWhW0deoAdVb/lDcjf80aEe3QKznASOxtQRwJnXsMH2fTi2Zd8EryzIFS
         3N8k6VVqe6YuTTMNsZkuQ0ASu16XvxJBxiQbq/gZt0/4IxEUxTk2yhgKE79Jj2LDjgIj
         8o+uMPiRIl6cTyMxyczBwev12eHm4tV+MqggSCAkwjG1rjFhetJ71pW1HZrFgX29vSes
         tR+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781485492; x=1782090292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wQSOOV+DBTiCCEtastW35rFQgcJIi8WkjbxM6bIBd6s=;
        b=sjizcqajOiYMabuqv3Z6DlGna5Jmk1i+Px+rUVN3HO/vz/6PB7jg/dxml1srZC49GH
         yXBcbuYs55c9wrpandXaWgDrfUtsYIQuuSbh/TxJvyx3BsVYXGkxDrXKpykspX7UjPf8
         E1iLIisA/p2MkCgwp90Jbw7V3qcv3/ZJKvunVUD7LxDW2Jvk859KNad3tsd00BFMMAMP
         th3K0qML5eKpNrddZvQ8M5Sk8/8x8ELKYfdBtyChkqt4EI30WUJwaOthKeQPM2/qKGg2
         33CpDpwq4FVO3/jl0w2KjVM5Irehz6/nT6iWeN5SCUZe/hVJfkymad3sXje8UovzLDDG
         hiEQ==
X-Forwarded-Encrypted: i=1; AFNElJ+eXDLC6wbine3bDIZ8mnrw7BDu1MaBZXV9gWhiwXVP9UjbUYkT5svvJH4CDVmh8QaQ8N1FxhQEAWa1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4vQDyRvhp3bpOmjHhzgL6jy/4f5VjfuuxcmZHrlvUDHwkiYW2
	oOf8J/siYPPDAcswr4CDUOtpiBxMKU2cvw5pcd5z0BeN4QQ2dj4GkU3LlbQDNufq9U3ZGwYJe7a
	dwsmrU6gDwTNsHQKAJl3Rn+FXQAjtEfY=
X-Gm-Gg: Acq92OFYfnnMuqaxpetS/InSrT0hoeYTDTvMCNpChdiyql2zuEdlAqqEKNCFduZuTKr
	Frib2xgemW9Sdg8+9v+y1Yup1eesuVWQS7D71sgWa5pBZjro3wLGYCBRvQtn6NEiJ70wDcENal0
	hq4MqkYbHHRxcZro/EadC8dkjpzxJg2c/1DQfVghqaWOZQu6TPC1eTSLWicNKtm34mocUYn8oJp
	crZduEJzga8s77PB9bIzVFYS5B4wM6GHbks0MRs7IK67oXoRaOzTdGrZzrdLh7MZR2xoK3NW5a0
	tn0U5Ky+
X-Received: by 2002:a17:907:6895:b0:bed:2a8b:3e72 with SMTP id
 a640c23a62f3a-c006c665bf4mr175509566b.21.1781485491299; Sun, 14 Jun 2026
 18:04:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1780538113.git.zhoubinbin@loongson.cn> <c03b86a9318cffe69ecf8d5c14543fc5948ab2c7.1780538113.git.zhoubinbin@loongson.cn>
 <20260612160134.GA1116138-robh@kernel.org>
In-Reply-To: <20260612160134.GA1116138-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 15 Jun 2026 09:04:38 +0800
X-Gm-Features: AVVi8CehLy42LEJgG2i99cMYFG50MlGhaNfJeJz81YaHZrK9mKFknfitnhAJSIc
Message-ID: <CAMpQs4LUs2g=_QvJ14NQD1KAEwvKgjNmdj6B-3odnqJNxEUcQQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] ASoC: dt-bindings: loongson,ls-audio-card: Add
 ATK-DL2K0300B compatible
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:zhoubinbin@loongson.cn,m:chenhuacai@loongson.cn,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-sound@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311546-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[loongson.cn,kernel.org,gmail.com,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 718D5682AE4

Hi Rob:

Thanks for your review.

On Sat, Jun 13, 2026 at 12:01=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Thu, Jun 04, 2026 at 10:11:46AM +0800, Binbin Zhou wrote:
> > Add new compatible for the ATK-DL2K0300B development board based on
> > Loongson-2K0300.
> >
> > Unlike others, this board features GPIO-controlled headphone detection,
> > headphone mute, and speaker enable.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../sound/loongson,ls-audio-card.yaml         | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/loongson,ls-audio-=
card.yaml b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.=
yaml
> > index 8c214e5d04b1..e9b248e8246c 100644
> > --- a/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.ya=
ml
> > +++ b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.ya=
ml
> > @@ -23,6 +23,7 @@ properties:
> >      enum:
> >        - loongson,ls-audio-card  # Loongson-2K1000/Loongson-2K2000/LS7A
> >        - loongson,ls2k0300-forever-pi-audio-card # CTCISZ Forever Pi
> > +      - loongson,ls2k0300-dl2k0300b-audio-card # ATK-DL2K0300B
> >
> >    mclk-fs:
> >      $ref: simple-card.yaml#/definitions/mclk-fs
> > @@ -47,6 +48,18 @@ properties:
> >      required:
> >        - sound-dai
> >
> > +  loongson,spkr-en-gpios:
> > +    maxItems: 1
> > +    description: The GPIO that enables the speakers
> > +
> > +  loongson,hp-mute-gpios:
> > +    maxItems: 1
> > +    description: The GPIO that mutes the headphones
> > +
> > +  loongson,hp-det-gpios:
> > +    maxItems: 1
> > +    description: The GPIO that detect headphones are plugged in
>
> We have standard properties for at least this one. If you see multiple
> $vendor,foo-bar properties, don't add yet another vendor foo-bar
> property.

Yes, the `hp-det-gpios` property can be found in
`audio-graph-card2.yaml` or `audio-graph-card.yaml`, but I don't seem
to be able to reference it directly.
I=E2=80=99m not sure if I understood your suggestion correctly=E2=80=94to r=
emove the
`vendor` prefix? If so, could I use the `fsl sound card`[1] as a
reference?

Also, the description for `hp-mute-gpios` is inaccurate; it actually
controls the enable state of the hp. I will rename it to
`hp-ctl-gpios`, as follows:

  spkr-en-gpios:
    maxItems: 1
    description: The GPIO that enables the speakers

  hp-ctl-gpios:
    maxItems: 1
    description: The GPIO that controls the headphones

  hp-det-gpios:
    maxItems: 1
    description: The GPIO that detects when headphones are plugged in


[1]: https://elixir.bootlin.com/linux/v7.0/source/Documentation/devicetree/=
bindings/sound/fsl-asoc-card.yaml#L133
>
> Rob

--
Thanks.
Binbin

