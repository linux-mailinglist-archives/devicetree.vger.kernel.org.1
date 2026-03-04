Return-Path: <devicetree+bounces-271172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPwgCrpmqGl3uQAAu9opvQ
	(envelope-from <devicetree+bounces-271172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:07:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A574204DA7
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0D413121510
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C415C3793C8;
	Wed,  4 Mar 2026 17:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VmvyzJSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80137883B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772643614; cv=none; b=B/oNwUDns1yCeTNYw9lRg23VouJfBVOoOActKj2lNsbQtziqe1hEYuZnQygjVyxGCb2kYFbdVySfLsszPeqW/W/jZ8e7VHZELBZ5xoGOv8wuXtjoJd46xmtZf1mPGwlEnPoCiYJ+xF/OLzq1kLlPTBrH8hnXIFt23nUOEu35ABI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772643614; c=relaxed/simple;
	bh=oV/HbiXIGFqrXpt9NkQmx1zq93J5pU3le82qoXLezaM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gm1tZ8K6m0KgPUrFNA55dK6qICwxi8/5OJ5FNy2xggaqgTBGrpZcVZwywEiieyK9G5KPwVbvSC8Z6mA7j8vbDyA7r13AHJVZi9hI2Pwk7zp2swWdYtbOfthKQVOqEGBWZ9HOveCDpYJwKKzd5P0uE+pKVTiRVUmDGI9CytNl0GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VmvyzJSR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4836d4c26d3so54667905e9.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772643612; x=1773248412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tMoZu6JsfBdWs22IfsHWSodVPNZBAYSFrj3NGjYl6jo=;
        b=VmvyzJSRhAFjTQFmkPsDIjJ/A+m32tGymvht1o4+itN4V8EIY2JXgu72TsNA4bUTaA
         /CbS+JsOAdr0LpyLg8MTwWdNN+bHx3xcox1sW9Ns796qtWbQ4qogZqDW0IYyuXCACmQr
         ieGOwogwQJuaMFG+qyCcm/hK2KDd+tq7cc7g7ZvHH1HJoTsy9UGYlV3dJs0KSj3rto+r
         OkHJflyMt/Vn/Cz0KbK/OrpMYgoefgQmc6CtV8F4dqQODoBSK79fGIsGtNQIn79J52iF
         DWpZqBRbXoYcIjA30zCtYn4W06gmNC1Mh9Xp8QrzIULbXa3KxAFV6SY6WrgQQdkYQLb7
         QsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772643612; x=1773248412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tMoZu6JsfBdWs22IfsHWSodVPNZBAYSFrj3NGjYl6jo=;
        b=Fdp5oBDdAQMYLqrFBO9G4af4gxXN3rum1UaSUpd7PBjhwUkv99U9ejFAc1pH44iMqT
         08CAXexb0lWRfL9hS3kGCEbm3ujX8yMu438PExnCmpo3bt0GN5rXd+XaRauv7HeoHU2i
         W0R2o/KgaQ1rQIcswJ/ZQ+nQbhSj/qpB3EzkXM1SJpQ5XvsiZp/UXbrC3c7sj06fVyrU
         b6uXBPSRMpW5+pCi1kxWYZNValZSsWiT+DEXNu71y/t5HhR/e0v0B3KgFoE4ysXEVHzn
         ZA/x53lG99kNJTOu50eoepcZo7TG7WTfZunsWMq3WeKi3P7VRhFaMJEhsU2D+TyjucBW
         5+mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmzGgiPHCbcH3tSxdKeF3Y7JdDFHuXJrr5fosCrzOLjyrhjotBT/RhCU97oddx1ZIsbiC6eIz2qF46@vger.kernel.org
X-Gm-Message-State: AOJu0YxtpumnCFRkwP84+MIvj+XzHL9C52EXyvfxPDO2djzPyS3jF/94
	1ldyc/g7jbfICkoAfpAHM/k84xH/9LMhU/nUFKWWjwDqqXwSeNq6/N/l
X-Gm-Gg: ATEYQzy8TaR3qh0UvTSQXfOBVdP9uXPppu0q1HLBaIeQr/75USjr4kO13CqwC8banIz
	nZ2B7s2GVRaJAF8KuSKlUhcqILiQnWAJjELiksa5hKhWq9dp6i14vOmRzb4RjSO2UlubIqOStCN
	VD2dwKZqdYtP9ddpKM6yv+BNHtlBu3v/9mS+SBGz0pp02gZOxHFhCOxYQgBXBYqXc7C3sMmGA1g
	07WvOt6dwVXKdfmQRNht8+/Gwk2Z0xUfCQmADe0wTi7RCvizc3iou6NCnEfRHs5fiRqEBUzIEuO
	gIZY76p+6dlsxVGkoc/dStqWYe/IR+Pn2QHgA6MUtQYQDPws64NuCBkMHCPkPCHeWfnA86D5aeo
	j9YHUeNKl36oJJfEiEGLEGg6rEGGl3RkyCYbQUZptliO8O8nVhTSvMhs22n342qXmvbVMkzWJ3D
	AwBaPtWaIIL3hkpyiJOOr+Sv6V6ey8kWVVZmQIVBkwdRKqs4w8taMY4TyJ6LMNnxDucAOsspgkF
	rtIwpjqD+NjY1T+tWTmYt5Niv2Oe2EQpUtU56jV
X-Received: by 2002:a05:600c:35ce:b0:47e:e414:b915 with SMTP id 5b1f17b1804b1-485198312d8mr54301665e9.2.1772643611400;
        Wed, 04 Mar 2026 09:00:11 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851887fc54sm69946295e9.10.2026.03.04.09.00.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:00:10 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
Date: Wed,  4 Mar 2026 17:59:53 +0100
Message-ID: <3b6984f4cf47f98fe6aa69705b771e7aaf787f79.1772642881.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772642881.git.stefano.r@variscite.com>
References: <cover.1772642881.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7A574204DA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-271172-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,norik.com,toradex.com,lists.infradead.org,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX91 SoM and Variscite
development carrier Board.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - Fix space between BUCK4/BUCK5 aned parenthesis
 - Remove unused pinctrl groups

v2->v3:
 - Rebased the series to fix DTS apply issues.

v1->v2:
 - Ordering by hex and node name.

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..be2b88c3d9ee 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1545,6 +1545,12 @@ properties:
           - const: phytec,imx93-phycore-som # phyCORE-i.MX93 SoM
           - const: fsl,imx93
 
+      - description: Variscite DART-MX91 based boards
+        items:
+          - const: variscite,var-dart-mx91-sonata # Variscite DART-MX91 on Sonata Development Board
+          - const: variscite,var-dart-mx91 # Variscite DART-MX91 SOM
+          - const: fsl,imx91
+
       - description: Variscite VAR-SOM-MX93 based boards
         items:
           - const: variscite,var-som-mx93-symphony
-- 
2.47.3


