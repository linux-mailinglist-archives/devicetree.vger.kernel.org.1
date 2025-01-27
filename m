Return-Path: <devicetree+bounces-141165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B07CA1DA79
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 17:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D5F718857BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 16:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DD515573F;
	Mon, 27 Jan 2025 16:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud9wuQDB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6631547F2;
	Mon, 27 Jan 2025 16:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737995068; cv=none; b=WLBJqmYJE6kzJ/VhQDfp8QCBIbMsNC8FNGb01LMoxtubysD5CSxWiLaI88SqGrn2ZWSaqw6F3XxpcjXS9k5d38NNVa1Q87zVBg23brB3PBwhmRcw9uH9oTmzmWOPc3BjfMhNeZEn9+RnQm6+W0Wv+TFFVQmTEYLVPDOwsGov1BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737995068; c=relaxed/simple;
	bh=P1XAvO3VDlbIoA2FFuYha3SIR6cyChDAtMKtoP6rroo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BGDV5We0SuvrzVgVfEDUVmxNCPOyqoeYQ1NSm+kk/eCEk5rCIn5rkspd7ldjWehqUjbcbnGgER6XrIDWS5Kvs+X0Ehi6GL/YhPiHUOv025nrK4ZmsjnFlzVzS5xlAxIfGcL0Y/aveFNhW/FwZ3U7hD39KZ8BxkUEhmrVGIi1/M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud9wuQDB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11122C4CEE9;
	Mon, 27 Jan 2025 16:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737995068;
	bh=P1XAvO3VDlbIoA2FFuYha3SIR6cyChDAtMKtoP6rroo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ud9wuQDBCD+VNndwuXVUkXuOV/EbvHeRxA0Sd1z9ru/nfg1dGxb1vG29TrHNGJT19
	 MKr+FyS8/3tkrdLl2tX4GLOxIEdPEPQhOruKO6RLDHaZqPpDgq3SL4Vp41bG/OmF0t
	 00307Vn8UaQfjz+vX1PSJGUPzh2Yg1/4LLSj3Mugl8KrTpe6ccTaYmFlR48Donu6XD
	 TSsAtR6Xr1UTesEDOZjYSgDiWzD3SgyT/VOpEEEeEn+H3s0LikY1eRP1XkcgeFV1dR
	 goym7egsufaC+Ry3GG6K/0IL/Y+C0k15DkN6bO+HVyHHeckw8cGSjMhhp+QIbNvOTy
	 +lid0z6K1NRMQ==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54024aa9febso4938730e87.1;
        Mon, 27 Jan 2025 08:24:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUsqYXviTqK0IvtGZmuItPGaXxwICZ+YQSIhlGKhC5L1/HEjxfrX+cSimU4ZOvWg3nhAuAakXWnRgXk@vger.kernel.org, AJvYcCWGRBKjjcVNKNfbVWxNKLAHDOfE3RLreLaDyx4tsysCZ/lWqd6xu7DgyIsiLkunVWgvbfcQETYAKqEZqdd4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7wmaTmfZZGZH7yLBKkRSmQQjFDRhxv25ignafY9ZOdRG68Ez6
	+WIjOVV6XkNLBWTFJx+maqjy6N2qrs3z8HD9fmzzOyH5wSB/tm9TTe8yLzFmPkGh8xZlOmebHN0
	sFPSJcxzKZ1fPy47DLUaKTMYi8g==
X-Google-Smtp-Source: AGHT+IHO7xcGOPrToRZlwr3nuIUx/JCC3FFTG/RQH5LwAJUEK267HLoXlDeEikLsLokRDuugPuNKRciTbG4rkyqs+/k=
X-Received: by 2002:a05:6512:108a:b0:540:1fd6:4e4f with SMTP id
 2adb3069b0e04-5439c246c5fmr14519142e87.22.1737995066304; Mon, 27 Jan 2025
 08:24:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250124152008.313-1-alireza.sanaee@huawei.com> <20250124152008.313-2-alireza.sanaee@huawei.com>
