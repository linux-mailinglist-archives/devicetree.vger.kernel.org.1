Return-Path: <devicetree+bounces-246109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8430CCB8AE9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B20F3309CC6A
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6727E31AF21;
	Fri, 12 Dec 2025 11:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DAaP+jy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2D426B74A
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765537923; cv=none; b=KwrpaHh3DCRzvifaUBeJARspgAEP2yFGndrWrWWG17DiM4VP/I13XqnK4VmqisqROUUvnY0RvCZFV97Yymi5qyJDGv311T2q1NGohd5FsrYjy3XI5N4lMEwJ/6ubAI7bmukFdp80hoahrdFT4IuAGIUgtqrdMtZOBfwt9VcSv6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765537923; c=relaxed/simple;
	bh=2gQhg0m52l1J+h6DLsaszgrLcV0l+qbb8vREvFeUzYY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Iz4xCcGhfByRCE/tAwBGPMSLMSN7cPI4zh0XbF4cBr4Qhz9jKFXDTqHZSxrRwenAvO9lKWpuBwUSfm8LjLRZ9J27OSUEJr/ah9YlAmvvNGkhD/27856r++2Rch0FVBPWf7TnEWVIe3tS2yB8LWi4oHvh7UqeGxWDelMYErp9d/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DAaP+jy4; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42e2b90ad22so476948f8f.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765537919; x=1766142719; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owa4AYkVBH6Oi8vgGHHw2NSIxT8lUbiInmR/cjzPZ24=;
        b=DAaP+jy4zpTrIb3E87wx4Y8znHkU8o2ZDo66LwXuQdxkR3ZHfnpPYk/NL408laJh/D
         dd+VhiEvJVCmYueuNIRVGO4vmPnpS/IQXVVPFmMDBAX0pdTWYIf7izzt05vDwPOONGVt
         ZPaSUK5uS2b9GrLz9iDisTVlS38IkNKR2gRZk/WDnmzISgYAM+bsLE6H+Itr+R1pzqZi
         ruf0lalKRAREwjYmJHLmtX8gKPj2b/DD8m+l7OKS5mldfZznXzY3fiEqYesMxqAaFRrM
         /Pzs6g1pg1vTNaov/HeFFP3pMvXpnMduAY8uJabS2fNRDlqS2aYfFYI/R7+b5zy+FKSj
         HfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765537919; x=1766142719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=owa4AYkVBH6Oi8vgGHHw2NSIxT8lUbiInmR/cjzPZ24=;
        b=wPzuhQFYH1JA9h5acn+LI1AlqS5CExmoz76UfjFYzXyPGRDOOsjo4YQ1dELVgBPDbo
         9JrpZHnWlTzXvrCkBmJ01SDwig3mUZsITy9efTZoO6zXr+RCGxozt7/2OA2uQzU4ip42
         VS/X9EC0gDt8wn0ULEKEHs23CjpuUbDDD0yF2U9iBZc5zsFjJPjFAqyYGwul9UXKXYlH
         43W32ki8ywx5Gwo+JlmsPlDvU8XhdwK9W9AeQomAY+dfAGzD9FLp/AipUlBKWFhMwzbx
         VKXknmCLKbF5cqmZnJyjfFTbUIBSCsvbW2EffPD7x/4N0qorKIsxd8BTNeVxCjUpeIyY
         gGdg==
X-Forwarded-Encrypted: i=1; AJvYcCWz8InM9TExzNaaqVtZvBmbQR4UsszdoaS1wHPI/VnB6hduUv6WdGMR//GJIJWc8wS056Vz1g0tjH1H@vger.kernel.org
X-Gm-Message-State: AOJu0YxHu5+UDM2s69eoStb1pj+UJUEf6K/6oiX8ZvomsYF7EXzRQdH2
	CrCwgcdfqX7jCuQoDVcxkviBTKG532pckkk4Qf948niOY+hSUapCKrvTfr0GPIPcXieOgPYvtX1
	05CcsUZFO2dzigioHN2EarJKOYAO5XsE=
