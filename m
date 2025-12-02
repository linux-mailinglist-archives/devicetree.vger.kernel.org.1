Return-Path: <devicetree+bounces-243804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6AEC9D1FF
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 22:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 313CE349602
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 21:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051262F8BC0;
	Tue,  2 Dec 2025 21:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dmIsCqLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E023222597
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 21:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712707; cv=none; b=US1RIMu2fxXL2hdTcaiMbJP1jwofblcmJGEt+xBH7TDTQh5MLX3rBl6exu+iN/aZ5rdBi7SclYMVvofHlod5aatxzLBKlX8eqjX5/CGBRy4AzUeBbLuK/6DP5Rl6vQ+/vJBuJi3Li1v1NhBiZd9pTJ+aaMFy+w8BOx74EYYoN6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712707; c=relaxed/simple;
	bh=BKfn/ZuWa87lAYuB/wZRTxUnT5evrctm5t+s0TXHN5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bz95qOO/Gg9i35ZLISrzbnDLumGXLSIZVFpuWLTy3EkN4RNHZFzXKmwxdbx7MdF8TS4KSEyAHP2Nny9cwPzkfY+KIRwbfKrA9BzL/Mt/a4PXyIEf90hmgWuc+LWeysPw0VWLNBN8rJThtvA2FT0wQSiPRTvJ9ijJZ5mobNFksp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dmIsCqLL; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4ee147baf7bso44221cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 13:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764712705; x=1765317505; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CJjbgV1eS7BL1xy0Zf+xm5L8Tso2mARa+UsmChy1VOc=;
        b=dmIsCqLLrJA8J1Y7Js62TpEIcHeJJz8Uw3fNJhIN3gTU0PCU/WjQexvw+0ikV7pBQD
         RJ8JxrHPbxNL5731nHyw9BULN6vUlvfVn9fAxZm+yYd7al5jVirw0SKXg0KausiL9rFl
         4/Z7duxxGnuPqcDXExEMFO7VZYPDPqUbYCTf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764712705; x=1765317505;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CJjbgV1eS7BL1xy0Zf+xm5L8Tso2mARa+UsmChy1VOc=;
        b=uc0sNLFhrBWqbNV//liaTUoBWRLXPP77l31zKO95a7tbMYthmxHT0CsGXiLX6rHmL5
         eI6LroLKmtoZuGF6VctF68TiRq5XFS1CsJhVLs7MCyQOSirTxaJW2gFNArS04Z7Hkq6I
         qAXaauf57VIJeXxS+aZggZSVBfwVWnVNaD07rMv93HdMDI5o99HFUeZcr/mUHF3Isc3m
         xE5GtHmC+bbbyMZs6Y/iRsbMMmlSGMTwmSBwRSgGljI5TvQXXsoSeqRoZSUDsA6PzyQD
         PtjiQ9woeN7mc0+0I96mPKPuVmFJFpKImZ8XFXjZTAPjaIjBbAcTAFTtyYagef34dZhG
         M58Q==
X-Forwarded-Encrypted: i=1; AJvYcCWjHJPp41lgDfIj+zPVJpxA61WLczMBMkF8n35SYIq61ZYOVgFqDgNCPA1SwikDih4+7LzCjqDOAHYb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi2oJwNX2lvEama97yYyAtXcTlhd3L73BC+I8+mlpGnQICN4+l
	6t8wzPAQaCj0ixeACqce9DyhEdlshd3RElG5UtQaRXw5f+aRm2bHkfQzlZGUf8dMUw6U7r3q4va
	teeeMm5A5VfbMGQbSf95kp1i87shjTx05N/xgyQlx
X-Gm-Gg: ASbGncu7ozR81opL/d584c359OnJ68Cp+dWHzwRONTjDCa4KBicabJM5ERM4yLtbhs4
	a/JOa5GAdkMXDl950UklhT9e1V1M5Y0N4HHxsKzlsE9PE8+GRqJSPosrASxouZyHQZCa+uG+G/a
	e1IU+he5k5oudh8F79ETNuTfZ9+ezyUmj0ZS79SMe22HcQEUcySAVof0VrvWKEa+Rj7Vb69Cs/h
	qEnJ0hvc/8YaCOiux0fcC+AfDuRTAi784qZywakFEdA2QIlCyN9sJDBfsf426ULwgq62bH6Pvo3
	5gc/BcjywAvKUjWaTPRimkHEDw==
X-Google-Smtp-Source: AGHT+IEJoS5cQUm7MFcrbQhQAjWCi7MPicot9CgewN6+69XnOFKD7CHPUUCC8pAzsPq0Q5gpd4+wlqL6QT0KlUSuYos=
X-Received: by 2002:ac8:5d53:0:b0:4ed:5f45:447c with SMTP id
 d75a77b69052e-4f0156dbae1mr3031191cf.6.1764712704587; Tue, 02 Dec 2025
 13:58:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <aS66WcLPm6e5rdyk@shell.armlinux.org.uk>
