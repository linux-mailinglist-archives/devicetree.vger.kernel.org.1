Return-Path: <devicetree+bounces-37794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5A7846382
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 23:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F326F1C21B1E
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 22:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4891140BE5;
	Thu,  1 Feb 2024 22:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Og48ixHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CC13EA66
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 22:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706826987; cv=none; b=iS9pw97LNGsC5DYYXvIF55cWMLqPGRoYK74Rv1BhrTJzSeMnTnO722yavrw3tQV3IGibacVISK4b/I9BJfmiYM7qFElLV/dOpEUakVenTEY42dbWW95jciRTwgnaCQjFmcckrJNiprsfQx4M2lMy4X0RW6g3oUpxInDkB23Jppo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706826987; c=relaxed/simple;
	bh=HnuzGK7KwPL9dQj1488YDbBiMjld8nQKlTrfaJ0vMdo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bdB0dKPiAcB8R85AGjE4vemc8DWsnPO4NI4/GlOAJfewREwENhEi9kBrob9B538WHQM5fBiuwTPV/7X0OuIoHYKJQUPLwqK5EDj4nfqWy/kSqTdYWzUlYLov2ROIf+68tIcndtGvf51K+ccx+k4x30AjRp0CU69i/EMRj46qyCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Og48ixHF; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-55b5a37acb6so350523a12.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 14:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706826985; x=1707431785; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nc9AjV9VnXvj0gElK7xS9GgGubP2FX5rhFZEjOUUl0M=;
        b=Og48ixHFzxN1HBPoIPKDvjc3yegFHVWVHWGzvHBQ0oiMmFZH8tbaC5/A/9AM7OA4eu
         iZeYHtcvr5kytlZeCuX+E3lWSuMv4YhtboM4G4JzE6CkDU1rKJHcU1M2lp9BO2VP6vyw
         wQZgfDHz567UZIe979z+85hzW2SXWO7IMfUII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706826985; x=1707431785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nc9AjV9VnXvj0gElK7xS9GgGubP2FX5rhFZEjOUUl0M=;
        b=EX82yax4Ecu1FCJh7MLWj3+sLH8Y5XeKKQRORyMsvgpBWqw97q7RV1GNGbcxq3cuYD
         uAWb3a5yKT5FHo10r6GGCBDTB7zQReKEXC9l506zgHd3wgarwA/jurHVFpBgsrne2TNH
         +2itMXi181YIcXKxq1kVNSS7yN0rzVgHXvnacS7HRg/O8RNS+RTGdUghOd7OrCnVRGxG
         9dM2txuimPZYGo3o4sCqeIA3gRmouvJctxymMNU5qw4T3EmXXjjr5iofANykYa2XpWAA
         J5x5Q2QmuI7+7jemi+Wok3XS0JS40MwGwhDTH4V8t1OvV8OaJvBasUqtKtcve47mjur/
         oQag==
X-Forwarded-Encrypted: i=0; AJvYcCX9rbLb9d7h+/S63Q4yzdXIXwEl5cceDxLQ7rjHoL2mlDEtw/yNNtfnaBNuacRuY2lwjbzBuJEdEGKr/zzOaE9a5c4vU6yJuX4u8g==
X-Gm-Message-State: AOJu0Yy6rITeTR2OrDhSqLYF6QedC5uFvSJ6ZmEXYr66XNEIGkkmNFNU
	XBXPq+oL1j8NDTS524m/VmYh3K9IQ0WIBuJ+NTQWMhmyrajvBhb67apJ+LklQxOrKfAU//GZ0Yj
	PdUhaaBEVvloXWT6pvw2NvoqihLgHsOclu4mV
X-Google-Smtp-Source: AGHT+IEW7fH6dadSCIiSQ50GrYUoD52RIYgD2qpzj9Y6cYIUXNrJ5h7Qrxlwi5KcbnIeJfgiJ0hwceuIOj5T8BfF/Mo=
X-Received: by 2002:a05:6a20:7486:b0:19e:3462:b7be with SMTP id
 p6-20020a056a20748600b0019e3462b7bemr4210398pzd.4.1706826984744; Thu, 01 Feb
 2024 14:36:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119215231.758844-1-mmayer@broadcom.com> <20240119215231.758844-4-mmayer@broadcom.com>
 <f46951b9-36b0-4155-b6ac-3d3f7cc8ef37@linaro.org>
