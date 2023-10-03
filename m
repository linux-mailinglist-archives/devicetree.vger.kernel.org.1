Return-Path: <devicetree+bounces-5648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C6F7B71F5
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 21:45:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 37B87B207D0
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 19:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEE63CD0A;
	Tue,  3 Oct 2023 19:45:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6913EDDC2
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 19:45:32 +0000 (UTC)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C37E9E;
	Tue,  3 Oct 2023 12:45:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 4C38C6340DF3;
	Tue,  3 Oct 2023 21:45:28 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 3ulYD1wGVKZI; Tue,  3 Oct 2023 21:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id EA3E26340E0F;
	Tue,  3 Oct 2023 21:45:27 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id mJfZ--EnOnn8; Tue,  3 Oct 2023 21:45:27 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id C40526340DF3;
	Tue,  3 Oct 2023 21:45:27 +0200 (CEST)
Date: Tue, 3 Oct 2023 21:45:27 +0200 (CEST)
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
Message-ID: <226381209.31782.1696362327615.JavaMail.zimbra@nod.at>
In-Reply-To: <df8cfc16a0047c1041a8f8d0069c6312bb83da0d.1691717480.git.daniel@makrotopia.org>
References: <cover.1691717480.git.daniel@makrotopia.org> <df8cfc16a0047c1041a8f8d0069c6312bb83da0d.1691717480.git.daniel@makrotopia.org>
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
Thread-Index: kqr0xqm+jR+lBv0FwDpbk9UYfLM3MQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

----- Urspr=C3=BCngliche Mail -----
> diff --git a/drivers/mtd/ubi/block.c b/drivers/mtd/ubi/block.c
> index e0618bbde3613..99b5f502c9dbc 100644
> --- a/drivers/mtd/ubi/block.c
> +++ b/drivers/mtd/ubi/block.c
> @@ -470,7 +470,7 @@ int ubiblock_remove(struct ubi_volume_info *vi, bool =
force)
> =09}
>=20
> =09/* Found a device, let's lock it so we can check if it's busy */
> -=09mutex_lock(&dev->dev_mutex);
> +=09mutex_lock_nested(&dev->dev_mutex, SINGLE_DEPTH_NESTING);

The usage of mutex_lock_nested() in this patch looks fishy.
Can you please elaborate a bit more why all these mutexes can be taken twic=
e?
(Any why not more often).

Thanks,
//richard

