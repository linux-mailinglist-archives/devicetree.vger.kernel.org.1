Return-Path: <devicetree+bounces-240000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E0441C6BE2E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 500753651C2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E8372DC79B;
	Tue, 18 Nov 2025 22:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AhN0SmuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEEB2BEC42
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505821; cv=none; b=ue3mMhYPrUVbjo83xm+0XDPIqppxrBtuv6fg7iRuEWj4Mc/ie34MfgN016QK5ete9juvfpknaeB2w0hn+pmT5MniJXisFTSWtQuh3pM1X8G9dhx8dOtlvgq9Jkxv9dBZMmZCcgVHgp0vLwIhtMnex3m9upGWxqc1CYLTka3oRCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505821; c=relaxed/simple;
	bh=4gDRJV1kRwgMI3s3YQcbphdfEkv2lyiSpZHPXrNLNWk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=Rc4qItGsmJZL+Cm8mxRABFbJO4dC7RZnKXbo3zY0m8EK9mrHYwZ3Qvwh/1g8X72JTm5314kZcBtOzSoDiUZBPGN3p5xX5qJWlb64sjc2Zxq4bV1SsnnLNNrZjojF4aaAZ/xeUQAzSBEnWscnON/9CYAQ016tQI9ieuafZnHeFrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AhN0SmuJ; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b736d883ac4so824343166b.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763505814; x=1764110614; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H80IEDD5SztQTOwQNxdUh5iH8SZS9qkZgSnNnJ77XOA=;
        b=AhN0SmuJbxHqW9D70uld71LQo+GGbjYN5stFDuAbDn0iETEZ82L0UsdqyJkJqMp5jM
         9T7T9ZP+FE/lJB1wtukFnFyqDi8cV7PGrhDPrsPk0EMT4UMgcj1oL3edLyK4PBfp1Tp2
         64DKCDWnn8sPUO9H7vQg8LqPvkjCEZ69MEDtU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505814; x=1764110614;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H80IEDD5SztQTOwQNxdUh5iH8SZS9qkZgSnNnJ77XOA=;
        b=UicXhxISuXvzpSfQvD18yAo1sRjtrkLIxcMY3sKuGjlBw6LuxIix3yXg1t2lvCRDba
         MqEw7fucl/UtrzbyiYsmpMeWF65gSmfoYwCOVBUORQ4xx9j81SwQwSYCdzXNjtsLmo8Q
         TMJbe4C04JeSBLT+WSBrqmTlUZPYSPWhE6/SaxD6VfF772tvcSAdkJB4tOKHUY6NCFWo
         43auAewnVEnHBqN0bmtAA2Bw8X/dvBtSvS4AcoDkqfVNGZVWbQSUwY+aE5uPtf42eMkp
         cK4tQeR9L6IbkcVhU4vJJuwpI5d2PWQHoVfkcmXg9Lu6mcUG8xztHlMUiRNTKv0at+8s
         aTuQ==
X-Gm-Message-State: AOJu0YxLYoLi6Ic1y7THm/7lnAZT1RN91jaMrbiyXQ75xUPOvWL9QmQo
	SFEscJAhox+cYMuRFRu2hu7rhHs9lYyTmFtfLIOvPycj25yOfE0tnuInSAFdjRAzu1pC06mI7VX
	5o14c6w==
X-Gm-Gg: ASbGncvis6C8aMhm+cwUo6sKlqXyX/xtZom/ir4S6C1vEgiJCHaYhKiD8z5BuTo+xfx
	dIZGogt69EjaQVmrG/GFsAZAvlmd0jzPMzSUXlzNOK8VNDiEvBgNgFskQwCuW7YJnQBjffHJEyx
	P9+zom05UmBMVPHrjLRnp9SB8ENH5JZ++kGtNaFTjfLDyPRIISn4f456XQ7CbIAQWKkbCll34dC
	Pl9LM7Y4sA9mcgGtgMtPh4G1bSOZ22FNx7V+J2WE+BSLLF65CmOq6RLkjj3BT/rXGYCYyj6Xnbt
	qdwvyfN4xy5r1hvN0QbSFoygMLxaLWEzXc3RQHhBbpEHJ2hBPRB8GeDEtvF/okMC5laKiYuT+QV
	81H8/d4AfslofpTtEIiUkU+3m5wRTcaZTi6aPPbAuhC8Hzrtv3tLowUNlgrvajTEa3g3Dhi9991
	Ek3nZWruTKi7IQaAA6GBjtNy0GbNAypOna17Z9Rr8BUXCfK93ORw==
