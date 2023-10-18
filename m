Return-Path: <devicetree+bounces-9633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A1B7CDA6F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B77321C20B36
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7FB20316;
	Wed, 18 Oct 2023 11:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="PJ5xnra+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41481F5E6
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 11:32:39 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02olkn2077.outbound.protection.outlook.com [40.92.43.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB9D513E;
	Wed, 18 Oct 2023 04:32:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGMeXE8YNCAEFBcJJrO37upy2G/+mrQAmbSxMGpTpElOYmSde6UWuHBtsd0ljLBS6HCMAu8bbySgqX1YP+5o9bT4JHGgnqMrC/sJQBTjngAFMhha/a96M/8qZjyf0HBNh4JJxmX3E53KABP1cLyENj7TEPPu1bC/kJQejEZMn98QpnfVV4J46c4L68lxFDcxxF8em0Rz0mzSJij90P9DWjCpsaT7p263cUrD/fGCBfAk/G6PQbD7bZFRtVEk9tIMpT6Kx4+d2kAWCi2r8W9dUT524NoFnzjVL/ux8NLvSYiP0aA5RHFzClm0Bcy+DgJaN68ruxl19yp4AfkQe87LOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCQ6+teeeyU87eAdJV4y3yq9aaBdeGfSvjhZ5L1ewqE=;
 b=gIUphoK8dIqOBCVOjh0N7iX6Yxs6IQK8jJNCKNoj8ueybNjk/v4aLldNFBCbXx3ZRRm//cJ7aXLeKQoS+GcjeKQiGWJ+HGqS2kwM7pYj+Scww1ygMXYT4xzx95l/QFDZTbTBd9qt1HqODqSHaFfsZNb68ZAJAQ3pVkajNkPkHtDS/Yi8LuWJr9e4SEzOvJNS4X4/noOdJo6B4ccoKEzbDAyUx0cGBZvx/JXwULORMWK9xofnnsv/r93Cvf4uvZHPC2RFaIlgrdVX43IlWC2pxZxvi0bKGna+DOeKQLT7oiWEtIiSzbqbDunIfMaUvLZz+JUGfeOH4Gpx0UxTjmlWow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zCQ6+teeeyU87eAdJV4y3yq9aaBdeGfSvjhZ5L1ewqE=;
 b=PJ5xnra+BWq++9AQe937DDaU7ABCJVYAq5YIaQtSQcveh1fqUdPZ6m9g40Nk+UC0ng9GcxJkAAjlnDLRoeiqzpOELDkzZ2rMKLQDRB1UC95cVUxufuqq5Y0v7BJDiDNYs1PFN/G753OA2LrP6Lk9ThIkRyXQbEl2NsjZcAVQcrbavJJ3up3bsJqll6N7fyxhEZ5m7tD1nP9JobgdM4O1RX6FzM/NQ9s1acfJiWrmSrwo117SnoHTKfTpQslFQ2XKonKwJr+9s/ZN+kvAw27BnSr0BQhdKf4zeCjHqtB+aYgzoVw39tkaUIxDOZELK2XzoeN0sGlNpbxiABcb4J6uJQ==
Received: from IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
 by CY5PR20MB4772.namprd20.prod.outlook.com (2603:10b6:930:27::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.46; Wed, 18 Oct
 2023 11:32:34 +0000
Received: from IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::d050:882f:a8a7:8263]) by IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::d050:882f:a8a7:8263%5]) with mapi id 15.20.6907.021; Wed, 18 Oct 2023
 11:32:34 +0000
From: Inochi Amaoto <inochiama@outlook.com>
To: Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Inochi Amaoto <inochiama@outlook.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/8] riscv: dts: sophgo: add initial CV1812H SoC device tree
Date: Wed, 18 Oct 2023 19:31:52 +0800
Message-ID:
 <IA1PR20MB4953EBB2A629D0567F6875BBBBD5A@IA1PR20MB4953.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <IA1PR20MB49538F60A390CA74EF1D16A2BBD5A@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB49538F60A390CA74EF1D16A2BBD5A@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [SkVOrbM0BZLVmW9jNhddksf6hWU/8qn+MeH2MTEyUL8=]
X-ClientProxiedBy: SG2PR04CA0162.apcprd04.prod.outlook.com (2603:1096:4::24)
 To IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
X-Microsoft-Original-Message-ID:
 <20231018113155.1605537-7-inochiama@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR20MB4953:EE_|CY5PR20MB4772:EE_
