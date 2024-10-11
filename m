Return-Path: <devicetree+bounces-110546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C2C99AEC0
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 00:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5162B221F4
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 22:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F69F1D31AE;
	Fri, 11 Oct 2024 22:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUFnSv+u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEAD1D26F7
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 22:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728686801; cv=none; b=uR8l7mToRugOu9c8bDE4mFbW3Kscc3nvDIIfliVv23YKdZJ1IgT8h+RCCDaa+ZAIu9GDYpwtiO7H8vy4ySWyL/hobX9h8S5g3mocCIoPGgzqOcgRs/s11gxh9NOnDn3yaz9BU4p+QOB2b0Xg1k4prBZO3bZZOEM0/GTeE/Gx5wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728686801; c=relaxed/simple;
	bh=DlEXq8hARPVhEI6cAs3+7wXgC203xqOVk0XyK2eqmxE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kzq3RIAI8sZJhhnYOOkqlrw1o8tnLHvLnq9AdRjSTBIboMRl6NBJfezZbI0U4hQjavyOy1EBNVRWiYjWHUy9CHai96DjVdfVL+tYzUVzkt2VELLuMNuMbAvoJlD9kGXgpXaGjcUgxl0jPMRlH60WlV46US/ASypG7xBcJcdcyQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUFnSv+u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B94E3C4CECC
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 22:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728686800;
	bh=DlEXq8hARPVhEI6cAs3+7wXgC203xqOVk0XyK2eqmxE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kUFnSv+uFYaAFx2CEX8IGjTkwWjKeYmbQCXmgUiJ60SqI5MdUPTBVYtJ4mVK2NHRp
	 LHR2BFxBJDGGFM5a4bVhkqAw3CupGcOqk5bcW79DfZvgS9LKz1TYy2oQHG99TfGS5N
	 vqJ8eLiGuzTVNRz2W3nF1vxAsNEkpAf5MXLPRJ/eccB8728TWWDFYd4RaZsh5/9ngb
	 XpYASlBMrNNFLPxXiJleRJrow08litDxoZ6xBiij3Vh7zw2jR/5EAF2k0ZMDZjlUUC
	 0QKzg2bqjX2LD0yj0PtekCEIyil3tsv1Nu8toxZnjHnspMPmLddBWq+99J9VMDZyea
	 r4mlIIAdMOQkg==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fad5024b8dso29298961fa.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:46:39 -0700 (PDT)
X-Gm-Message-State: AOJu0YwwApPUxWY2ij300myzFaNTgppM3O9GI45uzb5OyXInVoeKogoF
	qlfFp5J+QGIWU5NI+32CoHGyMP7l3Td/VKRE4869vKpe9WVdHYyeeKDe55rk8aQF/GD9R/M9HWN
	e2p2f9cPdhm0O9p/Ecv6Z+aSm4Q==
X-Google-Smtp-Source: AGHT+IHa0fRwLK/o8oYBkFdgv8luL2RLSsiNyf0MVEnQl2fehUlCoUnLKjg+bJhCOO8fxr5pWT6Kqh5RHR+fJA6kjHc=
X-Received: by 2002:a05:6512:2308:b0:533:4b07:a8dc with SMTP id
 2adb3069b0e04-539da4e28damr2483454e87.35.1728686798133; Fri, 11 Oct 2024
 15:46:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com> <20241011140507.3703348-2-Jes.Sorensen@gmail.com>
In-Reply-To: <20241011140507.3703348-2-Jes.Sorensen@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 11 Oct 2024 17:46:25 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
Message-ID: <CAL_JsqJcha9xDkQVu1U_R2hZCVwsUq106afhnJfOan4V+cBdAg@mail.gmail.com>
Subject: Re: [PATCH 1/1] Skip building dtc if a prebuilt binary is specified
 via DTC=
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: devicetree@vger.kernel.org, tnovak@meta.com, 
	Jes Sorensen <jes@trained-monkey.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 9:05=E2=80=AFAM Jes Sorensen <jes.sorensen@gmail.co=
m> wrote:
>
> From: Jes Sorensen <jes@trained-monkey.org>
>
> For Android it is common to use a prebuilt dtc, speficied via DTC=3D. In
> this case building dtc as part of the kernel is not necessary, and even
> unwanted to avoid mix and match between two different versions of dtc.
>
> Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
> ---
>  scripts/dtc/Makefile | 3 +++
>  1 file changed, 3 insertions(+)

Well, this one is much simpler than a prior attempt[1] and may be
acceptable. But I wonder if something is not handled here.

I think lack of external fdtoverlay support makes this incomplete.

Rob

[1] https://lore.kernel.org/all/20240815110059.4912-1-tianyuanhao3@163.com/

