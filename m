Return-Path: <devicetree+bounces-243805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 184F3C9D208
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8516D3477C7
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FCA204F93;
	Tue,  2 Dec 2025 22:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="g6kP23wg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4929C2FA0F6
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712813; cv=none; b=r2gmKXydlkGLry7zdfTKulSlHfILBcdtrwmKxgIpe8fS9m+X860V4PkH4nltGlBUfoZt+X1WYeQmhMUEeGGwRIIqjedWEEBb1p1K44k+A68fcxOigAlROmGx0zeKq+M4XSaB1quqC0/nbYgYKleY21I84MH3NrB0E/NAzN7dumQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712813; c=relaxed/simple;
	bh=OoXXtyJW5KXAsacbVq5Fs6IJuBLiDgKDL14fYkxOfRQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kv+t+LH1JGIRWHobi59wbZxRuGVkZ2CmdccIVYvTcyqq9Kqp7x3D4caYmhhX32b33O5/b+ucgqzyDPADjfR6I+xQoR8Zn3iq3xayO/aYLMEC55bqO91oHn8ULDv9pJJg7z+Wyws75qkK8xgP7SZQMkquXA6BkUqW30fr+z7IjQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=g6kP23wg; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso10796220a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764712805; x=1765317605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yegdrDTIiSzr8qdU/hFwYrh2y7sAILKZQL5h+MMY60s=;
        b=g6kP23wg8eCNF33cBlugrdyIfu2Xp5MMcKpU/XiglN7UZIUEF6sWbBpbvy0FU+YctF
         TiCThcIgfDnIWfaJ+SrxPabT/XdYhrQxuvj40+zNs7lGYeDbaoLeVgtFYnSWBoxcALGU
         BcThn9Hn3A47HjMN7MYRJjJn7HbK98JkOY/Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764712805; x=1765317605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yegdrDTIiSzr8qdU/hFwYrh2y7sAILKZQL5h+MMY60s=;
        b=VY9hPWN3GbgNL5vLoiiN0+nlwQKTc1WDnl72I1Dd0UbCSYFj13Dr/n0bm2/0hoPBHF
         QaeioOq/qkZ0+Km4Oa9VrfaeQQqgUkGgg9oYcb0+fGe0mM/WFkWHrhXd0Jc/EQ3tXzNn
         +q9TxBPW1uzNOkYptImOng0kiA79dsCK1lUJcMcuoBiZjw++mCv9Fm/p8NEYqOmZGny8
         Vysiu3PnsC/joBEjvW2UFhsoC7QXE+2SNmDPSPnsR6e58KdN5fQtnD2zrJrvLLy0V6zq
         8sYr5o8uUHZ6VsXEZo++Fp82L6OfiOJW2dtPRXqKKGsyRUWhYFed5QXSkHf7ZIZxjBKV
         7LRg==
X-Forwarded-Encrypted: i=1; AJvYcCW6pUjZ7YTlZnu3K1eNQcxAlAddnSYgqY8CS7Yj/mK/IzTYuqr1JNe3AaiJf764XYTYjoiPzSjJ2llW@vger.kernel.org
X-Gm-Message-State: AOJu0YzelrdYqrAlovHPEuVRxTrPZKWnLcpdN/fACdAgT/v8t5c1o6OR
	kS4eCn1FDmyahb/Do5sZ9wpI+x7320Ji2p7DaZKguw7BUrDmZqmPqOtZs3HejpteD0s4gzWs4ZS
	XCgFyWZ7H
X-Gm-Gg: ASbGncvH++yEMxtMp1NzFS+mkhvD6d2/0eIg8nhjo09hjygHAFMCvQb8JVXMkjKss7C
	2k2s6TFFB8N5lf6Xj/u/jljppyDxeLl0AQNE7CVIolkqepQTZo16zSjxL/EPS40SOwz6ZIbUE2W
	Lfa12jZkz1ZDiEoWFD5uhOdQllL5QLH2uyIhCJnAX/1WIjFF9SMyJ9zUjlEPTrKAgipbG/wnTGU
	oACrOOYrM7hm1W1WOC5Ix8LVj5/OIBFQshammMzL5e0AUaooMRCQybNY6Ct3/yzO/+Gr/dKuFC1
	q/4BF0DMTNhjn0n2WapkVfRIQmmnvEMkEa4cGOhff3QjefiYgSfzQ7i6alrxevZY+/Qn/mSgbdT
	KdQNtC3LlXFic71lii1k3twn6P5BCudBX7A6Ja752CtlFuVumiLnCXHmPjhleoytGmpJkSkd57D
	8kE8tPl5MpaE8prdFjgbBPbCu6lOMAHPPpnkxc7CHDGQEkK3KHKw==
