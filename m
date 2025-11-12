Return-Path: <devicetree+bounces-237478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7396CC51788
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5CE514FFC5C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B8F3009DE;
	Wed, 12 Nov 2025 09:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GeWc7lLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650F929AB1D
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940152; cv=none; b=jfQd928ZsvFcl0MzRZgUMf+eofsbp59VxOHkADkc7PW4LKI7QTxHbOEr3KYpKRBe7GnUCW0TYAePmB7Th+7TjZg60avJz4UiYuHW5c4BVyEqh3OCOBTEaMT+89fLoyotbItDmLEOQZ0ovmkYwha6cC2vmQjEkSJD7hnTpQcoldQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940152; c=relaxed/simple;
	bh=NieFD+5uLTt3MKk9kjig/GoQJy6wWKl5wH9u0vd8/98=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iumq/H3meKxz2KfN+cYwRSutJujcXE1HNG0Jol+rIlL8fcKy5IMv2672w2O+cfm7ZS6GN8+MbKARwDGpE4M0UOZ6pmW9904CU9vCFomcWNtQGou0eHYzE2+8prLwUlpiJpGnxOAptv1twoFBDPkGWhRauanSl4epBC1MtlhXPtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GeWc7lLC; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5943d20f352so599452e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1762940148; x=1763544948; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/ewDW90X3KFTr8zgTOSbV/dxfkjfmzPzprK+iIMiAE=;
        b=GeWc7lLCaOzTyboH6rhWgpx9b9bfhYChLUMuoNZIbmNmkU3LX+Upn/Qd3Kyb0HCxsV
         zYHoKrCXGH/Po5rDJt6TvEAk2yLaDarE5KMATLH7418mfvIcxa2rmxY8mKDg1ENB8o+T
         IPn1B31M1grcGtGPiPr4jz1vXlJTVlppAImHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762940148; x=1763544948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0/ewDW90X3KFTr8zgTOSbV/dxfkjfmzPzprK+iIMiAE=;
        b=aUmsm9oQWSUD8vyL9ZRynN2StqC92/xC/MgUpr1h1Njc3bjqIAnrB+KGyh+AtmYtpx
         IwHk4yBzBwFmAj61oYJDOXHJr9KEw2eR7Wo739KoNbrWmaw9XhEe8xepkKOkemrFAhHv
         fikbAVvQB08aG9/303Omq+nfEqnFCf/GA6a0KNEQakoYl/phbOrlEg+A9MTLetdrWHGR
         TDYxmwRz6/CcTqPjtW9jkC0DhsxtBRx4TF3SQwnq4q/rBjLHTa8LjTENKTtsfN6/cVKq
         TvdrJxHYCKNWYK+/8DwolCYf+DtV7yX+8h0eolSn5dJLNhqGsGVyVFsxIq2WS2z/b7fX
         yL2A==
X-Forwarded-Encrypted: i=1; AJvYcCViWoGJtOLGhTLAImDZJu7+mML/8iTtJzx995psywNBVX1vDP5kwy9fayri5XnMYOhGnOiu1yzsPmUb@vger.kernel.org
X-Gm-Message-State: AOJu0YwlrQ1/24g6h1rj/TAk6UzQsIP3w/x56KKYC8HJhh7b8GU++m6c
	urTUBpuxLdkc/PL2V+mrCUifDmmqKgT0Sg13xj8OimQ8enX2ERfGkugd5V5uLYIGImzNajWpifC
	W34FFQ/xmmDURl4Z8s9zvX6ilrBnJ9eqrJDU8FvnP
X-Gm-Gg: ASbGncsdvtqqhk0InZWCwwt56pn0vHcRKNiC7imFaASF/7I7r8cOn8PBMutnZ8HCUbu
	hpt0NZxSMJioBfvyUNoUtY8gHulhvlLbgAD0TK29K1LltHiVqb7Ty9Hkf8FPAj/e/bjKhWMlwbN
	PElq6bNkzkZXMnSKrUaPK+9F61hcWAFLy27oYIhkaPtBQI6EHwPDV5mA8eS2dyk/fnIngOnnmI+
	vHDE+L4H4OVlnwb3sHTKLGI7XRvRMckpSK0HgZ/duzznpyMwIYOflOkwveEMXproTwu9RcSQ00a
	uoSFNWihuUAE+4A=
