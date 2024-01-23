Return-Path: <devicetree+bounces-33982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C61908382BA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 03:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 741B828DA53
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 02:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB4B5DF01;
	Tue, 23 Jan 2024 01:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="JYBdeS/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch [185.70.40.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461E25C8F6
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 01:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705974418; cv=none; b=LSykHNkWVcxm1sHw+BKIO6jyfvZAIX4g18D0GjRiZOj0A6HQTp/mDiC5bFxp/Ctm3l/OahHXNfVX9ig4GiBlWhCyiE/DT8DboI6zKn5R55Zp8DW8unQnFikp3aKjlv3fn1m5PWgq2VU2RilbwAo+pyGoKCkPGXAKVGYwBRTnvkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705974418; c=relaxed/simple;
	bh=QruZCZ0jpWbYJnsIBx+ekimfMz+FOy7dRzXSC/mnRvM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cozo3qwrva+eh910ivhYlcUapT/51EYGUq8cn3jEDt5KlWiOkIFYv3dND7KdC5pJiPtazWDElM8fstBV8EY/+K0NGbcEz5ZRTpC9wqBZ6yqnBvDJBKXmfpJaifvsEj8rBJVxwtslHqMa7t5b0gUK2Bz94HYdgrya6wIlEbM6X+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=JYBdeS/7; arc=none smtp.client-ip=185.70.40.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1705974413; x=1706233613;
	bh=IuTlLINJgaRw7B3N708S7h3v0HiOAtfm1OMnmzHUN50=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=JYBdeS/7qxzIJC0+6PiVAFOXhjyPOiiUuPrrE9l5qdNV1qW9G+nJIBi/H5pusUExW
	 jEhCC3EXSPFrGjBsfXHoPG19+8YeL7BYH85PIm0PxWE1AW58Hf3b0ULPRhSHc2Fq2i
	 nuq7W6Zmnc+5S9uj0FYj7IZej/dqnFMewI9bgdwaYcJYsvOkq/4kyZEk93Y12+RU3y
	 Oc+tzZsVBMaThH35Erhf6F/aAhSVd7sQ3JOkbQCKrD/Oyww/SESsVFNyGM+hKUNT86
	 XEiBkD6ljwzuVWAOyXPni4Rs/Y7awS1OC7YhPjZkaIAzg0pk7hRPfkaGKtaQQWK8yU
	 3JDnNtJezGi1g==
Date: Tue, 23 Jan 2024 01:46:40 +0000
To: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
From: Michael Pratt <mcpratt@pm.me>
Cc: Michael Pratt <mcpratt@pm.me>, saravanak@google.com, abel.vesa@linaro.org, alexander.stein@ew.tq-group.com, andriy.shevchenko@linux.intel.com, bigunclemax@gmail.com, brgl@bgdev.pl, colin.foster@in-advantage.com, djrscally@gmail.com, dmitry.baryshkov@linaro.org, festevam@gmail.com, fido_max@inbox.ru, frowand.list@gmail.com, geert@linux-m68k.org, heikki.krogerus@linux.intel.com, kernel@pengutronix.de, linus.walleij@linaro.org, linux@roeck-us.net, luca.weiss@fairphone.com, magnus.damm@gmail.com, martin.kepplinger@puri.sm, miquel.raynal@bootlin.com, rafal@milecki.pl, ansuelsmth@gmail.com, richard@nod.at, sakari.ailus@linux.intel.com, sudeep.holla@arm.com, tglx@linutronix.de, tony@atomide.com, vigneshr@ti.com, dianders@chromium.org, jpb@kernel.org, rafael@kernel.org
Subject: [PATCH v1 2/4] driver core: fw_devlink: Link to supplier ancestor if no device
Message-ID: <20240123014517.5787-3-mcpratt@pm.me>
In-Reply-To: <20240123014517.5787-1-mcpratt@pm.me>
References: <20240123014517.5787-1-mcpratt@pm.me>
Feedback-ID: 27397442:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Driver core currently supports linking to the next parent fwnode,
but is not yet handling cases where that parent
is also a firmware child node not representing a real device,
which can lead to an indefinite deferred probe in some cases.
In this case, the fwnode that should actually be linked to
is multiple ancestors up which presents a challenge where
it is unknown how many ancestors up the node that
represents the real probing device is. This makes the usage of
fwnode_get_next_parent_dev() insufficient because the real device's
fwnode may or may not be an ancestor of the next parent fwnode as well.

