Return-Path: <devicetree+bounces-18423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F3B7F66F0
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 20:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 193C5281CFF
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 19:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2047C4B5A9;
	Thu, 23 Nov 2023 19:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="lNLTe/i9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97104D68
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 11:07:44 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5446c9f3a77so1599407a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 11:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1700766463; x=1701371263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bYRkIAiIVM/0AkH6f4aqWWKdAaLx6I2mh9AZJbsYvdY=;
        b=lNLTe/i9HZbz22YN10MFD+epyRX+RXaQHRchCXNSOJqlugSdiss8hifjo03BNZPFao
         kYbfykTxRSvo+gA+n3ar4WgqdyTgiqb0+V+xN0ey7q1PjCwYSI+Fw1UF0Z3PZFedYMha
         kq17zkgl2cfJb66m5svu6beU/BhBsiSFoJ8i8rvCYL853RoaqIzG4hC/KsYQOikVEsB2
         JuRE87ecXpEwZHWWb8GC7FCN01MH9HWaYEsh84qsCut4ebQoR2aaVimZJnRGmqEonu6Z
         zI3FYN4ATMAvhoRILtgGy+Y/cYreq6cBShy8dghoBD/Izn7YrzVqVfD+6BqfvrNdVscZ
         V1ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700766463; x=1701371263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bYRkIAiIVM/0AkH6f4aqWWKdAaLx6I2mh9AZJbsYvdY=;
        b=OoxYJ1ggF+On2k4w/wXOZ+wuZ/MqLmBj+A32g9BeQzGuvSkrkSkS649vvEX7g36d6n
         tLDPa9asRkYj+xzTcnonbulW0fU3zaDwa6BTLsO/p3V5pZtOoZMdnjSlaF4/dIKl+VWK
         6Z8Uu+QYXR/OQ2/dID3ZdOqLqP06V4Cw+O0/I0vny9FZKm9MTH5J8vNZSRk9N7ksppDo
         nq5IrS2DPcav9jSiLiH80bcl2l9BGtsvdS0aEvIVe5gPiIMfGb0VHwJqB6N4srGQ+FIp
         5W5zRohbXb4G600dzvOCd7wFGA5JQhPpm+9jhpUFNGZqVAbFtJe4SyoclPtj9dM+wYRk
         /JVg==
X-Gm-Message-State: AOJu0YyFQmo/brs5V3fqm3OCXhwmMQoGB5Fpp6KMIFapVamES+S+lS2E
	lJEtm5ykNN8F8IOilrToWWALYw==
X-Google-Smtp-Source: AGHT+IHu9uypDQOLPrcOss/BwYgdyOaSQVUmyGc3MbXyWilMmVW+3Oc5jv0J4ama35ynK9VLA5dxGQ==
X-Received: by 2002:a50:8709:0:b0:544:f786:d7c0 with SMTP id i9-20020a508709000000b00544f786d7c0mr125041edb.35.1700766462567;
        Thu, 23 Nov 2023 11:07:42 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8a96.dip0.t-ipconnect.de. [79.204.138.150])
        by smtp.googlemail.com with ESMTPSA id m11-20020a056402050b00b00548a2d1737bsm943911edv.35.2023.11.23.11.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 11:07:41 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFC] dt-bindings: renesas: Document preferred compatible naming
Date: Thu, 23 Nov 2023 20:06:12 +0100
Message-ID: <20231123190612.2427668-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.1
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
Hello,

I have mixed up the order of soc and ip a few times. The last time I did 
Krzysztof suggested a schema could help catch this, and this is my  
attempt to create one.

One thing to note is that the select clause matches on all renesas 
related bindings, including ones that are SoC agnostic and a few that 
are Renesas IP that are not related to a SoC e.g. a Renesas regulator.

For this reason these two classes of compatibles have been added to this 
schema. An alternative solution would be to change the select clause to 
"^renesas,.+-.+$" and drop these two classes from the schema.

I have tested this schema with all DTBs built for ARM using the in tree 
shmobile_defconfig and ARM64 using the renesas_defconfig found in 
Geert's renesas-drivers tree [1].

1.  https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git

---
 .../devicetree/bindings/arm/renesas-soc.yaml  | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/renesas-soc.yaml

diff --git a/Documentation/devicetree/bindings/arm/renesas-soc.yaml b/Documentation/devicetree/bindings/arm/renesas-soc.yaml
new file mode 100644
index 000000000000..be7cdb00607d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/renesas-soc.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/renesas-soc.yaml#
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
+      pattern: "^renesas,.*$"
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      # Preferred naming style for compatibles of SoC components:
+      - pattern: "^renesas,emev2-[a-z0-9-]+$"
+      - pattern: "^renesas,r7s[0-9]+-[a-z0-9-]+$"
+      - pattern: "^renesas,r8a[a-z0-9]+-[a-z0-9-]+$"
+      - pattern: "^renesas,r9a[0-9]+g[0-9]+-[a-z0-9-]+$"
+      - pattern: "^renesas,rzn1-[a-z0-9-]+$"
+      - pattern: "^renesas,rzv2m-[a-z0-9-]+$"
+      - pattern: "^renesas,sh73a0-[a-z0-9-]+$"
+
+      # SoC agnostic compatibles - new compatibles are OK:
+      - enum:
+          - renesas,bsid
+          - renesas,fcpf
+          - renesas,fcpv
+          - renesas,fdp1
+          - renesas,prr
+          - renesas,smp-sram
+          - renesas,vsp1
+          - renesas,vsp2
+
+      # Legacy namings - variations of existing patterns/compatibles are OK,
+      # but do not add completely new entries to these:
+      - pattern: "^renesas,du-[a-z0-9]+$"
+      - pattern: "^renesas,ether-[a-z0-9]+$"
+      - pattern: "^renesas,gether-[a-z0-9]+$"
+      - pattern: "^renesas,ipmmu-[a-z0-9]+$"
+      - pattern: "^renesas,pfc-[a-z0-9]+$"
+      - pattern: "^renesas,sata-[a-z0-9]+$"
+      - pattern: "^renesas,scif-[a-z0-9]+$"
+      - pattern: "^renesas,sdhi-[a-z0-9]+$"
+      - pattern: "^renesas,thermal-[a-z0-9]+$"
+      - pattern: "^renesas,usb2-phy-[a-z0-9]+$"
+      - pattern: "^renesas,vin-[a-z0-9]+$"
+
+      # Legacy compatibles - list cannot grow with new bindings:
+      - enum:
+          - renesas,dbsc-r8a73a4
+          - renesas,dbsc3-r8a7740
+          - renesas,em-gio
+          - renesas,em-sti
+          - renesas,em-uart
+          - renesas,iic-emev2
+          - renesas,sbsc-sh73a0
+          - renesas,sdhi-mmc-r8a77470
+
+      # None SoC related compatibles - new compatibles are OK:
+      - enum:
+          - renesas,5p35023
+          - renesas,r2a11302ft
+          - renesas,raa215300
+
+additionalProperties: true
-- 
2.42.1


