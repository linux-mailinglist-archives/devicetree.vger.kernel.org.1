Return-Path: <devicetree+bounces-303317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCk2GaK7FmqHqQcAu9opvQ
	(envelope-from <devicetree+bounces-303317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 11:38:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A0F5E1E72
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 11:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0C143008FFC
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 09:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DF53EDAA8;
	Wed, 27 May 2026 09:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="oH/PHzYv"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF793EAC8B;
	Wed, 27 May 2026 09:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779874670; cv=none; b=gu+5bkGJS95leuSNbd+20z5a5EBJpixhMwvegtBZ5dFjaDbPDf85eNBV9HHELE+1Lpcx94C6BslOQCC77uCx0r+FRyqDYwEyGKXjU8uyj/0u6kI8dkvGQTJgxp6VBGs0L8NfQo9g0OcKjcf2yZ9GMa/69tHSKYvWJafJegCtoss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779874670; c=relaxed/simple;
	bh=IFW3TFULvw5guIIO/NOVp7nYEWGRZHHHkK9ypkNGsx4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aWGtU2rbqw/kZ2HY7wRIAEkIR94RSdHH+LQO/cGIQYIvxdMYXoke9HnrPH/WsJ0VxrCgPWnkHEIe4qzgTkjgmPTRzZmJ7dAfIes2s63dH0DDkIiLS6Tdjh5Li75OW0H1+4AyDEi6fE2BsUU6Ycv5nv5E1RlPa1C17+mVBNRLNgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=oH/PHzYv; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=ZqjmhqkgJdbO7oHJ1AsMR24ix2j+E0GMg0GqfLOc6N0=; b=oH/PHzYvmpt89Fm7LOKf1/Xirt
	iUteiybdYKzpEA9b4wTzWWeYPUoHQHIqE5wHvMN0RABtWzC3gT1934pkKplYDd52E4Mw5KlY20mom
	7pNKApfm+s13Ok3bPUJxi8R0g4XmXDwwgGmgwTfZo3wfWWCL3S/neH9Wen9ACFVWwil3rGbIMcknu
	6gFzItbzm82+N5qBWe1CDP6+6Ph2unsSHXbQ7uIfxRKTToYfvi243im11C68VjkPQPaad1GzH0U6q
	IlMKotuSMfF6E++M9Puv99e93njCRmG/tah4ronOFD0kz6yKjJC2sE2YpRARJ5IltTZwPOb3YE7ZY
	KaYTP1IQ==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <Alexander.Feilke@ew.tq-group.com>)
	id 1wSAhl-0000JE-1a;
	Wed, 27 May 2026 11:37:37 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <Alexander.Feilke@ew.tq-group.com>)
	id 1wSAhl-000DxB-1r;
	Wed, 27 May 2026 11:37:36 +0200
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx7: add nvmem-layout
Date: Wed, 27 May 2026 11:37:17 +0200
Message-ID: <20260527093719.160777-1-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/28013/Wed May 27 08:24:49 2026)
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.20:email,0.0.0.56:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.871];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.50:email]
X-Rspamd-Queue-Id: 55A0F5E1E72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TQMa7 has board-information located in EEPROM at offset 0x20.
Add necessary nodes and properties for nvmem cell.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index f3d7a2d0cb7b8..e1f740edfb763 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -151,6 +151,16 @@ m24c64: eeprom@50 {
 		reg = <0x50>;
 		pagesize = <32>;
 		vcc-supply = <&vgen4_reg>;
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
 
 	at24c02: eeprom@56 {
-- 
2.43.0


