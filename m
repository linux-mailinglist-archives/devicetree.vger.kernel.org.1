Return-Path: <devicetree+bounces-179929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D60AC21C9
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 13:11:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 721E516825F
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 11:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A5B22A4F0;
	Fri, 23 May 2025 11:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="O6mgaNFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32031A9B39
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747998699; cv=none; b=U+99qX0zYJYjpP4OXXUKuK5GcbPLvbqscQZLPybpAyAvLZtbn6uxYMkdbm2h4aBJybO5MhNLqW3O+c3KrDFhHgq5RQLlP3IMDasHJa/9Olm56Ie/GmoOEFd5vF89cUTYCx+DZIN7lMe3ZrbcEk/83fqFsQOtBwWE6wRg/v6C+40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747998699; c=relaxed/simple;
	bh=q4FL8KKjQQJN0U0NoEUGRoU4Z3BCiVEiPjPeQldDjiI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cCCW+LQgezUP2f4exemFEiUbGoo3dLqaO8nUl7T5RA4V5SDOnZoUQAX2iow8WeDsL4In8lOzyFGk68GYfM57YYPcsXHvj1L0yXv3Y9sOF8fAL13POvl3/+r73tUNc4CNQyFsssV+6cmWxPPZ28RPFeNG58bfsmbb53GjxuAYP+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=O6mgaNFh; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3d80bbf3aefso23837625ab.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 04:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1747998696; x=1748603496; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g4WC61RiFkUHVQjkxgX1BdafAxF8AO9xUQHu1X/p/I8=;
        b=O6mgaNFhNqDFe7ixCPi/oOxXIw10qJTK6yu0bt+0ADDnSJEZm1dEH8TgDwgvCINXg7
         4NztfM7c6y8660Lrv803QG3XWVidEBbD+eX+nzgCXvAZimc57IKjBVGKOL5LcSUjbwq/
         yBwJjm8c7GrgtmNfVfyJTA2jmozvWppeiefYr/lYaJPCLG+sWuEyRbv36Vv6ww55POdV
         a73FSjsCXcdBp95kXhJmTGEV+Ril+T2UxY6A6uLiCoATgGmPgAggbxNCfw/efvIiNnFt
         DXa79vVuKduU/bp6KHXMmFjy37G60KEc1dI9COJWfYVU5P7Rj0HfNjggOhNSeI0l7lCF
         +2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747998696; x=1748603496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g4WC61RiFkUHVQjkxgX1BdafAxF8AO9xUQHu1X/p/I8=;
        b=Hk05B5mcs0X3bAHr2CRBsk9VKkQgMMDAk5wJ/g1genyXRW7sHHnMdXOc7mZ9aTUwsk
         jLBlCISh8uFfiO0pJopMQ5P5SOKG5x/EgI5BBza4XOGZ2hDZXD7e+jAe1bN5x89pzeUG
         wPuo0wuCDEsyEXyqlnH4pkIJZtQXSZNmh+1G+D3WdaQy4uxFRltLilQrbo/ZLQl+jCw1
         22Spv0LiOXz1kZIHSCWVlK2Gt105dHtfsbwpPiyznnuqERBkt6Blpkh/tPMVQLuyuPwm
         fvfmSVbM6Ii4iQlTE0MkcDeMjG4h3btZ+XQBiMoc49ZUi48PoiHeRkjUZPHXLGlrYOjN
         AmLA==
X-Forwarded-Encrypted: i=1; AJvYcCWgOtFmFQu49EzIwQaKQ9vagIYDoLJbM+pYvJlm86RQvp20zUMh9/qbUaWKHDtEeE+wQJt2OSDIWLw6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9c+XPk1cWosgqpdGerWUYFFdWVy23C4ZxyB28A3wiNJBRdk95
	AerQ0DfCyi+epd4V/ISI4Mk7f/ol+Rga1pRsojwcO8kaeOkAAZ36wFnZSNct3S4LOITU/KCdNhm
	FNh9EoeDlMH2ko01ZH76qjBnBtn5NrplqT9LcAzXv9KmFU2UrUBJp
