Return-Path: <devicetree+bounces-277450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK9cNwr/ummAeAIAu9opvQ
	(envelope-from <devicetree+bounces-277450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:37:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C862C2132
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 654DD313BC59
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2433F23B1;
	Wed, 18 Mar 2026 19:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iGL9RlFc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CBC3F211B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862605; cv=none; b=Bgvx490mf1SYBXGk9AGf73Nqgmq+TdM/VHNHffn2idyM+Ozw4ChQD1MWF50FSjPUb8KSgg5FJZh/FCkKUwKqm4BRl+4q1H7ru/RnzJfxie2PMYx2TdGJWHsXc7CpjSCkPxqU6Zm8VQf+N98RKmgskIoRr6qAwa8XatTOAOUctJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862605; c=relaxed/simple;
	bh=7+ZcBYjBKH1KNVjotBv5PHlvugP3RNddvC4qDfJSPmA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cnCWF16D564xG4J7n4S7gAjr3yKMi6rdhsLY4bORZPNkYKogRzSEutinewCYh07IrA4Ku9CiOA0Cfiq9TFvauCTegIkb2l6SwSYHIrt4P7I15BP+vkPAhYMKygzGjrpC8iqdOBkQRyU1dgNJXaRdBT7XHmXAOkV3vDfiWC7Aktc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iGL9RlFc; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35bb9070644so134598a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773862603; x=1774467403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jo0ZToIHOtReIqQmFtNomh9r/Dahbu+dh8b0PXJD3YI=;
        b=iGL9RlFc5EuWyzjpoDerPkVe3SFKVgFISiggNyUsSKUZeDi5WVM18KrO9VqxLuVJQw
         aHUyAwQNa7VR/3RGb+9euqBYb+h48FdZJNijPNIPlE6kLgCCtSmd1WAF84xVx1Ukd6dt
         CVAbarbKu6jqdRCZ03YGYf1jN0EZLBRSz7in5zcXvgoNbIUZ0/H1Keo7FE7PmK7WlXPY
         yvGzDnUaS2LCwGBVGuPWQAEEdx63aN7mmdH9LRTW+R3fXfKqjqtjEyhoifw0GWv4CmUE
         lMhwHjvySrqrbaPuRxfRh5t0coecRA+POCGoUzLN8Y0nFCxqSqjVIeJhfyzyOoy3B2kR
         KQFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773862603; x=1774467403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jo0ZToIHOtReIqQmFtNomh9r/Dahbu+dh8b0PXJD3YI=;
        b=YlbzzPGcH98wsw3mkH+5Yr1r/Pt9YSfrNB6iJzIQISAKx2jDZLRG8v7R7fc93BYAOO
         UgdJzcFDkpsRossDptHhj2DdTO4fGlUnK1KrKRB8yJwBJo+bZn3BROgqe5AN89EO/SVj
         qQwaWpvUBV+SkX97gkRzpYmclmafuUFLGZzqojtSrz762O32fXzwhlMHxOU5v/VqbPWh
         8I3CcaGo/ZNymVapWMwJWNMwYHwUACaWWAwY2gADvHlxZWrLKe8HbRJ1sWMabo1qlfkJ
         Jb5+x2CQ01E2CmGr6ASRfFWWQfmsU5I5kvQygPuqDNHLQRujW0HOBFq4CjSxyJlFlrhu
         fLtA==
X-Forwarded-Encrypted: i=1; AJvYcCVCraoNTsDazqrfdqpemnvEguEdG/3Qqzs4APklTgSvME8cKZf5dT+VUMt/q4SgS/g2ryLNabcX8SzW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrkl25MAE81TrSlXrB55LDXCgQFLqPggpEatCLIwlk648/Of9K
	5d6nT6dPKsfA+er5jt+hP11VtqH0nwq3XtzAZmsuKNsLwnbnZxegp9cd
X-Gm-Gg: ATEYQzxgGBdLDjP5WGDWH/U519O0wUYXx8EWc43Osb2XqdeXya+KsNcJ4T4bUZdnbr5
	B6FKJLtZ30g3cwCOmYPg9AhdA2/SbizNNdn0zkvmFpoQxx/n5VlDoZsPkvROgEAb3P6XcKaIskT
	vOcuDnTQ1xvcKccRYc5ORwA/1CZJUwEqhpaW1rHuHAbKtVRfZkUAWJoveBrWZl971I1im5oG9/X
	fuFBuX/8IYSTWef1XzaXFunT39nbcqMEnh0ECqn84UYi08vg5jyuhp5fWr6FSSeN4znTDjni4XB
	z0Z39UZ5IAq07JD9iemveRzC4AYs68k0TXDWXP33PifGx9PeicvXlShCQ27s4wYSxawPB1pyrtH
	MIdOq2F9o2YFXHkKn4Nbu8fL8jK02Y6e/wWQtzmpU2OqXl3Y11NYEl10Pe5AdEHY5dhTWzI+J1s
	7e10hSZZ3tmd4nEcxKKAt9MuEkY9q+jNJLUHH8Uu3fJKgkB7nlLpDM4dzBoTVqv9qVUm+AN4QWL
	FnThHPAjxXiiVbaYQaYpMM7PikqCSzz2qiijjk=
X-Received: by 2002:a17:90b:288c:b0:33b:b078:d6d3 with SMTP id 98e67ed59e1d1-35bb9f11b2cmr3546557a91.23.1773862603302;
        Wed, 18 Mar 2026 12:36:43 -0700 (PDT)
Received: from visitorckw-work01.c.googlers.com.com (100.130.194.35.bc.googleusercontent.com. [35.194.130.100])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9ff59a4sm1521664a91.2.2026.03.18.12.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 12:36:42 -0700 (PDT)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 1/3] dt-bindings: nvmem: add nuvoton,npcm750-otp
Date: Wed, 18 Mar 2026 19:35:36 +0000
Message-ID: <20260318193538.246853-2-visitorckw@gmail.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
In-Reply-To: <20260318193538.246853-1-visitorckw@gmail.com>
References: <20260318193538.246853-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,ccns.ncku.edu.tw,gmail.com,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.552];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,f0189000:email]
X-Rspamd-Queue-Id: 63C862C2132
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree bindings for the OTP memory controllers found on
Nuvoton NPCM7xx SoCs.

The NPCM7xx SoCs contain two independent OTP memory arrays:
- Key Storage (OTP1): used for cryptographic keys.
- Fuse Array (OTP2): used for hardware strapping, calibration data,
  and derivative definitions.

Each controller provides up to 1024 bytes of read-only storage.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../bindings/nvmem/nuvoton,npcm750-otp.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml b/Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
new file mode 100644
index 000000000000..45bcf72d7c78
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nuvoton,npcm750-otp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton NPCM7xx OTP (One-Time Programmable) Memory
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,npcm750-key-storage
+      - nuvoton,npcm750-fuse-array
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    otp@f0189000 {
+        compatible = "nuvoton,npcm750-key-storage";
+        reg = <0xf0189000 0x1000>;
+    };
-- 
2.53.0.851.ga537e3e6e9-goog


