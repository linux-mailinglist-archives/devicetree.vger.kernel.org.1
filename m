Return-Path: <devicetree+bounces-3476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FF47AF00B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:54:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EB2821C2082E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E9A30D0E;
	Tue, 26 Sep 2023 15:54:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6878126E2A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BDDBC433C7;
	Tue, 26 Sep 2023 15:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695743664;
	bh=IisQzbKZxN86Cmpj6sgM5QxS9FVQkRRtLBZ6IuRw+iE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WBBUB6Xznr6UTOr+mgpHWKwE9UZwVwuPbr1/gMfyB3NT5I0clLCHbaz8QPs6gPwwN
	 SaAD4lmhJVbmQMwy78pk8h9sq+1kw/v3pnRVxgvCYTp9UQxDsrYkrGq/4FTUAmKYTe
	 y5HgfwdLIhJIW37hs8697WdZ4FNNCb/i+DnSpQQU9TBbH0lqi7MMxaCck+rmD/E1GG
	 Esq+PYlcyytwkFG54QUEBSBYrJGvE+ZYool3nzuca6gtZG7gLMkRyksJIXMEl51IYl
	 URoV4RnSjRbNA60NGDJx//TFKX9ZGuXJVLNjlvNx0VjZFXan/rOmITY7tEi/tsJ1G2
	 iyfFH7QtsMviA==
Received: (nullmailer pid 31938 invoked by uid 1000);
	Tue, 26 Sep 2023 15:54:21 -0000
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden <scott.branden@broadcom.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: PCI: brcm,iproc-pcie: Drop common pci-bus properties
Date: Tue, 26 Sep 2023 10:53:41 -0500
Message-Id: <20230926155351.31117-2-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230926155351.31117-1-robh@kernel.org>
References: <20230926155351.31117-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop the unnecessary listing of properties already defined in
pci-bus.yaml. Unless there are additional constraints, it is not
necessary.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pci/brcm,iproc-pcie.yaml  | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
index 0cb5bd6cffa1..6730d68fedc7 100644
--- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
@@ -34,13 +34,6 @@ properties:
     description: >
        Base address and length of the PCIe controller I/O register space
 
-  interrupt-map: true
-
-  interrupt-map-mask: true
-
-  "#interrupt-cells":
-    const: 1
-
   ranges:
     minItems: 1
     maxItems: 2
@@ -54,16 +47,8 @@ properties:
     items:
       - const: pcie-phy
 
-  bus-range: true
-
   dma-coherent: true
 
-  "#address-cells": true
-
-  "#size-cells": true
-
-  device_type: true
-
   brcm,pcie-ob:
     type: boolean
     description: >
-- 
2.40.1


