Return-Path: <devicetree+bounces-258225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BOyLJTScWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432B62845
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F27FB4FD096
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D7847F2E8;
	Thu, 22 Jan 2026 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rmkmIup7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8472B48033A
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067040; cv=none; b=oBFH7Q6E5WTYPPL/kAfu/K8eRKEtvlAjUsGgNPLhI3Nq+bOPL9yvEROebM515oa9a52z4jt1Y6CQSolz0uOKaI4CYMKN8wRZ5/K3v7eH7p3QlVGv+PNZxXgzslElXOEfF48orTLFX8BktGOeA7uip2KIfujKg5+qo8zsoFueEPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067040; c=relaxed/simple;
	bh=GJcIqdinoJ8Cp9/UqzllyVA7y/YmJi9zscvo1d6K1aU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QrFuQZAPTmTVDTqqYAnPRuY0p8WFh8izk527b2Ielli9mEf0/DYhnAr0sltz3tU5HV0TtfTp4LAmKT5VrUeHHWFzamykf3TYcWz2mtQK1sY7PUzH8eKi0vaCX3ofsMjcd0cyPvdzdnyN33oEmkFpdC9gg2ZFHyFwkdX6JVmMvyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rmkmIup7; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-29f30233d8aso4488235ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769067028; x=1769671828; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/UtC0xgbxRNfydioTj9MKeI23LF8ZBahNkg1gMzORk=;
        b=rmkmIup7N6ArVpjgUwDv0ZE6o4vlmM3Qxf4cdBIPiiEuCDFudChRG4wNe/XGJUiF4k
         WYm0nv33SLBcZ+h7hVo6gLLltTn6tfrNb4tuMUlxk3gTBeEobctIYOn3733pZ/j5pl1h
         8h+pVr9m3jjjMoZy7HKTIJQ+2sDi4HYMFJaAPyeZE6l7GWIIfb007HJEVrYisvR7gSU/
         +EBptOc6Hva5tnVkUpyFFzW5ACLaJW+91MCt7ShXxZ1O9hr2BrAzNOI5kPROBkQX6Njr
         FFisVXMQV6ruEipzL2QrrarD3lyAkMpi7Y58ZcyJLqeizdet67OlkCX1fmWlH+2AQC57
         OTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769067028; x=1769671828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X/UtC0xgbxRNfydioTj9MKeI23LF8ZBahNkg1gMzORk=;
        b=BtR9vSCDeV7lBvDzPfUmt8GNtkTNSNFvJcwa8BvGNO73IGf9sqn6GNegZzPAxVm0Wn
         FhO8ia3q0oSgGZCRk87N21RNvXW9OvGuHadYiJxvhyVlV+6g51+4VvrLu+evF3kXXwFR
         j3Pq/R3zy0d9uF4tiRcJYcPHxI3BmazV2oJfgVWvC8L0R9tdsSJLX7OR7eEaEDeE6wth
         QQVFiKIcEMRpfdZ+tQbF0j0MEdZbC2hB5mv9Nsxozrj+J4r8QbD9vpca3C9BsXuPkY01
         rPVfa4wd48gBsgzw2y87yB+b419EKv4Sdguyntvm90eO+YefMx6DoBEU2r+3GuwCFv0A
         AbrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq2l+Vre+/Znco8MNEY2zY0vvYg1cNshFcXwfmD63fHTnj+E3rxC9zfBD3/O++XQtytp2crlZ/eE3K@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9zAHxSKKYl7nTluZyMl4GRVYrbfs8StcVUif7em9SBhO1nUHM
	sCPBvM4/UMPEbsg04zHooG1FseE2rzeNlCJk1+qDguCtou+C+lZqMJ5b62o0Yzi0k+c=
X-Gm-Gg: AZuq6aIJGgK6l4w6uC974AnxxJCA7nEnUBQHU6C5C/P4pJmKOfXZxcyD9DaxBuF0cvo
	9dol4vaBQbot7Jo+KPL98qz+Hg3/Q5zCDKrvPPwQ3pnG3gSUmIBlE7B81o8HCDzY/SJGYvYOCq1
	yB8SwO+JEYegTD7YJQvS82kEl4xNu2b50Kq/ks8Y44UXarQLJgwDcfPpfSS88eWtcR7FwjnkK6g
	+o4PoyO3YGr2AxX/ri7Zy33a6ymAGcBZjUC9KKCQNBtQFHozXrxKI8yEoUYZhgzFH4waSpd7coQ
	Os87m1kbe0QoD70MAwQDCYKAc3xi2BtJguG52UcyHKoe8OsqllLOG3YSqPM9oBOVF7fjFBfavDp
	0pa6gyTttfXzYNkGPyUoK1670INfGeTiUn1xcTaihyifkF5V/hK+9GHCXDImgx/7JpoW0eBbl+L
	dWUseGoIEgxw0sZWEdobzLiCp32nXx7bE=
X-Received: by 2002:a17:903:2343:b0:2a0:c1ca:20f7 with SMTP id d9443c01a7336-2a7188a97ffmr177066245ad.15.1769067027753;
        Wed, 21 Jan 2026 23:30:27 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm171691845ad.23.2026.01.21.23.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 23:30:27 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 22 Jan 2026 17:43:43 +0800
Subject: [PATCH 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-spacemit-p1-v1-2-309be27fbff9@riscstar.com>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
In-Reply-To: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
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
X-Spamd-Result: default: False [4.14 / 15.00];
	DATE_IN_FUTURE(4.00)[2];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258225-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,riscstar.com:mid,riscstar.com:email,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 2432B62845
X-Rspamd-Action: no action

Add supply properties that match the P1 PMIC's actual hardware topology
where each buck converter has its own VIN pin and LDO groups share
common input pins. Supply names are defined according to the pinout
names in the P1 datasheet.

This allows different boards to describe their actual
power tree connections in devicetree rather than hardcoding supply
relationships in the driver.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 58 +++++++++++++++++++++-
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
index c6593ac6ef6adb72fc48af570dc13fc9edf77ccb..abdc93b9a67b1872c8fe6955abd950622a0b69e8 100644
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
@@ -50,6 +83,15 @@ unevaluatedProperties: false
 
 examples:
   - |
+    / {
+        reg_vcc_5v: regulator-vcc-5v {
+            compatible = "regulator-fixed";
+            regulator-name = "vcc_5v";
+            regulator-min-microvolt = <5000000>;
+            regulator-max-microvolt = <5000000>;
+        };
+    };
+
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -58,6 +100,10 @@ examples:
             compatible = "spacemit,p1";
             reg = <0x41>;
             interrupts = <64>;
+            vin1-supply = <&reg_vcc_5v>;
+            vin5-supply = <&reg_vcc_5v>;
+            aldoin-supply = <&reg_vcc_5v>;
+            dldoin1-supply = <&buck5>;
 
             regulators {
                 buck1 {
@@ -68,6 +114,14 @@ examples:
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


