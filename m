Return-Path: <devicetree+bounces-253877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0064BD12463
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D75930726BA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEA73148D0;
	Mon, 12 Jan 2026 11:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="igipoO3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6203563E5
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216778; cv=none; b=NO6qERfH3utSSDasI9hAfCGIqgrca1HHzGaHrVL2CTGbRCOoMg49sNAABgcPaxnfI8abHrcmpog6c3z3FFjgbU16um5aeDQ77HZ0TMvpoamYIIz0jklp3yP7WWtafVwFVzhEsixJl/9LtodwAOMHJ1/Bq4J1vT8ZzNOyBSeIxYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216778; c=relaxed/simple;
	bh=UmG3MrZV4bg2Qf9FsG3IAyKmqtF2ar2x8zgFkT7Syd4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ejhkbED/QW7krPJ44Ez09X6v0unAjsPYvIq0SknADZHnKzcrlY3xNzRmqzWUdKW9i0SY1oIZEBOZ8wBIHYGnc77TJMOGLtNQVpwLgvnDCn1LQeQ7ytQqEJvpN4WQ9u46jlrAaVIk7f0d/lT0WedQZ0UHNfwrHN4wAgvRoKjww08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=igipoO3A; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a2ea96930cso41201555ad.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768216777; x=1768821577; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rxPBiCWb0NOVn214pVZJyp96uXR6w0HjkmgFnnCgJjA=;
        b=igipoO3AKSCkYSoACtVb2X8mTZlN/i0P1V5tiSCFnBW5ahPw0GGPOckzSxkI9ndhED
         rG/pL6S1pAL1gtaOIBfSexFtXNmt3KbfmIISif66RT0ecBk9UqHIYt9fCU/W0zRx6alx
         mTnUT0iI+HKwGUjZUmkKqNsxfAz8N+UIqPmnppUKvIlJDdiYegaGpvJrrBMc+LzdOJFN
         +fujpBut4WuJlqMSEUrCx/WBU1enOx8oGPMPqP5gKulxQlThe413hdKSCygLxnKrPo/b
         /sKdSsvuBz6FkE/c7fn0XmuJ/ER145cGZQxrtNh/DnSwjCta/x2Kr7Upc7m9hOlgii7e
         OZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768216777; x=1768821577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rxPBiCWb0NOVn214pVZJyp96uXR6w0HjkmgFnnCgJjA=;
        b=pcG0o8M0UT3edWNlp1nF3/SYKKRTkW+egn+FdmH6tW3xh9qTwQH/gWG4FBxLgNn9Xa
         Hu37dHqMxYUWmIrsygfSmSWc08Obb7QunwQ61zMb0v19dwbUHicX+1f9RbU9E7MKLLFo
         U0xT+o2+IcjhWixdKajMn8LtDsPljK1/NopAZaRxHjqfxGCtU3lOYvDjoO/BAiXEWUlS
         Ggj9q+Kd7kGTAJq8qvTe5ftd7iXx8yQFsYh87XDalY9YDePisETmFqHEfb7Nt1dIJ/+s
         2riAFnsF14jGrdx/WVOzdpER4cwKt/iB6RvW/ygfGQZaeEEDrRard3rgTVuqhZttX+mZ
         PTQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwvIpwkMiCih72XO4hfyAga6eyYipmHh5B41mmnexwr60vZ6XI2hKr/EOms07HAVsTMi21E8tsJhjZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6mlTFLdbkjNMsrB4YTlkj0WBfayeXA/aGhg4dilHrng0Swjs3
	Z8PR9Pvx+yVXr5qLsjI410pB1vHZKrlu99s0OIy4FeK+01GZj/0wUrvje8/e8EDnk5aiG6duAK7
	VntBySw+SZ/i7rQgg5CGrCLzIpZ9HMzw=
X-Gm-Gg: AY/fxX7qiwZzSFvMvPQCWyXzKsFe76+u9TmgQD0wMoxolVDB7v8++u3awEytC51MGBQ
	/QM/BlVaDwWtwaJnLbA8hqcSRhamtnKB69V6a4osN0sOzX7c1n0YnPRjz6BvoLw3HGxiK5Vh/zT
	TaKEaslPca7tLHSAVei/O5PlXxQW6CHMRC3seqNdhWfRsawixFtxJnPIBA659ZxG/DcYO3fNPnv
	Qdft+lp1DJDv6ny/HW4EmxbSQ7PXA8X5gUnTGt85Om3c0/pfrWqrYoc459LCZ6cgAAEdHWSOpOt
	X6Cehrc9CpmD5Z+r+5a6NYwc60HD
X-Google-Smtp-Source: AGHT+IEHicF+3IJcwgxgH/BBD93opK5AWO2KmeQnPaid+LFlPvwR0B0ZKBH5hgAi8y89KFSsmAmBeqgOAxet4wXxVKI=
X-Received: by 2002:a17:902:f60d:b0:2a0:daa7:8a3d with SMTP id
 d9443c01a7336-2a3ee47f15amr165050485ad.23.1768216776602; Mon, 12 Jan 2026
 03:19:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
 <20260110200426.1461575-2-martin.blumenstingl@googlemail.com> <20260112-quixotic-daft-starfish-5fe914@quoll>
In-Reply-To: <20260112-quixotic-daft-starfish-5fe914@quoll>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 12 Jan 2026 12:19:25 +0100
X-Gm-Features: AZwV_QhMOFbqafd1y2lAFL-G5cdRwETJL_KsPrbRSoSrEkURS4Vzk3WQ_kBZSVE
Message-ID: <CAFBinCAG-N+FKfSyqi+6s7dW8mK54W=-NpFAg=x5N4mF3gH22g@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: gpu: mali-bifrost: Add compatible for
 Amlogic Meson S4
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	adrian.larumbe@collabora.com, steven.price@arm.com, 
	boris.brezillon@collabora.com, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Mon, Jan 12, 2026 at 10:31=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Sat, Jan 10, 2026 at 09:04:24PM +0100, Martin Blumenstingl wrote:
> > Add a compatible string for the Mali-G31 GPU in the Amlogic Meson S4
> > SoC. It has two clock inputs (GPU clock and a bus clock) as well as two
> > resets (main GPU reset line and a GPU ABP reset line).
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  .../bindings/gpu/arm,mali-bifrost.yaml        | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yam=
l b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > index db49b8ff8c74..85fae7753004 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > @@ -19,6 +19,7 @@ properties:
> >            - enum:
> >                - allwinner,sun50i-h616-mali
> >                - amlogic,meson-g12a-mali
> > +              - amlogic,meson-s4-mali
> >                - mediatek,mt8183-mali
> >                - mediatek,mt8183b-mali
> >                - mediatek,mt8186-mali
> > @@ -143,6 +144,25 @@ allOf:
> >          power-domain-names: false
> >        required:
> >          - resets
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: amlogic,meson-s4-mali
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          maxItems: 1
> > +        power-domain-names: false
> > +        clocks:
> > +          minItems: 2
>
> missing maxItems
Thanks, I'll add it!

> Can't this be combined with existing meson entry, *after* fixing it to
> include missing clocks?
I don't think so: G12A (and earlier SoCs) have the Mali registers
"somewhere", while on S4 Mali is on the APB4 bus.
Even if they are on a bus on G12A: then there's no clock linked with
that bus (at least nothing I'm aware of).
This is why I even introduced a new section in the bindings.


Best regards,
Martin

