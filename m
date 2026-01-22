Return-Path: <devicetree+bounces-258601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGo9CmJscmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:28:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D46C6C3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:28:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6FCAC305A5D0
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4150B366824;
	Thu, 22 Jan 2026 17:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B6SbVQ+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAA2364E98
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769104482; cv=none; b=thcm1y5cY+ohHXsL63VH7KS2z8qO8doUNYOAdHPCTCD02G4NPARFA8IhQdQ/LABR2oByc0ZTRFeJFPgLZX/XhS2+0ydxHf4FXBBgOQyec/YpajGDxJQh44qJC1ybxxrezCwCwz1Of1yVT4OMm+D2S/HTcXbc+vpb4Ec8XOBJ2Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769104482; c=relaxed/simple;
	bh=0crRmPwSiMEOVOi28jVt9hbp1foFHnuqbD2Zs4kEBXA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PuXMOXRCGIs3LD32lmDEwyXbl6Wc9Z61SZzfwMolyttEdPrDwtbU8213sEkbN66xuv/dJK7Z9lQCGajAZQcYzF35ZVBSPXHm/7pgonlORFnnIamIwxWWG7NXVwDI5FUxUo42fgijYfQsJrZXjKqzPMEDMjtjxLRopt5Gy5jDygg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B6SbVQ+k; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a0c09bb78cso9255495ad.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104467; x=1769709267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=B6SbVQ+kdpCkVJSdX3CI2LKDrP0so+a4UxoSQiTx9fWnizFXHgFOWfH+HLePWx39ax
         qRehUHtGl4E1o1QJAPNilAvRYFxbqF2Xfoe+nfFeFMJZEgAtdQjqEtKDgeZ37bFkKo9D
         TUo5yKDjDZjarBM1TqnBeO+6PBpc7Hk/3p0h7hHGDplNHVPWMKfsiwgiCzyVo9qEwAdi
         v8slS2wVcMvSbhQ6AArFla0YYF6c/cJ2GvPvRUKrbmAEPPuaEfh15FRZo+BoeDUGi9mT
         Sxz8YfAvxj4GFrVhsdEIElbA7a7REv/OtTI5QaJx6JsUZ5t89mt7ewS9hpzRPf5lRTZy
         1PIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104467; x=1769709267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=G3RL5Zi1fcvSwGPrjCwUKa3qzCGVz/DjwiqRO7pkgOKgAfWDiiUn50Gc5TCZlIF7gF
         RYWy3daXB0o6eJV+I2Df64NcAiPzLnK3YFiEZN1AJDSpT2HY/HOQgWpZyohcitxifB+g
         egI9pLUtO56/3FthH5WZRWTlO0+ydDdZaMHNVUd4645SnGAjjjSMQjBaWZJzpPF3plgV
         Lntn76sK8utfdbedHqX4PVMRerSrBEs1U3ZYHfLORoBsWv59678yz9vjO4zF011J4lfL
         A8jPzCuhVWPHiVKCUpTe3yaDo/DME7G2itvA2dPlRn3QfYsrJvf1er7UIza0O6XInyna
         Aptg==
X-Forwarded-Encrypted: i=1; AJvYcCUF8o1O3bzTfGn4PuGjDodwDn3nYOpeWr+eEDU/qruynZTboG1/soUgagXoNFWom99sk6Cw9p28jbYm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKR0esUIdFgoxf5RT/Z3Utj7QTRXhSEtR2Xn0nvsZg9VQbDMo2
	qSYBxkJ7hID1ApVocY44mB4etMEgs8L2neLecZzaUZz9wc1uoqfa5ICs
X-Gm-Gg: AZuq6aKn0zbcPF1VSRWSey6npmipgZ6ART9PpNBJNAMu4xTvolo554jt/2aI770ZXaj
	H+dly1rAjme+eiS9rH6ngJBSyTHqwq7Y/BWiy4zhnKEthvULi388NpeexJJQrQXZ0eI40y9QdED
	Ri1U1QGe/bKirpUDn6Q8Af68c185I2sKjR/QQHsYJsBiZsEENCPupF3WMzCFBdSW5KrJw7iuEQy
	1C1eIK3BPqhH+jubYkYxq/80kZjxX17ON9Ry+k4HKTeMlTA5d81F4S/XVPo5BS6WlIbU8iay8+/
	t9loAaAZ8eKOUkEoC00TZ7e5nWU4bMhTudFPoWW3M4BPmloVq66YDbMnRvd323TXnZcNFUv2EPX
	MWi2RWjf7yfS4ZlmdVlaJKSmYIh7gRTGGl01N5iflyuA6zLSZvyVRKwA1aqBMW4kO2RdfPpmuXm
	+eu6kNp0DoImq/GBkRMCGFC9L5W7WMr8VORg==
X-Received: by 2002:a17:902:f641:b0:295:28a4:f0c6 with SMTP id d9443c01a7336-2a7fe41e16emr2855545ad.0.1769104467221;
        Thu, 22 Jan 2026 09:54:27 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:26 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:57 +0000
Subject: [PATCH v3 1/3] arm: dts: ti: omap: align node patterns with
 established convention
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-ti-phy-v3-1-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-258601-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.15.160:email,0.0.17.48:email,0.0.1.44:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,33c:email,0.0.19.136:email]
X-Rspamd-Queue-Id: A37D46C6C3
X-Rspamd-Action: no action

Update OMAP DTS node patterns to match established conventions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi  | 4 ++--
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi | 4 ++--
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
index c9282f57ffa5..ed206eb84d02 100644
--- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
@@ -328,7 +328,7 @@ ocp2scp@0 {
 				ranges = <0 0 0x8000>;
 				reg = <0x0 0x20>;
 
-				pcie1_phy: pciephy@4000 {
+				pcie1_phy: pcie-phy@4000 {
 					compatible = "ti,phy-pipe3-pcie";
 					reg = <0x4000 0x80>, /* phy_rx */
 					      <0x4400 0x64>; /* phy_tx */
@@ -348,7 +348,7 @@ pcie1_phy: pciephy@4000 {
 					#phy-cells = <0>;
 				};
 
-				pcie2_phy: pciephy@5000 {
+				pcie2_phy: pcie-phy@5000 {
 					compatible = "ti,phy-pipe3-pcie";
 					reg = <0x5000 0x80>, /* phy_rx */
 					      <0x5400 0x64>; /* phy_tx */
diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
index 4ee53dfb71b4..d8b16cbe6c35 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
@@ -72,13 +72,13 @@ scm_conf: scm_conf@0 {
 					#size-cells = <1>;
 				};
 
-				omap_control_usb2phy: control-phy@300 {
+				omap_control_usb2phy: phy@300 {
 					compatible = "ti,control-phy-usb2";
 					reg = <0x300 0x4>;
 					reg-names = "power";
 				};
 
-				omap_control_usbotg: control-phy@33c {
+				omap_control_usbotg: phy@33c {
 					compatible = "ti,control-phy-otghs";
 					reg = <0x33c 0x4>;
 					reg-names = "otghs_control";
diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
index 9f6100c7c34d..5c94db589dd1 100644
--- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
@@ -472,7 +472,7 @@ usb2_phy: usb2phy@4000 {
 				#phy-cells = <0>;
 			};
 
-			usb3_phy: usb3phy@4400 {
+			usb3_phy: usb3-phy@4400 {
 				compatible = "ti,omap-usb3";
 				reg = <0x4400 0x80>,
 				<0x4800 0x64>,

-- 
2.52.0


