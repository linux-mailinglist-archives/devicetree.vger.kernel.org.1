Return-Path: <devicetree+bounces-76938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0FD90C9A1
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EA061F21D8F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2082316CD26;
	Tue, 18 Jun 2024 10:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="H3b3JD1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8B916CD18
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718707107; cv=none; b=vBADrkCPgNfEZsF0cQnrv1ldltMWQTQioYS7rHa1IqBPLJIKUMV4PJE0axHJSTJZLkgWQHeb4RogVZ8Pq3IqUzm8RPYJQXf7fl6MmPNM8IHYkdrGFO4wC9qogK9O6On1QRcqCgD76TOx9pAke8DWVh0JSfuX9APpXoXEdpXYn5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718707107; c=relaxed/simple;
	bh=AZdoksxUtXRL1JEsmNkEFGPiEJ6sXnqW05agL++pjYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QlCuSF8XMTe1B6EifQxEX5xAob4EwiPfxu45PTaTSk/jYZ+WPIVtAb0faxNzYKTSHu8YPIJhQQMO183tILoHrUwqc6hzjkLFV0h2QaVTRO1WwfDGuucVU4uJSKlMJ0CeZlGNuiN7Nm5oamTK5kdByIOTjyvWcDvAx7jMcMgji9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=H3b3JD1U; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6f8d0a1e500so3928588a34.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 03:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1718707104; x=1719311904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qq1vFxMrgUe3BHqjNbGzwCUUF1/CTlGHAYljkroSrGs=;
        b=H3b3JD1UjPuoFpTD5eJBtWFpvPHTxvbJ6DHa66eUhR4hQcLcg0WLURUpCNr9pfM54v
         qLk4SrcsN7BcZlvTawATX7/4vGvcip1D3ctm8Y95a10XO1rt+TvNA5THtBWBWn1fDkLs
         Nsc+NpuXIRCLgtl7H09UqZXE7f8H344EdkyRpYn4vPAiwbx1n9RQaG8Fr1tsrs4SqCbE
         mqXHbCAIIzTO1r8pAxPggZuIUDKX/cM82OKTuwthBIoC/boGNnN4eYWGeY4MPh12n3OS
         4SbywuA55v1Zm4N3Pnppzyp3v4BoGAolPrvLFys59y6VQzd16KiQkk5XQLpJRC5Ipo4H
         ir9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718707104; x=1719311904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qq1vFxMrgUe3BHqjNbGzwCUUF1/CTlGHAYljkroSrGs=;
        b=HJMMxPIX+c2DeTbhO/0YnG++vfKf+4NQpl34XHigNdadecrFTKuqXs/8XWaWCiXdPr
         3XQp028F3Po8nLnVMbrgh/4rp1czBJO0mCwZ8p5PM44RAy7pzPGLSUyaSJjDVWECDnXq
         cyG46aRuR0rjHswliXSeCRhjHUKcqHsR4PF1Uoguu2G29dcc4WC13qyCqX3kCyQEo9yS
         YYuYeLkendiCyd+tTYiBzkf2zXfYLmXLu04RWIJKZbOD6VQwVPgCgdaJJkOJ+ndY6Mvf
         8fRC9GycZ2OmVYnTO4oO4t2v7j7K9ckcVFQsGjODi1qe6GZ0KGHhB65+aLuRgUlmntjI
         3UQg==
X-Forwarded-Encrypted: i=1; AJvYcCWBGAg/9hRtPQGHGMf1yCgluhoRJnZLWROWX8hrYo/AAndrCmUppGifFZeOwdj7QxMLEd0xt/IWJ1BRqfk/rwjMISvE2NtRGMTi4A==
X-Gm-Message-State: AOJu0YwL/hjBeic4+83/4ZxE6vTQ4M1hB0tLYLVZmlfNFYamlo3r/8/D
	m8AdeFBEUoIUcbkuuHnLgSdNExerjmremxPN19b0wnwq8h4SOvj7GcISDgnKchZU5L9BhzP6iWy
	/WQP8SR/K1wTo0tnydxizt39+gqbQb8RMjyzevw==
