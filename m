Return-Path: <devicetree+bounces-243459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1727CC97CFA
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F1F3F4E06EC
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76AE3148B7;
	Mon,  1 Dec 2025 14:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lfhlw4OD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15641246BC5
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598735; cv=none; b=U4MeDTLq3VgYbSFV9J59UVMdwUuhDNsLKgT2JHfREH7S+Yz1h4orWCS9xlBXxWifEkjCUqq0eRiJ/YZ0MMdYU2a+70HQxBpGAHYtYrsNAW21ILFcccPOJ/todggYMZmzDSc5DgVimClCIzQXWsd8X7AIv2hgiL4+xVhBATMFwPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598735; c=relaxed/simple;
	bh=53LkXaYFrn3GVJ1cIaB3BFaBBqn6BqjYqqHvmEyC6b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MFq6fkPoaejhgSOTn/mdIGEbIJiH1X0mIEOzUn4KhzxDyWYxncUIGfwMEmRPd1w8UmOwQ5SA9GXX8oxs36za6UToh00wtXtScz2C/l1PrgqDxXi5mwZDdbTnlZCpgfQeGY/EYqkai8FBzlN3ghosi06ATijMZdes+kA4dhxlZ4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lfhlw4OD; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477632d9326so26435615e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764598732; x=1765203532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zrU/m1NsQKsXrrOPLuPzfw00NgfNm1183Aja3qoirBc=;
        b=Lfhlw4ODPByC4VhVMdASHQgH5s6JHY0SqbFAues7tvOzCm/T2iq8JVOeiHUbrgtA1D
         flVHHpZ8ENDR1gxKYRXdSh/rUpgEfbsC1rRtegOy+6amgR9WhMojA/uKMb/r7Lpun1RD
         rJL1ZfGxGcnDCPdqVNc4kTxjcagVnPGWfTbRQOVwnwUaCQKLaZ2jlvxxNpTJfhndxx89
         UU1dQefxusE/lo1KCFheOT8b9ElBJCV7hUCMlGJNQ7jySA7bUYB4+gX6HS+0audNe8/f
         lHvrL8gpbOK3piY4EWsVmga/RoSS3CrrEvQZLmxC06B5hFrOALvT9T4FSvItWbBE3D1h
         9gdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764598732; x=1765203532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zrU/m1NsQKsXrrOPLuPzfw00NgfNm1183Aja3qoirBc=;
        b=KaRrHYxgJKI/jGwgJrPv1a4JIvtZv0TjhmvFoKI13rVWSDfYdunIesfsfJEzGOmUWx
         yciK/ExwAPcju4bi8vLoieDV51fdmxBvFGtQrrGi1zA5e8E8/wyaLad9FdygJc6G/SWN
         UIzRY2tpE186J/hLO9R7YVBNWyNruwVkkuDvv+Ff7HrcPd10Hrk8tIwWH1TFVjLMbT8b
         D6k/MgyU/mZQGJKqDX43OxmVhG4+RJmfnfoI5ZzQVHQy1fhVSVps1LAHtPXOlieGA/iT
         v+1yaPxG4JMI1s80ECJ8y8/Jj0/LKRcbuk3QOE/rNFuy6KSn/75yrM6bfl2LNc64TjE6
         70gQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0Nya5G20BBlm8qe4OuqUVtkSmoSEbBfKB2tYyLigTqvtm25cfECVFXa9D9A96ui2Y300fYWCEz8We@vger.kernel.org
X-Gm-Message-State: AOJu0YxjnaxkXwcyIgyBHZjouBf6gOoVCGzUHuwkexK6LQkIGYP0Y55b
	OU0eefWzRI5i/eI6v7W/J546VR4bsn/8k80a8k1HElFvueNrI/k5VK+0
X-Gm-Gg: ASbGncu3+SpktQJ0vZirsIr7WVO8bTjqzy2MsZfcsJKKkt/0kdyFRDwJmyXMoxazafZ
	W7ttRDYiP4o3ASVeC9gpLiQOmCOQgcyEtdklrd2+x4goC1eJwXbGP/jGyGmLQAHRgkJr2dBSEuV
	g5MPSZ1668u1lWELL4ZB5M6y5mz1O1SV/cXmYiI35ZLiQcwjKYGPWznokQMBr00m/AtONCV/PTV
	+qqV5M19qxIpMAkdOkzPtZ9tU9zjKuuku3ZO6670lPbyxnfcvE17XE/AWonIyC7dJvtQhF6ZWjf
	bD76/6mA0VJnP7aS9JE+PpDADgLVzvk7VKfxsL2QMWDy1qneKqhB6QBBHoxTL+G5bXbfPGeQxS8
	kAjpxuA09/JrTcbB8KVxvEk6bkbYItIHUqfag/048hQ/BFZ1ilrpvdr6AvrAwMptNW5kGE4ljB8
	r6rhekgfuobnCs7mMU1TNC/tD4Rd1Oyx+lmWyh2vsufd3utYh3zHZ1bSnOY/ef6kd8rHtEDlzwb
	Q==
