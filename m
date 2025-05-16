Return-Path: <devicetree+bounces-178013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A15AB9F69
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 17:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11ACF1BC74D4
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 15:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E00D1AF0AE;
	Fri, 16 May 2025 15:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="e1F/CeRf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB256347D5
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 15:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747407667; cv=none; b=ctQtcwElWCDO7lINJo8G0MT0Cc0QJmt6tjlqPsUZzoD7kGy9XujecMUCUlX7Y1Ravo5U4ZUwBpEuYrOK18LenSJbdBY4gbg+xQBJ23BTsJBVgEvxyT+YezHkIH0TgdNsFT+D6Y26dlI3R//rCM6F9esoBJ0ZdvVi/cCTHc997Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747407667; c=relaxed/simple;
	bh=VXlJSWFc5Zq3VZZtNElTL1S+RE8tFsD4AFHclc0Ow7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f1/AjUCMwzSTb2L4LYIXUaXCRyRj2Xqf1b3J/HAvsi1Lq4hil+9tvy26jtGuMKF7vRwS5jk+/A9imWMmcY8278DnPzWqxK95JhroTAoe30W85IAfharCh4RKEGHmhrTfMcwpltPKTnnYBbFuR5Axd8qFearxfozJxrckcJ72/Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=e1F/CeRf; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-85e46f5c50fso189024939f.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1747407663; x=1748012463; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Isgxaw3y9HV7OOycA4J0PsTij++eO3Vyqgu7PgnW9EU=;
        b=e1F/CeRfpEslMiK9m/9yOzKlcF1GOrxhtkVyssp0PPJHgI8/AhPeB48aTJv6GKlmvP
         OixbzfbJ3DbcMhTyteWBhyISUaRC07qUuqSh7DutA2buhr5Nt4IPnTZp/FNAqxoXgSSo
         yzfPGRBGjo1pFOh7j/dmOkpuRh5MBkdDvKQbVVgzR+ZadCQqofV3o8X+t54qG1ouS398
         TvESlGRS/zzCyvc/sIXrCC8c92XlE3YkVuIvGANIT9FZaKmeZ3lYOPDh8SxFbOlVZN1T
         KhuZBpFfERkbmNMKFG6VhI8tGttU2aD1b6M5iZLCMte/TabpOrvphEIJIab73hK82heU
         MZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747407663; x=1748012463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Isgxaw3y9HV7OOycA4J0PsTij++eO3Vyqgu7PgnW9EU=;
        b=va2J1O6cWxtajDUu0+v9A2rnY95j4AWyO5yHFIJ3kCb7oWITUWdOoumHDI8qdSE2ch
         z9rrONiRU5TJkeQZgJS/itP6OSPqlc6aw4oUpMofm2hPNE06k0DucCepGdZUcN5N9/WT
         lco9dmflMdnfTUoeI73LqFvVm3IkVjS6o/3yEpwaQKHFjSnhc20sYgDUuLtsLKLJvRW5
         j8rTtLgY65+E93a+ZALehdd1Dk8LcA7g8YHDtUbnwtxxp9xPnuviU4xgc8RzbxMWEoUU
         f/jQzLHHuGf3I1Z3OYFwY8YdqXM9tgNOANh/GMKNqggXfHy9sbdVwe5NcaE+YC9iXOVs
         rU+w==
X-Forwarded-Encrypted: i=1; AJvYcCXKB82+bwy41eEg5d0AzPd+c/cRxrUsw/kASlSTM2/gy1Pw3xPqW1wPvc958GuIOofsx8fUp6wnA/is@vger.kernel.org
X-Gm-Message-State: AOJu0YwmxqAEcL5jS7D8Hq1fS9fT3ZEt9TeU+Q9+5XY1ig06silVCcpu
	t8zjTbIEzs7SHQZELUcPVnFLY7UMbkyZi1TjukDcDPGc+oKcx8RxhBB/4lDW5yNXcORcHCPYHYR
	T6FaAJrZ+kuv+aBkVO/fMGcXeIDcT6lsucz/4n98ZPPkapUF9p1uspNiMwkR1
