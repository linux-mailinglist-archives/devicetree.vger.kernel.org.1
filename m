Return-Path: <devicetree+bounces-129870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EED59ECEE6
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3FBD18859BB
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC46919D88B;
	Wed, 11 Dec 2024 14:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hfMXNQ0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413AC185B4C
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 14:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733928264; cv=none; b=hPX9YCHGKzJ1P2AfL4aVsbOTuHLMGMCLKoVwlJ8ksPYiiPSiIZQRpErgk85a6VGbCkagIvgcAlyctLNjddpANzR1ORX2jYVAtYecSx0RYaDVi0GT2CQYfse2xQ4b+1+TPp9hiiYWf74AUEoTudwUusqDicljJrMm0FZDT/nqbDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733928264; c=relaxed/simple;
	bh=o4dtZ3I4++4HRe+Qi1IdeT9fyDM3ommz8s/pS/6mX/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=envUl2yDsVn9kd5tIOkbsW1HrRcAgx5Di23efSUhmXI45GJfl2QPmeXA5sLqgRXMfg67Q9CQnPh5+iIExKHrY3XfJEqrbgIdgfMt6U4Ngx4AV5tYYFxhoisX/WtnKsjXFx80QxF4eVo84sW56fPFFe1XDC+Yuqz+MNuSv3SRZio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hfMXNQ0a; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso5057765e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733928261; x=1734533061; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4dtZ3I4++4HRe+Qi1IdeT9fyDM3ommz8s/pS/6mX/Y=;
        b=hfMXNQ0azlbRqB+eOkv27dY26dXHZEVXMm96yYNQEBIY1uZfz6k3IhyTekZLNrzhf+
         tt4IlecKgxmvHDJTJuW8/WHdb92FZZGOYwQlh3NRasikCSh9+7h6+xG6In1TzIvFbnxF
         atUv20PE+dB+XrcTge/E8A5r2Z2w2Zlk4NeBvJxtyUB14zO57EGB16C5rUbN2WqDdLZ3
         qJ3BsxWR7F1kwynbx2580/ilRcA8mugXPLpvEZBAhyUFuRvS2OfxepElGXwrh1g8lCdQ
         17qzj5uLzpWsrqQaopdoq4AJWQhYE490iHtlRgLVm1UKRb1X6Ao+vof/vm2FXhJcfaxZ
         6LKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733928261; x=1734533061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4dtZ3I4++4HRe+Qi1IdeT9fyDM3ommz8s/pS/6mX/Y=;
        b=B1Eizrsia2BfZiLqfkzTP9HU3Eg5FF//ObIOOAY6gpR0d5nL/1xzZgA4s2sdXeeshk
         FHxKnWKXqfWcD81QzD+z9/fdMlS4G5KewoULcpVQirrYs+2uTR/YMGhwXMLnqOCPtJBg
         skqwxGiPX2a9EYQBoG4lKDKaEn2OSlZZR9jwjVHNLaI6Q33p9GHRAxagu8Eee5085QJt
         B3YQo9/gz6pKia5kGD3G+eNDaEdynM9bqdLvIEBlTna7FCWP3HcpHWVbkUc+6jrIQOlp
         rKOmAqHI6j6rvgQWGJgCQgdyW4+bjk9Vj+tu10EVBCZGexWKdEE60NPuRYDsFs9svlUP
         4FgA==
X-Forwarded-Encrypted: i=1; AJvYcCXPWDlAQLQaar6Wu2DwYBd9Fn4Edmxj22b1UyjLsTWSQzlpTqD01zjrj4yAVK6ElDnGQZupyeUKxZiu@vger.kernel.org
X-Gm-Message-State: AOJu0YyGHA5jxVKvpdK5/bMcxmaUIUPV2u4rQ3uQTZpQF3rGMHARCnq/
	ylq8lEDDNRK3/M+wVIdXbmPIgynu6G5hvljdPD06dAeyg0pWOgQ6nMkG21dY+dXHN7eTj4cR6DG
	xcR2zv4O3wFL/xxBV/oSfTqcFs++1GNg+4m94
X-Gm-Gg: ASbGnctz/puqQ/6eNfUWDEE6TLdpyLivU2bNnh+d4irvj1Tc1hBewN0tgNxJv3mj/O1
	dBwtCCYhzxFhX2BKUF104FM+lttG8Raz32jgOryqJJfbvCJqcYpt64uv88gZGl1inDQ==
