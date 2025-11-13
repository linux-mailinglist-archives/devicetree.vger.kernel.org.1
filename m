Return-Path: <devicetree+bounces-238276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 34423C598B2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5ABCC348A59
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6768031195B;
	Thu, 13 Nov 2025 18:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dskw5zhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA21F3126D9
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 18:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763059342; cv=none; b=HDoKAv8iVwwdtYGtrKdttjS5yuMKShH3OHvtEV7gyDwU8wuIiKcUcHZpcqC8RxHni6XgNsa1yjd+ghePIpF4+PwYcvpmnrCeKlINUycYV6gz/fmZHh7dWCDv5t4/2DBLaPv45i9w2K/DLTvcJglA/oNniWV9uQAjUiqADETDzNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763059342; c=relaxed/simple;
	bh=VCK4+5C8NcYq0P9jDNeakspMs/yrMuAbxdcuxCnWLok=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eNr460Zkq5Z9iUuuJAMOz+wRd2cLTGetULaCNzwM5tvMoLNZE7JLm++7/724RxE1itoCzCmnHKTDrrU/yYockGlxX9eHujCshpLNIWscthRYqtApcAJwfpxCATz56595e8K8lOrQXN4IXda98MEt9Hn02Y9uvXX/nQy8eLIxZcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dskw5zhW; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-640e9f5951aso3723044a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763059334; x=1763664134; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/pXTM/+Sn5ck0pJjBV1Lup/KQT4FwvuZ93IhS694xuE=;
        b=dskw5zhWogT04uel3cM8jIs9sWQhQ+6FIRvQeLyzP8NveV0ZGqEaLY6Y3ETVBQmwo6
         bw00AqF0KeV25X6SJlzJF61JxaWlZK+9I7VS8zEcnAi6dWuMLTgKQyV3bCl8nqgueaA4
         bIUHiekN/fUgVzdavUYyYe+w/15D7yb6dDaAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763059334; x=1763664134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/pXTM/+Sn5ck0pJjBV1Lup/KQT4FwvuZ93IhS694xuE=;
        b=avpKFVnOKU2YLRfjX1/vbfJ6ZlosdcxJSu949YfHPXC6e+GL1jP+uyZH9jy7n8Tqy6
         XSZqR3jYS6a0BUdtBe/LIXo23IIdG8poe5lqb7qeQNrBY/c68jm1m+NUES0445JLTw04
         QVUxM/GHUAylRgchcJdYWdqDSwRsQnfjzKgyoD74kn/r2gCp3mP4OTVNLUyMVFqqohCX
         c/PxmAzypJlrkI+jXNBCl69zWt84wH4BVHF8ATv7U9gpm1bQbQD1V/wYV3DpgSwHKul7
         1WN5WUFQxAYTB+L6fylajUO/nB6/aqv9fU3w8q4wJcSqSa9yw4LxC8pw3jeB3oO7Wymk
         K0xA==
X-Forwarded-Encrypted: i=1; AJvYcCXvJB6wUXNQrLd1N/btWBXj2jV1FrfOkWHNHslSajTC8Cx1qS8akUJnMuPSnbALzlzycTR2C61qvwYX@vger.kernel.org
X-Gm-Message-State: AOJu0YzNolZiTH+MqOLiYZ1Pc00g/bhWBa4BtuvoTRQFHMQd1+NBd4Qo
	HT0TZhLMUq39soDz0f1rAav2KVveqxuHz5LMtvvDGM+bnja9bEpsy6ctnadOfqZ9a9Nnp/tpzzg
	P1bXbNpNF
X-Gm-Gg: ASbGnctmZBtdxftA2/x9D7leSjJmvglF90QTitBUaeC3qYDYQ/pmKquj/k9QPpLW3pu
	m6DfZNRlv+LGkbhc4F3JzTpDrkb3S2EuGcGL+qo9oSMb3mei2Z7OCWieTW4UIawkEzdwtpw1z6+
	iArZXk5tpa4DjE5kdISflkBJe3mq9AJv6JQvbtOwVbW/PDvjRSVnVI/blUQi0LMBJX5WF1mWQWJ
	UJlm1H4ijTbZ7f6FivQx/GpNEzISD7vL+NGTYU68725gJGXWlSPbOJg7XS7/wSmjkifqIRF/LS9
	dSaV8FORIfYXFqAr0Y4hkJL8Yp5PeWq6vJoJR0xD0NmxRomR2wL9/exk0ICzp3I/m1703VHrhfZ
	arxkQwcTEvF1TOo35xaVwR7cmTYqrLbe0hdIxM9q0fILj95CqVBABkaiR11UewUkmgAxg9gyfHb
	kfP1+VmAVpiNlzUnqDsBUIVEeKayuqUDhs8mJLQGLSaL0fAWDkrKyj2VEgWd1R
X-Google-Smtp-Source: AGHT+IGgpp2rVz9bSfQ5m7mTqB7t8ku43qmnrxoYrdDmJfJhCN2VhwpMeflUosbmNJohnR42w2AsEA==
X-Received: by 2002:a17:907:724e:b0:b72:8e31:4327 with SMTP id a640c23a62f3a-b7365afa557mr54413066b.25.1763059333691;
        Thu, 13 Nov 2025 10:42:13 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80a6dsm214063166b.47.2025.11.13.10.42.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 10:42:13 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477563e28a3so8021035e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:42:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3fqeXF5E5/17l3yrfLh9BcufYziWUqNIZUOKxLM/Ig+btEfHcAIzfPUZT1IwFPoRJ+zJRCwWxJEwR@vger.kernel.org
