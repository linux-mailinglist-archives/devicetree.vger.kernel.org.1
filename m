Return-Path: <devicetree+bounces-247982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C6ECCD556
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3C093063C04
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C062DEA9B;
	Thu, 18 Dec 2025 19:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="aeHzHM0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C94312825
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084805; cv=none; b=L4+5XztH9Q4leChlfAHTkU+iwXJXbNETHY5EZVi2SnmZEBhQbvCxUZA3TVXElshYfKOyR6/IlLd34nJZQkocmQg2EtQCO82rKCsVaI3AtoplV8PoCCx4m/huBeLPyqA4kH1dvJ/UHOgUEnaOhgViw5IQdjWScqRRKc6Ad4Cus8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084805; c=relaxed/simple;
	bh=6hWxr3YWtKXnIObjWNRmQ/1q6+pnF+M8PoYECdphDaw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G4tpes0h6ujX+O6zqkk9wL4n0jkDpj9wvHESgHbh8+SAa6KWtnlk+I2LGFhZXatu5xFvLY1mQfrzDg2urIEorsut9TLtdTy0SgaFkxwFiTYrLeoiBOyNomBocXEJ6m9Jz46XpXVjBQHjvTLTadvXZvRubhyZPShq3s0hbYvQG+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=aeHzHM0X; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b7633027cb2so166566966b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766084801; x=1766689601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=chaucy1e8lWQfwVdexQ24C/rG8+K3TB71NB1amH2+HE=;
        b=aeHzHM0XRImPe8X324y5qMGjSP2yYIlmfm1Vu0MHer3vUXQ8U3rTIjI9vi/0DqueOv
         e4l6XHy9lqevEIM8ZmCzaJTvZdGbQiBs35uK973qboJdCm4gzBRIv+nOJBxgLst6FxxB
         yTdRm1ceETlaa2bUWGeWIVAMVWTVMUYcW0ScIhmc2lBvyg7j3Rv1emoZdSwMXv/pVp+I
         S3DhoUSjPK/9zFy4qwz76kVwQZJPSZPE8JVI8MR5sC2LG4hfntAbbAG8QdglEMrti+M6
         RQ9gMu2e+fu/IweNoxmrv9hpGKyVSepabkHJFa6fotq4dhtN+7N+SwbRB4NBotog2BKH
         A1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084801; x=1766689601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=chaucy1e8lWQfwVdexQ24C/rG8+K3TB71NB1amH2+HE=;
        b=OCZ+PqYb8qa4PkidVD0Xo3AuOwdHqPvvLNoY6VJQXlHt/AlnwTQ11iXVgqefigNMWY
         GNRbKq6nTgbM7Nu6BjaV43OvJiOlPe30DhRiHc+cAzEeN9y3OomTZK5AguY3R3H9HVTA
         UXuMnXsLtxNOqWCmlMiHEnMHn9YwmMVaW9Y3flaMW/7LeHAegFhIY37oHO0KSmeyIZM/
         zX1KPM6lvKHFI2NunO6SZWSPufJSOSqfGVw6Jr3JfZX3FiDM/1efv7ua5fWD9E6JvskS
         0lE+rWmuKEdr+8OK9t/vrqKxED5gtYl96hAdfE9DTVSe3EqhMmgJnesPfNzlre3MM9S/
         x0SA==
X-Forwarded-Encrypted: i=1; AJvYcCWA9bQmpovlFlXiDKmC3r3LwVqf9K8EVBik4xu8PVbSTWUjpmYsjNpPJP0J5FGm7TgD4UcZCI8/LV0W@vger.kernel.org
X-Gm-Message-State: AOJu0YzgIe0xQLQ1EY5+1/oO+D7wCRtZYSPk+RtD7p2w0CLBnqtVRYHR
	ebqbE9phy/Fa42NZ5Plh36xEz+puMrtFvIex3jTYSpbWVgE3JoRidKyzHZ/HLdWaqw0=
X-Gm-Gg: AY/fxX5KxijVrEJpn8wY1u4/osCEOfmjibN1KF1hghKsSsemHJeKXDqVfDFlxcfENWg
	QjDeNRwhrgW30elGlLszJv+DUSoh8qBs+hNr8GkBtBNur/qH8Af9jTfEzaaS/BFY5KhybEcEmeb
	KoiM/LNlwzKEpQiCEp8mc20xjd/Dz9XNd02LvkSPCYlLHAhD5rgpKvZDIVThwZh/lKPuHG2FMM7
	foHWRv6KBQR0rketVimYHq1K7j6lGNnmki+I4CfJLf+j1dy/j2IroOmpRBILVl101dz4yaWLiNT
	ezLBH4Pi8T2wWQq3MtfWzaK8aMY7AxZ7VP4SaFlirljoZcowgD0u4R7aO4zD1GUfA4A15tey1yV
	pAe8lpI5AbFqW1vZVULR1Kg9Hfpq1GnTth1KM2+UchaTIwrUNHrs/cpU7BkiPIgQ788V/5lL+pn
	6Mu5JBQ/cWx9vuZ9qusJJgyOd2+qpLVA9cvQvZFTlCYMTBL+xTRhlmG+LBcXQHwSg1
X-Google-Smtp-Source: AGHT+IGJ7OubBdUcx7Liyf+zesKkie0GYHAOmU4YtaOMc800CNMruH3bkATR+xrHJMNRK5MvnKCc8Q==
X-Received: by 2002:a17:907:72c8:b0:b73:6d56:7459 with SMTP id a640c23a62f3a-b803717a112mr37909566b.38.1766084800505;
        Thu, 18 Dec 2025 11:06:40 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5bdf3sm18392666b.12.2025.12.18.11.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:06:40 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 1/4] dt-bindings: misc: pci1de4,1: add required reg property for endpoint
Date: Thu, 18 Dec 2025 20:09:06 +0100
Message-ID: <b58bfcd957b2270fcf932d463f2db534b2ae1a6d.1766077285.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1766077285.git.andrea.porta@suse.com>
References: <cover.1766077285.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCI subsystem links an endpoint Device Tree node to its corresponding
pci_dev structure only if the Bus/Device/Function (BDF) encoded in the
'reg' property matches the actual hardware topology.

Add the 'reg' property and mark it as required to ensure proper binding
between the device_node and the pci_dev.

Update the example to reflect this requirement.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/misc/pci1de4,1.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
index 2f9a7a554ed8a..17a8c19af8cc2 100644
--- a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
+++ b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
@@ -25,6 +25,10 @@ properties:
     items:
       - const: pci1de4,1
 
+  reg:
+    maxItems: 1
+    description: The PCI Bus-Device-Function address.
+
   '#interrupt-cells':
     const: 2
     description: |
@@ -101,6 +105,7 @@ unevaluatedProperties: false
 
 required:
   - compatible
+  - reg
   - '#interrupt-cells'
   - interrupt-controller
   - pci-ep-bus@1
@@ -111,8 +116,9 @@ examples:
         #address-cells = <3>;
         #size-cells = <2>;
 
-        rp1@0,0 {
+        dev@0,0 {
             compatible = "pci1de4,1";
+            reg = <0x10000 0x0 0x0 0x0 0x0>;
             ranges = <0x01 0x00 0x00000000  0x82010000 0x00 0x00  0x00 0x400000>;
             #address-cells = <3>;
             #size-cells = <2>;
-- 
2.35.3


