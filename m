Return-Path: <devicetree+bounces-264353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLbON8kRi2nSPQAAu9opvQ
	(envelope-from <devicetree+bounces-264353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:08:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 431BB119FEA
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F50E301225B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B51334216C;
	Tue, 10 Feb 2026 11:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L0cvQr19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61B234CFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770721721; cv=pass; b=r2PvrBpNfE63BpUx7wjgYYmFNkNJZc79hJdkyot0u23jy0kNHSykXlzEcSikwzV7oOPwSghniipQOfdQphjJI+Z9t+3buybk9Db6Czq8BWZdbn/oKc09WikbRhFKvpFl3BP0gBwnTiaZCU+Mdf5EH7DV4Ark4c2kb0rC9MsyoeA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770721721; c=relaxed/simple;
	bh=DnsV4kdqPf78qKYVoTe/TUUjv7824SUtaxVS44yRLuA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lTwoMqdACZiXirwpghQakYhoYKv9lkd5vVQ2vi6VSjDZ2uaXRISD3uPMVu2A0pycQjvm3SHGGQuV3WLnoxvWH7+24kO/5RO7eU5pMUl628o6nEACcT1GpWelwI/6a3IuUbYpKr3rSH29I6MeOnX5WQY2J21oL6DFbEn3i1YWpvA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L0cvQr19; arc=pass smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4359108fd24so3480220f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:08:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770721718; cv=none;
        d=google.com; s=arc-20240605;
        b=QQysCAO2KfhhEoL3DHR290gjMFaVcprbJ+FrFnXZWv1VzRvm/Wp/rfis0YT//APXsI
         D/KhMvvfkCGv0XoTTwrTd9hgLUPFeQLxr0yfWLYZgz8ZQcMPr/rp08Lx/2YMdO9vOSUv
         wqmEXJ0E8Qb+fCLD9OdtIlpb9VOsDxa9al8QyuiNXHrz6o2KhKEyEiNHD3JBXwytmU9t
         eX6iLemQmszZ3aFga+V3o2yFqJG3E8Zhl/D9FbjkjdBim4/L7bQTph97yakSPnVUXkbu
         t0uEAfjEtiMaaF0uNYJRj5E+O6X3JhajvAHR23ghYFKg9KOi6/qIyaoIcVRfO+IKVn1q
         VL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BJ6krYUCPVWLKmyB26g/CoPtPWOTOugrzVrcwkwqGB8=;
        fh=ktu7v9C1qE4y5bvd2cnSDp9NrG8YJSN8s938/J0zOQ8=;
        b=B14Z7nWsrwlsLfTzZd0qc4LQH/x9sh7ijbXanvlLsfou1MtYukXYKqUi9zkHChg5Yb
         /ampgBzbtyA6eGL8vEQEDvGtA5WJrcLpx2htUBAN8k7Oo2tlyGqcEhptOGGZE8hAVlsp
         7mxOtKUIXBRa6OI2D3TVpe2cQR8iLU2uUEHR7jA6SXsj8JU79UArJwVeiGDIL22cYwCC
         5bCHEuEbgI23X/w0JcY8rJEzWAYEHI+7bl/dQiUB4fpOH/wv+wzM+aTmnF7mN9xPQZJB
         0YOvyPU9ohf2MBhN13wB11WQKJsL54R0T5gihpECDtaF+LxKae0diXMko7Xo9dOV6ZYC
         9k3Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770721718; x=1771326518; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJ6krYUCPVWLKmyB26g/CoPtPWOTOugrzVrcwkwqGB8=;
        b=L0cvQr19hY9VW5mKzGZJ/o1vKWSBpOGi2hfnXJbiDRdYxGOJIk53nIh99jgunNfmLM
         2TJXWWOJov6iYeMExb5WSZDXDrA48y3HSkb3/I8zittTabOsHxzSMHCvwpHt0Tlg79Hf
         uY2kw7+GwlR3z74bZS7CTH0O7Kvw2wybgVi+HDYHEX6ZgT4gCW0Si5wZmw2SekwiI8Lq
         RDEr0YZPCwMUb0fbMoB/YGmP+4mlh/+xIW3jLMucyRSJHZMOB8m9F2EicFRY8ne72tJS
         lD5Yf16xZl+YoagE6d/iRURAAKpODqnDcZ3mjzfGbKK9q1UohEGEzDCsGF/YaUsi/RAC
         pkXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770721718; x=1771326518;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BJ6krYUCPVWLKmyB26g/CoPtPWOTOugrzVrcwkwqGB8=;
        b=mrsffA2LIfCHBJlwzpd/md3lnOX9YWXakGynOUYQcbbjyDBodfFiwE0e0X39ebKFpI
         0pGO/BEmPpJKY+63Ig5iklyzrAt6yEGdtrJ01DNUAN4tCDjRBjAdd7uXOgFrXI2qf7fA
         5OhE67IMRz+HS1e9o0zUfoAFnFb2+l+X07ZIqryc+dKnwAPSNR51DXS8eKnfbmhDNhAn
         DRKJHIu2ISZMng68SHZUyZ91Ly3+Y1iOLbybSzBByZ02VLN2Yjsl0IAbS0Qbj6pL4vw4
         c5eLtm63d8U4NrF9YnW/XJhmQDFCGKeogFTv358ZFVs/CcPEO8ZSIXcUNugvig6//x1o
         2Clw==
X-Forwarded-Encrypted: i=1; AJvYcCXgYweb6ln9BFDX32DFhfYwteW7RXp5qv3t9wmQEuHQxrJTG6moE2UspzJBoJWc9MvIMLUo2LLu9aDb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4fjvJrL+2tq8252LwDu+XIfUWupMyJPb8mb6D9aPZCShQCv8Z
	QQSCT09FKx4Qb5MPGXTpAH4YyvllteMs6ZA6GZ4A9YuGZHVCXqJiDLimWTPMa8ekhiNmtoztPwP
	f5v9NoqGeKjgvwZdeAHvTcU9a6VGD/o8=
X-Gm-Gg: AZuq6aKR6/DJLJMB2UK19eEYFAuxnnXR6rHw8LIZRo76GJag55uRhwVvgwcqWAWZspK
	NKOfShAC3frsVhuW86zDSeAkPEN4TosfI4mwYMhmN7nge7bYur+pAeAL+2PaIKO/5/bmAgp/6tz
	4ijCrEEjMoJViedfBAmhJpk7TQ8qBpxoKZZye3jBeE/0w8qtGxejkfyNalA5uCFirGiKqdE2q1f
	4DFMNszMUj9IIvWcfsljDEuBov3awU8RDthH3/eE752+W9gTgtuFugfdE+HLtMNuVnikNqBL2Kt
	GevRNNhx
X-Received: by 2002:a05:6000:400a:b0:435:729b:c390 with SMTP id
 ffacd0b85a97d-4362968a6c7mr22308855f8f.47.1770721718045; Tue, 10 Feb 2026
 03:08:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-2-clamor95@gmail.com>
 <20260210-hidden-swinging-galago-fdcfa3@quoll> <CAPVz0n3Pzvzt+LmOH_peCtpx8DP2-GiRv--6-ppQUaa51AXRFw@mail.gmail.com>
 <e73d6634-7f31-4dcf-87dd-c8192e7e66c1@kernel.org>
In-Reply-To: <e73d6634-7f31-4dcf-87dd-c8192e7e66c1@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 13:08:26 +0200
X-Gm-Features: AZwV_Qhhw-p8mspFJSHcPKgZtzcZfKKnKUimZu9snSZVDGxYLnU4WrmfgQmZu2E
Message-ID: <CAPVz0n1o9vpCfbgFhLOKC4mj30js-P-0ptMsZxHTFPjFDB=Y9Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: misc: document ASUS Transformers EC DockRAM
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sebastian Reichel <sre@kernel.org>, =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264353-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,devicetree.org:url]
X-Rspamd-Queue-Id: 431BB119FEA
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 12:50 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 10/02/2026 10:42, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 11:25 =
Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On Mon, Feb 09, 2026 at 12:43:59PM +0200, Svyatoslav Ryhel wrote:
> >>> Documenting an I2C device used in conjunction with the EC on ASUS
> >>> Transformers. The main function of DockRAM (the name used by downstre=
am
> >>> ASUS sources) is to provide power-related functions, such as battery =
and
> >>> charger communication. The device is exposed as an individual entity
> >>> because multiple embedded controllers can utilize the same DockRAM
> >>> instance.
> >>>
> >>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >>> ---
> >>>  .../bindings/misc/asus,dockram.yaml           | 40 +++++++++++++++++=
++
> >>>  1 file changed, 40 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/misc/asus,dockr=
am.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/misc/asus,dockram.yaml=
 b/Documentation/devicetree/bindings/misc/asus,dockram.yaml
