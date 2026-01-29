Return-Path: <devicetree+bounces-261042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI30OKXUe2klIwIAu9opvQ
	(envelope-from <devicetree+bounces-261042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 22:44:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 86715B500C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 22:44:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E83413034B37
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 21:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43730364E8A;
	Thu, 29 Jan 2026 21:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab3SsJPi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C57936405A;
	Thu, 29 Jan 2026 21:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769723006; cv=none; b=tUh+JJdiAHI4dc+389+buVU5kYSRUJ9ueRYwBjoovBdsOPMta33BDHrwd5WUUZutBu6Aamo1ACd9OuqAWa7JbucITk0ZmLxasO4padWWPM69gc5cUPRhx6rcnLYCh4/BVF2iJBc26axs48/5QjsZGGhcTv9NxhXRn7zOfGmG3sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769723006; c=relaxed/simple;
	bh=brjSiH7R5FA4tu3Sa6BJ43nSvJfgsNAMf6VD6KddoQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tK1VyCT8LypXCEeF+rWHF3wy/707bRV1yhUxtK0gHqNMxhbSw8VRKLdIDUN9ksynvlDHV2mhoj6Bg2Y+mmDGc0q0Lffz7n/YR1gQCvVti7K9zOehs+H+XKi3QIqMMqEU3PoxsN/I/rJHwFXGJBBVaCOCDR1ptHcCn02Gnuu8tpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab3SsJPi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D91C2BC87;
	Thu, 29 Jan 2026 21:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769723005;
	bh=brjSiH7R5FA4tu3Sa6BJ43nSvJfgsNAMf6VD6KddoQM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ab3SsJPiF94TK48jLjonQtWQ0xe5f318tbBO7EtoSGl9XLAG31Ru/Ds9V6jlW5KN3
	 dlLm44LU0cky9PmBnKFCjJUoFuA8fffzRg1IG6XctrzZ11ttaGY21Tcj1phfK7hw0/
	 x20vee/M8Rg0uoATF42tjdabJKQAsRbN0dpNRGJX8IK7Ee/6a2uxsgVHDiseuH4pjL
	 Q+2Rn0VDZjATO7qEMP9VEd2ht5FdFLtUIbwV2TANYHc37aPkadNg256fVY1dq7jRUZ
	 K21FkiMAIxSeYFX2t/EfQLkSBg8YYRLXp8lXe4A+/Y2sdbHL5LqLYDdOs5xiuBRGxe
	 b92KdlYzqGZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC0DD73EA0;
	Thu, 29 Jan 2026 21:43:25 +0000 (UTC)
From: Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>
Date: Thu, 29 Jan 2026 21:43:15 +0000
Subject: [PATCH v7 3/6] i2c: xiic: remove duplicate error message
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260129-i2c-xiic-v7-3-727e434897ef@nexthop.ai>
References: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
In-Reply-To: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
To: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abdurrahman Hussain <abdurrahman@nexthop.ai>, Andrew Lunn <andrew@lunn.ch>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769723005; l=958;
 i=abdurrahman@nexthop.ai; s=20260119; h=from:subject:message-id;
 bh=zo3dFn0HlGyzLosogoUEV42eLeWA4pxDMvHnGq762BA=;
 b=6rfEoX/3ErdGjF2NOVeNicWIblBIaO5nt4cWgVlXdXicLxUCeEC1gtUnpqz9TsVf/7S5dnJsJ
 WmgTfw9UEbmA/ccDBPK/wzk7B8+aUvG3vYVJDf/30Wsa6jiMl2UBu28
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
	TAGGED_FROM(0.00)[bounces-261042-lists,devicetree=lfdr.de,abdurrahman.nexthop.ai];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,nexthop.ai:replyto,nexthop.ai:email,nexthop.ai:mid,lunn.ch:email]
X-Rspamd-Queue-Id: 86715B500C
X-Rspamd-Action: no action

From: Abdurrahman Hussain <abdurrahman@nexthop.ai>

The devm_request_threaded_irq() already prints an error message. Remove
the duplicate.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
 drivers/i2c/busses/i2c-xiic.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index a480cbb86d93..ca5685660e45 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -1493,11 +1493,8 @@ static int xiic_i2c_probe(struct platform_device *pdev)
 	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
 					xiic_process, IRQF_ONESHOT,
 					pdev->name, i2c);
-
-	if (ret < 0) {
-		dev_err_probe(&pdev->dev, ret, "Cannot claim IRQ\n");
+	if (ret)
 		return ret;
-	}
 
 	i2c->singlemaster =
 		of_property_read_bool(pdev->dev.of_node, "single-master");

-- 
2.52.0



