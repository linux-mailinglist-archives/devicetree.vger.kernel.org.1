Return-Path: <devicetree+bounces-137590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBF2A09D65
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C3E23AA1CD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 21:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F65217645;
	Fri, 10 Jan 2025 21:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKPMpSK2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A896C209696;
	Fri, 10 Jan 2025 21:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736545842; cv=none; b=CME9LVAOdYhbFRyKDeDHIw3iSjBedF7s2BSxekAPu/Yx2Sl+24U1ICQhkFNARlu0EAAtYdD37fAgiw6qi24cxuld9tWh1sic0HxbZhgzZXotpiMZZQRyh1Hnj2Foeww86zldkkWzH3oZ7o5gYBS0t9rVDl08+in+5vsgAX2ImQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736545842; c=relaxed/simple;
	bh=nF9tyrRFwuKiGYC39fPM/9Oxc52IGKv4m7s/YvKeu+E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JKIT83r2g/BYG4aRzBcuTT8C3vcgwKxVArUaKZSH3kCXlisuHPLJZ9f1x0tfPZE+Vo2wK+erl3EOZh6v4/2C6W2x7Q4ponWeD7wL8Sf7+0D/T0dsUBAs73jgUZbXX9izKUxFrbxQit/nhJqU4ngsVzBPsRMOZ512zMLXQTHIMIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKPMpSK2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 278D7C4CED6;
	Fri, 10 Jan 2025 21:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736545842;
	bh=nF9tyrRFwuKiGYC39fPM/9Oxc52IGKv4m7s/YvKeu+E=;
	h=From:To:Cc:Subject:Date:From;
	b=MKPMpSK2ev82viPQmRmSq1VjRI4UxlFVNqnLgJXvB9fQUkjSJ+yCoDpzl+LiR/B79
	 bpkIfQDSgQsppcOem98Md3iDaG9ZvFBj3stuINPneYa+HNSeT391Nu3uwZX0r8PubW
	 KqITaiWNlpIhTZI5yEEttV6JIZ35DEH0OFhKvp4rmIOg5TrP3hfR86cNkUH2yHsdyq
	 tk8pIGsfKevCBPgQTWvHks43eqxiALaL6RK3HKJBbAcVBP1VPYSitf4TixifPs8KKx
	 5SyemmlWeAI8R57zwQMw68QjuZNnqElWHLCpWrZbycB3zlVr7aIGkGGoHx0iTk3wC/
	 X7fqJ51aPkxuQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>,
	Saravana Kannan <saravanak@google.com>
Cc: linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] of/unittest: Add test that of_address_to_resource() fails on non-translatable address
Date: Fri, 10 Jan 2025 15:50:28 -0600
Message-ID: <20250110215030.3637845-1-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

of_address_to_resource() on a non-translatable address should return an
error. Additionally, this case also triggers a spurious WARN for
missing #address-cells/#size-cells.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/unittest-data/tests-platform.dtsi | 13 +++++++++++++
 drivers/of/unittest.c                        | 14 ++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/of/unittest-data/tests-platform.dtsi b/drivers/of/unittest-data/tests-platform.dtsi
index fa39611071b3..cd310b26b50c 100644
--- a/drivers/of/unittest-data/tests-platform.dtsi
+++ b/drivers/of/unittest-data/tests-platform.dtsi
@@ -34,5 +34,18 @@ dev@100 {
 				};
 			};
 		};
+
+		platform-tests-2 {
+			// No #address-cells or #size-cells
+			node {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				test-device@100 {
+					compatible = "test-sub-device";
+					reg = <0x100 1>;
+				};
+			};
+		};
 	};
 };
diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 80483e38d7b4..34c957add8b9 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1380,6 +1380,7 @@ static void __init of_unittest_bus_3cell_ranges(void)
 static void __init of_unittest_reg(void)
 {
 	struct device_node *np;
+	struct resource res;
 	int ret;
 	u64 addr, size;
 
@@ -1396,6 +1397,19 @@ static void __init of_unittest_reg(void)
 		np, addr);
 
 	of_node_put(np);
+
+	np = of_find_node_by_path("/testcase-data/platform-tests-2/node/test-device@100");
+	if (!np) {
+		pr_err("missing testcase data\n");
+		return;
+	}
+
+	ret = of_address_to_resource(np, 0, &res);
+	unittest(ret == -EINVAL, "of_address_to_resource(%pOF) expected error on untranslatable address\n",
+		 np);
+
+	of_node_put(np);
+
 }
 
 struct of_unittest_expected_res {
-- 
2.45.2


