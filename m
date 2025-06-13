Return-Path: <devicetree+bounces-185666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5890AD8B54
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 13:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC0B71890092
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 11:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A08275B03;
	Fri, 13 Jun 2025 11:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="RxeXD5Am"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6051275B10
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 11:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749815499; cv=none; b=OtyF0kPq4rD6ipdBLfPQenQ8M6J5s2Vv+RVJzAQVbKmXbQg++azTt+rLGguhLBDSH6jL9cUhggJwB95k3hDqAkuifMoPZvF3/718/3vSqQTHWtvqoVWSi+uD48NDFl5Qk9dYUtuea8cFMN5XgJgNDTb3shUGIjt0R6SZ1sQKZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749815499; c=relaxed/simple;
	bh=UAIpxcRDVkzi9g5OKmJ5KCJ+YCX/2EuTs5JXG3z3uOU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oSrf2BAmzlJOs8jMPa4dZkSSy/iMPhrHM3uLTW3s6P9KUqg8TM5iG558qwnOH8o0+xi9/RXXdjdn+mVBbpC42OaJxmzI2Y1h2tZBDgvT0/gtHLyS7J/f3m6q87dyc/P6+huQENN2ifdavlP3GjoPodVfE/tCqcAU3Ac1QUkPU4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=RxeXD5Am; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e812fc35985so1834229276.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 04:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749815495; x=1750420295; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JmrtIIcXnG1dlrrtTiawyfOZwt6VlriFzTy47DVpZZA=;
        b=RxeXD5AmXQUsX4zKf8rpIBKvlSA+rWo5Z2F5MOVHPaeDum1wlLnwHkzAio2W3OuctJ
         zqOTbctBbnVV6BfUsmu3+TesarrLyx2foEF6irjDrSvsThSJq1K4zEYwGSL6vVOPBLUZ
         TQ0+FR8ZYa76t9Nk8B67dJPijuHhQc1/PgJa7dnvTdZ775FHfTlaWFHhEbVc3/hQdEGr
         qcF0LguiQdbmO5S02YpMUcI4Q9Z7grucFMBLbtt0MGsjmdtERWXsnhU65u6VqLn1KxEa
         dhR5CKtALPwgKCPQ9zHCZEn1cXt5Cj2tB+OxQlkx8I0oBztBJQyjFkxO+3qNZkDA7DLW
         TWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749815495; x=1750420295;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JmrtIIcXnG1dlrrtTiawyfOZwt6VlriFzTy47DVpZZA=;
        b=L2xUUKteAwviaNd67c1rt4/VuKue4jhVBC2l7JQ0EGlrlfoPTZblqk9Vt23peOqkIh
         stmAcxbNTgYBW/kvTH1zzjnVtvqDD1puyGyKa3V2Vthih8hMz1hVZXFU+sWBXIZK9k6n
         Pms7s1BCZZ8EE9aUwIne2KAftYmdpADIGVu3YVmx5hP9wk0aFYKCYoOYCsOybUvGboT4
         nWmQWzwLRLc91Tb+ed9cF/qPnS674yr0qYmcsCcomPuAw2leuNHBLcVEbsX280OXYw0L
         TZWjDDq2xH0cUjJPdLgk8BKmw4Dx2s5CviLpGnejXeoy0VxRmR/4znjTM6v4x1ac0x7a
         +CaA==
X-Forwarded-Encrypted: i=1; AJvYcCX4+nosOSeOFcGDCyOGqtm/XGYqkK8959uwkfKzdgymzE1EB62Q0OiSVNr57Sns3eyiGXxbs3PEa5cR@vger.kernel.org
X-Gm-Message-State: AOJu0YwBYRW90GCg9oMdFAWSXaNvyOW3J7aeRlzAf77ALBI3u/DNwfJX
	glp+GksjQ0aSMOYRAJ3Lu9kMEbWRWVtZRehhnEUha+6islrltQ1EM9GciDwfSE0inCNWdnmYTHm
	YC+Y66hQNdhCaLOCXRMGRuD8ORrOQjSm8tAoUkcpblw==
X-Gm-Gg: ASbGnct3Xnk4btr0LUlYWRKiVIuPJ7eE9D+rvNiTvdGNmuYXIPFdtnI5nG5HvAd2ODy
	+Ta1faN4K44rhAuJKyrvWtXRbkRFeOsJ2kWUu95tbQOwnbB0K6iusk+gkURd2FDy/Pmn+/gfGr7
	R9vPshkee2TNZkzH1o9B3BGuQ6L20bq5pYSQSKJkgYKI4hgdrhTkMFu0RkBjOz3aA4gEGxLul4
X-Google-Smtp-Source: AGHT+IFtdTM3tDAqSwLtb9W8C8LKyTZznoMlvawQVo7SObsf5OwAXCvmVf1hpSG43dr/cXvKoMojeb4lDFdaQJdy4wI=
X-Received: by 2002:a05:6902:2589:b0:e81:7acd:f77e with SMTP id
 3f1490d57ef6-e821c05d2ccmr3369238276.6.1749815495364; Fri, 13 Jun 2025
 04:51:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611194716.302126-1-ezra@easyb.ch> <20250611194716.302126-2-ezra@easyb.ch>
 <e2ffca36-d2ed-4253-86a6-a990e7931ba0@kernel.org>
In-Reply-To: <e2ffca36-d2ed-4253-86a6-a990e7931ba0@kernel.org>
From: Ezra Buehler <ezra@easyb.ch>
Date: Fri, 13 Jun 2025 13:50:58 +0200
X-Gm-Features: AX0GCFu5adDXqKx-XYRYL4r-KzJ5WRpHXroIJAi4fu4f3NJ8m4nFSaPYY7lh6No
Message-ID: <CAM1KZSkcc8wh7yuJ-26ASKSehjWfD_QGs0JrKOWm+WMfXiY+DA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] MIPS: dts: ralink: mt7628a: Fix sysc's compatible
 property for MT7688
To: Krzysztof Kozlowski <krzk@kernel.org>, Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: linux-mips@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Harvey Hunt <harveyhuntnexus@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Reto Schneider <reto.schneider@husqvarnagroup.com>, Rob Herring <robh@kernel.org>, 
	Stefan Roese <sr@denx.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, devicetree@vger.kernel.org, 
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2025 at 1:22=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/06/2025 21:47, Ezra Buehler wrote:
> > From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> >
> > Otherwise, the MT7688-based GARDENA smart Gateway will fail to boot
> > printing "Kernel panic - not syncing: unable to get CPU clock, err=3D-2=
".
> >
> > Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> > ---
> >  arch/mips/boot/dts/ralink/mt7628a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dt=
s/ralink/mt7628a.dtsi
> > index 0212700c4fb4..10221a41f02a 100644
> > --- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
> > +++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
> > @@ -33,7 +33,7 @@ palmbus@10000000 {
> >               #size-cells =3D <1>;
> >
> >               sysc: syscon@0 {
> > -                     compatible =3D "ralink,mt7628-sysc", "syscon";
> > +                     compatible =3D "ralink,mt7628-sysc", "ralink,mt76=
88-sysc", "syscon";
> This is in contradiction to bindings, so you need to fix bindings first
> - with proper justification. If this happened in separate patchset, then
> the DTS thread MUST provide lore link to that.

As the MT7628 and MT7688 are identical in most respects, mt7628a.dtsi is
used for both SoCs. Therefore, I'd rather suggest adapting the driver to
return "ralink,mt7628-sysc" in both cases and remove "ralink,mt7688-sysc"
from the DT bindings.

I'd love to hear Sergio's (or any other) opinion on this matter.

Cheers,
Ezra

