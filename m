Return-Path: <devicetree+bounces-53380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD75788C12F
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:49:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6ADD22E7B99
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA5F6BFB3;
	Tue, 26 Mar 2024 11:48:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64216BFA3;
	Tue, 26 Mar 2024 11:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711453738; cv=none; b=Vk1RA73s7CPyMokpTwDyMkf1ah3gwCFDIMP6TkL/CG7jYsZnr40k4dvCUZPblI7ZXg1hqNPde0c0WXBa4hp7YSaARlr76NDVGB38jMIAc6hAneJwKCUx417sEgnusCjgoStmtXdoxZT2hahl8/4LfNhrMdROlFhhVZFcsByb1kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711453738; c=relaxed/simple;
	bh=UwFmgizBkcLPceDX2gzq3uT/gbwvojCEaC29tbX2ZbY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XCzJ8J1bZJUjY1XBnc9z5aekvSv3IC7IxZWL3UBI+70XgbJR7FJ8ZqNeMi37PDzbwA3SlTTAoZwklNNrTN1/GGrng/t34uEBlcJ484Xip9PInnW9qhTXbMwVK8KXDIBpLCHz27n9r+Qly1r3JAyyFAYMbIaKLr9ma4OgRatAtRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE9FE339;
	Tue, 26 Mar 2024 04:49:29 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4EE83F64C;
	Tue, 26 Mar 2024 04:48:53 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Brandon Cheo Fusi <fusibrandon13@gmail.com>,
	Martin Botka <martin.botka@somainline.org>,
	Martin Botka <martin.botka1@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v3 5/8] cpufreq: sun50i: Add support for opp_supported_hw
Date: Tue, 26 Mar 2024 11:47:40 +0000
Message-Id: <20240326114743.712167-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240326114743.712167-1-andre.przywara@arm.com>
References: <20240326114743.712167-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The opp_supported_hw DT property allows the DT to specify a mask of chip
revisions that a certain OPP is eligible for. This allows for easy
limiting of maximum frequencies, for instance.

Add support for that in the sun50i-cpufreq-nvmem driver. We support both
the existing opp-microvolt suffix properties as well as the
opp-supported-hw property, the generic code figures out which is needed
automatically.
However if none of the DT OPP nodes contain an opp-supported-hw
property, the core code will ignore all OPPs and the driver will fail
probing. So check the DT's eligibility first before using that feature.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/cpufreq/sun50i-cpufreq-nvmem.c | 62 ++++++++++++++++++++++----
 1 file changed, 54 insertions(+), 8 deletions(-)

diff --git a/drivers/cpufreq/sun50i-cpufreq-nvmem.c b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
index 7b44f3b13e7d2..bd170611c7906 100644
--- a/drivers/cpufreq/sun50i-cpufreq-nvmem.c
+++ b/drivers/cpufreq/sun50i-cpufreq-nvmem.c
@@ -57,6 +57,41 @@ static const struct of_device_id cpu_opp_match_list[] = {
 	{}
 };
 
+/**
+ * dt_has_supported_hw() - Check if any OPPs use opp-supported-hw
+ *
+ * If we ask the cpufreq framework to use the opp-supported-hw feature, it
+ * will ignore every OPP node without that DT property. If none of the OPPs
+ * have it, the driver will fail probing, due to the lack of OPPs.
+ *
+ * Returns true if we have at least one OPP with the opp-supported-hw property.
+ */
+static bool dt_has_supported_hw(void)
+{
+	bool has_opp_supported_hw = false;
+	struct device_node *np, *opp;
+	struct device *cpu_dev;
+
+	cpu_dev = get_cpu_device(0);
+	if (!cpu_dev)
+		return -ENODEV;
+
+	np = dev_pm_opp_of_get_opp_desc_node(cpu_dev);
+	if (!np)
+		return -ENOENT;
+
+	for_each_child_of_node(np, opp) {
+		if (of_find_property(opp, "opp-supported-hw", NULL)) {
+			has_opp_supported_hw = true;
+			break;
+		}
+	}
+
+	of_node_put(np);
+
+	return has_opp_supported_hw;
+}
+
 /**
  * sun50i_cpufreq_get_efuse() - Determine speed grade from efuse value
  *
@@ -110,7 +145,8 @@ static int sun50i_cpufreq_nvmem_probe(struct platform_device *pdev)
 {
 	int *opp_tokens;
 	char name[MAX_NAME_LEN];
-	unsigned int cpu;
+	unsigned int cpu, supported_hw;
+	struct dev_pm_opp_config config = {};
 	int speed;
 	int ret;
 
@@ -125,7 +161,18 @@ static int sun50i_cpufreq_nvmem_probe(struct platform_device *pdev)
 		return speed;
 	}
 
+	/*
+	 * We need at least one OPP with the "opp-supported-hw" property,
+	 * or else the upper layers will ignore every OPP and will bail out.
+	 */
+	if (dt_has_supported_hw()) {
+		supported_hw = 1U << speed;
+		config.supported_hw = &supported_hw;
+		config.supported_hw_count = 1;
+	}
+
 	snprintf(name, MAX_NAME_LEN, "speed%d", speed);
+	config.prop_name = name;
 
 	for_each_possible_cpu(cpu) {
 		struct device *cpu_dev = get_cpu_device(cpu);
@@ -135,12 +182,11 @@ static int sun50i_cpufreq_nvmem_probe(struct platform_device *pdev)
 			goto free_opp;
 		}
 
-		opp_tokens[cpu] = dev_pm_opp_set_prop_name(cpu_dev, name);
-		if (opp_tokens[cpu] < 0) {
-			ret = opp_tokens[cpu];
-			pr_err("Failed to set prop name\n");
+		ret = dev_pm_opp_set_config(cpu_dev, &config);
+		if (ret < 0)
 			goto free_opp;
-		}
+
+		opp_tokens[cpu] = ret;
 	}
 
 	cpufreq_dt_pdev = platform_device_register_simple("cpufreq-dt", -1,
@@ -155,7 +201,7 @@ static int sun50i_cpufreq_nvmem_probe(struct platform_device *pdev)
 
 free_opp:
 	for_each_possible_cpu(cpu)
-		dev_pm_opp_put_prop_name(opp_tokens[cpu]);
+		dev_pm_opp_clear_config(opp_tokens[cpu]);
 	kfree(opp_tokens);
 
 	return ret;
@@ -169,7 +215,7 @@ static void sun50i_cpufreq_nvmem_remove(struct platform_device *pdev)
 	platform_device_unregister(cpufreq_dt_pdev);
 
 	for_each_possible_cpu(cpu)
-		dev_pm_opp_put_prop_name(opp_tokens[cpu]);
+		dev_pm_opp_clear_config(opp_tokens[cpu]);
 
 	kfree(opp_tokens);
 }
-- 
2.25.1


