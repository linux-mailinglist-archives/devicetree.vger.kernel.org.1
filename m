Return-Path: <devicetree+bounces-240016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D6C6C29A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 01:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B55FE4EB317
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 00:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B33621A92F;
	Wed, 19 Nov 2025 00:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LTR2Ga9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9241F0E29
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763513185; cv=none; b=qc868q8ehdkZu//h8Yc3NNMMBnaen6PLDX4LO8+d/J3ftdwY1jaHQE40GbF1M0BLTNyiwWacPuHc7sO6n7Hb6fNyf2q4FgSySdLhDLdVqudu/MVlj+3dYbgN3+1s18FaMUS2HcXq/QkukBD2yTDTksgJqTRZohGc4d685L/qiXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763513185; c=relaxed/simple;
	bh=b0Mb5eZszzCSNqcIKBuWvMtHMqopg2Vn8gX+sYSWLlo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ESvzHgcfcN17D2OjAAUbJtlacel8F7U4DzTB5fcEg6iWTyIGytioIwcfzko+9sGR7FH1LV0GEOqdJ20BXkmC/M27GQ7MlbTPPfqnTbD4TM60P4AwXu/rR5t9p3gPm4ntSk+jDOY2p6aNMGg6e2lZCILYIs4B2KBFhx/HapSsUKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LTR2Ga9a; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6418b55f86dso9883249a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 16:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763513177; x=1764117977; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BAWJfMyV7DpF7HKG9h+AUHw17u4/yHqs9en8PSsCyqg=;
        b=LTR2Ga9aRX5LpDGh81OxiWkRpdJk4nH3OpKEKDSVYtotohY26c2xvR4X+itTukwKXn
         toRQntg/7nDbvMunfp/gKqnUORMIySDOC6N8dDftvnCPuvrh+NHL7zFy/PRabHwGYz00
         pmt/fdwDf50hnqjvvTJAuyoavr69/HLuZe4o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763513177; x=1764117977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BAWJfMyV7DpF7HKG9h+AUHw17u4/yHqs9en8PSsCyqg=;
        b=bmqHXvLBL5B+19R/45ihIE5k0g2NOYcsqzGtQhiYc5czjswRvOkpr4dnMU/XC5n60S
         UH2WB5pIwaY0u1JmA4BEARS9knVcq9zuDRIUV2yWvkVgMZiwfLz58X/oYwV82nr+uudm
         dRDOLCGFB1m2rczUtTBJwWblxgS9Wz9KAdbnh6BdBRIBJ3pmova5bSp7XT3QVqGzvgHu
         +zxFzsNIxqsNpbZzowf80IxsLlgzHYhXbWstaB89smtbcFJCFeq2XpeycwOi3VqNSKFy
         Nw1kkhWWTN/00yLmYILjvbfsUAjti9a5NiUrDumiY28rbb+yLHGwt5PT8iCNzkpgJ8Ih
         UXNw==
X-Forwarded-Encrypted: i=1; AJvYcCVkN5CPKbfFr+Olfti/Fn7xwz0ivQGxjgfOsRmtqHVa+AQ95i10zqaVDQEnV9EHBt7lnTejMTgAAela@vger.kernel.org
X-Gm-Message-State: AOJu0YxHO6Gle6DJ/AxSt5TTeqB5IAQJ73loAUOKTvmRTKcIkQ9lTnM4
	KZDGeGBWMFslDZTC8jjQ4eZk0WYVP5m/g2DaGJj4mHizSAyNDAbx2IjJSr7D078u80GCQ/179D1
	tYFBjqvdG