X-MS-Office365-Filtering-Correlation-Id: c51b1ad7-db9c-41b4-9d11-08dbcfcdec8c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	+x7eqIusfKkT69vdeab8wfA+4MF+a4xvxUAY23aD/XYqv+i+4AgS2XXwIgeZa0BVi+PN6VvvLFxpbP0C8vO9JI+Ujzx1R58EZsekZzM5DqfDpwdrrxBzcSk0t7rPcovxgb++LPUxOuw7WwnuVSAgj/5NTBRWh3/Go5rHc4NIaar8y6A4oCZlX4faTWFJMuZnYkVA5+gzLoPijHuK9qRIM40qCITxx61EGdMf6UQIJIVr8GLke+juuuwLqiAKpAZPDUD5k2FhIfH00s+gB4AJiDpAYBRKrdCDcbGGVuMFdvw43uYbOAMOL65+6xQLQkl3tmt7qWY1i5lE9BjwJmYVdymU3J+8zeis3U2tdeZLwvxqpGlrLYUBKoNSvMuBZXqKwE3hby72dp6DcJ1Cgn/VGrXvI0vLiy+9Tr85MEPbRh59k4rpKKuIHTv3UB058b0Lvc8vEbT7hiEdD2L+H/MG/bTyl0yS+SIpLXBQVTkUhbWI/LKwZOCIjrFfpSMRq5yLdq38rpHV/7cuHeyVFk0JMtPC8SRaT2S9pgXQ6Y9um86oxU9uMgrXTtpv7euFsw7eitpz77DxtqqPq83wmUxFBTs2zEP5DsHYYhxe4RYBP0UxAXsFGkWqzIyHFBgNxcYX
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?GiI81Qqv6eDpdpU8/DZhnZfzuxEd6uZ6Kodx2qkZt9dJ3AWAp/4TkQOfELQG?=
 =?us-ascii?Q?6wLMP3cfW6qvRbzAirlvn2Qmr6UtJvQxdlBZF/148IV+vaWFx/smzBpxAWuZ?=
 =?us-ascii?Q?9K0upkyVVV6+uwrwK0cyLSiUDzoChHFOZ9Q4fukmfJyccF8fCDX5ngJep+3o?=
 =?us-ascii?Q?qG5VNFWxqac1IYkB9eIk2tFr3WmrhXLzcfknRC4KfzpTl1HNbbzQ2nPepVi1?=
 =?us-ascii?Q?Dhz1SoFr65z/tKGXfN8rQrRRstmJlPuRtuS4xe2lln1I+/E2hDghb4g0GsYe?=
 =?us-ascii?Q?axlhysHAzbIIBC7T3T1VzgutSMZBvdWWjC05b1dtsTkRxy6WrY4sOrbioUHu?=
 =?us-ascii?Q?CKlYRGPN86IGeK6t0GZYn1fu+AKfh1sDRyRAO2a8oB1n6RR9nhGPO5ZbWGOy?=
 =?us-ascii?Q?jXHncVfgWJdy83zeafTScclpkgMWs5zQtEUK4HoYh0PZZvrcOAycrIyq26GF?=
 =?us-ascii?Q?w7p9ft0+MEnHcHSWUtBn03d2u4m8h0y+q3uAiaktHB0elTGw/yA4t5KgGZEq?=
 =?us-ascii?Q?WN36qZ4XO73ug+lwf/gxdSrNfpTI680DU7ZomeAuUT5cGq34Bzn8nT7uYMMu?=
 =?us-ascii?Q?qoT4o0J6iRH+O2uOKVOaa/uMpCMxZkkluHDlb+Mkt/RF8V8wlubG19P+IA7e?=
 =?us-ascii?Q?I9tBWwEqzA4Aoiie9XMsA4Mg1xq0yOZA21p8OEQp4pKRuma9Er2Y6zQOVumq?=
 =?us-ascii?Q?ai8XzPOYsBczkiX0ilpoaxNBwYdRI+4/exLxIgfDjORUMQJ7MVDX5HdkXFqJ?=
 =?us-ascii?Q?gw3pDZunwvuuDjDARA3al2wr3IM3kzr58wFhBiNVpNybMFDb6oojoJn08aHY?=
 =?us-ascii?Q?UsCnm429wpoTqmKfXPbGKMOkxixnH4UafnawX4z96GHzjxsSNmfKAoyCuik4?=
 =?us-ascii?Q?K8OKQCMDzXsHK8oUsM4KnV7jw93OhKbnPFOG7BYnzZNgYYHMUvnoTDJy3MH0?=
 =?us-ascii?Q?UlLsFwZTDTMk2AWUCdvUQFag0VBpnEeksr3wX8ie499QtFFcukQRYqUg4yRj?=
 =?us-ascii?Q?z04x8tfcNMUDDIJ1OHeAbp9F1ZqHKB5wauOVKnZnzfqQgZIDNOT+NUiwOyEE?=
 =?us-ascii?Q?nwiwgw8tBFR/F+oJIHiUHS7SAl7+V5+GqqExEGtceYGtuj+El7C1+pEj+iy0?=
 =?us-ascii?Q?V/SkLB/OkQE+tvGMjBBmx8Ch2ek3eowP66vdurHY4/96bgRbxCZSKuTMckcr?=
 =?us-ascii?Q?675RrlkY9+52t64W0zpWk6EWJgnybTGllqGmD8PFPJtVIU5SeG7NOZyi05M?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51b1ad7-db9c-41b4-9d11-08dbcfcdec8c
X-MS-Exchange-CrossTenant-AuthSource: IA1PR20MB4953.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 11:32:34.8877
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR20MB4772
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add initial device tree for the CV1812H RISC-V SoC by SOPHGO.

Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
---
 arch/riscv/boot/dts/sophgo/cv1812h.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h.dtsi

diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
new file mode 100644
index 000000000000..3e7a942f5c1a
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "cv18xx.dtsi"
+
+/ {
+	compatible = "sophgo,cv1812h";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+};
+
+&plic {
+	compatible = "sophgo,cv1812h-plic", "thead,c900-plic";
+};
+
+&clint {
+	compatible = "sophgo,cv1812h-clint", "thead,c900-clint";
+};
--
2.42.0


