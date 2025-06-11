Return-Path: <devicetree+bounces-184554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB110AD4938
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 05:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13054165F53
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 03:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079642253F3;
	Wed, 11 Jun 2025 03:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="EJ24A5lP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ACA15B54C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 03:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749611444; cv=none; b=qbP3d/af1mnlUU7vV5dwWNpRlIZWts0ikEdbMPe2rTmjWqFc3OJXI6o9I0Nbib45ihp6vij0dfdGViSCKATmMExDQapTmOQkvLJju3CzipWVQktjUEq1V0IPmNanoRgYFctzu1ScVtzSjqHKV/IsLM0/0jkM++z0mewtccxljmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749611444; c=relaxed/simple;
	bh=cQCoqGfVXgfH6RP6u627QjM4iBrGZCHy/CEOkuwAHpY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=qVN461xsOhWR2s4XVjSsw51Rs70grIb0acTvLQSjC5ph9owkYNUbM6hA9t6ln7UCF9j5RTiSgKfggJG11gURENYz5dpWvGnh0PMM5JFiM8LW8rwOzxsz8O+0W0fqOfgMWDWDQ3yx8wUaBlbm3K47ynllqFCRk+/5J/i4OlzqE+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=EJ24A5lP; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-235e1d710d8so76041535ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 20:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1749611443; x=1750216243; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yB2voV3T1S6s0kr9GCPOg8+T/mhra2+9mwe9rgHhrTY=;
        b=EJ24A5lPD8Ad9YwaZENdBBMg+jHKDm8bClXh+vcVWCWe8+conWAeTnfSeYMiak343C
         UA/SPdVjn9NaPqlIbpKAKwsvAQIW/bA5AtRKIRXaGdjzcGKfsA2XpE0p987Bkqh+BCws
         QKRm0XK5xWdQApyXs3Z7Ov26/6G8t/t8N3JPCBbcImOw32aYfYv9NBwo3pzDdTO78qfM
         Ub/CN0yrvUXgfFjA9CjWcH2ub0pJbilKksEIBSVgfi03Ldjzpd2bBVRxKiRym9sjAOX+
         FDYYjUWS0l5fNtmd4ELXMtPgmX+rMd/csVcBB3Jfy6aKR/xyHiNQEmwMPTHRrJEhKU9T
         a25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749611443; x=1750216243;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yB2voV3T1S6s0kr9GCPOg8+T/mhra2+9mwe9rgHhrTY=;
        b=JeiFFUBoxYA+H4BBQSZ6duiPyJbUQMT69LOJL63hIZp6cx44lVGrRKzLPxe+3E9tim
         ntN/qBCu15lToEiublEErJsuVY1qRTjf5gVv84rf25giw9BGaRNULZTaHDnikMZdFAoD
         X+OiKKsMmmn+wUN5zmNs9lgzIYQclbxpQOVPDK5OQo1KF0qHr8OhfOf6q5zsSwMak676
         PH9/LF+8/xUfJz+MxGku5z60ciCPMCKWadbuVtFIlHrXJI/nFZAnNynUBN93hClwk6EZ
         cymERCMEi8ZH03IS6Q/vIPzR3gxLf4yBkNUuplZvAnprJXznJ0c0USRI6dFusZ4PnViZ
         6opw==
X-Forwarded-Encrypted: i=1; AJvYcCViAGiySYkDQiVbjh5xUBJhld7L9RynbM0uZFIcdwqXkLlIkA0GNg/1Afbx+2HiNqKQyB+rSav+JPQ5@vger.kernel.org
X-Gm-Message-State: AOJu0YxL1dZahMZ+04M89e4/eFas2/ELMbGj2m0JQH9b/EW0DsDg1zNC
	6FzZQVouAabhXDcWO5v3pdrQ21QCVsmlMnbo5PsWYxwU3EjIMEhkyFckJXb9nFk96fvslEE3RMA
	Zowcw
