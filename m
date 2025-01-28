Return-Path: <devicetree+bounces-141399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EC0A209ED
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B90861885EEA
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1F019D8A7;
	Tue, 28 Jan 2025 11:48:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2ED119CC11;
	Tue, 28 Jan 2025 11:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738064903; cv=none; b=tUXpKvzNUFM/ZfcE/ZnmLyVltga/ZrUrGWQHiz02H/5hQcIC0xxzMM2MC2/EGODd0fjvsouL+mr0Lzc0IhxqYpqWKOd3PAsJP9KhIFEEqR8oH8kXWfD5wr13UJKAGBR/Lwr/PMiTXCrXy9CTI8qK0SH2KGmv4HI2E4Kab+4D5UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738064903; c=relaxed/simple;
	bh=qz24RbaqsVBJxJ4yT4PUajzIJGaIR/iROS/05qYJpdk=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dfcpoL6qNSzNmVKGzag+1BISj5n9YS2uGlzb1hbLuUJP90bJT5rhc9Ey83DroytHmV2bTe/4ya9oDgBhzQAnUy71MkBIJ1UXL2NtzedX72x4YjCl+gizYOUXQrbFPHG+NVfE1Sm4ZzHkNnP/DZAEbwH0PhHMlqO2B1f2cth2hjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Yj3QZ3SqNz6M4HK;
	Tue, 28 Jan 2025 19:46:14 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 60B9D140157;
	Tue, 28 Jan 2025 19:48:18 +0800 (CST)
Received: from localhost (10.48.150.41) by frapeml500003.china.huawei.com
 (7.182.85.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 28 Jan
 2025 12:48:17 +0100
Date: Tue, 28 Jan 2025 11:48:11 +0000
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: Rob Herring <robh@kernel.org>
CC: <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <jonathan.cameron@huawei.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH v1 1/1] base/of/cacheinfo: support l1 entry in dt
Message-ID: <20250128114811.00007685.alireza.sanaee@huawei.com>
In-Reply-To: <CAL_JsqKFjQeaoGn5PRn1=P49mag-Kyik7EwtsOU8fcdvYhPcOA@mail.gmail.com>
References: <20250124152008.313-1-alireza.sanaee@huawei.com>
	<20250124152008.313-2-alireza.sanaee@huawei.com>
	<CAL_JsqKFjQeaoGn5PRn1=P49mag-Kyik7EwtsOU8fcdvYhPcOA@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 frapeml500003.china.huawei.com (7.182.85.28)

On Mon, 27 Jan 2025 10:24:13 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, Jan 24, 2025 at 9:20=E2=80=AFAM Alireza Sanaee
> <alireza.sanaee@huawei.com> wrote:
> >
> > This commit simply assumes that CPU node entries may point to a
> > cache node that basically act as a l1-cache and there are some CPU
> > nodes without describing any caches but a next-level-cache property
> > that points to l1-cache. =20
>=20
> This commit message needs some work. Read documentation on writing
> commit messages.

Hi Rob,

Thanks for the feedback.

I am going to update this text to give more background.

>=20
> Why/when does describing L1 cache in the cpu nodes not work? That is
> the assumption in the bindings. If we're changing that, there may need
> to be a binding/spec change.

Yes, I will have to send a patch regarding the spec too. Will send a
patch as well.

My plan is to first send a new revision and then send the updates
related to the spec, and then hopefully we can converge there.

Thanks,
Alireza
>=20
> >
> > Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> > ---
> >  drivers/base/cacheinfo.c | 54
> > +++++++++++++++++++++++++++------------- 1 file changed, 37
> > insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
> > index cf0d455209d7..d119228fc392 100644
> > --- a/drivers/base/cacheinfo.c
> > +++ b/drivers/base/cacheinfo.c
> > @@ -83,7 +83,31 @@ bool last_level_cache_is_shared(unsigned int
> > cpu_x, unsigned int cpu_y)
> >
> >  #ifdef CONFIG_OF
> >
> > -static bool of_check_cache_nodes(struct device_node *np);
> > +static bool of_check_cache_node(struct device_node *np) {
> > +       if (of_property_present(np, "cache-size")   ||
> > +           of_property_present(np, "i-cache-size") ||
> > +           of_property_present(np, "d-cache-size") ||
> > +           of_property_present(np, "cache-unified"))
> > +               return true;
> > +       return false;
> > +}
> > +
> > +static bool of_check_cache_nodes(struct device_node *np)
> > +{
> > +       if (of_property_present(np, "cache-size")   ||
> > +           of_property_present(np, "i-cache-size") ||
> > +           of_property_present(np, "d-cache-size") ||
> > +           of_property_present(np, "cache-unified")) =20
>=20
> This is the same code as of_check_cache_node(), use it.
>=20
> > +               return true;
> > +
> > +       struct device_node *next __free(device_node) =3D
> > of_find_next_cache_node(np);
> > +       if (next) {
> > +               return true;
> > +       }
> > +
> > +       return false;
> > +}
> > +
> >
> >  /* OF properties to query for a given cache type */
> >  struct cache_type_info {
> > @@ -218,11 +242,23 @@ static int cache_setup_of_node(unsigned int
> > cpu) while (index < cache_leaves(cpu)) {
> >                 this_leaf =3D per_cpu_cacheinfo_idx(cpu, index);
> >                 if (this_leaf->level !=3D 1) {
> > +                       /* Always go one level down for level > 1 */
> >                         struct device_node *prev
> > __free(device_node) =3D np; np =3D of_find_next_cache_node(np);
> >                         if (!np)
> >                                 break;
> > +               } else {
> > +                       /* For level 1, check compatibility */
> > +                       if (!of_device_is_compatible(np, "cache") &&
> > +                           !of_check_cache_node(np)) {
> > +                               struct device_node *prev
> > __free(device_node) =3D np;
> > +                               np =3D of_find_next_cache_node(np);
> > +                               if (!np)
> > +                                       break;
> > +                               continue; /* Skip to next index
> > without processing */
> > +                       }
> >                 }
> > +
> >                 cache_of_set_props(this_leaf, np);
> >                 this_leaf->fw_token =3D np;
> >                 index++;
> > @@ -234,22 +270,6 @@ static int cache_setup_of_node(unsigned int
> > cpu) return 0;
> >  }
> >
> > -static bool of_check_cache_nodes(struct device_node *np)
> > -{
> > -       if (of_property_present(np, "cache-size")   ||
> > -           of_property_present(np, "i-cache-size") ||
> > -           of_property_present(np, "d-cache-size") ||
> > -           of_property_present(np, "cache-unified"))
> > -               return true;
> > -
> > -       struct device_node *next __free(device_node) =3D
> > of_find_next_cache_node(np);
> > -       if (next) {
> > -               return true;
> > -       }
> > -
> > -       return false;
> > -}
> > -
> >  static int of_count_cache_leaves(struct device_node *np)
> >  {
> >         unsigned int leaves =3D 0;
> > --
> > 2.34.1
> > =20
>=20


