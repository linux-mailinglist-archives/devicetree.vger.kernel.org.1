Return-Path: <devicetree+bounces-281802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKCmMyzlxmnrPwUAu9opvQ
	(envelope-from <devicetree+bounces-281802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 21:14:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D034AB58
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 21:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3FA430F043F
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 20:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8751239280C;
	Fri, 27 Mar 2026 20:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kB/mZr73"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46DA3921E0;
	Fri, 27 Mar 2026 20:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774642252; cv=none; b=BnJozDsujdDfwL+ujKJvYxpZga5WuwsUirpr5nkksD3bhoomiJ8Uzw0ztU5qy4weB3MlfDRa2F3mdbTBWbZ+EKozocSOo7Px+dWLUHyj+ps5GgjS6vrVPlZjSO8jaoHLIOTwb01IdJTEYqATZbCsjHONJByNrqxT/RVKqytPxBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774642252; c=relaxed/simple;
	bh=Cl0hRXwYePEWxGxJz07oIc8M/6J4o9Yg2Wo2jED1xyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQF0fvOOlShnmAD+MWSJEKOh1Wz41k+35n9sOlx9WlvafQcFNhOp2mfzLj+CqxbJHsEMzSpqfqXJKUuEJfiYnEu4Q7ZlZc2LQWt2kma3z13f5GQEGoDccKgUM5PVMGfQwxBc8qCuMzqjm1Tl4PdGqVxlRQ4JsNSppBolUdaIHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=kB/mZr73; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 37FCA4E4282F;
	Fri, 27 Mar 2026 20:10:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0B43B60268;
	Fri, 27 Mar 2026 20:10:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 700AE10451AD3;
	Fri, 27 Mar 2026 21:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774642246; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bk7M/kBCihyHtLEm7h7jmSARtbZ2A1p+Dp2oMN0Iedw=;
	b=kB/mZr730/FEdUo/BmeU5RaTieAK0DwrqDp6WhtkzLZmtbFoKLHPlB2l8nMsYlUFpYfJ/k
	lEWIxAAN6BWqmDoWyNd3fGaDI/iwz5zT+RYl9c3+yyttbNVp+Kn3+/DFtimLwLq984KssP
	JXpdtbmvJdQv3ezm0KIWFDBc8gxKzADmlqH9T+DE5g2mQcGFbrjjh26/2eaD9QB/eR3Cf2
	IzJVKLb/5SFui4smWD/fMMineevya8SoPIC+xYFAr2wWyBT982QPook5VPFHyx1i/kIEJg
	wJa4bSEZ/XvMJ5mpt67+F3GjsBukqh3sfF0oW1C45ibDDe8dh4qI+PXToIyQUw==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Date: Fri, 27 Mar 2026 21:09:29 +0100
Subject: [PATCH 07/16] clk: tests: Add Kunit testing for
 of_clk_get_parent_name()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-schneider-v7-0-rc1-crypto-v1-7-5e6ff7853994@bootlin.com>
References: <20260327-schneider-v7-0-rc1-crypto-v1-0-5e6ff7853994@bootlin.com>
In-Reply-To: <20260327-schneider-v7-0-rc1-crypto-v1-0-5e6ff7853994@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>, 
 Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Jayesh Choudhary <j-choudhary@ti.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Christian Marangi <ansuelsmth@gmail.com>, 
 Antoine Tenart <atenart@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Pascal EBERHARD <pascal.eberhard@se.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281802-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,selenic.com,gondor.apana.org.au,ti.com,davemloft.net,gmail.com,glider.be];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.949];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[clk_parse_clkspec_1_init_data.name:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 783D034AB58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make sure this helper is never broken, especially since we will soon
make some changes in it.

Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
---
 drivers/clk/clk_test.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/clk_test.c b/drivers/clk/clk_test.c
index b814b45f1f7e..8a17ad0d185f 100644
--- a/drivers/clk/clk_test.c
+++ b/drivers/clk/clk_test.c
@@ -3651,9 +3651,19 @@ static void clk_parse_clkspec_with_incorrect_index_and_name(struct kunit *test)
 	KUNIT_EXPECT_TRUE(test, IS_ERR(hw));
 }
 
+static void clk_parse_and_get_parent_name(struct kunit *test)
+{
+	struct clk_parse_clkspec_ctx *ctx = test->priv;
+
+	KUNIT_EXPECT_STREQ(test,
+			   of_clk_get_parent_name(ctx->cons_np, 0),
+			   clk_parse_clkspec_1_init_data.name);
+}
+
 static struct kunit_case clk_parse_clkspec_test_cases[] = {
 	KUNIT_CASE(clk_parse_clkspec_with_correct_index_and_name),
 	KUNIT_CASE(clk_parse_clkspec_with_incorrect_index_and_name),
+	KUNIT_CASE(clk_parse_and_get_parent_name),
 	{}
 };
 

-- 
2.51.1


