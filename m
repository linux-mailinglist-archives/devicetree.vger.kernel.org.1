Return-Path: <devicetree+bounces-280206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKW8JdWBw2n9rAQAu9opvQ
	(envelope-from <devicetree+bounces-280206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 07:33:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 149FA320328
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 07:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B25D23090256
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 06:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AAC35AC1D;
	Wed, 25 Mar 2026 06:33:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C48F358360
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 06:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774420407; cv=none; b=KGuqLoGTYoDqg/Xv7/6krXUZYdaG6hhJoQuGw4FTRodKtP0VYDJPbezdauV1PSkzsqRaLy4v05oAbO6OtVv1FIPj64xRnNhADpnUDwt+yDfCRT9WH2ro9lR7WU5BBMPygHSFiYyzpOIVFCodlSRza92EPDgZQ+r2ksCsb1U1qr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774420407; c=relaxed/simple;
	bh=M6krZqWk+1xRZ1+XHAx11ZNWOnRIL7gAft8MYXY7kBg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BFZ3a0/IZGRvLDxvmcMZK+Z1MH2rBFn4xuFwvhaVEvnS3NI5JyXWTNpfbYVBH/BnQ0YAMwuzGkqZEB/3wh3EBopHRWljc/GcKQOnogxKIex7gf12fByZtLfuYb2fJD2hOYt61pELb7d0u0+mrXvoKToZV0DxAhthHHBBKQi1Bl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-35a1d4a095bso403955a91.0
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 23:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774420404; x=1775025204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8q7m09ueuFwbYZwgVeKygswhkm7TJMTHIOKO/qEEZyc=;
        b=Z5Kuo7s2CBddmvAEFZ1TCsHeA9Nus+EZeWT0ZMe5NqRstycfH4bAUYhmohtEwDzWX7
         ALEhcXsy6RO1fx0kzwmdnJZvLSMnTlwqUyfC+qum64imIBak/a8I/Ip4DavGUXm6BsOl
         WqbzeA7+HviPE0bVVBzI9V0SqcT2q7C9QtY21lWjgGnGtuXmK5DAmeI0BhWz7IB18ah3
         X2UI9ghbzmnT7q+fKEgc1LH52C9Ll64N/pQgO60sLjUtxruGd3I69y6kYbxPES2aIhrZ
         GiHRNJedlt/qjHuX42E6+EUgMfe9pXGJfkySAPv0o3KnlXxXkCcNnYMgN2+XNmHGlr3g
         Py9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUB2xMqGzSESsAoFOQYOUu0gk/l2Q92hXZ8WB0Hjuf0o6ZIOROUYphSDcKD4MQPeGq1iBF8cGZjRVOg@vger.kernel.org
X-Gm-Message-State: AOJu0YzGd059TkapqDBDGr1l4+8qrVNNfY0mvP4gvQi300euciuplttN
	D0ks0Yk5NSTBo/QoqafpgSkb760voUoTJ3ubUFjiBi/bFkZZTk5EtQa2
X-Gm-Gg: ATEYQzyRPme47NR3x+3fY/HEdbokgbXddbc5bBEBFv+2RZo30TEGLNIrdzaTm2+dmOI
	Pghj6JxWfUVKf43U35CmzmbQeXeMuMEWzNOF2+tJb84B//qI1dej2Oos3s6DpCekShI5p2O4Tqu
	QiiXH4uevQneQdgsCx3oIMkpaESy4BcN776rVVCsWJgDx+m8arbV/l7LpMAjzsyafZHf1QCVLEL
	GWo5e0Nt5o0mE5l6+vB9f1Xu+DDH6qQU/V2L0L6UxIN2ooBOUI01IE1iXv9RYcdsJkvjAwTEag0
	yHSe74Uuyyy3bDi4L3oeRtmurS4V+JZcSaATsugDMu8lWe66WsMuVFJcPybi28IkhlZAOXYQKuw
	SJtkWhBTcMptN0+D9ws+FR0C0M3aC0dUzhjJ8hngPNZRnO6L+hSiGoq9oJPe63XVY/bBdnCzLVL
	gFvqvu0nNGy3dByFskWpIv/VM3nB6zT+IMPEfaxi8eoOqkW4SHHBlBWnwL7a8M6ZWi79Ucw3PPJ
	mu7b5Y=
X-Received: by 2002:a17:90b:4ccc:b0:35b:e962:11e0 with SMTP id 98e67ed59e1d1-35c007f4eb4mr5369874a91.8.1774420404401;
        Tue, 24 Mar 2026 23:33:24 -0700 (PDT)
Received: from archlinux ([103.135.252.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c0e954ba9sm526854a91.5.2026.03.24.23.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 23:33:24 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v7 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Wed, 25 Mar 2026 12:32:22 +0600
Message-ID: <20260325063254.18062-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260325063254.18062-1-email@sirat.me>
References: <20260325063254.18062-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280206-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.29:email];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sirat.me:email,sirat.me:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linuxfoundation.org:email]
X-Rspamd-Queue-Id: 149FA320328
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Make vdd-supply required. The device requires power to operate
and the property should have been required from the start.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/iio/proximity/st,vl53l0x.yaml          | 13 ++++++++++---
 MAINTAINERS                                         |  6 ++++++
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..09102310abc3 100644
--- a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
@@ -4,14 +4,17 @@
 $id: http://devicetree.org/schemas/iio/proximity/st,vl53l0x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST VL53L0X ToF ranging sensor
+title: ST VL53L0X/VL53L1X ToF ranging sensor
 
 maintainers:
   - Song Qiang <songqiang1304521@gmail.com>
+  - Siratul Islam <email@sirat.me>
 
 properties:
   compatible:
-    const: st,vl53l0x
+    enum:
+      - st,vl53l0x
+      - st,vl53l1x
 
   reg:
     maxItems: 1
@@ -21,12 +24,15 @@ properties:
 
   reset-gpios:
     maxItems: 1
+    description:
+      Phandle to the XSHUT GPIO. Used for hardware reset.
 
   vdd-supply: true
 
 required:
   - compatible
   - reg
+  - vdd-supply
 
 additionalProperties: false
 
@@ -38,8 +44,9 @@ examples:
         #size-cells = <0>;
 
         proximity@29 {
-            compatible = "st,vl53l0x";
+            compatible = "st,vl53l1x";
             reg = <0x29>;
+            vdd-supply = <&reg_3v3>;
             interrupt-parent = <&gpio>;
             interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
         };
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..a142a97be4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


