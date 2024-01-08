Return-Path: <devicetree+bounces-30087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 088828267BE
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 06:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00C0281866
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 05:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D9A79EF;
	Mon,  8 Jan 2024 05:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Fs0KucNb"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2055.outbound.protection.outlook.com [40.107.94.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D2379E0
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 05:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTkN5Xp6OeRGKizdrhf0Pe4Z3QPKkofvWR5jVhAaQW8mqlvCHortxuFav/B9Nl58tAMXy9fx/PFeZc34F6jI16OGBWU30oTH+qWwHP0njcxBv3fD4Ag8EkaD9QlGAVw6qkUeXWl4ORfIPtJ89+To2ULogBVfYxHLhfDqF4SAQjIoKXPNOS5JjcjXd63anKciuKheYRMSC/QETlFZXCipqwbD7Zs3nmAmrQHiM8DLH0y35YXbU7KRaTn4nQ7LA77n1vu2rEbToNknAJurIdPBPVGWrNeAG/15xUs84upKHo0Tz1boIzdk7frSCYNXAZ9przP7PK903T2cHRf5ckU8bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ux7Kk0/Ot8KYqBqxGVBzmg4rnuRUkuH8PnkBRtw+e5U=;
 b=MPqNaM3ukf7lEkTePUPs3W+o9QOd5mZcUlkkRtT5wsvte9TLOvkBoX633eWPCtUlxPJ/PmU814HAdtEq6K/ObTwL5aGgcXH762ejiNE03TAfvpXAVCD2yYY3lz0PYsoKX2uOzkslFB0FcKUDnoqlvYN1Y5LsdI4Ydl4e0JdkOV0RwMXmpjVvKnrxy5qg/RaygfvD1kRn3w3FdAMjtUdRNfd4GlTECcQ+HNVLWauFGevRUY4KJyuYjGVL7AhcGlFhiQ580P4ua8QD6olUdWGY4NVVLDSGjRQj4tfcRUj7Ab2FttJrACeERUjsTidE28bYILerp1mRmfl9pxyK8CTb0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ux7Kk0/Ot8KYqBqxGVBzmg4rnuRUkuH8PnkBRtw+e5U=;
 b=Fs0KucNbOJHoOb+Br5TmEgwN382OImy5Jn7W2t253IpuF8kGkaYZnNPJwFCObsK9J2yXwEO4qkuZuRAPbvTBVtEJUkMQMH809FDq8I0Q2MDYjAq0Jxe691t8emNTxGxABPoBYYHWQqf64OWJc2INHaziuOe1BL+5rWnQAZIOk/E=
