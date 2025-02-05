Return-Path: <devicetree+bounces-143287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58622A28FD3
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 15:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CA4C3AA3AB
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 14:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D07155756;
	Wed,  5 Feb 2025 14:28:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E094C14A088
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 14:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738765732; cv=none; b=X/lv233Z/i2DAgSzfvdX9QxnWN1M6NVoFWPkJCWIvGe1UX1q6ntOVxEFkSS6i5tMKU2QweZ4+KKprmr0qsHxHRFrJOP73Vd2kIBU78VYrFVTIJseO4oG3Qf3ud7FvyMYER0trb3w2NkDuhfS+SydwiQVwFysaQ4lEqtelMou2uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738765732; c=relaxed/simple;
	bh=pkU7hp5NJZojvDgaPI9sRwqkgMbWBR2ts0tb8qklBx4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pVbtUK3pIhdK458Z9wm4iAJHBzFxHHmVuzxkf7enaw2xOdePw4r+0fsqw//oDI742v0gafeq1AiD6sZtnj3v2q8/D4RkVtWLJVjOAKVdpIiK1TCzemlDJpfdfdkhmBKG1ONf6xZdOYg5+DD6ipLLv4Mxu1lHD+wZtKR8+1Y0i60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:fa11:c14e:2df5:5273])
	by michel.telenet-ops.be with cmsmtp
	id 9qUo2E00F3f221S06qUolE; Wed, 05 Feb 2025 15:28:48 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tfgOK-0000000Fw9I-0wES;
	Wed, 05 Feb 2025 15:28:48 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tfgOW-00000006bKZ-1Dbu;
	Wed, 05 Feb 2025 15:28:48 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Julia Lawall <Julia.Lawall@inria.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: cocci@inria.fr,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH/RFC v2] coccinelle: of_table: Do not add commas after sentinels
Date: Wed,  5 Feb 2025 15:28:43 +0100
Message-ID: <f4d11c2e43697681678cf3fe0b2781bcd3bf3884.1738765482.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It does not make sense to have a comma after a sentinel, as any new
elements must be added before the sentinel.  Hence do not add the comma
when adding the sentinel.

Include the comma after the previous entry, else it will appear after the
sentinel.

Add a comment to clarify the purpose of the empty element.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Add devicetree people.

This is a patch I wrote last year.
My original intention was to create a Coccinelle script to remove
commas after sentinels, and annotate them, to automate the creation of
patches like commit 0256b6aeee11d705 ("pinctrl: renesas: Annotate
sentinels in tables").  Unfortunately I could not get that work (blame
it on this being my first experiment with Coccinelle).  Hence I gave up,
and instead settled for adapting the existing script to not add these
commas in the first place...

Known issues:

  1. This generates patches like:

	+	{/* sentinel */}

     while I would prefer to see:

	+	{ /* sentinel */ }

     Is there a way to do that, or should I just post-process the
     generated patches?

  2. If the array contains a "{ NULL }" element, this is still flagged
     as a missing sentinel:

	-	{ NULL }
	+	{ NULL },
	+	{},

     Note that this is a pre-existing issue.
---
 scripts/coccinelle/misc/of_table.cocci | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/scripts/coccinelle/misc/of_table.cocci b/scripts/coccinelle/misc/of_table.cocci
index 4693ea7447534144..7ade9766dee89c70 100644
--- a/scripts/coccinelle/misc/of_table.cocci
+++ b/scripts/coccinelle/misc/of_table.cocci
@@ -37,15 +37,14 @@ struct \(of_device_id \| i2c_device_id \| platform_device_id\) arr[] = {
 	...,
 	{
 	.var = E,
--	}
-+	},
-+	{ }
+	},
++	{ /* sentinel */ }
 };
 |
 struct \(of_device_id \| i2c_device_id \| platform_device_id\) arr[] = {
 	...,
 	{ ..., E, ... },
-+	{ },
++	{ /* sentinel */ }
 };
 )
 
-- 
2.43.0


