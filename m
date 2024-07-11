Return-Path: <devicetree+bounces-84947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E2392E4E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB01E1F223B7
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 10:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569EA15884B;
	Thu, 11 Jul 2024 10:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LGsxiFLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926E7158D8F
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 10:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720694102; cv=none; b=gHGW6HRjpPuIn8VUUsRqwi7GQoBpqUJ4cpp82Ovb+RhPeFjpVVTyIoL+JaehU0ZDrg1l6Pl1suSAxo4z3PnJMAjUZsZVweTlYD95lhu72XjQ4oWS8i9NZHnCQTkmKIicRGArhqcwqMu0F5znAd0Jx6oiPrJCXcXEOh8u+BPpjJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720694102; c=relaxed/simple;
	bh=azTey6Mbe5LDqWSTEruz0j0tEwPtlNQpE18cgLltbe0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X3OGwys3hW7JC9Nnl9AXiwzOQIWd07vTnbF1+IabQ732oJaoJlofwdDvfSc6XRSLvYBJxMZwqChZvpXNoeDyAOqJy/Wx4AZkZLPMKSLVy5RWKgnKDj64r79a0DPrZykH7fC7Tn8fealss+0qynIjoh0QBt5SkwWZpltNCVtKrq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LGsxiFLG; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3d91e390601so431495b6e.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 03:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1720694099; x=1721298899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81XIkWS3ndQ7+PCCdHsExXmF1eARnUo6Gh7sCw+xD4Y=;
        b=LGsxiFLGgctkcNa4uIYDdYdHDygJkyF6j1TZqjgI4gHz06/fyoJSAZoPB6ZlFFx0kd
         VjZSnUt9cKEfBSxvYZyGVnP96WTtU8NA7imxRcwnGO9jiRK+pg0wP6+t1YPsxMbi++OE
         m0zL7q5JwMCBT2ZNh5gR3p+JgQZayfjAJ+mRj2YRucc5/adO6bmsfn8wDwsQOyBx0LuC
         hfXQW5rdiyj6lV/rIo0ynjHLlITt/YZ9GpW3QsmRm1n6d2BMql6V4YBNuh6MJyOtoe59
         o6HSNbABbAId8FajB06EVDjhs5H7SBhsyFiGgtF733/qMTRkoaGwo+5v7snEu3mG1fPc
         a2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720694099; x=1721298899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81XIkWS3ndQ7+PCCdHsExXmF1eARnUo6Gh7sCw+xD4Y=;
        b=YFUlKejI4GsODSNOOuuTRda7nPj+c0vCqTYXphgxwRAXlASqDRc8Q4u7khZ/ZFNGeH
         ieLBb5L+zb1Mqla7WBHJ1/PI9RtHaxBSqEQ5nzXSARWO4iHIypmV7xdfvz4xPQJZla58
         +mfzh8DwxqU+VgejMqaCfMcuC1PF8LMVuUlxMuIWrovGXIJgB+fbk7b0gPe/HJhOPYr2
         PiED1v+/yM9SCGaTT/+YVbzW/E3u9+4K9R2rFym67RjwckVfhhTs0yxRozEfldmXyytI
         5yx0z/DyUA5fL9ByptJkwGjFZoMZppE01TkeBgUmQlxtZlJXLc9EAOF6ahoaSIB+YhR0
         1ycA==
X-Forwarded-Encrypted: i=1; AJvYcCUToTUxlL7zcTOl0+xZgUOT05SCFtwj1UzkomIpwPsC5jmJ/bFu45C6FWYIV97CN7Gg44arXRQc/TSqaW9vPCMwctcWAEuh9mppIg==
X-Gm-Message-State: AOJu0Yzj0X3puyQBkwAVNflmkFp0tX/0p7ZPcpg69k2PnlCAuvD0yXOW
	93k016uOoAS6xkku/g8/zIgxSIagQ0530ciceS2Mylp9FgIopVpcFJnS0OIQfTM3SmapgIGnpaJ
	d0sjwEfT3MWnY88TomYRjW1EvLZJsbo0UfqYo4Q==
