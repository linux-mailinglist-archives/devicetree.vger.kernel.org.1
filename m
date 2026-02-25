Return-Path: <devicetree+bounces-268483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCZKELorn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6566A19B351
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FC45309B09A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482073E8C54;
	Wed, 25 Feb 2026 17:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ITn4db5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C856B3E8C66
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039042; cv=none; b=h4HCOsBm47a2Wwi4rD6StDKmQWPBaKEFGSyM4r4V4hFruk+/84KM4Xrdmyqz97y8Yuzh3lrR/a0ScGADqLnodKg+adXfO4zzNwlJBVyox63XjWqlaf4T6XTfHVgWLeEmjKgmWL+8DZYBcT/ObL6yVmjgMn0bG2ZTznd+DZBfwAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039042; c=relaxed/simple;
	bh=SoAJEqM7XsGclJLWSso4KF1eMXke7Fjb3a4FIxBmVyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MX/f1Ld6EvcV7QJqi7lDK/ivAekHixush0zpQfrHH8ZeiBGq+wuQgWdCm6jOTXuWh6piSx7Y3vBSLxGR4OkLh8SouvUrmnO0+SArmlhBaP+CEDi5kWW/nwL1hOXnR7tBoggCXVwu3qyOVYlS6/1RtR3uZMRIHnqCIdWDOe1wC+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ITn4db5E; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-436234ef0f0so4802410f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772039039; x=1772643839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=ITn4db5EKkyfRQy5hNbmpSQaTOSIcHpNdTVIhnLfiFpSF9ALo+SdWcOoFz33WTFv/O
         YflAdyYpj4NvaD/eiIw0u/nwdYbTAfSPzqc17vypvNq23fQw1IPvH7FFF3dzDd1UdcyO
         wkXs19MaHKqUQDbUpZrrdMKngsiBO41TlrXRHrc/li+86Wa0rZW0LUVgJjUG1Z7KbodZ
         9AbWvNp2xbvKj0W5KBBkfZFHNmnLr6PZ1UYk92YmfJmn7y3CKzjtUpykD5RvvPQVkeJe
         ED7ybYhVP+FgrpdAuvUL8xV05IMG6pq3lXAawTJt0J8Edw2OrEKYIMQIVz08Gw7bhJuk
         ZTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039039; x=1772643839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=J5CxC31pTmx9FLcIiHxugru1DebzJt2+/zHjEKV2WXn1h3Jvn4n2Fa8dXuU1atNrw5
         L1OPkSSaynuVBdG3zVhE8mIbjXLVaskO9oSXGGjdSlZpyabwouMJjr4Cc+qJO3/Jaq3e
         oB+HcdaGy6Nf1/GnOyo0xVyl07zeQNXi0YD/xIF0OCnfGs4kgmf2Bk6i1mEUGFjAzrti
         nWvR1WuIfITHJXFQzfVGzkHrY/2UpJyWElPFjrxzIfA4xM601POwZUeeEqwd1aUTMGf7
         fP8YlxTAQ4kJAe+71q/zKj4QBhdKyS0BpfsgunsAqfpog2ZyJhdZRvdcX77Dx3VWgsxa
         a3lQ==
X-Gm-Message-State: AOJu0YxdnUd9vJuXo2mI10miLJjA45QJVfjsSGXzw2OOqrVEtwmtGZ8U
	k/ongBgmW9WMPWRQnILX1wnmNZyGMnITZwC2eJLhX6fPvSoBcTJMNyfkU9Kr/A==
X-Gm-Gg: ATEYQzwAnlaI/L01zWIl/f9e0w9IwqqhgdjIQLJzf62+dbEnGhee2pHbRxkHYnHCMdE
	IEeRS7ARjxRYacBWX5CEhASx/JbLgex9QV/VsLzZfAmFfLyj4JsM5kuAOizQS71m6OTExRV3Jgz
	eKgRReLPU6EJWGD0fs3lTCsCHLLRBMvjaiv7Kv1Bvur/ugsoHvcX8PVtvF77XAxSoDns5beAnGM
	Yd2mAM6rZ8rBLQiuVc4dtZ2dxCR4iTJpNbfrF3yOWXehwHUC3ZGVKJ6BIpXnqEyEqbD+K2HQUyM
	yaGxpxwx4pghremK7rSOKb0R1vOimgyPjDIoQjrutJFmqcjqmYX2muGm7TJTsYuD8sJ91H/Vj5I
	HrE8z8Q/je0ya73HKKb4CNrTCImLBsCBxrqg2zsf/hq5Szr+BbxLNhYRndixkts+gUFbodd9Z2N
	IKH6i3YdBoTN3ZdQWGWV4M3mg+bLjgsI5fM2NJPeVFRb2KhCd+bHFiBel2oWqze9MrcgEWgvbYW
	jX8YZHYvM/ojoA4BWkd0nsnlHKeE8mFvPlHITE=
X-Received: by 2002:a05:600c:6094:b0:480:3ad0:93bf with SMTP id 5b1f17b1804b1-483a95eab61mr271791555e9.24.1772039038835;
        Wed, 25 Feb 2026 09:03:58 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70b3f3sm88276935e9.6.2026.02.25.09.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:03:58 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Wed, 25 Feb 2026 18:03:36 +0100
Message-ID: <20260225170347.77841-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225170347.77841-1-stefano.r@variscite.com>
References: <20260225170347.77841-1-stefano.r@variscite.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-268483-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,oss.qualcomm.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,lists.linux.dev,lists.infradead.org];
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
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,variscite.com:mid,variscite.com:url,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6566A19B351
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX95 SoM and Variscite
development carrier Board.

Link: https://variscite.com/system-on-module-som/i-mx-9/dart-mx95/
Link: https://variscite.com/carrier-boards/sonata-board/
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..2a957a593abe 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1449,6 +1449,12 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Variscite DART-MX95 based Boards
+        items:
+          - const: variscite,var-dart-mx95-sonata # Variscite DART-MX95 SOM on Sonata Development Board
+          - const: variscite,var-dart-mx95 # Variscite DART-MX95 SOM
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.47.3


