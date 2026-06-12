Return-Path: <devicetree+bounces-310987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5c4lIooQLGrfKgQAu9opvQ
	(envelope-from <devicetree+bounces-310987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:58:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBCA67A04E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:58:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.com header.s=google header.b=TtdOKld7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310987-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310987-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=suse.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63D1030074A4
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF40382F3A;
	Fri, 12 Jun 2026 13:58:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4BD30EF89
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 13:58:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781272701; cv=none; b=iNRCFeTdjf1YNbzmEDUk7Cbnb1QpeupHp0nxFA76/YmHwPPl1jXBzsnXP5Qa+fScwa/gTLMKU2jiPWvtOOc9nkYRn64bRyA3IP6PN1LcYitJcITfzp1Df0FkusjKkJb8DUxdi4RnpA28Q5OXZZ2r5WuMAMvd/HugMz04IIYcIZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781272701; c=relaxed/simple;
	bh=Ca8dJCyW90j7hqP0A78f/8T/XkttlZt+kLnyxO/ThgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cjvsFFgHmRk4iymHUJSdPgCs5S/zLbGPrevUF8JyT6B5EfzUcwfK0yXQwQBq6kRjCMdkPEyYbL5gjPIGlvGR+oQOPp/4GuU/hlJjhhFM1G6jKolJNaLd7vS8TJatFf/QC+1OoHrh1In+HgdLkYhUzGVZuTmGMGMG/zY895OK7dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TtdOKld7; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-490cdae130cso5413445e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1781272695; x=1781877495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dtYIyyZaWf61k5kElg2az5B4nsfuSPsBrF1eNrN0vS4=;
        b=TtdOKld7YrI/ccnbQ2ifLsSL/c2pHA3sXsfQGVNg/vGFfCc+VcQZ6eb9WpXsboIVSt
         6Mh+AaKE9x5guJKU3uHSt03OegQbsvLvSLsMl1D4VjeatFM/nvZCxUOk1DsIYVzxUieL
         zrgeiLfVJY49CqIchi85pZqCgQwG598Z6gyuSL1qkJ2s6FwLqIZYwQch0t5Tecee8bIh
         cwLeQ6Lo8eJ2+8yNrDKomuJaZJdPF9XAppfVR1B2IjwVE0ii2ewBUtzfCOB3XB7RMZO8
         hyJEicd0/y1yomC8OQQ8Xy+/Zlpbyrvr6G5Wi0hvBwC3CGNS462NiFncrMrNV7LkeyfS
         6o0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781272695; x=1781877495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dtYIyyZaWf61k5kElg2az5B4nsfuSPsBrF1eNrN0vS4=;
        b=A2ezKfeE8Aj+lrfimNogxahYfNG1uZEjvUkA/8aNWXspaRqekixo9bfv9Df+91uQc7
         Fl/uZsOiqmWmX23stQC1GUsTCI0SxFVMc+KLrzsll0wDS7GiZBprafXYdduAbxnynJ+n
         RKrnaU2LXkQwxO9TfSlBfov/CPhRuLIFXebMHp6gh3fJzsIMNee604q8wLw9zye+8+At
         FJWb7A/Zb2sF5qWGonVZ2M4eHH8Kt8WzRtYuBRTiExTbssxFVSqsQyfZoAOUhjL/N2u6
         g+G+wsIa9z2iHgTv/htr+zHGnibldoTCN8o1DZN4AYmQQlkSEP/Eoev42/HltTMMigm+
         fXJw==
X-Forwarded-Encrypted: i=1; AFNElJ9egLZUkstgzZL350vAGZj9B4z29lU8PJZzA2lP1CUBKPF/tkScTwjVv4vHdI2aOTUb2j7tCieRq1Sl@vger.kernel.org
X-Gm-Message-State: AOJu0YzNpZj8nPX+oD1LhjepOH0p36LlL3v7sMAThQnYhvTyR/83QKRu
	DKoWO89YH9QG9foUszz67l4Lhi+oj+4oT6aMQVs/UnWf83g1jtbDUA93q+xOjhoxkky/U5dmNwC
	GsPvQkbg=
X-Gm-Gg: Acq92OHoabLyb+hDV6cDvZka/Ufudy4JrSdpyLsk5g6frMz285Z2DB3OMOmevhbJ8x8
	rbrLWayWeES3SD0kagxX4qN7Hohmh/2iTzwIGVSn+GER+vDkYoukP8gO+WG8IIcQJ8f4lJOZyem
	83lLFKO8/n7eeNr3erxcelNNyc8amkwvP5yCtuZbTL41NoYmJgPFrD/5QDyD5pxNyGsBXD1UNbp
	ng5u37/g/ky6YFnHRxVxaav5tNk4tkK+pz0/X2ruybPPCR+NVFLIGKqIi8q9Sg1a3g4mEkD/0wm
	VT7O6KctvsOe40bMkgZyh+EM9pbDt8xrkr305nPBzy97n/2U3NiyuJS7bq+KH8MgoE9R0B+f3tT
	9DA+yjysgrNRnRTuQKHelNBg/7iTbTUtW+YxtnLEOcNg9CI94CG/JWKDxacLLNQKR5kaldeFGfu
	4cpLvhCYYhPOTELJ+pJNzt
X-Received: by 2002:a05:600c:4745:b0:490:6e12:542d with SMTP id 5b1f17b1804b1-490ec4fd28bmr39923655e9.19.1781272694998;
        Fri, 12 Jun 2026 06:58:14 -0700 (PDT)
Received: from localhost ([195.94.146.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490e2c9057bsm171955365e9.5.2026.06.12.06.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 06:58:14 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	linux-pwm@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Naushir Patuck <naush@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>,
	mbrugger@suse.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: pwm: Add Raspberry Pi RP1 PWM controller
Date: Fri, 12 Jun 2026 16:01:26 +0200
Message-ID: <350c2fb454951fd2c9d959f1d94802fea8fa8152.1780670224.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1780670224.git.andrea.porta@suse.com>
References: <cover.1780670224.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-310987-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:ukleinek@kernel.org,m:linux-pwm@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:andrea.porta@suse.com,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:naush@raspberrypi.com,m:svarbanov@suse.de,m:mbrugger@suse.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andrea.porta@suse.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrea.porta@suse.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,suse.com:dkim,suse.com:email,suse.com:mid,suse.com:from_mime,suse.de:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CBCA67A04E

From: Naushir Patuck <naush@raspberrypi.com>

Add the devicetree binding documentation for the PWM
controller found in the Raspberry Pi RP1 chipset.

Signed-off-by: Naushir Patuck <naush@raspberrypi.com>
Co-developed-by: Stanimir Varbanov <svarbanov@suse.de>
Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/pwm/raspberrypi,rp1-pwm.yaml     | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml b/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml
new file mode 100644
index 0000000000000..6f8461d0454f7
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/raspberrypi,rp1-pwm.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/raspberrypi,rp1-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi RP1 PWM controller
+
+maintainers:
+  - Naushir Patuck <naush@raspberrypi.com>
+
+allOf:
+  - $ref: pwm.yaml#
+
+description: |
+  The PWM peripheral is a flexible waveform generator with a
+  variety of operational modes. It has the following features:
+   - four independent output channels
+   - 32-bit counter widths
+   - Seven output generation modes
+   - Optional per-channel output inversion
+   - Optional duty-cycle data FIFO with DMA support
+   - Optional sigma-delta noise shaping engine
+  Serves as a fan speed provider to other nodes for a PWM-connected
+  fan using shared registers (syscon).
+
+properties:
+  compatible:
+    const: raspberrypi,rp1-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 3
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pwm@98000 {
+      compatible = "raspberrypi,rp1-pwm";
+      reg = <0x98000 0x100>;
+      clocks = <&rp1_clocks 17>;
+      #pwm-cells = <3>;
+    };
-- 
2.35.3


