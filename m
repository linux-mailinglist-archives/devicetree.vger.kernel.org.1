Return-Path: <devicetree+bounces-259145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBIbN+NKdGlu4QAAu9opvQ
	(envelope-from <devicetree+bounces-259145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4627C7BC
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 050B7301AB8A
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 04:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66FD2255248;
	Sat, 24 Jan 2026 04:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EFJTwxVU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3B234973
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228986; cv=none; b=qGqpcW8M8mlDUI4MTocbkmfjbliSCMCavcNeLeKKHfbY5WoccWrHu3AjvVv6QB70ZsgERKWcaAnIl7Xa4yQALKBz6Z/mf+oRVsSyNlJZo5H5GJGaTA8MHk/GzEVMetimlNJx+pLNFwlvYshIeVbhyRPd5OxZL+DipdnF/kFXeng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228986; c=relaxed/simple;
	bh=PxCbbfZ5lHQpEo34pLqxhp0zyI/8m4vA8l4kj4Ftvrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eNbVM85Vkx6zezbOuFiRzoI1T1kCOeEy7kADv/ruZWgCZiAay6i3pyQSuIy0GJG466A1PR+9wpS54Cw+kwgtby+1i80lASZXoQgPQc2wL9QgpcnlnkKqm+/yc/aw70kjr5R3bc+6I4cF26RvvfVwF+Qkb5iPv5aDT+YioxUfIR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EFJTwxVU; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-8220bd582ddso1445196b3a.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769228984; x=1769833784; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dTPYDNMkVOo0iJht/gmiXkCD/RZGstsRjMC0icZDXcM=;
        b=EFJTwxVUJ0nyzVwXu++abqtEdd8e67b45ZD4Plh1T+Wt5NDfkLif5sn5o/gWVguJq2
         ah9bA7pLnTwixcFjiUgudbS+RisRsb6poqW8gt6a8XvTerCXs27xsN91pKlCSRbLhVdn
         UiJosryDpRwnSXHUGUKuCWdsYyKFLt01lVN1O4NCt6n8jzsuJ8B6QpeS7ElvRZ0sMi/A
         vofEQGxBvzALs9h7qhzsS/4lUS2YhwL+LSDhWvePdyLjOxv3VxIAHQ3YdX0jQ9sG9tSF
         qcVkj6MdNl2CcgztKWCIJrE+VTzkedPBIeoGKR5dqTwE99BUPQf8pWTKPIsnBxP1aZFw
         jjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769228984; x=1769833784;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dTPYDNMkVOo0iJht/gmiXkCD/RZGstsRjMC0icZDXcM=;
        b=nHkxWfx3FulDDAw8ZZ9epno9nXEpX185nyMBKekrt00KnfdvYhv+t0DhMAhKinX8bI
         cBAWoj/YFKokv6L8KmewQk87N2SPr9GL93uhVGL4r6B8n9Jo0kA2j4P5rBqUq898nQeQ
         q4v/OuR+cowtM7S6C0pMdjRBFPTBj51jY5cZL+WSChDX2m0UtQ5LogZ1O9oMKrGBHydB
         vtv05RlHl/D9avh6ChBJ82VGsgbSmY/8mYcKBYVhti7YlWYE+t2ayVLCubMIroruqDJt
         D7pC+G3MCmTXgcC8lvc8lV2NyRqqOBmdwEa8Z7xKy+MykOqcKaj3LqL1/NmDOTwpWbHp
         jstQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwd3piZw+u3dfeuS2tkDIVC1MyeHFYfTYZqPVGZAZ7JG4ZX7CXmZDfOm53lMLlZp8D7WPw4A2To5Eh@vger.kernel.org
X-Gm-Message-State: AOJu0YwNZsaIMY5Pf4bdWHDFARoCCoCaJ2odTBCZY1mS/BibiBUEz4Tp
	SFpuoDW3r82/8PKVz/pVr38JmNfwa8SV7RV63BTVT+SRZ0fLDYjMDdj40DEWUFPKQUg=
X-Gm-Gg: AZuq6aLRkoUARQfJghbx/4i0UqFtYJFyd+KXJgd47Pik8M4OOZep1/aE0s12LgZb9z1
	nyR4CxYLRc9MeGOVVqzrCchdKcLaX66lAtq4b2V0gXwr/qbq6SW32NcwrWO8KRInp5RA18pke8E
	i5ycKKTDlxegq6zk+/AFyZ11yN3VFOa6MRBRuGq/nUZaDXdgMx5NFFNindfOpdQjBWLnsYn6SuA
	s4xpdvL1vKbfrDRHkxxKyge5uBeXxSzkTZuxejR00jYIlLMgxmg3W+W9MxhN+Qe/cpx9UnX0CHZ
	7yCd9y8WflV8RmMPlZ2VSZYytBu+sVBsItx6yct4L5gZNVnj0x5S5564rSENAPeMRPyjxx1fneC
	Iu8kgQYLrFmkPeL+winMQ/igpynizo1exqzg6r2YuxiXXIA00R/cZBJ+SNUXTnrAkPMFEFoGgHI
	tfiMI/275/MhzuiyyfIgaVgk0N2xpEE7U=
X-Received: by 2002:a05:6a00:244c:b0:7f6:4922:89cc with SMTP id d2e1a72fcca58-82317ee9cf5mr4325829b3a.57.1769228984246;
        Fri, 23 Jan 2026 20:29:44 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871d51esm3469423b3a.38.2026.01.23.20.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 20:29:43 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 24 Jan 2026 08:20:17 +0800
Subject: [PATCH v2 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-spacemit-p1-v2-2-2c86b06694ba@riscstar.com>
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259145-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3E4627C7BC
X-Rspamd-Action: no action

Add supply properties that match the P1 PMIC's actual hardware topology
where each buck converter has its own VIN pin and LDO groups share
common input pins. Supply names are defined according to the pinout
names in the P1 datasheet.

This allows different boards to describe their actual power tree
connections in devicetree rather than hardcoding supply relationships
in the driver.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Remove providers from the dts example.
    Pass the 'make dt_binding_check' test.
---
 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 +++++++++++++++++++++-
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
index c6593ac6ef6a..c67b1c6e4e4f 100644
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


