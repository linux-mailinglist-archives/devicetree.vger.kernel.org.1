Return-Path: <devicetree+bounces-257364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA4iE9g1cGl9XAAAu9opvQ
	(envelope-from <devicetree+bounces-257364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:11:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 858304F8F6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 61844863E50
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B00426D00;
	Tue, 20 Jan 2026 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="H5veZTm5"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEA842669B;
	Tue, 20 Jan 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910796; cv=none; b=Eh/r82RJdLHQGhrXbNeQFUoLyWTiwbMXWpeGXyjeDsk1ORNcU30MEydTErTR4n+fsCcqj5MOjfTClK3BHkVhNQVs6frC1cqUDkXLwAAsFfVgqP480JkPlWUovqIShyUcIzvmBvKUcH0NYrZMT6swbbRKGsjVSUdzCetgvkEPggo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910796; c=relaxed/simple;
	bh=C71JsLsXZTzDeNE29wxM5SpxjiRFCgffC1Vj45wWDMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=WcRuYigOvyUKuEcrdAv7HSzRKsVn6gQkOaN20ikN6zhVexkhrtUot3Pzp8qFVt+MspUr6Akv6EXaR5ZgV+aZzkkm4TCnGR56UxGrtWMjZaACuEgVuD/gRqsyC+Q3KR15AwGH5mVglQ3CeBh3mQHfGe22QJg/Pb4840r46wHLNpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=H5veZTm5; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768910792; x=1800446792;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=C71JsLsXZTzDeNE29wxM5SpxjiRFCgffC1Vj45wWDMI=;
  b=H5veZTm5EWAxT9wjDndPVFdQi/sJC5rSFg9HkX77j1eD5CsmGaB35XNE
   llqYHKlbOYFIxNf3CgXyiYxR6nGVXFxqTndXOPnJWp/QnT/BpAwN06Li1
   I4UFVneGtFrFPGQFCznX7F1spddgsvH+YXnPjAsV3OgXQfBxDJWC0fssR
   dgciclmuX5lOyDp3PEc0NUhCjtXdFYkKxw9wuReS7Fw8L68zzN/mYNN1k
   /TPiRbi5UYjcETcAlM2kE/UQxYN0eeREtYm0ailOMStTvifKkg88uaoFv
   6EDzEdfIyHCRKcVY2eZafy69PgG+PM/k11keMepEocADdNF3mM6thoMo1
   A==;
X-CSE-ConnectionGUID: cs3Ol+IYSlGMTOzGTXpEYQ==
X-CSE-MsgGUID: 2u6Oa5lxSUOSLPaebV6n4w==
X-IronPort-AV: E=Sophos;i="6.21,240,1763449200"; 
   d="scan'208";a="59182655"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 05:06:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 20 Jan 2026 05:06:11 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 20 Jan 2026 05:06:07 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Tue, 20 Jan 2026 13:05:36 +0100
Subject: [PATCH v6 3/5] ARM: dts: microchip: sam9x60: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260120-cpitchen-mainline_gfx2d-v6-3-1a16cd1d70b8@microchip.com>
References: <20260120-cpitchen-mainline_gfx2d-v6-0-1a16cd1d70b8@microchip.com>
In-Reply-To: <20260120-cpitchen-mainline_gfx2d-v6-0-1a16cd1d70b8@microchip.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
	"Alexandre Belloni" <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	Cyrille Pitchen <cyrille.pitchen@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=926;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=C71JsLsXZTzDeNE29wxM5SpxjiRFCgffC1Vj45wWDMI=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2Z+/sKCNYXJs/h9ba1v3301/fUJ/3MvJpyykJJpaLV7l
 vC9wHxtRykLgxgXg6yYIsuhN1t7M4+/emz3SlQKZg4rE8gQBi5OAZjIgtcMfwU27NyxdpZldde5
 COG7r6Z947RYtP9SQdNsNo2pE0Nyui4x/E+zdZ5Xs+qf65slUrJc9TaTxGrz1ooVb/21/tiOC1O
 zmNkA
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257364-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk];
	DMARC_POLICY_ALLOW(0.00)[microchip.com,reject];
	DKIM_TRACE(0.00)[microchip.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyrille.pitchen@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 858304F8F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the GFX2D GPU.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x60.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
index b075865e6a7688005d471665459b3f6f1f26f7a4..58d0a2ce9218999e469dc435e21acd8837a4bcad 100644
--- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
@@ -353,6 +353,14 @@ AT91_XDMAC_DT_PERID(26))>,
 				status = "disabled";
 			};
 
+			gpu: gpu@f0018000 {
+				compatible = "microchip,sam9x60-gfx2d";
+				reg = <0xf0018000 0x100>;
+				interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+				status = "disabled";
+			};
+
 			i2s: i2s@f001c000 {
 				compatible = "microchip,sam9x60-i2smcc";
 				reg = <0xf001c000 0x100>;

-- 
2.51.0


