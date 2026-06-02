Return-Path: <devicetree+bounces-305654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w88tA27UHmpNVgAAu9opvQ
	(envelope-from <devicetree+bounces-305654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:02:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 785A062E3F5
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:02:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=rG7h38c+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305654-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305654-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D35F83065285
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335843DE430;
	Tue,  2 Jun 2026 13:01:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2E33DB647;
	Tue,  2 Jun 2026 13:01:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780405273; cv=none; b=pxVuSwfWSuddZB/LrssOL05Pl25F3viGTrVDRVs8u1zgdohehcvs9M2jf6aMKi0fh1p5Go7ZAQSbLuunZoG6jChLCzZjqTMRZQ5reoz2iYvahkxS9YC2QjSKRn/KjePAxZ4jQbfhoNrHOkOaPuYkFb2/hq3MohcMgckHsfP5nYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780405273; c=relaxed/simple;
	bh=1IoQSXUWgYTEVd953ETp499G6a1vtRSc22m4J2jdDQU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nWz+R+kzOP160pYD3hQl7jIhENpayqTdBjX28yH4T5k5IXgibMTU0WgoIFMNbL60OCcYwGyyGUoCncCKqQx9VH6v7cZ73/OIjCx8+XWt7f21AyP0zrPEooqxj6xPbDeLCMdFbWuQCRftSpdqkxsm8NABJomXgtJ3wchbSV97JV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=rG7h38c+; arc=none smtp.client-ip=213.167.242.64
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c66:476d:c684:fe78:389f:7375])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DD856103F;
	Tue,  2 Jun 2026 15:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780405247;
	bh=1IoQSXUWgYTEVd953ETp499G6a1vtRSc22m4J2jdDQU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=rG7h38c+vMd0Ib16WyhDsKk6qnxiYaBxxlZduj5hhJpQbVVIXTWpgYxp2Off2WXQM
	 BMuirNiMKu0iJaUAbyQFwP/m+ZXVKFlpGHzw/4xv8QbI5EJti3AV+IglMR0YgmvxAQ
	 9FgDb5OEpwNelaEquu/+RtII0ch8hFvSnmynVtuE=
From: Jai Luthra <jai.luthra@ideasonboard.com>
Date: Tue, 02 Jun 2026 18:29:28 +0530
Subject: [PATCH v3 2/4] arm64: dts: ti: k3-am67a-beagley-ai: Add DSI0/CSI1
 mux
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-beagley-cameras-v3-2-fe6ae35b7eda@ideasonboard.com>
References: <20260602-beagley-cameras-v3-0-fe6ae35b7eda@ideasonboard.com>
In-Reply-To: <20260602-beagley-cameras-v3-0-fe6ae35b7eda@ideasonboard.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Robert Nelson <robertcnelson@gmail.com>, Andrew Davis <afd@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Rishikesh Donadkar <r-donadkar@ti.com>, 
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jai Luthra <jai.luthra@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1833;
 i=jai.luthra@ideasonboard.com; h=from:subject:message-id;
 bh=1IoQSXUWgYTEVd953ETp499G6a1vtRSc22m4J2jdDQU=;
 b=owEBbQKS/ZANAwAKAUPekfkkmnFFAcsmYgBqHtQD8e+Qn7Exk8nQGthzX0JeBnZTt8f6Wf+63
 feVLEpGkbiJAjMEAAEKAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCah7UAwAKCRBD3pH5JJpx
 RV+pEADQRDG4llqs4sWLC7epusLmybE+P1he8AjvpbEXFM5aSda3HDcEABL7J4dycoSeri0tQiG
 dGCqOZ1JuKNXjBCBkhyF/1knNbQNnSy0aPJ4Ii0CcBiFGq0iWwFRo+YpqJ0z6pb7rutTfMwPoFQ
 Rm4IjOaRvaIa4rTdu6Nu0B3r7FogEOA/ADLkKSH8VYVe5IaCxnLrLlCTv81x8v1OdPae3ey3cHR
 j/a2v1ZZTRU3/HwftcA0uYHDl7ffODRBOB/ByHMVPt21JU527YESEQ5AiCXGLKUWWAODKUaBnqo
 Gyh2LKBSYeFxwOkorDNg/6OF6lqfI1VBNEgJT/doN0GflMCDwG9JjvebZyrHewm3ufwnbO1rgPx
 cC9JI6IJ354NX9iLuNxy1/3NM4q9uXmG3m5s8DeEzq3bsNAP158SMoRTtEysl5hElt8rp2ne29B
 O9SOnBfwYBwIx1uBqS429GCQHQZc7g7DI7CfvpQ0J8RpPUe5XESZKd1NiatJSXONcqvo0lrZdRG
 GeQHDkgIhwkx23qhNw8H3so9NeCJLDLQFPIQWI9EiG9xPH48C+kCSCDaqvyDPu3KQVrnXuOu96L
 LsLkgtdnbeicZ9A6UjpO2SDtPrC3NeFIqXkkko6+Of+7NLU0AcQJ2ryy4R5mMI+3JIPq5/YGLIT
 PlFcsVBM5HBqF5w==
