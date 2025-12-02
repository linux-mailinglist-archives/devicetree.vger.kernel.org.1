Return-Path: <devicetree+bounces-243816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EABC9D374
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D9423A49DD
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEFBE2FBDFA;
	Tue,  2 Dec 2025 22:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CBLYNHVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423252FAC17
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764714669; cv=none; b=T4qgPO0a+hvpxRjjZArn1rp4LlWM23IxfMeNxptZ9qpWaCWNs0hXsJ9ub7Dr5CtsX9KWuJKCxuMJRwGFOM1fYcNuJzaezxD+B0xKBEEAQK1wlzLE+33akFrI/1XwPQoad5fhOoFy8+2ZxgT0fSn7acDyJ8uL236gV8kQXUh9Am8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764714669; c=relaxed/simple;
	bh=Kt7QLl3M71FQZ1a2RIIbHoMBwRQCVhmZaV0Kws8vsZ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iGRq2CLgaY1gATekWXBfkUSBxRtF/yzFS+nwt+kiBqEBbTH+iqi4bm2jfKpdxwEjusZc5hZL73RCser6ewEEkiFlOaA44mL3bdOgpZ5Yw6KMfwADKHxeih/TJUkFbQNYg6/GeUjQQ4CYnzNoXdEpUqToeqXrgF7Bm7L1Il+2uks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CBLYNHVT; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64149f78c0dso9202559a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764714664; x=1765319464; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DuXSsKE9g0wgo8lmJJvSeZzq7qMa9oZIDVgvyGW3d8I=;
        b=CBLYNHVTfuqJc7PVwHxfRUou1BuJGdvyevcsIGe4Rdc0Lu2twfUippdafBbwcIbaH+
         UdoWYo17PYFd7qyXD+4gaOnSNvts/5AapLGNqv8AdUXLPDUf/ecj6LrshD/oPNWPSACb
         xgZMKSPQeQKhMfYmZ41DO6pSG710PFEwwC4Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764714664; x=1765319464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DuXSsKE9g0wgo8lmJJvSeZzq7qMa9oZIDVgvyGW3d8I=;
        b=dEq5E1+IBFEzU9fzILlUPrBLe90Dh6Zd3dCJuz/lJGBU+GDkBailwWz+TlI3iYYYL0
         Nhc4mqJQ/v3URQChJ05J5Q8uHyzG8tzWEALbfF/v15UPaM2E7Rqysly5D2MPQkvocwvx
         hG76fp6XOjtnQ11Bhq/mfi2dMSRk2FxT9bdSmPuXfHonnM7GOYZ9DcETtcxN/VigXtZL
         oqhTCQrC+v3SpJ04R3ufnGsnF1aJ1vfXB3YxLTTDKZO1gxjin5d1+Uwt6tGVFBXyG7Mm
         K2NkBfUzmH2Mhkzu+PJd0yVv319keuYjUwH7PIQf0QPAKhfalm3426MOtuJUXbRKV17u
         +ahw==
X-Forwarded-Encrypted: i=1; AJvYcCW2QQzPOPUrRn9w0+EI5D80VVQYCIv3vmYs/H145axmQHgB3QbtFiE5VfzWKytGU131FYzIvNi+cr78@vger.kernel.org
X-Gm-Message-State: AOJu0YwnkuinIKY29Q0dBFRzxena3giiYqRFK331zzkJy4A5/rnieViz
	RmA+cke82xQ4DuXRGQ592ddzTrf5cA8A3szZkC1m9N5H/bENZyZ/Nb6ew8xIlt73bzh68yRFesk
	1EMwWx7ET
X-Gm-Gg: ASbGncuVMXbvQ7VwOKtfiCxY9e0WE8Pv6EezNHfnNKjxvjFbYq41jio5AdHVWeCCRh6
	Ga85UIw6TX5AmcOFTAmk6DpawDbxVjunZvTC2YGaXMJxnEADZGjtEDuZiltJ9l2XsSz0CZJ2DgN
	AJVeeQpwT9m0YRu+Eqz1Cp1xlPaPNCNf95yx6VxPtduuNHklM/vseD4mAreU9rxEF5d8uUIFPCZ
	w4A3+pRVWTaqAgmu1iZJ6S7qwCWEZACKT5rZXOhusnZdXXvCaqR/U73316pDv0XN8n8Sfrf3BdR
	N+h/6wQgaC/DVc6r9vkODuaBP8U+ggIY7HMt21CrFzXeUclnYJB885W3BDihx0Wl68I/KnsxduE
	mrAsckRRYd1r484SNOd55W8EE7CCB0O9I7fU3IwAYT4CDdC/W5Dd3DFihF7EehTPkHzBN/7HJjn
	VWuwy2TprAKCTmzrB8adQ3p6/UqyD4VqEaWqY06MGRsr8Tg58vqb9JUSEM1Kdf
