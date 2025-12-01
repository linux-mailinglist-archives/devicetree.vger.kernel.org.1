Return-Path: <devicetree+bounces-243522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83794C9890D
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E204E3A3D5E
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC590336EFD;
	Mon,  1 Dec 2025 17:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bqYS5JKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED4E335571
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764610982; cv=none; b=dpyJ3iNtodt/86nbmfcjbBWzBGu4k94FLIR9/2w6DNGoQL8gYHpNbdDNrCmXXiCB2UBGcdDUHYzeecYBx/i48o/bImEa0usFNJJ5tiTMUQotP2OrnFonwoicC/4R+S5AC2Xh5rwGdCAc051mBM7sj4gUvozChZi5HwBTbFsU3XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764610982; c=relaxed/simple;
	bh=z2aNNddcuFIhJPUpkq+i8i2OZABHzv6Jpaadi1Svrd4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWDdz+wuPCOUKMo6MTaPwBzsBuIjUAv0zcbCqn9ly4FIKiZ0q/pCKN8jCPa1lFcP61t/C9eqtcQtlbtERwvY1bdwzUG7vrv5TlDpfqyJD0uBD80qWfu4pkQAYIHhoFo16oC5fAFQLcfGzAY8vm8KqFTJjRdhyll8VWd35dXSa2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bqYS5JKT; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64088c6b309so7986437a12.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764610974; x=1765215774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z2aNNddcuFIhJPUpkq+i8i2OZABHzv6Jpaadi1Svrd4=;
        b=bqYS5JKTQknQFLqqru30xyM6AH9LjJ6nqvOtXd3QxqT7vxYhcplVKdc+uQbxwcqKAD
         5Dv43ZnD6c5ri1GdVg6faCLooiAWqzJHMZuEjHbMnrlq16wd7pLeD7r7QIswuxYHx566
         +W0okG480UPSdF3akdUMmMTy9n3fET1CsNq/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764610974; x=1765215774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z2aNNddcuFIhJPUpkq+i8i2OZABHzv6Jpaadi1Svrd4=;
        b=QnfafaoH6aP3IDpGCCSff8CgNyHTHgLNANM8yF2Qnx/kwIqWL5t8hKiBcSu/ywEHn1
         9IlujJQipGOK4+wPuRDXhVpcyijUvgzIrLG0jaxTb1c+KHudjwUtllrrJloxk79/YZpw
         kpKeruNUN035EQHR2pi7T3+BKiS5SWHhM1W93ogsUZVqKGUcDpkDf+O/OveD+4jK76jT
         u7L+TZLatOz34B8AXOwO9d7WrYnIema+Mswa0PO3otsWpXAmddllHHeLr+euCP3vjiSJ
         GVFdZoxra6nV/ogojvs+xRXXL6Yq0PWE/MHnB2VMuy3eQo98YctvVNzX3Vmo7IrEbx4T
         id2Q==
X-Gm-Message-State: AOJu0YyaWZXNpXUwMGQIoGNt1IUcp4rGE3y8CzcTugFTCbK49VuLwZwC
	FcLJDrqBMzl+c8MCte2jwB7Z38JpNWXC/TjpNICaJgeGULsTX/3CjkY0/A0IMxIJDl4lRrv72/Q
	KYBM7OA==
X-Gm-Gg: ASbGncsszrB/kci0rG+6qXphq1V/6tIkhAzxuo8amaJgENHC5l9OkCt3kHZhPIS5KCf
	NS6K5K0f7SRM6ldSztRjzbmfJNK7a4bnKKJZbcTvzgeT+Reolk06Pmm1rtbac+YOlVtLSbN8G9x
	qFxoj1sxyjvmasWcegHyOpebKP12n1WPKZXrUOt0XZSsm36YhuB3sk2QNhRhOex2p7hcIabXYlS
	a/WhOswSmkorTGpDaLaqKzPmrD+THtwLB0yjgPFGVnMDV3/6ntXLmDtuzMwo4Pwdw0TgE7Ei9Rm
	ErWAs4EqcI9VmHMUQbZjQ7szcQYnSp9X01hgUJhnN5Ic7H743DHYulOYjB/FE9VWqES1F0atXZf
	WG3O6IVPmqnCagzL13m49NfS1rMW5eOV8QcLJUQb6cO5qFSRkBnIc3MJApYQ8Qw1O2DODABhr5h
	DqHrwPCGKq0pBgJx+HpzoRGvl+Y9B8t0kCcPqKaUTqm4ImshOZnw==
