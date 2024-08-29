Return-Path: <devicetree+bounces-98198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C296523F
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 23:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E00BB224F2
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 21:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713131BA286;
	Thu, 29 Aug 2024 21:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC9013Ie"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0E418950B
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 21:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724967898; cv=none; b=FjrfG6ZKK9D2LKFuOV7WX9pT53VFnI4AC5o0pxRFd+FndUC33CG1OEKB800pqWkwu4BGp9wTpvIcrCX3FjUTv8PiF7eMKz3dhAVmYr3vrlMOkaeyia58/E8cRCxutu+6TRn/FTwRR4j+/hgZZF2W7uaZc2x/G0E9OZ8heipcONc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724967898; c=relaxed/simple;
	bh=gR3aTQUhX3DGrBik7V2cs/AKej3YW9JWkJSELKpDwIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=psbq8w/kA4+3PwsatRJWXH82aPdsGBGSnCDKKk6HZySuB+ETGDVUU4Yrl+7pX7sXG4u8XjCsWL3jJaQNWd5pEyk4MUIfGRQJwp3bZ1/iYlpbZ7KNuGhbP5SA95K9iIPijKTbVtG8cdpjZ8cUMp0ZourUugJB9c+JbsWtkfzJpUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC9013Ie; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D53EBC4CEC1
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 21:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724967897;
	bh=gR3aTQUhX3DGrBik7V2cs/AKej3YW9JWkJSELKpDwIk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=NC9013Ie31STldE59gGOR1Z1zg5Q4z+TyZSdqdwqUnvZg9fRBTUINbexvuTbLVxcY
	 RLrwPLxYR5m8ZKcyYaNHcZ+KoPGS0qBlnWio+fmI/KjH3Zro4qpbP6PARpiotU1pGL
	 rUUwu5atsKG4Sp0+aykpBK6f44rRqjjq9w99a/nKdwQkfGbbsd9KO+L7wzN87uhVmz
	 QhHEKklwFDmrDBZRMDZDr6dfroKFymOqlTJVKBHUleCOYbBP37VEui4WQrr2VdHD+4
	 3DoSd7rjmyaOJSTIT6biwj2frcPv70Db2JnFeRZJSROqk+AS1B7aAwVHxhajOvhE7I
	 WoVLhVdkoAa3w==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f4f2cda058so20240251fa.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 14:44:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXIPPR6UewQZwkw8DKEnakDGvN/DBCEQcb6qr1aWSCO68Gpwn1W2B9b599HMp8Ldkq0H2lVSEQNmj0v@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa+ocGSvAOVxNGQFKC8Ua0A1i9AV+OOYay8dhZ4d40Hl3Vj4AB
	Vdl0wjPRp7emJp8Ha4i8fg6xlvGZoykqio7nxmBo16AlFvwHUsGpi3m97nL59z0V/YDy0ZuUg4h
	DMvsNYaM7l0Hr8pf4U9In9jeFwQ==
X-Google-Smtp-Source: AGHT+IGOL3ItKq7bq5va7Ys//QQ0v+szGbJcvEZ3WKdg5XphS5ydp9teuTTqggXkFgVvtp4FtOg8gGA4ZDzCCaxIOF0=
X-Received: by 2002:a05:6512:110b:b0:52e:fa08:f0f5 with SMTP id
 2adb3069b0e04-535462fe61fmr65713e87.13.1724967896185; Thu, 29 Aug 2024
 14:44:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <c546a19d-fb2d-4022-8528-8a0ae1736ba3@stanley.mountain>
In-Reply-To: <c546a19d-fb2d-4022-8528-8a0ae1736ba3@stanley.mountain>
From: Rob Herring <robh@kernel.org>
Date: Thu, 29 Aug 2024 16:44:43 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+8NGFqGgnoGoWV4BeAJ77Z8ctXZ5=OW6dM0omT3J9Zog@mail.gmail.com>
Message-ID: <CAL_Jsq+8NGFqGgnoGoWV4BeAJ77Z8ctXZ5=OW6dM0omT3J9Zog@mail.gmail.com>
Subject: Re: [bug report] of: unittest: treat missing of_root as error instead
 of fixing up
