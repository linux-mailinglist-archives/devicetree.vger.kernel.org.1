Return-Path: <devicetree+bounces-321899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MeDAKiXMTGqepwEAu9opvQ
	(envelope-from <devicetree+bounces-321899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:51:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B30DC719F94
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:51:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=g5wwWCFx;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321899-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-321899-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 613FD3009E0B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A9163DA7F1;
	Tue,  7 Jul 2026 09:51:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A288527A907;
	Tue,  7 Jul 2026 09:51:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783417865; cv=none; b=kOJhU1ENsLFJ3Y2FPe6fYYuXMABErfnJcIgwJwCdeD/lzggZjPJIIH8W8xco7FG8S1y11IWqYsat8KXeeuvatoyc+LaqM+fPZ8XiJwkoS9t181CkyS1USVXkjLedtcWb3xQEE+DNVPZzvcnoephEVwSSlcjAxL4BF0fo2vVy5mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783417865; c=relaxed/simple;
	bh=zdZpwNXjeqiy14EFWh1i60TZ/Ge7HNOsQNwnLrxbEF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=toR+L4S8UeBtnVUJvUd9u/oT1VZFMRhODIkYzLny17v2gRbCzOE7faP/GIyF5DREKpP/FxLcdRxaVWANQVcDdDUNqIKVpvKrYkFFLeOpBJ6qO9MIDhTp3ZfYPa2tf0G+bmcTv9EFw7z5STNMNPIwnGaOiDQJYCf6OzQTtN1q1WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=g5wwWCFx; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mG6v8IjVpW52/CdQQXS0ybS6BSbhnajxLfKW5a9p17E=; b=g5wwWCFx06Kl7esy7X3ys80ndy
	Q9qiGiDH7rZRQi8IbBC/qWzNDIYEV6cUa8bZ2zsKoRPSHxg4zeO+MtqTB3ezYeLL9auBLoHdgndQx
	mUmMiQKSI9Ur0qwrIxklGwo6pJFJoXp6VHxxiufBhAoQy5C+5WMWoKQcwFNfhvcBHvKDjzbJPrCi5
	iAV28whcTfKiak+eEPDyoG0zmqvKdUuUSACiPv637eSumtfYjEEkH5qv3/LMXNuUMX/OKwXO2vgm0
	uh3ZLMjGQhMdnf5LiHYYRoH4PSxLi8HIR7ITRgfvGAGWy+DDdaiuEba5KLcDkqLGpehIh++yDcYPD
	8y2fxjFw==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SD-000PVw-2y;
	Tue, 07 Jul 2026 11:51:02 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wh2SD-000Ck1-0u;
	Tue, 07 Jul 2026 11:51:01 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Nora Schiffer <nora.schiffer@ew.tq-group.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] arm64: dts: fsl-lx2160a-tqmlx2160a: add aliases for all 18 DPMAC instances
Date: Tue,  7 Jul 2026 11:50:50 +0200
Message-ID: <20260707095057.1745867-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
References: <20260707095057.1745867-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28053/Tue Jul  7 08:24:37 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321899-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alexander.stein@ew.tq-group.com,m:nora.schiffer@ew.tq-group.com,m:linux@ew.tq-group.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid,tq-group.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B30DC719F94

From: Nora Schiffer <nora.schiffer@ew.tq-group.com>

Each TQMX2160A comes with a block of 18 MAC addresses. Define aliases
to allow firmware to statically assign these addresses to the Ethernet
interfaces.

In addition, udev can use these aliases for predicable interface names.

Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi
index 89a4765737b4f..5ca950ff908e7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a.dtsi
@@ -8,6 +8,27 @@
 #include "fsl-lx2160a.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &dpmac1;
+		ethernet1 = &dpmac2;
+		ethernet2 = &dpmac3;
+		ethernet3 = &dpmac4;
+		ethernet4 = &dpmac5;
+		ethernet5 = &dpmac6;
+		ethernet6 = &dpmac7;
+		ethernet7 = &dpmac8;
+		ethernet8 = &dpmac9;
+		ethernet9 = &dpmac10;
+		ethernet10 = &dpmac11;
+		ethernet11 = &dpmac12;
+		ethernet12 = &dpmac13;
+		ethernet13 = &dpmac14;
+		ethernet14 = &dpmac15;
+		ethernet15 = &dpmac16;
+		ethernet16 = &dpmac17;
+		ethernet17 = &dpmac18;
+	};
+
 	reg_vcc3v3: regulator-vcc3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VCC3V3";
-- 
2.54.0


