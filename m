Return-Path: <devicetree+bounces-282246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLbJIwkoymnX5gUAu9opvQ
	(envelope-from <devicetree+bounces-282246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 09:36:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D65D935681E
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 09:36:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0F743039EE1
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 07:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6D539FCCF;
	Mon, 30 Mar 2026 07:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0p88OMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31429395DB4;
	Mon, 30 Mar 2026 07:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774855836; cv=none; b=BQ3dQ34LGGuIbR5NdLo/dXfa9AXJMKfifFcZPGDGKhEbuJ4pArCmbkC+N8LOIPcWfYbsD0g3BwESDUmoSwnk7qPHEBxWrYW09rCYLWSOcNT4R3QfB4iJwz/xbYmhV6UfrVRHpr1q4WafQa9K+FUlK9Wx0G2qFUzq8ZV53SWg/FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774855836; c=relaxed/simple;
	bh=zsqXZYapJk4lTUfsp/UHiNYmhCmbGFBx8fixkiHGjbA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fjo1/xwMLTT2K3EyEI0/7JN9jDaVWLKYWOWAndPqotTb/ks6edjsf2hVnPD5Med9SNqqqzpn1mW4vreqIVKQ4eW4IA3AtYyLTRMQ/0ipqNGBLkz3jh6tswHxhfUnK2kjVKhg5fcZQ0hgF7BEjrEoVH5CKh79PSDOY9AuOybTRNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0p88OMZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id F08A9C4AF0B;
	Mon, 30 Mar 2026 07:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774855836;
	bh=zsqXZYapJk4lTUfsp/UHiNYmhCmbGFBx8fixkiHGjbA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=X0p88OMZ0Gb9QxsAtCsO1gdH4Tu6ESMHd6JEqo0MTwdQ18z1rHHzC/VohS/WlNlg5
	 m/w2DyWkrhxFQlrw7TrNMjSFgtAtbYW5OtjUj/wmQFGqVLzjBgcdRTZsfRFJWaiIi0
	 TByK8nMpZ//UDtoZhYdYoQ0Cpmkhq7A0ATZwbzIYDNnAkrQs3yNrbBaOWYdQn39i58
	 edMEd/ZtIkWUaNZ6zhuNqqlJr+gzO7a5vkxIn42g0tcPkuRRB7tjReGziW9Joipe0+
	 DknkUjUjtLv9L0o/lERjBaFcnT7h2hqywmMSnOvfWVKwZmBHdV7MOEconCzrRgtVat
	 9f7cjkzYwFnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E591CFF495B;
	Mon, 30 Mar 2026 07:30:35 +0000 (UTC)
From: Ben Zong-You Xie via B4 Relay <devnull+ben717.andestech.com@kernel.org>
Date: Mon, 30 Mar 2026 15:30:33 +0800
Subject: [PATCH v4 3/4] MAINTAINERS: add an entry for Andes I2C driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260330-atciic100-v4-3-d40822f63e4e@andestech.com>
References: <20260330-atciic100-v4-0-d40822f63e4e@andestech.com>
In-Reply-To: <20260330-atciic100-v4-0-d40822f63e4e@andestech.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Ben Zong-You Xie <ben717@andestech.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774855834; l=761;
 i=ben717@andestech.com; s=20260120; h=from:subject:message-id;
 bh=YiEx76SInP9JPwiKbc2slZ7Do4K0fx/VOtW1zrmzoiE=;
 b=cGuKKUe2ItklPvrrHhtXXu6mGLNhsReLY7Aqk85OiXJ76fLYf7jOPjpYRCE7znqZPx2tryyT3
 YrhaGvbnU5HBw1Ibl3b+Ar480h6R3bFHIfpeiBvdnv725OlGsqi06VI
X-Developer-Key: i=ben717@andestech.com; a=ed25519;
 pk=nb8L7zQKGJpYk0yvrYKjViOZ34A36g1ZIsCmCsP518s=
X-Endpoint-Received: by B4 Relay for ben717@andestech.com/20260120 with
 auth_id=610
X-Original-From: Ben Zong-You Xie <ben717@andestech.com>
Reply-To: ben717@andestech.com
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
	TAGGED_FROM(0.00)[bounces-282246-lists,devicetree=lfdr.de,ben717.andestech.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ben717@andestech.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,android.com:email]
X-Rspamd-Queue-Id: D65D935681E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ben Zong-You Xie <ben717@andestech.com>

Add an entry for the Andes I2C driver to the MAINTAINERS file.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7d10988cbc62..7272ebe7a22b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1863,6 +1863,12 @@ S:	Supported
 F:	Documentation/devicetree/bindings/spi/andestech,ae350-spi.yaml
 F:	drivers/spi/spi-atcspi200.c
 
+ANDES I2C DRIVER
+M:	Ben Zong-You Xie <ben717@andestech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/i2c/andestech,ae350-i2c.yaml
+F:	drivers/i2c/busses/i2c-andes.c
+
 ANDROID DRIVERS
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Arve Hjønnevåg <arve@android.com>

-- 
2.34.1



