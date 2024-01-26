Return-Path: <devicetree+bounces-35332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE10E83D1B6
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 01:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 568541F25F19
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 00:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685531115;
	Fri, 26 Jan 2024 00:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="we/6uKVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8C810EB
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706230268; cv=none; b=KU1KaLP/0zyLeaP+qpZASpNoSqEOl1LrAxnveF28ntnP3WOtx6hpzmjRigUg7DiD3CYxZbfJGTWoJ9ZDsHJZMoROxGfVUveaseat+uGfbV6nPml8p8cdRF5e/p4zCb1WoaFCIR8MpBqLHBW9+iMGE2EHmvCWavK5W119b4D72FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706230268; c=relaxed/simple;
	bh=3hzi1rZi2tQP43rLfSb7yu0BJordPNUdNKQrG/kGFKQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mbjEndu3w3z9feDM35sFHzgFZr6cXf+29h83CqNi5DWDlEGI5WG4tIhYu8VHfPcxhWy27rdL0jl9yrBEQ8Lt4Ys++IHhglsfQEGPTSU4YPGENqjKLbSxA7G9Z1Ak1ToZgQvbtM8oYMJeNkIZPj6WHywihBij1sFVl4FJHZyLfnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=we/6uKVz; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-428405a0205so7821cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706230265; x=1706835065; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hzi1rZi2tQP43rLfSb7yu0BJordPNUdNKQrG/kGFKQ=;
        b=we/6uKVz4krmgRKBJKuzzQY/xlhwDSWf06qBOKksP+TfBAKHg/0FSxerUFf6F7Jwnd
         ic/l8JxwQz2oe8pFcQ1xHUNcPwHUM8pufIUDae3oCGEH8vT+pcD23YoEOdBgPcQyBFUF
         HuRVnCCFMndAXnaFPFVyvgZGXs+msF/k90ZaLTdor4GYrLww6upVjpJQVnXzzIzzJ1Di
         SK7xiMPEI667O9LDddatZCxjytwHONZRWB9RB/JpF2qg7GMGYfV2B45G8mGZaBaBkjSM
         dCZQz20Vg1NuhP1+Gr55tc22IAfdBB9zQv10MRoRizPLoaVS7k6VtGBvnZLqxAYweBTz
         XYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706230265; x=1706835065;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3hzi1rZi2tQP43rLfSb7yu0BJordPNUdNKQrG/kGFKQ=;
        b=JVBpVqcARdCk7wngLQF+HU2vIfH7cCqrNgzdeGtfET1G521HWw/JGzjKQVxMzIOexC
         LhZHLN+kUZLfEjnSaeBEjzAUnxooeuXGoL2xq4Au+00oXU8AgaxNGY6LjMSAGnSF9mm0
         9fIUf5L7tq7VQtfssBEUiYh697uZAqZjeg+PjK3hnKC5Zs2rUioKo/vwPJje3qM4oPps
         unx5uxQ9O4f4D6mcYj9Prn3KVsnBvyP1X6BLsAjL8ghlMjR4XdtqYlqHhZwCs97a0CFn
         hUkH+PhvtGE6X4bQXAf2Otg6s9RCr/WR6eCjCKLdVh4RYRleQAX5RRuZ9EPoi+HCCZpj
         WxQg==
X-Gm-Message-State: AOJu0Yyi6OUwp3oHZrLBbWucPMq9YrVBJB3bpGPsxOid2D/9GCp20LTf
	9r2ufr7cAUt54rVsDz4PiDnVxX6OuV7yfgB3t2Lsyzkqa3gDjSa6/A9eTM/X1lGTYdfCc9hUwd6
	tnPy79+EoN6m5Bu+vO3JkBNM5j4aBFfU+kjzWsaPVrpKwhPBRL56P+T4=
X-Google-Smtp-Source: AGHT+IFy6o1mDT4NWf5H7Etav2wtD4Yu8JEUvCWVFRoQoh8H/mJC1tsZUOApedwd8q58FO26zlxY7NMlWt1cifjtWu0=
X-Received: by 2002:ac8:5986:0:b0:42a:75ec:4ad4 with SMTP id
 e6-20020ac85986000000b0042a75ec4ad4mr54712qte.3.1706230265438; Thu, 25 Jan
 2024 16:51:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123-iio-backend-v7-0-1bff236b8693@analog.com>
 <20240123-iio-backend-v7-4-1bff236b8693@analog.com> <CAGETcx8_0ExTG4ASb9xK-uwmubMFDx44_wUf1h3VsO8w9jJApQ@mail.gmail.com>
 <8eae083af481441d83df02a1880e2aedf99efdfb.camel@gmail.com>
