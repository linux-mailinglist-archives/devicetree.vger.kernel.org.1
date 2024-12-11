Return-Path: <devicetree+bounces-129876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 135EE9ECF27
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60124284A82
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4404F1A0B08;
	Wed, 11 Dec 2024 14:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="164bPJkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995619CCF4
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 14:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733928963; cv=none; b=uZI+9FgIJW2+dV3HGykniuoBF/ybly6kwmykKnxM0iL4fMbU7EmUrOexrYggheNjzLAX3WGq64qYVqTUjlg/o/3NRVHF8A0c6dwZualYbpiyNews80hAsKLs9lKMn0MM4oIJUXQbMiB2DaF5lkPqGl9Bv5uCLXD5cBdGeD+vTaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733928963; c=relaxed/simple;
	bh=ATUj2bJFvo5C5S2zYXulScIPnI2xbVeC2u0ubVrhm+c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rA88C49Czk0Z2f7VN4vuNsBKSApqKA7epwAX/8wSUHVmjkQa4yXjW/upUR9mDZ7o5wkXtTkbyZBwvzVp3yjaIwqjStBTI8hW9llSufWROcZg7qPmruq2Qj0OyNYTOUmGy68AcK3Hl1jHD9jWY/5CSYstd0d5wYu2yG+gCcg6ZlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=164bPJkg; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so5506684f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733928960; x=1734533760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XThUHYt4xkilocRh01eWbIPooo7abgSa2QgbQ8ygms=;
        b=164bPJkgGfapWWVovjf8ZYnXlcLkB4hq0jAt5yuQkqByuvsAQQwDFtwNDjQhd+gLdC
         Vk7cQTShscOeyNOrdMMa/W/LGcWNsIsJk0RvpCw4ThAcr9Vl8KpkYPRelzWhB7c1UCI4
         H/NUH65z37NUKo/jL5ezsGFWBINhifwR6eDo424QuuHnRBHDFbtbfRJN5O7uNa8IKqKt
         PN+J1qe/DE5D230rf9k+1b5TmNOGyN+/warD2DnyDA7toBDdIQxPPhLhs22np6WO9OCj
         Ur6EXjrtdo7FsA+PvC00BxgFx8oPKWbtkGtJjwtcMvQW0tB2iEZGyggryIx068Va+609
         Dkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733928960; x=1734533760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1XThUHYt4xkilocRh01eWbIPooo7abgSa2QgbQ8ygms=;
        b=wf+Iav1FaXQ3qSUTi5omDzT4hX3/pjeQxiixW3BlbvzXv8E2GdHyqbqj4iD2Q3lLUt
         oKgd7gQLK2JMy5DLEPRtVM8/hmgY9Tg1btOCXPajTbPQgRzaR14Iw7FKcU2tV70Ollz+
         Ozm5J0Q94uqtFfVxKqfP8RriWRaA535frXMkHdeEaZ2qG2WjrwXgpCxyKqEPDG80ldof
         nAMWGJ63JgiNsMpuiSF32pWuigNXoCBcBDxXaBWWZFsMqoRPNt8BWe1YFSPlWddb4fiR
         eMuUaPINvyXRIAPHTGWnvO0DQ4nTJ/VKJseEpSXhce6FaOOmFJqN7/HZcLP/UM/8tOg8
         DoWQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+ZZDoPkqoGgkypvHxUP4nWb2e+5zuPPQe0/1PPpJYZYq5M4YZ/j696vA6myPsBcYAPSJM17fquY9+@vger.kernel.org
X-Gm-Message-State: AOJu0YxJVDDyhGJ3MIUY+R/rPbmVeyTXRQydgADr6Iy8amYR27L4IBmD
	Cie8APAO8rZUupiU1i+ACqp64vYoBIv9ZGMtChfUE2gj3cq5uk6K7rjFoPKPU5ApsYL6tb7RnX4
	9ZOSNPHsgt48qzJeYS9VAJ7Q2/TjxDZs2yJza
X-Gm-Gg: ASbGncsNvW24WvmMuCqU74t6wUohXtxE8hdlLlam4q/jL6/Reaj7lO9u6iA5LsUTXud
	jH49ajdA+hT+2PfbR+wEUjP/Y1Idxgtzny9dV8x+pAIfHE25bLtCpMyJfungLoM4Gtg==
