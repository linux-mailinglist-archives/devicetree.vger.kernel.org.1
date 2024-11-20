Return-Path: <devicetree+bounces-123237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 971EA9D3CD2
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 14:55:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CCBE2824FC
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 13:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79741A9B45;
	Wed, 20 Nov 2024 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="YNwXFNyz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048851A2554
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 13:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732110933; cv=none; b=bdvwczuk78ub5HRIug6VdiNgFcZetP5Rsjft/6mIlSpiIajcciM8gF493jRR4yxmDC/tIpHIczrE8B/YZSbQdpqd5++SK3DDEaH9NSr2vuVMK8Feg5aajpCsfZel06Xw3j1bXqaOqXcH2F4llOqQrn2DPdwfmmpj3hDKPtekaJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732110933; c=relaxed/simple;
	bh=tLTJIeTUN5uWQmgMsBit449rE3QnNGMc1ry3N72Be2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k5i5OfZFUkzhx9HGFpJHJsTFpn/mBO4NAu9PNPtBJINIcJWKNqF9WZNzeI2ej7JhtO3WsPD12R3nw2cVupjXInKPGc1Cl4YmhkMDdfDSr+Gt2O0Ec3pm08B4ydPiBCUWuZNg5dBsSEqqLH+OH6Q8WnHgALSJpH4RWv9ukQyTo3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=YNwXFNyz; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so62061841fa.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 05:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732110930; x=1732715730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWo6MmMAnTgakCcBn1+jc6Kn4Hq1VkFACaiDY+zPG/w=;
        b=YNwXFNyzrgqp9LxzV6kKwcsqDrGZZQAL3IhkfWcLkKRu6tdfgU8K5qj9052ueNVrIc
         jg8O0r9n7Dn6OgDPC6s70mDljgrU62LfO2NroNu1yFpt04HGvO3T5goBAdK2TpHjJ1Qc
         sAQJCUbrW7T9luJ5/JEL2JgvYGERD70FeB45k9emEI7S6IU54yGztocMIBzI3HSch5aB
         3MUd3JlMobVNXsUVYMaKSMq/2FM9zxRTopbgXE+cgAlueRYKO6Y+gjo9AaN78/6DH41Q
         spGX2dfQNZ29U1Y+YCODaBUwmcMQ8OFvHi29/Eg/UBLKnlJwW6XUD6H9tglwOureotct
         kMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732110930; x=1732715730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YWo6MmMAnTgakCcBn1+jc6Kn4Hq1VkFACaiDY+zPG/w=;
        b=Dbed5tJLo0PkM+q5ipAm94xBs2dU2P6cYj0fFNaG+RSMxt5BCpHwzG8iMI+/9tWRy9
         FjWFeuCO3Z0vGYRxxON1aSWJeFo60m/tsGf2jg24UxN1am/bilExUtRfPVAITd3l0xvh
         JgV1uTtTf4AobHHNAl2NiHWG/xg7qIplIYC7XUqzvVx1TIRDq5EFLqRIWeIDc1dLAE7P
         Ps/b6EfK0Xpp7qC8oxo+XPiSm99wCz5To/aPX7F2kizHYBse3eKjuvVBMed6pHCaHmZt
         DCzYFkit8aaZs8Zd2y1pPW5w2qwsa3B6fo7SMMFQcEgoKV1vjOsyFzzsXkqQaDwlLmh6
         8cXg==
X-Forwarded-Encrypted: i=1; AJvYcCVpfziQwTioRLBvePAdeUtM9UX7mUZRC8ce1Yt7f+4EbBUxpklvYEY2sCOQ6W12IOi+LNDr+daM7Ic1@vger.kernel.org
X-Gm-Message-State: AOJu0YyImAa8Tr9aZeUBEvM9WsaQFzLjQWcLiJqVMSwlKQyhZ5mdMyqx
	HX1i4GNf5I5q0U+V4TNY6pfIsO8ymI/Aw3rz1ly1AgjRSFaIEhF0LrRmcMTaUyCvJv1x2u8QtL8
	0u3xGopA+yvxWXz9WRwsBrnqm235iJipbmUmliA==
X-Google-Smtp-Source: AGHT+IGnkwgpl/fVHCnAI2JHFf0JszP0Rs1/hN3/HwVKLTkM8QFYKEB3KFhIrGPtwJ8EIhrJTpbnn92x9rsPQMasFgw=
X-Received: by 2002:a05:6512:3c97:b0:53b:163a:f279 with SMTP id
 2adb3069b0e04-53dc136b9ffmr2010773e87.53.1732110929980; Wed, 20 Nov 2024
 05:55:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com>
 <20240920-dev-maxh-svukte-rebase-v1-1-7864a88a62bd@sifive.com> <eb8f399b-fa09-47fd-8102-9b65b0839dd5@ghiti.fr>
In-Reply-To: <eb8f399b-fa09-47fd-8102-9b65b0839dd5@ghiti.fr>
From: Max Hsu <max.hsu@sifive.com>
Date: Wed, 20 Nov 2024 21:55:18 +0800
Message-ID: <CAHibDyzOWrKwEZ_7K2f2MY9DFn4sD5QjDEQ42u8DTaftN6Fuvw@mail.gmail.com>
Subject: Re: [PATCH RFC 1/3] dt-bindings: riscv: Add Svukte entry
To: Alexandre Ghiti <alex@ghiti.fr>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

Thanks for the suggestion.
I will send a typo fix in the RFC v3 patches

Best regards,
Max Hsu

On Thu, Nov 14, 2024 at 12:15=E2=80=AFAM Alexandre Ghiti <alex@ghiti.fr> wr=
ote:
>
> Hi Max,
>
> On 20/09/2024 09:39, Max Hsu wrote:
> > Add an entry for the Svukte extension to the riscv,isa-extensions
> > property.
> >
> > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >   Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index a06dbc6b4928958704855c8993291b036e3d1a63..df96aea5e53a70b0cb89053=
32464a42a264e56e6 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -171,6 +171,13 @@ properties:
> >               memory types as ratified in the 20191213 version of the p=
rivileged
> >               ISA specification.
> >
> > +        - const: svukte
> > +          description:
> > +            The standard Svukte supervisor-level extensions for making=
 user-mode
>
>
> s/extensions/extension
>
>
> > +            accesses to supervisor memory raise page faults in constan=
t time,
> > +            mitigating attacks that attempt to discover the supervisor
> > +            software's address-space layout, as PR#1564 of riscv-isa-m=
anual.
> > +
> >           - const: zacas
> >             description: |
> >               The Zacas extension for Atomic Compare-and-Swap (CAS) ins=
tructions
> >
>
> You'll need a new version for the proper commit sha1 once it gets
> ratified anyway, so with the typo fixed, you can add:
>
> Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
>
> Thanks,
>
> Alex
>

