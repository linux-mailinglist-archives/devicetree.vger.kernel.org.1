Return-Path: <devicetree+bounces-181554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D88BAC7E8A
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2DAD3B4D37
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB605225407;
	Thu, 29 May 2025 13:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vg5K71Ra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBCEA95E
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748524660; cv=none; b=XscgDclLa0+4XqhHqGbEYo6qk5PKDRAE5eS74icG+PwQ4gWNCRGG//BZO7SZHl0wcfWIvetA7SlLVDEmiO/M3zrQ+Sugq8pbMd3WAGPyYrXrrqHrOIVjF/204Yhvq/FKfN3Bz/Os36tIk0Q2WvzO2WbOc9INOVtD0sKK5h7Q/XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748524660; c=relaxed/simple;
	bh=GOkt5yDdidXHbFaA/H5wtMl1jkL32V2Srw3qR/P+i6M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BohhvUY0pwfEHP5DeueEh7xHUlsTzYzNlU4fPT4C1yKa1Gjx0p4wj08y9bzldyhBVTIOuxNsKnTZQ8zz1nvnUGjD4lYMobbLZvdByfNe9uyZMPasuWpx5h5jjkI/eRPucDT4ef5BumpfVV/eBab8QzqZrB4cJpPYcZxAiTpAMyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vg5K71Ra; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-70f31433d96so9511927b3.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748524658; x=1749129458; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LRoGRMBV7PqtgKTAeThep6xLjkOzYN0wpsMcbJOtKx4=;
        b=vg5K71Racq09Kn0TNChtFoduf5yjNz8+RZVkek9oY2At0P/qlE6sHJIX2m7oUBE9b8
         TEG1ymI6QpXkzxSurjQo+8IKi8nvhpSYuZWzIf2R9Jz21as6jigXxkFSxWT4gq7iXxUG
         JqudrlJiAZTZN6DGh2ts5t4PnIewE3tWQpjmsLp/qS49LxEkzrGwL73CGOP1MK9RPTcA
         yk6+Zh/5RDd1Z2UVGB/HNsxU9QelkJqKu47fYb0npP7eB84tLRzmw7P4thA2GRO0ms65
         YCjRGie3NHOfS+A6iEckpqb8pmvtk7Pk6pswHlIXs+/6+at3RtAlNemwbN+qYSIUpUeo
         Mwvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748524658; x=1749129458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LRoGRMBV7PqtgKTAeThep6xLjkOzYN0wpsMcbJOtKx4=;
        b=MGmDn6wMXH86XqTCmPkK2cQW84feLtEK/B9LvF6uzFlpcycsOtqbP41aT7LVFOSn2T
         CyYJW1JqZ0TnE3vRc/G8FZ9GWpkE3DPX886QruL+u/7lU5ymgILBRqjVV7Ch320YwGUO
         2Q9WFs2vJ8bgsgB/iNG3kRcZpVB7Scxi7KoP8XV4GJO3vOk99hjshH/kuco16qgdxxGV
         Ix5ImKsVMSZOphVQGpgtUPVrRodaZ3KJq1Tj/wdvJ/exVD+MaN4mW5ErWnanC44tdjOM
         /W5LvBD2CjhGIfS8OiBsejMNQj2K7DRZJa5Omj4ONafFxY//h0T0HH022ecbabjgsehD
         NtJA==
X-Forwarded-Encrypted: i=1; AJvYcCUMn8W860RDsMiSz5gAqfGITH3csNaml6bhCS1INSHdNx2u6vHuvKSislIb4P+ckWB1222JrszxljVS@vger.kernel.org
X-Gm-Message-State: AOJu0YxRM11YKThR304VEB6DXOjiiPB1eyqdWbNHZCX+DvyMQr5xmmSG
	ETo9QhveKl3bEHxJTBNbAEmUibLPCsY4VltdwM0l5R18eOTU+P3PnwTYgI7ED+KAm/m/vzFOpbs
	SD0+5LqaiUcS5WT6W4OPkiC3PmLbhuJIX1Tw3KZtb/A==
X-Gm-Gg: ASbGncsAxU963U84NAS0kVo0ea7R/p5b0oV3k++/Uk/CoK6GqC0/mVQcKvdAUtBXitc
	D0tyt5Iqk6CYweIGcccxUMHZqyOrbEsbbdnwETTTbGjEqqMLOWPDgzUViaeNAaJedMYR/f0cUgT
	Vzl0UkCNN8HL+O/d2CKsG6K4lqKnlopFHepA==