X-Gm-Gg: ASbGncsjHtO2tU1QCDRI+4xI7gwtH7qm70QiyVIzogbQIk5/KLUdLDiGDRZIHAkOo0J
	sykVhjX7NBZorh2bobhMzMwee0g7Mv4cvGl6UHcGMtvzDDztAPMrNKBZj1fh7MtVSS+rVQGjpYh
	EMNddAg57XHFt3pQ1QHoYZbr6iaMboL4Llkzd5+oc8C/bz6z53Kc0kOVlHegtY0q1aCw==
X-Google-Smtp-Source: AGHT+IFjgy4PTFRg5gQXN3AYZ9qRrA+rqgjEor6gLIy5H1bI4/D1Ugp/0oi1Uz+3u4EU2q7B2R1qykz+kNuYWwKtRcs=
X-Received: by 2002:a05:6602:36ca:b0:85b:3c49:8811 with SMTP id
 ca18e2360f4ac-86a231b0d10mr685529539f.4.1747407662122; Fri, 16 May 2025
 08:01:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250514-ubx-m9-v1-0-193973a4f3ca@geotab.com> <20250514-ubx-m9-v1-1-193973a4f3ca@geotab.com>
 <20250514-saggy-shifter-e4ac7152f823@spud> <CAN=L63qsjEAvfocgP0tGrpe-x6Rx1gvTAkPE9i99Ai2zJj6ssA@mail.gmail.com>
 <20250515-varying-swan-31ca63615b43@spud> <CAN=L63oc7a6+_e+nhiyCkttX-TSbcjcwBmSzPsSk94m1ebGt4w@mail.gmail.com>
 <20250516-unfasten-submersed-e854fc9a0142@spud>
In-Reply-To: <20250516-unfasten-submersed-e854fc9a0142@spud>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Fri, 16 May 2025 17:00:50 +0200
X-Gm-Features: AX0GCFs2fiYCif8FzLWhxn2SYB4xmCrMNj4SEjmPv-P0k5pZNerM1y4pJoBW7_Q
Message-ID: <CAN=L63phSnssXs1p2HXhf08HMaHCE80EgMZQR0vPqhME2tknBQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: sophgo: add zfh for sg2042
To: Conor Dooley <conor@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 16, 2025 at 4:01=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, May 16, 2025 at 12:23:35PM +0200, Alejandro Enrique wrote:
> > On Thu, May 15, 2025 at 5:02=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Wed, May 14, 2025 at 06:53:25PM +0200, Alejandro Enrique wrote:
> > > > On Wed, May 14, 2025 at 5:49=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > >
> > > > > On Wed, May 14, 2025 at 01:55:54PM +0200, Alejandro Enrique via B=
4 Relay
> > > > > wrote:
> > > > > > From: Alejandro Enrique <alejandroe1@geotab.com>
> > > > > >
> > > > > > Add compatible for u-blox NEO-9M GPS module.
> > > > > >
> > > > > > Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 1 =
+
> > > > > >  1 file changed, 1 insertion(+)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-=
6m.yaml
> > > > > b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > > > index
> > > > > 7d4b6d49e5eea2201ac05ba6d54b1c1721172f26..cf5ff051b9ab03e5bfed815=
6a72170965929bb7e
> > > > > 100644
> > > > > > --- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > > > @@ -22,6 +22,7 @@ properties:
> > > > > >        - u-blox,neo-6m
> > > > > >        - u-blox,neo-8
> > > > > >        - u-blox,neo-m8
> > > > > > +      - u-blox,neo-m9
> > > > >
> > > > > No match data in the driver, why is a fallback not sufficient?
> > > > >
> > > >
> > > > I added the match data in the driver in the PATCH 2/2 of this serie=
s
> > > > in the same fashion as previously supported modules.
> > >
> > > Did you? When I looked, there was just a compatible and no match data=
.
> >
> > You are right. I just added a compatible string, no match data. Sorry,
> > I was not following.
> > I just added the neo-m9 compatible the same way the neo-6m was previous=
ly
> > added.
> >
> > What do you mean by using a fallback? Using one of the existent
> > compatibles (none have match data) or adding a new fallback
> > compatible, something like just "u-blox,neo"?
>
> Falling back to one of the existing ones, like neo-m8.

That is perfectly possible. I added the new compatible string based
on what was previously done for the neo-6m one.
https://lore.kernel.org/lkml/20190401115616.21337-5-megous@megous.com/

If that is not a good approach I think this series can be discarded already=
.