X-Google-Smtp-Source: AGHT+IH4kkN0jv4f4riUhHsGo1TkywqGJEgMdfA5L0prck6UiZDTgJbXV7KZAlTlvrt958YCpRbpDE0MAyggBZLPz1A=
X-Received: by 2002:a05:6512:61d4:10b0:595:7c47:cd47 with SMTP id
 2adb3069b0e04-5957c47cf67mr249292e87.2.1762940148359; Wed, 12 Nov 2025
 01:35:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.4.I5032910018cdd7d6be7aea78870d04c0dc381d6e@changeid> <40e67c6d-2430-483b-b4b1-0220ffbd6418@kernel.org>
In-Reply-To: <40e67c6d-2430-483b-b4b1-0220ffbd6418@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 12 Nov 2025 17:35:37 +0800
X-Gm-Features: AWmQ_bkz66WuK7bpsdgzsJ4nib9M9mUy7aSiXoY3YFH5rVqdswgkmIG1p6Kqm7g
Message-ID: <CAGXv+5Gx+skrUR3PXt=RSL8YyKZYeQCkJ-3qW9wtrHrr9aqWAg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: google: Add initial dts for frankel,
 blazer, and mustang
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, 
	William McVicker <willmcvicker@google.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 4:14=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/11/2025 20:22, Douglas Anderson wrote:
