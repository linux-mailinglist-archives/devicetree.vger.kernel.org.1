Return-Path: <devicetree+bounces-5646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A28F7B713E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3C130281343
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AD23C6B7;
	Tue,  3 Oct 2023 18:46:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC653B797
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 18:46:07 +0000 (UTC)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77730A7;
	Tue,  3 Oct 2023 11:46:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 2158E6340E0E;
	Tue,  3 Oct 2023 20:46:04 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id YXf_5sB6IDQO; Tue,  3 Oct 2023 20:46:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 4184D6340DF3;
	Tue,  3 Oct 2023 20:46:03 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id zQ-FJz0PTVGL; Tue,  3 Oct 2023 20:46:03 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id 025336340DE8;
	Tue,  3 Oct 2023 20:46:02 +0200 (CEST)
Date: Tue, 3 Oct 2023 20:46:02 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <1135175877.31585.1696358762881.JavaMail.zimbra@nod.at>
In-Reply-To: <1bb74a9feeeb64dcd94024fbfa3a8259fcdac53d.1691717480.git.daniel@makrotopia.org>
References: <cover.1691717480.git.daniel@makrotopia.org> <1bb74a9feeeb64dcd94024fbfa3a8259fcdac53d.1691717480.git.daniel@makrotopia.org>
Subject: Re: [PATCH v4 4/8] mtd: ubi: block: use notifier to create ubiblock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF97 (Linux)/8.8.12_GA_3809)
Thread-Topic: block: use notifier to create ubiblock
Thread-Index: pcyMIJkQgdcxJxlQRVjxanFXVjGyiQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

----- Urspr=C3=BCngliche Mail -----
> Von: "Daniel Golle" <daniel@makrotopia.org>
> An: "Randy Dunlap" <rdunlap@infradead.org>, "Miquel Raynal" <miquel.rayna=
l@bootlin.com>, "richard" <richard@nod.at>,
> "Vignesh Raghavendra" <vigneshr@ti.com>, "Rob Herring" <robh+dt@kernel.or=
g>, "Krzysztof Kozlowski"
> <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>=
, "Daniel Golle" <daniel@makrotopia.org>,
> "linux-mtd" <linux-mtd@lists.infradead.org>, "devicetree" <devicetree@vge=
r.kernel.org>, "linux-kernel"
> <linux-kernel@vger.kernel.org>
> Gesendet: Freitag, 11. August 2023 03:37:31
> Betreff: [PATCH v4 4/8] mtd: ubi: block: use notifier to create ubiblock

> Use UBI_VOLUME_ADDED notification to create ubiblock device specified
> on kernel cmdline or module parameter.
> This makes thing more simple and has the advantage that ubiblock devices

*things

> on volumes which are not present at the time the ubi module is probed
> will still be created.
>=20
> Suggested-by: Zhihao Cheng <chengzhihao1@huawei.com>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> drivers/mtd/ubi/block.c | 152 ++++++++++++++++++++++------------------
> 1 file changed, 84 insertions(+), 68 deletions(-)
>=20
> diff --git a/drivers/mtd/ubi/block.c b/drivers/mtd/ubi/block.c
> index 69fa6fecb8494..e0618bbde3613 100644
> --- a/drivers/mtd/ubi/block.c
> +++ b/drivers/mtd/ubi/block.c
> @@ -33,6 +33,7 @@
> #include <linux/kernel.h>
> #include <linux/list.h>
> #include <linux/mutex.h>
> +#include <linux/namei.h>
> #include <linux/slab.h>
> #include <linux/mtd/ubi.h>
> #include <linux/blkdev.h>
> @@ -65,10 +66,10 @@ struct ubiblock_pdu {
> };
>=20
> /* Numbers of elements set in the @ubiblock_param array */
> -static int ubiblock_devs __initdata;
> +static int ubiblock_devs;
>=20
> /* MTD devices specification parameters */
> -static struct ubiblock_param ubiblock_param[UBIBLOCK_MAX_DEVICES] __init=
data;
> +static struct ubiblock_param ubiblock_param[UBIBLOCK_MAX_DEVICES];
>=20
> struct ubiblock {
> =09struct ubi_volume_desc *desc;
> @@ -532,6 +533,85 @@ static int ubiblock_resize(struct ubi_volume_info *v=
i)
> =09return 0;
> }
>=20
> +static bool
> +match_volume_desc(struct ubi_volume_info *vi, const char *name, int ubi_=
num,
> int vol_id)
> +{
> +=09int err, len;
> +=09struct path path;
> +=09struct kstat stat;
> +
> +=09if (ubi_num =3D=3D -1) {
> +=09=09/* No ubi num, name must be a vol device path */
> +=09=09err =3D kern_path(name, LOOKUP_FOLLOW, &path);
> +=09=09if (err)
> +=09=09=09return false;
> +
> +=09=09err =3D vfs_getattr(&path, &stat, STATX_TYPE, AT_STATX_SYNC_AS_STA=
T);
> +=09=09path_put(&path);
> +=09=09if (err)
> +=09=09=09return false;
> +
> +=09=09if (!S_ISCHR(stat.mode))
> +=09=09=09return false;
> +
> +=09=09if (vi->ubi_num !=3D ubi_major2num(MAJOR(stat.rdev)))
> +=09=09=09return false;
> +
> +=09=09if (vi->vol_id !=3D MINOR(stat.rdev) - 1)
> +=09=09=09return false;
> +

This is more or less an open coded ubi_open_volume_path().
Please either split or adopt ubi_open_volume_path() to fit your use case.

> +=09=09return true;
> +=09}
> +
> +=09if (vol_id =3D=3D -1) {
> +=09=09if (vi->ubi_num !=3D ubi_num)
> +=09=09=09return false;
> +
> +=09=09len =3D strnlen(name, UBI_VOL_NAME_MAX + 1);
> +=09=09if (len < 1 || vi->name_len !=3D len)
> +=09=09=09return false;
> +
> +=09=09if (strcmp(name, vi->name))
> +=09=09=09return false;
> +
> +=09=09return true;
> +=09}

Same for ubi_open_volume_nm().

Thanks,
//richard

