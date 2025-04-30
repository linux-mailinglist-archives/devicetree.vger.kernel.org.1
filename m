Return-Path: <devicetree+bounces-172285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE8BAA4605
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06602463861
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED09219A93;
	Wed, 30 Apr 2025 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Gmv6q/yx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E06218EB9
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746003347; cv=none; b=Ak7YmlKUd7i559E4qwDz5ozk00zr3DpSPj6BBjZwXZZ25ONNYZsWXsUy/SDQFg3SvhusN5SqBySqkKn9JMDfuwHHvZ7M6opZc9y2eUsXp4tSB5SpRA5Jv39okTZqemXHo0tXqOqRjMZXDCXpXicUf0wK2IrrAqVw8n1RmNrkXc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746003347; c=relaxed/simple;
	bh=AtyNv3rVoIJ3VK5hDadqnXhrj+AxU+u/gGPdnN2XZ7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GtHCAOEfnQDoVcX8hHtTcvbh3j09jj3QVZ+NVU8EpoHvE1qTs+d04MH09V2Er3IRBC5P3hN2VfrBx2ZygZMj+WkFTUcxVIONW6yspVdc8zsFMrwiDSW+fR0eTpmQTGGvo7YDvoSNPQ3zkON5saV0Va3n0EsM/xTHnbwdxWwnQbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Gmv6q/yx; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9eb12so11007161a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746003344; x=1746608144; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvoHo2RumHfR7Sy7g41No889SUfb9msp1hz6UDjZvdg=;
        b=Gmv6q/yx6X8JYQaMh5uvkONZximVG4xLgcgY4/nGmRKY30JOVrPZnkdyHDTlJ4pQzi
         hmkWG+A0yI3enlNA/7oX5v3WqPu+DTdfBUgPXBt08LFgNHyuyEkJ16iq5SnzGOKSJABb
         Lo8YbzAV35A7hh+4X9LbdK7CwB90CpN0DFPSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746003344; x=1746608144;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvoHo2RumHfR7Sy7g41No889SUfb9msp1hz6UDjZvdg=;
        b=F4RPzSVfWDlH1IY34cHdw36Dt50hgGNN79f0J8rLSNsEM/7oXGE0koIXz/538e4SDw
         PaUN1GkwjTKG6KO0z5p1nnDOadiHQ0l8kvG4sstDg3+MqoeKrFLoOo+p/2bTozQL0Dqb
         HC/nkmhgoq7tcHBwW0WtUccZH6E+/mMy8bzMeOGkrV8jv/Ns7JvOGbvKBfYi0miJULsn
         GJATPH3MIDj7+4qQ9XRRmqTKC3+SJewjHqrkFHvVQkjxpPl/Ou9Y17zCeG3F2SKkZjfI
         crXnP7jorcfssYt/pBavMAHHdIRlLTwIOZV3ddUTwdOu8B1UibpXkc3S3FJi2tyYWNjI
         7+Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUEmeBnz6d8/eElFqxLrX7h4QSMi3icbF21nGGbmY1uJsFuPzU+KRtnEfha8NyES4xQR2Eh/ClOiCN6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw64OqCNK4RqoE7oLt2oRcTQp7om26ymh9gMMjfuR9bHwQUusIT
	4qzbrK+zx0Uz0mBEnDQNYszPY4GOcKZX+9Aplrxggu4auTNV+LFJAMHsR7Gt7BVnVG3/p3cCvSH
	XDEaTwm0LYXAQALA4RZIYrc8XjZzde+boJtS1
X-Gm-Gg: ASbGnctWovjzWvABWYpJNxsTyYXcmcTYfctT4qwo5uzY9TTXfSOEoSssOIbjzN2Tn6G
	yglcPgMu9fuQMlJ5LW+jiJvjmRGxCbMFNOjg9u5vWaLR0/IW4psnQmh1EMlrNh7J9Ics4oL4K8L
	5BfMGM0xk1sj2H55LVzSFZ0qw=
X-Google-Smtp-Source: AGHT+IFO1HRbvpAqKy6NdbHgKt4bMdw/CT5H272hpSRpNIN30RE077EIxF2NXuzT+qLq/WYT5mCag6OxMYtXk3+eqB4=
X-Received: by 2002:a17:907:c24:b0:ac7:81b0:62c8 with SMTP id
 a640c23a62f3a-acee21e43c3mr171078866b.31.1746003343669; Wed, 30 Apr 2025
 01:55:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250418124718.1009563-1-jaszczyk@chromium.org>
 <20250418124718.1009563-3-jaszczyk@chromium.org> <20250423140913.GA360030-robh@kernel.org>
 <CAGptq8GzJh38349ZZpEOw9sV8ihtJMHqV=PH9WUbG-C7b0tJjg@mail.gmail.com> <20250425191808.GA2681888-robh@kernel.org>
