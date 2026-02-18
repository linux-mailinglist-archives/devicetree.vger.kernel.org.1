Return-Path: <devicetree+bounces-266445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONkqNzLFlWmTUgIAu9opvQ
	(envelope-from <devicetree+bounces-266445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:57:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2DA156E82
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4463304B4EC
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4DE329E68;
	Wed, 18 Feb 2026 13:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ou1zznVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay68-hz1.antispameurope.com (mx-relay68-hz1.antispameurope.com [94.100.133.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6CF329363
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.234
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422905; cv=pass; b=LO11SWJP+mDXa9zmJ9BAF0SC3DJpVW5jmDqQ12bh2C2+aSuN1KPaKDCEGhi94+vaBB/0NwKcJwXUuCFaTmFUXt61LIJHO11SWyrchFSLiF+5/3sA3ixb+psSWCtjK9cY2kTieHJnpTgKpPxiLpT4T29vzTqT4ilIGOdDJoszbZk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422905; c=relaxed/simple;
	bh=zlYmR5pqQJ626KZtxqq2zRLEQk+zc3UZYmpHkkXEaaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DjDyO8QLbhVGrQiMwVM0V4NIUQWgwiBdOofIdb1F+xY06dR1YVOV5IPLzJeCSg6HL/GZHF98VovRMB7HW/HwCVmckkn8KLFRoNOm+okK2whj0/r2zjzXYHsXYl/qye+YapJQmdYdB0LUB0XCuLGzhcMKWFi+XhY/xyyjJYeTDQ4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ou1zznVa; arc=pass smtp.client-ip=94.100.133.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate68-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=q+Tm8R4GAdM0m4OtqwBsV1ejjLiRRji4g58Lasi7wdg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771422877;
 b=aS/Xj3UhQRsmU3e4hdkZ1lyXvZIql2T8JC8wyKvq1moW+BtA6EFenlQOmA193kLnpeO4ehR2
 Uf013ShvsuZtK+evJcsNGwGDcBCr2XudR15HzhbLabgIdbzFtlMHHNRr5l2yJvxSnDRIPk2jah4
 jM9nY8OySCznud0l9khyMnN/vy8Spc2xAO/MfYThlBe34xW8NvUib8IS2961ZvvJZ9OWRebLdVz
 H5KS1hEZd23JUBYqQ17PuWtzAlsZ2cQFnKVJMTHwlNhhBRBz/iXkMkdBgG1NuATGr3tLPNefvHt
 xPEEEcu3EVXjiA6MI2cNXtpfbSOZ1J/qhYU+N3Q9pM1gg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771422877;
 b=Mi0QFYljrgZ3q/+UpkGYve54WTxDRF0JUB4vLnjNh3vw54nG9Mm0LJzCiNWioS166b1MxAV9
 3lBxZA7LXHjceFpxGPlAU51ZLP6agusaefZccM6UoPCPkIpUY2Uw453DanKAFD8iI8cyExxpiHV
 IZ5EKopHHrVUg7GnyZikqKT8rgmy6a7AaF4XnyCQcP0lcZnjfgf30MGuXtuI8Gn8jEeqoASfp3A
 5IrMAd849lb/CdJXIwrIVY6g2oONs9Vx1YwpaKM6KqXCnTgm795HNgJ13Eo5bgy1TzYG8SkeD1d
 6xnOrvCqSFnfkmup/D96ktmzFZw4vGAIYYu+On7WAvvOA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay68-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:54:36 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 9E361220BD7;
	Wed, 18 Feb 2026 14:54:28 +0100 (CET)
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
Subject: [PATCH 3/3] ARM: dts: imx7-mba7: disable boot_cfg pins after boot
Date: Wed, 18 Feb 2026 14:54:14 +0100
Message-ID: <20260218135415.204974-4-Alexander.Feilke@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay68-hz1.antispameurope.com with 4fGJ0P1wlLz32CNC
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ce6b24e2a0fcff62cc441489d1e1fb3f
X-cloud-security:scantime:2.173
DKIM-Signature: a=rsa-sha256;
 bh=q+Tm8R4GAdM0m4OtqwBsV1ejjLiRRji4g58Lasi7wdg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771422876; v=1;
 b=ou1zznVayBCRpEEgWEB2S21V6wWyy6KT0TGAZcXE+K9OdhiIRt31ZCtt7M+9OGFSUVkUk8Vf
 QbQM6YqoTbFbSp5O2qMg3TRwMomIvqxsbBGqRl4KJjJ30yJH1jd8m6aSA4vxsWCG29/nHgOIMt4
 np4yRPazrMc6viTF6bOzX00Jo2nNtRJZoKvl+H6tj6Dq/+QXYwbnmdT3W0qllwvlw6heyb49vbQ
 OWv8VE9sDcMdkv21dROsouvNPmKX+oGgkrn1GDsxDtuusYr1vL91tcadiVGBslCiNGFXGs8RbEt
 iwPrc9b0oBlcJtpZxytMqLD6v3P03XIQY/1u8RD+FA6jA==
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
	TAGGED_FROM(0.00)[bounces-266445-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,0.0.0.49:email,tq-group.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4A2DA156E82
X-Rspamd-Action: no action

The BOOT_CFG pins are located on the LCD bus on our starterkit.
Disable them after boot to separate those signals.

Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 03f2f2cbdfbc..4192adb27223 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -287,6 +287,15 @@ &flexcan2 {
 	status = "okay";
 };
 
+&gpio4 {
+	/* Deassert BOOT_EN after boot to separate BOOT_CFG circuits from LCD signals */
+	boot-en-hog {
+		gpio-hog;
+		gpios = <3 GPIO_ACTIVE_LOW>;
+		output-low;
+	};
+};
+
 &i2c1 {
 	lm75: temperature-sensor@49 {
 		compatible = "national,lm75a";
-- 
2.43.0


