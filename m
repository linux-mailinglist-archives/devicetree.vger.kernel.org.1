Return-Path: <devicetree+bounces-5645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5817B7099
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:14:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BBFC11C2033D
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B9B3C687;
	Tue,  3 Oct 2023 18:14:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631413C682
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 18:14:41 +0000 (UTC)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B1FB83;
	Tue,  3 Oct 2023 11:14:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 864C16340E0E;
	Tue,  3 Oct 2023 20:14:37 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id QeJ_hbG7TRXa; Tue,  3 Oct 2023 20:14:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 899A36340DF3;
	Tue,  3 Oct 2023 20:14:36 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id MM3kCFtSHPOQ; Tue,  3 Oct 2023 20:14:36 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id 5FCBC6340DE8;
	Tue,  3 Oct 2023 20:14:36 +0200 (CEST)
Date: Tue, 3 Oct 2023 20:14:36 +0200 (CEST)
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
Message-ID: <1553084515.31405.1696356876189.JavaMail.zimbra@nod.at>
In-Reply-To: <bac56760e1abec46e1ca5582fc30cbca1f42af9d.1691717480.git.daniel@makrotopia.org>
References: <cover.1691717480.git.daniel@makrotopia.org> <bac56760e1abec46e1ca5582fc30cbca1f42af9d.1691717480.git.daniel@makrotopia.org>
Subject: Re: [PATCH v4 3/8] mtd: ubi: block: don't return on error when
 removing
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
Thread-Topic: block: don't return on error when removing
Thread-Index: mEjhakoF9gHQlvYZWxhJOUfsm127PA==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,T_SPF_PERMERROR autolearn=ham
	autolearn_force=no version=3.4.6
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
> Gesendet: Freitag, 11. August 2023 03:37:12
> Betreff: [PATCH v4 3/8] mtd: ubi: block: don't return on error when remov=
ing

> There is no point on returning the error from ubiblock_remove in case
> it is being called due to a volume removal event -- the volume is gone,
> we should destroy and remove the ubiblock device no matter what.
>=20
> Introduce new boolean parameter 'force' to tell ubiblock_remove to go
> on even in case the ubiblock device is still busy. Use that new option
> when calling ubiblock_remove due to a UBI_VOLUME_REMOVED event.
>=20
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> drivers/mtd/ubi/block.c | 6 +++---
> drivers/mtd/ubi/cdev.c  | 2 +-
> drivers/mtd/ubi/ubi.h   | 4 ++--
> 3 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/mtd/ubi/block.c b/drivers/mtd/ubi/block.c
> index 437c5b83ffe51..69fa6fecb8494 100644
> --- a/drivers/mtd/ubi/block.c
> +++ b/drivers/mtd/ubi/block.c
> @@ -456,7 +456,7 @@ static void ubiblock_cleanup(struct ubiblock *dev)
> =09idr_remove(&ubiblock_minor_idr, dev->gd->first_minor);
> }
>=20
> -int ubiblock_remove(struct ubi_volume_info *vi)
> +int ubiblock_remove(struct ubi_volume_info *vi, bool force)
> {
> =09struct ubiblock *dev;
> =09int ret;
> @@ -470,7 +470,7 @@ int ubiblock_remove(struct ubi_volume_info *vi)
>=20
> =09/* Found a device, let's lock it so we can check if it's busy */
> =09mutex_lock(&dev->dev_mutex);
> -=09if (dev->refcnt > 0) {
> +=09if (dev->refcnt > 0 && !force) {
> =09=09ret =3D -EBUSY;
> =09=09goto out_unlock_dev;

Is it really safe to destroy the blk queue (via ubiblock_cleanup()) if refc=
nt is > 0?

Thanks,
//richard

