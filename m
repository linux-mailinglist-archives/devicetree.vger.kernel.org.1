Return-Path: <devicetree+bounces-266444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENvCLinFlWmTUgIAu9opvQ
	(envelope-from <devicetree+bounces-266444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F8B156E64
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4987304743F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9A3329C78;
	Wed, 18 Feb 2026 13:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="q7/EEb8d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay107-hz1.antispameurope.com (mx-relay107-hz1.antispameurope.com [94.100.132.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF211329C53
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422905; cv=pass; b=R9aMxNKN06BlnPh0z+b7tQB2XHP6gppJn655M3ERUq1kpdLnuM0TlzQgTCe86SqumCkck2zfIi7gEMD/W3EsruA1lnaHg8+NhqGE1ypflsuXoY4aMRUMw2RCt9daDFT/xM2ySl/FE2ZbsucdeIZwsB5EAl1tPTfcpJybAKhShug=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422905; c=relaxed/simple;
	bh=sWUXrg+TMuP+nw/K7Domls/wcuN+SJ1BRKrgc28lk+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OJFbfZ8gRwbF2XK6/rwgDsc9KlAstGeynJE9vZ22ukypti1OKTEUkdTOWgr/SxTTd+dv0rc4gi2UYKI+/ktlO7wBxFZKScwJMTrau8P+TfeY/vHy1t+lnu/O7MperJWNUslbsiTUotTfkjJid56U/C+9aHbVdm8LwRCRpNBPd9Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=q7/EEb8d; arc=pass smtp.client-ip=94.100.132.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate107-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=HmH2gnYHLoGT+gPFoqYfzgcg3mVohz7j0M5EpQAudWE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771422875;
 b=ZJIomDEnQPprmBBEq1g/36rCqvOfDXgjpNwhs3AIDB4vCijT9SIBqBIhEn4ZrXv1UYOBWU0U
 YIjIYfS6iYVQhym/rsbuhyGtOc5OLGkfG9nZ9FwHF35Ji3PML40/dSsh713RsJUdPl7czpRACRt
 7QBCKXRCoYThlaTKQrPC80usBoRm5LL3eDTk7pUA8v9ziO3DoAWsCW4kF5Kag3oXxpDEMf1zm7S
 FoojJX4GD51RYNmEXPgEKksxrnmxxxFU96d4HPkUeQS6k33Pd3V7DHAR3o3yO1pVQEuJd81F08N
 UjueE9r8ihLrJcYo+qXftauGpLzwsdwPsebiisVg6Hzsg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771422875;
 b=E5kesqCMCdYVCJWwbAUSjbbJ/X+d3uxe1yFF8qsrLqm3GRjr1MmYwS1dGEccnEF5eanGxuzX
 5r17z4i6JkERLmCFmn34XmYNd44CSxlhFsHWkKP47YmrBYvFYb9+OGUkOsMCub5uDGTjN6LFK4t
 HWqyk9FRnWzYSQZGXkipKWD1J+1TXZQojaO7Xmv+qCnG5XltKDnlweK75kRQ1cRraLf/P9fDQ7i
 WcaYCEfie/tyQn2+ORDZiVkG5W/qTs6p7A1SqdIaYi7nY9iYhVE3iajotSXnrPjCJjXWgjaB4I5
 CeoGHvfsSMljMdsEXuDusdyIL4VwnuSm2dSwKqdSJyOuA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay107-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:54:35 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id EB07C2205DE;
	Wed, 18 Feb 2026 14:54:26 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: linux@ew.tq-group.com,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] ARM: dts: imx7s: add boot phase properties
Date: Wed, 18 Feb 2026 14:54:12 +0100
Message-ID: <20260218135415.204974-2-Alexander.Feilke@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
References: <20260218135415.204974-1-Alexander.Feilke@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay107-hz1.antispameurope.com with 4fGJ0M4wR1ztZxp
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:005226ad2035b8035f0646bf4904b0c7
X-cloud-security:scantime:1.935
DKIM-Signature: a=rsa-sha256;
 bh=HmH2gnYHLoGT+gPFoqYfzgcg3mVohz7j0M5EpQAudWE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771422874; v=1;
 b=q7/EEb8d9py+UjacGdpQALPH84TE+r1nzeBuPS7ngk3pLFoQhQFCjbUDA5JCq5HeEVdTRex4
 dJcPQLj+rJGaj8I8Xqjtep3vifhtoEFd5kMEULt1l3acCtDJVpKz0ZjNMkMy3dL5dAg92Ji7mUu
 lEwW7fLDyIETFNKJL+QQYDG4eDNwdUn210t9Q7TaUPMh7ZFNcfA8QQcdjWpBcdT3D1ax8PL5stL
 0rcOLfyfuxvjWd02kowA8z++NI/QsEOwzJDAF0JCuvfLKY0hNRku7Ia9jOFeHued9AZ98fC/21B
 3gojYt2sxksQhaY5Z/nhnbIjXv1Louj7ERB6KapomgElw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266444-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26F8B156E64
X-Rspamd-Action: no action

Adds boot phase properties to essential resources in imx7s device trees.

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


