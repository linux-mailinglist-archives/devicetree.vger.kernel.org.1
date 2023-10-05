Return-Path: <devicetree+bounces-6314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A86747BAB9A
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 22:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E6A52B20585
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 20:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4648938FAC;
	Thu,  5 Oct 2023 20:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF3A37165
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 20:46:46 +0000 (UTC)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8302B93;
	Thu,  5 Oct 2023 13:46:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 3C9B06340DEC;
	Thu,  5 Oct 2023 22:46:42 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id pxjMnQh4blOb; Thu,  5 Oct 2023 22:46:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id BEEE46340DF3;
	Thu,  5 Oct 2023 22:46:41 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 4Jkbwh50XZ7F; Thu,  5 Oct 2023 22:46:41 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id 895696340DEC;
	Thu,  5 Oct 2023 22:46:41 +0200 (CEST)
Date: Thu, 5 Oct 2023 22:46:41 +0200 (CEST)
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
Message-ID: <1863543078.49676.1696538801349.JavaMail.zimbra@nod.at>
In-Reply-To: <226381209.31782.1696362327615.JavaMail.zimbra@nod.at>
References: <cover.1691717480.git.daniel@makrotopia.org> <df8cfc16a0047c1041a8f8d0069c6312bb83da0d.1691717480.git.daniel@makrotopia.org> <226381209.31782.1696362327615.JavaMail.zimbra@nod.at>
Subject: Re: [PATCH v4 5/8] mtd: ubi: attach MTD partition from device-tree
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
Thread-Topic: attach MTD partition from device-tree
Thread-Index: kqr0xqm+jR+lBv0FwDpbk9UYfLM3MSkaKwBk
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,T_SPF_PERMERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

----- Urspr=C3=BCngliche Mail -----
> Von: "richard" <richard@nod.at>
> ----- Urspr=C3=BCngliche Mail -----
>> diff --git a/drivers/mtd/ubi/block.c b/drivers/mtd/ubi/block.c
>> index e0618bbde3613..99b5f502c9dbc 100644
>> --- a/drivers/mtd/ubi/block.c
>> +++ b/drivers/mtd/ubi/block.c
>> @@ -470,7 +470,7 @@ int ubiblock_remove(struct ubi_volume_info *vi, bool=
 force)
>> =09}
>>=20
>> =09/* Found a device, let's lock it so we can check if it's busy */
>> -=09mutex_lock(&dev->dev_mutex);
>> +=09mutex_lock_nested(&dev->dev_mutex, SINGLE_DEPTH_NESTING);
>=20
> The usage of mutex_lock_nested() in this patch looks fishy.
> Can you please elaborate a bit more why all these mutexes can be taken tw=
ice?
> (Any why not more often).

I think I figured myself.
ubiblock_ops->open() and ->release() are both called with disk->open_mutex =
held.
ubiblock_open() and ubiblock_release() take dev->dev_mutex.
So, the locking order is open_mutex, followed by dev_mutex.

On the other hand, ubiblock_remove() is called via UBI notify.
It takes first dev_mutex and then calls del_gendisk() which will trigger ub=
iblock_ops->release()
under disk->open_mutex but takes dev_mutex again.
So, we this not only takes a lock twice but also in reverse order.
mutex_lock_nested() might silence lockdep but I'm not sure whether this is =
safe at all.

Thanks,
//richard

