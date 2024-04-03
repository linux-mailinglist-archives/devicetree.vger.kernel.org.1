Return-Path: <devicetree+bounces-56020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E8A89756D
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 18:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53B751F274FF
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 16:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F59D14F13F;
	Wed,  3 Apr 2024 16:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="naXJo8yB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D891509BA
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 16:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712162583; cv=none; b=HlnXa8sqgKqGW/V4n9StZ+GUTCqfP/fBqxziYE+O/04ZR8mJmpWBItE9lOZZmh8w+pfMoS0Ie7bDP/snyYkRUeIkgtVSi7df86ey5VuIhX+X3wZGGmFa0XsG6ntoYugz5pM+EUrrsKKdIetnP1BGRvne6LpxVaf7hShS24QsLY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712162583; c=relaxed/simple;
	bh=Gco9AHEogz8wRiHKn22/x6SZepvKYQXuhwQs8RmLgEQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=smqf90dDMmTdLNawt5dAjeOnRtRLre3yJGcPd/1sVvw6jsA3hfEaDKVihkrrrmMomPfhiB88pjWYua5Gtqj60X44Rtv46oKyc9LGvA+CUknu8hFGERnGIHRGT7p3A+46im1AnkRlkJ9WCvbkkojar7NzZ0ZPgc/izhwUYInsUHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=naXJo8yB; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7d33ccdb531so2767639f.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 09:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1712162581; x=1712767381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ldYJZM3ZNQODceb54+safcmgQ5V5QG7ihgBUD2TQZ0=;
        b=naXJo8yBnpQx1lvWqEEZ9NCTDv/sXdIsn0ffwDK6R3PTFdN3s2wF3q51pY3dJ5Lf8r
         RVLeWeiKTR9NJKY+D4HoPW14kMkRCYI6T9Ob7Gx4XFMaR2p8geeDEZWzOaUpQ8PviyYO
         P1f4gxAfZDkTcO1psJIwrdh6ODFlQoJcs0Rzq8Po7iUJx4+aJDGEMiJYsQfvoyYRiilE
         uGb5A6vILz9VZJUONVjb2btLz/oUQKtzm4KVuuh0ZizeE5AAt2m81+5OK5qxjVHDmiU4
         Mtd32CA/U81rJt/savLKI0jnc5zq7TosaH4sOZKiadFBNSTW+6e2xasfGsiX/o1ZYydL
         E3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712162581; x=1712767381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ldYJZM3ZNQODceb54+safcmgQ5V5QG7ihgBUD2TQZ0=;
        b=l0YndzdjqSWT7EpjWnGLAcWyxsO60I2znVRFn8hA95lT58ytdQW9G5A9RZNih1x92Y
         PGt4LlSoQKxPku1kRjg4ligQb4k9Ss6r5jvml/IrrWjZzeN16HFsqDn8TqZfdW881NKK
         Jlga6CNVtojfKdls9JNwpoVMVtZE5s9D/HvCaJdCDigmPgZPuWmvahkq04kHmJeQIhND
         P6i4/SEdZyiMjMgeErmr3eHGXeB3pVRzjtqoPUea9imiYmVV0nsCfc/Ey0zW9WbF+vUr
         pirkW+cL82vuh2MtKMcNVarx5kkB0pUW2rSzN2H5SJlJ1xt6i38ra7e3q5Nxh+JLeGQ/
         t7Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVjPpaUK0FKdFCayyz/mmneF1L0ssZHmmKoh3Ic3fW+NSUPCtvtvnwgAjJwHoKsHfZMdnVfyOEB2hp7jVH82LG7c04d3ju2LLy12w==
X-Gm-Message-State: AOJu0YzKjZjLJtR53ft9MGgH6CTpKW+4+6Kh2fNbaBw6lD8jsfZwdzMR
	M5JCMqI+pxGVgaBpXcyuAmUvnma1CY510G7lggcYsnQDBwndzkB0D5GegMfGME04aHJj4dCipud
	ZRRr1H/g2Cn3rJrA8WRD92MeTZJsNOZd5BOAaZA==
X-Google-Smtp-Source: AGHT+IETZsCmYZR+7MNOTFHFuZFLWE66bnvv0TlpnZS/RG9obXEpluMFpdguyK8UQZTF5zYgpmG2F2lenvvxyMTZHlc=
X-Received: by 2002:a05:6e02:1caf:b0:369:95dc:e4ed with SMTP id
 x15-20020a056e021caf00b0036995dce4edmr136568ill.15.1712162581079; Wed, 03 Apr
 2024 09:43:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CA+V-a8tGucbJ87hsMQDEgcor5BzDmB_WnRsEn6c9F_HzucWLXQ@mail.gmail.com>
 <CAK9=C2VgiRcQjBEPmZjdcMf221omKS8ntdcenSE7G__4xYcCUA@mail.gmail.com> <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
In-Reply-To: <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 3 Apr 2024 22:12:49 +0530
Message-ID: <CAAhSdy15r+mx8+HYV5Xe9BYTy0BYk50Nds=qgfBwosEDb63aNw@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 3, 2024 at 9:19=E2=80=AFPM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> On Wed, Apr 3, 2024 at 3:17=E2=80=AFPM Anup Patel <apatel@ventanamicro.co=
m> wrote:
> >
> > On Wed, Apr 3, 2024 at 2:01=E2=80=AFPM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > Hi Anup,
> > >
> > > On Thu, Feb 22, 2024 at 9:41=E2=80=AFAM Anup Patel <apatel@ventanamic=
ro.com> wrote:
> > > >
> > > > The PLIC driver does not require very early initialization so conve=
rt
> > > > it into a platform driver.
> > > >
> > > > After conversion, the PLIC driver is probed after CPUs are brought-=
up
> > > > so setup cpuhp state after context handler of all online CPUs are
> > > > initialized otherwise PLIC driver crashes for platforms with multip=
le
> > > > PLIC instances.
> > > >
> > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > > ---
> > > >  drivers/irqchip/irq-sifive-plic.c | 101 ++++++++++++++++++--------=
----
> > > >  1 file changed, 61 insertions(+), 40 deletions(-)
> > > >
> > > This patch seems to have broken things on RZ/Five SoC, after revertin=
g
> > > this patch I get to boot it back again on v6.9-rc2. Looks like there
> > > is some probe order issue after switching to platform driver?
> >
> > Yes, this is most likely related to probe ordering based on your DT.
> >
> > Can you share the failing boot log and DT ?
>
> non working case, https://paste.debian.net/1312947/

> after reverting, https://paste.debian.net/1312948/
> (attached is the DTB)

Can you add "console=3DttySC0,115200" to kernel parameters and
share updated boot logs ?

Regards,
Anup

