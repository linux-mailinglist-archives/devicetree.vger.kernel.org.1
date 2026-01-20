Return-Path: <devicetree+bounces-257365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLXFN2imcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:11:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC354FF1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C08FB863F3A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C0B426D2B;
	Tue, 20 Jan 2026 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="vpRcOoJS"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC83425CFF;
	Tue, 20 Jan 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910796; cv=none; b=E5hOa6Y6/lNDLjqceLD2gP+j0Ypne3Wmgl4sk+aLZQej/sPX+UoTtGybcBjMDl6HeQPc+F1oC0Hse381oCHiHDC8cYqiDAUoxLOhMRVe1NYBVuuWRGRsN+6FbqEid7JaSfxY+FL8IH0+rYlTP4IvRit8yisI9i5Cj2LEUGnKBR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910796; c=relaxed/simple;
	bh=SJcXwEjPwEyF7P0cinELr017oWH1qV9HtV7GDFf2afM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=u80S8/MA5/x2A1+RgRAsjShe7NBclh3UzAPl4ES6j113RAZdxXQyE5Yx2VQlcUbP4atuWVaUyQ8/oN9nhhBnU0rvNgsfGXiTBYmL74hi9FviYGlQJF8jc6t9XH2uXYDz9wniN6yeBPmltZ2s+rZFmxDO96A59+UHIw6/chyVBK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=vpRcOoJS; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768910792; x=1800446792;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=SJcXwEjPwEyF7P0cinELr017oWH1qV9HtV7GDFf2afM=;
  b=vpRcOoJSDliTaB7X4rFjevpzgVNIUfqvckeRZl++5pYg1dQLQBZUjSuu
   DV8OQQgbQb7CON1J/IZzoxGnB/87Z8brF0mSqR/ObbFZKB7ccfYDT1ujs
   8Lg5NGuAl3oQ+BcdCcRue7NIQ5HGdFpgpaSQy4XF9kW646O5WiCH/P2r0
   eAaKNqlO04tfhSNIbqfuYw20c0Yn6mAtNaQ1SGfEVZsKhpbqLiBOI7/rs
   eXJqKn2tUbgmR47qKy/M5K8QHLQ9rUETBD0AAJUJDECFDtLi+WZRzBASY
   ftjiiY/03U+i9J2dsQtVsCQXXhcQpf+FFXFzqmKZJc6Bk4q10jKNlMQvM
   w==;
X-CSE-ConnectionGUID: 4u8z3sgdSr+f+QbSdLjpXg==
X-CSE-MsgGUID: tctHU4N7R1eSf1VsqDLRCQ==
X-IronPort-AV: E=Sophos;i="6.21,240,1763449200"; 
   d="scan'208";a="52590476"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Jan 2026 05:06:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 20 Jan 2026 05:06:15 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 20 Jan 2026 05:06:11 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Tue, 20 Jan 2026 13:05:37 +0100
Subject: [PATCH v6 4/5] ARM: dts: microchip: sam9x7: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260120-cpitchen-mainline_gfx2d-v6-4-1a16cd1d70b8@microchip.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=935;
 i=cyrille.pitchen@microchip.com; h=from:subject:message-id;
 bh=SJcXwEjPwEyF7P0cinELr017oWH1qV9HtV7GDFf2afM=;
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2Z+/sK3IV7TZl9jnyBxkNn5pLLs62/si6xtLzN2SBh/9
 JzloabTUcrCIMbFICumyHLozdbezOOvHtu9EpWCmcPKBDKEgYtTACby/CDDb/YGo7KFt9Ofhz56
 PDHqeUFQ+/cYN8t7Hx4EBec3b+gxEWdkmMVSeZK9qV5N6fs/cZ8IixMzNtx4fPDRKqMMPqUlqao
 LOQE=
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
	TAGGED_FROM(0.00)[bounces-257365-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,microchip.com:email,microchip.com:dkim,microchip.com:mid]
X-Rspamd-Queue-Id: F3CC354FF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the GFX2D GPU.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x7.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
index 46dacbbd201ddb68a7456d6fe1afafa59db90ec8..44ad05af7f969c2c6c13310a85c07375442388e6 100644
--- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
@@ -292,6 +292,14 @@ AT91_XDMAC_DT_PERID(26))>,
 			status = "disabled";
 		};
 
+		gpu: gpu@f0018000 {
+			compatible = "microchip,sam9x7-gfx2d";
+			reg = <0xf0018000 0x100>;
+			interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
+			status = "disabled";
+		};
+
 		i2s: i2s@f001c000 {
 			compatible = "microchip,sam9x7-i2smcc", "microchip,sam9x60-i2smcc";
 			reg = <0xf001c000 0x100>;

-- 
2.51.0


