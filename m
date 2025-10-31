Return-Path: <devicetree+bounces-233724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62242C2504D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5333F3BD942
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9A334A3A4;
	Fri, 31 Oct 2025 12:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="fpIJ5k6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F86347BA4
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761913928; cv=none; b=Tg6ixZ0aYn5MPiWtsHVCoswRymIVzirqwJ9yfrkz/rynVct1U/eP9+LhjZeKXeQezPkm/b2+issgQecod2KK3RRtoDsyv1H+UT6CHEEv636cdjYtef4Ot9WJvjw9unF2eiD2urAByuGNuUOm7DLH/woSjpjTFjy1Hk0tXFoZR6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761913928; c=relaxed/simple;
	bh=EyUdF6niWEd87pLWTbZVjn7rdZe1vDwhwIQZCMaj54A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L5vz7z6vQYvvy+hPdV0sIjdrHl1Jn1kZUp12jQ1Jtasdzl3ClEbyNbSs5k4fCmrShf3UeILJ3zdcJszMfHekU3Wdu/4Rpd/Mqu5ob+U9OPR9pYDEghTUujnGYyr3lrkUFAgVI0vfq3APCPWBcyllCr1XDNI6G3VMnX6JHzMFGFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=fpIJ5k6j; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-443a4426899so28224b6e.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761913924; x=1762518724; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OlQXBrL6GJchLN0rsfCNDqviLGR3waoluveYLsj3WyU=;
        b=fpIJ5k6j+UjSLXI30bMS6EXrrW/4JKH/FEdXHbp2Xj35sEgQH6GH+Uj4P1aO/diTcx
         UA6KpJ06eI9WG39ygQX9prqjGuYZ8PSUS1A+XZDWFRlbfCiKJcumpfNXmrBm3+htAdPm
         H+wJ6ddgMQFgupf5uJcFBA7h1VxM4Fmd5TrPqnzbe4tRHovsH31mSS6s6hXKbcmg0WMo
         a21P8tQHOvmmnA66gXr2ta7wm3iTTZrbwPQD66K1CO3SXBF3oGi/I7oTLL3slsKcGORE
         AR7tJ30tP41Klm73MjOfo054a3fb9e2RASqpv63EmkX4BSTc8+1e0gJ8Btj/HOrv9PWs
         mXng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761913924; x=1762518724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OlQXBrL6GJchLN0rsfCNDqviLGR3waoluveYLsj3WyU=;
        b=PzpYab8kDb1+0QpKsPrXmr+SKYVAUbkp7p5rW7K8roKygAsbDqWvqjh/juU+jt47Kc
         KDkzamGwA6z9e1i8evO9QOLbxNnCHAQ+qxi48qJ6oyPaA72DAd5v8csnK5F7uhumt5Zc
         TlJy2qRj1/wsYfGjicwt78kacAAV7NXGFA0XeAqEfHfpET1RkJUv0NURok+8crYQOrn2
         wP8wpr4DRP3TzB51e4AdMtTMKM2XHobYJKSSlT8jjdsAF8LUrxM6kX0DrX9inJKFCffV
         HW34WCauAHfF52kJyXXx0BKmsABDq00q6IzohgBkYq+P9anwLHEu1yY2DmxsAANl98s4
         HMVg==
X-Forwarded-Encrypted: i=1; AJvYcCVzcOMqGWgaco7ebHHs0q1RRpNP3VBPeqfb/FaeOyk2jKh5OMVETP8KiPCL5pZEqyo8eFrdpfi/sD3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxX/uxWW0pTqsc+MkpBFTW0phAaLcXgSOK08/g8dIyABNnAIYhC
	yPBRMsk2VE5LzN/bSNp1wr7qwiAAe9+Bs56jYnZbdQ1CP+wgxDs7E57NQhNG+9hGQyRiZV75IS7
	I0jLn/XXv7k8jaafYmLGHqforsWzc2THsGnNqKJen
X-Gm-Gg: ASbGncvoOffv4WfnVZw6YiIe0UmrQ8FI9SJzomq9aHVwdekcY6wJ4hDc+3xyrph92HP
	pTrdLkW6fRavR/sYDluYn0H2Oq1vdoeB9g4zQpf6ABbfMTbsA1uOEFZuONirMToXoXRoeLPq9cz
	kc116pNr5PBrUJ4BS97sKTvVJ+zLG30WZTgLGj2oY2n5yJWzzx5Bqg5cnMSzh2ZH40xQNxguWJG
	SlRowSe3FslvHqfz7REZLCQSjh6cnvIdlKQCCVb2yinhd2IYOOH0v44STi0gA4+HiGf6qnbAVi+
	8xQNCJJUkLgOI1RD