X-Google-Smtp-Source: AGHT+IH2vZAzENDjSgV/6akmRJ7c2RZBHzcy/7oyoiwK4Myt+lBo2Y7nfaUbFeJ8Be+9iC0edhHwfsXFlrWYewHshLA=
X-Received: by 2002:a05:6870:b4a2:b0:254:88ea:6d90 with SMTP id
 586e51a60fabf-2584285855cmr13792436fac.2.1718707104411; Tue, 18 Jun 2024
 03:38:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605121512.32083-1-yongxuan.wang@sifive.com>
 <20240605121512.32083-3-yongxuan.wang@sifive.com> <20240605-atrium-neuron-c2512b34d3da@spud>
In-Reply-To: <20240605-atrium-neuron-c2512b34d3da@spud>
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Date: Tue, 18 Jun 2024 18:38:13 +0800
Message-ID: <CAMWQL2gQpHPD=bPenjD+=NP47k8n26+6KP05zogxUtsD6zY6GQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, kvm@vger.kernel.org, apatel@ventanamicro.com, 
	alex@ghiti.fr, ajones@ventanamicro.com, greentime.hu@sifive.com, 
	vincent.chen@sifive.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 6, 2024 at 12:55=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, Jun 05, 2024 at 08:15:08PM +0800, Yong-Xuan Wang wrote:
> > Add entries for the Svade and Svadu extensions to the riscv,isa-extensi=
ons
> > property.
> >
> > Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> > ---
> >  .../devicetree/bindings/riscv/extensions.yaml | 30 +++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 468c646247aa..1e30988826b9 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -153,6 +153,36 @@ properties:
> >              ratified at commit 3f9ed34 ("Add ability to manually trigg=
er
> >              workflow. (#2)") of riscv-time-compare.
> >
> > +        - const: svade
> > +          description: |
> > +            The standard Svade supervisor-level extension for raising =
page-fault
> > +            exceptions when PTE A/D bits need be set as ratified in th=
e 20240213
> > +            version of the privileged ISA specification.
> > +
> > +            Both Svade and Svadu extensions control the hardware behav=
ior when
> > +            the PTE A/D bits need to be set. The default behavior for =
the four
> > +            possible combinations of these extensions in the device tr=
ee are:
> > +            1. Neither svade nor svadu in DT: default to svade.
>
> I think this needs to be expanded on, as to why nothing means svade.
>
> > +            2. Only svade in DT: use svade.
>
> That's a statement of the obvious, right?
>
> > +            3. Only svadu in DT: use svadu.
>
> This is not relevant for Svade.
>
> > +            4. Both svade and svadu in DT: default to svade (Linux can=
 switch to
> > +               svadu once the SBI FWFT extension is available).
>
> "The privilege level to which this devicetree has been provided can switc=
h to
> Svadu if the SBI FWFT extension is available".
>
> > +        - const: svadu
> > +          description: |
> > +            The standard Svadu supervisor-level extension for hardware=
 updating
> > +            of PTE A/D bits as ratified at commit c1abccf ("Merge pull=
 request
> > +            #25 from ved-rivos/ratified") of riscv-svadu.
> > +
> > +            Both Svade and Svadu extensions control the hardware behav=
ior when
> > +            the PTE A/D bits need to be set. The default behavior for =
the four
> > +            possible combinations of these extensions in the device tr=
ee are:
>
> @Anup/Drew/Alex, are we missing some wording in here about it only being
> valid to have Svadu in isolation if the provider of the devicetree has
> actually turned on Svadu? The binding says "the default behaviour", but
> it is not the "default" behaviour, the behaviour is a must AFAICT. If
> you set Svadu in isolation, you /must/ have turned it on. If you set
> Svadu and Svade, you must have Svadu turned off?
>
> > +            1. Neither svade nor svadu in DT: default to svade.
> > +            2. Only svade in DT: use svade.
>
> These two are not relevant to Svadu, I'd leave them out.
>
> > +            3. Only svadu in DT: use svadu.
>
> Again, statement of the obvious?
>
> > +            4. Both svade and svadu in DT: default to svade (Linux can=
 switch to
> > +               svadu once the SBI FWFT extension is available).
>
> Same here as in the Svade entry.
>
> Thanks,
> Conor.
>

Hi Conor,

I will update the description. Thank you!

Regards,
Yong-Xuan