X-Google-Smtp-Source: AGHT+IF1Q4xI/J9HWTvNdMoBulSeGhZD2fHXeX+ZiLhQ0oCPOrSMYhTnFaag5cAKAMEuEzK0Jrm/373HpSaoFjzPukE=
X-Received: by 2002:a05:6000:178b:b0:385:faaa:9d1d with SMTP id
 ffacd0b85a97d-3864cea04aamr2980508f8f.35.1733928260519; Wed, 11 Dec 2024
 06:44:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241205141533.111830-1-dakr@kernel.org> <20241205141533.111830-9-dakr@kernel.org>
 <CAH5fLgh6qgQ=SBn17biSRbqO8pNtSEq=5fDY3iuGzbuf2Aqjeg@mail.gmail.com>
 <Z1bKA5efDYxd8sTC@pollux.localdomain> <CAH5fLgixvBWSf-3WDRj=Mxtn4ArQLqdKqMF0aSxyC6xVNPfTFQ@mail.gmail.com>
 <Z1jC7NnmwidLPT9Z@pollux> <CAH5fLgg=fvQOVL-FH72BFtv-5r_e35=esNir9itG_29am_5Sng@mail.gmail.com>
 <Z1midaMMA1xBgBrg@cassiopeiae>
In-Reply-To: <Z1midaMMA1xBgBrg@cassiopeiae>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 15:44:08 +0100
Message-ID: <CAH5fLghuk9tQxHSNOPUW14+tO=WWFCCSfQbcTHhEdGOCQC2+LQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/13] rust: pci: add basic PCI device / driver abstractions
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
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

On Wed, Dec 11, 2024 at 3:32=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Dec 11, 2024 at 02:06:50PM +0100, Alice Ryhl wrote:
> > On Tue, Dec 10, 2024 at 11:38=E2=80=AFPM Danilo Krummrich <dakr@kernel.=
org> wrote:
> > >
> > > On Tue, Dec 10, 2024 at 11:55:33AM +0100, Alice Ryhl wrote:
> > > > On Mon, Dec 9, 2024 at 11:44=E2=80=AFAM Danilo Krummrich <dakr@kern=
el.org> wrote:
> > > > >
> > > > > On Fri, Dec 06, 2024 at 03:01:18PM +0100, Alice Ryhl wrote:
> > > > > > On Thu, Dec 5, 2024 at 3:16=E2=80=AFPM Danilo Krummrich <dakr@k=
ernel.org> wrote:
> > > > > > >
> > > > > > > Implement the basic PCI abstractions required to write a basi=
c PCI
> > > > > > > driver. This includes the following data structures:
> > > > > > >
> > > > > > > The `pci::Driver` trait represents the interface to the drive=
r and
> > > > > > > provides `pci::Driver::probe` for the driver to implement.
> > > > > > >
> > > > > > > The `pci::Device` abstraction represents a `struct pci_dev` a=
nd provides
> > > > > > > abstractions for common functions, such as `pci::Device::set_=
master`.
> > > > > > >
> > > > > > > In order to provide the PCI specific parts to a generic
> > > > > > > `driver::Registration` the `driver::RegistrationOps` trait is=
 implemented
> > > > > > > by `pci::Adapter`.
> > > > > > >
> > > > > > > `pci::DeviceId` implements PCI device IDs based on the generi=
c
> > > > > > > `device_id::RawDevceId` abstraction.
> > > > > > >
> > > > > > > Co-developed-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> > > > > > > Signed-off-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> > > > > > > Signed-off-by: Danilo Krummrich <dakr@kernel.org>
> > > > > >
> > > > > > > +/// The PCI device representation.
> > > > > > > +///
> > > > > > > +/// A PCI device is based on an always reference counted `de=
vice:Device` instance. Cloning a PCI
> > > > > > > +/// device, hence, also increments the base device' referenc=
e count.
> > > > > > > +#[derive(Clone)]
> > > > > > > +pub struct Device(ARef<device::Device>);
> > > > > >
> > > > > > It seems more natural for this to be a wrapper around
> > > > > > `Opaque<bindings::pci_dev>`. Then you can have both &Device and
> > > > > > ARef<Device> depending on whether you want to hold a refcount o=
r not.
> > > > >
> > > > > Yeah, but then every bus device has to re-implement the refcount =
dance we
> > > > > already have in `device::Device` for the underlying base `struct =
device`.
> > > > >
> > > > > I forgot to mention this in my previous reply to Boqun, but we ev=
en documented
> > > > > it this way in `device::Device` [1].
> > > > >
> > > > > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git/tree/rust/kernel/device.rs#n28
> > > >
> > > > We could perhaps write a derive macro for AlwaysRefCounted that
> > > > delegates to the inner type? That way, we can have the best of both
> > > > worlds.
> > >
> > > Sounds interesting, how exactly would this work?
> > >
> > > (I'll already send out a v5, but let's keep discussing this.)
> >
> > Well, the derive macro could assume that the refcount is manipulated
> > in the same way as the inner type does it. I admit that the idea is
> > not fully formed, but if we can avoid wrapping ARef, that would be
> > ideal.
>
> If we can get this to work, I agree it's a good solution.
>
> What do you think about making this a follow up of this series?

I'm fine with it being a follow-up.

Alice

