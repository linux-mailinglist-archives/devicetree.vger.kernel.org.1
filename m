Return-Path: <devicetree+bounces-240011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1A4C6C0B8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 00:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 011362AED9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B9E2DCF4C;
	Tue, 18 Nov 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cQAUmaAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D323702E3
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763509732; cv=none; b=Wmew1liSU7X0dyqglQy95X5VTyjynmf4C4mh4aL68QsdgjhyCie1YsDUw+5Wh+g+fF/PhBQTuOVzeMFaY1P70GwTGll0RJ38VksDyYvkaiBC84CDsFv4xEyZlm8wUcwb2WZbW5u8rq6qtbjLfufunu2BEnWWDKjzAEY5+TkNBxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763509732; c=relaxed/simple;
	bh=75UCHxeHF6HHplyZn2UWtjGCAYD2cIcbgXlp/fYJU6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xp6JvfpCEMTaKnzRp4wjrHORfh7IOXAzkyk0RQt3Ec8qmoOKYwaYAOyGGtumH++gMtsHQtSy8yrdGRSHqFyVKGeSj1elRbxALgiEMYhKxDliqrHdZJnUriw4Io14r0q72xPMuoAI+qSLS/1KHuuAFpyhd/92yNb4GZlrHuapRYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cQAUmaAk; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59434b28624so1819e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763509729; x=1764114529; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wfdgl45TlhUjROY1GcEYL/sA2/gyYtMo6GNhOZ6UTRk=;
        b=cQAUmaAknU93HmLOa2C5lK+OBSLfcCvRyo9XbKzKNhyqVc/qr6L4P21x7/ResTan0e
         Uyh5yK2feBDbd0DubS0J7oveqDd4ZpM1NkcooxdMm5RONaLxCAOGLt+yaySL1D1iykFz
         Vbi8KvI5o2Z4NvVIYyBulM5HwvSitzurWhHUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763509729; x=1764114529;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wfdgl45TlhUjROY1GcEYL/sA2/gyYtMo6GNhOZ6UTRk=;
        b=aA6fwRuvFyA51ick2EWxfmpAuttpe5KSXvhtlEgqFNkVAvenM6NRKqZ3b5igyH01fZ
         Lo7rvk8YyBrwVHrNN16QzOoK4KGMw4/0bF+cl2dAap3JkCjEjzJ/4iGn5ZmFrMdiUANE
         20CPafaIlz+MAS/xigW5cQs3LJ39hrxN+iO4AokhEy5vC4ZjAa/A0AYrZ+7yh4DhKMX+
         kyKB22/M0MOxcFEKBqkmp2AFdZRpawWvpsn+RObJXUaUMyeo5OcYBsgvrLE/VRGhJMJ0
         zNMrEfrhWPx2OdZ+yVrw+mfdokmiz5S5zKjVOtoUCDfGcfwrI2Q52zXKuY6gEwf30Tiy
         MbjA==
X-Forwarded-Encrypted: i=1; AJvYcCX08A6NhFaJtHVD4t/bSFpSMKpe3yU+EsNQqIDcQ5bJkC8+yoBwkJCK0zCrPC16/7SjikJq71kFiAq7@vger.kernel.org
X-Gm-Message-State: AOJu0YyTWoBEXU3mlgDmYv8mS45go+w+mxRltq4Aiqsdbvncr976g7/I
	lYmZfw6Phs6w3YWvtOXcwdxuu3C7sjoNHUDx7qz3rUF9kzsiZGWONnkZvVgM7XOHyf9LCUbYp8Y
	moQXPEzn1PS6G1L+CdUlejbsG6pwEBaPoAH8mezOf
X-Gm-Gg: ASbGncs46m3BAUugCTH7FJ+h0CNoxt2DXYl4dZn5MEbixcOVEaZQsCdXc0IRE5rE2m9
	gJJmzf1btHt2zdXF716yUYuHdct4Q3o8CLkM5BYzYe47G2ufZ97OLI//zP2OlaBLWAOGxsv+VkL
	HdTV8iDQw6U42o09z7BwzlczR0C8/fPDuQYxF6Xuey8BM3PiricUTqQyt6FV7Es9HgkNrfcLRdv
	/FTCuUJru2MeDMO2BwE8d2B54agIzBmFH9agUBNPIzvd2ZSnbQwcvsGjVfjKIAwrQgkaWjjuIBi
	x+LvfR/gDP1c37Ubgv2uzQ9vjHWY5qP+46BX