To: Dan Carpenter <dan.carpenter@linaro.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 2:22=E2=80=AFPM Dan Carpenter <dan.carpenter@linaro=
.org> wrote:
>
> Hello Frank Rowand,

Frank has retired... Stephen is who got this upstream.

> Commit d1eabd218ede ("of: unittest: treat missing of_root as error
> instead of fixing up") from Feb 16, 2024 (linux-next), leads to the
> following Smatch static checker warning:
>
>         drivers/of/unittest.c:1934 unittest_data_add()
>         warn: inconsistent returns '&of_overlay_phandle_mutex'.
>
> drivers/of/unittest.c
>     1857 static int __init unittest_data_add(void)
>     1858 {
>     1859         void *unittest_data;
>     1860         void *unittest_data_align;
>     1861         struct device_node *unittest_data_node =3D NULL, *np;
>     1862         /*
>     1863          * __dtbo_testcases_begin[] and __dtbo_testcases_end[] a=
re magically
>     1864          * created by cmd_dt_S_dtbo in scripts/Makefile.lib
>     1865          */
>     1866         extern uint8_t __dtbo_testcases_begin[];
>     1867         extern uint8_t __dtbo_testcases_end[];
>     1868         const int size =3D __dtbo_testcases_end - __dtbo_testcas=
es_begin;
>     1869         int rc;
>     1870         void *ret;
>     1871
>     1872         if (!size) {
>     1873                 pr_warn("%s: testcases is empty\n", __func__);
>     1874                 return -ENODATA;
>     1875         }
>     1876
>     1877         /* creating copy */
>     1878         unittest_data =3D kmalloc(size + FDT_ALIGN_SIZE, GFP_KER=
NEL);
>     1879         if (!unittest_data)
>     1880                 return -ENOMEM;
>     1881
>     1882         unittest_data_align =3D PTR_ALIGN(unittest_data, FDT_ALI=
GN_SIZE);
>
> We never save unittest_data anywhere so how is this freed on the success =
path?

We can't because the tree continues to be accessed. Also, if we run
the unittest, the kernel is tainted.

>     1883         memcpy(unittest_data_align, __dtbo_testcases_begin, size=
);
>     1884
>     1885         ret =3D of_fdt_unflatten_tree(unittest_data_align, NULL,=
 &unittest_data_node);
>     1886         if (!ret) {
>     1887                 pr_warn("%s: unflatten testcases tree failed\n",=
 __func__);
>     1888                 kfree(unittest_data);
>     1889                 return -ENODATA;
>     1890         }
>     1891         if (!unittest_data_node) {
>     1892                 pr_warn("%s: testcases tree is empty\n", __func_=
_);
>     1893                 kfree(unittest_data);
>     1894                 return -ENODATA;
>     1895         }
>     1896
>     1897         /*
>     1898          * This lock normally encloses of_resolve_phandles()
>     1899          */
>     1900         of_overlay_mutex_lock();
>                  ^^^^^^^^^^^^^^^^^^^^^^^^
>
>     1901
>     1902         rc =3D of_resolve_phandles(unittest_data_node);
>     1903         if (rc) {
>     1904                 pr_err("%s: Failed to resolve phandles (rc=3D%i)=
\n", __func__, rc);
>     1905                 of_overlay_mutex_unlock();
>
> kfree(unittest_data);?

Yes, we should.

>
>
>     1906                 return -EINVAL;
>     1907         }
>     1908
>     1909         /* attach the sub-tree to live tree */
>     1910         if (!of_root) {
>     1911                 pr_warn("%s: no live tree to attach sub-tree\n",=
 __func__);
>     1912                 kfree(unittest_data);
>
> This used to call of_overlay_mutex_unlock().  I think that was deleted
> accidentally.

Agreed. But as nothing is done for this condition any more, we could
either just drop it (of_root should never be NULL) or move the check
to the beginning of the function.

Rob