In-Reply-To: <f46951b9-36b0-4155-b6ac-3d3f7cc8ef37@linaro.org>
From: Markus Mayer <mmayer@broadcom.com>
Date: Thu, 1 Feb 2024 14:36:13 -0800
Message-ID: <CAGt4E5taqv2kgK4ZF6R+otKwrVYiaNNkeCu5Qv7xW8cyBvv3Fw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: memory: additional compatible strings
 for Broadcom DPFE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 13:27, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/01/2024 22:52, Markus Mayer wrote:
> > Add versioned compatible strings for Broadcom DPFE. These take the form
> > brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.
> >
> > The chip-specific strings have been kept for compatibility purposes
> > (hardware is in the field). For new chips, the properly versioned
> > compatible string should be used.
> >
> > Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> > ---
> >  .../memory-controllers/brcm,dpfe-cpu.yaml     | 21 ++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > index 3f00bc2fd3ec..42c8160d95d1 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > @@ -10,9 +10,28 @@ maintainers:
> >    - Krzysztof Kozlowski <krzk@kernel.org>
> >    - Markus Mayer <mmayer@broadcom.com>
> >
> > +description: |
> > +
>
> Drop blank line.

Will do.

> > +  The DCPU (DDR PHY Front End CPU) interfaces directly with the DDR PHY
> > +  chip on Broadcom STB SoCs. An API exists for other agents to retrieve
> > +  or set certain DDR PHY chip parameters by JEDEC.
> > +
> > +  Different, incompatible versions of this API have been created over
> > +  time. The API has changed for the some chips as development progressed
> > +  and features were added or changed.
> > +
> > +  We rely on the boot firmware (which already knows the API version
> > +  required) to populate Device Tree with the corresponding compatible
> > +  string.
> > +
> >  properties:
> >    compatible:
> >      items:
> > +      - enum:
> > +          - brcm,dpfe-cpu-v1
> > +          - brcm,dpfe-cpu-v2
> > +          - brcm,dpfe-cpu-v3
> > +          - brcm,dpfe-cpu-v4
>
> I don't see my comment resolved - except more unusual order of
> compatibles - and nothing in commit msg explains my previous concerns.

I am confused. What about ordering them in alphabetically ascending
order is unusual?

Which concerns, specifically, are you referencing? I promise I am not
deliberately ignoring concerns as there would be no point in doing so.
I have nothing to gain from it. I am trying to get code accepted into
the kernel. I am not trying to "win any battles" or "prove that I can
be more stubborn" or anything of that nature. If it is possible to
integrate concerns raised by the maintainer, I will gladly do so. And
if not, I'd like to find a way that works for both sides.

BTW, I once used to be on the Linaro Landing Team for Broadcom. You'll
find some commits from me in the kernel that carry a linaro.org e-mail
address. Most are from over a decade ago. Yikes, time flies!

The reason I am mentioning this is to point out that

* I am not new to this.
* I am respecting the Open Source community and so is the rest of the team.
* We are trying to do the right thing and be "good citizens".
* We upstream whatever we can to the relevant project, not just the kernel.
* We aren't on some kind of power-trip or unwilling to listen to feedback.

I am not saying this because I think any of the above makes me special
or particularly accomplished. However, I do think that some things may
need to be clarified as there does seem to be a certain attitude at
play here, with certain assumptions, that is far from constructive.
Hopefully, this has now been cleared up, and we can move forward with
addressing the outstanding concerns regarding our DPFE compatible
strings.

> I think my final comment was pretty clear yet ignored completely. There
> was no follow up:
> https://lore.kernel.org/all/3fff866f-fbe8-4d23-87f3-275380adf3d4@linaro.org/

Unfortunately, it may not be as clear as you think. I did my best to
incorporate what I thought you meant. Clearly that didn't work out so
well.

So, please clarify in more detail, and maybe showing some examples,
what it is you would like to see. For instance, I have no idea what
"(e.g. bcm7271 + v1 + generic fallback)" is actually supposed to mean.
Is that shorthand for 3 compatible strings (brcm,bcm7271-dpfe-cpu,
brcm,dpfe-cpu-v1, brcm,dpfe-cpu). If so, how is that different from
what we already had?

> so with ignored comments: NAK

Like I said before, it is not clear to me what you are looking for.
I'll gladly address any concerns as much as possible.

Regards,
-Markus

