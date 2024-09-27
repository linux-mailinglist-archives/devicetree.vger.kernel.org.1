Return-Path: <devicetree+bounces-105822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 863A098813C
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 11:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 727A2282D97
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 09:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF2518A6B5;
	Fri, 27 Sep 2024 09:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="BZkg73XF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0488B16D9B8
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727428997; cv=none; b=UPGVgIct181pluVFePDzT5dO3Hzrr/hINPm/3TvLWDXVX5AGEbzTclPbU/YipyPmExjTFsWHkYNOoenzIrVOemUFc9BBo1MYD5yjUcyWxwe1WM0/LVimybMbDA8UiOOFiQpfBRnVMGSGwcSFAKQfPswqRoN518eOCoBkowU70uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727428997; c=relaxed/simple;
	bh=crutcP0xnGvGIZF+MQbEA0++mSe9NvxV4Gn+IsZHwVQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PfmMN2vGv1vZaIzlOy/8Hl20kGUetaUSst7eej+2DjKMN6Wn/s66bZD9Fgdys5fXwOqR5p/2m7SNbjBbLKyhLdPaI+qxx9lOr82CkStgWOFL3YFUynHRrfeThLT/U1gbmTP11Xpr2UnY06lpZJALTAVpTZMxvtl6Bk9bgF8/UOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=BZkg73XF; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c40aea5c40so3462092a12.0
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 02:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1727428994; x=1728033794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nqf7J6uVRTMjV8Mkr5LkK+rt2+orKvSYQp47d/slH6I=;
        b=BZkg73XFwjMYfwPiG8VagS2CmPJkKBqperLhKucETsr8ZzpysPIJp1kXtBuJCIBKxq
         SiULOcfRXImdGya5juW3WUPwkl1SeshJtAr6ll8Nckcf/f46msZiuO218aboQ5QCFAZM
         qcazQczegIF/HlU9phJ6NBGmjKIKJMHgmlQJtY/svK8RYwbGSAYAoJtXgZT/HNucu8Qd
         2ZvoZPF+Cnjy1VPZxiKXRxspQkwo4utC2uYnpeSBptPY2IFPLo5bP6QX2t4c64ISFpOc
         dDJCXrlgSifz/bb+pslFaRSHB3OGzLcF28SzHiGOborb51v1YVyw8i5huhEUyV4luQIF
         lYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727428994; x=1728033794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nqf7J6uVRTMjV8Mkr5LkK+rt2+orKvSYQp47d/slH6I=;
        b=FLwSUmv0mqRzfmlCRbaNAsgnmfvcc1e+IC0LishefE6zfVcGPIYU0d9N7e3HKb/k1y
         k2td6hABMdk5x+3L2QUVNEE9WsejD2GTD39/joULhJ6PVsOIEa9XCqbbIDYhwnSXc8xc
         OKCV3Sle6Zkpt/lwDqjEzUNgMHUyHqA+T5rNnUcXq0WaBSAqCdtiSSR9Fyp2EB9hPuKt
         H3eTcHT9zVZC2hr640zq6K76yt9XQJ+HEtLOdDk3BJNrx/qg8+YxeUCQkcVJZ70JUAAC
         QafhTuBKFFBHqACMiTijC7ZGvOHfSShBpa5rc3UDkOnxrfdeSe+Zi4SWoQZYvB4Be3QP
         EWAA==
X-Forwarded-Encrypted: i=1; AJvYcCVojRQXasZAomHsQ7sxoSmwSWfGcuraBfIUh2FT1zZpPDyeGhdHkRSRAvZse3zNDikxg04Jc7+g5yLA@vger.kernel.org
X-Gm-Message-State: AOJu0YyceOvkhMPk9DtK9+BoQlF/wH7jvWHeHYLY2whrLe8hUN2j+jLK
	jmWT+aj3cPwmZTXzFs7oz2WnM+fvCW25UJcf4V0gaUCP6ApcLbVqTRVtb1PR/zUF+j8ps/R7dsN
	+zPMgbklSO5NFwAjt1YI4yDexXuiXvKbbKMWEwA==
X-Google-Smtp-Source: AGHT+IFGU7PYEBeWJ9XyJiJyw2tA09AFezreXCXdZppeh4nf2YQMIVbOaLNTp72I5G5qbddr12Ia8AF3t2lz4EjKMB4=
X-Received: by 2002:a05:6402:230e:b0:5c3:cc1c:4d9c with SMTP id
 4fb4d7f45d1cf-5c8777eae4amr5673166a12.18.1727428993884; Fri, 27 Sep 2024
 02:23:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com>
 <20240920-dev-maxh-svukte-rebase-v1-1-7864a88a62bd@sifive.com> <20240921-shock-purge-d91482d191a1@spud>
In-Reply-To: <20240921-shock-purge-d91482d191a1@spud>
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 27 Sep 2024 17:23:02 +0800
Message-ID: <CAHibDyxcxe87mTLMkWZ9Ko3v7uyEbJd_BP7GSTpZFFO1nfmn0A@mail.gmail.com>
Subject: Re: [PATCH RFC 1/3] dt-bindings: riscv: Add Svukte entry
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@sifive.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Conor,
I will modify the format and send it as RFC v2.

Since the Svukte extension is still in the review stage, I will put
the latest commit of the PR in the riscv-isa-manual as an indication,
Once the Svukte extension is ratified, I will modify it and send it as
a formal patch.

Best,
Max Hsu



On Sun, Sep 22, 2024 at 6:05=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Sep 20, 2024 at 03:39:03PM +0800, Max Hsu wrote:
> > Add an entry for the Svukte extension to the riscv,isa-extensions
> > property.
> >
> > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index a06dbc6b4928958704855c8993291b036e3d1a63..df96aea5e53a70b0cb89053=
32464a42a264e56e6 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -171,6 +171,13 @@ properties:
> >              memory types as ratified in the 20191213 version of the pr=
ivileged
> >              ISA specification.
> >
> > +        - const: svukte
> > +          description:
> > +            The standard Svukte supervisor-level extensions for making=
 user-mode
> > +            accesses to supervisor memory raise page faults in constan=
t time,
> > +            mitigating attacks that attempt to discover the supervisor
> > +            software's address-space layout, as PR#1564 of riscv-isa-m=
anual.
>
> I'm surprised this doesn't fail dt_binding_check, with the # in it. I'd
> like to see a commit hash here though, in the same format as the other
> extensions using them.
>
> > +
> >          - const: zacas
> >            description: |
> >              The Zacas extension for Atomic Compare-and-Swap (CAS) inst=
ructions
> >
> > --
> > 2.43.2
> >

