Return-Path: <devicetree+bounces-247073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1F3CC489E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01B3730A7026
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 761B12D130B;
	Tue, 16 Dec 2025 14:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFPZhhjM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D342C21FE
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765896837; cv=none; b=Wa97Q2LJLwkAN7C91I/Ck7hd+DbNfXnpBtKasNo2nD1I5CBfhnpow0/GqSXwlCDlZ8cwkkHE/5mEo9XSxC4XJ6WWTMXPjFHT1U96EjOxCAprFx5IERrdq91xjyzXezBL7nNq2e6TFDmXgsLxo9aPivsfloDSRdTWeLyyRs0piDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765896837; c=relaxed/simple;
	bh=Kl+onku5no/WmynEQoKSuP0W4cm6jHo5D2X9QZ9Kk0E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AIUEre/VWzZearA7TPngKPaac5miY+lcmp2OC9lJENFSycNae9bJ5dixlC7u4fJH0ypB2IEMjrEaHPmsF3wd/0a9MTLd3x25XC8w3uGb7LCe5HQlwNOcAENv7Ob24d3kYlabxHnvtVzF6T6hAVafZfYWEZ3vaG6oA/M2ci+y704=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFPZhhjM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 009DAC4AF09
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765896837;
	bh=Kl+onku5no/WmynEQoKSuP0W4cm6jHo5D2X9QZ9Kk0E=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IFPZhhjMMllIasNrmS/17Vqi6qNrYROwEryiSuQCH8keMqfo7NyqQFby2m4gPR9le
	 fvovV2pkPCpmN8hZSzVlbYZ3oTvd0l6bLzEMk0lbUZHCIG7t0kN2F2kUlaDzJWV3KG
	 Kn5UqAxUR5c1QQK6Tc5sl0pqUwIkSIDuF3/srFc6qQ7h08CHmlI0VbXMGwkbOdxC3r
	 8BW56vEAo/Jdz5jvosL5yBKviEJ4Fq7uR+V7XBRlQMDe02kcff96ZHF2z/WhyJjvVc
	 3DG388Lyr5UA4BISLAb77KwkO8VL8wgfP3fbd18kWahAFxQLIgomhSfSi4yxGMHTAC
	 mHRBE04aIFIsw==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37b9d8122fdso35937511fa.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:53:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXP0qFUKkAF5Iu50caDyoOG8+obYAc46nw5v6VCWNvVpM0Rm40NiXs/0E1DNSJWDY7KYe5vfADYgi3v@vger.kernel.org
X-Gm-Message-State: AOJu0YyRqsQaNzhlx/8UQmCmzAH/E0DJtBv7gfgM0wuR6Tg5wXyEzn1G
	0j5A1Ipa6f8Zyw4A7/ncDxp5v6Dsh5TC+DbYdbJ/v4nWDdoqBWkELrM6WdzX/Jf/gB6m3V+tWQa
	RyTYC8D8WOLcMVoIp9FcKnI2IA5TE98slHQdaZYdWFw==
X-Google-Smtp-Source: AGHT+IFoE85phID4GRR8LIVRUmaHQhPD23Tmx9XnC97Lw7bJuR4eSOyaZcJlwVGxrEXqhUUTKfxUDXI3M5dMldrFCIA=
X-Received: by 2002:a2e:a7cf:0:b0:37f:ff9b:ed87 with SMTP id
 38308e7fff4ca-37fff9bfa5amr13894061fa.17.1765896835635; Tue, 16 Dec 2025
 06:53:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com>
 <20251215192854.GA3162398-robh@kernel.org> <CAMRc=Mcc90MGUOty98iCOXD94U=T79bq3u9R2oGTD_fZED=NVg@mail.gmail.com>
 <CAL_JsqLK84jg4O0QdZ8zDTniqL5ehmTy9YEm0D3qHyHf00tkug@mail.gmail.com>
In-Reply-To: <CAL_JsqLK84jg4O0QdZ8zDTniqL5ehmTy9YEm0D3qHyHf00tkug@mail.gmail.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 16 Dec 2025 15:53:43 +0100
X-Gmail-Original-Message-ID: <CAMRc=MeZJFOrEEzWDHntC8rqpDLxjwjNic9+BiVJedJuLgPpoQ@mail.gmail.com>
X-Gm-Features: AQt7F2paacuvqil1Bk58wHnvwaHTj_06iDnlNEiBfd7H5d7My6VkR4i3VWyNx8Q
Message-ID: <CAMRc=MeZJFOrEEzWDHntC8rqpDLxjwjNic9+BiVJedJuLgPpoQ@mail.gmail.com>
Subject: Re: [PATCH] of: replace strcmp_suffix() with strends()
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 1:58=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Dec 16, 2025 at 1:45=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> >
> > On Mon, Dec 15, 2025 at 8:44=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Mon, Dec 15, 2025 at 04:48:09PM +0100, Bartosz Golaszewski wrote:
> > > > string.h now provides strends() which fulfills the same role as the
> > > > locally implemented strcmp_suffix(). Use it in of/property.c.
> > > >
> > > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcom=
m.com>
> > > > ---
> > > > @@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cell=
s")
> > > >  static struct device_node *parse_gpios(struct device_node *np,
> > > >                                      const char *prop_name, int ind=
ex)
> > > >  {
> > > > -     if (!strcmp_suffix(prop_name, ",nr-gpios"))
> > > > +     if (!strends(prop_name, ",nr-gpios"))
> > >
> > > Don't you need to negate these?
> > >
> >
> > I'm not following, am I not negating this?
>
> strcmp() returns 0 on match. strends() returns True on match.
>

Right, I was under the impression strcmp_suffix() had the same
semantics as strends().

Will send v2.

Bart

