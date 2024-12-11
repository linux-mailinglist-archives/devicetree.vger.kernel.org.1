Return-Path: <devicetree+bounces-129871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3519ECEED
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0790D162D5F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D00187870;
	Wed, 11 Dec 2024 14:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Rq/PSI3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE73246352
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 14:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733928371; cv=none; b=OtR3rq3JPAPCAomQnP/NEkvyTxk98beJTVkkNsBBjFSpubc2xE8PqJE6H1afc/r/pJzZ4eMuySTg9P4jUzFwkWqpCitYXhUHQp2UzD+pbHeK+csg5d0BmSJKTcGpcDd/z/V4MXeKKy7ljFgHQU1OuZSHls2mppvTdvURJ7h8hAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733928371; c=relaxed/simple;
	bh=hQXNzo3YYXIGb+U0LwiMJsQWn00dDZC3pOaGkXS6WV4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yks4AZg113Ok0QYAC8TBmU6nuFMzafuHkri4MmK4X/Kq6P5Q8o4yfcca6tMHAkVSfEHw1s2s0C3gAPEaBwHRK1mdyej9QzGalZsX1m/lZm/U2b//fDGWzb+P0bAcHe/TbhI+KTEcA9zXMPW7rtOmirsJnMlEpuEvdu1kYn8taHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Rq/PSI3n; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3862df95f92so3459726f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733928368; x=1734533168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIM3tjvqjBXsdeMXPCxUx4fKCuQFSNEkzfrtEz+uAQE=;
        b=Rq/PSI3nwvgvZN25l+vQb3+v4axdiTYwUuXPJREGE6+6g/4MJmul3p190MwmfjPfav
         xwt6KND6iiLyfp+eB5ebvlTXaxViTDpvD6fXsqz2XInUajmrQ3OBwxh97VLi6kWI/ACs
         8fbKnVmUvtSI6miNpV476KR+NsEVReT2Dcw79EOw9KW6JYULe8PJNYJjGn9tJKYE1go5
         kQEr2GsBU44anYRLx5BBB22YN1DikpS6pEX1a4L74V4uwt6hE1sFEi0EYalPkgw1LGrA
         pBMhjCHsY2S459RnJUPGtpBIUJvJp25CCQkqcSG6ogRrfkhbsV7gK350EGwxWAbmRowV
         J28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733928368; x=1734533168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIM3tjvqjBXsdeMXPCxUx4fKCuQFSNEkzfrtEz+uAQE=;
        b=lQBtvEEhNHibeEetN994KYa7P1CFksX0gQU/UFDYMwytcQ8P1lBIdGUABEgjggAp8f
         QebqNHk8kWVNyO/F8/LqTv/ep66SlDUG1+D5jU7OnF97bYXEJX12xKujvihVaC456fQg
         XKAWe5oZEiLgkDJzBYaTWiTAm6veDwI04SPe9PrslTWnAwlA5RCB+X1bBQGTqZTSDN9r
         0hVJpFoOxiBBYvBRE0pq3dbwNoNlYceN+erd4cZ+UQjrOosJHMAPSRK6RY5VqWsv7Csy
         aJzJQu6Z4OvQH++ddUYV72+V0qNkPmj+ub8Zo7xrescrL+f5cY4/VnoYFK+fDjteI9Fz
         av3A==
X-Forwarded-Encrypted: i=1; AJvYcCXsFGq4pW/+GM1L35ezTNiX8rpi1BC6jKrX1ks+fq4Lnb6IQCgt8bDi3wqYlyw8x+BgozXfgtBs1cN/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzig3cTieQFnvaSHrtKGr7Mp1v+Xxc6yP019Jui5TDaeoLNzU9W
	up0I1Sxe5ySBHTakiCFXFibIElb6PeUFc32Hdum81KbMJsHK15pJ3NR7mMEkono8x2ydi27hhCG
	1xqQTQw1WwPtIsjYb9eoiSFZf1XOVNTIOtYX4