Received: from CH2PR17CA0010.namprd17.prod.outlook.com (2603:10b6:610:53::20)
 by DM4PR12MB5891.namprd12.prod.outlook.com (2603:10b6:8:67::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 05:26:54 +0000
Received: from DS2PEPF00003444.namprd04.prod.outlook.com
 (2603:10b6:610:53:cafe::a9) by CH2PR17CA0010.outlook.office365.com
 (2603:10b6:610:53::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21 via Frontend
 Transport; Mon, 8 Jan 2024 05:26:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DS2PEPF00003444.mail.protection.outlook.com (10.167.17.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7181.13 via Frontend Transport; Mon, 8 Jan 2024 05:26:54 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Sun, 7 Jan
 2024 23:26:53 -0600
Received: from xhdbharathm40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Sun, 7 Jan 2024 23:26:51 -0600
From: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org->, <praveent@amd.com>
Subject: [PATCH V3 1/3] firmware: xilinx: Add ZynqMP efuse access API
Date: Mon, 8 Jan 2024 10:56:15 +0530
Message-ID: <20240108052617.32510-2-praveen.teja.kundanala@amd.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF00003444:EE_|DM4PR12MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 66eb9bd5-c4e9-49fc-20c9-08dc100a6cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	wumyeROkT531HY/bZpVl2LNfB8kFpwuCxrWbaWUre3OcHHpMTYuuzAtNRXo1txQNa+AjwmH5PWiDqRsuKIaP55YCzZ7akYDdbUkV65of5KqmRmN1w204gbHuVC+BjUyx3XQ7slPcMnheOMf6Q2MPJP0xsbvpFvEBlsJiV+DSFmWZPp+zR8u4gOG3eJf0oheSRF9RReYlt26M33B66f0VsDI5iC0egS5TbgAhSIFyFR9F0bagrQpwELGht/IFRPsmrC/yU0DQgiI+9ulP7jn5E3qSvTQJducKkripmO5NWi1/GxoCAUReheHSb3k8j+vpzqjDH3iVdDKky27YaSzheV8b5OMlBXU2yifSA71uqIn3sDJA0HcuMoLi9rYCCh+40hzXINpGY7xqLsASXs1Am8X8EAB61nEtIjsNDowa+T7N3GSVKfxu8mM/3vsn6MVhkXpKxyJcIZnQ4XrTbDRtfru1iTt6YeQBqJM8f/QiizmGXkaLBmiaki9qhkPzUlcu8uYQDfnTYW5NicVgzH/QbhVM8PMr+iWLiOznM+nHNVtgL9PIviPWZjaVVHPTJ6Cpr8JDCmbW1EO7fLlDFRadUwYPAdp6uKkwlI+ayLrW7B/s+QoIELIqDNRXPMC4pq2DQz2F/PlAa36YDQ5zO9E9FaBb8e5Kd15pghj22NBPH6gYI9Orb9jFyLc2k2qlZmTYAugsFOTcIUb84+AAYMg0eJ3e1Tyvn2kLZ9R60cXMBneUcTpZQVemEMVEtjIXbqhSFDuL22M0Ryb0cBmXQXVbLw==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(376002)(39860400002)(346002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(82310400011)(36840700001)(40470700004)(46966006)(356005)(81166007)(82740400003)(36756003)(8676002)(8936002)(110136005)(316002)(336012)(426003)(5660300002)(4326008)(83380400001)(478600001)(6666004)(1076003)(26005)(70586007)(70206006)(2616005)(41300700001)(2906002)(47076005)(36860700001)(40460700003)(86362001)(40480700001)(103116003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 05:26:54.0454
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 66eb9bd5-c4e9-49fc-20c9-08dc100a6cd5
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF00003444.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5891

Add zynqmp_pm_efuse_access API in the ZynqMP
firmware for read/write access of efuse memory.

Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 25 +++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  8 ++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index b0d22d4455d9..5abf882a43f5 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -3,6 +3,7 @@
  * Xilinx Zynq MPSoC Firmware layer
  *
  *  Copyright (C) 2014-2022 Xilinx, Inc.
+ *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
  *
  *  Michal Simek <michal.simek@amd.com>
  *  Davorin Mista <davorin.mista@aggios.com>
@@ -1435,6 +1436,30 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
+/**
+ * zynqmp_pm_efuse_access - Provides access to efuse memory.
+ * @address:	Address of the efuse params structure
+ * @out:		Returned output value
+ *
+ * Return:	Returns status, either success or error code.
+ */
+int zynqmp_pm_efuse_access(const u64 address, u32 *out)
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	if (!out)
+		return -EINVAL;
+
+	ret = zynqmp_pm_invoke_fn(PM_EFUSE_ACCESS, ret_payload, 2,
+				  upper_32_bits(address),
+				  lower_32_bits(address));
+	*out = ret_payload[1];
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_efuse_access);
+
 /**
  * zynqmp_pm_sha_hash - Access the SHA engine to calculate the hash
  * @address:	Address of the data/ Address of output buffer where
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index d1ea3898564c..ec3e19065f8d 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -3,6 +3,7 @@
  * Xilinx Zynq MPSoC Firmware layer
  *
  *  Copyright (C) 2014-2021 Xilinx
+ *  Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
  *
  *  Michal Simek <michal.simek@amd.com>
  *  Davorin Mista <davorin.mista@aggios.com>
@@ -155,6 +156,7 @@ enum pm_api_id {
 	PM_CLOCK_GETPARENT = 44,
 	PM_FPGA_READ = 46,
 	PM_SECURE_AES = 47,
+	PM_EFUSE_ACCESS = 53,
 	PM_FEATURE_CHECK = 63,
 };
 
@@ -546,6 +548,7 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 			      const u32 qos,
 			      const enum zynqmp_pm_request_ack ack);
 int zynqmp_pm_aes_engine(const u64 address, u32 *out);
+int zynqmp_pm_efuse_access(const u64 address, u32 *out);
 int zynqmp_pm_sha_hash(const u64 address, const u32 size, const u32 flags);
 int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
 int zynqmp_pm_fpga_get_status(u32 *value);
@@ -739,6 +742,11 @@ static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 	return -ENODEV;
 }
 
+static inline int zynqmp_pm_efuse_access(const u64 address, u32 *out)
+{
+	return -ENODEV;
+}
+
 static inline int zynqmp_pm_sha_hash(const u64 address, const u32 size,
 				     const u32 flags)
 {
-- 
2.38.1


