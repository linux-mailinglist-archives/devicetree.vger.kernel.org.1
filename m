Return-Path: <devicetree+bounces-274186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB9hHGCJsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:25:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC09266703
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9FDD2300C9B1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B754E3D8919;
	Wed, 11 Mar 2026 15:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lDV2ZZj6"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302031E835;
	Wed, 11 Mar 2026 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242514; cv=none; b=nJlAtOlvJsM0HZ4tcBoZCvyNe+QamVyXp3BezpdBE5Zc7Ofc+71EKU5DwEgafNp88VQP74ph508vV8Z5NVLEMICJEudbW7Tx4yuBNOQbtquqKBPqH4uH6jDLdO3asxx7B4ofEw6+JmHQpdI4f+zUh6xomQ9GEoYUogfcJEReh1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242514; c=relaxed/simple;
	bh=smT9zxqH70VUwEzQSzPNrDc2PRpij5xt5/StY9XCE4A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pPFsUAszmyFYDUHaXV+GfnBmrLxYQ/dKhWRwWmnRKVueGUOJhrrrufJqYtpxVPKN6O6gHHdAY913OMBwkxf1iMNa9vrqdfCz/ludLWzvfNtJJLxwRSLcFziAEaQFR6CBFehfmqnmK+98g5FGgbdq2Lx7SssIbey9v+XzxIlFvPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lDV2ZZj6; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=0+yB69un78P4NrscXomjWtgDImz7mYk9jldzNuqG/bY=; b=lDV2ZZj6mmZUaRzTVJQFOrCWP4
	wGO3yfY4ABQC+4NctQdAL3t4ysOjfM70seeKquID8KgGVqwcD4HYrpcHzOiWupQ/RFbAVVjzMiehl
	+YCn4A2jLnKpXdeLsUyGmQnmYvo13Cedt4PkZu/ZExN+uNMJSm7vKfmAuDgZlbXO7PR2y9mSX5gKq
	xXYRAxO60Q/WA5ILYSiADOOGWlegJaCItZ3AGGuEVEnnN7lNrVn3WHornC9p1HYbERB7tbj3G+jeb
	ynTeQeStc1w4NE2i5mb4b1y1BO/7t+mR/8cxrcGmGImCH4I4N9QlaZWMOQZ0zqcx8jVt6OgPVi+Mj
	Xwd/bk7A==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KcE-000OvT-1M;
	Wed, 11 Mar 2026 15:32:50 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy03.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KcD-000GoI-2V;
	Wed, 11 Mar 2026 15:32:49 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org
Subject: [PATCH 5/6] arm64: dts: imx91-tqma9131-mba91xxca: Add parallel display overlay
Date: Wed, 11 Mar 2026 15:32:08 +0100
Message-ID: <20260311143217.1700704-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311143217.1700704-1-alexander.stein@ew.tq-group.com>
References: <20260311143217.1700704-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27937/Wed Mar 11 07:24:53 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Queue-Id: EDC09266703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This adds support for CDTech S070SWV29HG-DC44 display on parallel
interface X3 on MBa91xxCA.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 24d5b0c2ddafb..64fe9487b1003 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -417,6 +417,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx91-11x11-frdm.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-11x11-frdm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-phyboard-segin.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx91-tqma9131-mba91xxca.dtb
+
+imx91-tqma9131-mba91xxca-rgb-cdtech-dc44-dtbs := imx91-tqma9131-mba91xxca.dtb imx93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx91-tqma9131-mba91xxca-rgb-cdtech-dc44.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb.dtb
 
 imx93-9x9-qsb-can1-dtbs += imx93-9x9-qsb.dtb imx93-9x9-qsb-can1.dtbo
-- 
2.43.0


