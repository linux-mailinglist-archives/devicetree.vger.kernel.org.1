Return-Path: <devicetree+bounces-184048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EA2AD2E13
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DD1916EBF0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C51278173;
	Tue, 10 Jun 2025 06:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AW0godgu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FA72206BE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749538136; cv=none; b=rwZHc1ICX3xSkCtmgZ3K3XMAt8FFRVWFRnMs/onv5/ZrzfNAPJ0ZDFuYe0pfVcBSrnlEd4kAPs474HIHMnULQkRD7nEKpU411tdGA2fFh9uQTn2XATcGHSFdPcWxlw8wNxjjR9zQ/xy/LV5NetUbuelFsBt21vA1iquRmAtgWxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749538136; c=relaxed/simple;
	bh=t76P3l/VjCEs9UkCvZilByfXHHh0JX8QGuxLZgXi3eE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S1gUtOADrPMYg7zXfmfsXdjalBV5r/ClHoPBcHlQYfRkyJaBVWocKLi1pXk9pkQkadjHtcE4BsHRbCaXPIS0RdX3XgAy5XZxPOaG3Xd6PoYT9IQXD4wEJFS9vScMzuBiFDqqmoElTaXgtx6sxOR8nlPk0UeU9LsoblGxfy3zKzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AW0godgu; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b271f3ae786so3430869a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 23:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749538134; x=1750142934; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uSAjnIfzbodsdWyJIJlgnunzj6AEInF/5u7qfcVepWY=;
        b=AW0godgugdk6LcXRPMq/fejhK0SZBbHpkrOtuDUR3cl8VcU1g8+6MqCBHdeHBXFjUq
         +/KKEosCvMYhBeL6O4WdJmOCiL0ox+wzqJAQwKX+NfQTfYEZKR9p3ddfbBbXirYeCG/L
         vFrxJ+G6b7fdvbLrssXvzpM9Olt/A9qWVdXHNUtAakNPSE8RuMUGmRryKEO9Tsz7sN5m
         dzLHC9JMXXxoq8fLxgKiHeRP5qsrX3+clD3m91SyGwHxbeCoHAzWedUA8Yo3YmZXJJX+
         K/U0wgmzsDwdVGwua2p7Al/K08b001H1FjenV4BOfrYvb5e2eyyCFiVUgfcmsqAKxSQt
         io4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749538134; x=1750142934;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uSAjnIfzbodsdWyJIJlgnunzj6AEInF/5u7qfcVepWY=;
        b=A7T9EswBBAgoYsckU+0q99CTvNA4L6jDJu1mIvZq74nqC/TuLD7mRnZmYq7LJ7X7vl
         Zx+nz0o2CSdUPk0evceBriIUUpZJIDF5UMBiJmprxz6hsQMckGD1KGiUvlR2RODR+dI7
         C3QYdLFuv+u61wCrQw4CwsYitLqqSzoh4/K8i67dApVVkGqUSgfFlo7lb0DI9sAHOavt
         jwD12s1t0CqFALuzyjNrnM3aQvY9bMqR7SOOQcmRCWs554/pDHHDg5GEDCtmTZfuyyiO
         737HfiDHpzCImkGMwWm4ru8ry41g0MBKAYuakH30WAvfBRLZbKPUFi8B2i8yTu8a1Ox1
         PjUg==
X-Gm-Message-State: AOJu0Yyy53WvkArzRjGGPmhCcif12o8TOBKjm7DNZ+kRoRvO1chOgfIL
	DpiARA3kNmsBPMN/pxW/aDwsFAkSBV4I2bJCIS6oWgVr4j0kIuEoIBlvRdC2XdQjUzlCfp4ObgW
	goC+FfuNapG/B7gmzoUqk3Gs50/VfnV5mmU6V
X-Gm-Gg: ASbGncuLQVmy8Qh8SH/5Z0YkKRoL3ARI29FbplTDBSAP4MQO1G4l474vtw0trt8MXHR
	Vt1zZ1Whl7lXs0l5UnECw0UjYviYH5qAbvXl4dPGZQS3QMvchVLSUaCmSGbYzwuFcWjbv6a1uHh
	q0acf0gJRDrjMvRs0TYs3yljMDxiPB3baTyKStJ+dVLNc=
X-Google-Smtp-Source: AGHT+IFOnn4DaTlyjzVHwLlBMN7Ol4CihB2Z0PxrBhsW84qkw76WAVJGY7YXHnfRxIC3TPZJqh/9ac2v9HkXvGTs2ig=
X-Received: by 2002:a17:90b:3c4b:b0:311:baa0:89ca with SMTP id
 98e67ed59e1d1-3134769f71cmr19855691a91.34.1749538133769; Mon, 09 Jun 2025
 23:48:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250608183745.126190-1-shankari.ak0208@gmail.com> <8b53a76e-cb6c-49d4-8369-c5fda9866734@kernel.org>
In-Reply-To: <8b53a76e-cb6c-49d4-8369-c5fda9866734@kernel.org>
From: Shankari Anand <shankari.ak0208@gmail.com>
Date: Tue, 10 Jun 2025 12:18:39 +0530
X-Gm-Features: AX0GCFv4HMbMfqrEsamVW00JOG3oqqqDydOm6cLAtUySDGBsK7r-Fy1ZB7R48SI
Message-ID: <CAPRMd3nwr6fqbeUVBNkAVK6RSz_fgh3X7g79C6vc9GvKXMzAFA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: misc: Add binding for BCM63138 BootLUT
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.


> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>


Thankyou, I shall use b4 henceforth and shall be careful of sending
the mail to the correct maintainers.


> There are bindings for this already, why are you duplicating them? Maybe
> you want to convert? Anyway, commit msg should explain that.


Yes, there's already a YAML binding for brcm,bcmbca which covers the
brcm,bcm63138 compatible. However, that schema doesn't account for the
brcm,bcm63138-bootlut node or its register region, which is used for
secondary CPU initialization.I=E2=80=99ll update the commit message to clar=
ify
that this is not a duplicate but an addition for a previously
undocumented subnode.


On Tue, Jun 10, 2025 at 11:50=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 08/06/2025 20:37, Shankari Anand wrote:
> > Add a device tree binding schema for the Broadcom BCM63138 BootLUT node=
.
> > This binding specifies required properties for the boot lookup table us=
ed
> > for secondary CPU initialization on BCM63138 SoCs, including 'compatibl=
e'
> > and 'reg' properties.
> >
> > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> > ---
> >  .../bindings/misc/brcm,bcm63138-bootlut.yaml  | 35 +++++++++++++++++++
>
>
> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.
>
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>
>
>
> >  1 file changed, 35 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/misc/brcm,bcm6313=
8-bootlut.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootl=
ut.yaml b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
> > new file mode 100644
> > index 000000000000..af4b879ba6bc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
> > @@ -0,0 +1,35 @@
> > +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/misc/brcm,bcm63138-bootlut.yaml#
>
> There are bindings for this already, why are you duplicating them? Maybe
> you want to convert? Anyway, commit msg should explain that.
>
>
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Broadcom BCM63138 Boot Lookup Table
> > +
> > +maintainers:
> > +  - William Zhang <william.zhang@broadcom.com>
> > +
> > +description: |
> > +  This describes the Boot Lookup Table (BootLUT) region for the BCM631=
38
>
> Describe the hardware not "what this document is".
>
> > +...
>
>
> Best regards,
> Krzysztof

