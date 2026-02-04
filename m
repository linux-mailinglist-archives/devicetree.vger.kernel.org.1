Return-Path: <devicetree+bounces-262649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM2AKctIg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:25:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D06E6635
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C36930247F0
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63E0283FDD;
	Wed,  4 Feb 2026 13:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="PuPCg11V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEAF2773F0
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211397; cv=none; b=gmxJB8WL2HexmY4LT8v4OTLXp1OHr4vJodGdTHvCwzTDcGTb9zCpDwQyvdlpuoScSvrKRn+rjfQjHaKSYcdEA0LGcLA74/cRGg0pdy+zf5jlGAdLqxvq2BjPJ/RHC299hCg/pcDqi6tZ7yHr8zbflgL9WS8eI97WvPqsTvcfeYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211397; c=relaxed/simple;
	bh=4zb7DJEBy1RtessL+tA6ArL1y8kBIwpVEsbmJH+s0rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RWkKQYVUTnGTRWZNJJ/Fy5mC9qvBJNUfyywHYhtCldXguDw9u00x0EvZRODenPeAQ7eXW61AlX5Z2ROTCv9Dr3+85n5pGw2NQRWZKn+1fVmVBS+FWSVj2Zqu1T4O4o70JpMZ52fKibhf2zoIOEh+w6VqRG5LwJn7Yi+s5gemgMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=PuPCg11V; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b7381d2d95so473058eec.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770211397; x=1770816197; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=od7qXbwDJz6jtm4G2t06KDZlfQtmuOYuFdFOxoNtva0=;
        b=PuPCg11VJM1SHlfWWNrFmO5/C9FlJZ6N++HQ8IcU82KFY/L+bfwX9+HEKDcMh/OIGA
         BwUGI6ahbFoQ3ByVUjBgPiuKSywM45gY84zSzls5ZQ43P0enCqcoqJH3TtO+ub88V2xv
         1DSPngwyPNi82ArdokeqT90jr2kWYM8bf7VgkEYBMTY5d4IZKNFsA+groE8SD/Nn6Hrm
         ArZQypd99ksBFUk2x8m6QWItRU37BK8GNpE+lZ5z6XxBjTTuWTBUWSYjV1ezKRNDXXQu
         rCOypqCVS3LXz2ggeDb5l+Nsq3EpoFbh2vNn5BmKec6QcjWb5KFFH2YGdDxLYvzW1WZ0
         2xCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211397; x=1770816197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=od7qXbwDJz6jtm4G2t06KDZlfQtmuOYuFdFOxoNtva0=;
        b=dd09y2UCPouTF9kyt03f+eg7NPu9FH/EYZYn1aMyt1IvGAQdwp1okRD94pDBqrZVix
         5u1ok5QtDHJA3B8Cc+ovAYz6iKQhANboRVAVWUvPxEmHDlKOdSinh8omTjj8fs6CECFL
         hPU8Kv0eS28cn9V6a2rqb72xLYLjyN1uId61G/JNlX0L2osqCOjYtpvVsNSPbSOcelne
         rrt/9Uie4IrRgQe9TYIuMoDGGax4aRGg5fcAZCOatOvpqePU/tQNkzRQY7+LuV01FPUF
         Goss+tChrr20me2e7eqrLrrmir2nRQhJxVtusNmQSm+tiUIoOxPBic/iBZI8bhECNVuB
         +5Hg==
X-Forwarded-Encrypted: i=1; AJvYcCW/JgluGhIn9FJHpd+DcuC9vpJT012IMKs1C0GTiz9q7pJjIkHGsivtm+SqeLh8ISGZuBLKjbHSy41m@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+tDYiH/sfyia5rgXqDsP3gSsMuSbLx4O+YWcGi8efiQXfP+nU
	/3hjm4tQTceMq+GH9d1RgiKPWG4Zj2/fCaV7FMn+nCNQI5W+hotqhtDbfqkYKbfOBdQ=