X-Google-Smtp-Source: AGHT+IF89nO9OP7Ku5BOB0EMsIvfwp0JK9O4DLAwZ0eK4sn8t4qeCJn7OJr8jyedWukal5RmrFOmxg==
X-Received: by 2002:a17:906:fe04:b0:b73:8792:c3ca with SMTP id a640c23a62f3a-b738792c501mr1397764466b.32.1763505814136;
        Tue, 18 Nov 2025 14:43:34 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda933fsm1422286266b.56.2025.11.18.14.43.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 14:43:32 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42bb288c17bso2175047f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:43:32 -0800 (PST)
X-Received: by 2002:a05:6000:4285:b0:429:d0b8:3850 with SMTP id
 ffacd0b85a97d-42b59373560mr15721916f8f.48.1763505811684; Tue, 18 Nov 2025
 14:43:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Nov 2025 14:43:20 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
X-Gm-Features: AWmQ_bll7WeW0i59nxOAqQR7FvjUYkkrtgy-Zj5as_5uRuWHBgIIpodvLfSaXG8
Message-ID: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
Subject: Proposal: Officially allow "incomplete" trees as a base
To: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"

This is a continuation of the discussion that started in reply to my
patch adding basic device trees for Pixel 10 phones [1].


Problem statement:
------------------

We would like an officially accepted scheme that lets us more
efficiently ship compiled device trees for a handful of related
products by breaking the device trees up into a common "base" device
tree and then applying "overlay" device trees atop the base to make a
full and complete device tree.

To make it more concrete, we'd like to build a "base" device tree that
describes a SoC and then have the overlays be enough to make a full
description of a board. In theory, one could also imagine wanting to
expand this to 3 or more levels (perhaps SoC, baseboard, derived
boards), though this is not planned at this time.

The primary reason for wanting to break device trees like this is
efficiency of the shipped binary device trees. A large portion of a
final device tree just describes the SoC. We save space in the final
compiled device trees if they don't need to contain as much duplicated
information.

A secondary reason for wanting to break device trees like this is to
more nicely handle when a board has a socketed SoC that can be
replaced with a finite (and small) number of different SoCs (usually
revisions of the same SoC). Even if this secondary reason is
considered invalid or too difficult, the primary reason still
describes a compelling need.

In order to make this proposal work, it's expected that a bootloader
will understand the scheme and will know how to combine the overlay
atop the base before passing a complete device tree to the main OS.


Current state of the art (downstream):
--------------------------------------

In Android, we do a pretty good job of solving the stated problem
using device tree overlays. We describe the SoCs in "dts" files and
compile them into "dtb"s. We describe boards in "dtso" files and
compile them into "dtbo" files. A bootloader can handle identifying
the correct base and overlay (the scheme for doing this is a separate
but related topic) and applying the overlay atop the base "dtb". This
solution is fully implemented downstream for Android phones and is
well documented [2].

The issues I'm aware of with the current state of the art are:

1. In order for the base device tree to pass schema validation on its
own we'd need to document the top-level compatible strings in the
device tree. It is the opinion of at least some device tree
maintainers that a SoC doesn't qualify as a top-level compatible
string. This prevents the device trees from landing in an officially
sanctioned location.

