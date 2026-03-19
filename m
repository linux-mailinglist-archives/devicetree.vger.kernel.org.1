Return-Path: <devicetree+bounces-277958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGlhIVQ8vGlxvgIAu9opvQ
	(envelope-from <devicetree+bounces-277958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:11:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E231A2D09E8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:11:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2FCE32B7178
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100ED3F65E4;
	Thu, 19 Mar 2026 17:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="EkqefCDF"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF75E3F54B9;
	Thu, 19 Mar 2026 17:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773943179; cv=none; b=r+0Qu3EWjEaaeComaxyjgOkT2E73oR0G1anMJWbzWGwIlA9NjqcjtQ4dRMSk0r5X62NfVOVCUQVTwhqf9IiRzIo3m07fSOoD/BSSN0Qxp2x8+H8YQVNR0EcbeulKhRQGbfREf3RpHwTrmm13ol6lRY9BFxrYOSySoTKRo+uenRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773943179; c=relaxed/simple;
	bh=hvgnFd6i8bH5mUG8809MkRlOdbcEZRveaBCGMvPKUaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZTYJtWu38TztHA4E4wBu4/6WRsYN9OIkQCwKQIgXJ/A0iqWEJzQr5A9JgowpoGVlOnc/aFFxQKvrtQ7bTnN0kn7uBEEJZIQLfHBU8hWHScT8B2XbL+EfWm0YGu3rBFsS3fsWgZbpeF75J01jAv4CCkL16rkZFTIkEIqaSQcg2xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=EkqefCDF; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3493325FAE;
	Thu, 19 Mar 2026 18:59:36 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id czcLqrmtE8nV; Thu, 19 Mar 2026 18:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1773943175; bh=hvgnFd6i8bH5mUG8809MkRlOdbcEZRveaBCGMvPKUaQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=EkqefCDFbJfvux9NUY8HggMmXh+aupGG1THcMqEpCONa2tOT8IY8dnEqQoCmS7wNr
	 RpbqnnqziAppwmsW0lgUUlDYQH5TygElyqgZzai2tO3i+LJ7hSRzM+4whuLo+rWZMH
	 7n+VoUlGyKrbF5yewuqf2sY0xO9PewYpcueFPVGUFTAasFydfefTH/21iBMnMx2U78
	 j1bmyJQ2Ref8YnuiqxB8ttXNEU78FngwYc4rFUwm1nRcxHc4BIppelCyhKRFl9H0tN
	 94/rkv+qOctW4R1F6N8zjBAVcoXJ7S2JQUJYIkCjNxSNJm/ZmkNybPJztc1Or3BN6Q
	 2+kAq7kGL7ZkQ==
From: Rustam Adilov <adilov@disroot.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v2 5/8] i2c: rtl9300: introduce clk struct for upcoming rtl9607 support
Date: Thu, 19 Mar 2026 22:57:50 +0500
Message-ID: <20260319175753.32338-6-adilov@disroot.org>
In-Reply-To: <20260319175753.32338-1-adilov@disroot.org>
References: <20260319175753.32338-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277958-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.905];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:dkim,disroot.org:email,disroot.org:mid,alliedtelesis.co.nz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E231A2D09E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In RTL9607C i2c controller, there is 10 bit CLK_DIV field for
setting the clock of i2c interface which depends on the rate
of i2c clk (which seems be fixed to 62.5MHz according to Realtek SDK).

Introduce the clk struct and the respective F_CLK_DIV and clk_div
which are going to be used in the upcoming patch for rtl9607c i2c
controller support addition.

devm_clk_get_optional_enabled() function was used for cleaner code
as it automatically returns NULL if the clk is not present, which is
going to be the case for RTL9300 and RTL9310 i2c controllers.

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/i2c/busses/i2c-rtl9300.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index ffbc6c52861b..16af49ccd1dd 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <linux/bits.h>
+#include <linux/clk.h>
 #include <linux/i2c.h>
 #include <linux/i2c-mux.h>
 #include <linux/mod_devicetable.h>
@@ -28,6 +29,7 @@ struct rtl9300_i2c_chan {
 	struct rtl9300_i2c *i2c;
 	enum rtl9300_bus_freq bus_freq;
 	u8 sda_num;
+	u32 clk_div;
 };
 
 enum rtl9300_i2c_reg_scope {
@@ -54,6 +56,7 @@ enum rtl9300_i2c_reg_fields {
 	F_SDA_OUT_SEL,
 	F_SDA_SEL,
 	F_BUSY,
+	F_CLK_DIV,
 
 	/* keep last */
 	F_NUM_FIELDS
@@ -85,6 +88,7 @@ struct rtl9300_i2c {
 	u8 scl_num;
 	u8 sda_num;
 	struct mutex lock;
+	struct clk *clk;
 };
 
 DEFINE_GUARD(rtl9300_i2c, struct rtl9300_i2c *, mutex_lock(&_T->lock), mutex_unlock(&_T->lock))
@@ -432,6 +436,10 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	i2c->clk = devm_clk_get_optional_enabled(dev, NULL);
+	if (IS_ERR(i2c->clk))
+		return dev_err_probe(dev, PTR_ERR(i2c->clk), "Failed to enable i2c clock\n");
+
 	i = 0;
 	for_each_child_of_node_scoped(dev->of_node, child) {
 		struct rtl9300_i2c_chan *chan = &i2c->chans[i];
-- 
2.53.0