X-Gm-Gg: AZuq6aKddUmT+VZoIzOpZTZwLmzXZrwYzg1VbqzeKf0pAiYNWg9QbApu4ixSCwaYhWk
	lLT0PxNM4CYXHVPEr1nPEU46lz4nj1Dg/Z9/jw2hk+mpAqfhaIktlI7cRMLhg47hl52gPfLtsvH
	ycqpNnXrimJKGXMBDU1Sllycdin43cc2BN4KgovyQhdiGhldWdT3bjlMPQkbk7KL1OvWyO1krCK
	kD0Io8GUzLDX8kEfGOhcWmyVzFtj5y6eMH/yY4XGpRowp8ZQYPyzAftU9nqn9q7iDp4LvdBfjyg
	1vfRHfbuf/3VtFybniN3BNhbCUwjA1r92HKX3qQdXIoHwi3fP3fv1bNlZd2IThzA9PIDDGvMmfb
	DXMlDerQyqKhxGB9eYpbGz7bMUJqcdoeGjRHKlvKjfIwKiubW8zb/7eKuZgIWyPq9UQ7Y6YY+Xd
	6XtoTrvFoyjk29ZKgSfYA9HX8MRLMCHxU=
X-Received: by 2002:a05:7301:1988:b0:2a6:a306:efdb with SMTP id 5a478bee46e88-2b832d7c5c4mr1189345eec.3.1770211396750;
        Wed, 04 Feb 2026 05:23:16 -0800 (PST)
Received: from [127.0.1.1] ([2604:a840:3::303d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832fc1d50sm1416731eec.27.2026.02.04.05.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:23:16 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 04 Feb 2026 21:23:01 +0800
Subject: [PATCH v3 1/3] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-spacemit-p1-v3-1-a894b3057026@riscstar.com>
References: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
In-Reply-To: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262649-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: 05D06E6635
X-Rspamd-Action: no action

Add supply properties that match the P1 PMIC's actual hardware topology
where each buck converter has its own VIN pin and LDO groups share
common input pins. Supply names are defined according to the pinout
names in the P1 datasheet.

The existing "vin-supply" is marked as deprecated to avoid warnings
as dts and dt-bindings go via different trees.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Mark vin-supply as deprecated.
v2: Remove providers from the dts example.
    Pass the 'make dt_binding_check' test.
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 53 +++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
index c6593ac6ef6a..41f784408e29 100644
--- a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
+++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
@@ -28,7 +28,46 @@ properties:
     maxItems: 1
 
   vin-supply:
-    description: Input supply phandle.
+    deprecated: true
+    description:
+      Main power input (deprecated). Use individual vin1-6, aldoin,
+      dldoin1, and dldoin2 supply properties instead.
+
+  vin1-supply:
+    description:
+      Power supply for BUCK1. Required if BUCK1 is defined.
+
+  vin2-supply:
+    description:
+      Power supply for BUCK2. Required if BUCK2 is defined.
+
+  vin3-supply:
+    description:
+      Power supply for BUCK3. Required if BUCK3 is defined.
+
+  vin4-supply:
+    description:
+      Power supply for BUCK4. Required if BUCK4 is defined.
+
+  vin5-supply:
+    description:
+      Power supply for BUCK5. Required if BUCK5 is defined.
+
+  vin6-supply:
+    description:
+      Power supply for BUCK6. Required if BUCK6 is defined.
+
+  aldoin-supply:
+    description:
+      Power supply for ALDO1-4. Required if any are defined.
+
+  dldoin1-supply:
+    description:
+      Power supply for DLDO1-4. Required if any are defined.
+
+  dldoin2-supply:
+    description:
+      Power supply for DLDO5-7. Required if any are defined.
 
   regulators:
     type: object
@@ -58,6 +97,10 @@ examples:
             compatible = "spacemit,p1";
             reg = <0x41>;
             interrupts = <64>;
+            vin1-supply = <&reg_vcc_5v>;
+            vin5-supply = <&reg_vcc_5v>;
+            aldoin-supply = <&reg_vcc_5v>;
+            dldoin1-supply = <&buck5>;
 
             regulators {
                 buck1 {
@@ -68,6 +111,14 @@ examples:
                     regulator-always-on;
                 };
 
+                buck5: buck5 {
+                    regulator-name = "buck5";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <3450000>;
+                    regulator-ramp-delay = <5000>;
+                    regulator-always-on;
+                };
+
                 aldo1 {
                     regulator-name = "aldo1";
                     regulator-min-microvolt = <500000>;

-- 
2.43.0


