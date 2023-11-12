Return-Path: <devicetree+bounces-15218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F344A7E9158
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 16:10:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76160B20805
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 15:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C1A612B97;
	Sun, 12 Nov 2023 15:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858958482
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 15:10:11 +0000 (UTC)
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A8DD54;
	Sun, 12 Nov 2023 07:10:06 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r2C5t-0006fq-0O;
	Sun, 12 Nov 2023 15:09:49 +0000
Date: Sun, 12 Nov 2023 15:09:42 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Richard Weinberger <richard@nod.at>
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-mtd <linux-mtd@lists.infradead.org>,
	devicetree <devicetree@vger.kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 5/8] mtd: ubi: attach MTD partition from device-tree
Message-ID: <ZVDqtn1uuWrSLXNq@makrotopia.org>
References: <cover.1691717480.git.daniel@makrotopia.org>
 <df8cfc16a0047c1041a8f8d0069c6312bb83da0d.1691717480.git.daniel@makrotopia.org>
 <226381209.31782.1696362327615.JavaMail.zimbra@nod.at>
 <1863543078.49676.1696538801349.JavaMail.zimbra@nod.at>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1863543078.49676.1696538801349.JavaMail.zimbra@nod.at>

Hi Richard,

thank you for the review and sorry for my late reply to it.

On Thu, Oct 05, 2023 at 10:46:41PM +0200, Richard Weinberger wrote:
> ----- Ursprüngliche Mail -----
> > Von: "richard" <richard@nod.at>
> > ----- Ursprüngliche Mail -----
> >> diff --git a/drivers/mtd/ubi/block.c b/drivers/mtd/ubi/block.c
> >> index e0618bbde3613..99b5f502c9dbc 100644
> >> --- a/drivers/mtd/ubi/block.c
> >> +++ b/drivers/mtd/ubi/block.c
> >> @@ -470,7 +470,7 @@ int ubiblock_remove(struct ubi_volume_info *vi, bool force)
> >> 	}
> >> 
> >> 	/* Found a device, let's lock it so we can check if it's busy */
> >> -	mutex_lock(&dev->dev_mutex);
> >> +	mutex_lock_nested(&dev->dev_mutex, SINGLE_DEPTH_NESTING);
> > 
> > The usage of mutex_lock_nested() in this patch looks fishy.
> > Can you please elaborate a bit more why all these mutexes can be taken twice?
> > (Any why not more often).
> 
> I think I figured myself.
> ubiblock_ops->open() and ->release() are both called with disk->open_mutex held.
> ubiblock_open() and ubiblock_release() take dev->dev_mutex.
> So, the locking order is open_mutex, followed by dev_mutex.
> 
> On the other hand, ubiblock_remove() is called via UBI notify.
> It takes first dev_mutex and then calls del_gendisk() which will trigger ubiblock_ops->release()
> under disk->open_mutex but takes dev_mutex again.
> So, we this not only takes a lock twice but also in reverse order.
> mutex_lock_nested() might silence lockdep but I'm not sure whether this is safe at all.

I agree that the locking here is not trivial.
Taking the same lock twice is that SINGLE_DEPTH_NESTING is intended
for and resolves running into a deadlock otherwise.
I'm not sure if the changed order of acquiring dev_mutex and open_mutex
present a problem.

The detach-by-notification case is anyway quite exotic and I only see
quite synthetic paths to actually get there (such as hotplug removal
of the SPI controller providing access to SPI-NAND flash, which is how
I was testing this...). To make things easier and more aligned with
the original goal (being to attach a UBI device from DT, early enough
to allow its use as NVMEM provider by other drivers) I suggest to for
now only handle attachment by MTD notification (if linux,ubi compatible
is present in DT) and keep handling detachment the way it is now.

This will (just like it is already now) result in "zombie" UBI devices
being present after their MTD device has already been removed. Accessing
them creates loud kernel warnings at best.

Let me know if keeing detachment the way it is and only implementing
attaching from MTD notification and device tree compatible would be ok
with you.

Thank you!


Best regards


Daniel

