Return-Path: <devicetree+bounces-238254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E4083C59296
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6DF7B3449E4
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFC12F5311;
	Thu, 13 Nov 2025 17:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PRmGVPPO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7042F2DC348
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 17:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763054646; cv=none; b=tGmDIcAZv1vrLUHa0QbrBHqtFiAMcEucOUT/vRFB3XO7g2dP6VqfFjMAWZJISOhqTz96JF9aiR0ifpcxvcVUMyCjvHW+mtx73fP9nMi3tJCdBaU5rQ0Arpu/+to+5ZJ4W5lKombqiCqLkfi/YvunT3qxLDDhin4yFBAUtDQTBuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763054646; c=relaxed/simple;
	bh=tpZxITtR8on+zNUed8tH2yMPgEN+COBsuVSgM6g49d4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tfgT9O5a5xlzKIWa/Wwi6sI5gGJrEDU8Dq0fOdL0uByC/VYdAB4ZXjVcb/4B7Mrz5wfn17bXIq7o9tGq9vPI9w26jD72+40GkpfYeo79nOGc7qtxJF/FTgDLqKl3Uvr4qsI4bPMtxFKCIyVgm9J8F+VuRB4oEEV+GbMBymR8Q6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PRmGVPPO; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640c6577120so1972333a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763054641; x=1763659441; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtyftZQVY4swvTgixLURevtyRejq31WTYbhe23ooHsw=;
        b=PRmGVPPO3Gu4uGvNI/wQfoX3wp4V2k+xu4cG34YS3TR+H4hw5bT9gyw5Z1+eW/CpYq
         K4iL6mop5YyNRxTUvLiIaTLGlJn7aIoa6L7cra7k/VcPJKo1IPjIDgcQ51Bddmzv/xAv
         iYVeXn1/Vh+wEW/sT+WOvldgkJgRm6uQsEUmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763054641; x=1763659441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WtyftZQVY4swvTgixLURevtyRejq31WTYbhe23ooHsw=;
        b=N9uwCYkRy1bNv8doJz/IHDcWTIEEYCpExNLOED41+NiVYQiRjXaUnmnJabjWreYpjw
         1hqPKTrbFqt/fzEpESs1MiCqgpursiTz3Pm543vksQaKTy0UEFjWBB1VTOLkPyyhJTA+
         pXoj4u4gcArvYl/WuyS/qeHPWBJdD3gf5T/0HZqPAjiNDoYUMj4JFvXIyRiNH6xCelo5
         hrTqtmsdjOwxgh5Nvc5QdXUlWQBHlin6J6CxGVBgWdXD+ceO9kU12zOfqqsy4nyy8oJC
         p0hr5OsDQ5wwcrvqJjOq0VSlXgrbBlLqKYZBA0GsweFnvCohXSS31Pz/Syfivn+iU82K
         QRCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUS56bJOa9SnwI4IpiDqcNWIF3tjCINZvCYhOHfzv+h30L6Rc+01b1/ikcWO6MaKDHYpj0iHIGuRIBs@vger.kernel.org
X-Gm-Message-State: AOJu0YxLQzLbVb/3RPbDm3OSAx7Y8dz0PH/1eJ/hILPtPs5UeM0+dbLA
	xdEZ4TfEQzTfJQr59UezPM6/eXCTC7xn2225vPs9tCnCXAaIj2K6mGe9srjL0sRPgHDsZobuab4
	r9oXXgG56
X-Gm-Gg: ASbGncvX4ySOCdO7ZewSOLBTNrDBEcMlDBbrAVdNTaM49bedFDBupuRri3CNZBuZa+M
	S7LQasKuabXjvdu4L91/0i34vfDzTMKWQTLR2W8rDNAYnM/X93ERLqdnCto61RcS6hWyisyE7rn
	TU39kRaApRmsdKKy4Gx4xg8HZiZqVMBqa0tMj82LMNTbIvPcnnr4CbhjNapiNqamv8YQYyX2Wca
	BvkhMpFKz71Llkw7SwDJYX2o9fV8LrmHXdakpYVrGEiAJV0eDoCkeSiUstWfP236faZJ7af46oK
	0Db1KjfMU+9YreERWLfv5O9nSyuDpOFdtP3w7aVu2AR7DFdPmPGHtYqJtyzmsPzWexuMVilvRBu
	PimLrzbanfQfWz/9DAuVcoI3jEzwv45HEM5ZfVYtTYkmC/oj1NW+yazLso/k4+YVW5FbfDHSk2N
	h/6XsI6n1EaTz6tohPBPw+u9OZ/lyBaejONn/v+gJJGkJLL7I71i9jWgrEWnxk