X-Gm-Gg: AY/fxX61IYCqE/ojLmjfgFlov7gjWo4nYcVncpkAF5wAfO90RUUAkajcyFXoTPkkUxE
	YV+XVG8mInkKbceBzw8ABzT/A8E7oaCHLHBm6hE061CSASJYFNSNg2NJSfhnYLIWkpLqABt1+Lb
	mzaG3Iae1H1SW7NngHcQju1jQNEP9C+7v61gARls1WDxV91R2lKna8Qb7pvx5bCH//PWk4dV3by
	yRW2molMIVHRhop87aYdLOsLWZY4fAQv6pNnEsnBpNEARvaFXtKOINHv+nTTseHEwbrcvWFC0xd
	IsQRr9QZ71LYtZZOvhKQxQch6uA=
X-Google-Smtp-Source: AGHT+IH/n6HDi9XTcEJRBWKGIz10PedulThRJ7x4uv71nP8DoCtZCymA1rkQJc0aCtpHQMfFqqVYkRiC9tDijK7BBRo=
X-Received: by 2002:a05:6000:3111:b0:42b:3e20:f1b2 with SMTP id
 ffacd0b85a97d-42fb447ae67mr1628114f8f.4.1765537918745; Fri, 12 Dec 2025
 03:11:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251016-dimmed-affidavit-90bae7e162aa@spud> <CA+V-a8un1cF=acNjG=79_v7oaR8gzBQ+3z1As8AqrJnOnk-OUw@mail.gmail.com>
 <CA+V-a8vq2EvTb_hXxRzW_Rbp+BPLSaLsEVkvaTjc1zRin-RV=Q@mail.gmail.com>
 <20251208-headgear-header-e17e162f0f52@spud> <CAD++jL=rp=_J7vN4E9hUqu0Fa4H+1E1EhMFAe79Tc8jMtNHTcA@mail.gmail.com>
In-Reply-To: <CAD++jL=rp=_J7vN4E9hUqu0Fa4H+1E1EhMFAe79Tc8jMtNHTcA@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 12 Dec 2025 11:11:30 +0000
X-Gm-Features: AQt7F2o0nVnOaR9-qVNKrHWb9R--8lodJV52Di2Ea3o66whanMp8URPFhYip6eE
Message-ID: <CA+V-a8uEk_SYcbukBNz_sm7-giuGeg8V7kMUtXsiOYfbFFR90Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: Linus Walleij <linusw@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

Thank you for the review.

On Thu, Dec 11, 2025 at 12:00=E2=80=AFAM Linus Walleij <linusw@kernel.org> =
wrote:
>
> Hi Lad,
>
> thanks for your patch!
>
> On Mon, Dec 8, 2025 at 7:01=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
> > On Mon, Dec 08, 2025 at 10:36:04AM +0000, Lad, Prabhakar wrote:
>
> > > > > > +      slew-rate:
> > > > > > +        enum: [0, 1]
> > > > >
> > > > > What are the meanings of "0" and "1" for slew rate? Why isn't thi=
s given
> > > > I'll add a description for it (0 =3D slow, 1 =3D fast) and the same=
 values
> > > > are programmed in the register to configure the slew rate.
> > > >
> > > > > as the actual rates? The docs surely give more detail than just "=
slow"
> > > > > and "fast".
> > > > You mean to represent slew-rate in some sort of a unit?
> > > >
> > > Based on the comments from the HW team, there is no numerical
> > > definition to represent slow/fast It only defines a relative
> > > relationship.
>
> Then describe relative to what, so we can understand when to use
> which setting?
>
I have made a query regarding this to the HW team. I'll respond as
soon as I get any feedback.

> > > The current value is determined by the load on the external circuit
> > > and is not affected by the choice of drive strength.
> (...)
> > Remember, drive strength is the current that can be delivered through a
> > pin, not how much it is delivering at a given point in time.
>
> This seems to be the core of the misunderstanding here.
>
> The setting defines the cap. How much current *can* be delivered.
>
> If the pin controller had a fuse that would bust if we delivered too
> much current, this would be the grading of that fuse.
>
> It's the current where the driver stage(s) stop pushing in more
> electrons, it's a very real thing and does not depend on what the
> circuit look like.
>
> Pins usually have protected driver stages, so connecting an
> amperemeter directly to ground and driving the line high would
> actually give this value.
>
Agreed.

Cheers,
Prabhakar

