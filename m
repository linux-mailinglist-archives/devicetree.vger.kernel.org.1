Return-Path: <devicetree+bounces-90028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB59438E0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 00:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0844A2841A9
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 22:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F8416DEA5;
	Wed, 31 Jul 2024 22:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="RXeyd7CV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E62C16D9C4
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 22:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722464920; cv=none; b=eXXbTQJBN574bCLZLUPvyvtQUfvTDaCp4Rw/Dkg7IH/VREDu9OQ1ZkJgYqphnfzW87S8GVqwchVDWe27OmRlbH2BKsS98gxT7JC5PECBCJyLk3WQ9okU7x7IV11gGeVOGTYigv9jw7qQ6+dO0gtuFTjESgH8qvPPu1YUanQht/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722464920; c=relaxed/simple;
	bh=mAoM+jm0P713mKZxMhykPOMr8VcVpW3lJ0JPpibSWzM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=q+TDZ9DZUkmlgDpzlLZ3aIW9pA2rWiv3RQf4WRhKNj+VCX/qv1R5jqh6SJ1XPGWfx8n6hue2V7QV7Vnlg2PWS8RgB3rE0KU4nxgXgYdrYoP9brqdv8qC7bi2f4gsySiwSSTLIeLNHmsx6Qa230aNXIMHP4ZTFQf2PNBPk6wKBpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=RXeyd7CV; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-709339c91f9so2621437a34.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 15:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722464917; x=1723069717; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MEzSqlnsH2j9tRB5+9ly7frUJhXv2tJmhe1jZ23vhJ0=;
        b=RXeyd7CVF82M+8IeZtSpbzFhBrQKqFvVlxy9Mt4trRy1ahUJugA0vBwBxA+MKjbCIa
         N3hv3utV370A59jTjbrn0Mlt+IeHJQTQhBvXgIh/fizqbJO4kB2FAYcVA+/jSnNvRLeM
         tuJOKgIIXoo1+vsjtMXVSMJZCFLZQWDBXifQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722464917; x=1723069717;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MEzSqlnsH2j9tRB5+9ly7frUJhXv2tJmhe1jZ23vhJ0=;
        b=o/yTAayZ+8FaM8PMhdiZLPgAH6ceHFFSxNU8JBS/aKNu2NkCDcn+kIvczc9WsnUSaD
         OkTwBD7j9xN1sngcmxJC5/xEKIcPxbi0MCYl72lB0j/yfRsL4MLK+nJYh551CvbQwmJy
         d9KSsewc4ecVzmiUoIGoTIHsTwZ3yfz1wmq1RaOB4aMl1Wp0eqzrQuzjcqXhcQKQkLAr
         WpLnuU4ANSBOL8Pvx4nP87+gQoaYcQOzUezdyAW8CwHBOTMQrchRJJ9SmzyMiZOFIJxA
         lUXmUgx4m+ZqcFvP69Uqd2Wh8haYzaWkGl6efK5S1B8kdauf+XsNXfj6a1LJGDlclL4V
         Nscg==
X-Forwarded-Encrypted: i=1; AJvYcCUKrc9jxZ4XRGdkhx8gO0k+9VjU7zKRu1TAp7UFLgAD0cR0Pp2wFYggglm8W0q/IHXZx0fC+cGdGLTVooEw14W70THvaaefJLK8Xw==
X-Gm-Message-State: AOJu0Yx00WseStHl8J5CQPaa9Y7OEbLYbm5OsipRgTn+CCELjFQcPCke
	EwaWmN9al53QiYZXVlTM3Chs6tgLyQb0Y9kVtVtCC4YIHZX/FCOD27iF5WyBYQ==
X-Google-Smtp-Source: AGHT+IHhsa4xXStr5djydA447oqZ0eywB6dQmFgO7T5029BQXALrAgyEhVKlX9qDw4OJNWb9FlBZHQ==
X-Received: by 2002:a05:6830:dc2:b0:709:441a:351b with SMTP id 46e09a7af769-7096b7da64cmr506886a34.8.1722464917301;
        Wed, 31 Jul 2024 15:28:37 -0700 (PDT)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44fe8416c80sm62359181cf.96.2024.07.31.15.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 15:28:36 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v5 02/12] dt-bindings: PCI: brcmstb: Add 7712 SoC description
Date: Wed, 31 Jul 2024 18:28:16 -0400
Message-Id: <20240731222831.14895-3-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240731222831.14895-1-james.quinlan@broadcom.com>
References: <20240731222831.14895-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add description for the 7712 SoC, a Broadcom STB sibling chip of the RPi 5.
The 7712 uses three reset controllers: rescal, for phy reset calibration;
bridge, for the bridge between the PCIe bus and the memory bus; and swinit,
which is a "soft" initialization of the PCIe HW.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 .../bindings/pci/brcm,stb-pcie.yaml           | 28 +++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 7d2552192153..0925c520195a 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -21,6 +21,7 @@ properties:
           - brcm,bcm7425-pcie # Broadcom 7425 MIPs
           - brcm,bcm7435-pcie # Broadcom 7435 MIPs
           - brcm,bcm7445-pcie # Broadcom 7445 Arm
+          - brcm,bcm7712-pcie # Broadcom STB sibling of Rpi 5
 
   reg:
     maxItems: 1
@@ -96,10 +97,12 @@ properties:
       maxItems: 3
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
 required:
   - compatible
@@ -151,6 +154,27 @@ allOf:
         - resets
         - reset-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm7712-pcie
+    then:
+      properties:
+        resets:
+          minItems: 3
+          maxItems: 3
+
+        reset-names:
+          items:
+            - const: rescal
+            - const: bridge
+            - const: swinit
+
+      required:
+        - resets
+        - reset-names
+
 unevaluatedProperties: false
 
 examples:
-- 
2.17.1


