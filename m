Return-Path: <devicetree+bounces-100597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 981C296E332
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD2B5B22F71
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 19:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E0B18FC92;
	Thu,  5 Sep 2024 19:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="gtZOIbrl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFF418FDDC
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 19:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725564525; cv=none; b=MW0nBHhEIbe4ITNyqftmLT0VIlsdU+i5F3PxG14dMiU3fS/LxpY1nzI9XRKjmCBfapFj1eW6aNddF38Gs2ybOTOSfR4ElLF7zcOvP76lHdoqWThwJScqGb7mimqa0jSH6dHubk6cPZ3+wnyIzT2mpu6LCj0jrIlIlqVCGSLibBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725564525; c=relaxed/simple;
	bh=WvvRIAchHTgx9AszaigUyTddxIvpgj+KTH4kVn//3gI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CgXo7EANnklJT1CLl24bs7WHvoFSa3xrDeMSHQLwPkgGvfJUstwvT9mYWC7r5+4q+qvm1EqTkB7XwaLhTAGzf1B196YsMSl9M9Bs1MgNzoorda0PTFddqqU42FUtWlaoYdnxwKS3ldHEO4J2NH+pVEyM5C7O/9BdTOHsPTMPf1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=gtZOIbrl; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e1a90780f6dso1323070276.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 12:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1725564521; x=1726169321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Go+67n0E40w/g44TCtc6B7oRNLAWnm1s90K7rPS0GRI=;
        b=gtZOIbrlh1tm8mof61N7vak4yjVjHqyIe8PI1kNTldD7fR3Wl+WtoBqWSjwkJTEPPS
         tOdf8cEeOaEfUUP0JmqAjhMa8SpkF0ZY5Wx/hgbzbFbYqTAWuqUJifxjn8ny65RJ3PYn
         O3UhrnBRXDmazvcz9HDiNHnx2yAGdjmCru/xA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725564521; x=1726169321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Go+67n0E40w/g44TCtc6B7oRNLAWnm1s90K7rPS0GRI=;
        b=fxiYDPDd4jvUDVic/2xTKVDKeBi2aFwQSBhQ5U4pO5yQZXHi7yBC+hUnoxeTPTf9QX
         ZGSbH2VXjc1jhfvO5nSEvQWsVRyEXaBmwgoKrZ2FhbSgk6N1pZeLSQu4xIcAvB2Gy1vl
         iWpmLlt/obCkpKFP3ZRiK8bz002hTd7dXmnHkvDxH99Bype/XnEd/xFch/xpcNe3IWGi
         6f+folZa5yKyYxdpURcTQN/Q4AYy97CAMWRannLZX3DrVvldMNP3A4UgHUy5lOCyrQWJ
         bgBqi3k79dJfyhtqGgskF8jAIPL9mL/9m0tQg9k4s3uT/cVOYNEQBUjjdJHtLTAHDcEr
         BPJA==
X-Gm-Message-State: AOJu0Yzt1a+VWGwrOlrQHqP12O2leTFXcmk8x9zzfvPNg+2eDN0Koeta
	7fTeRYRkvvtiE0Vzza18O+VHjXUT06hbHEz5WsX4kFkPHZwCKFFjZ+A17+EQjNsbhingGI4aMpo
	78w5ZFtmzIXZVQTc3Dh0qMGbIBkK56bUBTILYBQ==
X-Google-Smtp-Source: AGHT+IEX3mYKMgmBKOOilfv82E98njDFKqj0VVWX9DN2nuIpqge5jf8s80/yegjIXc1LkO29eB7nld1dzrGatzzVTLE=
X-Received: by 2002:a05:6902:188b:b0:e0e:499f:3d88 with SMTP id
 3f1490d57ef6-e1d3489b049mr365547276.26.1725564521546; Thu, 05 Sep 2024
 12:28:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905150910.239832-1-pavitrakumarm@vayavyalabs.com>
 <20240905150910.239832-2-pavitrakumarm@vayavyalabs.com> <20240905182345.GA2432714-robh@kernel.org>
In-Reply-To: <20240905182345.GA2432714-robh@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Fri, 6 Sep 2024 00:58:30 +0530
Message-ID: <CALxtO0mkmyaDYta0tfx9Q1qi_GY0OwUoFDDVmcL15UH_fEZ25w@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] dt-bindings: crypto: Document support for SPAcc
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, herbert@gondor.apana.org.au, 
	linux-crypto@vger.kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, bhoomikak@vayavyalabs.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Rob,
  Thanks for the review and feedback.