Introduce flag FWNODE_FLAG_PARENT_IS_DEV
in order to mark child firmware nodes of a device
as having a parent device that can probe.

Allow fwnode link creation to the original supplier fwnode's ancestors
when the original supplier fwnode and any fwnodes in between are flagged
as FWNODE_FLAG_NOT_DEVICE and/or FWNODE_FLAG_PARENT_IS_DEV
with a new function __fwnode_link_add_parents() which then creates
the fwnode link to a real device that provides the supplier's function.

This depends on other functions to label a supplier fwnode
as not a real device, which must be done before the fwnode links
are created, and if after that, relevant links to the supplier
would have to be deleted and have links recreated, otherwise,
the fwnode link would be dropped before the device link is attempted
or a fwnode link would not be able to become a device link at all,
because they were created before these fwnode flags can have any effect.

It also depends on the supplier device to actually probe first
in order to have the fwnode flags in place to know for certain
which fwnodes are non-probing child nodes
of the fwnode for the supplier device.

The use case of function __fw_devlink_pickup_dangling_consumers()
is designed so that the parameters are always a supplier fwnode
and one of it's parent fwnodes, so it is safer to assume and more specific
that the flag PARENT_IS_DEV should be added there, rather than
declaring the original supplier fwnode as NOT_DEVICE at that point.
Because this function is called when the real supplier device probes
and recursively calls itself for all child nodes of the device's fwnode,
set the new flag here in order to let it propagate down
to all descendant nodes, thereby providing the info needed later
in order to link to the proper fwnode representing the supplier device.

If a fwnode is flagged as FWNODE_FLAG_NOT_DEVICE
by the time a device link is to be made with it,
but not flagged as FWNODE_FLAG_PARENT_IS_DEV,
the link is dropped, otherwise the device link
is still made with the original supplier fwnode.
Theoretically, we can also handle linking to an ancestor
of the supplier fwnode when forming device links, but there
are still cases where the necessary fwnode flags are still missing
because the real supplier device did not probe yet.

Signed-off-by: Michael Pratt <mcpratt@pm.me>
---
 drivers/base/core.c    | 49 ++++++++++++++++++++++++++++++++++++------
 include/linux/fwnode.h |  4 ++++
 2 files changed, 47 insertions(+), 6 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index c05a5f6b0641..7f2652cf5edc 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -92,13 +92,45 @@ static int __fwnode_link_add(struct fwnode_handle *con,
 =09return 0;
 }
=20
+static int __fwnode_link_add_parents(struct fwnode_handle *con,
+=09=09=09=09     struct fwnode_handle *sup,
+=09=09=09=09     u8 flags, bool loop)
+{
+=09int ret =3D -EINVAL;
+=09struct fwnode_handle *parent;
+
+=09fwnode_for_each_parent_node(sup, parent) {
+=09=09/* Ignore the root node */
+=09=09if (fwnode_count_parents(parent) &&
+=09=09    fwnode_device_is_available(parent) &&
+=09=09  !(parent->flags & FWNODE_FLAG_NOT_DEVICE) &&
+=09=09  !(parent->flags & FWNODE_FLAG_PARENT_IS_DEV)) {
+=09=09=09ret =3D __fwnode_link_add(con, parent, flags);
+=09=09}
+
+=09=09if (!loop && !ret) {
+=09=09=09fwnode_handle_put(parent);
+=09=09=09return 0;
+=09=09}
+=09}
+
+=09return ret;
+}
+
 int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup)
 {
 =09int ret;
=20
 =09mutex_lock(&fwnode_link_lock);
-=09ret =3D __fwnode_link_add(con, sup, 0);
+
+=09if ((sup->flags & FWNODE_FLAG_NOT_DEVICE) &&
+=09    (sup->flags & FWNODE_FLAG_PARENT_IS_DEV))
+=09=09ret =3D __fwnode_link_add_parents(con, sup, 0, false);
+=09else
+=09=09ret =3D __fwnode_link_add(con, sup, 0);
+
 =09mutex_unlock(&fwnode_link_lock);
+
 =09return ret;
 }
