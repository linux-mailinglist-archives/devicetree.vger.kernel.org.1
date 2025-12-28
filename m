Return-Path: <devicetree+bounces-249935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC847CE4EAC
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 13:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D930302EA1A
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 12:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 633692D8793;
	Sun, 28 Dec 2025 12:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aNzv/H11"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1282D8396
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 12:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766925801; cv=none; b=bJ9hJy2co+tWNnQ4N/AZHR9/udME8fFTe6QzwokL6qSRGbm0eJ4TjVtINvMX+fC00KkkEyxDNPxs4GLOcYYt1YHgrXQ8yXyyIcMuiirYW73+9VCrSzYZ3oSbqo4MX06xSP2vNbM/hxf1Vdab4FWCZtTD7rBhSTflzIYBKwV3xmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766925801; c=relaxed/simple;
	bh=PDtPzIPdNVWEmGWJy4NYLWw9A8mjRLIe0eMacVvyCiU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jPByYwNyVGt1zZejsPFXJT9fSgyFNYeuU7FAHo3jhAW5eE6FB3B7DOU8VhHMDuPFFV2vejPJuwrkrmtIClbnyaaK2f0lrIhf2ZJRdBDBKUyfw6BDaFe3PxUrL//83Sf0lgWZBOYAliIdZcwKosp4eIlyfLhXYcC4SFRLTjC/b4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aNzv/H11; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-646b8d2431dso5741d50.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 04:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766925797; x=1767530597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ubXvmj1fUdXD8dToAHqKBaQMhIVravK57oAPfXT+X64=;
        b=aNzv/H11mwIpGNpxNDc1bsUiQ0O/P404g2F+o47h+wzzUrXrBigv/2WbZp9g5VP9Zw
         ZPFxIQFehEXKtQCwzzgcigwar2VuStJDhfPcpgbcW0KI9JnU3PYQcY3oC1cu6mitm1JZ
         +yGKkK4gwkVvXvmIv2p5LFUM5hPRJh/mSylDZ9tF4bx6HXH5aXE6oSTfx3XCMB3Y6O79
         3VixkP7jmRARS9LgTpDpYuR808oL2p2u42rXyTs8tm0WAJok+DqDWYSr5y2iQ3mPx54a
         6zjqpYSpQIk0jHhhQLpRPRE7NPGNToF27OmkFv1jReNtdbplGz51AR771NNzIO4vgcH8
         ACKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766925797; x=1767530597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ubXvmj1fUdXD8dToAHqKBaQMhIVravK57oAPfXT+X64=;
        b=IfZAw3HmeL5/dAmOk12jndvIt3BEdDT4frMpgPwkFlRx7uTRuUtPCb/NgEMrFct+La
         czMB61cM3JLgmbhYyqBEiYHwR4yO+JZ2hNR7q0Nl/vUh2wtabVAkMJ0MzWNQ1zb9kdiS
         N6Hw0917kLfYsBUT9KFnYeCsHyVOL0BrFTf7TQutVZHs7x01H+fZIYU5neNFKOxFoZ39
         9dmghLwMjCP3mE8RGmoEbj47ZzNZpUHkacF+ATDbuVhG8IKD9lIqWJIzB6sEUixB1+G0
         oAWaFvL7l1qbu+ZutZz/Qk6IDpPu4NfIOs6krGh5ljmgOrLVoHBVVk8RdJJ/6dImCOW9
         jUqw==
X-Forwarded-Encrypted: i=1; AJvYcCVHsgXXbiIa8EspPUn1iJiKYr1uVWsNIbhduxWcqBfwDUw03PkJ2hgx8F0UwQGL7OGdqfZwWi75od8a@vger.kernel.org
X-Gm-Message-State: AOJu0YxZsrBNEJLD5ZeLlfJVC/MEvd4ZhWbSTlNgnPtqPeicYEtGazhc
	IzUFxJNtveOjqPyFWqrU6sxmOGe1ZazEFDcprXzsZXTLNCsh9kZf+z/TnxsCRiQT9f4T97cOg2e
	UyYmFI21mFQRNqowux2hkdsOtZ2qhg7Kpke0VSf4cNw==