On Thu, Sep 5, 2024 at 11:53=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Sep 05, 2024 at 08:39:10PM +0530, Pavitrakumar M wrote:
> > Add DT bindings related to the SPAcc driver for Documentation.
> > DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> > Engine is a crypto IP designed by Synopsys.
>
> This belongs with the rest of your driver series.
PK: I will club this with the SPAcc driver patch-set.

>
> >
> > Signed-off-by: Bhoomika K <bhoomikak@vayavyalabs.com>
> > Signed-off-by: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
>
> There's 2 possibilities: Bhoomika is the author and you are just
> submitting it, or you both developed it. The former needs the git author
> fixed to be Bhoomika. The latter needs a Co-developed-by tag for
> Bhoomika.
PK:  Its co-developed. I will add co-developed-by tag for Bhoomika in
all the patches.
>
> > Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
> > ---
> >  .../bindings/crypto/snps,dwc-spacc.yaml       | 79 +++++++++++++++++++
> >  1 file changed, 79 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-s=
pacc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.ya=
ml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > new file mode 100644
> > index 000000000000..a58d1b171416
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > @@ -0,0 +1,79 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto=
 Engine
> > +
> > +maintainers:
> > +  - Ruud Derwig <Ruud.Derwig@synopsys.com>
> > +
> > +description:
> > +  DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto En=
gine is
> > +  a crypto IP designed by Synopsys, that can accelerate cryptographic
> > +  operations.
> > +
> > +properties:
> > +  compatible:
> > +    contains:
>
> Drop contains. The list of compatible strings and order must be defined.
PK: Will drop it as the SPAcc driver is using just "snps,dwc-spacc".
>
> > +      enum:
> > +        - snps,dwc-spacc
> > +        - snps,dwc-spacc-6.0
>
> What's the difference between these 2? The driver only had 1 compatible,
> so this should too.
PK: Will fix this to "snps,dwc-spacc"
>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    maxItems: 1
>
> No, you must define the name. But really, just drop it because you don't
> need names with only 1 name.
PK: Will remove it.
>
> > +
> > +  little-endian: true
>
> Do you really need this? You have a BE CPU this is used with?
PK: Its a configurable IP. Can be used in little and big-endian configurati=
ons.
       We have tested it on Little-endian CPUs only. (Xilinx Zynq
Ultrascale ZCU104)
>
> > +
> > +  vspacc-priority:
>
> Custom properties need a vendor prefix (snps,).
PK: Will add vendor prefix.
>
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Set priority mode on the Virtual SPAcc. This is Virtual SPAcc pr=
iority
> > +      weight. Its used in priority arbitration of the Virtual SPAccs.
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 0
> > +
> > +  vspacc-index:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Virtual spacc index for validation and driver functio=
ning.
>
> We generally don't do indexes in DT. Need a better description of why
> this is needed.
PK: This is NOT for indexing into DT but more like an ID of a virtual SPAcc=
.
       The SPAcc IP can be configured as virtual SPAccs for
multi-processor support,
       where they appear to be dedicated to each processor.
       The SPAcc hardware supports 2-8 virtual SPAccs (each vSPAcc has
its Register
       bank and context-memory for crypto operations). The index here
represents the
       vSPAcc to be referenced.
>
> > +    minimum: 0
> > +    maximum: 7
> > +
> > +  spacc-wdtimer:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Watchdog timer count to replace the default value in =
driver.
> > +    minimum: 0x19000
> > +    maximum: 0xFFFFF
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    spacc@40000000 {
>
> crypto@40000000
>
> > +        compatible =3D "snps,dwc-spacc";
> > +        reg =3D <0x40000000 0x3FFFF>;
> > +        interrupt-parent =3D <&gic>;
> > +        interrupts =3D <0 89 4>;
> > +        clocks =3D <&clock>;
> > +        clock-names =3D "ref_clk";
> > +        vspacc-priority =3D <4>;
> > +        spacc-wdtimer =3D <0x20000>;
> > +        vspacc-index =3D <0>;
> > +        little-endian;
> > +    };
> > --
> > 2.25.1
> >

