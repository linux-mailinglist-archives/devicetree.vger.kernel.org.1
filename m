Return-Path: <devicetree+bounces-78332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B8E911EDB
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C4091F24596
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649B216D9A4;
	Fri, 21 Jun 2024 08:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="M1Tfl6tr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7483A16D4DA
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718958790; cv=none; b=H8Ud2ikLELkrEIoqxsCgMtUGApYJxE8VztS491vS97+vpX/eB5twGfeV9XipBn1oWYwsb0QgnDjbCnGqRL3qSeUI6zdo/4iGWsO25XegECD4rd4H4R63bEBSsB2q033J22INAcavr5thVqKsXIPaBszBPGQNnHsZP/jHqJLEPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718958790; c=relaxed/simple;
	bh=ClkkVMk172JzTt1UKddhO3yky07U34zX40msQkUvvNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CMpo/6OKWRzcxbqb6VXNKoaSfOTxd6/E6h+NKgCcXDeLckkOAu2OM+34o7ZqdLCISOaYM+6OK+yC19HxPIY+HOJeLteqQGidCrF/OknRaSxJ0zxmUcrfbD7ibtfi+yTw2vPemePzJ+LNO2gplwCnQUQphzYIbvtrsP+/IyFRMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=M1Tfl6tr; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6f13dddf7eso210225266b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718958786; x=1719563586; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=13CmNwUXr5VhUsxq5NU9l1BI3PLV5wmazLWOuEQIO+k=;
        b=M1Tfl6trDck75NtmR/Mwa8r/2jZT9CBvtE9svuh1nTGQKi1Y1PB2wzzSawBnCySKeE
         AO/9qv9fFzsGxKmGV6W2GNlUn5wZ3BVSv+gm4gf+T/fJrAwQLgRoLdnEzMiX5hqOn1PI
         XHxCSy7wd8P9RgQ+qurxaYCGCXHCOqQ5y3xVaYOj0J58ZoiaQble30YejLv21Wb10zcQ
         2gHsKsu5KK4Dn10F3D8vtMwif8LHVzkxir/lFsqN+a61snXvU69Yh0toavTAy1RACw07
         ytryHUfPk6cRk6yB1pK2i2p3FT2S5gpcK6Epfa6fZplsBFw+4LJUrC2rZazJ62WDC1yT
         wA4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718958786; x=1719563586;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13CmNwUXr5VhUsxq5NU9l1BI3PLV5wmazLWOuEQIO+k=;
        b=a9tYr5qnFa9rAwdlvHuKrBdCfUljXN6iz8/Uk2qsxf0UU9+XgK910DIL1oWFu2qmjg
         XDmzugjL/Y2InpTIdBjfxJZ29G0+3ypmIE0bzzaNHt0A4cRrQsPkWue7RxNVzFN4935E
         MJd+kKbd6YV/M0T86vd4Bh9GjCQiG2PBUrJd6LN3vRsa4hwa+k3EEDMag814Ba0yLf4C
         ThoqTlYV8+uOYlKoyBgicAJBSxmmATHcOg7y9SUzENVGLZ2b3NnLW/1uwFeJevM21btR
         yUAGP4AitRawAVAH7SfA4F5RdaudbFo3SDblEGQrtWHqziBUcg80OOCTvi8buPfbuAXh
         VwMg==
X-Forwarded-Encrypted: i=1; AJvYcCXwURe97rd5P+Bcoup4RhcMe2BlYTvCPm1i2nEpGa5+DTyqMjIUPMH+wquopHjNdeZ9IoEeWRunF0RNt2TrpeIJiBAjXJsNqejzEA==
X-Gm-Message-State: AOJu0Yx0a0L0WbLVHls85auRhGT9KZ+JqjSRYs9oTLY52/2rKB25i9B9
	Uc28uqyshiLPzagpwKOp0IiHESVwHm4xWsL4JtaVfrifiPNaYfmVu/Z0LkLttlw=
X-Google-Smtp-Source: AGHT+IHvj0QAH2876hMCNrT7ElOxqJnXNZ06Sc4+oHnPw0f7XyOBJdmylote20qcntY2N07KCc4kBw==
X-Received: by 2002:a17:907:a4c7:b0:a6f:b69e:8c98 with SMTP id a640c23a62f3a-a6fb69e8d25mr438502466b.62.1718958785171;
        Fri, 21 Jun 2024 01:33:05 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf56ed53sm57395866b.217.2024.06.21.01.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 01:33:04 -0700 (PDT)
Date: Fri, 21 Jun 2024 10:33:03 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Conor Dooley <conor@kernel.org>, 
	Yong-Xuan Wang <yongxuan.wang@sifive.com>, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, kvm@vger.kernel.org, alex@ghiti.fr, greentime.hu@sifive.com, 
	vincent.chen@sifive.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