X-Google-Smtp-Source: AGHT+IGPk/kCNEurQSWOSuCo08uSYZHuEI9uWMPIrYtGofhJo/Xb+CDhUmNibpOAsJ93pcrTKLp4Jg==
X-Received: by 2002:a05:6402:42ca:b0:640:9eb3:3686 with SMTP id 4fb4d7f45d1cf-64554685822mr39510255a12.19.1764712804771;
        Tue, 02 Dec 2025 14:00:04 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751062261sm18525336a12.33.2025.12.02.14.00.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:00:04 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477632d9326so38305035e9.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:00:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWxjiu4ADAhk+IfZp9m/hIOjInCIb1T8yseyJQdOeWBkZBBQvRKl3gBEpkE7f12kVUjI5skQFRdKeY1@vger.kernel.org
X-Received: by 2002:a5d:5e01:0:b0:42b:3131:5435 with SMTP id
 ffacd0b85a97d-42cc1ac9de0mr44938296f8f.2.1764712801617; Tue, 02 Dec 2025
 14:00:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com> <CAL_JsqJz8D53OF8PGaq+o6X5zfE1Y4NrH+BpYPEo6OENviJvbg@mail.gmail.com>
In-Reply-To: <CAL_JsqJz8D53OF8PGaq+o6X5zfE1Y4NrH+BpYPEo6OENviJvbg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 13:59:50 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xe3zqbyN5RVRppWbN=v6L=nECs6HtCu43m=QYUa=iV4w@mail.gmail.com>
X-Gm-Features: AWmQ_bmCUBKo9K_aGB-WNG6OGoI6RAsr0V6rdUnS6-V-21fTohUtnWxeXdCfFXY
Message-ID: <CAD=FV=Xe3zqbyN5RVRppWbN=v6L=nECs6HtCu43m=QYUa=iV4w@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Rob Herring <robh@kernel.org>
Cc: Julius Werner <jwerner@chromium.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	yupingso@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 1, 2025 at 4:48=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> > > Possible example if we support 3 levels:
> > >
> > > SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc=
"
> > > overlay1 (incomplete) compatible: "referencevendor,referencecodename"=
;
>
> I don't understand this one...
>
> > > overlay2 compatible: "boardvendor,myboard-rev1", "boardvendor,myboard=
"
> > > merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
> > >                    "referencevendor,reference-codename",
> > >                     , "socvendor,mysoc";

I was just trying to come up with an example with 3 levels. Usually a
whole pile of boards are based on a reference design, so the reference
board could be an extra level of overlays. Thinking about this with
the sc7180 Chromebooks, you might have:

SoC: qcom,sc7180 (base DTB)
Reference design: google,trogdor
Actual board: google,lazor-rev1, google,lazor

So final compatible could be:
"google,lazor-rev1", "google-lazor", "google-trogdor", "qcom,sc7180"

In the case of what we ended up with upstream for sc7180 Chromebooks,
we actually _didn't_ include the reference design (google,trogdor) in
the list of compatibles in the final board. I think this was because
the name of the reference design ("trogdor") was also the name of the
reference _board_ and it would have been confusing. ...but I can also
see how one might want the reference board to show up here. I don't
feel super strongly either way.

In any case, I'm OK with not focusing on 3-levels right now and I'm
not actually planning to use it in the short term, I just want to make
sure that anything we do doesn't preclude it...


> > Sorry, I only cursorily followed the previous discussion so I may have
> > missed the exact need for this part. But I would caution against any
> > proposal that changes the basic rules of how an overlay is applied.
> > The definition of how overlays work has (I think?) been stable for
> > over a decade now, and is implemented in bootloaders that often cannot
> > easily be updated. I absolutely support your effort to get more
> > upstream standardization for managing base device trees and overlays
> > (which I think need to be flexible for arbitrary layers, not just SoC
> > and board), but let's not break the overlay code in old bootloaders
> > while doing it.
>
> I think merging compatibles is orthogonal to splitting SoC and board
> DTs. Doug needs to merge because there is more than 1 SoC version or
> base DT to pick. In many cases (SoC revision compatibles are the
> exception upstream), there is only 1 SoC DT and N board DTs. So we
> should consider both and define them separately. In the simple case,
> you'd have something like:
>
> SoC (incomplete) compatible: "socvendor,mysoc"
> Board overlay compatible: "boardvendor,myboard-rev1",
> "boardvendor,myboard", "socvendor,mysoc"
>
> Then you just apply the overlay and it overwrites the incomplete
> compatible. That works with existing overlay applying (overwriting)
> for multiple steps as long as each step is a superset (compatible
> list) of the prior steps.
>
> In Doug's case, I think you need code to decide which base to pick and
> then fixup the final compatible.
>
> SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"
> Board overlay compatible: "boardvendor,myboard-rev1",
> "boardvendor,myboard", "socvendor,mysoc"
>
> And then after applying, you do the merge to insert the SoC rev compatibl=
e:
>
> "boardvendor,myboard-rev1", "boardvendor,myboard",
> "socvendor,mysoc-rev1", "socvendor,mysoc"
>
> You need SoC specific code to know what SoC revision you are running
> on, so SoC specific post apply code should be fine too. There's not
> any existing bootloader problem because you need code to handle this.
>
> Maybe that fixup will end up being generic enough that it's not
> platform specific, but that's an optimization of the implementation.
>
> > Is there really a need to merge the compatible strings in your case?
>
> Well, you could just require duplicating an overlay N times for N
> bases, but that doesn't scale