X-Gm-Gg: ASbGncvCh2sxsgGvQhtGtU6W6Z3rptz8iT+cE9aGcdHnQgibFbiZ96t4ml7BdtNq+QO
	Q+8vFMXIbSk51/1DFMrwwENjDoR8uXwwXeedOkFcO7qZcqvosoENuw3iJXTY/CVDSfBGgxLP0Al
	4Izz8fPz+j4ERxSIeHUbX5DiH1Xve31CX+O+qzwWu1bmRUsHC31/ab3/ugHU2uHlM8yKwgO5Jj2
	xdhANzsZi/Mp92dOHYLzE1ZnsWzBF0rOrUJwC3KNYTLZB/q6tH0a47d05WNZXVWD2Sg+4oKUbeo
	Mfis7XPS5FV3dH5VT7IKL+8PfAXWkEi35McPVeGScqJFXsCgf3xo/SNW9ADIqTXF+dc9EGcu2mV
	kEuvbQo42
X-Google-Smtp-Source: AGHT+IF31vP92Jv6j9lEk0SYqK0SMTOB/iLYB6Qw7J13ixzOTBSXlAdB2rxPm5OhCWdhoVqhRABcCw==
X-Received: by 2002:a17:902:c40a:b0:235:f1e4:3383 with SMTP id d9443c01a7336-23641aa2426mr19809255ad.7.1749611442683;
        Tue, 10 Jun 2025 20:10:42 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236030789c2sm77669035ad.29.2025.06.10.20.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 20:10:42 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	Cyan Yang <cyan.yang@sifive.com>,
	Nick Hu <nick.hu@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH v2 1/3] dt-bindings: power: Add SiFive Domain Management controllers
Date: Wed, 11 Jun 2025 11:10:20 +0800
Message-Id: <20250611031023.28769-2-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250611031023.28769-1-nick.hu@sifive.com>
References: <20250611031023.28769-1-nick.hu@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

SiFive Domain Management controller includes the following components
- SiFive Tile Management Controller
- SiFive Cluster Management Controller
- SiFive Core Complex Management Controller

These controllers control the clock and power domain of the
corresponding domain.

However, Since we don't have a SoC specific compatible string yet, so
add '- {}' for the first entry [1][2].

Links:
- [1] https://lore.kernel.org/lkml/20250311195953.GA14239-robh@kernel.org/
- [2] https://lore.kernel.org/lkml/CAKddAkAzDGL-7MbroRqQnZzPXOquUMKNuGGppqB-d_XZXbcvBA@mail.gmail.com/T/#t

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
 .../devicetree/bindings/power/sifive,tmc.yaml | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.yaml

diff --git a/Documentation/devicetree/bindings/power/sifive,tmc.yaml b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
new file mode 100644
index 000000000000..4567d51148e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/sifive,tmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Domain Management Controller
+
+maintainers:
+  - Cyan Yang <cyan.yang@sifive.com>
+  - Nick Hu <nick.hu@sifive.com>
+  - Samuel Holland <samuel.holland@sifive.com>
+
+description: |
+  SiFive Domain Management Controllers includes the following components
+    - Tile Management Controller (TMC)
+    - Cluster Management Controller (CMC)
+    - Subsystem Management Controller (SMC)
+  These controllers manage both the clock and power domains of the
+  associated components. They support the SiFive Quiet Interface Protocol
+  (SQIP) starting from Version 1. The control method differs from Version
+  0, making them incompatible.
+
+allOf:
+  - $ref: power-domain.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,cmc3
+          - const: sifive,cmc2
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,cmc2
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,smc0
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,smc1
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,smc3
+          - const: sifive,smc1
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,tmc0
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,tmc1
+      - items:
+          - {} # Leave a empty for future SoC specific compatible string
+          - const: sifive,tmc3
+          - const: sifive,tmc1
+
+  reg:
+    maxItems: 1
+
+  "#power-domain-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+# The example will be added once the SoC specific compatible string is available
-- 
2.17.1


