Return-Path: <devicetree+bounces-277202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJfZN/eeumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:47:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 425FE2BBCA8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD0F1301B73E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFCF43D5225;
	Wed, 18 Mar 2026 12:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mUfK8uxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27573D75A1
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837914; cv=none; b=rGJMaTFIMX/Rvy5JjydAVvwQfDRErN2CsY71IhTJ5Htm6/kzyfgKr6arjhi5Kqj/YoaWlTymFL1KMnoZKHpAdkPUOoJ/adGxavQ4PJGHyDqWO4FbTsvP9geEBcXjWIyexMwPJjlDRWFpYPTaJhrXqIgKsA/XdXQgMQ4t4fhibsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837914; c=relaxed/simple;
	bh=WzTncAMQYnUAjkJv6VacHhJuXVWxUaLMygBhcDC1f9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SgEgUdGsRZGT5D+gnPX5QlAAxQmKLC9USw3AOJ8PtsPywjVE1jsSuPokGut2Lt+goNwrEAPJmytuxgpsuoDPihC5VwnXdg/GjaZPj3g1XIw/Y68ntTvA8zg6/F52gdO77BdAw2cU174KXRl4hizfko0B1Qxk1C0L/yyxOj3EGy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mUfK8uxO; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-43b4d734678so1677271f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837908; x=1774442708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=stC055Do0g5JVm9ctV7BdXY8ikwKBl5kRv52IetvAxY=;
        b=mUfK8uxOOgZ67GQsE/RnpR75Xw26rRNFofBH0GGqHFlnfOua3w+0WC3NHasT/DQdMs
         ttsJRxDjhPfmgXzz+P6UEU8BVYxSBNHXutsdlLGj1DQ+RjnrZhekKF83sjhu72xeBDfN
         Y8nGLWxTV1tqKggOwaCYkRaXaxav4zhIdjRr1vgqyBaumBkBfAdwxE5xYrYrzf5TJZa+
         O7W1Jx+DkqWkeIc5gdxx05ivD6hKczzOpJEjaw8avjgNhYpYuWGr4vcUXNdxzNRBvo9m
         lKITew3viWQeMB8RO9iMcv8fZTbTBRWLtGTq1fYsnhP8g1cg3Ni+CLqNzl6biKnLBGjp
         g5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837908; x=1774442708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=stC055Do0g5JVm9ctV7BdXY8ikwKBl5kRv52IetvAxY=;
        b=RZ3L94efwviCCK0QfQHAcNzCm+001Efd5EEZHmpwNp8shvSmgUTgFVQYiNdzW5U2IM
         VXhk4j6TZDL24D6yX/uDWpkYUSKWE+vTtqgLEM1IwtvxqASlSj6XPcBWfULknvx4sEEk
         oA7cMUBVrSJf0vsjqlQEoclRo1yPOqcu9R63aAg0rE1cYIMmXheMsdI0hMCcnUTQnquy
         ZrkNjWmIg2HZ8F2+cGeFwLy7GjEDhTtcDnhoLCMt3QMXYy98HQD8k7o9Ru1ZVcQSMQTN
         HYeyGd1cc1GjMAMGL3QA2mKQxL2BEV863n9WVBEkPYvK5Z3i1rOA0UsZgRQQduWbmCNX
         DORQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi4fzDEFTIocVUvLDdXJVH876mnX4Bt2ai6o1O8RdI3I31lygr7u+s1F7q2013x3fcmlhE+niF9dgA@vger.kernel.org
X-Gm-Message-State: AOJu0Yze7WEaoqQySLL691GT93vLR3RRWbQXk9gJ6T4+bEUE723kHc2e
	LGbskMYFUcv9UGfGZTGuq2twghna4bIDeSydyZFxaKOPP6eMX7bWw2SZ
