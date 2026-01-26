Return-Path: <devicetree+bounces-259597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBc6N/Cfd2kCjQEAu9opvQ
	(envelope-from <devicetree+bounces-259597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:10:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ABA8B4E5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACE733054D18
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE83D34A3D6;
	Mon, 26 Jan 2026 17:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWBJnQsy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A586349AF1;
	Mon, 26 Jan 2026 17:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769447301; cv=none; b=pTPlNojiV3TYmDJwYeVPsyn4Bw+ePXnVcfkzW50coCefh9mTjrd1/EFp0Y+aiGDFL7G5g72GFa82RMOw864FcqanQAFfPnoDwMgRMotjVxqfCxoKJbxkIqN+/xAF+SEmNdcvWpZa5+ne+voOBvZ0iwHYbocckScDd/rK9YdHA14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769447301; c=relaxed/simple;
	bh=bRJsBVhV2cTCTGqXXoRRmJ1NBnZdJqFem9P0ZfHUxu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZxP+1T+F5IoU9X7djqpNcczpsAx3YOkJgLViZljlJyTu3qPpJTcMe2jWoDOuybogoSmdaWfo5bA7TWF28wrOcFPnQfw0ZtRc3kYwD5yE6Ol/fBqddIk37kGIKkIqFzcnX+DJvUWIanqNdueBn7WMig7oKc0nYoWC2vKMP0BUxlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWBJnQsy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41F56C2BC9E;
	Mon, 26 Jan 2026 17:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769447301;
	bh=bRJsBVhV2cTCTGqXXoRRmJ1NBnZdJqFem9P0ZfHUxu4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=lWBJnQsyizLAvq7vEAg86CzYAK9+d2Ufr0NLYH4z7gGFdkIx5j8wq1wqgOOVW+CF9
	 QWdP99vGEXVgdcr56w3bYEfCcEnY/Nf04W4RO/PTwbddrcU3Vk1HqSmPzUwplvWatD
	 nlutOR2s3Vcv5ivpQF6Ia0afWz3vIAXSH1tVkq7zZFjW1dl9zjYB7C3CDCGFFWVaTN
	 1qCJMsSWMrq/KhLBRD1yrop66jzFSoa+xuZY1ff5xrTd8bCSyDROw96/5znq8Jr44F
	 MQ47oM/ksvXjx4FZSuO3r05z17YmN1qaXrbjtXs3VlQW4wmtBJGvPQdSEgrlfWKp3Z
	 Go795pQoVIisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 355EBD19508;
	Mon, 26 Jan 2026 17:08:21 +0000 (UTC)
From: Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>
Date: Mon, 26 Jan 2026 17:08:17 +0000
Subject: [PATCH v5 2/6] i2c: xiic: make the clock optional
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-i2c-xiic-v5-2-88a16a28721c@nexthop.ai>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
In-Reply-To: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
To: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abdurrahman Hussain <abdurrahman@nexthop.ai>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769447300; l=1430;
 i=abdurrahman@nexthop.ai; s=20260119; h=from:subject:message-id;
 bh=MFPKI1awSXPDHMhgBtmEFE5/b9Lhx4gVN3sZslxmYUc=;
 b=me3Cm2MW3XShsFG9At8DfhsACkQpJ31sietD0gepYjQSWjj8ORC/JDRY9QJnwsgr/rSdWL+3B
 mlkLkEUrafyCJU6NOK8JFyuUrRMsWU33uU9L1ychEDSU5+4IOQBgdpI
X-Developer-Key: i=abdurrahman@nexthop.ai; a=ed25519;
 pk=S+ysnf+NwMcBdHBlyKIUEAtaFGSIhQwcJcgcXhq0osg=
X-Endpoint-Received: by B4 Relay for abdurrahman@nexthop.ai/20260119 with
 auth_id=608
X-Original-From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Reply-To: abdurrahman@nexthop.ai
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259597-lists,devicetree=lfdr.de,abdurrahman.nexthop.ai];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[abdurrahman@nexthop.ai];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:replyto,nexthop.ai:email,nexthop.ai:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 44ABA8B4E5
X-Rspamd-Action: no action

From: Abdurrahman Hussain <abdurrahman@nexthop.ai>

The xiic driver is designed to operate without explicit clock configuration
when clocks are not specified in the firmware. This functionality is
already implemented in xiic_setclk(), which performs an early return when
either i2c_clk or input_clk are zero:

This condition is satisfied when clocks are missing, as clk_get_rate(NULL)
returns zero, allowing the driver to rely on hardware-configured timing.

Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
 drivers/i2c/busses/i2c-xiic.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index 28015d77599d..16202fb89271 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -1423,6 +1423,7 @@ MODULE_DEVICE_TABLE(of, xiic_of_match);
 
 static int xiic_i2c_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct xiic_i2c *i2c;
 	struct xiic_i2c_platform_data *pdata;
 	const struct of_device_id *match;
@@ -1464,7 +1465,7 @@ static int xiic_i2c_probe(struct platform_device *pdev)
 	mutex_init(&i2c->lock);
 	spin_lock_init(&i2c->atomic_lock);
 
-	i2c->clk = devm_clk_get_enabled(&pdev->dev, NULL);
+	i2c->clk = devm_clk_get_optional_enabled(dev, NULL);
 	if (IS_ERR(i2c->clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
 				     "failed to enable input clock.\n");

-- 
2.52.0