X-Gm-Gg: ASbGnctF0/2pqJzPi2kyfXAcEy7IF2oRVbCVIsCWaGmT8jtdGy3/15vJeAcubcfkvRp
	bve0g5RmWYLqwLCneFppB2P7Z0DA4pofMB0VT/tPClCjr8/NdlS5ih5EV74XVglSSbjfbU0uQnC
	iiBlfpKh9+DYj2IrYIFAikEWlXpgup1t8LZiQlbFZiVrz8nc0N9yAn6OibcEkQeiyO9w==
X-Google-Smtp-Source: AGHT+IFRNZi7miN9KtJnFvnUc4Zy/s6cGHuPblLIqkAt0lFI6V+NU3+HwApQoOry4bUApfroElgEDbBR1r2MaDtDQzE=
X-Received: by 2002:a92:ca0d:0:b0:3d8:1ea5:26d1 with SMTP id
 e9e14a558f8ab-3dc932db875mr29989355ab.18.1747998695075; Fri, 23 May 2025
 04:11:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250522-ubx-m9-v2-1-6ecd470527bc@geotab.com> <ab6bfdd7-13af-4abd-94e1-25fb3d0edb1c@kernel.org>
In-Reply-To: <ab6bfdd7-13af-4abd-94e1-25fb3d0edb1c@kernel.org>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Fri, 23 May 2025 13:11:24 +0200
X-Gm-Features: AX0GCFsbE7ylggvJ-1DAkpSiD9h8OYkmNPdxG5wpCpBuy3Q0w-pEjfIGUIf7K7I
Message-ID: <CAN=L63rNgrO1T8t2qfCUxphr_TDA3gSpR2LL=e6oFwore7SV2g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: gnss: add u-blox,neo-9m compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 22, 2025 at 7:36=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 22/05/2025 18:18, Alejandro Enrique via B4 Relay wrote:
> > From: Alejandro Enrique <alejandroe1@geotab.com>
> >
> > Add compatible for u-blox NEO-9M GPS module.
> >
> > Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
> > ---
> > This series just add the compatible string for u-blox NEO-9M module,
> > using neo-m8 as fallback. I have tested the driver with such a module
> > and it is working fine.
> > ---
> > Changes in v2:
> > - Modify the binding to allow falling back to neo-m8
> > - Remove compatible string from u-blox driver
> > - Link to v1: https://lore.kernel.org/r/20250514-ubx-m9-v1-0-193973a4f3=
ca@geotab.com
> > ---
> >  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 25 +++++++=
++++++++++++++----
> >  1 file changed, 21 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml =
b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > index 7d4b6d49e5eea2201ac05ba6d54b1c1721172f26..215f8931ca08c1b0954fc2f=
70eabe3ec8d89edea 100644
> > --- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> > @@ -18,10 +18,16 @@ description: >
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - u-blox,neo-6m
> > -      - u-blox,neo-8
> > -      - u-blox,neo-m8
> > +    oneOf:
> > +      - items:
>
> Drop items here, just enum directly.
>
> > +          - enum:
> > +              - u-blox,neo-6m
> > +              - u-blox,neo-8
> > +              - u-blox,neo-m8
> > +
>
> Drop blank line.
>
> > +      - items:
> > +          - const: u-blox,neo-m9
> > +          - const: u-blox,neo-m8
> >
> >    reg:
> >      description: >
> > @@ -63,3 +69,14 @@ examples:
> >              reset-gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
> >          };
> >      };
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    serial {
> > +        gnss {
> > +            compatible =3D "u-blox,neo-m9", "u-blox,neo-m8";
>
> No need for new example, it's the same as previous.
>
>
> Best regards,
> Krzysztof
Thanks. I will apply the changes.

