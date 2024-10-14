Return-Path: <devicetree+bounces-111093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB1599CF2D
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61B8D28B38C
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 14:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD291B4F07;
	Mon, 14 Oct 2024 14:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umIBTuPy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278531B4F04
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728917299; cv=none; b=tPqLkR1EisLu1CkH2LfvM2lbUHLalnaV8YwTtkWOyAjkTWSKULFD6/9APJL/obiU2HW60v0LIL82p7YnGnlQgtfPoP7ZSV8PI7Fx7IctICcQZNH1jmrQJxrjdm08B1CWdGbJGGhzDlgJOnsywAv/Vrsml52yTJw6D6FuCJxmNJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728917299; c=relaxed/simple;
	bh=OiwIo5p7mj7Q+Mx59fwWzeqBs46+ii4xZtIJyu5pxuA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D+f7dEdA7ntw22vcRMbmGgOXI0nu0077pS21OeSGhIP6fgiloAAa+FlurCrmOq+R8WQfUI+RBLnjfJC5ti14RULPIWjIISlCXzcgszr0/cS1jwVb/yYce9S0OIq35oPEXbgpMjWZK0xqeYBwV4Gx1Z/v7H96uoswhKIMFdkwwAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umIBTuPy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE4C0C4CEC3
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728917298;
	bh=OiwIo5p7mj7Q+Mx59fwWzeqBs46+ii4xZtIJyu5pxuA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=umIBTuPyeg6o+NMMUgVdbXKjOdBmkhEeT8gMIkl7AN0w2SPxshjg+sqYO1Qxfesr0
	 PmNoWzj5BJylAejjqsqpep0atTT0kJeTgQrB2GIOtx4XJJD/H0lKvymoEyBW5Vc3pZ
	 1+Wt+eThIm2SURol7TrJ0YvqYILG26sKsTH/bsLYiFsl0NUVy2xulDjI1nZ4s3gSyC
	 8rnDkPIPUvIRl9XOhyVfO759Z5iCogVbnxCJZ9tq00mBk7JkSaNggNrF8aLPElPUwh
	 3zFPGc+fyzhqVIkzz6PM/TKUDGGuzMk4COtZygXGp224/JPM742G/LInL6iLYt8LZx
	 wdUvd6UvErAwg==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f8490856so1041060e87.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 07:48:18 -0700 (PDT)
X-Gm-Message-State: AOJu0YzcHP+bJQwwXT4LAkidaqAokX+NnzzVz/BsZ0uqFlxYNtXbzMZr
	1qr6jpX+clA4vh9eSnURBSBzHCGiJPaGicodPq6/wuw7MbFaPAKCQLOMQbX4/t5+LOZ83+F3gb3
	7BKg6KhfgLS/dgRaXUKGef6PQgg==
X-Google-Smtp-Source: AGHT+IGLfTSGfQGGknX28u/NizfHD1g3oBfOvZCmOSS0IJ78grS+FrLahxoUtpjlID/r1BiW+u/mMVAsJbkEgbpr55o=
X-Received: by 2002:a05:6512:1092:b0:539:f5a9:b224 with SMTP id
 2adb3069b0e04-539f5a9b44dmr1977423e87.11.1728917297130; Mon, 14 Oct 2024
 07:48:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
 <20241011140507.3703348-2-Jes.Sorensen@gmail.com> <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
 <7543f364-b413-4789-9aba-cc23bf54df52@trained-monkey.org>
In-Reply-To: <7543f364-b413-4789-9aba-cc23bf54df52@trained-monkey.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Oct 2024 09:48:05 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+rjTQSOhEQwh35LfqrarrNmP3NzRyKXfBSfK7EGhVq4Q@mail.gmail.com>
Message-ID: <CAL_Jsq+rjTQSOhEQwh35LfqrarrNmP3NzRyKXfBSfK7EGhVq4Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] Skip building dtc if a prebuilt binary is specified
 via DTC=
To: Jes Sorensen <jes@trained-monkey.org>
Cc: devicetree@vger.kernel.org, tnovak@meta.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2024 at 9:41=E2=80=AFAM Jes Sorensen <jes@trained-monkey.or=
g> wrote:
>
> On 10/11/24 18:46, Rob Herring wrote:
> > On Fri, Oct 11, 2024 at 9:05=E2=80=AFAM Jes Sorensen <jes.sorensen@gmai=
l.com> wrote:
> >>
> >> From: Jes Sorensen <jes@trained-monkey.org>
> >>
> >> For Android it is common to use a prebuilt dtc, speficied via DTC=3D. =
In
> >> this case building dtc as part of the kernel is not necessary, and eve=
n
> >> unwanted to avoid mix and match between two different versions of dtc.
> >>
> >> Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
> >> ---
> >>  scripts/dtc/Makefile | 3 +++
> >>  1 file changed, 3 insertions(+)
> >
> > Well, this one is much simpler than a prior attempt[1] and may be
> > acceptable. But I wonder if something is not handled here.
> >
> > I think lack of external fdtoverlay support makes this incomplete.
>
> So I was thinking about that. The only places I see in the tree that
> reference fdtoverlay are scripts/make_fit.py, scripts/Makefile.dtbs, and
> scripts/dtc/Makefile. I don't see anything calling make_fit.py.

"make dtbs" will use fdtoverlay if there are any base+overlay targets
which there are an increasing number of.

> We can either exclude fdtoverlay from this, or assume that if one
> explicitly sets prebuilts, fdtoverlay is there too.

Currently, if you set DTC you'll get external dtc plus in-tree
fdtoverlay. With your patch, you'll get external dtc plus a build
error because $(objtree)/scripts/dtc/fdtoverlay does not exist.
Neither case is ideal.

Rob