X-Google-Smtp-Source: AGHT+IEWJAy9TFAQ+VOIZ162KEF2lzriCvlTOGHOqCcNNfqx4TM96iV2z0z1mnsWDrSD2qljqTJPoQ==
X-Received: by 2002:a05:600c:46c3:b0:477:6d96:b3ca with SMTP id 5b1f17b1804b1-477c01743e2mr375540815e9.5.1764598732075;
        Mon, 01 Dec 2025 06:18:52 -0800 (PST)
Received: from orome (p200300e41f07e000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f07:e000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790ade13ddsm303266005e9.8.2025.12.01.06.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 06:18:50 -0800 (PST)
Date: Mon, 1 Dec 2025 15:18:48 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Svyatoslav Ryhel <clamor95@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Dmitry Osipenko <digetx@gmail.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 03/11] dt-bindings: memory: Document Tegra114 Memory
 Controller
Message-ID: <v6adntm5a3wxxxsmufd54t6pgmoj4njp63q362orkbeew6t3ef@7pfiz6ou7w77>
References: <20250915080157.28195-1-clamor95@gmail.com>
 <20250915080157.28195-4-clamor95@gmail.com>
 <20250922160040.GA92842-robh@kernel.org>
 <CAPVz0n3cmFC1PdFnLJ0Vf60i3c6pDO9Lvi8dmAHzBgwgsrPXnA@mail.gmail.com>
 <20250924152430.GA1735105-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cmjgfgew7ig24nkq"
Content-Disposition: inline
In-Reply-To: <20250924152430.GA1735105-robh@kernel.org>


--cmjgfgew7ig24nkq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 03/11] dt-bindings: memory: Document Tegra114 Memory
 Controller
MIME-Version: 1.0

On Wed, Sep 24, 2025 at 10:24:30AM -0500, Rob Herring wrote:
> On Mon, Sep 22, 2025 at 07:18:00PM +0300, Svyatoslav Ryhel wrote:
> > =D0=BF=D0=BD, 22 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 19:00 =
Rob Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > On Mon, Sep 15, 2025 at 11:01:49AM +0300, Svyatoslav Ryhel wrote:
> > > > Add Tegra114 support into existing Tegra124 MC schema with the most
> > > > notable difference in the amount of EMEM timings.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  .../nvidia,tegra124-mc.yaml                   | 97 ++++++++++++++-=
----
> > > >  1 file changed, 74 insertions(+), 23 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/memory-controllers/n=
vidia,tegra124-mc.yaml b/Documentation/devicetree/bindings/memory-controlle=
rs/nvidia,tegra124-mc.yaml
> > > > index 7b18b4d11e0a..9cc9360d3bd0 100644
> > > > --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,t=
egra124-mc.yaml
> > > > +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,t=
egra124-mc.yaml
> > > > @@ -19,7 +19,9 @@ description: |
> > > >
> > > >  properties:
> > > >    compatible:
> > > > -    const: nvidia,tegra124-mc
> > > > +    enum:
> > > > +      - nvidia,tegra114-mc
> > > > +      - nvidia,tegra124-mc
> > > >
> > > >    reg:
> > > >      maxItems: 1
> > > > @@ -64,29 +66,10 @@ patternProperties:
> > > >
> > > >            nvidia,emem-configuration:
> > > >              $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > -            description: |
> > > > +            description:
> > > >                Values to be written to the EMEM register block. See=
 section
