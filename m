Return-Path: <devicetree+bounces-35790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B57183ED0D
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 13:20:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 502D71C214AB
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 12:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B5520308;
	Sat, 27 Jan 2024 12:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="e5swzvSi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2414200D4
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 12:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706358014; cv=none; b=GpEb6PXU9h++ZomcUUwGjrJfNOtpoF5gXZ4P7M3FL/cKKjnJ5BbUBA1fv+Anfo2EsBfAYviP/INdC79Tx1dd0FeUKO1vMyeX7YZJMVlhnbNFBjf9Jgqvffiqffzt4s+N+7xiBpLG8EQAed+TD8mXFwWiSR4KAEtAMiTj5UOOaI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706358014; c=relaxed/simple;
	bh=vF/mkGnqPtlhYlToXP9JEg5e3NRUxLhjxhjHVgYQdF8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WjPxz/ptZxaGCDLTIj0CKKIQibm/SLqBDDxLzuNRxnLDTve3IZTeDrF84v6CAeVLp9Dh6VCA2wBWT84adVf+5WWKOf0a7o+NjcD3JIuHgu5frN82uca8T5Epxjv+a5SJYXssZCMTRHooIdmwPDQ+UeIeRSkbsAc4ltX2tA7Wasg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=e5swzvSi; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a3122b70439so174115866b.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 04:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1706358007; x=1706962807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ozt8EW6/ZnbBb0hxJhUJY17Dc1iPKbzXnuZnqfCbev4=;
        b=e5swzvSi4GZxd4UfDz84CDPW0nosRT7EUWYwGwuBuxqkwPT9nL/IyWW40rNWA6/Ibr
         HYrM5novYOJBbf4JLJ0CxPjZNTzj9AKO/JgeiKkEZfF+UEqkLZ514gLbq0iHRqWtA+c/
         d3UmIrJniNHSLAYeRrNK12Ss4JLjr0NHTvG6gun5m6UVe0O2QupfMGZnbeibicqo+94c
         M5CsUU+vZwszq7SQm/HH/DbDBZpPQLOFh9oj/G1xS9NRXHMeUSV7ymY1Ooiuz6Pv5wfI
         u54D5QaXOVacL+fXyYXT9RuQ05gyYQbeunxF2egu3YW7gU3EXx939OsmnMuDYuC6r9NK
         7rWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706358007; x=1706962807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ozt8EW6/ZnbBb0hxJhUJY17Dc1iPKbzXnuZnqfCbev4=;
        b=Rr0IQ9yMy49pX7RSGuYye6bncEocy7MSo8XIjUkM2pYTxfhIF6pzEN05+es3IW4wNZ
         prHU/5pIV6/i9LffY8CrS03oqjzjvrlCbutmtdL+jZEKEzuQb3MK68nv1IJUXk6Z2nZf
         BluCGkTjFsir53CaKYE8y+zfuuvZ8nANsSBnn076YeQSgbT+2/szY8/4iYqM6BqMQ/T/
         0w9QcO1OQq0u18RRbKRjKgWw9VH+DMqzmdsxv62AeyDXF6VSbsWEhClkH6i4huIP+vXi
         aXrrrHtWvqkUGSPWVyBFyLsTxhEt+AaA4xP1MuEU3s+TOW4yOs1usiI9jK2te4BiDA6A
         5g3g==
X-Gm-Message-State: AOJu0YwO/FpevHzTYOer5Xdn1V9aUY/BEjafPIlyinSj56ZuZxfEAx3i
	3/0a4tM83QAUREHr0dHXOYWit7cYbv2I6OeR+F3Y9q63mZOG849NVLCCHHGRuTI=
X-Google-Smtp-Source: AGHT+IH3RkhRP65qfhnAfGTZNZUN51uWpN3trcPcLtEfVBQrSnaHsjRn3959/Cz2Y2Q+yY53a1LK0g==
X-Received: by 2002:a17:906:195b:b0:a35:6299:a349 with SMTP id b27-20020a170906195b00b00a356299a349mr182273eje.32.1706358007317;
        Sat, 27 Jan 2024 04:20:07 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id tb21-20020a1709078b9500b00a3025e05665sm1738017ejc.14.2024.01.27.04.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 04:20:06 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: renesas: Document preferred compatible naming
Date: Sat, 27 Jan 2024 13:19:37 +0100
Message-ID: <20240127121937.2372098-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Compatibles can come in two formats. Either "vendor,ip-soc" or
"vendor,soc-ip". Add a DT schema file documenting Renesas preferred
policy and enforcing it for all new compatibles, except few existing
patterns.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
* Changes since v1
- Split the "SoC agnostic compatibles" section into two to make it's
  intent clearer.
- Improved the documentation for each group of compatibles.
- Reduced the number of regexp to create a larger target area. As
  suggested by Krzysztof the goal is not to validate each SoC name but
  check for the correct order of SoC-IP.

* Changes since RFC
- Moved to Documentation/devicetree/bindings/soc/renesas.
- Changed the pattern in the initial select to match on .*-.*.
- Added a lot of missing compatible values.
---
 .../bindings/soc/renesas/renesas-soc.yaml     | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
