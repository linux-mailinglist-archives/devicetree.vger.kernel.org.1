Return-Path: <devicetree+bounces-259024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EnMLY+Wc2lgxQAAu9opvQ
	(envelope-from <devicetree+bounces-259024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:41:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C5777E28
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D138B302C90A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7405C285C84;
	Fri, 23 Jan 2026 15:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pg6AZE9z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2029C2D7DD4
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769182769; cv=none; b=KkjOViaF3nX5K8AvfvRTzv9Jq4j+B1lJh1zdEm7NYkS8NX52mIU5NhIXvv5LtyTTDefQJnEdWyNUZqOSBznesEknBHbUl1S+msO4T/UQAt+iDjMuLuwbhgPxcm+j83qqFx05WZqYGTKz6C+k17hVjcEYtkWidv9CYeAZz90asjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769182769; c=relaxed/simple;
	bh=0crRmPwSiMEOVOi28jVt9hbp1foFHnuqbD2Zs4kEBXA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G2iJ50xOHcMLqSQs66dKJUbfEaW0fv4PE4os64G/GuZA74LXTExi7XsKUHQWH4kVb+nxdaN+9p7YLhV8SE0hdaWdasNl8Tx8jHfIqJmeftUsR6/fAboL6gVHulZ10XS25eV0WIbGy+NrYznRHJj8hoSmGn7aJbGdUP/IaVe0JtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pg6AZE9z; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a2ea96930cso15185645ad.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182767; x=1769787567; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=Pg6AZE9zbGSwAZ+IGZK4NGhIfmg8tlcppHq8so6JHCIwJ1YIEb/K1jLxkvgUbKnfQn
         tcGUKq5ZVhz4oV6viK4+j8+iii74augn6dhWgY78/AGoThzManG+Sc4bi8W3nLBj9FOm
         +Od1IOPhN469Qp2sEIfA5fjZSt7io2bFP6Zc2i1TRkWYyu/r6hyFn8FvYETqZ0vVZz61
         46rKC1qt+HfuvG/8gitdSqbKQEtDKdMqrsgXxbEXmVZZVIp9vqFnMR+Z7YJ4hjTs1+Tm
         mlFzZC3ofb9slYMx5VKto8ytVCsrDAdIaOJvSeIL5bWBAZNgL6xM+zfRujzaNHxQQwG7
         Bdbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182767; x=1769787567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=JO+SizW9iGcl7KnjyRPUWgSrYBdncPEjkLNO2/NWNo5a8qpdf5PhBsz25EZcjqcDbp
         ZLR8PeU41A2d6wJJT/V3R3axmlKlsdTq/GWVn8bA5is8pcEQ94XV5GF5hKYAoLPboClL
         qZbJzTncKJ90XUQt5vjNZ7vxQvX1BF4Xzeqff+lc5uXlbvuexRN5UNU+N46pl/YpoXM0
         wuoCjswN6ii58LGXsjdDMxmRhIP1tzAH7cAtSgUl4PQv4oB3SxtncJcDQ50X+by/3Cq6
         UjhZBRgSV8RWpAHlJ0eL6no6poWBAPBzG0AfTTfuXIyvzc1DjsnTKWZjPrh9ZrYI8Go7
         kySQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYbcSfk5xm/GH4sRHGXRKJldCf2VzvOh2VLKlP3qytIVP18iDIHQ0JjBrmDEf1clIg7kv6toaxf+7r@vger.kernel.org
X-Gm-Message-State: AOJu0YwtHWt9l/Ky6a7b8GtKe6GyClBFTWYb+mzytMly1CfNqDSSzHu5
	8Q2rN7Ayxd6525tSmLOy2KLwjN/opGe4shz7bvGSzOMWZNloxxNb0m/r
X-Gm-Gg: AZuq6aJwt/pwFOOJsRQK5JOoJ6DuFPgdxZFG39RjfK0oitMVLpe2hrxvmpRTplqAcxV
	JUYhAHTw4TpOjEdxpeZdPysTfTCzCwesGEe7uBdanDb9CTxLouJ98o7PCUB5yk05NT5s3/01pwr
	KQvZyB7QHgc3yPcU9myqL6MxK0b6jshc+KwfAm+jdQejsjyRnOQr56rXF9eUXJgqK5SUxQ8Fssc
	u8M0hVGan2MNShkX6AstGs42RXoZLP3c8LKi7kwW9En8KBs8ye6Yj1bZPg7fANyfGLVgIIdjM/t
	X9q7mw2dg11l9zulN6eV8jZnsFZRk5gCa0OmD+kDetx26jA/Lx760Mh8YZt0/Db0L+PNg1h0eIF
	laoaOukbv7cKG4rTpWck4yI1613nM7BwhIA8G73Oax30kWwMVQAy6LMwF1xprI2SdSaaWprXK0t
	xJPoJNtKS7C2KLV8Sm5XwBp4CodvRCTbnvmg==
X-Received: by 2002:a17:903:247:b0:2a7:9da7:d21d with SMTP id d9443c01a7336-2a7fe77411amr31093455ad.56.1769182767504;
        Fri, 23 Jan 2026 07:39:27 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:27 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 23 Jan 2026 15:39:02 +0000
Subject: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-259024-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.19.136:email,0.0.15.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.1.44:email,0.0.17.48:email]
X-Rspamd-Queue-Id: 92C5777E28
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


