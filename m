Return-Path: <devicetree+bounces-266999-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMhbMwp3mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-266999-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A74C16895A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BB4A304E0C2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77FE34DB4C;
	Fri, 20 Feb 2026 15:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YEzESEbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F6932C957
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599605; cv=pass; b=fw6q2G8XxI1NEb4IqxG5pSadzKS3r+sGWoJP7gtohEHs+VcqHWrta3nYs/b+fRh4PSNV3MqLhlHH5xu31R9KUTzGiXxc3AB1AhRGQva3I3aGp6x2IdrgBdoFVPZ0Tf2mWCx9MSLimiot1gTtGH+s2cLsDmAcyEVU6oGB+H8TxS0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599605; c=relaxed/simple;
	bh=3D2Tp2ehvbGdEDtmqGKDfVWCYZgF6qNl/YW1X43mlnM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FpurelZdH6uhmBk4Z54UYKtopqZlv4wvBu1QghyXnuoGBUKqsZV68JK1yaqyi+G++HNpdzglw8AHD+9A8wTc4uDBbgL5oJjzHhPYfxrRoa8/JwNl66zchTsTifxOxzTgUe61mh9TFrvYJsP58rYMOT5ngdvyb/xmOYT6aEVrNXI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YEzESEbs; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=68DvBw7C0r/sh/Gh8ps74CB7ldatS0EygipCKbHo5Hs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771599569;
 b=Fc+8hYeDhibL/VOJG6fnyHTojqcSECseyJvn8iKPavlXsfCXb364QoZ7AT2Zimn9JXYLl44u
 OyI3NU2b6IC6S5jlpMqgzLSSvNI2Nbmt41eQdvT8B7hS3pRg04VdAYmz2ID4pfG6Efs6rUs6jO8
 8VbapUQd6tV6xz6DyIzfkCHoh1QfcCPCIBcP8dJS96RA36dWMXreAgKLaxEmysaNth15d8pb0c4
 aloIY5yGRMx/WwIczDfqEx445UOsJ6lwN6Fy6MkoWM5gWqtaMKJhgJBrvQv5UkXcVEwUSCl77L1
 4YydYeZpe2znzlP4mc5gBxxZMtDosrOnih1CzUc7VWvAQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771599569;
 b=cQQeW1+IT9zciTwuPYZVLl5/jdt3x4y1ED83ZrDu8i6ybg8piriEa09/e0PCu+SE/PG5hn1M
 YOesutUoXnJApMu5P5UCaHltcVmC5/UIi8nj+1SoCWXlJO6wiuQckZkOMyRdUaGS5mNxdHQ9z+p
 imFc2p/Fof4Z9OkNJL8ayK081r7op1LWVr/RoqXgsVPplO6TbXr9hW+uEJNb4r+NSJafarikT7J
 cY66ZV0ZkynY61gzG/4CwAgFVcrbzbghr66shW4YLnEuZf9Bseh53g4neXH+lygAh0HuoEC4au8
 2dXhp9HCQFEv+M0agNsqwrBuUJyW+BPcel+K938oiCa4Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Fri, 20 Feb 2026 15:59:29 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 76B8D220B38;
	Fri, 20 Feb 2026 15:59:21 +0100 (CET)
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
Subject: [PATCH v2 1/3] ARM: dts: imx7s: add boot phase properties
Date: Fri, 20 Feb 2026 15:59:07 +0100
Message-ID: <20260220145917.1797286-2-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220145917.1797286-1-Alexander.Feilke@ew.tq-group.com>
References: <20260220145917.1797286-1-Alexander.Feilke@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.feilke@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.feilke@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4fHYLL0kZXzWxwB
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:c614331d226334654bdcc2f6989c9275
X-cloud-security:scantime:2.494
DKIM-Signature: a=rsa-sha256;
 bh=68DvBw7C0r/sh/Gh8ps74CB7ldatS0EygipCKbHo5Hs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771599569; v=1;
 b=YEzESEbsSMW0hU67eUucLpvqn4fZ8g9Jge0DRtqb3CXP/cBti7k8+D1SPH3J7w0JeySKhaA3
 kRJUFGMfUMb3D78G4ZZDHqVhcla50AhxEQWp2yg+hg+03EKBVDLp9ilFh4kGUJxgFLA2KPeTT0L
 AB2mZJtvqkD+aDG9hn082IDCyusXPbW0fFcN+Z7RwtDklw5FK4t7BZYZsUWO/P/WoABmaCpUYeo
 LN3wrjsbi63HByeN71j0ukCyOCldTvxgSxuYdvc5xZvW6Ayi9WNCYHLVZW5Gqr2xsIMUB+1+Q89
 SlDfps5M9RnWpPGgT0fElpfnmtucL2W/3rNUwe7Y9XGrA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266999-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A74C16895A
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

Adds boot phase properties to essential resources in imx7s device trees.
This includes the buses aips1-3, iomuxc and SOC access.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7s.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
index 9235dd7e93bb..5c9be24ba7c5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
@@ -209,6 +209,7 @@ soc: soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&gpc>;
 		ranges;
+		bootph-pre-ram;
 
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
@@ -371,6 +372,7 @@ aips1: bus@30000000 {
 			#size-cells = <1>;
 			reg = <0x30000000 0x400000>;
 			ranges;
+			bootph-pre-ram;
 
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
@@ -543,6 +545,7 @@ kpp: keypad@30320000 {
 			iomuxc: pinctrl@30330000 {
 				compatible = "fsl,imx7d-iomuxc";
 				reg = <0x30330000 0x10000>;
+				bootph-pre-ram;
 			};
 
 			gpr: iomuxc-gpr@30340000 {
@@ -712,6 +715,7 @@ aips2: bus@30400000 {
 			#size-cells = <1>;
 			reg = <0x30400000 0x400000>;
 			ranges;
+			bootph-pre-ram;
 
 			adc1: adc@30610000 {
 				compatible = "fsl,imx7d-adc";
@@ -902,6 +906,7 @@ aips3: bus@30800000 {
 			#size-cells = <1>;
 			reg = <0x30800000 0x400000>;
 			ranges;
+			bootph-pre-ram;
 
 			spba-bus@30800000 {
 				compatible = "fsl,spba-bus", "simple-bus";
-- 
2.43.0


