Return-Path: <devicetree+bounces-261522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG+PLlXBfmm4dgIAu9opvQ
	(envelope-from <devicetree+bounces-261522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 03:58:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6271BC4C08
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 03:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13F583038A68
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 02:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916DE27FB3A;
	Sun,  1 Feb 2026 02:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDIVeiEx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357EF2773E5;
	Sun,  1 Feb 2026 02:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769914670; cv=none; b=FNfWn5UgBF0cMH3OE0ayFvcfQDoToQ9gTEOWQUznQmGtmYW/bwl28YfyCGDmX3KzPN1T/45SLr5MWcRqlj1HNecx3eD5yoKQ2i1NtPHOT1aV46CqfXxMdKwi6TmjMktYgQlMRrD3QCD/pvF2dshlt0Slf3bQILPBwxBhOIPLDN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769914670; c=relaxed/simple;
	bh=kMjFZURa0+pQpBkA+HB6v9Ku88nudmFkiQiqSOAUbrg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B5f2TM3duUQc6NoM+sUgQuNrrUHs4wLiZWnpo9/vC0oYIDxyDzyA3GAy76TC8XQNxYAI0gRqWUIY1Iy5o9N0NZvL7dvYUTDNeCzGf7JwuX10X+kpK2mpG6NzIa5hpFKfVKHgJbJZWom22NPDpKHn0fxfMwf5kPSKCm0TYKh3JNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDIVeiEx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1077C2BCB6;
	Sun,  1 Feb 2026 02:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769914669;
	bh=kMjFZURa0+pQpBkA+HB6v9Ku88nudmFkiQiqSOAUbrg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UDIVeiExEg1dOp4tvnhvsbG8kaNBEzUSYlsauKYypSrBoVOVq6EAwpOaaf8OZncyc
	 ztS4ycLy103Dxb1Nm7TrEuWJym/nkvF76vXP43UK0dYF1Z0zvUYQeijtqPsiiPbhyf
	 qD1PjjCLeytxF2Yuxv2jVb5be2yewpB/ToCP0h9jLV9axvGn4t2sJ1K/S/wQejERrk
	 RbJxyR1oPqotfmtx56jy54VACdRoMR9rHPthzAtzMoMBNM10NRpl9Ngu/sZX2RA8LJ
	 qXJ+rxFQzrREwqHOiSuI6RvUYtNTVIkHggwVUZNiorPgkJOiXvHa7WF8x27DYQ1PZS
	 +aTDeQwyGgDcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FFEE7C6FD;
	Sun,  1 Feb 2026 02:57:49 +0000 (UTC)
From: Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>
Date: Sun, 01 Feb 2026 02:57:49 +0000
Subject: [PATCH v8 5/6] i2c xiic: cosmetic: use resource format specifier
 in debug log
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260201-i2c-xiic-v8-5-deb2dd158d1a@nexthop.ai>
References: <20260201-i2c-xiic-v8-0-deb2dd158d1a@nexthop.ai>
In-Reply-To: <20260201-i2c-xiic-v8-0-deb2dd158d1a@nexthop.ai>
To: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abdurrahman Hussain <abdurrahman@nexthop.ai>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769914669; l=856;
 i=abdurrahman@nexthop.ai; s=20260119; h=from:subject:message-id;
 bh=r0phdJQdTs6GZ5RebcyDWbMdSSAKH6LIKg98MD7xqyI=;
 b=AigRR2fwVephOyiF2MFRtLe83Cakdc3okvQuTxnkty6tS3KjzFzcHHIakLU1MflawVN6CTvr6
 GtdVSB3Wmk7CPtf1FRQmUQGGbBZqzrpbdJE86j/IjUTFB4K8eEyLbnN
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261522-lists,devicetree=lfdr.de,abdurrahman.nexthop.ai];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[abdurrahman@nexthop.ai];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:replyto,nexthop.ai:email,nexthop.ai:mid,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6271BC4C08
X-Rspamd-Action: no action

From: Abdurrahman Hussain <abdurrahman@nexthop.ai>

Use standard resource format specifier %pR in debug log.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
 drivers/i2c/busses/i2c-xiic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
index 9880904be7ed..b8439b78d1ce 100644
--- a/drivers/i2c/busses/i2c-xiic.c
+++ b/drivers/i2c/busses/i2c-xiic.c
@@ -1518,8 +1518,8 @@ static int xiic_i2c_probe(struct platform_device *pdev)
 			i2c_new_client_device(&i2c->adap, pdata->devices + i);
 	}
 
-	dev_dbg(dev, "mmio %08lx irq %d scl clock frequency %d\n",
-		(unsigned long)res->start, irq, i2c->i2c_clk);
+	dev_dbg(dev, "mmio %pR irq %d scl clock frequency %d\n",
+		res, irq, i2c->i2c_clk);
 
 	return ret;
 }

-- 
2.52.0