X-Google-Smtp-Source: AGHT+IG35LTA4LFVibGtlnZ9yjpDlUuNT0fzfs6wnGkoFLOS3t2IhLxzn2dmTxJ6BMd1TCS3ZfXdgvD3BM/PCeOjrX0=
X-Received: by 2002:ac2:5509:0:b0:595:7b9d:c04e with SMTP id
 2adb3069b0e04-595c6cb7208mr56839e87.4.1763509729048; Tue, 18 Nov 2025
 15:48:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
In-Reply-To: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 18 Nov 2025 15:48:32 -0800
X-Gm-Features: AWmQ_bntEbW9VJaqwe6WpNJTYWU6dC3uPbKkw63j0vy6Z95Gr2XVZ8XMupDqb44
Message-ID: <CAODwPW_51fKOfDQbTUFCum13M621Uxi2Zw2YHng0DrrwwvZhRQ@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Doug Anderson <dianders@chromium.org>
Cc: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	yupingso@chromium.org
Content-Type: text/plain; charset="UTF-8"

> 4. When applying an overlay to a device tree that's "incomplete", the
> top level overlay will be merged instead of replaced.
>
> Example for 2 levels:
>
> base (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc";
> overlay compatible: "boardvendor,myboard-rev1", "boardvendor,myboard";
> merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
>                    "socvendor,mysoc-rev1", "socvendor,mysoc";
>
> Possible example if we support 3 levels:
>
> SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"
> overlay1 (incomplete) compatible: "referencevendor,referencecodename";
> overlay2 compatible: "boardvendor,myboard-rev1", "boardvendor,myboard"
> merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
>                    "referencevendor,reference-codename",
>                     , "socvendor,mysoc";

Sorry, I only cursorily followed the previous discussion so I may have
missed the exact need for this part. But I would caution against any
proposal that changes the basic rules of how an overlay is applied.
The definition of how overlays work has (I think?) been stable for
over a decade now, and is implemented in bootloaders that often cannot
easily be updated. I absolutely support your effort to get more
upstream standardization for managing base device trees and overlays
(which I think need to be flexible for arbitrary layers, not just SoC
and board), but let's not break the overlay code in old bootloaders
while doing it.

Is there really a need to merge the compatible strings in your case? I
think in the vast majority of platform identification cases, code only
cares about matching the most precise string (i.e.
"boardvendor,myboard-rev1"). If we do feel like having the whole chain
of identification is necessary, it could be achieved by just
copy&pasting the extra strings into the overlay file. If we have
cross-validation between base and overlay source files we could also
have the validation check that the overlays correctly contain all
compatible strings from their base tree. If we know that the base
trees aren't standalone anyway, we could also just invent other
property names that identify them (e.g. `soc-compatible =
"socvendor,mysoc";`). Anything other than breaking the overlay format
would be preferable in my opinion.

I also feel like we need a better standardized way to tie base device
trees to overlays, like your `/loaders` node proposal in an earlier
email, although maybe that's an orthogonal discussion (but related,
especially if there's supposed to be cross-validation between base
trees and overlays). The compatible string is just not a scalable way
for bootloaders to make this determination, there may be a lot more
differentiation than just "SoC" and "board", and the scheme almost
certainly needs to be platform/bootloader-specific because every
hardware vendor has their own ideas about how to group and reuse parts
of a platform. This information doesn't necessarily need to be *in*
the device tree, it could also just be in a separate YAML file in the
same repo (since bootloaders will almost certainly want to have it
transformed into their own out-of-band descriptor at build-time
anyway, so that they can compress the device tree itself and don't
have to decompress each one for matching), but it needs to be
somewhere.

