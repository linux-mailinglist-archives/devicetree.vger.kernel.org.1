Return-Path: <devicetree+bounces-324622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0X2WGAo5UWrzAwMAu9opvQ
	(envelope-from <devicetree+bounces-324622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:25:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 043B073D583
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:25:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=lPVmfrly;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324622-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324622-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8C7B3049715
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4D3379C2A;
	Fri, 10 Jul 2026 18:22:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893C737F8AF;
	Fri, 10 Jul 2026 18:22:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707757; cv=none; b=D/P+4KQ/XqD3xUC7k5JK/zLFi6Z0Ym9OiID7I1e1rDX47v5lOzp08d3fzkiKFf1V/W5XRD7fw+hF5Tw7bQUNU7tVYzk1mTziP3VwlCwzkihkU7op9hgJk0ZeTYJNHqftjX/drDOk1beUZlKPdqZaCwmsyQkGaW/n8d7p7PKXLc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707757; c=relaxed/simple;
	bh=jLPNQMlx2tycltIOs26Drt1Q255C5g3gqKVQI6vBK6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OQ4O5jnMH91+Idjq/Rjk5FL0R4xCP5S3sJZHcnyg/5xP5nzpmLRk18PkUtwsxAulhM18tD5HRps1Pe2YWSPKsLD02Sax6VSE6gPe9DTQJ4kEWaJoiFbLZXYnFO2Do5GQKJCnL6jIuza+BGpbNDKniFskSUhAmzyPVw1/L+UngQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=lPVmfrly; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2EBE74E40D49;
	Fri, 10 Jul 2026 18:22:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 024C760342;
	Fri, 10 Jul 2026 18:22:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9627111BD2C22;
	Fri, 10 Jul 2026 20:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783707745; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1wrqvhMu2YpcC+p27L70W26av2AD4YrTW4sHtW1nCnY=;
	b=lPVmfrlyQy0LStODYFFPnPc6ckxVpn7OsqcTtaOmJOHTTsbrkvrYs/5vOd8DvW6vnVXexf
	HiO56fdJVB9b4bImLVzfbfX0VwfIgljzCp87/dLHOd2Cx5tb54zXZB9tAe5xWCbryM4Rw4
	qzPJTMtukZYHvFhTODhJyqQJ9sSLihi/prN1CXejNW8VpgQsVOI6b1VqvTmgnoQTBjyIrn
	YLo6ODzj0VkYdKfyPsty86KPO9i+M7yO9xfDEZi1ItYMlDfcWgRAiyAqo6NibS/LLdAAMA
	szPwe1pEQpclz9LNi2x5/lRvYDX6abAxwPUqz34JQzeeJNVRk/Dt+Zxq/4pcHA==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Date: Fri, 10 Jul 2026 20:22:00 +0200
Subject: [PATCH v2 5/7] clk: Use the generic OF phandle parsing in only one
 place
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-5-b4680787377e@bootlin.com>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
In-Reply-To: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Brendan Higgins <brendan.higgins@linux.dev>, David Gow <david@davidgow.net>, 
 Rae Moar <raemoar63@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Pascal EBERHARD <pascal.eberhard@se.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, 
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324622-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,redhat.com,linux.dev,davidgow.net,gmail.com];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:raemoar63@gmail.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:wsa+renesas@sang-engineering.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kunit-dev@googlegroups.com,m:miquel.raynal@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 043B073D583

There should be one single entry in the OF world, so that the way we
parse the DT is always the same. make sure this is the case by avoid
calling of_parse_phandle_with_args() from of_clk_get_parent_name(). This
is even more relevant as we currently fail to parse clock-ranges. As a
result, it seems to be safer to directly call of_parse_clkspec() there.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Fixes: 4472287a3b2f5 ("clk: Introduce of_clk_get_hw_from_clkspec()")
Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
Reviewed-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/clk.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 7d63d81ebc09..dad4bac10ad4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -5364,8 +5364,7 @@ const char *of_clk_get_parent_name(const struct device_node *np, int index)
 	int count;
 	struct clk *clk;
 
-	rc = of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
-					&clkspec);
+	rc = of_parse_clkspec(np, index, NULL, &clkspec);
 	if (rc)
 		return NULL;
 

-- 
2.54.0


