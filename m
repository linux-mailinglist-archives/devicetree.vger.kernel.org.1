Return-Path: <devicetree+bounces-135696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56937A01BDA
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 21:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD41718845BD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 20:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EDA917C210;
	Sun,  5 Jan 2025 20:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fv/H+pkN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E6BA29;
	Sun,  5 Jan 2025 20:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736110306; cv=none; b=hgfVaVKdXlG3VtSxf83G3OsT/kOPl1on7NRoiIyEAr5sAzaD6DhRb008R5UjC+ZQJoHTRTOZXR915ohoE3J6lKZjvN41KW/Iu+zsjMZ2LM1RDs+v90OhS9vz6VgbkfjFylGyEhlFCC8UdGLVT71n6FUWXWJvThE1B4zAah00r1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736110306; c=relaxed/simple;
	bh=YWtdAYVpyEWOOMc6G6i21aDuQtdegnWqqJ1AWYkNV3Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V3DSER2eVnq3wB3s547ICXtpsHMkOZcwLnGBZgaL/JvVVuAcuYinngyQoNFmVOlhDq3nAAlp2N4Mnrp/i1A5IFjWhsV8m5qyH27hrESJyYtXfFn51zt68omXKqmWyP5Xp4PHTSGRW+DKjKIhiyqo+rO+3F1SrCiJkLmiAxa7By0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fv/H+pkN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F936C4CEDE;
	Sun,  5 Jan 2025 20:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736110305;
	bh=YWtdAYVpyEWOOMc6G6i21aDuQtdegnWqqJ1AWYkNV3Q=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fv/H+pkNx1dwj2QmtXtnSA2fDoR7A615tc8GAaOmb6K8bz3B6BqSf2LRF+9f9/j5Y
	 6dEtuEhMWcf5FGI43X5d4QnDJ4HHhOca2UkxuvSrzEogl8NsKkO4rjKAlbASUtGSyc
	 q/L3DE1WKKZ7yZipoUI8LnOsyPkhbuJXq6ms7urVvXM1mbPH80hmWxKYN4LLL8Fzmm
	 Yd9njq1B32kXUIxBFjkAQ7ctbjdnl3mZhDI5pSkHXCBlZ/QEerrEIdjmZ1DvFRm64y
	 mLke0ov0vEtSIjTFOVWXoMUHlPgempPAKClmncSSM7YJqAtwa2NMh1VHOPnTQuqpUL
	 nOB8le9/GrrCw==
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e46c6547266so17050082276.3;
        Sun, 05 Jan 2025 12:51:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVEgGzB7NAFJEgfLhKDKnE32zIrvUbZcDajxRZDcmFBJe/V9iHMj9vI0MItRYCs6kNggpy4mWcR9Fy8@vger.kernel.org, AJvYcCXM/97BpaoqH1eQvPJlrKVFO+PeyhiVk/QdLOBslZh/nMry6BabxR28ylisQxqGRREmHKvWK9IpH3MGrw1w@vger.kernel.org
X-Gm-Message-State: AOJu0Yws1QGThCiFFmCxlWsAlPg72Kb7OOCic38Ypx8Idazs4+Axv7dV
	OmFBcATdgS07x7yt/yiJghfzfs5v4v+LA5IdzwyPuWfFURYRiVKjMziOSpYtpgCORbr/b5WONVG
	XInoW9UhyOeYiu100bVWWnmsadQ==
X-Google-Smtp-Source: AGHT+IE8JqlRuuWQUrE9feX25668pHcxX4QHeo/1tCjeRpJvrmWwxamFHfTrndi9/+Io3T3tzYctUHxnk6rSQOcIv3A=
X-Received: by 2002:a05:690c:62c6:b0:6ef:5fee:1cbe with SMTP id
 00721157ae682-6f3f826b29emr433647727b3.40.1736110304812; Sun, 05 Jan 2025
 12:51:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250104210524.2137-1-gordoste@iinet.net.au> <20250104210524.2137-2-gordoste@iinet.net.au>
In-Reply-To: <20250104210524.2137-2-gordoste@iinet.net.au>
From: Rob Herring <robh@kernel.org>
Date: Sun, 5 Jan 2025 14:51:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLyWyPsytrLbgmws9A5h-gOE5ePXxV0Zk9VQkvv2NhPoQ@mail.gmail.com>
Message-ID: <CAL_JsqLyWyPsytrLbgmws9A5h-gOE5ePXxV0Zk9VQkvv2NhPoQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: Add of_get_next_child_by_id()
To: Stephen Gordon <gordoste@iinet.net.au>
Cc: saravanak@google.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 4, 2025 at 3:06=E2=80=AFPM Stephen Gordon <gordoste@iinet.net.a=
u> wrote:
>
> This new function returns nodes in address order. There is also a
> corresponding for_each_child_of_node_by_id() macro.
>
> Signed-off-by: Stephen Gordon <gordoste@iinet.net.au>
> ---
>  drivers/of/base.c  | 41 ++++++++++++++++++++++++++++++++++++++++-
>  include/linux/of.h | 12 ++++++++++++
>  2 files changed, 52 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 7dc394255a0a..0be430b022fb 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -623,7 +623,46 @@ static struct device_node *__of_get_next_child(const=
 struct device_node *node,
>              child =3D __of_get_next_child(parent, child))
>
>  /**
> - * of_get_next_child - Iterate a node childs
> + * of_get_next_child_by_id - Iterate a node's children in order of id
> + * @node:      parent node
> + * @prev:      previous child of the parent node, or NULL to get first
> + *
> + * Return: A node pointer with refcount incremented, use of_node_put() o=
n
> + * it when done. Returns NULL when prev is the last child. Decrements th=
e
> + * refcount of prev.
> + */
> +struct device_node *of_get_next_child_by_id(const struct device_node *no=
de,
> +                                               struct device_node *prev)
> +{
> +       struct device_node *next =3D NULL;
> +       u32 next_id =3D U32_MAX;
> +       u32 prev_id, this_id;
> +       unsigned long flags;
> +
> +       if (!node || !(node->child))
> +               return NULL;
> +
> +       if (prev)
> +               of_property_read_u32(prev, "reg", &prev_id);

This should use of_property_read_reg() so that it works for different
address sizes. That however creates a dependency on CONFIG_OF_ADDRESS.
It's probably fine if this function doesn't work for
!CONFIG_OF_ADDRESS. That's just Sparc and Sparc platforms don't use OF
graph.

> +
> +       for_each_child_of_node_scoped(node, child) {
> +               of_property_read_u32(child, "reg", &this_id);
> +               if ((!prev || (this_id > prev_id)) && this_id < next_id) =
{
> +                       next =3D child;
> +                       next_id =3D this_id;
> +               }
> +       }

The loop just did a put on next/child, so it can be freed here before
you take the lock and you have a UAF. You need to use return_ptr()
since it outlives the loop.

> +
> +       raw_spin_lock_irqsave(&devtree_lock, flags);

And this lock is not needed.

> +       of_node_get(next);

Nor this get since the loop did a get already.

> +       of_node_put(prev);
> +       raw_spin_unlock_irqrestore(&devtree_lock, flags);
> +       return next;
> +}
> +EXPORT_SYMBOL(of_get_next_child_by_id);

Rob

