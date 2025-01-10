Return-Path: <devicetree+bounces-137591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5223A09D68
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7958A7A337D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 21:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88327218ABB;
	Fri, 10 Jan 2025 21:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exoxjQ1z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F8F218592;
	Fri, 10 Jan 2025 21:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736545844; cv=none; b=iM3cxKudd1f21VPoEq3F0He5UOCUiOIIf55ii5PmLyDeZEbXQbGch6b4TDYOCNUdVG7I9u8F130C0T7jwtp9Kp6OuMQroaz8KemGaDJjdxEwBCfzmxx36txGGvtARhwy+CNwj0oGRvp5QXWAPi0d7LeHLVCrP2J0DNni7IyR1bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736545844; c=relaxed/simple;
	bh=VdYC++UgtT3zpTpM+j8NPemw8YOa7RrCYBZxDppHFsU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tjv3lG5I5g550cyzAGodrwIEW9Z23qSeL5/02TxMEvQFELoCurWQrr4DtAoRcyFiid+Ame0We1fypmjAE+JRizAvbV0DqJaS325XTzUD7dvdvMbwOPtZ/V69vjkM5S+m9IYZclooIOiLJf+CSzTxF4I1MTNmCqG8rLG27bOegt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exoxjQ1z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0CFDC4CEDF;
	Fri, 10 Jan 2025 21:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736545843;
	bh=VdYC++UgtT3zpTpM+j8NPemw8YOa7RrCYBZxDppHFsU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=exoxjQ1zVSTTH1oxr8QovNACX1bTNqEbEl+DanKYdfAiJK8YMDORLw8DviTn0MB+S
	 fI0SjeySDGmN7OhZByTCeXmB3icOzfwooi1ipfgH9/6S5FxhiIkoV5pCJBhxyXo7jb
	 7vdyOivNNgwdchbR201DepTIvijSupYvGFOO7v+WE4nrOklvU3XNFGhQ7WFxq0uMOV
	 ab1WkDjMEY/+b9XBoHxVygzUcIIJLPQTUWRtjGQclm21ryfTXKyS01p1FDKR8qu8la
	 oDOQFB3MIbhUAiK7Do2k6fK/GQqlgtkz9Hg6zg2LRtVYfHRRWkk1k9Lu+T91DamE4F
	 EQ1xFg6EQBmRg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>,
	Saravana Kannan <saravanak@google.com>
Cc: linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] of/address: Fix WARN when attempting translating non-translatable addresses
Date: Fri, 10 Jan 2025 15:50:29 -0600
Message-ID: <20250110215030.3637845-2-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110215030.3637845-1-robh@kernel.org>
References: <20250110215030.3637845-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The recently added WARN() for deprecated #address-cells and #size-cells
triggered a WARN when of_platform_populate() (which calls
of_address_to_resource()) is used on nodes with non-translatable
addresses. This case is expected to return an error.

Rework the bus matching to allow no match and make the default require
an #address-cells property. That should be safe to do as any platform
missing #address-cells would have a warning already.

Fixes: 045b14ca5c36 ("of: WARN on deprecated #address-cells/#size-cells handling")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/address.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index c1f1c810e810..8770004d9b08 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -340,6 +340,15 @@ static int of_bus_default_flags_match(struct device_node *np)
 	return of_property_present(np, "#address-cells") && (of_bus_n_addr_cells(np) == 3);
 }
 
+static int of_bus_default_match(struct device_node *np)
+{
+	/*
+	 * Check for presence first since of_bus_n_addr_cells() will warn when
+	 * walking parent nodes.
+	 */
+	return of_property_present(np, "#address-cells");
+}
+
 /*
  * Array of bus specific translators
  */
@@ -384,7 +393,7 @@ static const struct of_bus of_busses[] = {
 	{
 		.name = "default",
 		.addresses = "reg",
-		.match = NULL,
+		.match = of_bus_default_match,
 		.count_cells = of_bus_default_count_cells,
 		.map = of_bus_default_map,
 		.translate = of_bus_default_translate,
@@ -399,7 +408,6 @@ static const struct of_bus *of_match_bus(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(of_busses); i++)
 		if (!of_busses[i].match || of_busses[i].match(np))
 			return &of_busses[i];
-	BUG();
 	return NULL;
 }
 
@@ -521,6 +529,8 @@ static u64 __of_translate_address(struct device_node *node,
 	if (parent == NULL)
 		return OF_BAD_ADDR;
 	bus = of_match_bus(parent);
+	if (!bus)
+		return OF_BAD_ADDR;
 
 	/* Count address cells & copy address locally */
 	bus->count_cells(dev, &na, &ns);
@@ -564,6 +574,8 @@ static u64 __of_translate_address(struct device_node *node,
 
 		/* Get new parent bus and counts */
 		pbus = of_match_bus(parent);
+		if (!pbus)
+			return OF_BAD_ADDR;
 		pbus->count_cells(dev, &pna, &pns);
 		if (!OF_CHECK_COUNTS(pna, pns)) {
 			pr_err("Bad cell count for %pOF\n", dev);
@@ -703,7 +715,7 @@ const __be32 *__of_get_address(struct device_node *dev, int index, int bar_no,
 
 	/* match the parent's bus type */
 	bus = of_match_bus(parent);
-	if (strcmp(bus->name, "pci") && (bar_no >= 0))
+	if (!bus || (strcmp(bus->name, "pci") && (bar_no >= 0)))
 		return NULL;
 
 	/* Get "reg" or "assigned-addresses" property */
-- 
2.45.2