X-Google-Smtp-Source: AGHT+IF1dhhcuOiJPO/WatphkXT8gkKwv2WhPuZsoURKnZ4cP9wvQTMjAWBjcr4APqjwdVHz62fQIA==
X-Received: by 2002:a05:6402:354e:b0:641:4b82:10c9 with SMTP id 4fb4d7f45d1cf-64555d0246cmr33119951a12.27.1764610974078;
        Mon, 01 Dec 2025 09:42:54 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90e44sm12865179a12.14.2025.12.01.09.42.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 09:42:52 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47778b23f64so26098965e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:42:51 -0800 (PST)
X-Received: by 2002:a05:600c:3b01:b0:477:54cd:200a with SMTP id
 5b1f17b1804b1-477c110325dmr353054665e9.6.1764610971488; Mon, 01 Dec 2025
 09:42:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
In-Reply-To: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 1 Dec 2025 09:42:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UbejKdD2q2Z3RuYH0Ooc6XRb0oynchDsqnq7GzM6ah0w@mail.gmail.com>
X-Gm-Features: AWmQ_bklYYUuZ7Bfo2iuNXaW3ByDaQVvqRqdXPt8364JwFM4FAtgG6_fIKG39f4
Message-ID: <CAD=FV=UbejKdD2q2Z3RuYH0Ooc6XRb0oynchDsqnq7GzM6ah0w@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 18, 2025 at 2:43=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> This is a continuation of the discussion that started in reply to my
> patch adding basic device trees for Pixel 10 phones [1].
>
>
> Problem statement:
> ------------------
>
> We would like an officially accepted scheme that lets us more
> efficiently ship compiled device trees for a handful of related
> products by breaking the device trees up into a common "base" device
> tree and then applying "overlay" device trees atop the base to make a
> full and complete device tree.
>
> To make it more concrete, we'd like to build a "base" device tree that
> describes a SoC and then have the overlays be enough to make a full
> description of a board. In theory, one could also imagine wanting to
> expand this to 3 or more levels (perhaps SoC, baseboard, derived
> boards), though this is not planned at this time.
>
> The primary reason for wanting to break device trees like this is
> efficiency of the shipped binary device trees. A large portion of a
> final device tree just describes the SoC. We save space in the final
> compiled device trees if they don't need to contain as much duplicated
> information.
>
> A secondary reason for wanting to break device trees like this is to
> more nicely handle when a board has a socketed SoC that can be
> replaced with a finite (and small) number of different SoCs (usually
> revisions of the same SoC). Even if this secondary reason is
> considered invalid or too difficult, the primary reason still
> describes a compelling need.
>
> In order to make this proposal work, it's expected that a bootloader
> will understand the scheme and will know how to combine the overlay
> atop the base before passing a complete device tree to the main OS.

It's been roughly two weeks since I sent out this proposal. Do DT
folks have any comments? Are the goals I have stated understood? Do
people agree that these goals are reasonable? Is there any question
that there is a need to solve these problems not just for Google, but
for the community as a whole? I'm happy to reach out to people and
have them reply "yes, I have this problem too" if it would somehow
help. I don't doubt that there are still people at Qualcomm who would
like a solution even if I think Elliot isn't driving it there
anymore...

How do we make forward progress? Does anyone have any comments on
Julius's reply? At the moment, I think there are some conflicts with
what Julius would like to see (no changes to the rules for how
overlays are applied) and what Rob said previously (we need to find
some way to combine the compatible strings). Did I misunderstand? Can
we find a common ground?

Thanks!

-Doug

