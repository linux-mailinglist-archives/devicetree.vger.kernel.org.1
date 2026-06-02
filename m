Return-Path: <devicetree+bounces-305798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QOE8O10gH2oJhQAAu9opvQ
	(envelope-from <devicetree+bounces-305798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 20:26:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2344D6310E4
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 20:26:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=dllwvIo1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305798-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305798-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D815307AE43
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 18:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C727F3932D0;
	Tue,  2 Jun 2026 18:22:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC9F39989B
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 18:22:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780424525; cv=none; b=JMggv+A95JfcUpcXjRiQNo6bicIVVzXcAlf5q87NdQorTqm8+9v/tEIU/TIoRLHjyO3xTN9TUUrQ7ALfqaHIhPd+6okUsy6FZmMaGw1GI3VMB2iMllfZvQWkInlgy3ynOMZA51M6NEYQz6CLE+hejJbCBZw7zMqOIQhzqmSNUOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780424525; c=relaxed/simple;
	bh=PmP32Z5SuzhDO/U09CV0mXtlLa7DGEDaikpLRBKNtfE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hNR6BfwZ5MVxJaTSCzO83UtNs8En0nHoIjpWewGpV0GHz9/HnYrir0oSC0yz3hNfZAOLhBE3C1cR3Ad6SQxtaRVyvtrLN15bdqfZRzb0FTP7aEf5TIAkZ2tD35O4TFwf8HpvOgwZ4v+j8V71MYkjgZjhx4a+d1e6roF8b0VauDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=dllwvIo1; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=9Su+m+d5p7khM1
	WSLCaz7yI08m8FCKaC6Go/SFi6vgs=; b=dllwvIo103LruHQyJcnlO1QN2vLwHi
	BJKMz0KrAf/wwzHpdz+zVhSokDaJVG9prGI3vPjagG0mw6CaF2zM0q7L13lwrsZ0
	g4A3r4Asz3HrLiqMrMn+wxjuFKOJMbzsZbIJc8BMkT2KP7EJjGwr/5NK0wmvOquF
	hNyQaFxCxkHw1VyqOfSVsiZ1X+P1OmWrjSbbWscGakD5wxOoYxEK1de4ZCvO/wQK
	uWEoUYrvTyAGL/jdQmxLVYLnsASD4qcsRmD3M93ky0ie/9SRa+amgnm5XWICd9ap
	7tY97obarS/MfrVVOhxbOMD81gHa28auf4m77XaiYOjd8gu+AvpeeM2A==
Received: (qmail 2987747 invoked from network); 2 Jun 2026 20:22:00 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Jun 2026 20:22:00 +0200
X-UD-Smtp-Session: l3s3148p1@CPwLY0lTmssujnv7
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v4] arm64: renesas: r8a779g0: add MFIS node
Date: Tue,  2 Jun 2026 20:21:09 +0200
Message-ID: <20260602182157.304964-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305798-lists,devicetree=lfdr.de,renesas];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-renesas-soc@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	FREEMAIL_CC(0.00)[sang-engineering.com,glider.be,gmail.com,kernel.org,vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sang-engineering.com:mid,sang-engineering.com:dkim,sang-engineering.com:from_mime,sang-engineering.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2344D6310E4

Describe the MFIS core which is used for various tasks including
inter-processor communication. Interrupt numbers look irregular but they
all work as expected on a Renesas R-Car V4H SparrowHawk board.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Changes since v3:
* fixed ordering again (Sashiko)

 arch/arm64/boot/dts/renesas/r8a779g0.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
index 82a7278836e5..8846bac99086 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
@@ -589,6 +589,23 @@ tmu4: timer@ffc00000 {
 			status = "disabled";
 		};
 
+		mfis: system-controller@e6260000 {
+			compatible = "renesas,r8a779g0-mfis";
+			reg = <0 0xe6260000 0 0x10000>;
+			reg-names = "common";
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 916 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 918 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 920 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 922 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ch0e", "ch1e", "ch2e", "ch3e", "ch4e", "ch5e", "ch6e", "ch7e",
+					  "ch8e", "ch9e", "ch10e", "ch11e";
+			#hwlock-cells = <1>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
 		tsn0: ethernet@e6460000 {
 			compatible = "renesas,r8a779g0-ethertsn", "renesas,rcar-gen4-ethertsn";
 			reg = <0 0xe6460000 0 0x7000>,
-- 
2.51.0