X-Gm-Gg: ATEYQzyaNp+watJpaH0iKxZiw2uPvXtn9A/FMv7IF0CYgxBtnDQ4QYPNBc+SjBH6cfX
	oRQcB9Vq5WM6f096BeXW3qGyhlOog540JEKxboNzRdofCOqIE9Sxdg9EK3vsYPFuJAYH2kXO4ht
	QCs40GlV8FJjdsXa8IWZmB1Ge4a0nS3C5qaQ+MSYawXtuCkbJyXzW/njDSSiAxnK/ORvgEUCHIV
	TUsLS//apRbfiZ0bVCY1jmvKws0ltCZ1oaB5YHY4CFaRFlH81AmViT0aYi3IaKllHIbBaZT1UWl
	VPx/EDMxhVL9eqO3enF6gCJd/1eGJyySSEYUWuWeEhdri1YMh5McflceJXFQzCQEABilwagmPHl
	VaTYe1L27+ex9Xl+K1FVJ8HVfY2/PIDrsJxEbyC7JxyQxOerHVp7DgxFPMCGR0hdhOEmm3Tkd2m
	kPJqcWypffZT32KZiiIXAieGTussDPrptacjXMzuW4X5GupPVMjJu518003k2N//olrzdhgXb86
	ts0IKl+wRG78KPTFsJeHNsTyhhn0V3tvBl4MrK6OH1hXB8=
X-Received: by 2002:a05:6000:2c04:b0:439:c6d9:7fc with SMTP id ffacd0b85a97d-43b527c4040mr5296152f8f.25.1773837907912;
        Wed, 18 Mar 2026 05:45:07 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:5f14:a98b:b4be:efbd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm7888162f8f.25.2026.03.18.05.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:45:06 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/5] dt-bindings: pci: renesas,r9a08g045-pcie: Add RZ/V2N support
Date: Wed, 18 Mar 2026 12:44:46 +0000
Message-ID: <20260318124450.163471-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260318124450.163471-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277202-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[bp.renesas.com,google.com,kernel.org,pengutronix.de,glider.be,gmail.com,sang-engineering.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,renesas.com];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 425FE2BBCA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the Renesas RZ/V2N PCIe host controller, which is compatible with
the RZ/G3E PCIe IP and therefore uses it as a fallback compatible. The
only difference is that it uses device ID 0x003B.

Make the binding title generic to avoid extending the title for each new
SoC, and update the description to list the supported SoCs and their
capabilities.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/pci/renesas,r9a08g045-pcie.yaml  | 23 ++++++++++++-------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
index a67108c48feb..858ec02e6d62 100644
--- a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
@@ -4,21 +4,27 @@
 $id: http://devicetree.org/schemas/pci/renesas,r9a08g045-pcie.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Renesas RZ/G3S PCIe host controller
+title: Renesas RZ/G3S PCIe host controller (and similar SoCs)
 
 maintainers:
   - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
 
-description:
-  Renesas RZ/G3{E,S} PCIe host controllers comply with PCIe
-  Base Specification 4.0 and support up to 5 GT/s (Gen2) for RZ/G3S and
-  up to 8 GT/s (Gen3) for RZ/G3E.
+description: |
+  PCIe host controller found in Renesas RZ/G3S and similar SoCs complies
+  with PCIe Base Specification 4.0 and supports different link speeds
+  depending on the SoC variant:
+    - Gen2 (5 GT/s): RZ/G3S
+    - Gen3 (8 GT/s): RZ/G3E, RZ/V2N
 
 properties:
   compatible:
-    enum:
-      - renesas,r9a08g045-pcie # RZ/G3S
-      - renesas,r9a09g047-pcie # RZ/G3E
+    oneOf:
+      - enum:
+          - renesas,r9a08g045-pcie # RZ/G3S
+          - renesas,r9a09g047-pcie # RZ/G3E
+      - items:
+          - const: renesas,r9a09g056-pcie # RZ/V2N
+          - const: renesas,r9a09g047-pcie
 
   reg:
     maxItems: 1
@@ -152,6 +158,7 @@ patternProperties:
         enum:
           - 0x0033
           - 0x0039
+          - 0x003B
 
       clocks:
         items:
-- 
2.53.0