=20
@@ -218,7 +250,8 @@ static void __fwnode_links_move_consumers(struct fwnode=
_handle *from,
  * MANAGED device links to this device, so leave @fwnode and its descendan=
t's
  * fwnode links alone.
  *
- * Otherwise, move its consumers to the new supplier @new_sup.
+ * Otherwise, flag descendants of @fwnode as having a parent fwnode for a =
device
+ * that has probed and move bad fwnode consumer links from @fwnode to @new=
_sup.
  */
 static void __fw_devlink_pickup_dangling_consumers(struct fwnode_handle *f=
wnode,
 =09=09=09=09=09=09   struct fwnode_handle *new_sup)
@@ -228,8 +261,11 @@ static void __fw_devlink_pickup_dangling_consumers(str=
uct fwnode_handle *fwnode,
 =09if (fwnode->dev && fwnode->dev->driver)
 =09=09return;
=20
-=09fwnode->flags |=3D FWNODE_FLAG_NOT_DEVICE;
-=09__fwnode_links_move_consumers(fwnode, new_sup);
+=09if (fwnode->flags & FWNODE_FLAG_NOT_DEVICE)
+=09=09__fwnode_links_move_consumers(fwnode, new_sup);
+
+=09fwnode->flags |=3D FWNODE_FLAG_PARENT_IS_DEV;
+=09new_sup->flags &=3D ~(FWNODE_FLAG_PARENT_IS_DEV);
=20
 =09fwnode_for_each_available_child_node(fwnode, child)
 =09=09__fw_devlink_pickup_dangling_consumers(child, new_sup);
@@ -2071,8 +2107,9 @@ static int fw_devlink_create_devlink(struct device *c=
on,
 =09=09device_links_write_unlock();
 =09}
=20
-=09if (sup_handle->flags & FWNODE_FLAG_NOT_DEVICE)
-=09=09sup_dev =3D fwnode_get_next_parent_dev(sup_handle);
+=09if ((sup_handle->flags & FWNODE_FLAG_NOT_DEVICE) &&
+=09   !(sup_handle->flags & FWNODE_FLAG_PARENT_IS_DEV))
+=09=09return -EINVAL;
 =09else
 =09=09sup_dev =3D get_dev_from_fwnode(sup_handle);
=20
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 2a72f55d26eb..3ed8ba503062 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -30,6 +30,9 @@ struct device;
  * BEST_EFFORT: The fwnode/device needs to probe early and might be missin=
g some
  *=09=09suppliers. Only enforce ordering with suppliers that have
  *=09=09drivers.
+ * PARENT_IS_DEV: The fwnode is a child of a fwnode that is or will be pop=
ulated as a
+ *=09=09  struct device, which is more suitable for device links
+ *=09=09  than the fwnode child which may never have a struct device.
  */
 #define FWNODE_FLAG_LINKS_ADDED=09=09=09BIT(0)
 #define FWNODE_FLAG_NOT_DEVICE=09=09=09BIT(1)
@@ -37,6 +40,7 @@ struct device;
 #define FWNODE_FLAG_NEEDS_CHILD_BOUND_ON_ADD=09BIT(3)
 #define FWNODE_FLAG_BEST_EFFORT=09=09=09BIT(4)
 #define FWNODE_FLAG_VISITED=09=09=09BIT(5)
+#define FWNODE_FLAG_PARENT_IS_DEV=09=09BIT(6)
=20
 struct fwnode_handle {
 =09struct fwnode_handle *secondary;
--=20
2.30.2



