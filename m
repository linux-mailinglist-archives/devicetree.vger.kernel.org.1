Return-Path: <devicetree+bounces-220705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F74B9980F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AC6A3206D3
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9146D2DF703;
	Wed, 24 Sep 2025 10:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ndVmxXrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C650A22541B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758711226; cv=none; b=Cs0a4kXNYZE7dE8rfj+VWsZIlylZxpORTXKUx8XqxJ8AtYSw0cdIX7BhMiTeIkBEPVdLiFnzOxgVnaob9vGu2tvW7KKeb70+ZyocHsjCmZ7dPEyRqi9qfHcqlf6KluBkoIIU/gexfoUwTWQN2yftNRVlCIhJ7EnqqxSzthVWsLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758711226; c=relaxed/simple;
	bh=HRWoi0QPhOyVK9HAAW0ry/e2vyNhrqXFfsSQ7wly9Nw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d5BnrFj9l6Li+oFGnDn8+vyl0TMWWt5RBQR7h/uu3Gdk+4J2CVOUS6FcS4MpYvjr5aPTWLR7Sg81EfOZ8/gESRnWFWBQeLI+2I/V4sJ/YSOOXXCdJ1JpRXb4BpHQXc2SyEhMle5DXp8CWNqKGIKbcwuLvWMB3PcbBKVeKZfUuv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ndVmxXrE; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-62f0702ef0dso1559478a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758711223; x=1759316023; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zrEv7zqsjwi3P+M+icSri3Qb2jo0e2SlJQEgIxrEQ0E=;
        b=ndVmxXrECCOaiuk6x0SDedXu7pAE7jUk8FKrL4PBgMBPQGwmFMB0uGUpm7XLyKEnId
         hgaIwx0LwQGCDoATXeCYvaYAmQN7EnTVxZVBqwoKTW+8euXV4+941k+kevlP3Wg6zWG7
         vStCQRrrrgueUp+CEy44G7mPjkwHNGoLN0lAFgb5tNOqFRbzawGzgqCJtLGKNuY3t64b
         5jdg8RZEdYYpWRj2BQbIKAQTaMcuKsXaU05lDs+5TO+bgvIE1uskTqFCuPZHO6smbVWp
         Z57gzR1mOaJaPJyNgn82pFSdFO9bBlhB8J0Fzl0K5M1rpDCwP4wElPkiSgPyfp1K3dIt
         cNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758711223; x=1759316023;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zrEv7zqsjwi3P+M+icSri3Qb2jo0e2SlJQEgIxrEQ0E=;
        b=ZGAsFqX189gnqk5tRxiAI8zPArHs5v/71TY3PKMMMwGxZl+AeaUCH+q3bq19WLXHpD
         tMt2P0G3RUpTMuKVKCj2m+IPgJlMLs5jVQtr5m5RTWoqdutd+IAOHMX/FJFcGOuaP+tJ
         aRpGL1cyB1Ur5NhT716nWLWdz6TilhaoSMybhM/Db579bt4bzX4a9erCjxnbtdqP/WOO
         9VhAvxgtwieiXhqBeFSXx/r1/Hw9fi63EFuL7Fqece+zf6xcwBX1yKDMc4jJb6EHEDBg
         stnIWEyXrT/9qn3h6jeHdHRY/2tsZxqYIqnZ6aPU3Tv8+cJGrXDC7vHoOZms2wDG/c0w
         b9xA==
X-Forwarded-Encrypted: i=1; AJvYcCXs/3iPvlocZF609/3n66tBQZ7t99nWRQWbea5JVAehjWNbuCIk0mSb8NFIeHxB3FFHgXDoof3rvqrn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxclub2Dd0uS9QoaEK2mCDW5OQHLt3i+rriL55BdbSIAviyQQ10
	IRlrSUDqk/Fy8OvivkL+ExQOs0u6l189gITuUrh+cpidqD2UwJyTIjsIsUhO78fPwoLzE8lT+Js
	3YgQMNhiDKPT/J5PiTN3h5VYhyfG8hno=
X-Gm-Gg: ASbGncvt6AVYmqmryts8GfDrORtQ7wkxOowPVoNvR8dF6bXOmcZLLmOoUhPnzgO6gkb
	y1zxoaIiKTY007EmghxCGpyzkfS1ty67WOHAgi8h+kw19LdstMf1pFwBRwZKwMq4m1oqukwfByd
	VOqVVM96dNgP+cfEasf0/4rWGtLZpXEQfEnQ3SIR73IixdklokHFIv1ahEMRMX2q0JrsLmjmrBR
	FhQrjugRkh61Y5Csqguo8dx095sv+lVY1HIwKnESmulsJsXYzIrFcEuHpx+WbCIFvGR8rc7bg4=
X-Google-Smtp-Source: AGHT+IElwm2D6ahJvJYWjzllsUAXxuzHg7w0LYwr0Rx19Xx6M2bIwwWSbKEC/u5fSfyIkYIz5R6vZEOX8g3yjZ+xBeA=
X-Received: by 2002:a05:6402:2b8e:b0:61a:7385:29e3 with SMTP id
 4fb4d7f45d1cf-63483b2cd9dmr2323581a12.18.1758711222765; Wed, 24 Sep 2025
 03:53:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924090105.1061910-1-pbrobinson@gmail.com> <545e2819-9654-449e-aa57-636bee88c744@gmx.net>
In-Reply-To: <545e2819-9654-449e-aa57-636bee88c744@gmx.net>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Wed, 24 Sep 2025 11:53:30 +0100
X-Gm-Features: AS18NWCImlKVFGeu4aCQ269cXhwCpD6ZojqmN7wwszPeWUPh5IQFoTjTTFyU98g
Message-ID: <CALeDE9NjF2xnc3rLi_SK2FPMSf2codQxBwqF+Q4XEuGMd6i8Cg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: Enable RNG
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>, 
	Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 11:48, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Peter,
>
> Am 24.09.25 um 11:01 schrieb Peter Robinson:
> > The RNG is the same IP as in the bcm2711 so add the
> > device tree block to enable the device.
> >
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >   arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 6 ++++++
> >   1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> > index 4cd51d80d40d0..6976a88c262f4 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> > @@ -226,6 +226,12 @@ system_timer: timer@7c003000 {
> >                       clock-frequency = <1000000>;
> >               };
> >
> > +             random: rng@7d208000 {
> > +                     compatible = "brcm,bcm2711-rng200";
> > +                     reg = <0x7d208000 0x28>;
> > +                     status = "okay";
> > +             };
> thank you for the patch. I know the order is already messed up, but
> could you please try to add it after uart10?

Sure, can you let me know the preferred ordering so I can understand
what we're aiming for overall?

> > +
> >               mailbox: mailbox@7c013880 {
> >                       compatible = "brcm,bcm2835-mbox";
> >                       reg = <0x7c013880 0x40>;
>

