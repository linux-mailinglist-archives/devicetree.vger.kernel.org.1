Return-Path: <devicetree+bounces-177919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E07B5AB9A11
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 12:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A36009E781E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 10:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5686F231C9F;
	Fri, 16 May 2025 10:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="ZA0e54sf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A11227E83
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 10:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747391040; cv=none; b=OZmtLNpWiDOCIqTcHI+JIU/pYeR2rtart6gXrSoHAKAxFFPe+W9rPuq1Iiws/0nx58osWIySOIf4x627aDmUDpfpCK7PbTGTGWoI/cGqM7K4eKopheGd9IxRxJLA/LQlumFLJbF4zrqJuqRzZ9JdmogEsAl8bZk03c/anSjxZ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747391040; c=relaxed/simple;
	bh=kX8C4riqmdvhNYzjXAN9FBLZqrBSEMscQB6yaApzJbU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GL2o8feBI8mbN/m+zlucKvHCRSKmIthVjJRkFagwVavbwJ1uozAUqZKHskHBAnKsZGiv5NGWuW5YgaPSTQ4UiliK7SaZDQLt6n+OKCC2rT5gMkfRj3RmxI8R4DaEe7zfdkPi1BXEXIs5eGm1VChfdB9F62ieev22WYvCYMkdjv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=ZA0e54sf; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-476a720e806so18495811cf.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1747391037; x=1747995837; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSWKgyvnroR1BW7IVNgVxry/JzplDnRtvXjCHt5HFJ8=;
        b=ZA0e54sfjtjVZGf35GlYUaPnuIgf15Yltg1VpNcck2kvTnRLeAGopt39UlVuEz0+pp
         s7+YyVA+OsQo8nVq9W3UoGBNYp7FLJa5gWsY/IEkmUnK9aSAULNU2cmxPXz2SOfG6FBv
         mNSjf6Bju5L5/qx+wrSaq3zXFZuKj9AyiQiz3T20lQo41kG1cLgZ89Q2ZD8ohtMV2Q72
         Y+6vkcLXfutnxPpNjwRmAdlYoj4Qr117WEDB4JCeaxjZw/eJ/guYfAmCt68Bmian7kLj
         BL5qBMvh01CTIPTQ7dg5bZJDwxodCwL3hk0RyBSaDjMXz/HMTPCx4VKyOV+tUSRDum/h
         HJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747391037; x=1747995837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sSWKgyvnroR1BW7IVNgVxry/JzplDnRtvXjCHt5HFJ8=;
        b=Ph2hQo9aS4rucLFR9qdUdLJVaSssFI4+3eDS+Xyc/THdoqIPIrC6UCH0II7WxMa4RA
         F3Rfrpf9RSfcSVoErRgBou2ljySgk8QwcSj4V0enDkb4s0TmjDQrQ0UzxWyrfsUbrr2f
         +OZhfySUjdL0eWw5Wji2Tm+wQopbm6V/1q2EjMu9UuHkbQGn4FzG/5YCKINSPSxIujY9
         RDA+pIWp8/m57t2OB5GU7O9YtP6ucq1e5G8gWinWWC9GBMsuIqY3WUKyES8/CGeuDUG7
         QWeyus4fJgXmJ5w7fG0ZAqHEw/N6AII3N+EsL1zw5IMkkCQ2q4y7t5U8R/g9rBNyBxAm
         hlJw==
X-Forwarded-Encrypted: i=1; AJvYcCXLfnD4+IpDXb7/GNs5BKqbNdtLIQ8MVPV2uayof+wN7JoaitRSrsn1gq98LdPQ8WnXHqC70IzU8kaF@vger.kernel.org
X-Gm-Message-State: AOJu0YyERhIOKVno35XT0qLxAz+wlUIj+GfC4QJCV2pbR7NspmZln3u8
	D4baB58PFhZC/VIvRBstJIq/MnAwEY52EA7T6ADTBaN3mVZqUigmCITD9gKiylL8TTcHJl0r87U
	otR7vkIqf1X0MWMQwij5M7Z8U6f0AyNWa8qgridbfp1et7XezevcN2+VRRQ==
X-Gm-Gg: ASbGncucGPMUbhSW7GslbcSV15MdRcbHZ2lNbcGfuK1AfYSCNBvaF+gAviIkJq+MWPV
	+pyPn9KsaeeLLihToYbXY/w++cK3Mm0hfGqYDXGf6R6arwB7BIX7UWRi0N64CfV1uaVOT74DUYJ
	l3V5SV0bQnRKanZfDkz1SQ/T9evYFqNP+BR1mZNrmke5vI9eRt4JnStMjmHniimbL/1Q==
X-Google-Smtp-Source: AGHT+IFh8efmf9PRAMrZc4K2Z8Gvs4gsieCI9x444infnsCJARCipPRL4wFTODnmENO1rPgK7fNUDGBrvA0uGWbk5LM=
X-Received: by 2002:a05:6602:3a81:b0:867:3889:45e2 with SMTP id
 ca18e2360f4ac-86a2322a6cfmr379802039f.10.1747391026352; Fri, 16 May 2025
 03:23:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250514-ubx-m9-v1-0-193973a4f3ca@geotab.com> <20250514-ubx-m9-v1-1-193973a4f3ca@geotab.com>
 <20250514-saggy-shifter-e4ac7152f823@spud> <CAN=L63qsjEAvfocgP0tGrpe-x6Rx1gvTAkPE9i99Ai2zJj6ssA@mail.gmail.com>
 <20250515-varying-swan-31ca63615b43@spud>
In-Reply-To: <20250515-varying-swan-31ca63615b43@spud>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Fri, 16 May 2025 12:23:35 +0200
X-Gm-Features: AX0GCFuBOqb1SIowingiNrMQQe0Y70xsdgvTHYHt-8V_ptqMp7MjogQl5JSOXCY
Message-ID: <CAN=L63oc7a6+_e+nhiyCkttX-TSbcjcwBmSzPsSk94m1ebGt4w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: sophgo: add zfh for sg2042
To: Conor Dooley <conor@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 15, 2025 at 5:02=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, May 14, 2025 at 06:53:25PM +0200, Alejandro Enrique wrote:
> > On Wed, May 14, 2025 at 5:49=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> >
> > > On Wed, May 14, 2025 at 01:55:54PM +0200, Alejandro Enrique via B4 Re=
lay
> > > wrote:
> > > > From: Alejandro Enrique <alejandroe1@geotab.com>
> > > >
> > > > Add compatible for u-blox NEO-9M GPS module.
> > > >
> > > > Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.y=
aml
> > > b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > index
> > > 7d4b6d49e5eea2201ac05ba6d54b1c1721172f26..cf5ff051b9ab03e5bfed8156a72=
170965929bb7e
> > > 100644
> > > > --- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > > > @@ -22,6 +22,7 @@ properties:
> > > >        - u-blox,neo-6m
> > > >        - u-blox,neo-8
> > > >        - u-blox,neo-m8
> > > > +      - u-blox,neo-m9
> > >
> > > No match data in the driver, why is a fallback not sufficient?
> > >
> >
> > I added the match data in the driver in the PATCH 2/2 of this series
> > in the same fashion as previously supported modules.
>
> Did you? When I looked, there was just a compatible and no match data.

You are right. I just added a compatible string, no match data. Sorry,
I was not following.
I just added the neo-m9 compatible the same way the neo-6m was previously
added.

What do you mean by using a fallback? Using one of the existent
compatibles (none have match data) or adding a new fallback
compatible, something like just "u-blox,neo"?

