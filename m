Return-Path: <devicetree+bounces-264767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Br8Do94jGktpAAAu9opvQ
	(envelope-from <devicetree+bounces-264767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:39:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA601246A3
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:39:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E22B73068BED
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A4F34E747;
	Wed, 11 Feb 2026 12:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ptN04fav"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay95-hz2.antispameurope.com (mx-relay95-hz2.antispameurope.com [94.100.136.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEBB2F7AB0
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 12:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770813365; cv=pass; b=r5QZSSx6+9808Cgf6Obh4wnAGgNRnfTp28tIjw7+5IR4BzGbhH6cY4mFGiDP/rMtBRh2oogxVJLvKrIQ8PgvNtetkUffbxa0cRsXMqlj/EieBsYGrNlyCRAdKrmhmnPcc5u3fgcBNkX6YpYSCiAjX+AXtw6cZqev0jcJjRCV5Oo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770813365; c=relaxed/simple;
	bh=wJazHtN9709bx5vXU3VSNca9S8moIeQOsgpt1xQauOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z3mnOrp6D5WIjlv3hd8oSnMjZ+FaurwKA/iVQnzUlnq8SBVy3fj2NlRjYUxHH1Xzr3qYQsh/5jorAUbEDVOP2CJI/Cd8dJXWuJAqhNkhdX7sqeKxVzUX5g+x/CIxiYjCmrAKMBLW64sZZhpKCE8/HSwPaw4LHYbykTKK+QPl1EU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ptN04fav; arc=pass smtp.client-ip=94.100.136.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate95-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ls/S0m9WGUgqWCy8vJncgSdsx/isbkuq3kh3sRBurJc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770813293;
 b=RXS0VmQZ1UsMdnobQuSX549yvg8y9wSmsMHkzNzEA6P9Zb3zLh08hvlS+tnjA2iqexL5TO0K
 0sLE96TCovfuhFn/OUWzM1uvXOtCKLA+l7PpbMjqq3Op8cxf4jRGU+qpz7JPvt7MKymsS3wO7Df
 dkQIMlfWLAxJrtUdlMOeFxagqGMcvXx33SAeeM+MhMI1HLWlE5IKf85Yce6lHHsfShCGf3hL1fa
 bgKOu8eiKVanDTm0qVA8Bb5Zl5DSqJlt1IEJj5Zumes1dCpfItclvjcY/VW17mw7K6LkwxM7Fx5
 8vNKPy0A+ELskvpcDCYosYu47kC5ibfbzp+iTYhdObdLg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770813293;
 b=NWo5SejvTg1pZvANuXwL+YQMjRDW0qCnGdxeoHeBoDwFWquzuF4rfCZC6nVrlYvjy/Ucye3E
 o6spYFwj2KyGGhOqMMfkCJayocAbq6UeA/1FCpCvRJxd3/fq2uVOIq3iph/HZCYKm91udi6J6pi
 R8AXfYCxVZzBlqCVvYh8R61kuSr0TdPE7F/Xy1joDvvmswt6iW6qRFDmKRo2GP8nmJEHSCI9z4N
 BQp+2Vmk8B7xKEB/1nYRNgHOdfeoDV5P1qvSu2mt5NsT7HbJdsOTodnrsTnetjIm6Pd3nTdDtjM
 QLP8iHYKbqinyvDRM77vg3cV4v9N2N6wi+HoZjTwIsc0Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay95-hz2.antispameurope.com;
 Wed, 11 Feb 2026 13:34:53 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 9C0BC5A0F22;
	Wed, 11 Feb 2026 13:34:46 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Markus Niebel <Markus.Niebel@tq-group.com>
Subject: [PATCH v2 3/5] dt-bindings: arm: fsl: add bindings for TQMa8x
Date: Wed, 11 Feb 2026 13:34:30 +0100
Message-ID: <20260211123436.1077513-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260211123436.1077513-1-alexander.stein@ew.tq-group.com>
References: <20260211123436.1077513-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay95-hz2.antispameurope.com with 4f9yYg6lFBz2F1Th
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ddedd737b3f16a1ef86df4ac688a2a62
X-cloud-security:scantime:1.584
DKIM-Signature: a=rsa-sha256;
 bh=ls/S0m9WGUgqWCy8vJncgSdsx/isbkuq3kh3sRBurJc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770813293; v=1;
 b=ptN04favu9cBuaE6zlmiRRpRiAmBIdQCPFbJDuEz8mglO36ANAWxWqkuRdooScG+K6ge9rTk
 eh7D+2/0HG4SknVpP3omJE3aCuj+LuSWmYqkSAs/UsVx8lmMR5Z0E/WqSAsTnMNkS0quTX6YBsu
 0Wyx+NapCHsMSGyCpxlLVgtVu9Os3vIopZZohN4MIgrwzAkNgBSjs2tPrAHi9jNT2xv4dbDS2pY
 tX7WwkI9uN+UkKvBZHHqalgEgPJd38MWN+cDG1sh29p4+mQAmTD9fGJSa7HawYc2H5K+gN97Y+P
 iOVPURCaNKTKFZIdifsEj2FmPujFlhS2Wjoas+YfgizhQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,baylibre.com,cadence.com,linuxfoundation.org,pengutronix.de,gmail.com,denx.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264767-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DBA601246A3
X-Rspamd-Action: no action

TQMa8x is a SOM family using NXP i.MX8QM CPU family
MBa8x is an evaluation mainboard for this SOM.

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v2:
* Collected Rob's R-b

 Documentation/devicetree/bindings/arm/fsl.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292cf..ad6edd75c4ff7 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1420,6 +1420,16 @@ properties:
               - const: tq,imx8dxp-tqma8xdps         # TQ-Systems GmbH TQMa8XDPS SOM
               - const: fsl,imx8dxp
 
+      - description:
+          TQMa8x is a series of SOM featuring NXP i.MX8 system-on-chip
+          variants. It is designed to be clicked on different carrier boards
+          MBa8x is the starterkit
+        items:
+          - enum:
+              - tq,imx8qm-tqma8qm-mba8x   # TQ-Systems GmbH TQMa8QM SOM on MBa8x
+          - const: tq,imx8qm-tqma8qm      # TQ-Systems GmbH TQMa8QM SOM
+          - const: fsl,imx8qm
+
       - description: i.MX8ULP based Boards
         items:
           - enum:
-- 
2.43.0


