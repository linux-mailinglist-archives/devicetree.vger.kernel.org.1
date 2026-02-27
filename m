Return-Path: <devicetree+bounces-269301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KwEDJq2oWm+vwQAu9opvQ
	(envelope-from <devicetree+bounces-269301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:22:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B091B9A9F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35CD930F9C5A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3815A43C04F;
	Fri, 27 Feb 2026 15:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MTj6sfkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508043C05E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205289; cv=none; b=ocHkOMy+BE1iybo3t6kL+10+DGUQuVk7UnhA2JtpHQMriae98k9QNbVFli0qT4ls3GNvC3vxLB+Syut1L7VPflJ1gRsX+m6E8tAnR0v3S/ZBNSPyqltWdRBMcff+wky5twBqG88Ldlo1ONxawd1ELIA8/0wAhiDzJ1LGc07SKfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205289; c=relaxed/simple;
	bh=FNIZtUv7ZNaCk+vyV6bZGQ007UFjUjs0swcENeL7u9o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mmRlVZfEmwHlfVt9EIhx9Q6vMmI8+e+WsgvnsXNEuy7fnvjQvkL0NsIVrZopB8SmqjfJncBxknuWrtUqkAgARwfU6o9Z3gTRhGXlDeZc3Exj0jKcf8ZJVTXkLsp3vuVo5/zVPCYUznnyGpHqEKw+1z9nqxco+NbT70Kdp+Xd+Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MTj6sfkd; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c6e191c4b8fso766799a12.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205286; x=1772810086; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+LhDXpHyy2uMROstFg52Lm5HPLU3PUU/ifmv+ZSZXB4=;
        b=MTj6sfkdP0VHErc3mT10OZmGLEECZK8X2nVM4/FEHfaIO0c0DDy8ZSJjvW5RzQmSik
         HCmpbGFc96vCYvSBY7dYYPRmOOey1AXp62+hSs4Tu5YRkszIOIJTXOdA6K4dHjKr8FIE
         MPUMF2dxTUCh2TCTOsDfWwE8/xPSZRGjIquaLyFpDntcze2C4QWSsN/OJEZ9dTxobXLf
         SMuLYKWI0OSPv5sWTjt1QUjhlbzoPWSucWCnpxp/aQkXzA61Fe9sHr/57y/O1NFO39P/
         LWga2wusSkWrgRSFeizyaNXBwa0vsbaelGPfYnZy/+mSd+JQoIe0qTKExBvKvDBvAdc/
         ZhOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205286; x=1772810086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+LhDXpHyy2uMROstFg52Lm5HPLU3PUU/ifmv+ZSZXB4=;
        b=apB1ejXhmZtg/WozRTgBi+mgXTdDwwJ3HOP6GMD0xUAWW0MgMOiLbTjrUY9/auWusr
         rYRU/SpbcwSh57u1TRtcwmYjW/EsqmeAUqRff8C4JQa1BSlZBdH9E6uanQFNEt/X8mMK
         gYqhBgtXIuY8tgfEkclTQMFpyJVJP2l6Y4iGHXWLGdiG/zUwHbeqxuSAYuudxP2TTy+3
         4FaMMUJ3zC1WL9PFcdy6ORfAbIS5FBFZTo5hh+RiWXrTWpT2ZM/D8szlG1PuxSXsZEC8
         jpqiJbSnPWQV4kpYr+agKgNhBwR3fqtkacgyvpOTrDhLZwfSGmQ8B1Gd6SzTNaQATz2A
         Rtdw==
X-Gm-Message-State: AOJu0Yz3Dxgev/zaeQC4Ucl4V4BMn6KVAn2oQK0x8c/w2ccbBAuROLUG
	X+o0mC7BzeMbYBP9qbN/LjQmPA5Z6bBn3Iyd98m6zeINB/t5bB4J0+a7
X-Gm-Gg: ATEYQzw3esSZY5P3CgYd79Yjx+4Of2Rm1zB1vVz5iA8MHoqH9os/JcdYYYocEbs27b4
	TtgZZpV2n/Y9U7Chndx6QlSW7ev25jIEzwwnVbqaF+ciERCYmdh6K3/jP7KpMuMQdb0geTISX49
	GhGzxpJl4eyPf9l0PeRNpm4DIxQIPHbp2W0J3dKKtUojY0eONfrkqFATzTNfwb1bWfidph9N3BC
	RhAu7+kvfPCEHHxcPPtSqZpSIdzMs6Nd487mNQczkR3gIO0JeC5rGIaqXctdg3cgbW05jtsNdya
	hIZ+esOBYWz8VuhNb6J6IyyBvHxziOXwjN0232kSfVvATevA4Se+AI7dMjShFaGD9qmXO8n0/Qx
	xssFxC6AUs8mHAFZIlqLeCTDmfSWcz9VuIq4ITpnUtzyvzrmZrujFNVtN6qRav91Q5eRH1rVGuN
	WUA3wgN4zh4fzjbU9MdoQHoplvpxXTwE91S9Rg5BUzRIsAvX9x
X-Received: by 2002:a17:90b:1f8f:b0:34a:8c77:d37b with SMTP id 98e67ed59e1d1-35965c93d92mr3468301a91.16.1772205286322;
        Fri, 27 Feb 2026 07:14:46 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:14:45 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 27 Feb 2026 15:14:31 +0000
Subject: [PATCH v4 1/5] dt-bindings: arm: microchip,sama7g5-chipid :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-arm-microchip-v4-1-7e2ae1c5b5d6@gmail.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269301-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:email,microchip.com:email,devicetree.org:url,fc069000:email]
X-Rspamd-Queue-Id: A7B091B9A9F
X-Rspamd-Action: no action

Convert Atmel system registers binding to YAML format.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/arm/atmel-sysregs.txt      |  5 ---
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
 2 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 5ce54f9befe6..4ee18112586d 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -1,10 +1,5 @@
 Atmel system registers
 
-Chipid required properties:
-- compatible: Should be "atmel,sama5d2-chipid" or "microchip,sama7g5-chipid"
-			"microchip,sama7d65-chipid"
-- reg : Should contain registers location and length
-
 PIT Timer required properties:
 - compatible: Should be "atmel,at91sam9260-pit"
 - reg: Should contain registers location and length
diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
new file mode 100644
index 000000000000..4fdb068be929
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel/Microchip RAMC SDRAM/DDR Controller
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
+
+description:
+  This binding describes the Atmel/Microchip Chip ID register block used
+  for SoC identification and revision information. It requires compatible
+  strings matching specific SoC families and a reg property defining the
+  register address and size.
+
+properties:
+  compatible:
+    enum:
+      - atmel,sama5d2-chipid
+      - microchip,sama7g5-chipid
+      - microchip,sama7d65-chipid
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
+    chipid@fc069000 {
+        compatible = "atmel,sama5d2-chipid";
+        reg = <0xfc069000 0x8>;
+    };
+...

-- 
2.43.0