In-Reply-To: <8eae083af481441d83df02a1880e2aedf99efdfb.camel@gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 25 Jan 2024 16:50:27 -0800
Message-ID: <CAGETcx_ScsW4gKpAK01dHYxB3XGs-pRjJQMygbZUNAdxV6BqtA@mail.gmail.com>
Subject: Re: [PATCH v7 4/9] driver: core: allow modifying device_links flags
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: nuno.sa@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 12:11=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.co=
m> wrote:
>
>
> Hi Saravana,
>
> Thanks for your feedback,
>
> On Wed, 2024-01-24 at 19:21 -0800, Saravana Kannan wrote:
> > On Tue, Jan 23, 2024 at 7:14=E2=80=AFAM Nuno Sa via B4 Relay
> > <devnull+nuno.sa.analog.com@kernel.org> wrote:
> > >
> > > From: Nuno Sa <nuno.sa@analog.com>
> > >
> > > If a device_link is previously created (eg: via
> > > fw_devlink_create_devlink()) before the supplier + consumer are both
> > > present and bound to their respective drivers, there's no way to set
> > > DL_FLAG_AUTOREMOVE_CONSUMER anymore while one can still set
> > > DL_FLAG_AUTOREMOVE_SUPPLIER. Hence, rework the flags checks to allow
> > > for DL_FLAG_AUTOREMOVE_CONSUMER in the same way
> > > DL_FLAG_AUTOREMOVE_SUPPLIER is done.
> >
> > Curious, why do you want to set DL_FLAG_AUTOREMOVE_CONSUMER?
> > Especially if fw_devlink already created the link? You are effectively
> > trying to delete the link fw_devlink created if any of your devices
> > unbind.
> >
>
> Well, this is still useful in the modules case as the link will be relaxe=
d after
> all devices are initialized and that will already clear AUTOPROBE_CONSUME=
R
> AFAIU. But, more importantly, if I'm not missing anything, in [1], fw_dev=
links
> will be dropped after the consumer + supplier are bound which means I def=
initely
> want to create a link between my consumer and supplier.
>
> FWIW, I was misunderstanding things since I thought DL_FLAG_AUTOREMOVE_CO=
NSUMER
> was needed to make sure the consumer is unbound before the supplier. But =
for
> that I think I can even pass 0 in the flags as I only need the link to be
> MANAGED. Still, I think having DL_FLAG_AUTOREMOVE_CONSUMER makes sense.

As you noticed, your understanding of DL_FLAG_AUTOREMOVE_CONSUMER is
not correct. There's almost never a good reason to drop a device link.
Even when a device/driver are unbound, we still want future probe
attempts to make use of the dependency info and block a device from
probing if the supplier hasn't probed.

If you don't want the links created by fw_devlink to be relaxed, I
think you should instead set the kernel command line param so that the
kernel doesn't time out and give up on enforcing dependencies.
deferred_probe_timeout=3D-1

Then you don't have to worry about creating device links.

> Also note that there are more places in the kernel with
> DL_FLAG_AUTOREMOVE_CONSUMER and that flag is likely being ignored in case=
 the
> link already exists.
>
> I'm also clearing DL_FLAG_AUTOPROBE_CONSUMER as from the first check in
> device_link_add(() check I realize that we can't/shouldn't have it togeth=
er with
> one of AUTOREMOVE_CONSUMER | AUTOREMOVE_SUPPLIER, right? At this point,
> AUTOPROBE_CONSUMER is also likely not that useful anymore as both supplie=
r and
> consumer are up and I guess that's the typical case for subsystems/driver=
s to
> call device_link_add().
>
> And since I have your attention, it would be nice if you could look in an=
other
> sensible patch [2] that I've resended 3 times already. You're not in CC b=
ut I
> see you've done quite some work in dev_links so... Completely unrelated I=
 know
> :)

Regarding [2], I'll try.

-Saravana

>
> [1]: https://elixir.bootlin.com/linux/latest/source/drivers/base/core.c#L=
1292
> [2]: https://lore.kernel.org/all/20231213-fix-device-links-overlays-v1-1-=
f091b213777c@analog.com/#t
>
> - Nuno S=C3=A1
> >
>

