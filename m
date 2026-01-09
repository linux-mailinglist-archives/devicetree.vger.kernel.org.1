Return-Path: <devicetree+bounces-253215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A69B0D08745
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB84C3028595
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD133358DB;
	Fri,  9 Jan 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="mXjM7V5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC69336EC5
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 10:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767953553; cv=none; b=TE0q4UUI9O5vboZOm7h0HEsrN8N9JGiDPapuqiwV/PLGkMxEIwKqMZvU5ECb7Y7/oNZ/+blDUqm6wzxgPSxUz5byyNyC14ReIfGqwiHpYAiPEL0KJgKRge0jGvCc57OWdvNcNvVUxaK65VC8C5Xw+xfT043tnyCZQMf30dG+BZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767953553; c=relaxed/simple;
	bh=/T9YXxLBZhhcjEgy2U8F8hoAFjHAttxAaJCuCBXxuR0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fzS7Mw9ML6pqRJoMLAQbaWgPq1+rJ1Qk5UmytF9W/EclepK0oJHpWKKxGYnFJ8rSeMi6kwbckgBIuq0aUAjYIjaUOQ3565uCVFAXub3WJHsqpDVMhad9bxM1zF5FMk4ypiARkxL8eerQm9H2DtGApCQXcrDlPde6Wth6i8yO5b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=mXjM7V5r; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-644798bb299so3736178d50.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 02:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767953549; x=1768558349; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5UnQ4+RbLH5hA9T1G883ptw/7Yo4vuW1qZZcpMJdJQ=;
        b=mXjM7V5ry1w65ABMrH6YYPbUU2yTaiC9SgPnBoSpzA9tdbLq/HPJ13F8bPOcx3sdPM
         YKJWZE8eRCuOxJsmo2RZ6JxkKeo+GCGpdkL12hpTSzFe9bJq3UnAgpd1A+9eFriZOGqU
         /V7LOPfNz1yT7AQbwuUsdxCAMAs5LigeLNuiRg9jAU1bzCfPRFd11EFoafhBHbyaGYGv
         v+LSCXyCyukvqEjP1eWpwiSfxCot2KZ2IW+aWLmgr7wqpeBRFVkSdVGssT791bxrNoo7
         t4BV+sg0PARd4wMq/w8cL8qa7ghf7JBw8ggIbVUOJct5v+EI8zJIC7gwMlJj1LLkF/9F
         NznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767953549; x=1768558349;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e5UnQ4+RbLH5hA9T1G883ptw/7Yo4vuW1qZZcpMJdJQ=;
        b=vkS/ZBTyvA9homseiOR7e9OAmi1Blhe87NtgJP3Fjz6btAG/xYaPBcGMJzQuyuawiD
         xQb8I7Q0TtPDR55oonvdsio8u/17Py9iWoI753DEg5g52FXZzBdT7RN1HtfA66fkvLBz
         2rEjKvBwgesThdMRXleHKhlfTq1BUPiP2RnGhrBIRJnSdKRJtJ0O4j2cGRXF1urzXclJ
         aDvMzDk6wgMCbbTh2LLXcZr938y9YttjsftdTANMHnP6UXaO5G9Dtcik3BZjcQDLqjAC
         VDfFlDExbT7Qm7gFsrSaMDZNLScmNWY47XTgj6wA6sgZcTO1ZEytEO5gnuOZ2FY7Bcfh
         XoPA==
X-Forwarded-Encrypted: i=1; AJvYcCU++ES5lenzPzDRwVjZd0KmyzJmeVNZrEgfzPQOTmXFOAeADs95TwKrqBlw8XzIR3NOI5vIzhqDN5NQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxiPvbX8T8B1ENyZMj4NxhfredcqwkOfzJ/O5C4X1tNN36GFSIe
	s/QtpD2TgLrsegOGVy3YD0EjerCrT2yHHP/nl0iDX3i5anydknLxwojR8ZfjfQQ9Bewq5WyPjAL
	MeuahpjVClx1k54kC1rDedCyOJOyUkbnaBPfESEYzPA==
