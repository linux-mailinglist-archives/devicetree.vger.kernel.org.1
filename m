Return-Path: <devicetree+bounces-267367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIdmCFA4nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:21:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78583175690
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D669C309B4CB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA8B36164D;
	Mon, 23 Feb 2026 11:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BT5xYSc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28C8361647
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845479; cv=none; b=pygi6ay6suFakz2GRUGBdm3duu7PdkYmsuYD11Wic3rZn0pq8SYzUPqJ4CeAOkxMUjPpU1ygo11FprVrkkmv2hWIen1DNbLRW1uW2PfY/to7EA5pR1M2T53LuxVRnpvdA2ePgBVpKBjvenM08o9psn6+wNLs3et+Jo+n48nUCro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845479; c=relaxed/simple;
	bh=XhvT0QVqfubc2SFF6jrDcroi321rW0noJl73B6I6iXc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UCz+4A0MQvcajFkUBs4Gba8zKt9AHvvZtZZMzV+1Dyn83VNu3CBegyVy4Ial37NiR8SE+B8Ji0Tt2okysvI6RRz6Wc85GjOjK538q/5FiKoQoc9zBLxKjdag5KZp/cS9jSuw5vOUDFfgK7zD+OZRrYCI50xGBHHj9t/7zGhMuu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BT5xYSc4; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ab077e3f32so16885395ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845477; x=1772450277; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D5vVMT1zbuATIKTYy3lzElq9T02DZlHlvtVffec21kE=;
        b=BT5xYSc4dGIEFEeX+3JPuGqiqBiyehILzZ9CmzJg126iT/GWNSH0mlYcpBlYpJSuDQ
         QMT0eSgIjuvMAsiuzgLZ30BeQKKjKcRjeklLEGMkXtjNy05MviAPNOWKNnlmeh+2l7dC
         6iI76lW4N96y6dUtV9vq46N9cvxPH3aN40GM0abYgvCFEvnBQ0AthV7cb6DMbkDmsJc6
         x8K+uP+T4xvO3/9p0VsB1TUiA4RAjuDSuS0u//7O39iNZC4pAFwyE2KJNL6N1ZDM9p8E
         CtCjLFQBco9q+SaAQXXSG0EAnbNnzymbeeL/Ben9ytdsP5a2Fv/8gjfDPvf41Mp/e4Cv
         bGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845477; x=1772450277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D5vVMT1zbuATIKTYy3lzElq9T02DZlHlvtVffec21kE=;
        b=lIndi03UfL76QxYnHM4WbcSuuda2EFS6cDWkV7bocCNMZ67ws64JwsL9Jq9N7m6AmE
         aHeDKE6mV0KcmBXMfx5dGH0pGUo1LZ4rxHoUAaGWt+e3F033F3Vlk3rS5GC8IET5FwlO
         yZBHfstBJ7wAP1R6lt4+fH7FDTzA0x5anungJYgi2Ha0IRMiRNCEBx+JVkdOQpYGs6Nl
         b6GIyUpWScYcTS0hysExdwpzes6wF1+nwCAYgtJJwEMNmgilpeE9gdsv/cLzhq4kzCL5
         YAVki9eo8p7r2aSG+gZUX6UAN0DEyNEVh5yxDO8q/ir13vw1czIBJacDSomKv6C8xpkB
         IyVg==
X-Gm-Message-State: AOJu0Yzv8+mDZQFV2uBv2gnixq8sb8aaGa6bxHgxQDqzgm7sWjXuPHat
	YsrLnS1L5jajl3ieHRf1NLS7OK4x/wElSN27ZkjLK4QxTRcRk1uRntTG
X-Gm-Gg: ATEYQzx0HIcwHHFA5bfSFocbzREy3bv8hRMmGFHVbIReGGCB2kal3LxHya1jba0U62g
	e8Nbc6mFkuMN//o3yG98owSDQY3j7cicjPx413iW32huUSTpUlBc95TbypBta1WKCIA6queQGEK
	InUCFM5Cso2QZgJkRGFjRSf4pQAv1o/K94OYS/DzEfX3fn2hPWqWLTVlIfm3HxHa3UkNjBL8ZcP
	2/DorP/i3owvosuXq9NFonALJ2CpzK6bvPs0cYN+XFlNeJ+8lZLIzuVjUWw9/uKZkSkibcshIoo
	XdukcM6pEO/SBtdyzbYfjkDiGieH5kphgRl6ba1Vt+tW1rCLofjMHp3WZfhm1qeFtVskOxrT+sO
	2StN+5NbH4C1flOfseF/S4wN7YSqkOWEEIxni9IvLJ4E7vccCc5qPtN6cN070Sf2l1KGiayJ2jV
	+HygwbaiT2R5qvvXcy9J5u7hzT9dCW1lHlLw2aRQmgKSb3JXW99bxzeQP9wP6Ra6dyTd/HgfjZp
	AMyVHrBaZVw0QVX5aZa93r/nNdLI0GKnfjqORzUsNVIPE/+sFWUu/lWDcba9WMO1EuTtTJqXOSf
	34d8Qwl8P4P/kP3lrTx5