Message-ID: <20240621-10d503a9a2e7d54e67db102c@orel>
References: <20240605121512.32083-1-yongxuan.wang@sifive.com>
 <20240605121512.32083-3-yongxuan.wang@sifive.com>
 <20240605-atrium-neuron-c2512b34d3da@spud>
 <CAK9=C2XH7-RdVpojX8GNW-WFTyChW=sTOWs8_kHgsjiFYwzg+g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK9=C2XH7-RdVpojX8GNW-WFTyChW=sTOWs8_kHgsjiFYwzg+g@mail.gmail.com>

On Thu, Jun 20, 2024 at 11:55:44AM GMT, Anup Patel wrote:
> On Wed, Jun 5, 2024 at 10:25 PM Conor Dooley <conor@kernel.org> wrote:
> >
> > On Wed, Jun 05, 2024 at 08:15:08PM +0800, Yong-Xuan Wang wrote:
> > > Add entries for the Svade and Svadu extensions to the riscv,isa-extensions
> > > property.
> > >
> > > Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> > > ---
> > >  .../devicetree/bindings/riscv/extensions.yaml | 30 +++++++++++++++++++
> > >  1 file changed, 30 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > index 468c646247aa..1e30988826b9 100644
> > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > @@ -153,6 +153,36 @@ properties:
> > >              ratified at commit 3f9ed34 ("Add ability to manually trigger
> > >              workflow. (#2)") of riscv-time-compare.
> > >
> > > +        - const: svade
> > > +          description: |
> > > +            The standard Svade supervisor-level extension for raising page-fault
> > > +            exceptions when PTE A/D bits need be set as ratified in the 20240213
> > > +            version of the privileged ISA specification.
> > > +
> > > +            Both Svade and Svadu extensions control the hardware behavior when
> > > +            the PTE A/D bits need to be set. The default behavior for the four
> > > +            possible combinations of these extensions in the device tree are:
> > > +            1. Neither svade nor svadu in DT: default to svade.
> >
> > I think this needs to be expanded on, as to why nothing means svade.
> 
> Actually if both Svade and Svadu are not present in DT then
> it is left to the platform and OpenSBI does nothing.

This is a good point, and maybe it's worth integrating something that
states this case is technically unknown into the final text. (Even though
historically this has been assumed to mean svade.)

> 
> >
> > > +            2. Only svade in DT: use svade.
> >
> > That's a statement of the obvious, right?
> >
> > > +            3. Only svadu in DT: use svadu.
> >
> > This is not relevant for Svade.
> >
> > > +            4. Both svade and svadu in DT: default to svade (Linux can switch to
> > > +               svadu once the SBI FWFT extension is available).
> >
> > "The privilege level to which this devicetree has been provided can switch to
> > Svadu if the SBI FWFT extension is available".
> >
> > > +        - const: svadu
> > > +          description: |
> > > +            The standard Svadu supervisor-level extension for hardware updating
> > > +            of PTE A/D bits as ratified at commit c1abccf ("Merge pull request
> > > +            #25 from ved-rivos/ratified") of riscv-svadu.
> > > +
> > > +            Both Svade and Svadu extensions control the hardware behavior when
> > > +            the PTE A/D bits need to be set. The default behavior for the four
> > > +            possible combinations of these extensions in the device tree are:
> >
> > @Anup/Drew/Alex, are we missing some wording in here about it only being
> > valid to have Svadu in isolation if the provider of the devicetree has
> > actually turned on Svadu? The binding says "the default behaviour", but
> > it is not the "default" behaviour, the behaviour is a must AFAICT. If
> > you set Svadu in isolation, you /must/ have turned it on. If you set
> > Svadu and Svade, you must have Svadu turned off?
> 
> Yes, the wording should be more of requirement style using
> must or may.
> 
> How about this ?

I'm mostly just +1'ing everything below, but with a minor wording change
suggestion

> 1) Both Svade and Svadu not present in DT => Supervisor may

Neither Svade nor Svadu present...

>     assume Svade to be present and enabled or it can discover
>     based on mvendorid, marchid, and mimpid.
> 2) Only Svade present in DT => Supervisor must assume Svade
>     to be always enabled. (Obvious)
> 3) Only Svadu present in DT => Supervisor must assume Svadu
>     to be always enabled. (Obvious)
> 4) Both Svade and Svadu present in DT => Supervisor must
>     assume Svadu turned-off at boot time. To use Svadu, supervisor
>     must explicitly enable it using the SBI FWFT extension.
> 
> IMO, the #2 and #3 are definitely obvious but still worth mentioning.

Thanks,
drew

