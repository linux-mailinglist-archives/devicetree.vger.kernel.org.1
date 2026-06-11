Return-Path: <devicetree+bounces-310342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RU6JIVGOKmpSsQMAu9opvQ
	(envelope-from <devicetree+bounces-310342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:30:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BB8670DD5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:30:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=lht.dlh.de (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310342-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310342-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C86723067099
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A02B3CE080;
	Thu, 11 Jun 2026 10:29:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3ED21B9F6;
	Thu, 11 Jun 2026 10:29:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781173761; cv=none; b=ErsNNC1d7CkQhNUgTFk2rkJx0qIjyNjrtjvJXL7KyH01BJtPco94GWG9AtrbYkz5Djfy4ThqdrJMFPUmh6qodmZk7QzDkh7Urb4thRsI0aJ1ZXCidFT7VLeHNrF/MGDmgL1fTt8UxbDnLMlAx8sxBrFOZfC0AZ48CWQmLcEncpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781173761; c=relaxed/simple;
	bh=QEwbvu7mUl02rdZ2YotbMNLfRzLGoT0E99J+cPvPYOE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=a0wPt6DezABbVKW8F7pdm/rbkt80RuaoJY/wWPzoeaoO6lp6IKcLwaLrlG08pHinW6suUlR/EZ/4zkof/U25kEwv6RVBxrPfUY8Rvhny8wyFJSW7HAYGIWr+Sxb+elIOtQvNQOBrkumLrtJwoLL/P/gfU3ve+EU+hOMJ9Db/Ljc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=lht.dlh.de; spf=pass smtp.mailfrom=free.fr; arc=none smtp.client-ip=212.27.42.6
Received: from albans-vm.. (unknown [213.61.137.106])
	(Authenticated sender: albeu@free.fr)
	by smtp6-g21.free.fr (Postfix) with ESMTPSA id A285B78035E;
	Thu, 11 Jun 2026 12:29:02 +0200 (CEST)
From: Alban Bedel <alban.bedel@lht.dlh.de>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	driver-core@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Alban Bedel <alban.bedel@lht.dlh.de>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Subject: [PATCH] of: property: Fix of_fwnode_get_reference_args() with negative index
Date: Thu, 11 Jun 2026 12:28:06 +0200
Message-Id: <20260611102806.2643869-1-alban.bedel@lht.dlh.de>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[lht.dlh.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:driver-core@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:alban.bedel@lht.dlh.de,m:tommaso.merciai.xr@bp.renesas.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310342-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alban.bedel@lht.dlh.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lht.dlh.de:mid,lht.dlh.de:from_mime,vger.kernel.org:from_smtp,renesas.com:email,dlh.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1BB8670DD5

fwnode_property_get_reference_args() should return -ENOENT when an out
of bound index is passed. An issue arised with the OF backend because
the OF API use signed indexes while the fwnode API use unsigned ones.
When an index value greater the INT_MAX was passed to the OF backend
it got casted to a negative value and it returned -EINVAL instead of
-ENOENT. This patch add a check to of_fwnode_get_reference_args() to
catch negative index before they are passed to the OF API and return
-ENOENT right away.

This issue appeared when the following pattern was used in the LED
subsystem:

    index = fwnode_property_match_string(fwnode, "led-names", name)
    led_node = fwnode_find_reference(fwnode, "leds", index);

Unlike the same pattern with the OF API, this pattern implicitly cast
the signed return value of fwnode_property_match_string() to an
unsigned index leading to the above issue with the OF backend. It can
be argued that the return value of fwnode_property_match_string()
should be checked separately, but I think there is value in supporting
such simple and straight to the point patterns.

Link: https://lore.kernel.org/linux-leds/aimVRwJPhlGxsIUj@tom-desktop/T/#mc43cbf7e0599991b56dd0d9680714d28d145fbc8
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Signed-off-by: Alban Bedel <alban.bedel@lht.dlh.de>
---
 drivers/of/property.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 136946f8b746f..eace2d1847b99 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1157,6 +1157,13 @@ of_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 	unsigned int i;
 	int ret;
 
+	/* This function should return -ENOENT for out of bound indexes,
+	 * but the OF API uses signed indexes and consider negative indexes
+	 * as invalid. Catch them here to correctly implement the fwnode API.
+	 */
+	if ((int)index < 0)
+		return -ENOENT;
+
 	if (nargs_prop)
 		ret = of_parse_phandle_with_args(to_of_node(fwnode), prop,
 						 nargs_prop, index, &of_args);
-- 
2.39.5


