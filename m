Return-Path: <devicetree+bounces-231479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A146AC0D7D7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 54FEE4F291F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB7C2F7471;
	Mon, 27 Oct 2025 12:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="C23rvOE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9765285C99
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761567816; cv=none; b=EOZD6BpGiFu9LRsVX0lVD0gAoDAc/ZadTqaSxS5yDEOQoC2tBTh9qUUB25CEhSXgqKVjukbn+nFMrXFT5UyNXeyDEHWbiq0+2rrs7i+wUvkbAmCWxxah0ZwsqKN8uW4X43BwiZeJXZgf5/SmdPRpxeenWTNrCKdtzi0cGwR9REY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761567816; c=relaxed/simple;
	bh=d88UCqzm/BRl4RoM9gzbXqgbUadA237ovz+ngF2Qano=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SeaW8RM0LOQCkIWaIMD0p5ILbdC4hRlFRftpyRGb8mhd8Ol3NbwxoUR6ztAyCMq/TOfeO07Xt6dC1PEHmddHFCtJg8zCQSP2NYjokBeh9MtHoIkVBdqPscw3F7NNZUz1SkJ9Ec/4SLU7s2eClVzClbCzPuRWRQjM4jxAb2inRV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=C23rvOE/; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63c09ff13aeso7844839a12.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1761567813; x=1762172613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Rwg4RdU9/S/DCDYFa84+lfxA0r6Yx3IlD8K+TOMC9M=;
        b=C23rvOE/p1Rer4LO0wVI/neOicjALJt99yUrtuzUFQDiSOm1kL2FFJLZX9P40lbXdq
         iHk9ee7BQWoOyBs3hYWSKMfpACvGg4hwrNo+puX9VBsiP8oMZIdH4bVfafwwzVKOl+BG
         FzS6/4KUkmaW8ffqaPkKn4DcMZwE3N04k7rxkZUZSH3eCNiO8DS40MvFyE4fekqcKkad
         hQYpugHK6wOhgBNX1CKtGMV9pI062EJ5YqMHHRW4eMrDNvJVqZw6cuvylmUwcCtnTuMr
         igLyRvx4MLNCysGzOSh7drJ87M6dgeVMCbrrbyh2JieUNKW63b6ZRgZsJlZ0rhfGNILU
         68ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761567813; x=1762172613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Rwg4RdU9/S/DCDYFa84+lfxA0r6Yx3IlD8K+TOMC9M=;
        b=CFXbneYPH2IV3p79CIX7fyfZk7Go/y/QTOTPdhyClFp/Xz/iqEF3EAxnvWQltdCwFj
         LjpDKyU41C7BdxVlpYAOHJIsp3B+LMYvq/odPhR0/Ag/7yTq20kclUj61m+gR2hG8JMB
         VyrdA0+3MPb/WPqSuoU7N4o+z1uYDKIPXFm8cUHkLaZOPmjISIHtoLeujotouFpBwbGK
         M6KVIsD5aElrYOQjtOZLFj/hObgNiFQKUWQdPCFpQB1QOxuY/EB8bTwwRrBdzV/kJezB
         MpkD+XLyp/2obqedQry/WAtr6HW9kKhP7yPrm4j9Oy6zubPm9dq+8RKRl06jgR5wT2GZ
         vKSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvL3WZIQLVkUynUFlCEOeAiYZTPse0DsQjJTBNmAUVNw1yIKAdxyxbKIiyo8esq8QQ8AtkOoov/3oU@vger.kernel.org
X-Gm-Message-State: AOJu0YxTUw9GMtjwc6zczIEVahPCSZm03ucnVz7Co15d3brxvN68KRTg
	vbCV7OdxebnZjB+cg3s9UgBfdDwP0o2XjHlrm43No2m7poCGT77QfkXv3WBI3NvHnYTIRlvnQXH
	SDIQlZ7SbundQY+sguaq4SCjWUVdJ+cMY6ij3vhKDmg==
X-Gm-Gg: ASbGncsgxFITEIHjJBtt7sCbTMG/Wc2YV9chGwXkc/BsLr1+PFTA/FbDA7EBDw89clg
	tCha5VrTLVi+Emc7z7uWXmdHZ8VysaPGiprxkHYewwmCPQZTEqCJ7ZhBVZLxJLix93mUAO80FMT
	Am3R4SIDtVUyprsu6+5NeP3J10AZlbXUW0FSfkMGjKM3SGjeQ8X/uaV5NLk7L5/pxnnurSCPMcZ
	lxeFbRdfQYkYX9amg5We2krmAalFE8lI15iGPr81onlooX0Wotr99apc1agPh52Kqfgti0=
X-Google-Smtp-Source: AGHT+IF+BgjszyFXX/x4Nolc6aZVuXbe/fVp1I6m1HgOqoLTnKC+UhczCsAmebRMYM0mrQ7elw+gmukeql590E5d9Ns=
X-Received: by 2002:a05:6402:5c9:b0:63e:988:f115 with SMTP id
 4fb4d7f45d1cf-63e0988f4a0mr18134909a12.15.1761567813178; Mon, 27 Oct 2025
 05:23:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251024192532.637563-1-robert.marko@sartura.hr> <f3bd99c8-eb70-40d3-9b43-fba56546f591@kernel.org>
In-Reply-To: <f3bd99c8-eb70-40d3-9b43-fba56546f591@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 27 Oct 2025 13:23:20 +0100
X-Gm-Features: AWmQ_bk9BrVtS_VU4383_snZ8tAl4VvlaevHaqgtibd5mFRHM2zru3PS4OqDYN0
Message-ID: <CA+HBbNGZ3FwrGCtHX=mc8LQR9DCU84jqfhjFRGVDCJWtt+gdkA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: lan9662-otpc: Add LAN969x series
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: srini@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	horatiu.vultur@microchip.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, daniel.machon@microchip.com, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 26, 2025 at 11:10=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 24/10/2025 21:24, Robert Marko wrote:
> > LAN969x series also has the same HW block, its just 16KB instead of 8KB
> > like on LAN966x series.
> >
> > So, document compatibles for the LAN969x series.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  .../devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml  | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-=
otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.=
yaml
> > index f97c6beb4766..f8c68cf22c1c 100644
> > --- a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.ya=
ml
> > +++ b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.ya=
ml
> > @@ -23,8 +23,15 @@ properties:
> >        - items:
> >            - const: microchip,lan9668-otpc
> >            - const: microchip,lan9662-otpc
> > +          - const: microchip,lan9691-otpc
> > +          - const: microchip,lan9692-otpc
> > +          - const: microchip,lan9693-otpc
> > +          - const: microchip,lan9694-otpc
> > +          - const: microchip,lan9696-otpc
> > +          - const: microchip,lan9698-otpc
>
> Why are you changing lan9668? Nothing on this is explained in commit
> msg. Also, list of more than 3 items is not really useful.

I am not chaning lan9668 but rather lan9698.
I agree that a list of all possible SoC models is not ideal but I was
just following the current
style in the binding.

As far as I know, the whole LAN969x series has identical OTP so just
using a single
microchip,lan9691-otpc compatible is enough.

>
> >        - enum:
> >            - microchip,lan9662-otpc
> > +          - microchip,lan9691-otpc
>
> Why is it listed twice? First you say lan9662 is compatible with
> lan9691, now you say it is not.

They differ in OTP size, LAN966x series has 8KB while LAN969x series
has 16KB of OTP space.

I am open to suggestions, for me just a single microchip,lan9691-otpc
compatible is enough.

Regards,
Robert

>
> Best regards,
> Krzysztof



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