X-Received: by 2002:a05:600c:c87:b0:475:d91d:28fb with SMTP id
 5b1f17b1804b1-4778bcb36d1mr39940165e9.4.1763059330721; Thu, 13 Nov 2025
 10:42:10 -0800 (PST)
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
 <6490f20a-2492-4ee0-8f34-d529e0df0bad@kernel.org> <CAD=FV=Us7SU_OifVkS4mdfVhc=xGYSBiBpBk9aA1Ki0y+iYBpQ@mail.gmail.com>
 <abb77afe-c285-46ba-88ac-08574bd67712@kernel.org> <CAD=FV=VcAbgv41tjgWQN4i8Wqk6T6uvdpQ261Q_hcKM4AMpGEw@mail.gmail.com>
In-Reply-To: <CAD=FV=VcAbgv41tjgWQN4i8Wqk6T6uvdpQ261Q_hcKM4AMpGEw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Nov 2025 10:41:59 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X4bV_YdeqymOMb5dphZwW4T4tASJo6hbuCjDMykVtYVg@mail.gmail.com>
X-Gm-Features: AWmQ_bmy1aehQ6uhI85I3Z-_qkNj2-reqpyxguooVv-yaJfHf2TNxdZyFa3FBPw
Message-ID: <CAD=FV=X4bV_YdeqymOMb5dphZwW4T4tASJo6hbuCjDMykVtYVg@mail.gmail.com>
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

On Thu, Nov 13, 2025 at 10:04=E2=80=AFAM Doug Anderson <dianders@chromium.o=
rg> wrote:
>
> Hi,
>
>
> On Thu, Nov 13, 2025 at 9:43=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > >>> Yes, the complexity of just "hooking up" the components on an SoC i=
s
> > >>> an order of magnitude harder than a Raspberry Pi, but it's still ju=
st
> > >>> hooking it up to external components. In both cases, we are modelin=
g
> > >>> the core "brains" (the part that contains the processor) as the DTB
> > >>> and everything else just "hooks up" to interfaces.
> > >>
> > >> You mix the topics, so I don't follow. I speak here about bindings -=
 you
> > >> cannot have the that compatible alone, because it is incomplete, jus=
t
> > >> like compatible for "transistor" is not correct in that context. You
> > >> speak what could or could be DTB, different topic.
> > >
> > > A "SoC" is "complete". It has a processor that can run instructions.
> >
> > Then show me executing any piece of software, which is the consumer of
> > the bindings, and runs on the SoC without the rest of the hardware syst=
em.
>
> Show me something that runs on a Raspberry Pi (the models that don't
> have eMMC) that runs without hooking up power and plugging in an SD
> card. :-P
>
>
> > > In any case, maybe we can approach this a different way that I allude=
d
> > > to in one of my other posts. Can we just call the SoC thing something
> > > different and make everyone happy?
> > >
> > > 1. Rename the SoC file to lga-b0.dtf (device tree fragment) and
> > > _REMOVE_ the top-level compatible. Problem solved--we're not adding a
> > > top-level compatible.
> > >
> > > 2. Add a special node at the top level of the "dtf" file describing i=
t
> > > (so someone could figure it's useful for). Like:
> > >
> > > fragment-info {
> > >   compatible =3D "google,soc-id";
> > >   google,product-id =3D <0x5>;
> > >   google,major-rev =3D <0x1>;
> > >   google,minor-rev =3D <0x0>;
> > >   google,package-mode =3D <0x0>;
> > > };
> > >
> > > 3. We can compile the "dtf" file using existing tools into a "dtfb".
> > > This looks just like a "dtb" but has no top-level compatible but
> > > instead has "fragment-info".
> > >
> > > Now we're not violating any spec because we're not adding any
> > > top-level compatible.
> >
> > Didn't you just describe an overlay or DTSI file?
>
> Sure, you can look at it that way. ...and since you're happy with
> "dtsi" files I assume you're happy with my "device tree fragment"
> files, right?
>
> The difference here is:
>
> * A "dtf" file must be able to compile (with dtc) on its own. Contrast
> with a "dtsi" file could rely on labels that are provided by the file
> including it.
>
> * A "dtf" file needs to have "/dts-v1/;" at the top, unlike a "dtsi" file=
.
>
> * Kernel (or other OS) build rules will be happy compiling a "dtf"
> file. This is in contrast with a "dtsi" file.
>
> * A "dtf" file is _intended_ to be compiled and hooked up to an
> overlay. This means it will always be compiled with "-@".
>
> * We can document the requirement that a "dtf" file needs to live
> together with the overlays that it will be combined with to make
> complete device trees. This means that there is no need to set a new
> ABI boundary here and we can be flexible with what labels are exported
> by the "dtf" file.
>
>
> If that all sounds reasonable, I'll get working on it right away.

FWIW, I wasn't terribly happy with the name "fragment" or the "dtf"
suffix but couldn't come up with anything better. ...but then I just
had a realization. Perhaps it would be better to think of this as a
"SoC Tree". Thus:

* .sts: SoC tree source
* .stb: SoC tree binary

...and a "SoC" tree it always intended to be the base for a device tree ove=
rlay.

This also matches with my assertion that really anything with a CPU on
it should be able to act as the base here.

-Doug