X-Google-Smtp-Source: AGHT+IGYh3c4p7Lro2vb/Mmkwo7ehq0fLSmv/FWy9Te4d7O0xi13T47Zh+2e4+y9v1m45TtVgV5OLaRslqisajSlViY=
X-Received: by 2002:a05:6808:1813:b0:443:9fe6:3bbd with SMTP id
 5614622812f47-44f96061dd0mr676165b6e.8.1761913923931; Fri, 31 Oct 2025
 05:32:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031084101.701159-1-adriana@arista.com> <20251031101009.704759-1-adriana@arista.com>
 <20251031101009.704759-2-adriana@arista.com> <CAL_JsqJn+vG=FJEnBT2rMQ9Jf+JE2u_j-JpEb=mnWPuTsuz_4w@mail.gmail.com>
 <CAL_Jsq+421HUCRQB5ua9p2UBPi+sq8L0aSYpxVGgJpbpWu2MUQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+421HUCRQB5ua9p2UBPi+sq8L0aSYpxVGgJpbpWu2MUQ@mail.gmail.com>
From: Adriana Nicolae <adriana@arista.com>
Date: Fri, 31 Oct 2025 14:31:52 +0200
X-Gm-Features: AWmQ_bkNOnWH29heQ4utX5bqmSvBneb1mSwkOXqgWEYTPI_SWMnLMKu6rap9SuQ
Message-ID: <CAERbo5x3_+RVRsxY-BZseBPzR0Kkvn7SaSSdoC6fw8a5s5RtUA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: firmware: Add binding for SMBIOS
 /chosen properties
To: Rob Herring <robh@kernel.org>
Cc: ilias.apalodimas@linaro.org, ardb@kernel.org, trini@konsulko.com, 
	krzk@kernel.org, jdelvare@suse.com, frowand.list@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vasilykh@arista.com, 
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org, 
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 31, 2025 at 1:43=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Oct 31, 2025 at 6:15=E2=80=AFAM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Fri, Oct 31, 2025 at 5:10=E2=80=AFAM adriana <adriana@arista.com> wr=
ote:
> > >
> > > Signed-off-by: adriana <adriana@arista.com>
> > > ---
> > >  .../firmware/linux,smbios3-entrypoint.yaml    | 25 +++++++++++++++++=
++
> > >  1 file changed, 25 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/firmware/linux,=
smbios3-entrypoint.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/firmware/linux,smbios3=
-entrypoint.yaml b/Documentation/devicetree/bindings/firmware/linux,smbios3=
-entrypoint.yaml
> > > new file mode 100644
> > > index 000000000000..4d1521c685ff
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/firmware/linux,smbios3-entryp=
oint.yaml
> > > @@ -0,0 +1,25 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +# Copyright 2025 Arista Networks
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/firmware/linux,smbios3-entrypoint=
.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Memory location for SMBIOS entry point
> > > +
> > > +description: |
> > > +  This property is used in the /chosen node to pass the physical add=
ress
> > > +  of SMBIOS (System Management BIOS) or DMI (Desktop Management Inte=
rface)
> > > +  tables from firmware to the kernel. This is typically used on non-=
EFI.
> > > +
> > > +maintainers:
> > > +  - Adriana Nicolae <adriana@arista.com>
> > > +  - Rob Herring <robh+dt@kernel.org>
> > > +
> > > +properties:
> > > +  linux,smbios3-entrypoint:
> > > +    $ref: /schemas/types.yaml#/definitions/uint64
> > > +    description:
> > > +      The 64-bit physical address of the SMBIOSv3 entry point struct=
ure.
> >
> > This needs to go in the chosen binding instead:
> >
> > https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/=
chosen.yaml
>
> Also, drop the 'linux,' prefix as SMBIOS is not a linux invention.
Thanks! I've renamed it to "smbios3-entrypoint" and opened a separate
PR for the binding:
https://github.com/devicetree-org/dt-schema/pull/177
>
> Rob

