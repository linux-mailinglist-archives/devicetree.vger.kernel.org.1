Return-Path: <devicetree+bounces-286086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BTdGLh512kQOwgAu9opvQ
	(envelope-from <devicetree+bounces-286086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 12:04:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E6C3C8E54
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 12:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA0E7306A93F
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 09:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760413B9DA2;
	Thu,  9 Apr 2026 09:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="QwkGgUIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8BF3B27E8;
	Thu,  9 Apr 2026 09:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775728750; cv=none; b=doWfE1pJiSHTvXBV8xLTielGQ7qUntf8i0WErEu0B7Y3SR91lSWkOj1OxSNMVOaW6eBO0aqLcOpEwRRGAI8ZlK3iBciuke8DVAmRUBKEhfULzRZ32IGSHXY8G/jlf0FDv8vOvbLVUUoDcIeGaosmWKDxDGC++HutZbSdzLdwWCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775728750; c=relaxed/simple;
	bh=iCjJdv6UmtR2mcMf7I6aIF5Z1PydaiALBEkkJRuYH8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Me3tOGSn7tL+I+3DRdfV9N7AUUK7oDHkjJNHiZLUsTSOCRcr1AlmbyieY7/ZSffDPIdmcUgcFUncZg6JCxnD76Ktxzl4E0dX9Gr7ucAYIj8RABmGr4V+71vckETz4ZKuhSIORLtGMB8CqMiFrUR9UuvSfF3ptVWwUM32Jkw+owk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=QwkGgUIZ; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.. (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id B72542035C;
	Thu,  9 Apr 2026 11:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1775728747;
	bh=VTCgxSY8g7O+dmDT3SEttIJvvi9A+fVxUT3Jnm4+5+k=; h=From:To:Subject;
	b=QwkGgUIZOcpmIbn5RFOOMTbPyXVkKsIZJePywxwj7j86zRjOhCIoFMLM76IQBz77v
	 mthY05LZZisrsGwGMaHJk6fp63B1QovXLzTrWsVcpk8HKPA3vdvndSDv/EPSxCZ3gY
	 VXAr65DtP2r98x5Hp966ZKBxlZlHxO4hnSPOenSVX9QDE42FL6SqRZ67UDUWL5xi0u
	 07INBL96zXhXxj2l3hZN94xP352wZYHlI7LIfq3j7Z8kHaB/v0Fq3LYT9mDYNHPGBa
	 AYajvK9x2cnW4DufPGoAbxn/pWsRC4twYIfBs250WGJUZG3RF1FTRhux4XxQIoGcfi
	 vS6+jyvimBS0g==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 1/7] dt-bindings: arm: fsl: Add verdin imx8m[mp] and imx95 zinnia board
Date: Thu,  9 Apr 2026 11:58:47 +0200
Message-ID: <20260409095855.61252-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260409095855.61252-1-francesco@dolcini.it>
References: <20260409095855.61252-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-286086-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dolcini.it:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,toradex.com:email,toradex.com:url,dolcini.it:dkim,dolcini.it:mid]
X-Rspamd-Queue-Id: F1E6C3C8E54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add Toradex Verdin Zinnia carrier board mated with Verdin
iMX8M Plus, Verdin iMX8M Mini and Verdin iMX95.

Link: https://www.toradex.com/products/carrier-board/zinnia-carrier-board
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0023cd126807..f5429e6c86ff 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1025,6 +1025,7 @@ properties:
               - toradex,verdin-imx8mm-nonwifi-ivy    # Verdin iMX8M Mini Module on Ivy
               - toradex,verdin-imx8mm-nonwifi-mallow # Verdin iMX8M Mini Module on Mallow
               - toradex,verdin-imx8mm-nonwifi-yavia  # Verdin iMX8M Mini Module on Yavia
+              - toradex,verdin-imx8mm-nonwifi-zinnia # Verdin iMX8M Mini Module on Zinnia
           - const: toradex,verdin-imx8mm-nonwifi     # Verdin iMX8M Mini Module without Wi-Fi / BT
           - const: toradex,verdin-imx8mm             # Verdin iMX8M Mini Module
           - const: fsl,imx8mm
