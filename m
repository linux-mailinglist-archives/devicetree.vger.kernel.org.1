Return-Path: <devicetree+bounces-318288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pFZWKILZRGpO2AoAu9opvQ
	(envelope-from <devicetree+bounces-318288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:10:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A0A6EB7A9
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:10:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=iKN4FMG+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318288-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318288-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11F38303CD25
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1613BED08;
	Wed,  1 Jul 2026 09:09:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B446F42AA6;
	Wed,  1 Jul 2026 09:09:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782896993; cv=none; b=LURxlP3xrd26GFiYv1rGjw4uCOVkaZvYOqWBtKeNyEExEDyLLfPqnD2kzNv2aZ7btzudfF89MTNa36l+MArKoUIEEo4fusZ2uBdMC2c7EyOtenV1x6tfhma6mPE99GWiXh3ga/+TdMKw7edCjFiA9x0LCGuxMqevPxuYASKuwgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782896993; c=relaxed/simple;
	bh=noJn7mJQsgWOgz52G8yMKwzjXPPCN+EoHw/1TvTzXmI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A5jguICL00znsFnlXcPrzVPOF7SoHhAYOtDNXuhXEVOugn2iwBbqdE0ABDANYPPx8yMgufwvazACDyPbti9Pd8ekEYCgKdmZGa6IIi7H0QziWcKmGhT2oO51sWH1F12o9UdLAJjFtnwTiWyiElzzT6Rn9nF+aTn9/ntLzkHI2Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=iKN4FMG+; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=F3tUEC7RtYlVbwWQFfwwdFjjsr90lp0ihCLoI0ydDyQ=; b=iKN4FMG+lZhmANi3WAwUcoL3GK
	kNhJxc8LmIwWnlYROVGRbBdG1yll15aFzSjDcdeAuO/6BvNnn9D677pkbx4LbeSez5JeQ6jeytlEM
	5Y75HoKrYSUH5lR3s2jVnvCNegGxP0DpYB6YVynY+JnJPQDznStyrydE2jd/TWm8MFXBpS7Zy7xEi
	B46oBIR0Zi2i/P7fWA7TSRaSgiDXjLpRIwnpikv09RxAixvwEArLzkIK63zDV2C4O9EieIi1epaSo
	MPzes+gMx77gbxJBNLJyPFTNyy6Vi8xRuwEQu36DeGeRlk61yeAPvXS5jqvFCPaxno4isgNzkS2He
	T9LwR3ZA==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <Max.Merchel@ew.tq-group.com>)
	id 1weqx3-0009s4-1P;
	Wed, 01 Jul 2026 11:09:49 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <Max.Merchel@ew.tq-group.com>)
	id 1weqx3-000GWG-2O;
	Wed, 01 Jul 2026 11:09:48 +0200
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6ul-tqma6ul: add nvmem-layout
Date: Wed,  1 Jul 2026 11:09:44 +0200
Message-ID: <20260701090946.1479190-1-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28047/Tue Jun 30 23:29:24 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-318288-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:Max.Merchel@ew.tq-group.com,m:linux@ew.tq-group.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:dkim,ew.tq-group.com:mid,ew.tq-group.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4A0A6EB7A9

TQMa6UL has board-information located in EEPROM at offset 0x20.
Add necessary nodes and properties for nvmem cell.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
index 4fa98e6a66d7c..9b70e58868b08 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi
@@ -126,6 +126,16 @@ m24c64_50: eeprom@50 {
 		compatible = "atmel,24c64";
 		reg = <0x50>;
 		pagesize = <32>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			module_info: module-info@20 {
+				reg = <0x20 0x60>;
+			};
+		};
 	};
 
 	m24c02_52: eeprom@52 {

base-commit: be5c93fa674f0fc3c8f359c2143abce6bbb422e6
-- 
2.43.0