new file mode 100644
index 000000000000..91310d23cf0b
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/renesas/renesas-soc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SoC compatibles naming convention
+
+maintainers:
+  - Geert Uytterhoeven <geert+renesas@glider.be>
+  - Niklas Söderlund <niklas.soderlund@ragnatech.se>
+
+description: |
+  Guidelines for new compatibles for SoC blocks/components.
+  When adding new compatibles in new bindings, use the format::
+    renesas,SoC-IP
+
+  For example::
+   renesas,r8a77965-csi2
+
+  When adding new compatibles to existing bindings, use the format in the
+  existing binding, even if it contradicts the above.
+
+select:
+  properties:
+    compatible:
+      pattern: "^renesas,.*-.*$"
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      # Preferred naming style for compatibles of SoC components
+      - pattern: "^renesas,emev2-[a-z0-9-]+$"
+      - pattern: "^renesas,r(7s|8a|9a)[a-z0-9]+-[a-z0-9-]+$"
+      - pattern: "^renesas,rcar-[a-z0-9-]+$"
+      - pattern: "^renesas,rz[a-z0-9]*-[a-z0-9-]+$"
+      - pattern: "^renesas,sh-[a-z0-9-]+$"
+      - pattern: "^renesas,sh7[a-z0-9]+-[a-z0-9-]+$"
+
+      # Fallback compatibles
+      #
+      # Some SoC components in addition to a specific SoC compatible have a
+      # generic fallback compatible. For example the Interrupt Controller,
+      #
+      #   compatible = "renesas,intc-irqpin-r8a7740", "renesas,intc-irqpin";
+      #
+      # This is OK and new fallback compatibles are allowed.
+      - enum:
+          - renesas,cpg-div6-clock
+          - renesas,cpg-mstp-clocks
+          - renesas,intc-irqpin
+
+      # Legacy compatibles
+      #
+      # New compatibles are not allowed but new variations of existing
+      # patterns/compatibles are.
+      - pattern: "^renesas,can-[a-z0-9]+$"
+      - pattern: "^renesas,dmac-[a-z0-9]+$"
+      - pattern: "^renesas,du-[a-z0-9]+$"
+      - pattern: "^renesas,ether-[a-z0-9]+$"
+      - pattern: "^renesas,etheravb-[a-z0-9]+$"
+      - pattern: "^renesas,etheravb-rcar-gen[0-9]$"
+      - pattern: "^renesas,gether-[a-z0-9]+$"
+      - pattern: "^renesas,gpio-[a-z0-9]+$"
+      - pattern: "^renesas,hscif-[a-z0-9]+$"
+      - pattern: "^renesas,i2c-[a-z0-9]+$"
+      - pattern: "^renesas,iic-[a-z0-9]+$"
+      - pattern: "^renesas,intc-ex-[a-z0-9]+$"
+      - pattern: "^renesas,intc-irqpin-[a-z0-9]+$"
+      - pattern: "^renesas,ipmmu-[a-z0-9]+$"
+      - pattern: "^renesas,irqc-[a-z0-9]+$"
+      - pattern: "^renesas,jpu-[a-z0-9]+$"
+      - pattern: "^renesas,mmcif-[a-z0-9]+$"
+      - pattern: "^renesas,msiof-[a-z0-9]+$"
+      - pattern: "^renesas,pci-[a-z0-9]+$"
+      - pattern: "^renesas,pci-rcar-gen[0-9]$"
+      - pattern: "^renesas,pcie-[a-z0-9]+$"
+      - pattern: "^renesas,pcie-rcar-gen[0-9]$"
+      - pattern: "^renesas,pfc-[a-z0-9]+$"
+      - pattern: "^renesas,pwm-[a-z0-9]+$"
+      - pattern: "^renesas,qspi-[a-z0-9]+$"
+      - pattern: "^renesas,rcar_sound-[a-z0-9]+$"
+      - pattern: "^renesas,riic-[a-z0-9]+$"
+      - pattern: "^renesas,rspi-[a-z0-9]+$"
+      - pattern: "^renesas,sata-[a-z0-9]+(-es1)?$"
+      - pattern: "^renesas,scif-[a-z0-9]+$"
+      - pattern: "^renesas,scifa-[a-z0-9]+$"
+      - pattern: "^renesas,scifb-[a-z0-9]+$"
+      - pattern: "^renesas,sdhi-[a-z0-9]+$"
+      - pattern: "^renesas,thermal-[a-z0-9]+$"
+      - pattern: "^renesas,tmu-[a-z0-9]+$"
+      - pattern: "^renesas,tpu-[a-z0-9]+$"
+      - pattern: "^renesas,usb-phy-[a-z0-9]+$"
+      - pattern: "^renesas,usb2-phy-[a-z0-9]+$"
+      - pattern: "^renesas,usbhs-[a-z0-9]+$"
+      - pattern: "^renesas,vin-[a-z0-9]+$"
+      - pattern: "^renesas,xhci-[a-z0-9]+$"
+
+      # Fixed legacy compatibles
+      #
+      # List cannot grow with new bindings.
+      - enum:
+          - renesas,bsc-r8a73a4
+          - renesas,bsc-sh73a0
+          - renesas,dbsc-r8a73a4
+          - renesas,dbsc3-r8a7740
+          - renesas,em-gio
+          - renesas,em-sti
+          - renesas,em-uart
+          - renesas,fsi2-r8a7740
+          - renesas,fsi2-sh73a0
+          - renesas,hspi-r8a7778
+          - renesas,hspi-r8a7779
+          - renesas,imr-lx4
+          - renesas,mtu2-r7s72100
+          - renesas,rmobile-iic
+          - renesas,sbsc-sh73a0
+          - renesas,sdhi-mmc-r8a77470
+          - renesas,shmobile-flctl-sh7372
+          - renesas,sysc-r8a73a4
+          - renesas,sysc-r8a7740
+          - renesas,sysc-rmobile
+          - renesas,sysc-sh73a0
+          - renesas,usb-dmac
+
+      # None SoC component compatibles
+      #
+      # Compatibles with the Renesas vendor prefix that do not relate to any SoC
+      # component are OK. New compatibles are allowed.
+      - enum:
+          - renesas,smp-sram
+
+additionalProperties: true
-- 
2.43.0


