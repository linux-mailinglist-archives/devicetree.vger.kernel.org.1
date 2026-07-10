Return-Path: <devicetree+bounces-324617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3f5yIGg4UWrPAwMAu9opvQ
	(envelope-from <devicetree+bounces-324617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:22:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 258DC73D505
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:22:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=Ppbabuem;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324617-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324617-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5D733014574
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D47F374A10;
	Fri, 10 Jul 2026 18:22:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57142DAFAF;
	Fri, 10 Jul 2026 18:22:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707737; cv=none; b=MRMZH7PNUAYJBgxHC/WREwQjTh3yIV3z0hr3oqgN2wXiijg+tLrzjdYKef3Xw1W5RUkiTBAe1BY++qkZaK37Lghq5R3q2q8Gg/J0QiJyZPl6Dt3cVGS1Huv1BsEWRVsKv9U+eWL76dz27DnDd+EaUdxzCn/EO/IWWtfZK2ykEaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707737; c=relaxed/simple;
	bh=8IbHgRbcl8gGxfUT1yl6/Oi4MeYat92Blo5R0JV3D+c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YUpeqSR8XcbsvLLdmw2NL2OGU+JBCwum0Axpa5WViVgRBcXylYoLPnt214h+mXQzDLikvk0ymRnxmdKrOsYCPJ/WoowgOPzdMJC/cm7atJoz3jD3I1ytE3HMYpZvn4MzBOWZcqAj/ObpuF3pt1orK9ak5/CEKGFXrTkwkA7h7+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Ppbabuem; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 6BED31A0F46;
	Fri, 10 Jul 2026 18:22:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3F13F60342;
	Fri, 10 Jul 2026 18:22:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6FB3511BD2BB8;
	Fri, 10 Jul 2026 20:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783707733; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=tV292ZGhVFQsmqBqRz+ghzzmcfpHApqX9NDMUq/JrC4=;
	b=PpbabuemKE2jRYaU/wV9QBn/TuZsHUbpMLxutqGCaL3v3kjYFa5gTrLPUNQBV9ihVGOWHX
	ghxQ30gFQNjm+EdhTTs5NMafY60I/3PajOgE8yLI2zuC0PZUZeZxKBHPSKvnEKveKWSKGf
	XgH6RyqVTMANCYcuRK3X2pjVukX3FPsLWQtps80c8tgsbGXWz19ywjBLC/WBocV6RGUvaK
	gX+O3ktt9UHQ3IEZvYnniOAeVV7cVZsO3ifKGJzuey3BtZ847w4Zz3mqmYXXrI7PrtVrKe
	e+rhuVecV5KLjkMMhkcU0mTgvDu47YaJ/CTcn6+NEkUcE2mpBskFtagY4bIEOQ==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Subject: [PATCH v2 0/7] clk: Add support for clock nexus
Date: Fri, 10 Jul 2026 20:21:55 +0200
Message-Id: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3NQQoCMQxG4asMWRtIg1r0KuKitr9OFtaS6iAMc
 3eLy2/z3kodbuh0nlZyLNbtVQd0N1GeU32ArQyTih4lBuGe5worcF4iK3sODGsqgT+tvx3pyWk
 fBQek20kLjVBz3O37n1yu2/YDZFOomHQAAAA=
X-Change-ID: 20260710-schneider-v7-2-rc1-eip201-upstream-a470e5eab92d
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324617-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 258DC73D505

Adding support for clock nexus had some prerequisites requested by
Stephen, such as adding new selftests, the initial discussions come from:

Link: https://lore.kernel.org/linux-clk/20260129201003.288605-1-miquel.raynal@bootlin.com/

Then there has been a bigger series (including patches for other
subsystems) to show the big picture, but let's split again and focus on
one subsystem at a time:

Changes in v2:
- Collected tags.
- Rebased on top of v7.2-rc1
- Exported (test) clock symbols using the _IF_KUNIT() variant, and
  imported the NS in the test file.
- Fixed a leaking node reported by Brian in the tests. Also used
  existing helpers to simplify the test implementation as he wisely
  suggested.
- Reworded the nexus node binding description as suggested by Stephen.
- Dropped redundant and non restraining properties from the Nexus
  node as suggested by Rob.
- Assigned clock/clock-rate properties now traverse Nexus nodes.
- Rename helpers following Stephen proposals.
- Rework tests following Stephen hints.
- Link to v1: https://lore.kernel.org/r/20260327-schneider-v7-0-rc1-crypto-v1-0-5e6ff7853994@bootlin.com

Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
---
Miquel Raynal (Schneider Electric) (7):
      dt-bindings: clock: Introduce nexus nodes
      clk: tests: Add clk_parse_clkspec() Kunit testing
      clk: tests: Add Kunit testing for of_clk_get_parent_name()
      clk: Improve a couple of comments
      clk: Use the generic OF phandle parsing in only one place
      clk: Add support for clock nexus dt bindings
      clk: tests: Add Kunit testing for nexus nodes

 .../bindings/clock/clock-nexus-node.yaml           |  30 +++++
 drivers/clk/Makefile                               |   1 +
 drivers/clk/clk-conf.c                             |  12 +-
 drivers/clk/clk.c                                  |  13 +-
 drivers/clk/clk_kunit_helpers.c                    |  31 +++++
 drivers/clk/clk_test.c                             | 146 +++++++++++++++++++++
 drivers/clk/kunit_clk_parse_clkspec.dtso           |  31 +++++
 include/kunit/clk.h                                |   2 +
 8 files changed, 254 insertions(+), 12 deletions(-)
---
base-commit: 7f26e010764df304602f33912a0550dcf46e72c2
change-id: 20260710-schneider-v7-2-rc1-eip201-upstream-a470e5eab92d

Best regards,
-- 
Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>