X-Gm-Gg: ASbGncszEoYe04362bfX17qOIJnomIsn6xe8I0bFy6lnPa59YkPz8tTga8zkJbwnLFS
	fCp0vw0RQYsCCZLzh++Qu/6/09hQUD9E2CtHXPAGqGpylXt+coOgi3zOJ1EyEYfxqvg==
X-Google-Smtp-Source: AGHT+IHCVQlnpKeO+7li6U9/tvmg7UYB+zAluD5gIYTSG7lO5NmS1Ncyz+GySvI5UHOLsyPseBu7ol909J7MBfzKkUU=
X-Received: by 2002:a5d:64a1:0:b0:385:ed1e:2105 with SMTP id
 ffacd0b85a97d-3864ce5f9b2mr2891188f8f.26.1733928367647; Wed, 11 Dec 2024
 06:46:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210224947.23804-2-dakr@kernel.org> <2024121112-gala-skincare-c85e@gregkh>
 <2024121111-acquire-jarring-71af@gregkh> <2024121128-mutt-twice-acda@gregkh>
 <2024121131-carnival-cash-8c5f@gregkh> <Z1mEAPlSXA9c282i@cassiopeiae>
 <Z1mG14DMoIzh6xtj@cassiopeiae> <2024121109-ample-retrain-bde0@gregkh>
 <Z1mUG8ruFkPhVZwj@cassiopeiae> <CAH5fLgh3rwS1sFmrhx3zCaSBbAJfhJTV_kbyCVX6BhvnBZ+cQA@mail.gmail.com>
 <Z1mh2rPC3ZOjg-pO@cassiopeiae>
In-Reply-To: <Z1mh2rPC3ZOjg-pO@cassiopeiae>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 15:45:53 +0100
Message-ID: <CAH5fLgjg82x5EiWa1BTC7DpbhteBm5Or8XtpLAL0hQz+huXMCw@mail.gmail.com>
Subject: Re: [PATCH v5 01/16] rust: pass module name to `Module::init`
To: Danilo Krummrich <dakr@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2024 at 3:29=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Dec 11, 2024 at 02:34:54PM +0100, Alice Ryhl wrote:
> > On Wed, Dec 11, 2024 at 2:31=E2=80=AFPM Danilo Krummrich <dakr@kernel.o=
rg> wrote:
> > >
> > > On Wed, Dec 11, 2024 at 02:14:37PM +0100, Greg KH wrote:
> > > > On Wed, Dec 11, 2024 at 01:34:31PM +0100, Danilo Krummrich wrote:
> > > > > On Wed, Dec 11, 2024 at 01:22:33PM +0100, Danilo Krummrich wrote:
> > > > > > On Wed, Dec 11, 2024 at 12:05:10PM +0100, Greg KH wrote:
> > > > > > > On Wed, Dec 11, 2024 at 11:59:54AM +0100, Greg KH wrote:
> > > > > > > > On Wed, Dec 11, 2024 at 11:48:23AM +0100, Greg KH wrote:
> > > > > > > > > On Wed, Dec 11, 2024 at 11:45:20AM +0100, Greg KH wrote:
> > > > > > > > > > On Tue, Dec 10, 2024 at 11:46:28PM +0100, Danilo Krummr=
ich wrote:
> > > > > > > > > > > In a subsequent patch we introduce the `Registration`=
 abstraction used
> > > > > > > > > > > to register driver structures. Some subsystems requir=
e the module name on
> > > > > > > > > > > driver registration (e.g. PCI in __pci_register_drive=
r()), hence pass
> > > > > > > > > > > the module name to `Module::init`.
> > > > > > > > > >
> > > > > > > > > > Nit, we don't need the NAME of the PCI driver (well, we=
 do like it, but