X-Google-Smtp-Source: AGHT+IHOl8CMsc8TTpWJj+OoqoBYYOpnD+kjgFG66byx2zfop25mwS68UXD8QbdSqZh/aYbV3OasbQ==
X-Received: by 2002:a05:6402:40c7:b0:643:4e9c:d166 with SMTP id 4fb4d7f45d1cf-64350e04721mr85128a12.8.1763054640605;
        Thu, 13 Nov 2025 09:24:00 -0800 (PST)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f90cesm1941464a12.15.2025.11.13.09.24.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 09:24:00 -0800 (PST)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b7346565d7cso150386166b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:24:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW7eBGhTfoPKKewBHbD+5UO871EIaCD/2FXDvnm3p11DVoUdqXIizgxSR+mWV129gp1bslT6l6FFmjy@vger.kernel.org
X-Received: by 2002:a05:6000:4008:b0:429:c54d:8bd3 with SMTP id
 ffacd0b85a97d-42b59384951mr167096f8f.53.1763054177127; Thu, 13 Nov 2025
 09:16:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.1.I72a0b72562b85d02fee424fed939fea9049ddda9@changeid>
 <05c833f0-15bc-4a86-9ac4-daf835fe4393@kernel.org> <CAD=FV=XXWK9pmZQvNk6gjkqe6kgLXaVENgz0pBii6Gai7BdL-A@mail.gmail.com>
 <00ea821c-5252-42cb-8f6f-da01453947bd@kernel.org> <CAD=FV=VSxeKgGcsRb9qiXq7nsbOWZjPvzmGEOhFA+pmABWdknQ@mail.gmail.com>
 <6490f20a-2492-4ee0-8f34-d529e0df0bad@kernel.org>
In-Reply-To: <6490f20a-2492-4ee0-8f34-d529e0df0bad@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Nov 2025 09:16:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Us7SU_OifVkS4mdfVhc=xGYSBiBpBk9aA1Ki0y+iYBpQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkZ_nOTQudV33wGWWwO5Hz7EB8FByvmJpxXsQ9PqvC8-S17wTHTwbtZyow
Message-ID: <CAD=FV=Us7SU_OifVkS4mdfVhc=xGYSBiBpBk9aA1Ki0y+iYBpQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: google: Add bindings for frankel/blazer/mustang
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 13, 2025 at 8:34=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 13/11/2025 17:23, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Nov 12, 2025 at 11:23=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>
> >>>>> +      # Google Tensor G5 AKA lga (laguna) SoC and boards
> >>>>> +      - description: Tensor G5 SoC (laguna)
> >>>>> +        items:
> >>>>> +          - enum:
> >>>>> +              - google,soc-id-0005-rev-00  # A0
> >>>>> +              - google,soc-id-0005-rev-10  # B0
> >>>>
> >>>> SoCs cannot be final compatibles.
> >>>
> >>> Right. I talked about this at length "after the cut" in my patch. See
> >>> above. I wish to relitigate this policy and wish to know more details
> >>> about where it is documented, the reasons for decision, and where the
> >>> boundary exactly lies between something that's allowed to be a final
> >>> compatible and something that's not. I made several arguments above
> >>> for why I think the SoC should be allowed as a final compatible, so i=
t
> >>
> >> Because this represents a actual device users run. It is electronicall=
y,
> >> physically impossible to run the SoC alone.
> >
> > I'm not convinced that this definition is as clear as you're making it
> > out to be. It's physically impossible to run many "boards" alone.
> >
> > Want to boot up a Raspberry Pi? Provide it with power. Hook up a
> > display to it. Hook up a keyboard to it. Plug in an Ethernet cable.
> > Plug an SD card in it. Without those things it doesn't run.
>
> But I can plug them...

