Return-Path: <devicetree+bounces-315534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zxjwD2LlPGoQuAgAu9opvQ
	(envelope-from <devicetree+bounces-315534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:22:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 950316C3BAB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:22:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=djWWtKKY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315534-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315534-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3063E30A187F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EE237C92F;
	Thu, 25 Jun 2026 08:18:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688073769E4
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 08:18:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782375507; cv=none; b=M822JqppBv/maLkc4qzpozYmv7pTObcmpK2stVTpYsBMTkGBXUKt7k3VfeBSiGCT6WDu9Gc8+DTq9kfK26ePh4J+DarNs0l4adCc/adLFje4nfplQ87G78x6X9DuWh4PJbr37N9BYG0zVZABxC+Swt2B1aJ2rbPTjTUwWY2fEZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782375507; c=relaxed/simple;
	bh=sJYSHWc09xFtiXGLxIY3eCmrqPgEujr443cRCV1hpP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iZyxMnlc2+3BkU1Qqv9pmJz2yaWUiY1XpUTDyqXn+L3sIY3zYmcwwdWsyGGtPuMFKPwA5vCRWhrU5niXf0UvmhopxeLk8triLI3JfSQOwckjiZdKhNVu5gsm+YCN//dFQSbHb6yIAitxJOxVAEHyK7RhGpuFlg0JG/NG5Vbh2Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=djWWtKKY; arc=none smtp.client-ip=209.85.167.54
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aea367c965so183475e87.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 01:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782375504; x=1782980304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eV+WP61ShKOblE3anHz+BLN4XFN+aFPa0yNq3Cy5s6A=;
        b=djWWtKKYlwe1GiKgd21dgSYK+HKmJFmZigUgDj2Amtm1hFydkbgtsP2+WiXZ4iJKMI
         ixf4HoZYgSQ8Uv3GvEcCCODN6B6FlioMGm+YWIPuI67sE6xT1yt0dwOLBwDSX+NA1CWk
         hpyYTXi4VLTas8wZ+/X6eZRFaMNPwjfb8wWp5Sd6hc1y/krysqFq6sJgb3CzNFQRScWr
         pAVQ6jqO8yvxi2gm5vUQOAaijtLKhKk6inMJBmG9wfb/rNfRw8cC/Fy7EJHxIfvF+27w
         0fDj3yDruTF2sWgsd/sRyip5ihtyX5a+jLDXmeJddga7azJRPQhhUihv8rOZcIlbYoDL
         caPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782375504; x=1782980304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eV+WP61ShKOblE3anHz+BLN4XFN+aFPa0yNq3Cy5s6A=;
        b=eVAoaZ/U9HEH2BO71snd0KwCzV+OJw+uosMfIh7+ZW2wYA5S/+m/rxBtqALsWwVeh8
         G7avV5BVdJvXGIMY3DRlEFhPlEicwkHd9ybUxeBfllRlC1WTJmWC4nXzxg0YGPMlP41R
         TBdp6iO6f/XvPg62VNFW9/7qw+p/lYtE4GdxcAxNv3rwQ+kHyLYYkrNafToI7EpjFmHX
         ZL1V33BuDxURr0+Kh8pqDDRqDo3qPp6YXo3h32kkP7HshASpD/xyfAjoKD0NiUjZqE01
         pgNjS4DkW3Lto4aIdAfoGq84ztjHZHVRJsTT8EIFf9IEjp78Wr3yjTDCbefUlhyC5mCa
         e5hA==
X-Forwarded-Encrypted: i=1; AHgh+RqPWeA08dCKcGtE/AZHMpeshZPkQIwaHFRbgxYJNrx9BoHEHzcgRITDunCPRgXBiimxMzpfZ24orNOO@vger.kernel.org
X-Gm-Message-State: AOJu0YwE5UcpwAYSC/PuGUW6bo4P9rVRbQzOEJHF9m4IZi++OmxvLUJT
	wbKQEF4Eex3MfeBpOqCD9A+NbnSf7ziP0eZksrnsmG2QrnF6zg0NHVEg
X-Gm-Gg: AfdE7cnjI7s1Iqnxjvw91LkbSJ7myLuDJeVq6AhpXP0QTpddDnlZw2W/J91hkTSfEKu
	grFVkxWdc89W9u9foCJqCJp+B1/1pE5CL7E+cvLJrzuBPJOEGssWxTVdFWYvhXz/LoMl86KCYVP
	DIjFqeucOroa1MCyp88synsgzoQDYZg2zYeRJps4Qnx3Y9w+XFvMk+aom09WwYseqMOFXrh2Z7F
	8toY6KW4ESGovWBgRcB9UwsVfC1Bq4Pp1UK2NQuu3EUrlMOI9LUlYm/gK8KlOXFIaW33UKaxrLn
	MGqd5EKifIOJdmpQQFnmOEUfF5nfJkT72V1NKltJbFNdEX08NSinSLmT/Tj1/Tq9SQ2rs1nEEIp
	HhiC21C7TX+Ql2yd7QSLxcbXoJu+2O2LriqXvfNRn+/j9isnRTTwrAVGvkjX91GvPmDl6QZQInl
	Tzkc8u7yPcTTEB797YObkNf2K/sQYrc34/FA==
X-Received: by 2002:a05:6512:64ed:b0:5aa:6ede:51 with SMTP id 2adb3069b0e04-5aea1f61b7dmr404454e87.27.1782375504313;
        Thu, 25 Jun 2026 01:18:24 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad6957a268sm2464601e87.38.2026.06.25.01.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 01:18:23 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v6 2/6 RESEND] dt-bindings: input: cpcap-pwrbutton: convert to DT schema
Date: Thu, 25 Jun 2026 11:18:08 +0300
Message-ID: <20260625081812.33474-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260625081812.33474-1-clamor95@gmail.com>
References: <20260625081812.33474-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-315534-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lee@kernel.org,m:pavel@kernel.org,m:clamor95@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 950316C3BAB

Convert power button devicetree bindings for the Motorola CPCAP MFD from
TXT to YAML format. This patch does not change any functionality; the
bindings remain the same.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
 .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
 create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml

diff --git a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt b/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
deleted file mode 100644
index 0dd0076daf71..000000000000
--- a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Motorola CPCAP on key
-
-This module is part of the CPCAP. For more details about the whole
-chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
-
-This module provides a simple power button event via an Interrupt.
-
-Required properties:
-- compatible: should be one of the following
-   - "motorola,cpcap-pwrbutton"
-- interrupts: irq specifier for CPCAP's ON IRQ
-
-Example:
-
-&cpcap {
-	cpcap_pwrbutton: pwrbutton {
-		compatible = "motorola,cpcap-pwrbutton";
-		interrupts = <23 IRQ_TYPE_NONE>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
new file mode 100644
index 000000000000..77a3e5a47d1a
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/motorola,cpcap-pwrbutton.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC power key
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  This module is part of the Motorola CPCAP MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
+  power key is represented as a sub-node of the PMIC node on the device
+  tree.
+
+properties:
+  compatible:
+    const: motorola,cpcap-pwrbutton
+
+  interrupts:
+    items:
+      - description: CPCAP's ON interrupt
+
+required:
+  - compatible
+  - interrupts
+
+additionalProperties: false
+
+...
-- 
2.51.0