@@ -1037,6 +1038,7 @@ properties:
               - toradex,verdin-imx8mm-wifi-ivy    # Verdin iMX8M Mini Wi-Fi / BT Module on Ivy
               - toradex,verdin-imx8mm-wifi-mallow # Verdin iMX8M Mini Wi-Fi / BT Module on Mallow
               - toradex,verdin-imx8mm-wifi-yavia  # Verdin iMX8M Mini Wi-Fi / BT Module on Yavia
+              - toradex,verdin-imx8mm-wifi-zinnia # Verdin iMX8M Mini Wi-Fi / BT Module on Zinnia
           - const: toradex,verdin-imx8mm-wifi     # Verdin iMX8M Mini Wi-Fi / BT Module
           - const: toradex,verdin-imx8mm          # Verdin iMX8M Mini Module
           - const: fsl,imx8mm
@@ -1271,6 +1273,7 @@ properties:
               - toradex,verdin-imx8mp-nonwifi-ivy    # Verdin iMX8M Plus Module on Ivy
               - toradex,verdin-imx8mp-nonwifi-mallow # Verdin iMX8M Plus Module on Mallow
               - toradex,verdin-imx8mp-nonwifi-yavia  # Verdin iMX8M Plus Module on Yavia
+              - toradex,verdin-imx8mp-nonwifi-zinnia # Verdin iMX8M Plus Module on Zinnia
           - const: toradex,verdin-imx8mp-nonwifi     # Verdin iMX8M Plus Module without Wi-Fi / BT
           - const: toradex,verdin-imx8mp             # Verdin iMX8M Plus Module
           - const: fsl,imx8mp
@@ -1283,6 +1286,7 @@ properties:
               - toradex,verdin-imx8mp-wifi-ivy    # Verdin iMX8M Plus Wi-Fi / BT Module on Ivy
               - toradex,verdin-imx8mp-wifi-mallow # Verdin iMX8M Plus Wi-Fi / BT Module on Mallow
               - toradex,verdin-imx8mp-wifi-yavia  # Verdin iMX8M Plus Wi-Fi / BT Module on Yavia
+              - toradex,verdin-imx8mp-wifi-zinnia # Verdin iMX8M Plus Wi-Fi / BT Module on Zinnia
           - const: toradex,verdin-imx8mp-wifi     # Verdin iMX8M Plus Wi-Fi / BT Module
           - const: toradex,verdin-imx8mp          # Verdin iMX8M Plus Module
           - const: fsl,imx8mp
@@ -1515,6 +1519,7 @@ properties:
               - toradex,verdin-imx95-nonwifi-ivy    # Verdin iMX95 Module on Ivy
               - toradex,verdin-imx95-nonwifi-mallow # Verdin iMX95 Module on Mallow
               - toradex,verdin-imx95-nonwifi-yavia  # Verdin iMX95 Module on Yavia
+              - toradex,verdin-imx95-nonwifi-zinnia # Verdin iMX95 Module on Zinnia
           - const: toradex,verdin-imx95-nonwifi     # Verdin iMX95 Module without Wi-Fi / BT
           - const: toradex,verdin-imx95             # Verdin iMX95 Module
           - const: fsl,imx95
@@ -1527,6 +1532,7 @@ properties:
               - toradex,verdin-imx95-wifi-ivy     # Verdin iMX95 Wi-Fi / BT Module on Ivy
               - toradex,verdin-imx95-wifi-mallow  # Verdin iMX95 Wi-Fi / BT Module on Mallow
               - toradex,verdin-imx95-wifi-yavia   # Verdin iMX95 Wi-Fi / BT Module on Yavia
+              - toradex,verdin-imx95-wifi-zinnia  # Verdin iMX95 Wi-Fi / BT Module on Zinnia
           - const: toradex,verdin-imx95-wifi      # Verdin iMX95 Wi-Fi / BT Module
           - const: toradex,verdin-imx95           # Verdin iMX95 Module
           - const: fsl,imx95
-- 
2.47.3


