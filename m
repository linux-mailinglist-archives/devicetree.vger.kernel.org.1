Return-Path: <devicetree+bounces-277807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJgNF/cDvGmurAIAu9opvQ
	(envelope-from <devicetree+bounces-277807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:11:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69B2CC713
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B5D03220BD2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:07:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296333033C7;
	Thu, 19 Mar 2026 14:07:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC1C2E1758;
	Thu, 19 Mar 2026 14:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773929261; cv=none; b=IZ5RapYJkqbQDIVIW4iDv1Uo6fuRCLiKt5wfHyZo05DeZmZEe0glLOnXIrWOD3lp3yJGtCLujRsrf0BNtu5Wlkoyadz4anZ1QMcWF2XbeHTCcpaHdphsZpQqeb/HW49ujygCVmuZGmuBozCxgv2+v+4wbLx0mWqTATztt3WRQkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773929261; c=relaxed/simple;
	bh=N8DJbwoKaCi0A8gSYamTSQku9py5ds3O1ZivTUK4iCI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l4YclITdzewRbQ78+RuTwCUWqk7dfOJXjdE9q/2z6CmD1WibfO5lw5zul5hB1GQG5VA2QM+261C+nqSweVPBj44tVruQQb5/Gsvic6e3C+hDF2SVifqgtp6mDRZTCGsluT3Ee2CN0b6l59Fwz5l9TDlFzWMQAxhooIHXan5k9LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [183.192.222.244])
	by APP-03 (Coremail) with SMTP id rQCowABnieAaA7xpRC4mCw--.14810S3;
	Thu, 19 Mar 2026 22:07:25 +0800 (CST)
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: krzk@kernel.org,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc,
	Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/3] dt-bindings: mmc: Add sdhci support for Canaan k230
Date: Thu, 19 Mar 2026 22:07:03 +0800
Message-ID: <20260319140705.123502-2-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319140705.123502-1-jiayu.riscv@isrc.iscas.ac.cn>
References: <20260319140705.123502-1-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:rQCowABnieAaA7xpRC4mCw--.14810S3
X-Coremail-Antispam: 1UD129KBjvJXoW7tw4UWrWUur1DWw43CF13CFg_yoW8ArW8pF
	Z3AF9xKr4rGF13Zw1ft3Wku3W3KF1vyr4Utr1aqr1xWFsYq3WUG3y3Kwn0qr13CF4xJa4a
	9FW7ury5G342vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUQ0b7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI
	8067AKxVWUGwA2048vs2IY020Ec7CjxVAFwI0_Gr0_Xr1l8cAvFVAK0II2c7xJM28CjxkF
	64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0cI8IcV
	CY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26r1j6r4UM28EF7xvwVC2z280aVCY
	1x0267AKxVW8JVW8Jr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I
	8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCF
	s4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFI
	xGxcIEc7CjxVA2Y2ka0xkIwI1lc7CjxVAaw2AFwI0_GFv_Wryl42xK82IYc2Ij64vIr41l
	4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67
	AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8I
	cVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI
	8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v2
	6r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU2BMNUUUUU
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277807-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_SPAM(0.00)[0.223];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiayu.riscv@isrc.iscas.ac.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: AD69B2CC713
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Canaan k230 uses the SDHCI from Synopsys. Add compatible strings
to the k230. The k230 has two controllers. MMC0 supports eMMC, while
MMC1 supports SDIO.

Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 5cebe5eb1efb..2e3ac1053065 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -23,6 +23,8 @@ properties:
           - const: sophgo,sg2044-dwcmshc
           - const: sophgo,sg2042-dwcmshc
       - enum:
+          - canaan,k230-emmc
+          - canaan,k230-sdio
           - rockchip,rk3568-dwcmshc
           - rockchip,rk3588-dwcmshc
           - snps,dwcmshc-sdhci
@@ -57,6 +59,11 @@ properties:
     minItems: 4
     maxItems: 5
 
+  canaan,usb-phy:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the Canaan K230 USB PHY node required for
+                 k230-emmc/sdio.
+
   rockchip,txclk-tapnum:
     description: Specify the number of delay for tx sampling.
     $ref: /schemas/types.yaml#/definitions/uint8
@@ -89,6 +96,27 @@ required:
 allOf:
   - $ref: mmc-controller.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - canaan,k230-emmc
+              - canaan,k230-sdio
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          items:
+            - const: core
+            - const: bus
+            - const: axi
+            - const: block
+            - const: timer
+      required:
+        - canaan,usb-phy
+
   - if:
       properties:
         compatible:
-- 
2.53.0