I can plug my lga SoC into my dev board too. My dev board literally
has a place for me to drop in the SoC. I unscrew the socket connector,
carefully make sure that none of the balls of the SoC have dust
particles on them (and we have instructions for cleaning the SoC),
then drop the SoC into the socket (ideally using a vacuum pen tool). I
then screw the top back together which uses compression to attach the
balls on the SoC.

Yes, this is only true on dev boards and not phones, but we want to be
able to support dev boards too and it would be silly to have a
different split between DTB and overlays for dev boards and phones
that are based on the same architecture.


> > Want to boot up a lga-B0 SoC? Hook up power to the power pins. Connect
> > a MIPI panel to the MIPI pins. Connect a UFS chip to the UFS pins.
> > Without those things it doesn't run.
>
> These I cannot plug, it's impossible for me.
>
> My clumsy fingers are too big for these pins.

As per above, sockets do exist. They are pluggable. I have confidence
that even with clumsy fingers you could drop the SoC into the slot and
screw the connector down.

I'm still not totally convinced that it should require the existence
of a socket to justify this but, yes, they do exist.


> And following your logic, we should have the compatible for the
> transistors, because that's basically what SoC is made of.

My logic (stated later in my email) is that the minimum requirement
for a compatible should be something with a CPU able to execute
instructions. A single transistor can't do that. If you want to
combine a bunch of transistors together to make a CPU then absolutely
you should be able to have a DTB representing this CPU.


> > Yes, the complexity of just "hooking up" the components on an SoC is
> > an order of magnitude harder than a Raspberry Pi, but it's still just
> > hooking it up to external components. In both cases, we are modeling
> > the core "brains" (the part that contains the processor) as the DTB
> > and everything else just "hooks up" to interfaces.
>
> You mix the topics, so I don't follow. I speak here about bindings - you
> cannot have the that compatible alone, because it is incomplete, just
> like compatible for "transistor" is not correct in that context. You
> speak what could or could be DTB, different topic.

A "SoC" is "complete". It has a processor that can run instructions.


> > If I had to make a definition for what the base DTB should be it
> > should be the component with the boot CPU. _Why_ is that the wrong
> > definition?
> >
> >
> >> There are few - one or two - exceptions for the SoMs, but never for So=
C.
> >
> > OK, but the big question: _WHY???_
> >
> > Where does it say that a DTB has to be something that can run "alone"
>
> We don't discuss DTB here, but the top-level compatibles.
>
> Why? Because DT spec says so.
>
> "Specifies a list of platform architectures with which this platform is
> compatible. "
>
> And when you combine it with the standard definition of the
> "compatible", it is not *a* "platform architecture" but *list* of
> platform architectures describing this device as a whole.

I still don't understand why a SoC doesn't qualify for your
definition. Even if it did, there is _no benefit_ from excluding a SoC
from this definition. I'm trying to figure out what the benefit is for
holding to this stance.

In any case, maybe we can approach this a different way that I alluded
to in one of my other posts. Can we just call the SoC thing something
different and make everyone happy?

1. Rename the SoC file to lga-b0.dtf (device tree fragment) and
_REMOVE_ the top-level compatible. Problem solved--we're not adding a
top-level compatible.

2. Add a special node at the top level of the "dtf" file describing it
(so someone could figure it's useful for). Like:

fragment-info {
  compatible =3D "google,soc-id";
  google,product-id =3D <0x5>;
  google,major-rev =3D <0x1>;
  google,minor-rev =3D <0x0>;
  google,package-mode =3D <0x0>;
};

3. We can compile the "dtf" file using existing tools into a "dtfb".
This looks just like a "dtb" but has no top-level compatible but
instead has "fragment-info".

Now we're not violating any spec because we're not adding any
top-level compatible.


-Doug