X-Google-Smtp-Source: AGHT+IG7XG+vhoxGfe+mQI63SPKKgXw6SiBftyesNEdaXHH4E6EU/XeHWw5vfIlWLPXoAsDPnQ6n9Q==
X-Received: by 2002:a05:6402:4308:b0:640:96fe:c7c2 with SMTP id 4fb4d7f45d1cf-6479c3ed407mr2012a12.5.1764714664565;
        Tue, 02 Dec 2025 14:31:04 -0800 (PST)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com. [209.85.221.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90e44sm16330537a12.14.2025.12.02.14.31.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:31:04 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso3986778f8f.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:31:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWh11vzNfDq8SPKXG6+AXwEzS9MrIT7piHPOuaZIDtdL3PVe/ND2Soxc7YSkp78RAGYGcL8dtzDmy4C@vger.kernel.org
X-Received: by 2002:a05:6000:2007:b0:42b:3b3a:5e52 with SMTP id
 ffacd0b85a97d-42f7223773emr784394f8f.39.1764714663803; Tue, 02 Dec 2025
 14:31:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <aS66WcLPm6e5rdyk@shell.armlinux.org.uk> <CAODwPW-sBSZfzbTnYLcGr2sN=+5p+okUeJEJeVvJOHCx3JbOgg@mail.gmail.com>
In-Reply-To: <CAODwPW-sBSZfzbTnYLcGr2sN=+5p+okUeJEJeVvJOHCx3JbOgg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 14:30:52 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WsWNb3FnHQHKGKzTckLuPNR4iDCQ2rxg07bLXwqZ-pWA@mail.gmail.com>
X-Gm-Features: AWmQ_bnreofmVzYeCHzPsyJJNHJLUpWtcWHtk5rxJWZfVBP3NQVojlqKSM7G3lw
Message-ID: <CAD=FV=WsWNb3FnHQHKGKzTckLuPNR4iDCQ2rxg07bLXwqZ-pWA@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Julius Werner <jwerner@chromium.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Dec 2, 2025 at 1:58=E2=80=AFPM Julius Werner <jwerner@chromium.org>=
 wrote:
>
> >> Is there really a need to merge the compatible strings in your case?
> >
> > Well, you could just require duplicating an overlay N times for N bases=
, but that doesn't scale
>
> I think my question was more along the lines of "is there actually a
> reason why the combined compatible string needs to be that accurate"
> (i.e. contain the right "socvendor,mysoc-rev1" or
> "socvendor,mysoc-rev2"). What is the purpose of having that string in
> there?

Yes, this matches what I just sent in several of my replies. What
exactly is the top-level compatible supposed to represent? I think
different people have different ideas. Is it documented somewhere? I
guess I could start a new thread to solve just this one question,
though I suspect not everyone (not even core DT folks) will agree. If
they don't, how do we solve that? Who is "the decider"?


> It wouldn't be used for matching which DTB(O) to load in this
> case because we're already past that step. It's not used by the kernel
> directly for anything as far as I know.

It has _sometimes_ been used by the Linux kernel. Specifically the
fact that the SoC is represented in the top-level compatible is used
to "blocklist" the generic cpufreq driver
(drivers/cpufreq/cpufreq-dt-platdev.c). I've never loved this, but it
is an example.

Occasionally, I have also seen random software workarounds that rely
on the top-level string. See Linux commit 127068abe85b ("i2c:
qcom-geni: Disable DMA processing on the Lenovo Yoga C630"), which
added:

+       if (!of_machine_is_compatible("lenovo,yoga-c630"))
+               dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);

...that's been since removed, but it's one example I can think of
where the top-level string was temporarily relied upon.

There are certainly lots of hits for `of_machine_is_compatible()` in
Linux today. I don't know if these are all for good reasons, but they
are examples of people relying on it. In my experience it's mostly
used for things that are a bit hacky, to avoid an unexplained bug, or
to work around the fact that someone didn't add a specific enough
compatible string somewhere else in the device tree.


> Is it used by userspace
> programs which parse /proc/device-tree/compatible in order to detect
> which SoC revision they're running on? Because that's the only use
> case I could think of that really remains, but I'd argue that the
> compatible string is a pretty poor vehicle for things like that

Agreed. This type of thing has always been broken on Chromebooks which
have more than one revision/sku listed since a single device tree
works on more than one device. We had long arguments about this in the
past and I think DT folks finally threw in the towel and let us land
these, though I think they still don't really like it to this day.


> (it
> would be easier to parse and use to just put a `soc-revision =3D <1>`
> property somewhere). So if this is the only problem I'd say maybe just
> don't use the board compatible string for that, don't expect to be
> able to find such details in there accurately. But if we do think it
> needs to be that accurate for some reason, then I'd suggest platforms
> like this (which should be rather few, e.g. only those that really
> have a socketable SoC with differentiations that are so compatible
> that other than this identification information itself it doesn't
> require any device tree differences) should simply have their
> bootloaders rewrite the compatible string into the right format with
> all the necessary information manually, rather than expect the overlay
> application process to create it correctly.

Yeah, trying to stuff the world into the top-level compatible never
seemed amazing to me. Given that today's advice is to have a top-level
`soc@0` node, IMO SoC-specific details ought to be under that. This is
something that Stephen Boyd suggested a while ago but it never gained
traction.


> > I also don't see a sensible way without something like the above for a
> > boot loader to know the filenames of each of the components for a
> > platform - and it would need to be told the order to glue those
> > components together.
>
> I think platform identification and matching which overlays to apply
> should remain outside the scope of the device tree itself. The main
> reason is that you usually want to compress DTB(O) files for
> efficiency, and when you have a large list of overlays in a kernel
> image you don't want to have to decompress them all just to determine
> which ones to load for the current platform. So I think it's generally
> better to let bootloaders come up with their own scheme to store this
> information inside their file systems or whatever other data
> structures they use to find these DTB(O) files.

IMO it's still nice to be able to store some of the metadata that the
loader will use in the overlay files, just so we don't need a parallel
set of files. The current Android way of doing things is that the
metadata in the "dtbo" is parsed by the packaging tool (`mktdimg`) and
that creates the tables that the bootloader needs. This seems
reasonable, even though I'll argue that the metadata needs to be
documented under a specific node (one for `mkdtimg`). I wouldn't want
to have to maintain a separate file mapping overlays to their
metadata.

-Doug

