Return-Path: <devicetree+bounces-268923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULCxJZRsoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:53:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2361A92B2
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2ED773214C24
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFD7410D12;
	Thu, 26 Feb 2026 15:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="dtS6DRWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B72410D00
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120382; cv=pass; b=Urk5kx/cmUksZnP9YUxmPaDoivXsaLXuzLCPTVKAPbdAquxjDWf21oTmZZUnR55U4Hm9DWlTkpBXyNlNsK7PRQl4KpJgoVOt/12JKihNoqWosX8r+ZpMNpUwlKWP8BjIsU4u1DpY1JVPOve5+4CAMo+bUVqPTP3pUxSbpaA8fZc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120382; c=relaxed/simple;
	bh=R2v8n89f0c78cnd/TtY73AodxGwbn9p0TmvotZHshjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JEsKqXfomp7wPE9KbqfaT5DAbYy6/gKmPyFTwUZyexwbaCyLA9tyqreBjJlVr3CYfcG8p+YtilxEIPUjts2ZEhoK6Cg7Ez01hy1zijPLZrbmZgiHKw2v8gRKgsIXpHBNukeipUNl3h5kMmL4pY/io48iIhZDtshjsS/FUA16FtQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=dtS6DRWU; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=NjYbXwIQ8PduPQUva1l1y0HvqHmC0aGyA7hHhqtwLEI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772120353;
 b=hsHS9AEIVp0w7wJva2ptyTY+TZMSQ8+os2L/StN7kaLE18Y9vWzZk+n79xPL34dhUyWP3+CN
 ujGcGO7RRCQasN9EAfaEVlySMoVyMHm/NVw29A54V25KRqhJ/zAsp7VWCqZCw/2L28K3BbanadF
 U2C8ADTUeComegqU+uh4rSD5USO4URvTuOFuOl+LNGJZeJh8Uy2OTXjCJ1dNzQsrCz7VG9uIyrT
 34ALBzv7aJNOtXWGqFqB62wjYFnVukHJ/BH3c2XyshCasHClVrrtM2oOXxz8YlArH9t0mGbKoED
 i2YjNMzM12v1yYLpk89sVht5doPN92aGaZBnuc417X6Tg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772120353;
 b=REhW2pXfuKK0oqLDXvVhAwVW0OSLIsvettz8Nu8ayOue5ykWvIoebqnvvGoKTAGBbLk5pKUj
 GtTxmFTbCyQfk3dflPF0ULl6qgd4nfPvcoq1kfHGX5gYQc4+GysIkPO9LgiLS/XVPhS9uP+dQvX
 FcaM+08uM5YheZoRIos2WVRC01kHiiaEMLA/Em0Oyg5HsVE0Ghj+tMhfLUj+tN243hEsM6N4O7T
 l5HeGbDxOfWFiEhko/s3dLKYOOieZEvhz77axLHy4ix3azU1LD3XFtfFUjFebEaPQVmyjga+Sfm
 9V8res2umzHMb23LNjVcaHmXtBh0dUDGSZqDVPRvZoVMQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 26 Feb 2026 16:39:13 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 37772A41123;
	Thu, 26 Feb 2026 16:39:06 +0100 (CET)
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
Subject: [PATCH v3 3/5] dt-bindings: arm: fsl: add bindings for TQMa8x
Date: Thu, 26 Feb 2026 16:38:52 +0100
Message-ID: <20260226153859.665901-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226153859.665901-1-alexander.stein@ew.tq-group.com>
References: <20260226153859.665901-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4fMFxR36f9z3yXpX
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:568237be82892e00f1be80080e855268
X-cloud-security:scantime:1.642
DKIM-Signature: a=rsa-sha256;
 bh=NjYbXwIQ8PduPQUva1l1y0HvqHmC0aGyA7hHhqtwLEI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772120352; v=1;
 b=dtS6DRWUvO3u0d3Iv0IgJfu7qkZM1Y3vWKF2cKP56ZDBNLZg7e17MEJ6ujgBxfc5WwKksEaA
 rdajwoC2yej5huoFLY+f+rRvJUFJSkO6YTFTgYpL4k6FG2ztNwdJIhd6iUeQQUXuHUl6W0URMGj
 46y6HX+lgweQ/zInl9qdsku6BW51mdlNxRK5B5jrfL70bSJOCGf7q+2axdASWs8HOSd61MXpWWu
 QNRsqs1ATWJSxKwxVBEwLu8izJxZUFOCtfDk74MwFsN0STlQKvTqZmz6rUkizXLMlFpzWrv+M3C
 BrLKGwXDov9ZMizjutnA6fxat+5fM9aYE4k7NCC+RCcLA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,baylibre.com,cadence.com,linuxfoundation.org,pengutronix.de,gmail.com,denx.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268923-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: ED2361A92B2
X-Rspamd-Action: no action

TQMa8x is a SOM family using NXP i.MX8QM CPU family
MBa8x is an evaluation mainboard for this SOM.

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v3:
* None

 Documentation/devicetree/bindings/arm/fsl.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 910c20bf07a4f..2455358c15ca4 100644
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


