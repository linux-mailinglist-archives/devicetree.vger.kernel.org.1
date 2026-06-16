Return-Path: <devicetree+bounces-312358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PO3PH5QHMWpAagUAu9opvQ
	(envelope-from <devicetree+bounces-312358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:21:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5A268D199
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:21:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VkvmY1Ym;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312358-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312358-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19EE23038105
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F324541B374;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0A7410D0F;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598072; cv=none; b=kPl59GqTerKOeXHYc3I7UMBvbOXQe34qbOx145GNWDVCIP6EsqaWXA02DAL1+hpLw1S5NOiM99CG1X3ulAVU95gDT0k41KV0+ViNb9Xt0NMuzl4F3PJNA9IpK7E++hQIOptJos/byaeaKurzIhI0NcEMGW8riyQ0m0o0eXOME+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598072; c=relaxed/simple;
	bh=gP7yKNYwcHZkZG1uyEiozGR+/WYriTse4Dwpm/sF6qE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t4YTKNYl5nnGsxOAjacCQ31PlW33Wlx3LAW/jt+9mOi82fCXMbUilAehlbuDZUqTNRCdGL/PR/692PDOWvfe7h12fM7Yq4GEQMJ9DExvT2B+gouMRJuWw5F8pbtizt8XQS24mH7EotulISbzYQ0/sziYofPernM9/JKe5BFKVA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkvmY1Ym; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B645C4AF18;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781598072;
	bh=gP7yKNYwcHZkZG1uyEiozGR+/WYriTse4Dwpm/sF6qE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VkvmY1Ym63FapXKGwSX30shZ9Wj2KMSopThRi4iju29jJ2Zs5/8icvq0CgNG8kBur
	 em7xanlzawA6uxQx70CoWVFvPW2+PmRLvY2RAAISv1nR3bvCTr+jV7hcRh1uF0staH
	 qkyg36dTLgvdjjqGwUq7TQ8Kr96hA1O9ysRdzvUsz5JgMs1Mdw7T03bosRhx5lJSmJ
	 gJk7Jv+Ud7kroGDoTcB+9S2aOr4LyE6baB6nQe07UwyGEqlw7uK0JU5h31jTtDSYZL
	 nn4vWob2Jg2IO5hZbLqn3aKhJYBwnVdujGG0WvEAoNI0Tf0PDOHfRpHHjh79m1qJPd
	 YIe+EujhVSixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7230DCD98DA;
	Tue, 16 Jun 2026 08:21:12 +0000 (UTC)
From: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Date: Tue, 16 Jun 2026 09:21:12 +0100
Subject: [PATCH v3 06/12] iio: dac: ad5686: consume optional reset signal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-ad5686-new-features-v3-6-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
In-Reply-To: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
To: Michael Auchter <michael.auchter@ni.com>, linux@analog.com, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Rodrigo Alencar <rodrigo.alencar@analog.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781598070; l=1481;
 i=rodrigo.alencar@analog.com; s=default; h=from:subject:message-id;
 bh=6lPEN1c2sS+R7KwOHtaMJleq8x339OPoW8meT8vCQvM=;
 b=pErFqIm+hSUjbyvb1YF5pDPDdIpuF9i0tTblK7GsozWn2P2wDrecTKdsWXZWc0D0lwE5m55xf
 +sn4SJZ4SqMCkphlMbf+rheyC3bA3EE2JumZt9VkgZKsjn/fPvk8l1v
X-Developer-Key: i=rodrigo.alencar@analog.com; a=ed25519;
 pk=ULeHbgU/OYh/PG/4anHDfLgldFItQHAhOktYRVLMFRo=
X-Endpoint-Received: by B4 Relay for rodrigo.alencar@analog.com/default
 with auth_id=561
X-Original-From: Rodrigo Alencar <rodrigo.alencar@analog.com>
Reply-To: rodrigo.alencar@analog.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312358-lists,devicetree=lfdr.de,rodrigo.alencar.analog.com];
	FORGED_RECIPIENTS(0.00)[m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:rodrigo.alencar@analog.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[rodrigo.alencar@analog.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,analog.com:replyto,analog.com:email,analog.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C5A268D199

From: Rodrigo Alencar <rodrigo.alencar@analog.com>

Add RESET pin GPIO support through an optional reset control, which is
local to the probe function. A reset pulse is manually generated after
the device is powered up.

Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
---
 drivers/iio/dac/ad5686.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
index fc3863274b29..a48acedff51c 100644
--- a/drivers/iio/dac/ad5686.c
+++ b/drivers/iio/dac/ad5686.c
@@ -15,6 +15,7 @@
 #include <linux/kstrtox.h>
 #include <linux/module.h>
 #include <linux/regulator/consumer.h>
+#include <linux/reset.h>
 #include <linux/sysfs.h>
 #include <linux/wordpart.h>
 
@@ -472,6 +473,7 @@ int ad5686_probe(struct device *dev,
 		 const struct ad5686_chip_info *chip_info,
 		 const char *name, const struct ad5686_bus_ops *ops)
 {
+	struct reset_control *rstc;
 	struct ad5686_state *st;
 	struct iio_dev *indio_dev;
 	int ret, i;
@@ -508,6 +510,15 @@ int ad5686_probe(struct device *dev,
 
 	fsleep(5); /* power-up time */
 
+	rstc = devm_reset_control_get_optional_exclusive(dev, NULL);
+	if (IS_ERR(rstc))
+		return dev_err_probe(dev, PTR_ERR(rstc),
+				     "Failed to get reset control\n");
+
+	reset_control_assert(rstc);
+	fsleep(1); /* reset pulse: comfortably bigger than the spec */
+	reset_control_deassert(rstc);
+
 	/* Initialize masks to all ones */
 	st->pwr_down_mask = ~0;
 	st->pwr_down_mode = ~0;

-- 
2.43.0