X-Gm-Gg: AY/fxX7sucOLmJb8C4/GYcJL5UtynoBNtjRA7MnBOal9digYegvl9VVdBTTXBCFqYxe
	T179hnLUVHgMGFw9/GXLDhJLTnxynszGFIsAvHo6GWI5/wA2+bnMqdUO5vwFpOQJB12taITW3N1
	WtkmlzjCukZUPif2oRJ3yE5UWxferVuj9x/Kau9W9NJ+fsjoL2y1RFuJTlvNFcTPqAITY4STi4j
	aXX43deDJ9RpRjpcXtkCzY9IAKWaSFAoLAB2GPozP5XsXzj7e7do048Seaio+4/cJvXxFZ+RgR+
	ARmRAzhRWAk+rYRmvKurxsymgeVAFME1cktHb1bdNl4U
X-Google-Smtp-Source: AGHT+IHppMMkEW6WFB0HEo0ifxTYnk4oEPsIke/IUQFq16jbr9MVRxACLruWnHcI0AyOA5DYLrW7GjdWONuaMWC32sY=
X-Received: by 2002:a05:690e:1402:b0:644:60d9:867a with SMTP id
 956f58d0204a3-6466a8e7f1amr19754124d50.95.1766925796931; Sun, 28 Dec 2025
 04:43:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-10-3af3f3cd0f8a@riscstar.com> <0253c25d-f5fd-46f1-b4d3-ec56909d5eac@riscstar.com>
In-Reply-To: <0253c25d-f5fd-46f1-b4d3-ec56909d5eac@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 28 Dec 2025 20:43:02 +0800
X-Gm-Features: AQt7F2qXu9cqHVEnLlLdWdHISUhUuV8HhHEXXaEigmu6Qha30-fVIyENTL3svVE
Message-ID: <CAH1PCMa0NqZGQAknRZppVWUEBzKDE7tcega7bsT187+=wc-_YQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/13] dt-bindings: riscv: Add Sha and its comprised extensions
To: Alex Elder <elder@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Alex

On Sat, Dec 27, 2025 at 5:28=E2=80=AFAM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 12/22/25 7:04 AM, Guodong Xu wrote:
> > Add descriptions for the Sha extension and the seven extensions it
> > comprises: Shcounterenw, Shgatpa, Shtvala, Shvsatpa, Shvstvala, Shvstve=
cd,
> > and Ssstateen.
> >
> > Sha is ratified in the RVA23 Profiles Version 1.0 (commit 0273f3c921b6
> > "rva23/rvb23 ratified") as a new profile-defined extension that capture=
s
> > the full set of features that are mandated to be supported along with
> > the H extension.
> >
> > Extensions Shcounterenw, Shgatpa, Shtvala, Shvsatpa, Shvstvala, Shvstve=
cd,
> > and Ssstateen are ratified in the RISC-V Profiles Version 1.0 (commit
> > b1d806605f87 "Updated to ratified state").
> >
> > The requirement status for Sha and its comprised extension in RISC-V
> > Profiles are:
> >   - Sha: Mandatory in RVA23S64
> >   - H: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shcounterenw: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shgatpa: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shtvala: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shvsatpa: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shvstvala: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Shvstvecd: Optional in RVA22S64; Mandatory in RVA23S64
> >   - Ssstateen: Optional in RVA22S64; Mandatory in RVA23S64
> >
> > Add schema checks to enforce that Sha implies the presence of all its
> > comprised extensions.
>
> Like patch 7 in your series, I *think* what you're doing
> in trying to imply the presence of these other extensions
> is actually requiring all those extensions to be present
> *in addition* to just "Sha".  I don't think that's what
> we want.

I tend to think this schema check block should be removed. Conor expressed
similar design logic in his comments to my Patch 7/13 of v2 series.

If there is no objection, I will remove it.

BR,
Guodong


