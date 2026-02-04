Return-Path: <devicetree+bounces-262739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLKXEEh+g2mHnwMAu9opvQ
	(envelope-from <devicetree+bounces-262739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:13:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA4AEAE74
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E5B3E303CBDE
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A902A348879;
	Wed,  4 Feb 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XRlclvvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6FB347FF8
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770224733; cv=none; b=TKfJZQWWx6gwtFcsodGVBpXmQTowXVFheD1WPHDVuF4Gh5eK+stqQoH8Kk4yKTh12Ez69Bre0KezPC8tZ6Qc2PLqTlv8jeaRadIEolBGp8Z8F4mhac4FHYSJXuTe86GfPYb+KWnb5tuCijIRidRd6LVk9KgqIcY9RKDQ+NibA7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770224733; c=relaxed/simple;
	bh=l6fjAaQfH5yQWgbTkxY+6qKphogxw0jn7uPOsSyhKug=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RxzY+Pybt4lkDSDN3ts67dnopWPNGpOH/SXeMASSwfcpUSxPc8LWX/iciJ3tJlLRI6CBhoBod3bAkqUtTzo56Itgffsa0YUBoQATP+mzofiSi64NLnY7DjHVe9BORzagztEDNHxrgT5tHAkQomAlZghx0gWVZrqaM57QGuzK5vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XRlclvvG; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4801ea9bafdso78025e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770224731; x=1770829531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtnPblNidasHdzF3fCc40f6SCufCocsQtBk3FA5AuTQ=;
        b=XRlclvvG52sxakM0jf1rTKQ0b1ohfuGlQ6qHct52jOM+oDN/n+y7hdJ4a6JoPVVHhv
         3B/ry5Qmy4GkcWsqHRYzr6/Af09XuMEvNcnkli5QST7bmovIdhDhvftd+66NRcetYM3f
         3Lv/wuVyzIq0L/3KvelhVHaPFYkHzB5iEhfd//DkLFjXoDNvFF+sxMS4ofOexo8sQNUH
         Kj+KY8eL97RL+mH+okJQPAjrVzk6nWZ76L1I0pU3brE8WDWkGEMLmFnY0LSNqs3yQdMC
         V3K9GLCG9sej+r+yrOnLyPRRHk/2ZJGZgHhYJMOEPr4QgjZZ8/uNhwhjJZSaiq48YWWu
         rLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770224731; x=1770829531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vtnPblNidasHdzF3fCc40f6SCufCocsQtBk3FA5AuTQ=;
        b=Noqc7T5AyuD6nPRua6du/2kak6JdhnGsB+vgekh8nQHdPxzjVCM9oocVvsNejrpf7n
         6Ma3tMiHMt8d/DOAhEeAB3zZB5Y6lZ5iA8kbPvxvEKDRB3FyGfW7mkgrLyHa3m0o/tTs
         kq10X8zEtb+r3SxDkDjVEOKlDabY25t8DxsxbPXEEeNIrN1zi0InH/eJkC0Ld9kOvB9B
         OR7nojHki+3+l7A50EzLoMR43oGxKIbTzwfKn7o2wnDMSBD6Yhz4ssCz2Zd5kgjcPRHP
         N1A6bjiqetWVBeCPhuLTDlk+r5s5k4BWoDWU2smKtLTI44SZbFjUJRKvMjLvnXXvcGUk
         J4zg==
X-Forwarded-Encrypted: i=1; AJvYcCWlCjUUxWYn/lHy0X4lddJvspbSFE8opuNwE3IC3CPdCHFROC20TF9eDbe5WJpHupVG2NfwwQf9sEcR@vger.kernel.org
X-Gm-Message-State: AOJu0YxZGvQmfi+MGbDwZ7uk/O7Cb6TLBr3lDSWPm5+3+m9ZRDDGJk0W
	IMUqI6OgwMoYGzmuUgzJqD/Ut1hrib+gTv3eoyloXIJbgGdA0RP3PmQa
X-Gm-Gg: AZuq6aK0KOxjRjNzPyj5XKvLzXy42KPvEvgWwiAW/clE9E3+3iXOj8kkqXKvymiHzzO
	4N9qy2hbfBR1kFurtuJvZgFPWsggb77Iubvl5i+p9DMsTq0DZCh7wu5jB7h41VTKTonDM5YdY7C
	kDcXzQ+UIIJVrUkgvIVBMOZQp2fNfzBTQ9WBsBnZ3JPEKuQEmo/ubw58qUyn0m7P07lLkpqy7hZ
	klfk1qergCRxb6G13YUgYIRT0QP5N3w/wTs72IOPCQn3bQtASRbVHLFYJ9+Ge2yH+yH0Jq3pPlQ
	/YfzyiMFXbG/zj0FFlhKwTyV/4o4pAltW5XmqJ6djEr12aC1L8V+M6dS+mzQIQlTD95X/iAPrFI
	6ZBJ7bXFLB0ite/p20j0MOVEosK2L3sMP+k4VR7XtN9PnKtOaUGoEzWe6ogk2120SZBl+6wKw1x
	i5I2A1O4TYTDgEN30iuDoNABr56TU+wubJpg4yz20Kw5/DQhbIJ0LaT+XLJOoDLKHungCYCIVU8
	zZKKbfPsKXN8063hTWl3bl6TERZVofI2RiBXRg=
X-Received: by 2002:a05:600c:a088:b0:47e:e7e5:ff32 with SMTP id 5b1f17b1804b1-4830e98388dmr42262415e9.34.1770224731449;
        Wed, 04 Feb 2026 09:05:31 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830ec10011sm38044465e9.0.2026.02.04.09.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:05:31 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	maudspierings@gocontroll.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: [PATCH v1 1/3] dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
Date: Wed,  4 Feb 2026 18:03:54 +0100
Message-ID: <20260204170356.35169-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260204170356.35169-1-stefano.r@variscite.com>
References: <20260204170356.35169-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	TAGGED_FROM(0.00)[bounces-262739-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: CDA4AEAE74
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX91 SoM and Variscite
development carrier Board.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 336669e16d7a..4c200a67600e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1524,6 +1524,12 @@ properties:
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