2. It is also possible we may fail schema validation for the base SoC
tree if the schema marks a property as "required" but that property
needs to be filled out by the board (perhaps a "-supply" is marked as
"required", since most "-supply" properties are filled in by the
board. I'm not sure this is a big issue, but it's something to think
about.

3. It's unclear if there is any official "ABI" promised here once
we've compiled and validated the base device tree on its own. Will
people assume that they can have out-of-tree overlays derived from the
base SoC tree and that those out-of-tree overlays will continue to
work across changes / cleanups to the base? NOTE: this is a
pre-existing question for existing device tree overlay usage, but the
sheer quantity of nodes/properties that a board would be expected to
overlay/modify in the base make the problem more prominent.

4. We want the final device tree's top-level compatible to be all the
compatible strings from the board followed by all of the compatible
strings for the SoC. When the board's overlay is applied to the base
SoC tree, though, the board's top-level compatible fully replaces the
compatible from the base SoC tree. This can be solved today for
non-socketed boards by just duplicating the SoC compatible strings in
the board overlays. We can't solve this today for socketed boards,
though we can simply make sure that no software drivers rely on the
specific SoC compatible string being present and thus we can ignore
the problem.

None of the above problems are big enough to have prevented widespread
use of this scheme in downstream Android.


Current state of the art (upstream):
------------------------------------

Upstream if we have a pile of related boards, we do allow
deduplicating things at a source-code level with "dtsi" files. We can
have a SoC "dtsi" file and that file is included by all boards that
use that SoC. When it comes time to validate or ship things, though,
we only work with full devices trees. This means that we ship
duplicated information.


Proposal:
---------

1. Allow the top-level compatible string of an "incomplete" device
tree to be documented so it can be validated on its own by tools. It's
understood that this SoC is not a board by itself and we'd never boot
a full OS with this device tree without adding an overlay that changes
the top-level compatible. Add a top-level property to the device tree
(perhaps "incomplete-compatible;") to indicate that the tree is not
complete without an overlay.

2. If it turns out to be needed (hopefully it's not), allow some type
of syntax in yaml files that allows a property to be marked as
"required" in a "complete" device tree but not in an "incomplete"
device tree. Alternatively, we could discourage marking properties as
"required" if they're expected to be filled in by a board.

3. Define that there is no promised ABI between "incomplete" device
trees and anything not stored with them. Specifically, all valid
combinations of "incomplete" device trees with overlays to complete
them should be enumerated together with the "incomplete" device tree.

4. When applying an overlay to a device tree that's "incomplete", the
top level overlay will be merged instead of replaced.

Example for 2 levels:

base (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc";
overlay compatible: "boardvendor,myboard-rev1", "boardvendor,myboard";
merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
                   "socvendor,mysoc-rev1", "socvendor,mysoc";

Possible example if we support 3 levels:

SoC (incomplete) compatible: "socvendor,mysoc-rev1", "socvendor,mysoc"
overlay1 (incomplete) compatible: "referencevendor,referencecodename";
overlay2 compatible: "boardvendor,myboard-rev1", "boardvendor,myboard"
merged compatible: "boardvendor,myboard-rev1", "boardvendor,myboard",
                   "referencevendor,reference-codename",
                   "socvendor,mysoc-rev1", "socvendor,mysoc";

Obviously in the 3-level scheme we need to know the order that
overlays are applied, but that's true for overlays today anyway.

The above proposal takes the current downstream "state of the art" and
addresses the known issues, solving the original problem statement.


Other thoughts:
---------------

If you don't like the proposal, I'd be interested in knowing if you
have other ideas for solving the original problem statement, or if you
simply think the problem we're trying to solve here is an invalid one.

I'm happy to post up another revision of my Pixel 10 device trees
following this proof of concept (or other ones). My v1 was _very_
close to this, but didn't have the "incomplete-compatible;" property
and didn't implement top-level compatible merging.


[1] https://lore.kernel.org/r/20251111112158.1.I72a0b72562b85d02fee424fed939fea9049ddda9@changeid
[2] https://source.android.com/docs/core/architecture/dto/partitions

