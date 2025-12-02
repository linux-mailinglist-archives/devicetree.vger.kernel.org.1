Return-Path: <devicetree+bounces-243547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36662C99AC9
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 01:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ECCFF4E12D8
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 00:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF90A78F4F;
	Tue,  2 Dec 2025 00:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kni7xeGE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1DC1FD4
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 00:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764636526; cv=none; b=JAlUFrCs85QSH7eZtO8/8rk6Qe6lykejJK1/2P4yuT/wklUeVoH3xfzxA2ufRYgBI6g9Gsizv4TUDNSclVyXSb+VqtMpUsvFAYQ4IW2KCTXHfRzAgiI3A9PYvhZ78b2P7PGRHpGnhcd1rvFD5/qWfF1DOrVd0FKh2NCplKmWDIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764636526; c=relaxed/simple;
	bh=F1zMf0xAV3n5GajLqqtfHNPR2ObKgiI1lW5iYWJGjSY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dWcAHSVEHm4O33BedyUeK5mqKrD6UWuGJT3RiBGxtfBTocIexJhgv5If1s1cU0UCH4S3M8CQS7b9Gy9p6DsAGN16rK+K8Xrku3OfKfdK18GF6AX7Q4mbyPCdBfdn4xSh8gSBY9zUOyxlSz3D0MoU/p8UBkWxstZX0fG6GyJ0pPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kni7xeGE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A4D0C2BC86
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 00:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764636526;
	bh=F1zMf0xAV3n5GajLqqtfHNPR2ObKgiI1lW5iYWJGjSY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kni7xeGEcSHgsOn0IoB0h0waN+XHTY6dxaVorAYfaItXdCWeLm8eOJd4WMd13o2sH
	 rCpk4mtZOMdbozE2e7ITrTSVRbc7BEpJsy2HACkib3Wkp98RbxO2nGyBePjOS2L2qd
	 8QS3F+eNHDYAbsoEHqCO930npFXEjZSKYQCCN+YN8e5O6S9+VYGGg4IRgosY9DBVxo
	 1FOvumZLy9d0FBlKxtBI/FWM7psUDjmeOh1upIm8mMjraiN1BV5pqtUHo5SmD7+MJC
	 zPpyB3BwFvske5HxuZ9VYQBqnOo9fhefbML9otbLrrKS7pPq/YCL+fJJFccbhnn/mi
	 +kqZR9TCbvsgw==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b76b5afdf04so859291266b.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 16:48:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUYIIryfqHr5TfobDMsXnLGterqcJm7uJ/linuJJDO9/PrpfSrocixIcL3n0R5T23yZ7xH8vvet5qzn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa42HKco1Xj14XWcye2VuPJG2O/xyPKOYSj2Sfpnxcom6Qsi8S
	yZLNzt/z9t6tvpvHZAbB/AtqQJPjqd6NQy1ymX8YDfhOxUdYaPoUnMe11CZU9mH9RnOV/JCIW3g
	7jA1K6V4rzGPrcznOkyLp36vIXJHOkw==
X-Google-Smtp-Source: AGHT+IHsbAgkTYC3BiyJbz7RyFZBLR+6hEYw0E6ajgDKEs+abMeN+Q9Ms42Dfb0hRLTV+mlCnXEF5zGTuqKzeflJPYI=
X-Received: by 2002:a17:907:9812:b0:b73:8e7d:4f91 with SMTP id
 a640c23a62f3a-b767184b2b6mr3860980966b.41.1764636525152; Mon, 01 Dec 2025
 16:48:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com>
In-Reply-To: <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 1 Dec 2025 18:48:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJz8D53OF8PGaq+o6X5zfE1Y4NrH+BpYPEo6OENviJvbg@mail.gmail.com>
X-Gm-Features: AWmQ_bmC9dfGHTRkyO29JA1uPLAX1tEAvsj_cavV6WehLJKkNSkE0dPMilgLT3M
Message-ID: <CAL_JsqJz8D53OF8PGaq+o6X5zfE1Y4NrH+BpYPEo6OENviJvbg@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Julius Werner <jwerner@chromium.org>
Cc: Doug Anderson <dianders@chromium.org>, devicetree-spec@vger.kernel.org, 
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

