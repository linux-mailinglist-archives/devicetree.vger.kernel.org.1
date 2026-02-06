Return-Path: <devicetree+bounces-263209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMhjIy5ThWmV/wMAu9opvQ
	(envelope-from <devicetree+bounces-263209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:34:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4D1F95A3
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03620302C5CA
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 02:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85CD82652A2;
	Fri,  6 Feb 2026 02:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Eu/EZoqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D35235BE2
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 02:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345148; cv=none; b=SYL9VZQK+b4xa7RZgbUScMs0+hNAaDfnHMTDj2x8zrcgC39YFAoAXTwQ7IEPM9aiCbU9wKWpeIJAmJOs84P3EHOYKhCxKT/ROMQgvZo+X+vOQxK04mPyOOMwgNDfL6QDlhnjcX2cPhPbqOQ5xMQok1Z2tNfghHKemfCR1GfQ0io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345148; c=relaxed/simple;
	bh=iMy9rZHDZ1KHqUwkSTaauxKt7AwZPgsiueniWIPJaR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rm9VXRxqick9W0P/vHv8veZUK+zz0a/AG/jd6oBazX/tvKkoESWkuUIjp7JVgVS0yL8UJDNbuIYBsJqt1mshJsRQU+INzRPmi4MRWCFnqQb+ZW6rjXUbvsr8ZLeclS9TuFsUuWEaTmF5yFaBhDZTpIU9eRd2dkeUoR0imVB5bQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Eu/EZoqD; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c47ee987401so717132a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 18:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770345148; x=1770949948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LGIwbpL1NqbuM+Upk52hsWmEQVIHxvtG9sbbv3Y97oI=;
        b=Eu/EZoqDOXMwgSmDrjI5OGfMsAgTqjkY0nH4HfhOK7DgRiRh+zXxUvjLy9T0Fpr1La
         tNgAc++c1u0qL77Ehwx9f8MBM5xEzRYB6LUtVigZ8c8FKklmV0S7qe+jgi7H1mYJNcxM
         lcjMkRAJermtQwl2lpB5ryv5BlABLrr5hIhGzp+ceEjjiiFFXvJp4fAdFxpFVoaB0jKz
         b7Z8jwmbjMH0EeayyQXF5D5rdFqYcmTZwDY5MO0j1Ud1zETtE+vVNCyi5reAV5/jZg+M
         6Vz4+DShWkJI9cIUdrtP/R9EcOpBXuVzAWTZ0EsaWrXD+e2+N2YR0k57o/+Hbn4RJUG9
         viMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770345148; x=1770949948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LGIwbpL1NqbuM+Upk52hsWmEQVIHxvtG9sbbv3Y97oI=;
        b=HHeRDOzvq2m53/Yl4rkBkO6qoXLTTo05XM0h/z1WeMzuFMtYuXJ7EN5ifgBA2I6WR6
         8q5HhsegIKA4665/HlHyDfctyc852JQZ7gs0PscvxMphyPiLKML6+EowbWmy1J4+oLq+
         e/cOlCnRFuwYTZoXPLCYQVY5strN987iDzEIJZ5oxu7wRME30wZiwuXmKMsZZaRKOVuK
         iM1qiXqqlK33Qb3b/oG9EdEUKKYf7eZ8i62IX7zh+Tyk3wVEOJgVY4VcrZ5CtLivMBFM
         /NDnkpm9zyKXkwzhPhSGC8G4d/8cYbxYTMHfB2um4kTX0zHrxZHVx+9DkJ+iwh3TfrmZ
         XQqg==
X-Forwarded-Encrypted: i=1; AJvYcCW1ygtWLGLZBRMYpz4F/Wvh1l24TDL5Pk1VTiMNAsBLZEoEJxu3GsIVasQxfG2zScDTxStevLCTdC2y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6eaE6whY7fOjoJDvcqCCnN8kfJwBJXQcD53s6S6cr7I1tDnLH
	F7K98cqSAZlilGU8KVT6p8fXZoYW+HoAbcoeanO/VLRv4a+7XzWZaKd1mYDmui9/6zw=
X-Gm-Gg: AZuq6aKMLe8TAByP5jDQy/GGcq/96NMXdMjakmSA1wHBCK9XRhtgGhkm3J6jJQ/RCr+
	T/C8N2OCw2pLRRQ862gxhbrzGxLzPVDH0WpMdnF7l1SrYcoLfB2U0R9gjC2TZDqWGQ1jI4FLmmG
	GaNrCWiYfYaGzYamiXGTgsfXO4CqzraECI4PJlSw6i+GQpai/E2ixiZIap43oteWHlXfH5xCo6W
	XROse4FuyQKI+1Xfen1JPzQyXU1Hp+HybQsbWKbp1YKIFcxwksdpAVqMsrQm9Xdmq0pBb5EIgKi
	8knW6gZ3cuuu9TgStNeoJlHVqKMZgtwsd5ikC2x9pQRat+cdTigHUJz/nVJYJ5UolrJZMI9Cuhx
	n68LTavD3VI5+JkJTragHYC3rq+2Hjc+MnxF4NH8u0SgRHIX952lceK84/plrG3fpXdczfsLqlj
	JdBxjN+22Ufn9AoExJ8jHKtytSP/GylsX0Sx/de6n2cABsR+FIcaUl/E1J27nRrs0/QtNL/Anhm
	fHKsGg9x9yEX2BV6Po=
X-Received: by 2002:a05:6a20:4c7:b0:38e:54b8:6085 with SMTP id adf61e73a8af0-393ada2dbf9mr1053712637.30.1770345147770;
        Thu, 05 Feb 2026 18:32:27 -0800 (PST)
Received: from [127.0.1.1] (61-221-120-110.hinet-ip.hinet.net. [61.221.120.110])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b64a8a9esm158419a91.1.2026.02.05.18.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 18:32:27 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 06 Feb 2026 10:32:02 +0800
Subject: [PATCH v4 1/3] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-spacemit-p1-v4-1-8f695d93811e@riscstar.com>
References: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
In-Reply-To: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
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
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263209-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: EF4D1F95A3
X-Rspamd-Action: no action

Add supply properties that match the P1 PMIC's actual hardware topology
where each buck converter has its own VIN pin and LDO groups share
common input pins. Supply names are defined according to the pinout
names in the P1 datasheet.

The existing "vin-supply" is dropped from the binding document as the
updated spacemit P1 driver no longer parses it. Only the per-rail names
("vin1-supply", "vin2-supply", ...) are supported.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: Drop vin-supply and update the commit message.
     Intermittent dtbs_check warnings are expected while the binding and
     DTS changes land through different trees, but will resolve once both
     are merged.
v3: Mark vin-supply as deprecated.
v2: Remove providers from the dts example.
    Pass the 'make dt_binding_check' test.
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 +++++++++++++++++++++-
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
index c6593ac6ef6adb72fc48af570dc13fc9edf77ccb..c67b1c6e4e4f9235bd3965be6b68f397734530a5 100644
--- a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
+++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
@@ -27,8 +27,41 @@ properties:
   interrupts:
     maxItems: 1
 
-  vin-supply:
-    description: Input supply phandle.
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
@@ -58,6 +91,10 @@ examples:
             compatible = "spacemit,p1";
             reg = <0x41>;
             interrupts = <64>;
+            vin1-supply = <&reg_vcc_5v>;
+            vin5-supply = <&reg_vcc_5v>;
+            aldoin-supply = <&reg_vcc_5v>;
+            dldoin1-supply = <&buck5>;
 
             regulators {
                 buck1 {
@@ -68,6 +105,14 @@ examples:
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