> > Add barebones device trees for frankel (Pixel 10), blazer (Pixel 10
> > Pro), and mustang (Pixel 10 Pro XL). These device trees are enough to
> > boot to a serial prompt using an initramfs.
> >
> > Many things can be noted about these device trees:
> >
> > 1. They are organized as "dts" files for the main SoC and "dtso"
> >    overlays for the boards. There is discussion about this in the
> >    bindings patch ("dt-bindings: arm: google: Add bindings for
> >    frankel/blazer/mustang").
> > 2. They won't boot with the currently shipping bootloader. The current
> >    bootloader hardcodes several paths to nodes that it wants to update
> >    and considers it a fatal error if it can't find these nodes.
> >    Interested parties will need to wait for fixes to land and a new
> >    bootloader to be rolled out before attempting to use these.
> > 3. They only add one revision (MP1) of each of frankel, blazer, and
> >    mustang. With this simple barebones device tree, there doesn't
> >    appear to be any difference between the revisions. More revisions
> >    will be added as needed in the future. The heuristics in the
> >    bootloader will pick the MP1 device tree if there are not any
> >    better matches.
> > 4. They only add the dts for the B0 SoC for now. The A0 SoC support
> >    can be added later if we find the need.
> > 5. Even newer versions of the bootloader will still error out if they
> >    don't find a UFS node to add calibration data to. Until UFS is
> >    supported, we provide a bogus UFS node for the bootloader. While
> >    the bootloader could be changed, there is no long-term benefit
> >    since eventually the device tree will have a UFS node.
> > 6. They purposely choose to use the full 64-bit address and size cells
> >    for the root node and the `soc@0` node. Although I haven't tested
> >    the need for this, I presume the arguments made in commit
> >    bede7d2dc8f3 ("arm64: dts: qcom: sdm845: Increase address and size
> >    cells for soc") would apply here.
> > 7. Though it looks as if the UART is never enabled, the bootloader
> >    knows to enable the UART when the console is turned on. Baud rate
> >    is configurable in the bootloader so is never hardcoded in the
> >    device tree.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > To avoid fragmenting the discussion, IMO:
> > * Let's have the discussion about using the "dts" for SoC and the
> >   "dtso" for the boards in response to the bindings (patch #1).
>
> That's discussion here, bindings are irrelevant to this.
>
> > * If we want to have a discussion about putting "board-id" and
> >   "model-id" at the root of the board overlays, we can have it
> >   here. I'll preemptively note that the "board-id" and "model-id"
> >   won't show up in the final combined device tree and they are just
> >   used by the tool (mkdtimg). We could change mkdtimg to parse the
> >   "compatible" strings of the overlays files (since I've put the IDs
> >   there too), but official the docs [1] seem to indicate that
> >   top-level properties like this are OK.
> >
> > In order for these device trees to pass validation without warnings,
> > it's assumed you have my dtc patches:
> > * https://lore.kernel.org/r/20251110204529.2838248-1-dianders@chromium.=
org
> > * https://lore.kernel.org/r/20251110204529.2838248-2-dianders@chromium.=
org
> >
> > [1] https://git.kernel.org/pub/scm/utils/dtc/dtc.git/tree/Documentation=
/dt-object-internal.txt?h=3Dmain
> >
> >  arch/arm64/boot/dts/google/Makefile           |   9 +
> >  arch/arm64/boot/dts/google/lga-b0.dts         | 391 ++++++++++++++++++
> >  .../arm64/boot/dts/google/lga-blazer-mp1.dtso |  22 +
> >  .../boot/dts/google/lga-frankel-mp1.dtso      |  22 +
> >  .../boot/dts/google/lga-mustang-mp1.dtso      |  22 +
> >  .../boot/dts/google/lga-muzel-common.dtsi     |  17 +
> >  6 files changed, 483 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/google/lga-b0.dts
> >  create mode 100644 arch/arm64/boot/dts/google/lga-blazer-mp1.dtso
> >  create mode 100644 arch/arm64/boot/dts/google/lga-frankel-mp1.dtso
> >  create mode 100644 arch/arm64/boot/dts/google/lga-mustang-mp1.dtso
> >  create mode 100644 arch/arm64/boot/dts/google/lga-muzel-common.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/google/Makefile b/arch/arm64/boot/dts/=
google/Makefile
> > index a6b187e2d631..276001e91632 100644
> > --- a/arch/arm64/boot/dts/google/Makefile
> > +++ b/arch/arm64/boot/dts/google/Makefile
> > @@ -1 +1,10 @@
> >  # SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> > +
> > +dtb-$(CONFIG_ARCH_GOOGLE) +=3D \
> > +     lga-blazer-mp1.dtb \
> > +     lga-frankel-mp1.dtb \
> > +     lga-mustang-mp1.dtb
> > +
> > +lga-blazer-mp1-dtbs          :=3D lga-b0.dtb lga-blazer-mp1.dtbo
> > +lga-frankel-mp1-dtbs         :=3D lga-b0.dtb lga-frankel-mp1.dtbo
> > +lga-mustang-mp1-dtbs         :=3D lga-b0.dtb lga-mustang-mp1.dtbo
> > diff --git a/arch/arm64/boot/dts/google/lga-b0.dts b/arch/arm64/boot/dt=
s/google/lga-b0.dts
> > new file mode 100644
> > index 000000000000..83c2db4f20ef
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/google/lga-b0.dts
> > @@ -0,0 +1,391 @@
> > +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
> > +/*
> > + * Google Tensor G5 (laguna) SoC rev B0
> > + *
> > + * Copyright 2024-2025 Google LLC.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +     model =3D "Google Tensor G5 rev B0";
> > +     compatible =3D "google,soc-id-0005-rev-10", "google,lga";
>
> So that's SoC, thus must not be a DTS file, but DTSI.
>
> ...
>
>
> ...
>
>
> > diff --git a/arch/arm64/boot/dts/google/lga-frankel-mp1.dtso b/arch/arm=
64/boot/dts/google/lga-frankel-mp1.dtso
> > new file mode 100644
> > index 000000000000..133494de7a9b
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/google/lga-frankel-mp1.dtso
>
> And that's a board, so DTS.
>
> > @@ -0,0 +1,22 @@
> > +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
> > +/*
> > + * Google Pixel 10 (frankel) MP 1
> > + *
> > + * Copyright 2024-2025 Google LLC.
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +#include "lga-muzel-common.dtsi"
> > +
> > +/ {
> > +     board-id =3D <0x070306>;
> > +     board-rev =3D <0x010000>;
>
> Undocumented ABI, which you cannot document because these properties are
> not allowed. You cannot have them.

This is part of the discussion I want to have at Plumbers. But I suppose
we can start here.

The Android DTB partition format uses six 32-bit integers for matching,
as opposed to a compatible string used in FIT images. Two of the integers
are the "id" and "rev" numbers in the example above. The remaining four
are custom and left up to the (vendor) bootloader implementation.

The values for these fields need to be stored somewhere with the .dts.
The compiled DTB is useless if the user cannot build a proper image for
the bootloader to consume, and that involves putting in the right numbers
in these fields. The android "mkdtimg" tool can either take the values
from some known properties within the DTB, or have them fed to it
externally.

So if we don't want these numbers in the dts itself, then we should come
up with some format to store them beside the dts files.


On a similar note, we would have a similar problem with FIT images and
overlays. The FIT image format maps a (series of) compatible string(s)
to one DTB and any number of overlays. If overlays are involved, then
the compatible string cannot come from the DTB itself, and the mapping
must be stored somewhere.


ChenYu