On Tue, Nov 18, 2025 at 5:48=E2=80=AFPM Julius Werner <jwerner@chromium.org=
> wrote:
>
> > 4. When applying an overlay to a device tree that's "incomplete", the
> > top level overlay will be merged instead of replaced.
> >
> > Example for 2 levels:
> >
> > base (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"=
;
> > overlay compatible: "boardvendor,myboard-rev1", "boardvendor,myboard";
> > merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
> >                    "socvendor,mysoc-rev1", "socvendor,mysoc";
> >
> > Possible example if we support 3 levels:
> >
> > SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"
> > overlay1 (incomplete) compatible: "referencevendor,referencecodename";

I don't understand this one...

> > overlay2 compatible: "boardvendor,myboard-rev1", "boardvendor,myboard"
> > merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
> >                    "referencevendor,reference-codename",
> >                     , "socvendor,mysoc";
>
> Sorry, I only cursorily followed the previous discussion so I may have
> missed the exact need for this part. But I would caution against any
> proposal that changes the basic rules of how an overlay is applied.
> The definition of how overlays work has (I think?) been stable for
> over a decade now, and is implemented in bootloaders that often cannot
> easily be updated. I absolutely support your effort to get more
> upstream standardization for managing base device trees and overlays
> (which I think need to be flexible for arbitrary layers, not just SoC
> and board), but let's not break the overlay code in old bootloaders
> while doing it.

I think merging compatibles is orthogonal to splitting SoC and board
DTs. Doug needs to merge because there is more than 1 SoC version or
base DT to pick. In many cases (SoC revision compatibles are the
exception upstream), there is only 1 SoC DT and N board DTs. So we
should consider both and define them separately. In the simple case,
you'd have something like:

SoC (incomplete) compatible: "socvendor,mysoc"
Board overlay compatible: "boardvendor,myboard-rev1",
"boardvendor,myboard", "socvendor,mysoc"

Then you just apply the overlay and it overwrites the incomplete
compatible. That works with existing overlay applying (overwriting)
for multiple steps as long as each step is a superset (compatible
list) of the prior steps.

In Doug's case, I think you need code to decide which base to pick and
then fixup the final compatible.

SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"
Board overlay compatible: "boardvendor,myboard-rev1",
"boardvendor,myboard", "socvendor,mysoc"

And then after applying, you do the merge to insert the SoC rev compatible:

"boardvendor,myboard-rev1", "boardvendor,myboard",
"socvendor,mysoc-rev1", "socvendor,mysoc"

You need SoC specific code to know what SoC revision you are running
on, so SoC specific post apply code should be fine too. There's not
any existing bootloader problem because you need code to handle this.

Maybe that fixup will end up being generic enough that it's not
platform specific, but that's an optimization of the implementation.

> Is there really a need to merge the compatible strings in your case?

Well, you could just require duplicating an overlay N times for N
bases, but that doesn't scale

> I
> think in the vast majority of platform identification cases, code only
> cares about matching the most precise string (i.e.
> "boardvendor,myboard-rev1"). If we do feel like having the whole chain
> of identification is necessary, it could be achieved by just
> copy&pasting the extra strings into the overlay file. If we have
> cross-validation between base and overlay source files we could also
> have the validation check that the overlays correctly contain all
> compatible strings from their base tree. If we know that the base
> trees aren't standalone anyway, we could also just invent other
> property names that identify them (e.g. `soc-compatible =3D
> "socvendor,mysoc";`). Anything other than breaking the overlay format
> would be preferable in my opinion.

There's also a use case I'm aware of where the base DT is just for a
SoM and then the bootloader applies an expansion board overlay. So it
is not always "not standalone". And of course, this could be combined
with what Doug wants to do.

Note that for any new property (or an incomplete compatible) like
soc-compatible, you will need to consider how we validate it.

> I also feel like we need a better standardized way to tie base device
> trees to overlays, like your `/loaders` node proposal in an earlier
> email, although maybe that's an orthogonal discussion (but related,
> especially if there's supposed to be cross-validation between base
> trees and overlays). The compatible string is just not a scalable way
> for bootloaders to make this determination, there may be a lot more
> differentiation than just "SoC" and "board", and the scheme almost
> certainly needs to be platform/bootloader-specific because every
> hardware vendor has their own ideas about how to group and reuse parts
> of a platform. This information doesn't necessarily need to be *in*
> the device tree, it could also just be in a separate YAML file in the
> same repo (since bootloaders will almost certainly want to have it
> transformed into their own out-of-band descriptor at build-time
> anyway, so that they can compress the device tree itself and don't
> have to decompress each one for matching), but it needs to be
> somewhere.

There is a proposal here[1]. It's simple, but I do wonder if looking
at the root compatible only is too narrow of a view. An overlay could
target a connector compatible for example.

We kind of have this information in the kernel build already as well.
The requirement for overlays in the kernel tree is overlays get
applied to at least one target at build time. It would be nice for any
solution to this problem to replace those build rules.

Rob

[1] https://lore.kernel.org/all/20250911151436.2467758-1-raymond.mao@linaro=
.org/