X-Gm-Gg: AY/fxX43jXw0PiCeot9XXLKqrOnA5D3LpxVwF/r9C+vPb8ddOJdnOifxack7vMxMO/N
	CfcfoqZkhASfGiqNWrM8nJBOgRar51m4fB7XDmo2phWBo3XqKxyvGxFo6haQIGEKHNAzuwoh5Ss
	2ow78F1FxMJv7QuwJVFfE5MCrKr0E1zxfA1hJ5lq2Y0nv2w/gtlHLbGWNkT8AsrQ/RiRPfgbhC7
	M4qXF575vZn1PDLhcKk2wTApghfHDcSug7c5itj7evaUYbIaxVa7Czvd5EeXefRcTnIKud2O7aS
	ocWIVT2jlT/LZa8jFWJz0LPFaQf023joq/HoMXbYPDg=
X-Google-Smtp-Source: AGHT+IHwjyG2gHAKynms5yLd8dsoBN0TrT6WXnJJkvqrEPM5Oh9NnNxT58LAnnyarsoeqkwGZZAXFc3fOBsckE359B8=
X-Received: by 2002:a05:690e:1488:b0:640:d255:2d75 with SMTP id
 956f58d0204a3-64716c5ff62mr7691411d50.48.1767953549269; Fri, 09 Jan 2026
 02:12:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
 <20260108-k3-basic-dt-v3-5-ed99eb4c3ad3@riscstar.com> <20260109033608-GYA3681@gentoo.org>
In-Reply-To: <20260109033608-GYA3681@gentoo.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 9 Jan 2026 18:12:17 +0800
X-Gm-Features: AQt7F2ruyJZja2_iA58MgeCUcAeuWdBMOblJYXEsXdoTwjRnAKOiZA60duu51-A
Message-ID: <CAH1PCMYCLweVJ8WG2VY0jAk6UBuGA138urgfZV9+0fVeqmbbEw@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] dt-bindings: riscv: spacemit: add K3 and
 Pico-ITX board bindings
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Yixun

On Fri, Jan 9, 2026 at 11:36=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
> On 20:25 Thu 08 Jan     , Guodong Xu wrote:
> > Add DT binding documentation for the SpacemiT K3 SoC and the board Pico=
-ITX
> > which is a 2.5-inch single-board computer.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v3: No change.
> > v2: Use one-blank-space between name and email address.
> > ---
> >  Documentation/devicetree/bindings/riscv/spacemit.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Do=
cumentation/devicetree/bindings/riscv/spacemit.yaml
> > index 9c49482002f768cd0cc59be6db02659a43fa31ce..fe62971c9d1f4a7470eabc0=
e84e8a747f84baf0d 100644
> > --- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
> > @@ -9,6 +9,7 @@ title: SpacemiT SoC-based boards
> >  maintainers:
> >    - Yangyu Chen <cyy@cyyself.name>
> >    - Yixun Lan <dlan@gentoo.org>
> > +  - Guodong Xu <guodong@riscstar.com>
> >
> sort by alphabet letter of first name?

Thanks for the review comments.
Sure, I can do that.

>
> >  description:
> >    SpacemiT SoC-based boards
> > @@ -26,6 +27,9 @@ properties:
> >                - xunlong,orangepi-r2s
> >                - xunlong,orangepi-rv2
> >            - const: spacemit,k1
> > +      - items:
> ..
> > +          - const: spacemit,k3-pico-itx
> if DT mainainer has no objection, I'd suggest to change to enum
>              - enum:
>                  - spacemit,k3-pico-itx
>
> although single enum is effectively equivalent to const, but easy for
> adding more boards in future (no change to previous code)..
>

Ok, I see your point. I can find there are other yaml files doing the same
style. If no other objection, I will change it to enum in next version.

BR,
Guodong Xu

> > +          - const: spacemit,k3
> >
> >  additionalProperties: true
> >
> >
> > --
> > 2.43.0
> >
>
> --
> Yixun Lan (dlan)

