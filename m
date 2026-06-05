Return-Path: <devicetree+bounces-307171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U+H+ANpIImq2UgEAu9opvQ
	(envelope-from <devicetree+bounces-307171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:56:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87002644F5B
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 05:56:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=TZm2BtcV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307171-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307171-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CED9D302438A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 03:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EBB43C4573;
	Fri,  5 Jun 2026 03:56:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms1.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA9F360EFB;
	Fri,  5 Jun 2026 03:56:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780631765; cv=none; b=LqU/UYfSBqmyz5aURzjozu8GlW94w4q9aRyFfbr1BD8U43D8w5krloaWMQp+MF29g1hRviXxcw9w/X5D+NJCYXOYdf4pw8687EzsLEW6a7Z3AF6T+UkZAuC8oMWkBGuH9QGsCfEDXtNlNy8qYJsmXii6DxCt/ftl7DiWAWXncdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780631765; c=relaxed/simple;
	bh=V5Fg56V7jCwlWag7w1D1A9bx03KzA0N203j37cwjxVM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=E5Up+rrcdUUhis9oISi6tGJCy5YlT2sh5lTSX2a5nayeTHn3nGQhNtfISQ0wdZx+N74gwpM1b5pTrTB3CmSIeMtwOH+GHhH6BePUiVXLWwV5QzoWqF3aBvTAMmQIEwWZqTnvqTsvvo0unxwspDcG78YWq/pjmiq7V9ojMO9JCr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=TZm2BtcV; arc=none smtp.client-ip=210.202.87.108
X-UUID: 771af27c609211f183c5f7e20ac2d237-20260605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From; bh=ttBh852AbHUzzEmmjMC/hd9MMVjUqLHnYOYolEupjW8=;
	b=TZm2BtcVTNEmBWBm8/I160fghgX2r6O6HjgZytNhuDodUBMUQzv69xWa/ga7MJ4WXZja2CNGudf6LScW0bFymMKjkWa1fDwtHyJqoS+zScKIJvHKEgoUtyESLxKSrOPQuKmKfHl/x24wnGmYqkHEwZN20XxQJEqLUq/T9SkV4Fg=;
X-UUID: 771af27c609211f183c5f7e20ac2d237-20260605
Received: from spmgt1 [(172.20.13.10)] by ms1.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 1642047106; Fri, 05 Jun 2026 11:56:00 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id 8803A1B315E;
	Fri,  5 Jun 2026 11:56:00 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id E0A58C60082; Fri,  5 Jun 2026 11:55:58 +0800 (CST)
From: SP_ISW1_AT@novatek.com.tw
To: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: SP_ISW1_AT@novatek.com.tw,
	ben_huang@novatek.com.tw,
	toby_chui@novatek.com.tw,
	shihpei_hsu@novatek.com.tw
Subject: [PATCH 1/3] MAINTAINERS: Add entry for Novatek NT726xx SoC i2c driver
Date: Fri,  5 Jun 2026 11:55:58 +0800
Message-Id: <20260605035558.383330-1-SP_ISW1_AT@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[novatek.com.tw,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[novatek.com.tw:s=dk];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307171-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:SP_ISW1_AT@novatek.com.tw,m:ben_huang@novatek.com.tw,m:toby_chui@novatek.com.tw,m:shihpei_hsu@novatek.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[SP_ISW1_AT@novatek.com.tw,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[novatek.com.tw:+];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,novatek.com.tw:mid,novatek.com.tw:dkim,novatek.com.tw:from_mime,novatek.com.tw:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87002644F5B

From: Ben Huang <Ben_Huang@novatek.com.tw>

Add entry for maintenance of Novatek NT726xx SoC i2c driver.

Signed-off-by: Ben Huang <Ben_Huang@novatek.com.tw>
Signed-off-by: Novatek i2c <SP_ISW1_AT@novatek.com.tw>
---
v2:
- Add Novatek i2c to Signed-off-by email list.
- Remove confidential related statements and HTML messages.
- Fix the potential issues in the device tree document and
  i2c driver source codes.
- Fix typos.

v1:
https://lore.kernel.org/lkml/20260604060411.355675-1-SP_ISW1_AT@novatek.com.tw/T/#t
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e035a3be797c..d42f644a596d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19014,6 +19014,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nolibc/linux-nolibc.git
 F:	tools/include/nolibc/
 F:	tools/testing/selftests/nolibc/
 
+NOVATEK NT726XX I2C CONTROLLER DRIVER
+M:	Ben Huang <ben_huang@novatek.com.tw>
+L:	linux-i2c@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml
+F:	drivers/i2c/busses/i2c-nt726xx.c
+
 NOVATEK NVT-TS I2C TOUCHSCREEN DRIVER
 M:	Hans de Goede <hansg@kernel.org>
 L:	linux-input@vger.kernel.org
-- 
2.40.1