X-Received: by 2002:a17:903:1904:b0:295:5132:1a99 with SMTP id d9443c01a7336-2ad74579492mr68714575ad.44.1771845477264;
        Mon, 23 Feb 2026 03:17:57 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:57 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:38 +0800
Subject: [PATCH v5 6/8] ARM: dts: aspeed: yosemite5: Add power distribution
 board IO expanders
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-6-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=2527;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=XhvT0QVqfubc2SFF6jrDcroi321rW0noJl73B6I6iXc=;
 b=O9OnQ/chzEMf/fvHPQWK4maR7cBtWJhmUprWi2xvvAQHfu7EDK1fmcNdRzjOSF3QVoZVZK+QC
 WQ/rCXtpalDBcJGTTwGoiS/y0QJ81L4P9kiJl4xJ4N7dW2ctbdTUDCP
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267367-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.40:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1d:email,0.0.0.25:email,0.0.0.24:email]
X-Rspamd-Queue-Id: 78583175690
X-Rspamd-Action: no action

Add device tree nodes for the two IO expanders on the power
distribution board (PDB) in Yosemite5.

The updated hardware design introduces these IO expanders to support
fan presence detection, hot swap controller (HSC) fault monitoring,
and PDB CPLD update status monitoring.

Connect the IO expander interrupt to SGPIO92. This pin was previously
named ALERT_PADDLE2_SMB_N and was unused by the system. Repurpose and
rename it to FM_IOE_ALT_N to reflect its function as the PDB IO
expander interrupt.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 42 +++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 524597a81365ef10cd03b67d35eeb88a965cbe0a..30fb41fdaeb7a2276cdfe98654696a16cf1de5fc 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -389,6 +389,46 @@ adc@1d {
 		ti,mode = /bits/ 8 <1>;
 	};
 
+	/* PDB IOEXP0 */
+	pdb_io_expander0: gpio-expander@24 {
+		compatible = "nxp,pca9555";
+		reg = <0x24>;
+		interrupt-parent = <&sgpiom0>;
+		interrupts = <92 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names =
+			"FM_P52V_AUX_FLT_N","FM_P12V_AUX_ALERT_N",
+			"FM_SLOT1_HSC_FAULT","FM_SLOT2_HSC_FAULT",
+			"FM_SLOT3_HSC_FAULT","FM_SLOT4_HSC_FAULT",
+			"FM_SLOT5_HSC_FAULT","FM_SLOT6_HSC_FAULT",
+			"PRSNT_FAN0","PRSNT_FAN1",
+			"PRSNT_FAN2","PRSNT_FAN3",
+			"","",
+			"","INT_SLOT";
+	};
+
+	/* PDB IOEXP1 */
+	gpio-expander@25 {
+		compatible = "nxp,pca9555";
+		reg = <0x25>;
+		interrupt-parent = <&pdb_io_expander0>;
+		interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names =
+			"SLOT1_CM_UPDATE","SLOT2_CM_UPDATE",
+			"SLOT3_CM_UPDATE","SLOT4_CM_UPDATE",
+			"SLOT5_CM_UPDATE","SLOT6_CM_UPDATE",
+			"","",
+			"","",
+			"","",
+			"","",
+			"","";
+	};
+
 	power-sensor@40 {
 		compatible = "ti,ina238";
 		reg = <0x40>;
@@ -937,7 +977,7 @@ &sgpiom0 {
 	"ALERT_OC_PADDLE2_N","",
 	"ALERT_OC_PWR2_N","",
 	"ALERT_OC_PWR11_N","",
-	"ALERT_PADDLE2_SMB_N","",
+	"FM_IOE_ALT_N","",
 	"ALERT_PWR14_SB2_LEAK_DETECT_N","",
 	/*bit48-bit55*/
 	"ALERT_PWR14_SB3_LEAK_DETECT_N","",

-- 
2.53.0


