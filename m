Return-Path: <devicetree+bounces-326707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2M70BDA4V2o/HgEAu9opvQ
	(envelope-from <devicetree+bounces-326707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:35:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E8275B7BA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:35:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=novatek.com.tw header.s=dk header.b=C8K8IPJ9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326707-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326707-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=novatek.com.tw;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0F9F30143D3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D0539CD14;
	Wed, 15 Jul 2026 07:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ms1.novatek.com.tw (ms2.novatek.com.tw [210.202.87.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103BC37A488;
	Wed, 15 Jul 2026 07:35:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784100908; cv=none; b=QiK2kMUxIMw133wv4L7vtOFBeo9RyWXiASQpy+tmX1SPkel5NCmxaeNROn8rX9SOO74c3/Q+uJK3DJn9k/FWwddhRlv5ML6AxRLcFBKeVBxxCBLFyA8lNcZdzwOotzJgKZGP3BvNpBlMLlZABXAiWuH7SLTiPdk/dWNg4w3BmbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784100908; c=relaxed/simple;
	bh=wB9zSxXY+QuMCHnm8Ys//UkoWVD1r/HNAaHJk6X3rTQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=X6OEkDY4/FiZS4JnktgnmzXKYZepuZglB2NaWRSnApLpUkJi6pm72VwWDdn6sa+Sm33nDQBuztHz0envJz5ZZQjIIWQL3sjHftg7flecYs+7KTk7RsR7IgjiWqS9g9s+mNFOpJ4EA/5uZECkd71Z/tFtBnVls5d1QOtThid8wok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=novatek.com.tw; spf=pass smtp.mailfrom=novatek.com.tw; dkim=pass (1024-bit key) header.d=novatek.com.tw header.i=@novatek.com.tw header.b=C8K8IPJ9; arc=none smtp.client-ip=210.202.87.108
X-UUID: b212936a801f11f181a149c3f3c08161-20260715
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=novatek.com.tw; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From; bh=ZsynN+8DvIOk8GF/ZWuneoJbGiC7ln7wtkDXOvCGlAI=;
	b=C8K8IPJ9zlqx36oXfYpV5ecUhaqGuU3caEGfkZzglk+DyCbgSw/IbTOmDJMfKEV6Ubi2SHUU3yborHFlxVZAhxBnOKBFqY5qgO+bOw+kjWAxywiM6KXI18EfZkohB/CGiZQPOiS32Pya6ftpHH6GrK+rjuDlvyisjVygLaedOhw=;
X-UUID: b212936a801f11f181a149c3f3c08161-20260715
Received: from spmgt1 [(172.20.13.10)] by ms1.novatek.com.tw
	(envelope-from <sp_isw1_at@novatek.com.tw>)
	(Generic MTA)
	with ESMTP id 1088219467; Wed, 15 Jul 2026 15:35:04 +0800
Received: from oabuild50.novatek.com.tw (oabuild50.novatek.com.tw [172.20.13.160])
	by spmgt1 (Postfix) with ESMTP id 79E971A1E1C;
	Wed, 15 Jul 2026 15:35:04 +0800 (CST)
Received: by oabuild50.novatek.com.tw (Postfix, from userid 1005)
	id 7CAE6C600CC; Wed, 15 Jul 2026 15:35:03 +0800 (CST)
From: Nina_Kuo@novatek.com.tw
To: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ben_huang@novatek.com.tw,
	toby_chui@novatek.com.tw,
	shihpei_hsu@novatek.com.tw
Subject: [PATCH v3 1/3] MAINTAINERS: Add entry for Novatek NT726xx SoC I2C controller driver
Date: Wed, 15 Jul 2026 15:35:03 +0800
Message-Id: <20260715073503.147552-1-Nina_Kuo@novatek.com.tw>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20260715073443.147490-1-Nina_Kuo@novatek.com.tw>
References: <20260715073443.147490-1-Nina_Kuo@novatek.com.tw>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326707-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[Nina_Kuo@novatek.com.tw,devicetree@vger.kernel.org];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ben_huang@novatek.com.tw,m:toby_chui@novatek.com.tw,m:shihpei_hsu@novatek.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[Nina_Kuo@novatek.com.tw,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[novatek.com.tw:+];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[novatek.com.tw:from_mime,novatek.com.tw:mid,novatek.com.tw:email,novatek.com.tw:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67E8275B7BA

From: Ben Huang <Ben_Huang@novatek.com.tw>

Add entry for maintenance of Novatek NT726xx SoC I2C controller driver.

Signed-off-by: Ben Huang <Ben_Huang@novatek.com.tw>
Signed-off-by: Nina Kuo <Nina_Kuo@novatek.com.tw>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 806bd2d80d15..15df47f9e81f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19234,6 +19234,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nolibc/linux-nolibc.git
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


