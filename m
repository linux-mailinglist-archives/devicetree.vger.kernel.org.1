Return-Path: <devicetree+bounces-324624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pfwBLxE5UWr5AwMAu9opvQ
	(envelope-from <devicetree+bounces-324624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:25:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFF073D594
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:25:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=ofdl18DB;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324624-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324624-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DDA0304C137
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C00137DE84;
	Fri, 10 Jul 2026 18:22:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8EF37C0F6
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:22:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707757; cv=none; b=ox7LCp/YFoaIWhXnMEEXnj/PobiwzyyL6kgFo9fuVsmQzvHYZS7pmnP8AkTRu5oQ960xqOjwBwF8KkSDeTn5TzALy4f20cxm3R9pkIksPoi6PtS2JBbQIyv9EGupGafrgNp6T9onqHPnD/SJsLUI+QoTj3J/g00sX+QTtC/7MJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707757; c=relaxed/simple;
	bh=9BD0frHIllOdYuYH6t1kkSctrb7RdeGSymmOSsqpKhU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nHvhbpdO3vwJqQsarmSySpN8JiNDIAQBeyM4M4GqNtaQCjchLJawz1bzDkZnGYZz5rCM9DettriUlZbiBhF5ja3yi3GLaieYESHWeEL9IdJ5kG0g0TAsf5wwtpVXBbfPhKShq2vgYrEqPpg87OCamGxAH1TaLLZjo3RJRSVFUlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ofdl18DB; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 278434E40D4B;
	Fri, 10 Jul 2026 18:22:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EFA4A60342;
	Fri, 10 Jul 2026 18:22:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3FAB711BD2C24;
	Fri, 10 Jul 2026 20:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783707748; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Z4iMMdJhqEJQ6QA/P5+O9pqvjmWc5U1l7gvdD0BYF6o=;
	b=ofdl18DBYwlZmpFxpHUXEBogYh+20Q1xgpbDsSLtbS+ORZehcnwURbhUEtZCbfJ1xSe6bL
	BIsjJRe1JSyssr97hQIBNc8aAzNiG4e3zyRYBF9ovA9o1KVlfQM5aSjx1hC1KcSY4iIYhr
	J2WEbmlpmSk0xwnr7QhZ8WouCwzx4vlCzaf8o3/tBHtTVcYNuoAyvlVqHY7gBfmmWL/ZL1
	YFcnER1B+nSsJgW188PXHm4YZ5PcSCdBUuAo5+zF5kJsHxTBqExBSNVjBrcbAN1pOMEjeO
	4KqHFvHuqyOCwZmTbdF81MiDV31OgtVhQy1v9bpLR+hYiX027IQH8bMnpSNBsQ==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Date: Fri, 10 Jul 2026 20:22:01 +0200
Subject: [PATCH v2 6/7] clk: Add support for clock nexus dt bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-6-b4680787377e@bootlin.com>
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
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>, 
 Herve Codina <herve.codina@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324624-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,redhat.com,linux.dev,davidgow.net,gmail.com];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:raemoar63@gmail.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:wsa+renesas@sang-engineering.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kunit-dev@googlegroups.com,m:miquel.raynal@bootlin.com,m:herve.codina@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5DFF073D594

A nexus node is some kind of parent device abstracting the outer
connections. They are particularly useful for describing connectors-like
interfaces but not only. Certain IP blocks will typically include inner
blocks and distribute resources to them.

In the case of clocks, there is already the concept of clock controller,
but this usually indicates some kind of control over the said clock,
ie. gate or rate control. When there is none of this, an existing
approach is to reference the upper clock, which is wrong from a hardware
point of view.

Nexus nodes are already part of the device-tree specification and clocks
are already mentioned:
https://github.com/devicetree-org/devicetree-specification/blob/v0.4/source/chapter2-devicetree-basics.rst#nexus-nodes-and-specifier-mapping

Following the introductions of nexus nodes support for interrupts, gpios
and pwms, here is the same logic applied again to the clk subsystem,
just by transitioning from of_parse_phandle_with_args() to
of_parse_phandle_with_args_map():

* Nexus OF support:
commit bd6f2fd5a1d5 ("of: Support parsing phandle argument lists through a nexus node")
* GPIO adoption:
commit c11e6f0f04db ("gpio: Support gpio nexus dt bindings")
* PWM adoption:
commit e71e46a6f19c ("pwm: Add support for pwm nexus dt bindings")

Only expected Nexus property:
- clock-map: maps inner clocks to inlet clocks
(the other properties have been judged not relevant for clocks)

Here is an example:

Example:
    soc_clk: clock-controller {
        #clock-cells = <1>;
    };

    container: container {
        #clock-cells = <1>;
        clock-map = <0 &soc_clk 2>,
                    <1 &soc_clk 6>;

        child-device {
            clocks = <&container 1>;
	    /* This is equivalent to <&soc_clk 6> */
        };
    };

The child device does not need to know about the outer implementation,
and only knows about what the nexus provides. The nexus acts as a
pass-through, with no extra control.

Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
Reviewed-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/clk-conf.c | 12 ++++++------
 drivers/clk/clk.c      |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/clk-conf.c b/drivers/clk/clk-conf.c
index 303a0bb26e54..5380d43b56a4 100644
--- a/drivers/clk/clk-conf.c
+++ b/drivers/clk/clk-conf.c
@@ -25,8 +25,8 @@ static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 		       node);
 
 	for (index = 0; index < num_parents; index++) {
-		rc = of_parse_phandle_with_args(node, "assigned-clock-parents",
-					"#clock-cells",	index, &clkspec);
+		rc = of_parse_phandle_with_args_map(node, "assigned-clock-parents",
+						    "clock", index, &clkspec);
 		if (rc < 0) {
 			/* skip empty (null) phandles */
 			if (rc == -ENOENT)
@@ -47,8 +47,8 @@ static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 			return PTR_ERR(pclk);
 		}
 
-		rc = of_parse_phandle_with_args(node, "assigned-clocks",
-					"#clock-cells", index, &clkspec);
+		rc = of_parse_phandle_with_args_map(node, "assigned-clocks",
+						    "clock", index, &clkspec);
 		if (rc < 0)
 			goto err;
 		if (clkspec.np == node && !clk_supplier) {
@@ -121,8 +121,8 @@ static int __set_clk_rates(struct device_node *node, bool clk_supplier)
 			rate = rates[index];
 
 		if (rate) {
-			rc = of_parse_phandle_with_args(node, "assigned-clocks",
-					"#clock-cells",	index, &clkspec);
+			rc = of_parse_phandle_with_args_map(node, "assigned-clocks",
+							    "clock", index, &clkspec);
 			if (rc < 0) {
 				/* skip empty (null) phandles */
 				if (rc == -ENOENT)
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index dad4bac10ad4..73ddd9a6aa2e 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -5207,8 +5207,8 @@ static int of_parse_clkspec(const struct device_node *np, int index,
 		 */
 		if (name)
 			index = of_property_match_string(np, "clock-names", name);
-		ret = of_parse_phandle_with_args(np, "clocks", "#clock-cells",
-						 index, out_args);
+		ret = of_parse_phandle_with_args_map(np, "clocks", "clock",
+						     index, out_args);
 		if (!ret)
 			break;
 		if (name && index >= 0)

-- 
2.54.0