> > > > > > > > > > that's not the real thing), we want the pointer to the =
module structure
> > > > > > > > > > in the register_driver call.
> > > > > > > > > >
> > > > > > > > > > Does this provide for that?  I'm thinking it does, but =
it's not the
> > > > > > > > > > "name" that is the issue here.
> > > > > > > > >
> > > > > > > > > Wait, no, you really do want the name, don't you.  You re=
fer to
> > > > > > > > > "module.0" to get the module structure pointer (if I'm re=
ading the code
> > > > > > > > > right), but as you have that pointer already, why can't y=
ou just use
> > > > > > > > > module->name there as well as you have a pointer to a val=
id module
> > > > > > > > > structure that has the name already embedded in it.
> > > > > > > >
> > > > > > > > In digging further, it's used by the pci code to call into =
lower layers,
> > > > > > > > but why it's using a different string other than the module=
 name string
> > > > > > > > is beyond me.  Looks like this goes way back before git was=
 around, and
> > > > > > > > odds are it's my fault for something I wrote a long time ag=
o.
> > > > > > > >
> > > > > > > > I'll see if I can just change the driver core to not need a=
 name at all,
> > > > > > > > and pull it from the module which would make all of this go=
 away in the
> > > > > > > > end.  Odds are something will break but who knows...
> > > > > > >
> > > > > > > Nope, things break, the "name" is there to handle built-in mo=
dules (as
> > > > > > > the module pointer will be NULL.)
> > > > > > >
> > > > > > > So what you really want is not the module->name (as I don't t=
hink that
> > > > > > > will be set), but you want KBUILD_MODNAME which the build sys=
tem sets.
> > > > > >
> > > > > > That's correct, and the reason why I pass through this name arg=
ument.
> > > > > >
> > > > > > Sorry I wasn't able to reply earlier to save you some time.
> > > > > >
> > > > > > > You shouldn't need to pass the name through all of the subsys=
tems here,
> > > > > > > just rely on the build system instead.
> > > > > > >
> > > > > > > Or does the Rust side not have KBUILD_MODNAME?
> > > > > >
> > > > > > AFAIK, it doesn't (or didn't have at the time I wrote the patch=
).
> > > > > >
> > > > > > @Miguel: Can we access KBUILD_MODNAME conveniently?
> > > > >
> > > > > Actually, I now remember there was another reason why I pass it t=
hrough in
> > > > > `Module::init`.
> > > > >
> > > > > Even if we had env!(KBUILD_MODNAME) already, I'd want to use it f=
rom the bus
> > > > > abstraction code, e.g. rust/kernel/pci.rs. But since this is gene=
ric code, it
> > > > > won't get the KBUILD_MODNAME from the module that is using the bu=
s abstraction.
> > > >
> > > > Rust can't do that in a macro somehow that all pci rust drivers can=
 pull
> > > > from?
> > >
> > > The problem is that register / unregister is encapsulated within meth=
ods of the
> > > abstraction types. So the C macro trick (while generally possible) is=
n't
> > > applicable.
> > >
> > > I think we could avoid having an additional `name` parameter in `Modu=
le::init`,
> > > but it would still need to be the driver resolving `env!(KBUILD_MODNA=
ME)`
> > > passing it into the bus abstraction.
> > >
> > > However, similar to what Alice suggested in another thread, we could =
include
> > > this step in the `module_*_driver!` macros.
> > >
> > > Modules that don't use this convenience macro would need to do it by =
hand
> > > though. But that's probably not that big a deal.
> >
> > I think we can do it in the core `module!` macro that everyone has to u=
se.
>
> How? The `module!` macro does not know about the registration instances w=
ithin
> the module structure.

You could have the module! macro emit something along these lines:

impl ModuleName for {type_} {
    const NAME: &'static CStr =3D c_str!(env!("KBUILD_MODNAME"));
}

Then you can do `<Self as ModuleName>::NAME` to obtain the name elsewhere.

Alice

