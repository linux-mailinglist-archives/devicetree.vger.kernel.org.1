Return-Path: <devicetree+bounces-263926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNhyAlOwiWndAgUAu9opvQ
	(envelope-from <devicetree+bounces-263926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:00:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94C10DE7E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 189CD303265E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD7536607A;
	Mon,  9 Feb 2026 09:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="Uh9fRs8A"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5D9366059;
	Mon,  9 Feb 2026 09:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770631062; cv=none; b=mCViBLBVH5Jj9nSdIB4IM4FOIWeZEXEjbxTEjo2lgoOmsKv/ylASoscC7OsYcjm/2XwYUiVlH4ZCFUVojsxPrqLNW1+yGsVvZ8Po7Zvu2gl3TCUzs3P7TqZcnVqNKS+JD7YiJfEoEL/pVlEN1PyZPdisCDPRFXv+k96zcL071CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770631062; c=relaxed/simple;
	bh=SJcXwEjPwEyF7P0cinELr017oWH1qV9HtV7GDFf2afM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=IlXw0oo5e8t0Y+lOj7WAKeHaKkSdmlo+oSXhayfokvYbo96A0SLiFjY862Rmdop25BDcFzrFUBfLq78q0Tu+lIFeF/vwm7IFdtBEr303leChBAimyAeEI2n0L9x/etN4iTxFRy9M1P1dlrD64O8+wO04BgQyZa0o1iwEJSfEZqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=Uh9fRs8A; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770631061; x=1802167061;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=SJcXwEjPwEyF7P0cinELr017oWH1qV9HtV7GDFf2afM=;
  b=Uh9fRs8AL92hCFTHbYk0tLRv6xDBCci2PdCkb+OfT/yzmfg72dwGMrqf
   4B1uy/eLePZhsRClqksB969w+lV/GY7pMG+nc3wWCYzicrM5CUD3OBTAH
   5bNOLlErKoJc0z6PPgZlPp1w21U1+PfuNaVGxe3TSTR4f3OXiuY8Uufgk
   /Yqu2Yc8MBhN6V02LdLm/SX7My2Ow7sL1e7UvxMLRFIdmhPzgYDxSidvG
   psbHzGy3NEu23U01aUTyQw5ZLuDTiJRPhHhcYvmx3LBqNzv5HqrnnlbKQ
   abBy2VYOjw48apvM0+cZkBXMm8WRDPES7x8elccnrCCcQq10Vab8qxtWL
   Q==;
X-CSE-ConnectionGUID: n6GCMgA6T7aR0CMTfKvLPw==
X-CSE-MsgGUID: zONayUfETLyU0Yifo9Z7gw==
X-IronPort-AV: E=Sophos;i="6.21,281,1763449200"; 
   d="scan'208";a="220421091"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 02:57:34 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Mon, 9 Feb 2026 02:57:24 -0700
Received: from ROU-LL-M19942.mpu32.int (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 9 Feb 2026 02:57:21 -0700
From: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Date: Mon, 9 Feb 2026 10:56:47 +0100
Subject: [PATCH v7 4/5] ARM: dts: microchip: sam9x7: Add GFX2D GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260209-cpitchen-mainline_gfx2d-v7-4-0c12e64a0950@microchip.com>
References: <20260209-cpitchen-mainline_gfx2d-v7-0-0c12e64a0950@microchip.com>
In-Reply-To: <20260209-cpitchen-mainline_gfx2d-v7-0-0c12e64a0950@microchip.com>
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
 b=owGbwMvMwCXmf6yzKqEsVIbxtFoSQ2bn+jyr2ede1H9dx3b7RPtaAcN5jpu8XTZOCvlw9Iz8K
 2lVOe9HHaUsDGJcDLJiiiyH3mztzTz+6rHdK1EpmDmsTCBDGLg4BWAib8QYGXqDr5279Ohqyv/D
 f25kP7u+4BT308ypOx9/Obrj2E67yw97Gf7nLHR86rh6rZTN4a6Nn72SW2r+WOn3bmv4vTEnyfX
 bVENmAA==
X-Developer-Key: i=cyrille.pitchen@microchip.com; a=openpgp;
 fpr=7A21115D7D6026585D0E183E0EF12AA1BFAC073D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263926-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyrille.pitchen@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[f0018000:email,microchip.com:email,microchip.com:dkim,microchip.com:mid,f001c000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6E94C10DE7E
X-Rspamd-Action: no action

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