>
>                                         -Alex
>
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2: New patch.
> > ---
> >   .../devicetree/bindings/riscv/extensions.yaml      | 79 +++++++++++++=
+++++++++
> >   1 file changed, 79 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index ed7a88c0ab3b7dc7ad4a4d2fd300d6fb33ef050c..1066b7e65dab89704dbac44=
9db4aa5605c95b9d3 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -128,6 +128,57 @@ properties:
> >               version of the privileged ISA specification.
> >
> >           # multi-letter extensions, sorted alphanumerically
> > +        - const: sha
> > +          description: |
> > +            The standard Sha extension for augmented hypervisor extens=
ion as
> > +            ratified in RVA23 Profiles Version 1.0, with commit 0273f3=
c921b6
> > +            ("rva23/rvb23 ratified").
> > +
> > +            Sha captures the full set of features that are mandated to=
 be
> > +            supported along with the H extension. Sha comprises the fo=
llowing
> > +            extensions: H, Shcounterenw, Shgatpa, Shtvala, Shvsatpa, S=
hvstvala,
> > +            Shvstvecd, and Ssstateen.
> > +
> > +        - const: shcounterenw
> > +          description: |
> > +            The standard Shcounterenw extension for support writable e=
nables
> > +            in hcounteren for any supported counter, as ratified in RI=
SC-V
> > +            Profiles Version 1.0, with commit b1d806605f87 ("Updated t=
o
> > +            ratified state.")
> > +
> > +        - const: shgatpa
> > +          description: |
> > +            The standard Shgatpa extension indicates that for each sup=
ported
> > +            virtual memory scheme SvNN supported in satp, the correspo=
nding
> > +            hgatp SvNNx4 mode must be supported. The hgatp mode Bare m=
ust
> > +            also be supported. It is ratified in RISC-V Profiles Versi=
on 1.0,
> > +            with commit b1d806605f87 ("Updated to ratified state.")
> > +
> > +        - const: shtvala
> > +          description: |
> > +            The standard Shtvala extension for htval be written with t=
he
> > +            faulting guest physical address in all circumstances permi=
tted by
> > +            the ISA. It is ratified in RISC-V Profiles Version 1.0, wi=
th
> > +            commit b1d806605f87 ("Updated to ratified state.")
> > +
> > +        - const: shvsatpa
> > +          description: |
> > +            The standard Shvsatpa extension for vsatp supporting all t=
ranslation
> > +            modes supported in satp, as ratified in RISC-V Profiles Ve=
rsion 1.0,
> > +            with commit b1d806605f87 ("Updated to ratified state.")
> > +
> > +        - const: shvstvala
> > +          description: |
> > +            The standard Shvstvala extension for vstval provides all n=
eeded
> > +            values as ratified in RISC-V Profiles Version 1.0, with co=
mmit
> > +            b1d806605f87 ("Updated to ratified state.")
> > +
> > +        - const: shvstvecd
> > +          description: |
> > +            The standard Shvstvecd extension for vstvec supporting Dir=
ect mode,
> > +            as ratified in RISC-V Profiles Version 1.0, with commit b1=
d806605f87
> > +            ("Updated to ratified state.")
> > +
> >           - const: smaia
> >             description: |
> >               The standard Smaia supervisor-level extension for the adv=
anced
> > @@ -186,6 +237,12 @@ properties:
> >               ratified at commit d70011dde6c2 ("Update to ratified stat=
e")
> >               of riscv-j-extension.
> >
> > +        - const: ssstateen
> > +          description: |
> > +            The standard Ssstateen extension for supervisor-mode view =
of the
> > +            state-enable extension, as ratified in RISC-V Profiles Ver=
sion 1.0,
> > +            with commit b1d806605f87 ("Updated to ratified state.")
> > +
> >           - const: sstc
> >             description: |
> >               The standard Sstc supervisor-level extension for time com=
pare as
> > @@ -813,6 +870,28 @@ properties:
> >                   const: zbb
> >               - contains:
> >                   const: zbs
> > +      # sha comprises the following extensions
> > +      - if:
> > +          contains:
> > +            const: sha
> > +        then:
> > +          allOf:
> > +            - contains:
> > +                const: h
> > +            - contains:
> > +                const: shcounterenw
> > +            - contains:
> > +                const: shgatpa
> > +            - contains:
> > +                const: shtvala
> > +            - contains:
> > +                const: shvsatpa
> > +            - contains:
> > +                const: shvstvala
> > +            - contains:
> > +                const: shvstvecd
> > +            - contains:
> > +                const: ssstateen
> >         # Zcb depends on Zca
> >         - if:
> >             contains:
> >
>