I'm actually OK with deferring the "pluggable SoC" problem for now.
Even for the Google Pixel team, it's a bit of an edge case. If we have
to solve it by duplicating "dtbo" files for socketed boards (or any
board which could have more than one SoC) that's probably OK for now.
Once other problems are solved, we can perhaps come back to the idea
of merging compatible strings and/or other properties.

In v1 of my Pixel 10 series I wasn't even trying to support multiple
SoC revisions, I was just trying to look forward to the future based
on what I saw downstream. ;-)

If I drop the idea of merging compatible strings and just duplicate
the "SoC" parts of the compatible in each of the overlays, then do we
have something that's landable to get things off the ground? I think
Krzysztof will still NAK my base "dtb" that represents just the SoC
since it's not "complete". I certainly wouldn't want to just steamroll
over his concerns. Krzysztof: Do you have any thoughts? Do you
understand my goal here and agree that it's something worth solving?
If you don't agree it's worth solving, would it help to hear more
people express their interest in a solution? If you agree it's worth
solving, can you provide a suggestion for how we can move forward?


> > I
> > think in the vast majority of platform identification cases, code only
> > cares about matching the most precise string (i.e.
> > "boardvendor,myboard-rev1"). If we do feel like having the whole chain
> > of identification is necessary, it could be achieved by just
> > copy&pasting the extra strings into the overlay file. If we have
> > cross-validation between base and overlay source files we could also
> > have the validation check that the overlays correctly contain all
> > compatible strings from their base tree. If we know that the base
> > trees aren't standalone anyway, we could also just invent other
> > property names that identify them (e.g. `soc-compatible =3D
> > "socvendor,mysoc";`). Anything other than breaking the overlay format
> > would be preferable in my opinion.
>
> There's also a use case I'm aware of where the base DT is just for a
> SoM and then the bootloader applies an expansion board overlay. So it
> is not always "not standalone". And of course, this could be combined
> with what Doug wants to do.
>
> Note that for any new property (or an incomplete compatible) like
> soc-compatible, you will need to consider how we validate it.
>
> > I also feel like we need a better standardized way to tie base device
> > trees to overlays, like your `/loaders` node proposal in an earlier
> > email, although maybe that's an orthogonal discussion (but related,
> > especially if there's supposed to be cross-validation between base
> > trees and overlays). The compatible string is just not a scalable way
> > for bootloaders to make this determination, there may be a lot more
> > differentiation than just "SoC" and "board", and the scheme almost
> > certainly needs to be platform/bootloader-specific because every
> > hardware vendor has their own ideas about how to group and reuse parts
> > of a platform. This information doesn't necessarily need to be *in*
> > the device tree, it could also just be in a separate YAML file in the
> > same repo (since bootloaders will almost certainly want to have it
> > transformed into their own out-of-band descriptor at build-time
> > anyway, so that they can compress the device tree itself and don't
> > have to decompress each one for matching), but it needs to be
> > somewhere.
>
> There is a proposal here[1]. It's simple, but I do wonder if looking
> at the root compatible only is too narrow of a view. An overlay could
> target a connector compatible for example.

Yeah, I'm still not really a fan of that proposal. I think different
loaders are going to need different information to know which overlays
to apply, so we need to define "yaml" files for different loaders and
define the formats for a few different loaders.

From a validation point of view, I'd imagine we'd want to (if
possible) validate all different combinations, but (if it's
well-defined in a binding) we could potentially include rules in the
kernel that understand different loaders and could come up with
different things to validate.


-Doug