In-Reply-To: <20250124152008.313-2-alireza.sanaee@huawei.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 27 Jan 2025 10:24:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKFjQeaoGn5PRn1=P49mag-Kyik7EwtsOU8fcdvYhPcOA@mail.gmail.com>
X-Gm-Features: AWEUYZnVRYg0HjS13AR3X4YMrcQBzFYQx47bdwZghD62tZ_Wvr7bmwA4jHcafg4
Message-ID: <CAL_JsqKFjQeaoGn5PRn1=P49mag-Kyik7EwtsOU8fcdvYhPcOA@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/1] base/of/cacheinfo: support l1 entry in dt
To: Alireza Sanaee <alireza.sanaee@huawei.com>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jonathan.cameron@huawei.com, 
	linux-arm-kernel@lists.infradead.org, shameerali.kolothum.thodi@huawei.com, 
	zhao1.liu@intel.com, yangyicong@hisilicon.com, rrendec@redhat.com, 
	catalin.marinas@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 24, 2025 at 9:20=E2=80=AFAM Alireza Sanaee
<alireza.sanaee@huawei.com> wrote:
>
> This commit simply assumes that CPU node entries may point to a cache
> node that basically act as a l1-cache and there are some CPU nodes
> without describing any caches but a next-level-cache property that
> points to l1-cache.

This commit message needs some work. Read documentation on writing
commit messages.

Why/when does describing L1 cache in the cpu nodes not work? That is
the assumption in the bindings. If we're changing that, there may need
to be a binding/spec change.

>
> Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> ---
>  drivers/base/cacheinfo.c | 54 +++++++++++++++++++++++++++-------------
>  1 file changed, 37 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
> index cf0d455209d7..d119228fc392 100644
> --- a/drivers/base/cacheinfo.c
> +++ b/drivers/base/cacheinfo.c
> @@ -83,7 +83,31 @@ bool last_level_cache_is_shared(unsigned int cpu_x, un=
signed int cpu_y)
>
>  #ifdef CONFIG_OF
>
> -static bool of_check_cache_nodes(struct device_node *np);
> +static bool of_check_cache_node(struct device_node *np) {
> +       if (of_property_present(np, "cache-size")   ||
> +           of_property_present(np, "i-cache-size") ||
> +           of_property_present(np, "d-cache-size") ||
> +           of_property_present(np, "cache-unified"))
> +               return true;
> +       return false;
> +}
> +
> +static bool of_check_cache_nodes(struct device_node *np)
> +{
> +       if (of_property_present(np, "cache-size")   ||
> +           of_property_present(np, "i-cache-size") ||
> +           of_property_present(np, "d-cache-size") ||
> +           of_property_present(np, "cache-unified"))

This is the same code as of_check_cache_node(), use it.

> +               return true;
> +
> +       struct device_node *next __free(device_node) =3D of_find_next_cac=
he_node(np);
> +       if (next) {
> +               return true;
> +       }
> +
> +       return false;
> +}
> +
>
>  /* OF properties to query for a given cache type */
>  struct cache_type_info {
> @@ -218,11 +242,23 @@ static int cache_setup_of_node(unsigned int cpu)
>         while (index < cache_leaves(cpu)) {
>                 this_leaf =3D per_cpu_cacheinfo_idx(cpu, index);
>                 if (this_leaf->level !=3D 1) {
> +                       /* Always go one level down for level > 1 */
>                         struct device_node *prev __free(device_node) =3D =
np;
>                         np =3D of_find_next_cache_node(np);
>                         if (!np)
>                                 break;
> +               } else {
> +                       /* For level 1, check compatibility */
> +                       if (!of_device_is_compatible(np, "cache") &&
> +                           !of_check_cache_node(np)) {
> +                               struct device_node *prev __free(device_no=
de) =3D np;
> +                               np =3D of_find_next_cache_node(np);
> +                               if (!np)
> +                                       break;
> +                               continue; /* Skip to next index without p=
rocessing */
> +                       }
>                 }
> +
>                 cache_of_set_props(this_leaf, np);
>                 this_leaf->fw_token =3D np;
>                 index++;
> @@ -234,22 +270,6 @@ static int cache_setup_of_node(unsigned int cpu)
>         return 0;
>  }
>
> -static bool of_check_cache_nodes(struct device_node *np)
> -{
> -       if (of_property_present(np, "cache-size")   ||
> -           of_property_present(np, "i-cache-size") ||
> -           of_property_present(np, "d-cache-size") ||
> -           of_property_present(np, "cache-unified"))
> -               return true;
> -
> -       struct device_node *next __free(device_node) =3D of_find_next_cac=
he_node(np);
> -       if (next) {
> -               return true;
> -       }
> -
> -       return false;
> -}
> -
>  static int of_count_cache_leaves(struct device_node *np)
>  {
>         unsigned int leaves =3D 0;
> --
> 2.34.1
>

