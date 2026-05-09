Return-Path: <devicetree+bounces-294921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF5tApth/2n45wAAu9opvQ
	(envelope-from <devicetree+bounces-294921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E7E5007A2
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4A63301C174
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 16:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C99E2FF641;
	Sat,  9 May 2026 16:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="fFlNNtkf"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3D3274B43;
	Sat,  9 May 2026 16:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778344318; cv=none; b=Gn55bYmhRl1M34Ur9i/TF7p3GJQv3wChEyytTAkV8ezSCXkyWq563qxtf2S+mM7FaGNG5fmbiaYkbzhHx740sZjYNQroA2q7usPcLQxk5xtx0wHiynjqofcpyxcLFIv3Aacpr/aZWedqPFRabBkNn1obbCceyzLaOvevsNvH6a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778344318; c=relaxed/simple;
	bh=JHuLb1YQbAJu4HyBY0RuVtnyyJnieJ2ZyvF0+GM0/a0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e/oHUFavO5T/okX4HN66fvHHaR690UqJdcpH/hyZFGubWCL15WTbSPV8oXnyw+OhRA0pjN8Tj79DqMRmasnN48sS4k4dDDKJPaGcgpEtvBraqazsw3l449DEvQeiHV8DRwYB5x3MfbiK8zpKvnH+pBXZ6A84osBgNF4tkC0b9Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=fFlNNtkf; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3C1B727248;
	Sat,  9 May 2026 18:31:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nekL3haQT_Iu; Sat,  9 May 2026 18:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778344314; bh=JHuLb1YQbAJu4HyBY0RuVtnyyJnieJ2ZyvF0+GM0/a0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=fFlNNtkf2eQUu71b7v/RG1vX5y5Fh0PVXjz7Y1i8FRQE4C1Ov2Unk374QMXm5vW5X
	 XbiN97/39UCjCdwR5J7Vz3Xj4jKjJVblAYrK08QksXI8FReSfqafS7Ssn9J2GvUn5E
	 sW+gqOoAACex2czFj8U+fUbThZITyvJoAa4ovpfdfvcGgj6aE3pVb/lntWzJ9sMGoi
	 9xAum+g1LDfI2j/WQA8/WPhpjgdbNgym7ikEHMZ4V3oAvoNw79NGW+OjBE+mBSsjhZ
	 O/u66AZaDO7JSFBCz00GQ6ioBFBl/+sjI2hMh1DD4Pg3uNx89Gs/+nIDXGZm7GI8TF
	 7fSkTLODb9d8A==
From: Rustam Adilov <adilov@disroot.org>
To: Sander Vanheule <sander@svanheule.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH 3/3] watchdog: realtek-otto: add RTL9607C support
Date: Sat,  9 May 2026 21:31:01 +0500
Message-ID: <20260509163101.722793-4-adilov@disroot.org>
In-Reply-To: <20260509163101.722793-1-adilov@disroot.org>
References: <20260509163101.722793-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 71E7E5007A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-294921-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,disroot.org:mid,disroot.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The RTL9607C SoC has a watchdog timer identical to the already
supported SoCs. The peripheral is memory mapped at 0x18003260
and driven by the Lexra bus clock.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/watchdog/realtek_otto_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/realtek_otto_wdt.c b/drivers/watchdog/realtek_otto_wdt.c
index e5e9cb480f4f..7ad196802eeb 100644
--- a/drivers/watchdog/realtek_otto_wdt.c
+++ b/drivers/watchdog/realtek_otto_wdt.c
@@ -355,6 +355,7 @@ static const struct of_device_id otto_wdt_ids[] = {
 	{ .compatible = "realtek,rtl8390-wdt" },
 	{ .compatible = "realtek,rtl9300-wdt" },
 	{ .compatible = "realtek,rtl9310-wdt" },
+	{ .compatible = "realtek,rtl9607-wdt" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, otto_wdt_ids);
-- 
2.54.0