In-Reply-To: <20250425191808.GA2681888-robh@kernel.org>
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
Date: Wed, 30 Apr 2025 10:55:31 +0200
X-Gm-Features: ATxdqUEADRWppL02YaE3Fm02in5gU_DDHEXJMkFqi51BhUtnffdVYimQjxlS_6A
Message-ID: <CAGptq8GOX0EDFPd+YdZfX76vsD0w0PyX8Y60CKwp3n7abRT1=g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] x86/of: add support for reserved memory defined by DT
To: Rob Herring <robh@kernel.org>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, 
	dave.hansen@linux.intel.com, x86@kernel.org, hpa@zytor.com, 
	saravanak@google.com, dmaluka@chromium.org, bgrzesik@google.com, 
	jaszczyk@google.com, ilpo.jarvinen@linux.intel.com, usamaarif642@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, tnowicki@google.com, 
	mazurekm@google.com, vineethrp@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 25, 2025 at 9:18=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Apr 24, 2025 at 08:06:33PM +0200, Grzegorz Jaszczyk wrote:
> > On Wed, Apr 23, 2025 at 4:09=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Fri, Apr 18, 2025 at 12:47:18PM +0000, Grzegorz Jaszczyk wrote:
> > > > From: Grzegorz Jaszczyk <jaszczyk@google.com>
> > > >
> > > > The DT reserved-memory nodes can be present in DT as described in
> > > > Documentation/devicetree/bindings/reserved-memory/reserved-memory.y=
aml.
> > > > Similar to other architecture, which supports DT, there is a need t=
o
> > > > create reserved memory regions for such nodes.
> > > >
> > > > Additionally, the x86 architecture builds its memory map based on E=
820
> > > > description passed by bootloader and not on DT. Since x86 already h=
as
> > > > some DT support and allows booting with both ACPI and DT at the sam=
e
> > > > time, let's register an arch specific hook which will validate if a
> > > > reserved-memory region passed by DT is valid (covered by E820 reser=
ved
> > > > region entry).
> > > >
> > > > Without this check, the reserved memory from DT could be successful=
ly
> > > > registered, even though such a region could conflict with e820
> > > > description e.g. it could be described as E820_RAM and could be alr=
eady
> > > > used at early x86 boot stage for memblock initialization (which hap=
pens
> > > > before DT parsing).
> > >
> > > Sorry, I don't get how it conflicts. Wouldn't the E820_RAM be registe=
red
> > > with memblock and memblock then handles the conflict (or should).
> > >
> >
> > On x86, early memblock setup is performed by e820__memblock_setup()
> > and regions which are marked as E820_RAM are added to the memblock
> > "memory" type and such regions can be later on used for memblock
> > allocation on early x86 setup. If memblock allocation is performed
> > after e820__memblock_setup and before x86_flattree_get_config,  the
> > reserved region described in DT (but described as RAM in e820) could
> > be silently used before we scan DT for reserved memory regions.
> >
> > Additionally there are more reasons why we want to make sure that e820
> > reserved regions are in sync with DT reserved memory: resource tree
> > building and setup pci gap based on e820.
> > On the x86 resource tree is built taking into account e820 entries
> > (e820__reserve_resources()) while on other arch like e.g. arm64, which
> > relies on DT, the resource tree is built taking into account
> > information from DT(request_standard_resources). Mixing both on x86
> > seems problematic and at first glance could be achieved by e.g.
> > patching e820_table via e820__range_update so other part of the early
> > x86 kernel setup such as e820__setup_pci_gap() will also not use
> > region which is described in DT as reserved-memory. But it is not
> > straight-forward (initially I've tried to go through this path) e.g.
> > it will require handling DT earlier (x86_flattree_get_config) but at
> > the same time x86_flattree_get_config relies on the memblock being set
> > up. Therefore it seems that making a requirement that the e820
> > reserved region should be in sync with DT reserved-memory on x86 is
> > reasonable.
>
> x86_flattree_get_config() is a bit odd in that the DT is mapped and
> unflattened in one shot. Usually the flat DT is mapped and scanned
> early, and then only unflattened once memblock is up. You will be better
> off moving the early mapping and scanning earlier. Then the next thing
> you want from the DT early will be there. For example, the console or
> handling for kexec (which is its own reserved regions).

But reserved memory scanning relies on memblcok being already setup
(see: early_init_fdt_scan_reserved_mem->__reserved_mem_reserve_reg->early_i=
nit_dt_reserve_memory()
which uses:
memblock_overlaps_region, memblock_is_region_reserved,
memblock_mark_nomap and memblock_reserve and therefore we can't move
scanning earlier than e820__memblock_setup(). We can move early
mapping and reserved memory scanning part(actually entire
x86_flattree_get_config) at the end of  e820__memblock_setup but there
will be still remaining issue with e820 not being with sync which will
affect mentioned earlier e820 based assumptions for e.g.
e820__setup_pci_gap and e820__reserve_resources.

I've prepared v3 which moves x86_flattree_get_config earlier in the
setup process and prepared patch, which updates e820 table
accordingly: https://lore.kernel.org/all/20250430084138.2287031-1-jaszczyk@=
chromium.org/.
Could you please take a look?

Best regards,
Grzegorz

