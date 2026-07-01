Return-Path: <devicetree+bounces-318317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rK8NGwPoRGqg2woAu9opvQ
	(envelope-from <devicetree+bounces-318317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:12:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AE66EBF49
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:12:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Cfn3ZEKC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318317-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318317-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9F7D319CA7F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B362403B0A;
	Wed,  1 Jul 2026 10:06:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D753F483E
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:06:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782900366; cv=none; b=I3JAUmNIMBRRG4zl8JLWmK5I1AEs8Rtui15vbC2yW1bJRGARi9kxC1+Rw6sYMJT0PBc5bzgw4hfFNX2mMsL3IcQN6R/Hs6tFWAUlEDEpbUBh6pNuRhmgESxAP79kyMpOESovR9g4KyJi64moptWxQNJ+B2zK3txyFL7FUIvt4eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782900366; c=relaxed/simple;
	bh=x2CdFSHOT4xVAoOC0rjDQJLmZvW1D4gQ/CaVjwe1044=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F+dFWPCUCSnZ/N673U+Bax0NLF0pZukHCJIrvCbgM3HvhPyMHZPnqYyfR+witKaK5x76UpICZtFdXmqzUxDVMG2en/OXPzXza82Iux6YXEeBSe+6rbGD0KB2JK5pXMm1/idX9Lh3u9a3iBR41zd3HrZMLFTA4Ge+b2ni4cVyY0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cfn3ZEKC; arc=none smtp.client-ip=209.85.221.44
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4631679f204so956422f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 03:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782900363; x=1783505163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mqpG8fUz6FJIqGcUgu0aLyV6Ny8c0iIhvMW4sHx0yr4=;
        b=Cfn3ZEKCOa5Z2A55b4pPuUw7zHTKoEH/YCjZUIQF9Kqc0Fd5VfU7Fc1aI5+avDdpqr
         JhyQR2ulSjHmAV3NqgVAE1y2yGx8EQUi7NQysqp5wttIHmy2NDABOw6vIvLtrjh4b03c
         lV2xVC+WTKrUWwLbtUUOKjRNeB6HHTWnQsWoi34aH74t48l+alFXEF9hEGGlc12V3Qqy
         vehbOR4jKa3EnyjDuLHVX0J/BIa6EjPHNM1JZoRyBntSKfrSfRNqoQqsnV4eCJtO84VO
         6Ih3l4RWtozMoJmREyLwToET7cZvRHvbedU/YvoxJsqEavdTDqN4XVvIIzumd/N41ePx
         S0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782900363; x=1783505163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mqpG8fUz6FJIqGcUgu0aLyV6Ny8c0iIhvMW4sHx0yr4=;
        b=EWafxnQ/1X3ObcawT5klfPEnHONFcjFH1oJ0UbC4iz2Sy2WWKruD4cd88ul/k2Mw0E
         3E0B53Qmap6SrrjbYoE7dcdZGqfYnBI41V9kVdnI5e8B7q+R4FBOyuVCC1H2MnBLWbxO
         1WosVphyeqqOm6KruY71p/7OYPdWlylaAWjKFb2B6oFl6+H0TDgbLhVsz6Ef+akAW4cW
         NJUvROZb5P2aOrpXTHDp0FdOwXNSgA11jjuFWq+HxItrq29ZiA9it8hs3CRMmnVYj6z0
         mSv+qXh2FwiEvFiaw01szM+Hfc+ZGx/zC+8pYGiRQfwNsTz6pcUpKr7CpZOQHeTmfwW3
         /y1w==
X-Forwarded-Encrypted: i=1; AHgh+RpLbXP2Nouoqa4d6FfyjVMv0QAd3006oaVe578urNqw1KUICfspC8NAVPLgwCBWAcN7wMmI5YTm5aH1@vger.kernel.org
X-Gm-Message-State: AOJu0YxpRkra1BfvvaSa73uDAGN5oX211ndP8YboV/3LtGihRbrmdgYN
	+bc+n6jCsnZHWgyQj1G7kBYAIUZFgKeDVv96aDSXaO7HgShEeHBNjVmV
X-Gm-Gg: AfdE7cmnbpebtPTa3zJIxpnJeJ+F5GVq/iN9X3uqEePFQL23JOPJCpzfhUUzD+qu/fZ
	MlF/Ox4Y7B7v11zPaPycPaDafXqJzzWyelHSnpyNgkTXkNJJSDHVrvbsviUpHV/i4nJ6BqsI6vd
	gl0BDWMrmfTxppbHGHYDuk0sDKGRFlwmIGxIUtQmkRKxw+p8mA81cau7nAvCh4WPDgQndI0ozfa
	pfBi6A7lDQQ5yUenD0RIuauP0feBr4MJzKuVGfrW+uCOMjDGQgCa3OZ8Ce/K3GSi2U7jZndNG2Z
	fWA1yLZi5+uUvMrakcAlb9byrPgmE1P0PV1ch3DGGZnx+KZuCt97msjrctbQ1g0yJSA747ABNt1
	RCyqzaY5N9CZBt5EijQvBAkXFg1ImN+xVYfrL6RLxzhmn/uw+tQUAEKda+xVShM89qF4JaxGeSf
	CQ796MNVJCIrWKxC/Q3SPTheBvEb4KuzWCdhDrGPLmp4G7QVMqYyIvpsrgND7CKGBos63PFvsdp
	5rCHOhJrLiyaQx6PNusSb7Kog==
X-Received: by 2002:a05:6000:186b:b0:472:28f2:506c with SMTP id ffacd0b85a97d-475dea255famr8072839f8f.13.1782900363045;
        Wed, 01 Jul 2026 03:06:03 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4756636cf26sm13742935f8f.19.2026.07.01.03.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 03:06:02 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Josua Mayer <josua@solid-run.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: fsl: add Variscite DART-MX8M PLUS Boards
Date: Wed,  1 Jul 2026 12:05:55 +0200
Message-ID: <71dbce373c16b9a251ca316fd90ef232ba106e76.1782898728.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782898728.git.stefano.r@variscite.com>
References: <cover.1782898728.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-318317-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:dario.binacchi@amarulasolutions.com,m:josua@solid-run.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:maudspierings@gocontroll.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com,amarulasolutions.com,solid-run.com,ew.tq-group.com,toradex.com,gocontroll.com,dimonoff.com,microchip.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1AE66EBF49

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX8MP SoM and Variscite
development carrier Board.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v5->v6:
 - 

v4->v5:
 - 

v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6237fb2ae50e..f96f3d31dac1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1322,6 +1322,12 @@ properties:
           - const: tq,imx8mp-tqma8mpqs            # TQ-Systems GmbH i.MX8MP TQMa8MPQS SOM
           - const: fsl,imx8mp
 
+      - description: Variscite DART-MX8M Plus based boards
+        items:
+          - const: variscite,var-dart-mx8mp-sonata # Variscite DART-MX8MP on Sonata Development Board
+          - const: variscite,var-dart-mx8mp # Variscite DART-MX8MP SOM
+          - const: fsl,imx8mp
+
       - description: Variscite VAR-SOM-MX8M Plus based boards
         items:
           - const: variscite,var-som-mx8mp-symphony
-- 
2.47.3