X-Google-Smtp-Source: AGHT+IF+IxjUCKS9FoIBnI09UQpAcpzeHtr+dnMgHoNomsblteD6uNXKM4CPrETAOhewi3tOBnHz8zqPMsSE1z+bi+g=
X-Received: by 2002:a05:6000:144e:b0:385:f7ea:eb86 with SMTP id
 ffacd0b85a97d-3864ce869cbmr2570148f8f.7.1733928959695; Wed, 11 Dec 2024
 06:55:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <2024121111-acquire-jarring-71af@gregkh> <2024121128-mutt-twice-acda@gregkh>
 <2024121131-carnival-cash-8c5f@gregkh> <Z1mEAPlSXA9c282i@cassiopeiae>
 <Z1mG14DMoIzh6xtj@cassiopeiae> <2024121109-ample-retrain-bde0@gregkh>
 <Z1mUG8ruFkPhVZwj@cassiopeiae> <CAH5fLgh3rwS1sFmrhx3zCaSBbAJfhJTV_kbyCVX6BhvnBZ+cQA@mail.gmail.com>
 <Z1mh2rPC3ZOjg-pO@cassiopeiae> <CAH5fLgjg82x5EiWa1BTC7DpbhteBm5Or8XtpLAL0hQz+huXMCw@mail.gmail.com>
 <Z1mnFoap_AnPPNfu@cassiopeiae>
In-Reply-To: <Z1mnFoap_AnPPNfu@cassiopeiae>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 15:55:47 +0100
Message-ID: <CAH5fLgiyGjhpVDNkRHtYhk7jY0oJZmPYx3TJRnBvpt1H+-6Y-g@mail.gmail.com>
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

On Wed, Dec 11, 2024 at 3:52=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Dec 11, 2024 at 03:45:53PM +0100, Alice Ryhl wrote:
> > On Wed, Dec 11, 2024 at 3:29=E2=80=AFPM Danilo Krummrich <dakr@kernel.o=
rg> wrote:
> > >
> > > On Wed, Dec 11, 2024 at 02:34:54PM +0100, Alice Ryhl wrote:
> > > > On Wed, Dec 11, 2024 at 2:31=E2=80=AFPM Danilo Krummrich <dakr@kern=
el.org> wrote:
> > > > >
> > > > > On Wed, Dec 11, 2024 at 02:14:37PM +0100, Greg KH wrote:
> > > > > > On Wed, Dec 11, 2024 at 01:34:31PM +0100, Danilo Krummrich wrot=
e:
> > > > > > > On Wed, Dec 11, 2024 at 01:22:33PM +0100, Danilo Krummrich wr=
ote:
> > > > > > > > On Wed, Dec 11, 2024 at 12:05:10PM +0100, Greg KH wrote:
> > > > > > > > > On Wed, Dec 11, 2024 at 11:59:54AM +0100, Greg KH wrote:
> > > > > > > > > > On Wed, Dec 11, 2024 at 11:48:23AM +0100, Greg KH wrote=
:
> > > > > > > > > > > On Wed, Dec 11, 2024 at 11:45:20AM +0100, Greg KH wro=
te:
> > > > > > > > > > > > On Tue, Dec 10, 2024 at 11:46:28PM +0100, Danilo Kr=
ummrich wrote:
> > > > > > > > > > > > > In a subsequent patch we introduce the `Registrat=
ion` abstraction used
> > > > > > > > > > > > > to register driver structures. Some subsystems re=
quire the module name on
> > > > > > > > > > > > > driver registration (e.g. PCI in __pci_register_d=
river()), hence pass
> > > > > > > > > > > > > the module name to `Module::init`.
> > > > > > > > > > > >
> > > > > > > > > > > > Nit, we don't need the NAME of the PCI driver (well=
, we do like it, but
> > > > > > > > > > > > that's not the real thing), we want the pointer to =
the module structure
> > > > > > > > > > > > in the register_driver call.
> > > > > > > > > > > >
> > > > > > > > > > > > Does this provide for that?  I'm thinking it does, =
but it's not the
> > > > > > > > > > > > "name" that is the issue here.
> > > > > > > > > > >
> > > > > > > > > > > Wait, no, you really do want the name, don't you.  Yo=
u refer to
> > > > > > > > > > > "module.0" to get the module structure pointer (if I'=
m reading the code
> > > > > > > > > > > right), but as you have that pointer already, why can=
't you just use
> > > > > > > > > > > module->name there as well as you have a pointer to a=
 valid module