> >>> new file mode 100644
> >>> index 000000000000..0cfde619ba01
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/misc/asus,dockram.yaml
> >>
> >> Not a misc device. Find appropriate place, e.g. for EC or docking or
> >> laptop devices or power-related.
> >>
> >
> > Why not misc? be more specific pls where you want it to be.
>
> Because there is no such device as "misc". Otherwise explain me what
> sort of device is "misc".
>
> I already wrote where I want it to be placed. You keep bouncing
> questions pointlessly, even when given exact request.
>

Among your list only EC exists. There are no docking or laptop devices
or power-related. Hence asking.

>
> >
> >>> @@ -0,0 +1,40 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/misc/asus,dockram.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Asus Transformer EC DockRAM
> >>> +
> >>> +maintainers:
> >>> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> >>> +
> >>> +description:
> >>> +  Dedicated i2c device used to provide power related functions of th=
e
> >>> +  embedded controller used in ASUS Transformer device family.
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: asus,dockram
> >>
> >> Way too generic compatible. You are not documenting here all ASUS
> >> laptops/devices dockram. For example this implies dockram is also on
> >> ASUS Vivobook... or on any other asus device.
> >>
> >
> > Asus were not so generous to provide more specific data, they call
> > this device dockram in their sources.
>
>
>
> >
> >>> +
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +
> >>> +required:
> >>> +  - compatible
> >>> +  - reg
> >>> +
> >>
> >> Device looks weirdly empty. Probably you have it only to instantiate I=
2C
> >> handle, so what you really wanted is i2c-parent. This is not a real
> >> device.
> >>
> >
> > WDYM? it is a real physical i2c device located on a i2c bus and probed
> > by i2c driver just fine. Maybe you will deny RTC being a real device
>
> Driver does not matter here.
>

It seems that you see a "forbidden" word and tear it out of context.

> > like it was done for example for max77663 which now causes a massive
> > issues since it can occupy different i2c addresses?
>
> Then describe what is the device here. So far it looks exactly like
> "ec-dock" for which you already have a binding.
>

Wrong, it has nothing to do with "ec-dock" specifically. It is has a
pretty discrete description. It used to provide power related
functions of the embedded controller used in ASUS Transformer device
family. To access to battery stats, charger status, leds control. Can
be used by multiple controllers at once (like on TF701T or TF600T)

> Best regards,
> Krzysztof

