Return-Path: <devicetree+bounces-111100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D04CC99D1F8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BF741F24E5C
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 15:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB1C1ABEB1;
	Mon, 14 Oct 2024 15:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLYSH+zG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BB1ABEB0
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728919095; cv=none; b=qWWj8CHTnqKpWbTVUwsfmAqPXP9UIHrfuNB0OxdCsRzFQImig3gVVixNSKWtQ+k/fTueH6hu2R0RYRI+dSYvQF9QMG3qpg6so0kp5leLbxXjqHyQJj5NOfthwAeb6KCCsnmjKUG6/mNpc8mmJvPV0/x23AfJOqFl9JqV+OFnMFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728919095; c=relaxed/simple;
	bh=KWdjn6bnKBOb9tSh9bKTAzS6Vf4h/Y1vaV/2N7DadoY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SZSu3DAGRBphL7NKnJxaE5875jLLnmOeRjUB6XSUiKUeQ7AQP5fpn7BL/b05jh55O4piZ9ILc9AwvTPoWYgWpmBZV3Ackh9J9+t5qz05UfVBxHJYbCU7WLVkYHxU1HIuAKxsJK0E0KdsxFWjRqlXA1lJIoa09Bt2WbRiwNs6xLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLYSH+zG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA5A9C4CEE6
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728919094;
	bh=KWdjn6bnKBOb9tSh9bKTAzS6Vf4h/Y1vaV/2N7DadoY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sLYSH+zGsaFjWa4+6iHGP62t+hgqDiY/nDmg84ip+TiKYao3w2nPRp7k5lg7e1B7Z
	 wj1Qkolawk9IP7HZfJw8tlXGWiynb/xdadMIf0NEWv83YIdc/Jcque7kpt0wsI1+AJ
	 AQWMtYOkm45EYxEuD36mZj7EaKNSK6rBdBRS92Xi6hVVMn1rbmMKRA5TKS2JHp9JAW
	 xXpk/1YiBpTqkdkXrRzuZ/QRdZPRP0cFZOrj/usZCQ3A7H3HfYBt7duKgi/+bLPgxs
	 ZEETG3oJ8hGpqDbeahQcyXySCTMRtvFdJIolQjNNaAilhYiqnce+CelWTA6BGCfJLc
	 nwDKBIhqAcd0w==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539fbbadf83so893983e87.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 08:18:14 -0700 (PDT)
X-Gm-Message-State: AOJu0YwHpH7BoNWEHdg8veV4VvVNyMKrHqxRa/9aVDHdDlklL04UvSsv
	F9RypdLhPnNphiBrkESqmPzwNBt981m1JOtq/70m9W59SQSX98WDRHvYiCOr+qhab1M0U+wbD27
	cSNnyG40SEiKx0ZeQbla86PqU3w==
X-Google-Smtp-Source: AGHT+IFN9WVPlFSqvhpH0qBeNSLOBt0lglLYLXDFY/UHxpnkkCT+HeW94BqClsOpSwHUgrYCeRpe8QEXAgU67NSmQPQ=
X-Received: by 2002:a05:6512:1092:b0:539:f5a9:b224 with SMTP id
 2adb3069b0e04-539f5a9b44dmr2051392e87.11.1728919093146; Mon, 14 Oct 2024
 08:18:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
 <20241011140507.3703348-2-Jes.Sorensen@gmail.com> <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
 <7543f364-b413-4789-9aba-cc23bf54df52@trained-monkey.org> <CAL_Jsq+rjTQSOhEQwh35LfqrarrNmP3NzRyKXfBSfK7EGhVq4Q@mail.gmail.com>
 <fd483e9c-2896-4ce6-8511-2660ed7d0021@trained-monkey.org>
In-Reply-To: <fd483e9c-2896-4ce6-8511-2660ed7d0021@trained-monkey.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Oct 2024 10:17:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLVS21ha1E9Az3vsh0+vADzOWwP9qpeXUcAGSv3dYDHog@mail.gmail.com>
Message-ID: <CAL_JsqLVS21ha1E9Az3vsh0+vADzOWwP9qpeXUcAGSv3dYDHog@mail.gmail.com>
Subject: Re: [PATCH 1/1] Skip building dtc if a prebuilt binary is specified
 via DTC=
To: Jes Sorensen <jes@trained-monkey.org>
Cc: devicetree@vger.kernel.org, tnovak@meta.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2024 at 10:05=E2=80=AFAM Jes Sorensen <jes@trained-monkey.o=
rg> wrote:
>
> On 10/14/24 10:48, Rob Herring wrote:
> > On Mon, Oct 14, 2024 at 9:41=E2=80=AFAM Jes Sorensen <jes@trained-monke=
y.org> wrote:
> >>
> >> On 10/11/24 18:46, Rob Herring wrote:
> >>> On Fri, Oct 11, 2024 at 9:05=E2=80=AFAM Jes Sorensen <jes.sorensen@gm=
ail.com> wrote:
> >>>>
> >>>> From: Jes Sorensen <jes@trained-monkey.org>
> >>>>
> >>>> For Android it is common to use a prebuilt dtc, speficied via DTC=3D=
. In
> >>>> this case building dtc as part of the kernel is not necessary, and e=
ven
> >>>> unwanted to avoid mix and match between two different versions of dt=
c.
> >>>>
> >>>> Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
> >>>> ---
> >>>>  scripts/dtc/Makefile | 3 +++
> >>>>  1 file changed, 3 insertions(+)
> >>>
> >>> Well, this one is much simpler than a prior attempt[1] and may be
> >>> acceptable. But I wonder if something is not handled here.
> >>>
> >>> I think lack of external fdtoverlay support makes this incomplete.
> >>
> >> So I was thinking about that. The only places I see in the tree that
> >> reference fdtoverlay are scripts/make_fit.py, scripts/Makefile.dtbs, a=
nd
> >> scripts/dtc/Makefile. I don't see anything calling make_fit.py.
> >
> > "make dtbs" will use fdtoverlay if there are any base+overlay targets
> > which there are an increasing number of.
> >
> >> We can either exclude fdtoverlay from this, or assume that if one
> >> explicitly sets prebuilts, fdtoverlay is there too.
> >
> > Currently, if you set DTC you'll get external dtc plus in-tree
> > fdtoverlay. With your patch, you'll get external dtc plus a build
> > error because $(objtree)/scripts/dtc/fdtoverlay does not exist.
> > Neither case is ideal.
>
> Agree, what path calls fdtoverlay ? I didn't see anything calling that
> script.

It is the same magic used used to combine object files for a module.
Anywhere you have "foo-dtbs =3D base.dtb overlay.dtbo \n dtbs-y +=3D
foo.dtb", foo.dtb will be built by applying the overlay with
fdtoverlay.

Rob