In-Reply-To: <aS66WcLPm6e5rdyk@shell.armlinux.org.uk>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 2 Dec 2025 13:58:11 -0800
X-Gm-Features: AWmQ_bnC9qaigXasflKJ8xzyBPfPJVnrPWglxYBrFOsLQ65Ccm6SRcf2WhMDLSE
Message-ID: <CAODwPW-sBSZfzbTnYLcGr2sN=+5p+okUeJEJeVvJOHCx3JbOgg@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Doug Anderson <dianders@chromium.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"

>> Is there really a need to merge the compatible strings in your case?
>
> Well, you could just require duplicating an overlay N times for N bases, but that doesn't scale

I think my question was more along the lines of "is there actually a
reason why the combined compatible string needs to be that accurate"
(i.e. contain the right "socvendor,mysoc-rev1" or
"socvendor,mysoc-rev2"). What is the purpose of having that string in
there? It wouldn't be used for matching which DTB(O) to load in this
case because we're already past that step. It's not used by the kernel
directly for anything as far as I know. Is it used by userspace
programs which parse /proc/device-tree/compatible in order to detect
which SoC revision they're running on? Because that's the only use
case I could think of that really remains, but I'd argue that the
compatible string is a pretty poor vehicle for things like that (it
would be easier to parse and use to just put a `soc-revision = <1>`
property somewhere). So if this is the only problem I'd say maybe just
don't use the board compatible string for that, don't expect to be
able to find such details in there accurately. But if we do think it
needs to be that accurate for some reason, then I'd suggest platforms
like this (which should be rather few, e.g. only those that really
have a socketable SoC with differentiations that are so compatible
that other than this identification information itself it doesn't
require any device tree differences) should simply have their
bootloaders rewrite the compatible string into the right format with
all the necessary information manually, rather than expect the overlay
application process to create it correctly.

> There is a proposal here[1]. It's simple, but I do wonder if looking at the root compatible only is too narrow of a view. An overlay could target a connector compatible for example.

This seems to just assume that every overlay matches exactly one base
tree, that kinda defeats the purpose of overlays in this case (sharing
data between multiple base trees). For our purposes we need a much
more complicated system that is able to stitch together an arbitrary
number of overlays based on identifiers specific to our platform.

> However, it isn't that simple. For example, when the Hummingboard2 is
> used with the iMX6Q SoC, there's a SATA device present in the SoC level
> that needs Hummingboard2 specific properties to tune the signal
> waveform. However, iMX6DL doesn't have this SATA device in silicon, so
> the node doesn't exist in the base SoC DT file. The situation is the
> same for Hummingboard, but the tuning parameters, being board specific,
> are different.

I think you would solve this simply by having more overlays? In that
situation you can have a imx6q.dtbo, imx6dl.dtbo and
hummingboard2.dtbo for the generic nodes and properties relating to
each of these components, and then a imx6q-hummingboard2.dtbo
specifically for the SATA tuning parameters of that SoC+board
combination. Your bootloader then just needs to figure out which of
those to load for which platform. (Of course there also has to be a
toplevel DTB, so if you don't have any further revision or SKU
differentiation above that then imx6q-hummingboard2.dtb could simply
be your toplevel DTB, containing those tuning parameters, and the rest
could be overlays. imx6dl-hummingboard2.dtb would then be an empty
toplevel DTB (save for the compatible string) if everything else that
makes up the platform gets provided by the overlays.)

> The other issue would be the /model property - for example:
>
>         model = "SolidRun HummingBoard2 Solo/DualLite";
>         model = "SolidRun HummingBoard2 Solo/DualLite (1.5som+emmc)";
>         model = "SolidRun HummingBoard2 Solo/DualLite (1.5som)";
>         model = "SolidRun HummingBoard Solo/DualLite";
>         model = "SolidRun HummingBoard2 Dual/Quad";
>         model = "SolidRun Cubox-i Solo/DualLite";

These can also go in the toplevel DTB. Basically, the toplevel DTB can
always refer to the most specific cross product of components and
contain properties like these that only make sense for the specific
combination. There will be a lot of toplevel DTB files, but they will
be for the most part very small. The "meat" of the device tree is
factored out into overlays that can be shared by multiple toplevel
DTBs. The benefit is smaller image size for platforms that need to
bundle DTBs for all possible variations in their kernel image (and
whether that's worth it or not is up to each platform, we're not
asking to make these overlays mandatory, we're just saying that we
have platforms that do need (and are in part already using) something
like this in order to deal with the sheer scale of supported platform
variations, and we'd like there to be an upstream standard for it).

> I also don't see a sensible way without something like the above for a
> boot loader to know the filenames of each of the components for a
> platform - and it would need to be told the order to glue those
> components together.

I think platform identification and matching which overlays to apply
should remain outside the scope of the device tree itself. The main
reason is that you usually want to compress DTB(O) files for
efficiency, and when you have a large list of overlays in a kernel
image you don't want to have to decompress them all just to determine
which ones to load for the current platform. So I think it's generally
better to let bootloaders come up with their own scheme to store this
information inside their file systems or whatever other data
structures they use to find these DTB(O) files.

