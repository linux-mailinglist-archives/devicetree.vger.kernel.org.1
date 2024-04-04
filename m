Return-Path: <devicetree+bounces-56423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B338991F1
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 01:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C47131C20C32
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 23:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E104413C3CA;
	Thu,  4 Apr 2024 23:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1NeFl5Sx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE013A41A
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 23:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712272559; cv=none; b=fVUcW+Px6xP5wyYdYViioeaiUrVtdhu76cp43Q8AqGGnohKHK8WLoOIaDqbff2vKtVPedmUBTHllphyTR/v/5oYMndImcWCMwQteOPEdOb9b96vwJemzvhJrx99dewFHlQWbzIqkHT3iz2oB2jPTqEVrppKaOYUzH/N55QO3MUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712272559; c=relaxed/simple;
	bh=q7Rmob6dx38Tia7j2342w5w2ow7VgzMTr/CsK1WSk6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FAcn+qkaGF4uBm4Sc0co72clhXMn1sNNt8vhLJr4lmp7EhEqUEc8+W5hTtdGIPaag0PZVvhU7TotPzJyzrdSQ1Wd9rJ7uaNXP8UYjVAJp9Ac5ekx9IZfSFRt5yjEDT1rF2VydVRSKy+LP0aLvlyu9cvN2PlhrEI6H9kigfsRe4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1NeFl5Sx; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-430d3fcc511so67911cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 16:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712272557; x=1712877357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sKddqz6smnqmh9exl0udqVZxjHW77Ue+RMv6tUW1JN4=;
        b=1NeFl5SxPNDinhtQ6Ty8eE0Sn8E2NmdKOaLffWEUVMq4W79yRCg7dKYtXawDEW7Wvc
         6UoYAqmwItyLvtb1H/LxB2T7irJYxF5bDq/qVzHmZMzgZbFU2eH7+JUbvVfwH68MvQsO
         cipqhy9LcyHPKvd52aAHxn76IFN1dpX6aSoqhthz2WyyN2At1LUUeLvgbZPW4kMivd5p
         Ojg7ahmnmRbGFQiZDWE+3HtXVx+Mum+AqcR3NQD57w87q052McPEO23CC5kJ6RuQcfht
         mB/FrN90GNA8dkMw57Qbbh3UtA3D1rySh532E5n3fg2gJAQI34LP4O2KwRnOEj2m/38O
         WbQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712272557; x=1712877357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sKddqz6smnqmh9exl0udqVZxjHW77Ue+RMv6tUW1JN4=;
        b=UGchjHFtRICmuTv6hWtzByYl+/NdEnq00/YktwG+I1ZzCQ6d4kq/EZ7eLGk/gCTr3z
         v3qCyimWEivqL8U0oRoYEM1UJR5OkpWD6Blvasyjwn4yQzvGM0mhwSi3Vc4ZSKR/95Zj
         nZ4PRfBvs4rQU7HZMs5fChzNN/3aL36Aqx0CooaRBEW5Xg9p92/Diqw9vYA1DHdLijet
         KDURyb4SrBQ2WxCSMCiBfZg2CuWA0ZtCTwekPOv9eUaVR8re5t71uV4a/PdKkztfKQb0
         EqzyihOLOa8kH5vMWB4B/e3lAPc3Pw2AAXQHiCylbNXarhIbBfm7gVgfH4VYcLrTWp62
         rmcA==
X-Forwarded-Encrypted: i=1; AJvYcCWXMsdF+VNuPKvs9EQyowHeUblfirlcxFkepZ6JtMGDF7MI9cV5SEZJwJY0J7bFs+fB6blloynridCk7cZPkogAZVZnl5tpoZVw9g==
X-Gm-Message-State: AOJu0YwlrKulf1bQHoUsDQn5my6pNzFmcpXVTlWZ9cLO39d+3z72dqcl
	aTMXXur77yVfq2mCOBiv29Ep00LxhDn6a9+v1QHsxrMHACGpRjgyU5RCXU68vzUPqfjFPkGSzvD
	F3Blv/c/wji3JaDV+aPmhUVyUJgu4U2u4HthhZZp3PzWPwHWZgNkC
X-Google-Smtp-Source: AGHT+IFNa111IpFNNKGnkOs93VqeaMLso4SJe3rpUiVsiWHi4ul+ZGr3gl8Qzih4k80HP8F/ZJAFbIFEx3TNhryu9Gc=
X-Received: by 2002:a05:622a:1b19:b0:434:36fe:6d3 with SMTP id
 bb25-20020a05622a1b1900b0043436fe06d3mr354666qtb.0.1712272556757; Thu, 04 Apr
 2024 16:15:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404-dt-cleanup-free-v1-0-c60e6cba8da9@kernel.org> <20240404-dt-cleanup-free-v1-2-c60e6cba8da9@kernel.org>
