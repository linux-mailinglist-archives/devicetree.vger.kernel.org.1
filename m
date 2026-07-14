Return-Path: <devicetree+bounces-326353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VU6UDGVlVmoH4wAAu9opvQ
	(envelope-from <devicetree+bounces-326353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:35:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97031756F95
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:35:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iq2WChMg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326353-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326353-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D47030F4F59
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FDE64D8DBB;
	Tue, 14 Jul 2026 16:34:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01FC4A13AA
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 16:34:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784046868; cv=none; b=Y9+FpZeB+Or7NOdr3/dDFN2287pg8725Gcv26H6SaRVM9uk4UQTFhciUSdic7lJKNXiUnSBvwzKRDdfVKV86ljIInz4cQlFO1vkmunLr0S31EA6vPQ0z1Fk2O3uhvyQ/NMGD575jrJ5LxGF4nsbUK9Ny5ImjCihEEvGRf2zcc3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784046868; c=relaxed/simple;
	bh=gnugYXD7/B+uvXdCh+3gHchQXe4XuDxcfGutPlljHMA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KRcYUWAYxAIs6xveyaymQnI5WitRaUSOZ+rvX+x9Jneo2yMdVI4Irdhe7w+RkeOIruonzZk4WycX1qbclFpC12jdMIVeDvNcVfCr8enl/ZDXyzGArYjV+lKZ02PTSC5GLcWjpTqvznakOGtU00nlUWwCyUMo00bkxE9ma4cyDr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iq2WChMg; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-493e4cccd8dso5995765e9.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 09:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784046865; x=1784651665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7hSQVE/cIukvsNk0ljJyDr/74Kucww0/yScCm8r2HLQ=;
        b=iq2WChMgdk/5sGp+J8Xfh7Iv68dRdldkcseKwpaz0mxrTfRjmFM1p3vfssVcQfx3P5
         cWs4GGMa/eTWvRjOcA74zoONcfERadHlQbS5W08J7JUSVpeBGLFVQxNFo+1EkpOcXeNM
         WAN94CrmKHHpmQufFmUBVD7Z5V3piAy6Kw3oiuyI4ush5aD94mvRj7XRneusTI3rLOtV
         0bKYbtgotlMN9asx4Fyh9Jybp8B6Jef4vvy9OYOj4rzqJLcgN0Xt5YiKJLeQTuqPl/+X
         xQn4BzX/FUIh6TVhowH7PmY/DfkxYw36hBsMZRQ11+5KGau9AlbjiPzRQxHKbY2/y+6F
         UZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784046865; x=1784651665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7hSQVE/cIukvsNk0ljJyDr/74Kucww0/yScCm8r2HLQ=;
        b=UrYf+H3vaV5ZVN1GbRS2AEs5IGbyULLz3rU2jt+j7GbJNrp8pEyFLDvXarIjcWlFc1
         NNkCx46c6wG/DEcnggx3IQqy3QqnIqPfqsWhhxM/6Houj0/7G4McDm6synzGynT/vBKH
         cxkMGraIxvokOsnZfn3NjAS6tpqcCWm05ZmngUBxV8/713+aaK5MoqMxIswOEMS2uc4C
         Hxh4eoUqJNBt57ZG4aczeYIOIRnTR1slkysOLQFn0jazayucWeS+BYNqwYQhg/ZU1LV1
         64F4HSV+YtUdkQ5gnMnoup/ErGSanquR9XztBuHSBRAOmzwV9qh6kGZCrS1fWGREY0qC
         mh1A==
X-Forwarded-Encrypted: i=1; AHgh+RqW1riS3Zrgh/xQ8E75GwOzkByX4T7d8EUIKEqaDHLpMXUCkAeFKvBcXrRM6tuWmk0I0zpLImm91BAQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyQQW1IL+WzCqicsHxZfjvb87QDYbWiQNukIvn9b/xOqzTtfCHm
	5+KNxZeRNwlv868OOHpx3imyeGydfeXqmMJk7pQqHN/dzK2DkAQhBWvj
X-Gm-Gg: AfdE7cm8Q5oBQIsEATemOMzyUdxC7d+UHId9ZYdRKew6/YJynUd6swdBCP97O+mibep
	qVRr5qVvU1sR8zOSfvTUF5F4KM7q+wjscMSqxBpM1yYAajHg8Nz1+j2exxopqpc8ZnDeMShC0Op
	E+IhMo+64b7ohJ5ER5XMg/KvXuqa5GNHtQucLiXwADvHyWV4prIdkd+IceWzykqxDJicf7pKgeO
	28oJKe6C7IeGJIEsryGYXUyuhRORT5iU7IpqorZmmE3NJ9Jp6YMZomEobOFY5nBUcAtmRRed4qv
	mR1lrZJgZvdJvELfc/6HvX7rIJ/Q4h+RYx2alkmSFrtr7/UZGc2QLhExeDSdIH0wmEHi7ga7Z5q
	im/x7XtnCstwSFqfRD/RJsHrYHIcqwK3a6aiudWPw2YT4Re7t7gXqw4QT7sS9ZHB3lz28NVaOcE
	2SDy/I7MWs7z0jg0/DXDGbRNmHnZFZ9HdSf+mF3bSW8429rdiOniJiNifel6tBKaJf1U35UrZL0
	qVxYXOWtmgsKvI1Wa9pzMfMVA==
X-Received: by 2002:a05:600c:828c:b0:493:b8dd:9d68 with SMTP id 5b1f17b1804b1-493f87e6c8dmr141195505e9.10.1784046864939;
        Tue, 14 Jul 2026 09:34:24 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f464a974csm11213909f8f.18.2026.07.14.09.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 09:34:24 -0700 (PDT)
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
	Josua Mayer <josua@solid-run.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: fsl: add Variscite DART-MX8M-MINI Boards
Date: Tue, 14 Jul 2026 18:33:51 +0200
Message-ID: <3da78009acabb97ac871eb004319f08ebdcb7815.1784046629.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1784046629.git.stefano.r@variscite.com>
References: <cover.1784046629.git.stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-326353-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:josua@solid-run.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:maudspierings@gocontroll.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com,solid-run.com,ew.tq-group.com,toradex.com,gocontroll.com,dimonoff.com,oss.qualcomm.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,variscite.com:mid,vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97031756F95

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX8MM SoM and Variscite
development carrier Board.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6237fb2ae50e..648621348e55 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1064,6 +1064,12 @@ properties:
           - const: solidrun,imx8mm-sr-som
           - const: fsl,imx8mm
 
+      - description: Variscite DART-MX8MM based boards
+        items:
+          - const: variscite,var-dart-mx8mm-sonata # Variscite DART-MX8MM on Sonata Development Board
+          - const: variscite,var-dart-mx8mm # Variscite DART-MX8M-MINI SOM
+          - const: fsl,imx8mm
+
       - description: Variscite VAR-SOM-MX8MM based boards
         items:
           - const: variscite,var-som-mx8mm-symphony
-- 
2.47.3


