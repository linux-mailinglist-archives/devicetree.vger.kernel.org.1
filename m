Return-Path: <devicetree+bounces-267000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGEoKB13mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-267000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1E168970
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 281F2309607D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2F134DCCA;
	Fri, 20 Feb 2026 15:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="cRdZrZH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay116-hz1.antispameurope.com (mx-relay116-hz1.antispameurope.com [94.100.132.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C07314A4CC
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.108
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599606; cv=pass; b=ZQJCAQ+7u5ch3svqfCqV4nya6NQOPWeX8hJP9ARK7kmtV/a0vZ2jBnob6E9iC2tjE7tNTPqK0j5pQOTW3d8vJVZKPDMlqVyPggl71IzfsGmPyb2JyOCzfd7TTpei9AcBr99WvT9YxwSIUbrBfisekM+un6gH8icpDghsizNmoRc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599606; c=relaxed/simple;
	bh=apIPLWpNIr79/REjp6Ox0yJLQ55Z8pQJ2XbzCvjz4GY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R37b2IMcalINqnbCR4bxd+0+r6WHlYac9gn5pAXGQI7AkkM6bteVkPSgIS1BpCAGR9jqlFKI7TqNJhSj2UnnuxS+mbUYTFtZD/LTvFvRxrzcoFBuWIIal5NFGLeaI817YHrbfnS96RtoqLsJRHZHJUHwjDInb/WiQs4lerVQ/kw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=cRdZrZH9; arc=pass smtp.client-ip=94.100.132.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate116-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=lhvqRKEdBFpg6Tb3T3Vs34pdHi/UJgksuj201a6fjtY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771599572;
 b=tQ5dg5IEuaSb7qtTaYXS9IxHaeIij0kpIJe2/cuOofplvBjdULfRhwFeoXMZeZnk7dXijDI8
 FWDuyYugqp4SxJ/v+D2x8GXXjrkSOh1MDpsxjjwXf/pHjGjCPazu0NXR0ody//64IdMR+x3porE
 JC3QtLo4nGPEohN/Max8Or4Juiq/3/t/mPKLwn5isK9DEyNiBNn769zdrLl384/kYgPpsNwHxMF
 nYK09HfJUGBm7tk0dYV8j4ZwvvLnoL9VhjIU3sG4eR9YiXcww3AN1C+1TY5OE5IDjA3DLb+HDJ/
 eidsbrcQ0K/x1MRlzlbUVH/DcTZUkwPUHfRNCOvwZFO2Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771599572;
 b=OPfflxCha7GZYe4/A9UzzEeJdRkDOErxt1k13wCVAFPCsWpq/6llukCPMFOxhWOh40fMpjEa
 c+HAMXqJQUuiNYgWt3dLFE/B/turzT9lNi3wLrHGI541bL/RKOo+k0S1WY5c1Zr27Seh20GkCGg
 KT4NI5WvPTaVXaWbChshPLA17c70DXXNvEqOodRPdiAwtF6Pk2btidH0tIi7UYOzD++fCxGMk9i
 Gps6D9kg7GdDjlpXEIK5QzGX0thAA2fR/DoqqfbDu/HEILvrjE5rS1g4YIRfaTWTP7iZnZc68M8
 MO/jxGGYk31jQslvPz4R+TuEcR8O93J5U6ljVGPEbi7Eg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay116-hz1.antispameurope.com;
 Fri, 20 Feb 2026 15:59:31 +0100
Received: from FEILKEA-LNX-W.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.feilke@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 9BEB9220C4E;
	Fri, 20 Feb 2026 15:59:22 +0100 (CET)
From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Alexander Feilke <alexander.feilke@ew.tq-group.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
Subject: [PATCH v2 3/3] ARM: dts: imx7-mba7: Deassert BOOT_EN after boot
Date: Fri, 20 Feb 2026 15:59:09 +0100
Message-ID: <20260220145917.1797286-4-Alexander.Feilke@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay116-hz1.antispameurope.com with 4fHYLN53sMz9sQ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f11760d955dda304ca308bf5bc77bde4
X-cloud-security:scantime:2.105
DKIM-Signature: a=rsa-sha256;
 bh=lhvqRKEdBFpg6Tb3T3Vs34pdHi/UJgksuj201a6fjtY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771599571; v=1;
 b=cRdZrZH9anLD5A5O8zr3lcJQ6M+QIG+bQDu0SpRkL7wTZNXN0QYYSkoUg4wIkVRAkDWc5mBm
 a4E7+YCd+Gf98QJY3X64P40sfB43+N3o5g5psXkZ/K4n5uxqh6jBOHrpdCnGRaQWP/q6lNESQH1
 2dKlxJhylHu021xqoU8OBmg4OGX8446ugINm+xyflcN3ff5D867/wxRVgjSTXWNOi7pkJZUxdeE
 dw0tWKJjwOsC5TdKnQKbz+9Si+rFgQ8uBZKyuTJVQSNtMYuQQJY0ZGHP/4S1dMl5B92i9NdtZIA
 Pt2Q+zVKxvBgqPBEMzB52IxyFe8GGBWya9pW9/5BLUwcQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267000-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[0.0.0.49:query timed out];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[temperature-sensor.0.0.0.49:query timed out];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[Alexander.Feilke@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.49:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim,tq-group.com:email]
X-Rspamd-Queue-Id: 51A1E168970
X-Rspamd-Action: no action

From: Alexander Feilke <alexander.feilke@ew.tq-group.com>

Deassert BOOT_EN after boot to separate BOOT_CFG
circuits from LCD signals.

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


