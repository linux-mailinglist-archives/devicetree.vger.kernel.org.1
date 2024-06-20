Return-Path: <devicetree+bounces-77720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 526A590FCA7
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58FC11C237B4
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 06:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3B339FFE;
	Thu, 20 Jun 2024 06:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Vl91qYy2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D60D3B1AC
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718864759; cv=none; b=m6eM5G8+9ip23gyOWDnoFXXwcgZwyIXIbBSk/W2nGF3oMlZPbgL+fkHiSEh+xKOmqUyHPj5cFG+3ygTaZEaWYzp2cyx1axeBBK/sOhfU2wf92W0pRSWl1K5cArfZ9p7pLpVD6zUt1fwRt97HfVEfLsczZrhYLg7S2gOhXju+hwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718864759; c=relaxed/simple;
	bh=NHziX5an/WXByp/RwkwtaKPhEn+FIv0/em+X6/IR/tM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZnRv2yxquDhR+4+3NKjFE00kP2aipha2sQE/rpmhpGjGhlcZcn3mdUi2OBjFBBj+pD7XDu+HSLXf3JPUyVrPkvwaKTmRyNyG62l6U7Ta7TOD96GRyYazkIl7Lx/CxOr4GplNqFTSpQDfKKg8JfCLdqXHhomwNDY/kH9ZPTdfPGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Vl91qYy2; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52c82101407so779888e87.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718864756; x=1719469556; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BfOsoI6voHcnzMk74pjD4g6YebgYICnBJRD+PHZtwlQ=;
        b=Vl91qYy2n3HNNdAHWPVr38bhTMcUKUzCooXzRV609PcUzeZBnveoAlfYhTBNGFqJzc
         VVUxY1Av86g344gJxx0ANMrvQdKMtJ9Ukcr4ylsXxPfrfMlHIlAX5czGNAc38JN701MR
         sxLvqUjPHj4JR32CQeqJZvmANedUkekB6vCR4Y32H2kNkGSvwuyeCfe8rQ5OzeY2ja5v
         g9iICqtiC0modV9u7r3d6hK7q/PgXAC/teQnWY3g5CWFK2toQ5WB2ttt6aYceZLz+3Ee
         F7Vm3Z59cu5H9NLugPhJRKC5kPpArDmWjiN4JnpA/rZ/pBCvgAUXqonWihqBEh6oowsO
         u3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718864756; x=1719469556;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BfOsoI6voHcnzMk74pjD4g6YebgYICnBJRD+PHZtwlQ=;
        b=WN35hPOVZRFx9SsOWY4nmOHBdyMBHoVGcsfpaaet6uvZCGsbjq7UP4oHKCF0azIiB/
         JF7i8Qy7t4a9Ptv8QRAgPnOQo9XwSBDzhnmbcJGXkDUh+IyNSIOH3UC80VxBc15aX/nq
         Da53ggYZl1Qz9HV1XanhhM6jvVGwcW5uFiW4dx2cJNZPepxnadOkd2FMgClzHhlAhe+x
         7ihD7hHA08q850I4d2/LQj8fR83+VgVOz/lztuFm0OQbA2D5Jijb+UBSJdl3dE+knAFk
         pazZRwh8OBUlqV4qqhqwiKQYbzXxaMjYSLGTiZz92nSBKrC1M6T79ZuI7uYfVmE6B4cu
         x0fw==
X-Forwarded-Encrypted: i=1; AJvYcCUzh8Djuwx11P+oOeR2uGeLf418OXmlpIVz+CTcg3njnWG2lJOE25sYTujioSTbx9kxwf7WOsbZ2z8g5Zg2PTdHxSZeIC662GSmtA==
X-Gm-Message-State: AOJu0Yzne30Rz5IAhN1bO87e1rri6UnPcVXOu1OmrN6JjyzlS502NqBh
	0siDpPFArWHHJgXGgGkX8/wf1xjEFxNT2zQr7DK0BuS0ln9/8C+zV+k9vXQR2BNgsp/86EYSK5U
	5KCWy78Kw3gh2EV6KkesG2NojfgHxfb7tBTddig==
X-Google-Smtp-Source: AGHT+IEdXN/Lta/JiQoTJ2V7PnSptyYKyFl9aQjNj6ALLZJ1jIfulboG94pKBg6oA9ag5d0mkAo46StBtPfrMh4JGjQ=
X-Received: by 2002:a05:6512:5c9:b0:52b:c296:9739 with SMTP id
 2adb3069b0e04-52ccaa375f4mr2897265e87.41.1718864755286; Wed, 19 Jun 2024
 23:25:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605121512.32083-1-yongxuan.wang@sifive.com>
 <20240605121512.32083-3-yongxuan.wang@sifive.com> <20240605-atrium-neuron-c2512b34d3da@spud>
In-Reply-To: <20240605-atrium-neuron-c2512b34d3da@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 20 Jun 2024 11:55:44 +0530
Message-ID: <CAK9=C2XH7-RdVpojX8GNW-WFTyChW=sTOWs8_kHgsjiFYwzg+g@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Conor Dooley <conor@kernel.org>
Cc: Yong-Xuan Wang <yongxuan.wang@sifive.com>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	kvm@vger.kernel.org, alex@ghiti.fr, ajones@ventanamicro.com, 
	greentime.hu@sifive.com, vincent.chen@sifive.com, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2024 at 10:25=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
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

Actually if both Svade and Svadu are not present in DT then
it is left to the platform and OpenSBI does nothing.

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

Yes, the wording should be more of requirement style using
must or may.

How about this ?
1) Both Svade and Svadu not present in DT =3D> Supervisor may
    assume Svade to be present and enabled or it can discover
    based on mvendorid, marchid, and mimpid.
2) Only Svade present in DT =3D> Supervisor must assume Svade
    to be always enabled. (Obvious)
3) Only Svadu present in DT =3D> Supervisor must assume Svadu
    to be always enabled. (Obvious)
4) Both Svade and Svadu present in DT =3D> Supervisor must
    assume Svadu turned-off at boot time. To use Svadu, supervisor
    must explicitly enable it using the SBI FWFT extension.

IMO, the #2 and #3 are definitely obvious but still worth mentioning.

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

Regards,
Anup