X-Google-Smtp-Source: AGHT+IFJB5x3pYSD0y4Q5r4wWK4Y3rLRAWXELD1JUSAm8Ow50OC5okYZ99DPR11L57LtC71EXPAYdgoDHtJYINBxm0g=
X-Received: by 2002:a05:6808:308d:b0:3d9:2415:da77 with SMTP id
 5614622812f47-3d93c073d69mr9586482b6e.25.1720694099522; Thu, 11 Jul 2024
 03:34:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240628093711.11716-1-yongxuan.wang@sifive.com>
 <20240628093711.11716-3-yongxuan.wang@sifive.com> <20240628-clamp-vineyard-c7cdd40a6d50@spud>
 <402C3422-0248-4C0F-991E-C0C4BBB0FA72@jrtc27.com> <20240630-caboose-diameter-7e73bf86da49@spud>
In-Reply-To: <20240630-caboose-diameter-7e73bf86da49@spud>
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Date: Thu, 11 Jul 2024 18:34:49 +0800
Message-ID: <CAMWQL2gpg-xN5xjshTaZT5844kKoZHDmLUQb8nXYYzw1RGbykQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Conor Dooley <conor@kernel.org>
Cc: Jessica Clarke <jrtc27@jrtc27.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-riscv <linux-riscv@lists.infradead.org>, kvm-riscv@lists.infradead.org, 
	kvm@vger.kernel.org, Greentime Hu <greentime.hu@sifive.com>, 
	Vincent Chen <vincent.chen@sifive.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor and Jessica,

On Sun, Jun 30, 2024 at 10:09=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Sat, Jun 29, 2024 at 02:09:34PM +0100, Jessica Clarke wrote:
> > On 28 Jun 2024, at 17:19, Conor Dooley <conor@kernel.org> wrote:
> > >
> > > On Fri, Jun 28, 2024 at 05:37:06PM +0800, Yong-Xuan Wang wrote:
> > >> Add entries for the Svade and Svadu extensions to the riscv,isa-exte=
nsions
> > >> property.
> > >>
> > >> Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> > >> ---
> > >> .../devicetree/bindings/riscv/extensions.yaml | 28 +++++++++++++++++=
++
> > >> 1 file changed, 28 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml=
 b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > >> index 468c646247aa..c3d053ce7783 100644
> > >> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > >> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > >> @@ -153,6 +153,34 @@ properties:
> > >>             ratified at commit 3f9ed34 ("Add ability to manually tri=
gger
> > >>             workflow. (#2)") of riscv-time-compare.
> > >>
> > >> +        - const: svade
> > >> +          description: |
> > >> +            The standard Svade supervisor-level extension for SW-ma=
naged PTE A/D
> > >> +            bit updates as ratified in the 20240213 version of the =
privileged
> > >> +            ISA specification.
> > >> +
> > >> +            Both Svade and Svadu extensions control the hardware be=
havior when
> > >> +            the PTE A/D bits need to be set. The default behavior f=
or the four
> > >> +            possible combinations of these extensions in the device=
 tree are:
> > >> +            1) Neither Svade nor Svadu present in DT =3D>
> > >
> > >>                It is technically
> > >> +               unknown whether the platform uses Svade or Svadu. Su=
pervisor may
> > >> +               assume Svade to be present and enabled or it can dis=
cover based
> > >> +               on mvendorid, marchid, and mimpid.
> > >
> > > I would just write "for backwards compatibility, if neither Svade nor
> > > Svadu appear in the devicetree the supervisor may assume Svade to be
> > > present and enabled". If there are systems that this behaviour causes
> > > problems for, we can deal with them iff they appear. I don't think
> > > looking at m*id would be sufficient here anyway, since the firmware c=
an
> > > have an impact. I'd just drop that part entirely.
> >
> > Older QEMU falls into that category, as do Bluespec=E2=80=99s soft-core=
s (which
> > ours are derived from at Cambridge). I feel that, in reality, one
> > should be prepared to handle both trapping and atomic updates if
> > writing an OS that aims to support case 1.
>
> I guess that is actually what we should put in then, to use an
> approximation of your wording, something like
>         Neither Svade nor Svadu present in DT =3D> Supervisor software sh=
ould be
>         prepared to handle either hardware updating of the PTE A/D bits o=
r page
>         faults when they need updated
> ?

Thank you! I will update in the next version.

Regards,
Yong-Xuan