X-Developer-Key: i=jai.luthra@ideasonboard.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305654-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jai.luthra@ideasonboard.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:robertcnelson@gmail.com,m:afd@ti.com,m:devarsht@ti.com,m:tomi.valkeinen@ideasonboard.com,m:r-donadkar@ti.com,m:y-abhilashchandra@ti.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jai.luthra@ideasonboard.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,ti.com,ideasonboard.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jai.luthra@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:mid,ideasonboard.com:dkim,ideasonboard.com:from_mime,ideasonboard.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,beagle.cc:url,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 785A062E3F5

The DSI0 connector is shared with the CSI1 and selectable via the
TMUX646 switch present on the board. Model it using a gpio-mux so that
camera sensor or DSI panel overlays can override it.

Link: https://docs.beagle.cc/boards/beagley/ai/03-design.html#dsi
Reviewed-by: Rishikesh Donadkar <r-donadkar@ti.com>
Signed-off-by: Jai Luthra <jai.luthra@ideasonboard.com>
---
Changes in v3:
- Add Rishikesh's R-by
- Add Link to BeagleY schematics for the DSI0 connector and mux
- No changes in the patch itself
---
 arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
index 890d3a745375..bb1db8c6a91f 100644
--- a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
+++ b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
@@ -146,6 +146,19 @@ led-1 {
 			default-state = "on";
 		};
 	};
+
+	dsi_csi_mux: mux-controller {
+		compatible = "gpio-mux";
+		#mux-state-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&dsi_csi_mux_pins_default>;
+
+		mux-gpios = <&main_gpio0 2 GPIO_ACTIVE_HIGH>,
+			    <&main_gpio0 1 GPIO_ACTIVE_HIGH>;
+
+		/* state = SEL + 2*OE : 0 = DSI0, 1 = CSI1, 2,3 = off */
+		idle-state = <2>;
+	};
 };
 
 &main_pmx0 {
@@ -199,6 +212,13 @@ J722S_IOPAD(0x015c, PIN_INPUT, 0) /* (AD25) MDIO0_MDIO */
 		>;
 	};
 
+	dsi_csi_mux_pins_default: dsi-csi-mux-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x0004, PIN_OUTPUT, 7) /* (L23) OSPI0_LBCLKO.GPIO0_1 */
+			J722S_IOPAD(0x0008, PIN_OUTPUT, 7) /* (L22) OSPI0_DQS.GPIO0_2 */
+		>;
+	};
+
 	rgmii1_pins_default: rgmii1-default-pins {
 		pinctrl-single,pins = <
 			J722S_IOPAD(0x014c, PIN_INPUT, 0) /* (AC25) RGMII1_RD0 */

-- 
2.54.0


