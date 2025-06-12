Return-Path: <devicetree+bounces-185417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AB2AD7977
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 19:57:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8408F1892AA9
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 17:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E342BE7A3;
	Thu, 12 Jun 2025 17:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wzuh/NUK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74F92BDC3D
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749751056; cv=none; b=RcR04WTgeq74Qa6XtjRb6R4SiQweqseXnQBiboAL3ZPuZIAueQvRz9qvEYxuBlHhTRrMeKIGBSW0sUU+4RpbpddwpuX5k8EgDZk0KlMILzyObwN2U688HD6RzTXhc+kQqMn59DSoMBnVtCZZANKt0a6cLm1x53xtRpm6Olcq9vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749751056; c=relaxed/simple;
	bh=2rzP5TUm+JRajWqIjslt5tlZ6hdbAA9qvgRYJFTZ5zo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=olhNMuU/hD44Fpf5OKvFXHI1Hgix/SIdd4yLSad85jVuzz9KL6lBIcyqGr3DZD4ht2XboP0P4eRQHIrx363/eq48xO/LF7kdtXVvv8hQETtR8u7E18ENv1TCrCTtJGTK3zCaafkGA7gfcOBXXppBYihe6KHZolW6yAkfiHeE3Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wzuh/NUK; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-87ec6f5e7c9so390801241.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 10:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1749751054; x=1750355854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5AiuSztYKPKbeGeOfe2jiG+1OuDsuMpjn4U/nAD/7gA=;
        b=wzuh/NUK2O8K3fVPoGZArTyf3mXAVIS1huw14nf86GZHcPLKEMJrJj1AgrLowP98W+
         ymKoULu/8n+gU2EIHc6jVhJjYECU7ZRbxCng4x3bmfb2CFWaVLDfyCOOhJugLHilFMa5
         JevjYjyWD8EXWnUCC4b+xku8vGJCHK3TeUTLF4s3yHB1Hl24vr4Jez+6ojBNgLRRrKsc
         4Q1xUtnsJnRDr4dw49iyZhIxfgGwmzrfWfJ3ULDmtM0/DMNIal2VQRlllVIL3LkAOOyt
         BrRc27riN1IfnwBRCIayUONPfRFPEpTVtUQoSkq2xQZszEPkfTHTitXBunsanA/yK2Sn
         tJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749751054; x=1750355854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5AiuSztYKPKbeGeOfe2jiG+1OuDsuMpjn4U/nAD/7gA=;
        b=aVjrY0yd4QEuTZfVT7Pgerjh934li91+p48v4neCnWRmrWFmdkllx/+iYmTyCLtuB0
         qBKMQBWHkEJ0STsQNqFOqbBqn5QS065M+6Pm8r34+/yrG/pzgcUaLAZVfL/6wF5b94Ng
         0tTy1h9cKLj694Ttl8dO5qDz6kR7uavmXbJvJanoG9X83K3x6CvzZlE/tnO3pv9b5k3J
         Rk0r7p/ctDWm3Z+u9NfxwwwxDgIlZQdUQ5FQbOoULtWmqshEzu3TFnw+OscsjdbUjzzz
         r+3GyYXJ7YoAZ+S/liWFFwYQ1H8nUVtsIfsJtP6dAvZCxcM5JwwekV9+cjSAIwjsW7XC
         RP8A==
X-Forwarded-Encrypted: i=1; AJvYcCWtXU2Xf/4u2+eeGoTACQ5114S5QjbpIaxfpHfwRt8SWVl8pALZI7LZ50n05aGa3QL9n14iPMfqjW7F@vger.kernel.org
X-Gm-Message-State: AOJu0YxKwSmCeiYnrcqJgP4JfODkI869ci/XzElFnl2x+1schK8wcI96
	vu5nV5GBYW/a/ayWVjIemASnMKkuSPOueGuuKTShu5b+xm024ZEJ3XTgLxGPh4tNL6ZPxmQpoYV
	MtrbnYV5BfEf5ioxEy22EJ1HPLp2Qdy68QX34ybtl
X-Gm-Gg: ASbGncsDQHfWh+Qm3vgIg+0AtxMLP9YdsmrxQjOYNgf/cbCdkID7GIRtn62eNl2TVxW
	/vRs5q4nkArfMC0R4tYmzrp5ZR0ZszvIx/663+3IACo0LRe5FF7+7jmqdcgNu6YzB9dwKkvpNrn
	4y87TDZ+R0sJ3QaxtfZZ3phPlvEh3ebQ1cviW38u8a/g==