> > > > > > > > > > > structure that has the name already embedded in it.
> > > > > > > > > >
> > > > > > > > > > In digging further, it's used by the pci code to call i=
nto lower layers,
> > > > > > > > > > but why it's using a different string other than the mo=
dule name string
> > > > > > > > > > is beyond me.  Looks like this goes way back before git=
 was around, and
> > > > > > > > > > odds are it's my fault for something I wrote a long tim=
e ago.
> > > > > > > > > >
> > > > > > > > > > I'll see if I can just change the driver core to not ne=
ed a name at all,
> > > > > > > > > > and pull it from the module which would make all of thi=
s go away in the
> > > > > > > > > > end.  Odds are something will break but who knows...
> > > > > > > > >
> > > > > > > > > Nope, things break, the "name" is there to handle built-i=
n modules (as
> > > > > > > > > the module pointer will be NULL.)
> > > > > > > > >
> > > > > > > > > So what you really want is not the module->name (as I don=
't think that
> > > > > > > > > will be set), but you want KBUILD_MODNAME which the build=
 system sets.
> > > > > > > >
> > > > > > > > That's correct, and the reason why I pass through this name=
 argument.
> > > > > > > >
> > > > > > > > Sorry I wasn't able to reply earlier to save you some time.
> > > > > > > >
> > > > > > > > > You shouldn't need to pass the name through all of the su=
bsystems here,
> > > > > > > > > just rely on the build system instead.
> > > > > > > > >
> > > > > > > > > Or does the Rust side not have KBUILD_MODNAME?
> > > > > > > >
> > > > > > > > AFAIK, it doesn't (or didn't have at the time I wrote the p=
atch).
> > > > > > > >
> > > > > > > > @Miguel: Can we access KBUILD_MODNAME conveniently?
> > > > > > >
> > > > > > > Actually, I now remember there was another reason why I pass =
it through in
> > > > > > > `Module::init`.
> > > > > > >
> > > > > > > Even if we had env!(KBUILD_MODNAME) already, I'd want to use =
it from the bus
> > > > > > > abstraction code, e.g. rust/kernel/pci.rs. But since this is =
generic code, it
> > > > > > > won't get the KBUILD_MODNAME from the module that is using th=
e bus abstraction.
> > > > > >
> > > > > > Rust can't do that in a macro somehow that all pci rust drivers=
 can pull
> > > > > > from?
> > > > >
> > > > > The problem is that register / unregister is encapsulated within =
methods of the
> > > > > abstraction types. So the C macro trick (while generally possible=
) isn't
> > > > > applicable.
> > > > >
> > > > > I think we could avoid having an additional `name` parameter in `=
Module::init`,
> > > > > but it would still need to be the driver resolving `env!(KBUILD_M=
ODNAME)`
> > > > > passing it into the bus abstraction.
> > > > >
> > > > > However, similar to what Alice suggested in another thread, we co=
uld include
> > > > > this step in the `module_*_driver!` macros.
> > > > >
> > > > > Modules that don't use this convenience macro would need to do it=
 by hand
> > > > > though. But that's probably not that big a deal.
> > > >
> > > > I think we can do it in the core `module!` macro that everyone has =
to use.
> > >
> > > How? The `module!` macro does not know about the registration instanc=
es within
> > > the module structure.
> >
> > You could have the module! macro emit something along these lines:
> >
> > impl ModuleName for {type_} {
> >     const NAME: &'static CStr =3D c_str!(env!("KBUILD_MODNAME"));
> > }
> >
> > Then you can do `<Self as ModuleName>::NAME` to obtain the name elsewhe=
re.
>
> Where {type_} would need to be the driver's `Driver` structure?
>
> We'd then need to define the bus adapter as:
>
> `pub struct Adapter<T: Driver + ModuleName>(T)`
>
> But the question stands I guess, how would the module macro know {type_}?

If you look at the macro implementation in rust/macros/module.rs you
will find many uses of {type_} throughout the expansion. It's whatever
is passed to the macro using the `type:` argument.


Alice