X-Gm-Gg: ASbGncuFOjHoHbFVAF2BaVb4b318B8k3ldvqXF7EpMhpNBvZeq3Q034CyCYgY3AClQd
	uHCV/kvsBkXwlLfQC4P48GUHXTGwzJVEQZVC/2AePG5oP8/jPJsRKLPMh2vLl+W23rs3ECQT7rI
	4fXvoAy5j+RpmfJWi2gtvgl5uLQEpGjSVc5JbOwF8E86FR1TnfpHP7MwR86j/58nGn2FqjOt8EO
	BYWlj1JDZ8okH9Wqps/Ab4Qi0rljvPL8jaeCY4kikyU7P77BJz+6iPQIMpKYfR4AZ9eNF1byRWw
	wVPq6ik0eY81VPvTD6jh6x/5hlpKy8q/zCEwh3jG5ezVrvsxd5qT3iDznqy9eVnlG3gMvSgRv/1
	nNUJ8VUzEKFPrvlGvInmlDJhTf2PlP0sQzZ8kRUYAbOFgyh1xWpJNx+is+jgJ614LhqvIqxPkMV
	XK9JVgm0c6FIoe124f4odRSRjyQSQHf6d8gpipkXLqYjfNzoLwwt/w/KfpFCKZ
X-Google-Smtp-Source: AGHT+IGiDBSpjan9TXDLLcdtsTFna8maSWqDd001Nw9CNyR7yVEU5xra8MrDtUgazXyQUhQQixG8hA==
X-Received: by 2002:a17:907:3f03:b0:b73:4006:1875 with SMTP id a640c23a62f3a-b73678f39d1mr1884114166b.38.1763513176629;
        Tue, 18 Nov 2025 16:46:16 -0800 (PST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3d8294sm13820542a12.3.2025.11.18.16.46.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 16:46:14 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b3c5defb2so4167226f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 16:46:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVV80uTe69SWKlohHLyp6n14vU3qDlhndf9TT4fxvomGdA3FMe04drihR/Nr50XNWrq2ltNWLqGUxhN@vger.kernel.org
X-Received: by 2002:a05:6000:26c2:b0:427:526:16aa with SMTP id
 ffacd0b85a97d-42b5939cd70mr18021926f8f.58.1763513172970; Tue, 18 Nov 2025
 16:46:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com>
In-Reply-To: <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Nov 2025 16:46:00 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vb88hTz0kDxxKbU0G2yCqTgF9HwJAh6h68hf-cEtAurA@mail.gmail.com>
X-Gm-Features: AWmQ_bmE6F8y8blYKtFOlYYUsAOoXZxGgtId0c4_uNvCgfNxCdU3S4jDpKFXYPs
Message-ID: <CAD=FV=Vb88hTz0kDxxKbU0G2yCqTgF9HwJAh6h68hf-cEtAurA@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Julius Werner <jwerner@chromium.org>
Cc: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
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

On Tue, Nov 18, 2025 at 3:48=E2=80=AFPM Julius Werner <jwerner@chromium.org=
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
>
> Is there really a need to merge the compatible strings in your case? I
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

I'm certainly not dead-set on it and I definitely realize it would be
a pain. ...though it wouldn't necessarily "break" the format--you just
wouldn't be able to use any "incomplete" DTBs unless you implemented
this new feature.

From my point of view, the main issue the merging solves is handling
"socketed" boards that could have any of a small number of SoCs
plugged into them (usually minor revs of the same SoC). It's not the
absolutely most critical use case in the world, but I know that we
will need it in-house and I'm trying to come up with a solution that
will work everywhere. Once we decide to go with a downstream solution
just for that one use case then there's no reason not to do everything
else in a downstream manner.

Personally, I've never really loved that the SoC compatible strings
are conventionally just jammed onto the end of the top-level
compatible and I'm totally happy with it being elsewhere (a different
property, a different node, etc). Mostly I ended up with this merging
scheme because I thought that was what DT folks were pushing for. If
I'm wrong then I'm more than happy with a different scheme.


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

Yes, I totally agree and this is an important conversation to have
too. I still like the "/loaders" proposal but I'm not dead-set on it.

That being said, the two problems are separate even if they're related
to each other. I was attempting to focus on allowing the base DTBs to
land first and once we get agreement then move onto the second. I'll
also note that Chen-Yu is talking about the problem at Linux Plumbers.
I won't be there, but I'm going to try to attend that session
remotely.

-Doug