X-Google-Smtp-Source: AGHT+IGaZUcnCXH+Qe2tMTpBabktqR9W4dWoxFOP0XwT8IwfEVxYQB/9HmvU+nw4/P7dOGGa6Gr7c31sLFSHQtYQGoI=
X-Received: by 2002:a05:6102:c0a:b0:4e6:ddd0:96ea with SMTP id
 ada2fe7eead31-4e7e0fb7879mr1011979137.10.1749751053421; Thu, 12 Jun 2025
 10:57:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cb354fd2-bece-42ef-9213-de7512e80912@linux.dev>
 <20250610183459.3395328-1-sean.anderson@linux.dev> <CAGETcx-koKBvSXTHChYYF-qSU-r1cBUbLghJZcqtJOGQZjn3BA@mail.gmail.com>
 <a52c513c-ff93-4767-a370-3f7c562df7bd@linux.dev> <2025061147-squishier-oversleep-80cd@gregkh>
 <7d6d8789-e10b-4b06-aa99-5c1a1bdd3b4c@linux.dev>
In-Reply-To: <7d6d8789-e10b-4b06-aa99-5c1a1bdd3b4c@linux.dev>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 12 Jun 2025 10:56:55 -0700
X-Gm-Features: AX0GCFu73POcL4_l4HfI9KMdwt9R050XRJyR3Nu3cTV3q1xTTJqKgvrWmdSnY44
Message-ID: <CAGETcx9E5DB4UtdjjAO2=XfTNXdXocj7uk0JkVZ8hf9YadwNcA@mail.gmail.com>
Subject: Re: [PATCH] driver core: Prevent deferred probe loops
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Christoph Hellwig <hch@lst.de>, Rob Herring <robh+dt@kernel.org>, Grant Likely <grant.likely@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2025 at 8:53=E2=80=AFAM Sean Anderson <sean.anderson@linux.=
dev> wrote:
>
> On 6/11/25 08:23, Greg Kroah-Hartman wrote:
> > On Tue, Jun 10, 2025 at 07:44:27PM -0400, Sean Anderson wrote:
> >> On 6/10/25 19:32, Saravana Kannan wrote:
> >> > On Tue, Jun 10, 2025 at 11:35=E2=80=AFAM Sean Anderson <sean.anderso=
n@linux.dev> wrote:
> >> >>
> >> >> A deferred probe loop can occur when a device returns EPROBE_DEFER =
after
> >> >> registering a bus with children:
> >> >
> >> > This is a broken driver. A parent device shouldn't register child
> >> > devices unless it is fully read itself. It's not logical to say the
> >> > child devices are available, if the parent itself isn't fully ready.
> >> > So, adding child devices/the bus should be the last thing done in th=
e
> >> > parent's probe function.
> >> >
> >> > I know there are odd exceptions where the parent depends on the chil=
d,
> >> > so they might add the child a bit earlier in the probe
> >>
> >> This is exactly the case here. So the bus probing cannot happen any
> >> later than it already does.
> >
> > Please fix the driver not to do this.
>
> How? The driver needs the PCS to work. And the PCS can live on the MDIO
> bus.

Obviously I don't know the full details, but you could implement it as
MFD. So the bus part would not get removed even if the PCS fails to
probe. Then the PCS can probe when whatever it needs ends up probing.

>
> >> > but in those cases, the parent's probe should still do all the check=
s
> >> > ahead of time.
> >>
> >> Such as what? How is the parent going to know the resource is missing
> >> without checking for it?
> >>
> >> > Can you be more specific about the actual failure you are seeing?
> >>
> >> MAC is looking for a PCS that's on its internal MDIO bus, but that PCS=
's
> >> driver isn't loaded. The PCS has to be loaded at probe time because
> >> phylink_create needs it, and phylink is necessary to register the
> >> netdev. The latter situation is not ideal, but it would be quite a bit
> >> of work to untangle.

I meant, point to a specific device in a DT and the driver. Provide
logs of the failure if possible, etc. Tell me which device is failing
and why, etc. That way, I can take a closer look or give you other
suggestions.

-Saravana

> >
> > Please untangle, don't put stuff in the driver core for broken
> > subsystems.  That is just pushing the maintaince of this from the drive=
r
> > authors to the driver core maintainers for the next 20+ years :(
>
> What makes it broken? The "mess" has already been made in netdev. The dri=
ver
> authors have already pushed it off onto phylink.
>
> And by "quite a bit of work to untangle" I mean the PCS affects settings
> (ethtool ksettings, MII IOCTL) that are exposed to userspace as soon as
> the netdev is registered. So we cannot move to a "delayed" lookup
> without breaking reading/modifying the settings. We could of course fake
> it, but what happens when e.g. userspace looks at the settings and
> breaks because we are not reporting the right capabilities (which would
> have been reported in the past)?
>
> --Sean