> > > > -              "15.6.1 MC Registers" in the TRM.
> > > > -            items:
> > > > -              - description: MC_EMEM_ARB_CFG
> > > > -              - description: MC_EMEM_ARB_OUTSTANDING_REQ
> > > > -              - description: MC_EMEM_ARB_TIMING_RCD
> > > > -              - description: MC_EMEM_ARB_TIMING_RP
> > > > -              - description: MC_EMEM_ARB_TIMING_RC
> > > > -              - description: MC_EMEM_ARB_TIMING_RAS
> > > > -              - description: MC_EMEM_ARB_TIMING_FAW
> > > > -              - description: MC_EMEM_ARB_TIMING_RRD
> > > > -              - description: MC_EMEM_ARB_TIMING_RAP2PRE
> > > > -              - description: MC_EMEM_ARB_TIMING_WAP2PRE
> > > > -              - description: MC_EMEM_ARB_TIMING_R2R
> > > > -              - description: MC_EMEM_ARB_TIMING_W2W
> > > > -              - description: MC_EMEM_ARB_TIMING_R2W
> > > > -              - description: MC_EMEM_ARB_TIMING_W2R
> > > > -              - description: MC_EMEM_ARB_DA_TURNS
> > > > -              - description: MC_EMEM_ARB_DA_COVERS
> > > > -              - description: MC_EMEM_ARB_MISC0
> > > > -              - description: MC_EMEM_ARB_MISC1
> > > > -              - description: MC_EMEM_ARB_RING1_THROTTLE
> > > > +              "20.11.1 MC Registers" in the Tegea114 TRM or
> > > > +              "15.6.1 MC Registers" in the Tegra124 TRM.
> > > >
> > > >          required:
> > > >            - clock-frequency
> > > > @@ -109,6 +92,74 @@ required:
> > > >    - "#iommu-cells"
> > > >    - "#interconnect-cells"
> > > >
> > > > +allOf:
> > > > +  - if:
> > > > +      properties:
> > > > +        compatible:
> > > > +          contains:
> > > > +            enum:
> > > > +              - nvidia,tegra114-mc
> > > > +    then:
> > > > +      patternProperties:
> > > > +        "^emc-timings-[0-9]+$":
> > > > +          patternProperties:
> > > > +            "^timing-[0-9]+$":
> > > > +              properties:
> > > > +                nvidia,emem-configuration:
> > > > +                  items:
> > > > +                    - description: MC_EMEM_ARB_CFG
> > > > +                    - description: MC_EMEM_ARB_OUTSTANDING_REQ
> > > > +                    - description: MC_EMEM_ARB_TIMING_RCD
> > > > +                    - description: MC_EMEM_ARB_TIMING_RP
> > > > +                    - description: MC_EMEM_ARB_TIMING_RC
> > > > +                    - description: MC_EMEM_ARB_TIMING_RAS
> > > > +                    - description: MC_EMEM_ARB_TIMING_FAW
> > > > +                    - description: MC_EMEM_ARB_TIMING_RRD
> > > > +                    - description: MC_EMEM_ARB_TIMING_RAP2PRE
> > > > +                    - description: MC_EMEM_ARB_TIMING_WAP2PRE
> > > > +                    - description: MC_EMEM_ARB_TIMING_R2R
> > > > +                    - description: MC_EMEM_ARB_TIMING_W2W
> > > > +                    - description: MC_EMEM_ARB_TIMING_R2W
> > > > +                    - description: MC_EMEM_ARB_TIMING_W2R
> > > > +                    - description: MC_EMEM_ARB_DA_TURNS
> > > > +                    - description: MC_EMEM_ARB_DA_COVERS
> > > > +                    - description: MC_EMEM_ARB_MISC0
> > > > +                    - description: MC_EMEM_ARB_RING1_THROTTLE
> > >
> > > Like I said before, I don't think it is worth enumerating the list of
> > > registers for every variant. If you want to define the length
> > > (minItems/maxItems), then that is fine.
> > >
> >=20
> > It worth because position of value matters when reading and list above
> > provides a reference to the order in which register values should be
> > grouped.
>=20
> The schema does nothing to validate that. The only thing that gets=20
> validated is the length. It is just an opaque blob of data. I'm sure you=
=20
> have to define the order in the driver as well. One place is enough.

Hi Rob,

Sorry for being so late on this, but I just noticed that v4 had dropped
these items descriptions and then saw that you had suggested this. I
have always found the explicit mention useful because it allows DT
writers to know what to put into the properties without having to look
up a specific implementation.

If the DT bindings don't specify the order, then how do we guarantee
that all implementations agree on the order? While it's true that no
validation is done via the schema, the schema is the only specification
that we have for this. Without it there is no reason for an
implementation to pick one order over another.

Thierry

--cmjgfgew7ig24nkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkto8gACgkQ3SOs138+
s6HFVA//bOnUI5x0pMH+aZ0FS0k/qH/djSWzAvFTrK5cY0onr6xpH6+WvrUb8B4f
6uuehVHmVOVcMfPWrhJ24ydQsI3RJouP2ZgfRdW80gN6tRr3Sg7aLaM400HPTfiy
ueUNUSjMUQqRFKbR7YbuMk/F/t/yvgoNBDebzvHwzJV2mfpTXYWJpyUS4SY0hZOj
7Hav1nmXGi6hX6mU4OCwf6sChzMgATCGy6W6WQ1ka0R8tjyb6XG7zMkpWKFJxPvK
xAT+Sdzui7OCknvXtXknsGdhug4lpKN0A5eLqKtnzI5BQG7FFYsAuKubzVMLaprX
1iu3jNH59ZarofA8Rypgm2sUyFbl/yEJAmQlAt1EkZBXnXba/eV8SdmMZrwy6MzR
9TkEEmQMrYqZ/SFbR34KYmtQfGjx+POAbRVOzvLZxpNUKG4MTFkPTtoiX59gH4ta
p69j0xbLjYigBzDy4sJGtHVEjDyeB9x+3iJ0o9HeCwQqJ/BzaVTj/GD8BTsyzenu
A1d8osMl3Clhqa9MsFHe8nAHycCJDZ5XOvwIixcxkd1/jNOkzl5ZSP7a9rtGQjAg
0/UzrthuSEdMCWWpJImOw8LBrvBnEz0Fte+Gqz6cSblYEx8INoZlUwVoBPwt8ZWc
qfloinXffZgtWSXTOkd1OCRTBByFtK0K58IqeI4EI67oJ6BMzDU=
=0r9F
-----END PGP SIGNATURE-----

--cmjgfgew7ig24nkq--