In-Reply-To: <20240404-dt-cleanup-free-v1-2-c60e6cba8da9@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 4 Apr 2024 16:15:20 -0700
Message-ID: <CAGETcx_H_vvK9y-51JTcz8F7GDThBwC+t=k2i6r4Nst3H6-TUg@mail.gmail.com>
Subject: Re: [PATCH 2/3] of: Use scope based kfree() cleanups
To: Rob Herring <robh@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 4, 2024 at 7:15=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> Use the relatively new scope based kfree() cleanup to simplify error
> handling. Doing so reduces the chances of memory leaks and simplifies
> error paths by avoiding the need for goto statements.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/of/base.c     | 34 ++++++++--------------------------
>  drivers/of/dynamic.c  | 11 ++++-------
>  drivers/of/resolver.c | 35 +++++++++++++----------------------
>  3 files changed, 25 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 8856c67c466a..20603d3c9931 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -16,6 +16,7 @@
>
>  #define pr_fmt(fmt)    "OF: " fmt
>
> +#include <linux/cleanup.h>
>  #include <linux/console.h>
>  #include <linux/ctype.h>
>  #include <linux/cpu.h>
> @@ -1393,8 +1394,10 @@ int of_parse_phandle_with_args_map(const struct de=
vice_node *np,
>                                    const char *stem_name,
>                                    int index, struct of_phandle_args *out=
_args)
>  {
> -       char *cells_name, *map_name =3D NULL, *mask_name =3D NULL;
> -       char *pass_name =3D NULL;
> +       char *cells_name __free(kfree) =3D kasprintf(GFP_KERNEL, "#%s-cel=
ls", stem_name);
> +       char *map_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map", =
stem_name);
> +       char *mask_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-m=
ask", stem_name);
> +       char *pass_name __free(kfree) =3D kasprintf(GFP_KERNEL, "%s-map-p=
ass-thru", stem_name);

With the scoped stuff, do these function calls need to be in the same
line we are defining these variables? If not, I'd rather that the
calls remain where they were. It feels like a lote to visually parse
and take in from a readability perspective.

>         struct device_node *cur, *new =3D NULL;
>         const __be32 *map, *mask, *pass;
>         static const __be32 dummy_mask[] =3D { [0 ... MAX_PHANDLE_ARGS] =
=3D cpu_to_be32(~0) };
> @@ -1407,27 +1410,13 @@ int of_parse_phandle_with_args_map(const struct d=
evice_node *np,
>         if (index < 0)
>                 return -EINVAL;
>
> -       cells_name =3D kasprintf(GFP_KERNEL, "#%s-cells", stem_name);
> -       if (!cells_name)
> +       if (!cells_name || !map_name || !mask_name || !pass_name)
>                 return -ENOMEM;
>
> -       ret =3D -ENOMEM;
> -       map_name =3D kasprintf(GFP_KERNEL, "%s-map", stem_name);
> -       if (!map_name)
> -               goto free;
> -
> -       mask_name =3D kasprintf(GFP_KERNEL, "%s-map-mask", stem_name);
> -       if (!mask_name)
> -               goto free;
> -
> -       pass_name =3D kasprintf(GFP_KERNEL, "%s-map-pass-thru", stem_name=
);
> -       if (!pass_name)
> -               goto free;
> -
>         ret =3D __of_parse_phandle_with_args(np, list_name, cells_name, -=
1, index,
>                                            out_args);
>         if (ret)
> -               goto free;
> +               return ret;
>
>         /* Get the #<list>-cells property */
>         cur =3D out_args->np;
> @@ -1444,8 +1433,7 @@ int of_parse_phandle_with_args_map(const struct dev=
ice_node *np,
>                 /* Get the <list>-map property */
>                 map =3D of_get_property(cur, map_name, &map_len);
>                 if (!map) {
> -                       ret =3D 0;
> -                       goto free;
> +                       return 0;
>                 }
>                 map_len /=3D sizeof(u32);
>
> @@ -1521,12 +1509,6 @@ int of_parse_phandle_with_args_map(const struct de=
vice_node *np,
>  put:
>         of_node_put(cur);
>         of_node_put(new);
> -free:
> -       kfree(mask_name);
> -       kfree(map_name);
> -       kfree(cells_name);
> -       kfree(pass_name);
> -
>         return ret;
>  }
>  EXPORT_SYMBOL(of_parse_phandle_with_args_map);
> diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
> index af7c57a7a25d..43f4e2c93bd2 100644
> --- a/drivers/of/dynamic.c
> +++ b/drivers/of/dynamic.c
> @@ -9,6 +9,7 @@
>
>  #define pr_fmt(fmt)    "OF: " fmt
>
> +#include <linux/cleanup.h>
>  #include <linux/of.h>
>  #include <linux/spinlock.h>
>  #include <linux/slab.h>
> @@ -1019,10 +1020,9 @@ int of_changeset_add_prop_u32_array(struct of_chan=
geset *ocs,
>                                     const u32 *array, size_t sz)
>  {
>         struct property prop;
> -       __be32 *val;
> -       int i, ret;
> +       __be32 *val __free(kfree) =3D kcalloc(sz, sizeof(__be32), GFP_KER=
NEL);
> +       int i;
>
> -       val =3D kcalloc(sz, sizeof(__be32), GFP_KERNEL);
>         if (!val)
>                 return -ENOMEM;
>
> @@ -1032,9 +1032,6 @@ int of_changeset_add_prop_u32_array(struct of_chang=
eset *ocs,
>         prop.length =3D sizeof(u32) * sz;
>         prop.value =3D (void *)val;
>
> -       ret =3D of_changeset_add_prop_helper(ocs, np, &prop);
> -       kfree(val);
> -
> -       return ret;
> +       return of_changeset_add_prop_helper(ocs, np, &prop);
>  }
>  EXPORT_SYMBOL_GPL(of_changeset_add_prop_u32_array);
> diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
> index b278ab4338ce..2780928764a4 100644
> --- a/drivers/of/resolver.c
> +++ b/drivers/of/resolver.c
> @@ -8,6 +8,7 @@
>
>  #define pr_fmt(fmt)    "OF: resolver: " fmt
>
> +#include <linux/cleanup.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -74,11 +75,11 @@ static int update_usages_of_a_phandle_reference(struc=
t device_node *overlay,
>  {
>         struct device_node *refnode;
>         struct property *prop;
> -       char *value, *cur, *end, *node_path, *prop_name, *s;
> +       char *value __free(kfree) =3D kmemdup(prop_fixup->value, prop_fix=
up->length, GFP_KERNEL);
> +       char *cur, *end, *node_path, *prop_name, *s;
>         int offset, len;
>         int err =3D 0;
>
> -       value =3D kmemdup(prop_fixup->value, prop_fixup->length, GFP_KERN=
EL);
>         if (!value)
>                 return -ENOMEM;
>
> @@ -89,23 +90,19 @@ static int update_usages_of_a_phandle_reference(struc=
t device_node *overlay,
>
>                 node_path =3D cur;
>                 s =3D strchr(cur, ':');
> -               if (!s) {
> -                       err =3D -EINVAL;
> -                       goto err_fail;
> -               }
> +               if (!s)
> +                       return -EINVAL;
>                 *s++ =3D '\0';
>
>                 prop_name =3D s;
>                 s =3D strchr(s, ':');
> -               if (!s) {
> -                       err =3D -EINVAL;
> -                       goto err_fail;
> -               }
> +               if (!s)
> +                       return -EINVAL;
>                 *s++ =3D '\0';
>
>                 err =3D kstrtoint(s, 10, &offset);
>                 if (err)
> -                       goto err_fail;
> +                       return err;
>
>                 refnode =3D __of_find_node_by_full_path(of_node_get(overl=
ay), node_path);
>                 if (!refnode)
> @@ -117,22 +114,16 @@ static int update_usages_of_a_phandle_reference(str=
uct device_node *overlay,
>                 }
>                 of_node_put(refnode);
>
> -               if (!prop) {
> -                       err =3D -ENOENT;
> -                       goto err_fail;
> -               }
> +               if (!prop)
> +                       return -ENOENT;
>
> -               if (offset < 0 || offset + sizeof(__be32) > prop->length)=
 {
> -                       err =3D -EINVAL;
> -                       goto err_fail;
> -               }
> +               if (offset < 0 || offset + sizeof(__be32) > prop->length)
> +                       return -EINVAL;
>
>                 *(__be32 *)(prop->value + offset) =3D cpu_to_be32(phandle=
);
>         }
>
> -err_fail:
> -       kfree(value);
> -       return err;
> +       return 0;
>  }
>
>  /* compare nodes taking into account that 'name' strips out the @ part *=
/

Reviewed-by: Saravana Kannan <saravanak@google.com>

-Saravana