X-Google-Smtp-Source: AGHT+IFmyl1zNSP/1T1Fu+Ipq6e7NtBsNPd9Sq1kBRpXHvD2CvYn2FtBpyWhYLC/DqeY2/E2ImvPRZWBInKH8wClwcU=
X-Received: by 2002:a05:690c:6905:b0:70e:2cba:868c with SMTP id
 00721157ae682-70e2d9a6cb3mr318642537b3.11.1748524657490; Thu, 29 May 2025
 06:17:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250513-gicv5-host-v4-0-b36e9b15a6c3@kernel.org>
 <20250513-gicv5-host-v4-1-b36e9b15a6c3@kernel.org> <aDhWlytLCxONZdF9@lpieralisi>
In-Reply-To: <aDhWlytLCxONZdF9@lpieralisi>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 29 May 2025 14:17:26 +0100
X-Gm-Features: AX0GCFttNUvo5SsO8pMKnRvfFUtx-_6vAOX9kBCeKJ98X_-miBgBYJmCbmILETs
Message-ID: <CAFEAcA_3YLMSy+OsSsRayaRciQ1+jjh-dGzEjrh2Wa8BqdmqrA@mail.gmail.com>
Subject: Re: [PATCH v4 01/26] dt-bindings: interrupt-controller: Add Arm GICv5
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, andre.przywara@arm.com, 
	Arnd Bergmann <arnd@arndb.de>, Sascha Bischoff <sascha.bischoff@arm.com>, 
	Timothy Hayes <timothy.hayes@arm.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jiri Slaby <jirislaby@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 29 May 2025 at 13:44, Lorenzo Pieralisi <lpieralisi@kernel.org> wrote:
>
> [+Andre, Peter]
>
> On Tue, May 13, 2025 at 07:47:54PM +0200, Lorenzo Pieralisi wrote:
> > +      reg:
> > +        minItems: 1
> > +        items:
> > +          - description: IRS control frame
>
> I came across it while testing EL3 firmware, raising the topic for
> discussion.
>
> The IRS (and the ITS) has a config frame (need to patch the typo
> s/control/config, already done) per interrupt domain supported, that is,
> it can have up to 4 config frames:
>
> - EL3
> - Secure
> - Realm
> - Non-Secure
>
> The one described in this binding is the non-secure one.
>
> IIUC, everything described in the DT represents the non-secure address
> space.

The dt bindings do allow for describing Secure-world devices:
Documentation/devicetree/bindings/arm/secure.txt has the
details. We use this in QEMU so we can provide a DTB to
guest EL3 firmware that tells it where the hardware is
(and which EL3 can then pass on to an NS kernel). It would
be helpful for the GICv5 binding to be defined in a way that
we can do this for a GICv5 system too.

> Two questions:
>
> - I don't have to spell out the IRS/ITS config frame (and SETLPI, by
>   the way) as non-secure, since that's implicit, is that correct ?

Do you want the DT binding to handle the case of "CPU and GIC do not
implement EL3, and the only implemented security state is Secure"
without the kernel needing to do something different from "ditto ditto
but the only implemented security state is Nonsecure" ?
(Currently booting.html says you must be in NS, so we effectively
say we don't support booting on this particular unicorn :-)
But the secure.txt bindings envisage "kernel got booted in S",
mostly for the benefit of aarch32.)

> - How can the schema describe, if present, EL3, Secure and Realm frames ?

The tempting thing to do is to have regs[] list the frames
in some given order, but the spec makes them not simple
supersets, allowing all of:
 * NS
 * S
 * NS, S, EL3
 * NS, Realm, EL3
 * NS, Realm, S, EL3

secure.txt says:
# The general principle of the naming scheme for Secure world bindings
# is that any property that needs a different value in the Secure world
# can be supported by prefixing the property name with "secure-". So for
# instance "secure-foo" would override "foo".

So maybe we could have
 reg : the NS frame(s)
 secure-reg : the S frame(s)
 realm-reg : the Realm frame(s)
 root-reg : the EL3 frame(s)

??

thanks
-- PMM

