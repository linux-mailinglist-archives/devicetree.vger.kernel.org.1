Return-Path: <devicetree+bounces-7273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7F47BFDEB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABF7828260D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BAF1DFDB;
	Tue, 10 Oct 2023 13:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="NGAmu9Tt";
	dkim=pass (1024-bit key) header.d=IMGTecCRM.onmicrosoft.com header.i=@IMGTecCRM.onmicrosoft.com header.b="StfdYSzf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030CF1DFD8
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:39:52 +0000 (UTC)
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F85D11D;
	Tue, 10 Oct 2023 06:39:23 -0700 (PDT)
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39ACSosg008503;
	Tue, 10 Oct 2023 14:38:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	dk201812; bh=/9+jNnFUn+Ww70W8NUNV8wT5oc8kj0J9Thhjzgfeb2g=; b=NGA
	mu9TtFcoDKmEUrAc8vWamNQVqFRbqdc0BaEIRYBAkmYGrj+Eolfihu9+yAic4BDc
	23UVDLAu9XGCUtBy6/8eagBu/+6fVVUvdUcl/VjeSgzjrCxLJrnOirQQLIAtXdpC
	/OLi+2jsjt7FdcebDX1qZCDKpbrFb8RIVEKJes3FHGOrZFDENHDQs59C6MaHihST
	EQvmUI0BwxMlyfqJ5+lVzIZ2Ap/5sNNrCUtOOOwyMbDPz1suWqnO4YZCTOB8Wdud
	Qj03nEly6OjEnkDeqlQDCP4y5DshI06rNR0HH7VQV9hMJtAKko5S2LYZB/SsHVbu
	o4e3l9ILuDvhqTbauAw==
Received: from hhmail04.hh.imgtec.org ([217.156.249.195])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 3tjwkq2a69-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 10 Oct 2023 14:38:25 +0100 (BST)
Received: from HHMAIL05.hh.imgtec.org (10.100.10.120) by
 HHMAIL04.hh.imgtec.org (10.100.10.119) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Tue, 10 Oct 2023 14:38:22 +0100
Received: from GBR01-LO4-obe.outbound.protection.outlook.com (104.47.85.104)
 by email.imgtec.com (10.100.10.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31 via Frontend Transport; Tue, 10 Oct 2023 14:38:22 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFj7+kevMQqgE4OztnrP5p6OBgRtg7ryApgvjDAZag2Nh1qAAFuGry6dvJ1kEOsIxC32wS94EoI7h9bZkDNf8jD6xAWxxGxznGJ1k3SndPnPXEUFFk2wemJlyrJKGG9esgVbg96cDxvtvIkOqrYDYLjvgy7Jf/gD59N3mSvcYonRZFl2sFbv8PaWx6vxH1+dcZG5qPEAWWDQaWRWljfoA/7pjCAC8S3a4P3pf/yGBwBqLr5zrnzK6oxyfHmieaM7ZqhIsxoIHp4D/ij+AkCxG/DBZsnXMYyNPE5LrT7V+Rnjj9Qh/LmZBhZjPdGDfrB8Gqxq643xJkGxsaqVv4GQ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/9+jNnFUn+Ww70W8NUNV8wT5oc8kj0J9Thhjzgfeb2g=;
 b=CXcwWWC+J8tOlQSB2jOIQvxOVuxKeg9BaYSRFyIdxubSm9LhyvhZFzoQxDUbftcxsGcKYWQE3PuNa4WVrh0qstWAvsCdUaMKwV5i7L1tK4o/fcft5LeIl3ssP1JWicAboXblBJnTnlCsY0V9jJM1m9eEUiCJ2xf8ioCsxWAOIJAfjMtJcPK4XzRlwkLqoMsZMDyOamXRKN0MQfxwQUC3xuZDJC/gF0ygtIOJuU0mM6ObnMGAxDvRgnV97W5ioHJJ4KVuWXNRp19nBLDvbJMs0AW3NIAJiDtIX3ELrvP/HP/jouasw1tqq2Tx2k3YLrBJthPKywhRIVd2ZlvpUQWQbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=imgtec.com; dmarc=pass action=none header.from=imgtec.com;
 dkim=pass header.d=imgtec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IMGTecCRM.onmicrosoft.com; s=selector2-IMGTecCRM-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9+jNnFUn+Ww70W8NUNV8wT5oc8kj0J9Thhjzgfeb2g=;
 b=StfdYSzfSL+CDjeJ8xSjeX+u8n3AOShbvxjdWbDuAbd0Hqcvf5Sx1MdfEG+IUED2b7llEti+93vLc+Jo9mFX/+DNZRUc0028DqygnakNZtvDBSpDCmmLlZzZDosKaQYiwKlZtMMG4VrLE3s5MYXyzVdC8OPJ/Bqfntoc172HQhg=
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:170::9)
 by LO0P265MB6147.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:248::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 13:38:12 +0000
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1f14:8c15:179d:7afc]) by CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1f14:8c15:179d:7afc%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 13:38:12 +0000
From: Sarah Walker <sarah.walker@imgtec.com>
To: <dri-devel@lists.freedesktop.org>
CC: <frank.binns@imgtec.com>, <donald.robson@imgtec.com>,
        <boris.brezillon@collabora.com>, <faith.ekstrand@collabora.com>,
        <airlied@gmail.com>, <daniel@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <afd@ti.com>, <hns@goldelico.com>,
        <matthew.brost@intel.com>, <christian.koenig@amd.com>,
        <luben.tuikov@amd.com>, <dakr@redhat.com>,
        <linux-kernel@vger.kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <corbet@lwn.net>,
        <linux-doc@vger.kernel.org>
Subject: [PATCH v7 09/20] drm/imagination: Add FWIF headers
Date: Tue, 10 Oct 2023 14:37:27 +0100
Message-Id: <20231010133738.35274-10-sarah.walker@imgtec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010133738.35274-1-sarah.walker@imgtec.com>
References: <20231010133738.35274-1-sarah.walker@imgtec.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0183.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::8) To CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:170::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CWLP265MB4817:EE_|LO0P265MB6147:EE_
X-MS-Office365-Filtering-Correlation-Id: b4516931-d335-45ed-01c5-08dbc99625b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b5i3JLV29xO2GORV1zYfnyYjsta/1fEAppijDRSa7INHWSTyCL38X72+6K2kluv7AgCJuDqGhx2mb1/1uH6nxgc+xWYLcZ4LUWgUTk29lmfRbRHokOy9+F3phQL5LaF6ssGUT7OC5/h0BdgIyTa8QUOGmfe0vZHFOlUiXkx8O90hytTNmuTl24AXephQuH64dGK+J85CVeX/Lth8Rz0RuurVjYyGhvjnMZI73usI/wb09Obl01r1jEFeQG5ha7FxsYVIQSyGfB2r4leBLvCNMosA98Gtew3u19GzAbsURUsbaGTCFiOamF3KQ385P4Apg7pqFiwlQszNOhXRv7gShOerbuNqfFbsRrF9m7VJn+XuduugMtYNDaXQnXQS8nXTbKuIGVIN8cabdBh1kBg3m+FAlzimKeDqI57r/dWUT4Qi7jSvcfSTGYjsQmGCkluxjjy91fmrWI8VtK05nAA4lMkk50t+M4a9i+vO8vqKfvAQ5w8/khatiLZFpjjjYhBRgQxfIsj0MAVuKn956lDe7By4KAi2BxNEBuvNEwd3yjVETUOgEarfZpb20WsHC5BpRlOFBmS85ADggm8yuwF2JSbW5nx6sppFWTgPqaVCYHB5CaC/qWKp+5OxYQxvlvM1
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39850400004)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(19627235002)(6512007)(478600001)(52116002)(6486002)(6666004)(6506007)(1076003)(83380400001)(26005)(2616005)(2906002)(30864003)(66556008)(316002)(66476007)(5660300002)(8936002)(44832011)(41300700001)(8676002)(4326008)(66946007)(6916009)(38100700002)(38350700002)(36756003)(86362001)(7416002)(66899024)(559001)(579004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J4RC38baNPPitDe124Vb8KKiKhrblZgbsrEItFVrA+jvMvGvafUGEhx7a8Sz?=
 =?us-ascii?Q?f0Y0EZbeiEiz5RPrrjFJCyLmVLdOCBuokJiG08DP7aA4EIG34sjTREDDkkJ+?=
 =?us-ascii?Q?p/xQzLKlCUW+2A9+iM1oupO8OKIm4JsGEMXGC3XTOH6RMqoS9BcOrNEe2+SP?=
 =?us-ascii?Q?YgZdxj1Nb+tQkU6eg9aL5v7B/fltue9/FdH8AQunaYlLghZj521KfjSD+DSH?=
 =?us-ascii?Q?rY3LC+JTQmJkud/stJYkM0eD8YEx6ljjqzMwVYL5pZezDpsgLGV4ptg79PXw?=
 =?us-ascii?Q?khVnC4Q5GP/xcWh5M8V3xPujkX62wVujU2rARDTgZ407fVbb3Moe7G3aZyZU?=
 =?us-ascii?Q?x++AEcjRg4uMugqXGAVgN3HB5EERs0flSe/veutTF0zEIyoSdsCVIFQLNR7y?=
 =?us-ascii?Q?hJxBnPpKayneVA1QqgYoKg8OAR8YxZ65UbC1RFHJ+aREdjB65zGv/MtZ1BXC?=
 =?us-ascii?Q?TH8WAEbG7AaN7wl2tpeZBQXOm/eA+ytzo1AZYfU8nhdxcVW3yvyzjbNxWG4A?=
 =?us-ascii?Q?5umBcfEppY23Okmtzj0zizDMVZtpkCR1LNXd+HzGaYSATebQCgyRFQnbPLje?=
 =?us-ascii?Q?aFzE6LHrENLXIPe7MhmtHKTLNQj3SkK93tUEdQp6LGKJ9BnmCUdVHm12K86X?=
 =?us-ascii?Q?sXxgeuVkmVXlt/gX8VjkrOwYW8aAJQIyFtO1s90aDqSR/1VLYmVRhFDh9AA3?=
 =?us-ascii?Q?QgB73QymE8xuH9FOBOpgeHUTfrHfXkqWBAdw1LfybMLRRbKLziny681MQjAz?=
 =?us-ascii?Q?8CIFI2bGxcrSW1hzgl6i5kluaXUKGpQG0Xno/ne06BSnaSA/TlyhrjZfJiec?=
 =?us-ascii?Q?OTE9SE+jgNKBXHhbdRfk2PQhcNEHdV38IdFbu5K8IZfY85q4xinSY6k69aqi?=
 =?us-ascii?Q?Gr6X8kojeUElpISFr3T+iZjGSuWg4slGslITLdXpRIctQlRI4vOg/u2O6e5h?=
 =?us-ascii?Q?Nvt7YUEynXcwvZla1uwKVUb7mudJhE3SlkCtoqAaZjSfTbsMEgA2aWcaquUz?=
 =?us-ascii?Q?6D6woA95ibCcbOleEBqaY8+j0qDK+L9+d4TBOFNYzWlfHYPuejnSnB8ZgfBf?=
 =?us-ascii?Q?77DblsSd8incmsqW2pTpmrOeXlvQtlkF+b34cpyQt24sl+RtkOXZrk4wRKuq?=
 =?us-ascii?Q?5mM/4Hp0y53Ad0SgxcDgAIyZL/4hOliJ1dbxm/JOrL6CslRugqobBDWpwZh0?=
 =?us-ascii?Q?vkWowgazOjEhKOGOQTRqhVj8sMrUvy7/z3qIW/2qVTk3gxVChISVJ1G52dgn?=
 =?us-ascii?Q?0O9JxXBrXBlbMPxD1reeuUuAnYwmjo5mCMTEPxcPfjMLkirlXVxuM3NG69A/?=
 =?us-ascii?Q?6VTrHuV2OD/plAnDfM8/XO7i3HTlJUcqz8HPL551TvSWHnF76C0JYQDbhzDn?=
 =?us-ascii?Q?wAyDQPNQS8B9X4fuHwElVM7609oEIZxUbbCJSdjyNaOQ8O567VBDefK+0ubG?=
 =?us-ascii?Q?io3KiYLGhYI2H6/ffUqpqv6N5E3e9njTAKQyAMWCdxTrs3u0DWndJL4HY0Vb?=
 =?us-ascii?Q?9//0WqCS9Ytfg4xHZO22VTsVCflxCsWVvHRbupM/oCjkh3yBbwMHw397S1G+?=
 =?us-ascii?Q?+iv4cNWPFBqjI1sm7SgQW0WSe8/to7yO8Kn8VuXh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4516931-d335-45ed-01c5-08dbc99625b2
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 13:38:12.0174
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0d5fd8bb-e8c2-4e0a-8dd5-2c264f7140fe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: luwKLTeTJjSE+zUsqCzItGTDynWPt8seN1dBeSl7st3GMy++jhyr6j00VzthpwOBNiZtFAaWUdnLIlmTx7CLgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB6147
X-OriginatorOrg: imgtec.com
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: n0Il90EEok3a2K3jns7KWVMKTHk-DxPO
X-Proofpoint-ORIG-GUID: n0Il90EEok3a2K3jns7KWVMKTHk-DxPO
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Changes since v5:
- Split up header commit due to size
- Add BRN 71242 to device info

Changes since v4:
- Add FW header device info

Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/imagination/pvr_rogue_fwif.h  | 2208 +++++++++++++++++
 .../drm/imagination/pvr_rogue_fwif_check.h    |  491 ++++
 .../drm/imagination/pvr_rogue_fwif_client.h   |  373 +++
 .../imagination/pvr_rogue_fwif_client_check.h |  133 +
 .../drm/imagination/pvr_rogue_fwif_common.h   |   60 +
 .../drm/imagination/pvr_rogue_fwif_dev_info.h |  113 +
 .../pvr_rogue_fwif_resetframework.h           |   28 +
 .../drm/imagination/pvr_rogue_fwif_shared.h   |  258 ++
 .../imagination/pvr_rogue_fwif_shared_check.h |  108 +
 .../drm/imagination/pvr_rogue_fwif_stream.h   |   78 +
 10 files changed, 3850 insertions(+)
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_check.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_client.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_client_check.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_common.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_dev_info.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_resetframework.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_shared.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_shared_check.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_rogue_fwif_stream.h

diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif.h
new file mode 100644
index 000000000000..4f720de6d4ca
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif.h
@@ -0,0 +1,2208 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_H
+#define PVR_ROGUE_FWIF_H
+
+#include <linux/bits.h>
+#include <linux/build_bug.h>
+#include <linux/compiler.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+
+#include "pvr_rogue_defs.h"
+#include "pvr_rogue_fwif_common.h"
+#include "pvr_rogue_fwif_shared.h"
+
+/*
+ ****************************************************************************
+ * Logging type
+ ****************************************************************************
+ */
+#define ROGUE_FWIF_LOG_TYPE_NONE 0x00000000U
+#define ROGUE_FWIF_LOG_TYPE_TRACE 0x00000001U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_MAIN 0x00000002U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_MTS 0x00000004U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_CLEANUP 0x00000008U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_CSW 0x00000010U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_BIF 0x00000020U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_PM 0x00000040U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_RTD 0x00000080U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_SPM 0x00000100U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_POW 0x00000200U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_HWR 0x00000400U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_HWP 0x00000800U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_RPM 0x00001000U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_DMA 0x00002000U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_MISC 0x00004000U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_DEBUG 0x80000000U
+#define ROGUE_FWIF_LOG_TYPE_GROUP_MASK 0x80007FFEU
+#define ROGUE_FWIF_LOG_TYPE_MASK 0x80007FFFU
+
+/* String used in pvrdebug -h output */
+#define ROGUE_FWIF_LOG_GROUPS_STRING_LIST \
+	"main,mts,cleanup,csw,bif,pm,rtd,spm,pow,hwr,hwp,rpm,dma,misc,debug"
+
+/* Table entry to map log group strings to log type value */
+struct rogue_fwif_log_group_map_entry {
+	const char *log_group_name;
+	u32 log_group_type;
+};
+
+/*
+ * Macro for use with the ROGUE_FWIF_LOG_GROUP_MAP_ENTRY type to create a lookup
+ * table where needed. Keep log group names short, no more than 20 chars.
+ */
+static const struct rogue_fwif_log_group_map_entry rogue_fwif_log_group_name_value_map[] = {
+	{"none", ROGUE_FWIF_LOG_TYPE_NONE},
+	{"main", ROGUE_FWIF_LOG_TYPE_GROUP_MAIN},
+	{"mts", ROGUE_FWIF_LOG_TYPE_GROUP_MTS},
+	{"cleanup", ROGUE_FWIF_LOG_TYPE_GROUP_CLEANUP},
+	{"csw", ROGUE_FWIF_LOG_TYPE_GROUP_CSW},
+	{"bif", ROGUE_FWIF_LOG_TYPE_GROUP_BIF},
+	{"pm", ROGUE_FWIF_LOG_TYPE_GROUP_PM},
+	{"rtd", ROGUE_FWIF_LOG_TYPE_GROUP_RTD},
+	{"spm", ROGUE_FWIF_LOG_TYPE_GROUP_SPM},
+	{"pow", ROGUE_FWIF_LOG_TYPE_GROUP_POW},
+	{"hwr", ROGUE_FWIF_LOG_TYPE_GROUP_HWR},
+	{"hwp", ROGUE_FWIF_LOG_TYPE_GROUP_HWP},
+	{"rpm", ROGUE_FWIF_LOG_TYPE_GROUP_RPM},
+	{"dma", ROGUE_FWIF_LOG_TYPE_GROUP_DMA},
+	{"misc", ROGUE_FWIF_LOG_TYPE_GROUP_MISC},
+	{"debug", ROGUE_FWIF_LOG_TYPE_GROUP_DEBUG}
+};
+
+/*
+ ****************************************************************************
+ * ROGUE FW signature checks
+ ****************************************************************************
+ */
+#define ROGUE_FW_SIG_BUFFER_SIZE_MIN (8192)
+
+#define ROGUE_FWIF_TIMEDIFF_ID ((0x1UL << 28) | ROGUE_CR_TIMER)
+
+/*
+ ****************************************************************************
+ * Trace Buffer
+ ****************************************************************************
+ */
+
+/* Default size of ROGUE_FWIF_TRACEBUF_SPACE in DWords */
+#define ROGUE_FW_TRACE_BUF_DEFAULT_SIZE_IN_DWORDS 12000U
+#define ROGUE_FW_TRACE_BUFFER_ASSERT_SIZE 200U
+#define ROGUE_FW_THREAD_NUM 1U
+#define ROGUE_FW_THREAD_MAX 2U
+
+#define ROGUE_FW_POLL_TYPE_SET 0x80000000U
+
+struct rogue_fwif_file_info_buf {
+	char path[ROGUE_FW_TRACE_BUFFER_ASSERT_SIZE];
+	char info[ROGUE_FW_TRACE_BUFFER_ASSERT_SIZE];
+	u32 line_num;
+	u32 padding;
+} __aligned(8);
+
+struct rogue_fwif_tracebuf_space {
+	u32 trace_pointer;
+
+	u32 trace_buffer_fw_addr;
+
+	/* To be used by host when reading from trace buffer */
+	u32 *trace_buffer;
+
+	struct rogue_fwif_file_info_buf assert_buf;
+} __aligned(8);
+
+/* Total number of FW fault logs stored */
+#define ROGUE_FWIF_FWFAULTINFO_MAX (8U)
+
+struct rogue_fw_fault_info {
+	aligned_u64 cr_timer;
+	aligned_u64 os_timer;
+
+	u32 data __aligned(8);
+	u32 reserved;
+	struct rogue_fwif_file_info_buf fault_buf;
+} __aligned(8);
+
+enum rogue_fwif_pow_state {
+	ROGUE_FWIF_POW_OFF, /* idle and ready to full power down */
+	ROGUE_FWIF_POW_ON, /* running HW commands */
+	ROGUE_FWIF_POW_FORCED_IDLE, /* forced idle */
+	ROGUE_FWIF_POW_IDLE, /* idle waiting for host handshake */
+};
+
+/* Firmware HWR states */
+/* The HW state is ok or locked up */
+#define ROGUE_FWIF_HWR_HARDWARE_OK BIT(0)
+/* Tells if a HWR reset is in progress */
+#define ROGUE_FWIF_HWR_RESET_IN_PROGRESS BIT(1)
+/* A DM unrelated lockup has been detected */
+#define ROGUE_FWIF_HWR_GENERAL_LOCKUP BIT(3)
+/* At least one DM is running without being close to a lockup */
+#define ROGUE_FWIF_HWR_DM_RUNNING_OK BIT(4)
+/* At least one DM is close to lockup */
+#define ROGUE_FWIF_HWR_DM_STALLING BIT(5)
+/* The FW has faulted and needs to restart */
+#define ROGUE_FWIF_HWR_FW_FAULT BIT(6)
+/* The FW has requested the host to restart it */
+#define ROGUE_FWIF_HWR_RESTART_REQUESTED BIT(7)
+
+#define ROGUE_FWIF_PHR_STATE_SHIFT (8U)
+/* The FW has requested the host to restart it, per PHR configuration */
+#define ROGUE_FWIF_PHR_RESTART_REQUESTED ((1) << ROGUE_FWIF_PHR_STATE_SHIFT)
+/* A PHR triggered GPU reset has just finished */
+#define ROGUE_FWIF_PHR_RESTART_FINISHED ((2) << ROGUE_FWIF_PHR_STATE_SHIFT)
+#define ROGUE_FWIF_PHR_RESTART_MASK \
+	(ROGUE_FWIF_PHR_RESTART_REQUESTED | ROGUE_FWIF_PHR_RESTART_FINISHED)
+
+#define ROGUE_FWIF_PHR_MODE_OFF (0UL)
+#define ROGUE_FWIF_PHR_MODE_RD_RESET (1UL)
+#define ROGUE_FWIF_PHR_MODE_FULL_RESET (2UL)
+
+/* Firmware per-DM HWR states */
+/* DM is working if all flags are cleared */
+#define ROGUE_FWIF_DM_STATE_WORKING (0)
+/* DM is idle and ready for HWR */
+#define ROGUE_FWIF_DM_STATE_READY_FOR_HWR BIT(0)
+/* DM need to skip to next cmd before resuming processing */
+#define ROGUE_FWIF_DM_STATE_NEEDS_SKIP BIT(2)
+/* DM need partial render cleanup before resuming processing */
+#define ROGUE_FWIF_DM_STATE_NEEDS_PR_CLEANUP BIT(3)
+/* DM need to increment Recovery Count once fully recovered */
+#define ROGUE_FWIF_DM_STATE_NEEDS_TRACE_CLEAR BIT(4)
+/* DM was identified as locking up and causing HWR */
+#define ROGUE_FWIF_DM_STATE_GUILTY_LOCKUP BIT(5)
+/* DM was innocently affected by another lockup which caused HWR */
+#define ROGUE_FWIF_DM_STATE_INNOCENT_LOCKUP BIT(6)
+/* DM was identified as over-running and causing HWR */
+#define ROGUE_FWIF_DM_STATE_GUILTY_OVERRUNING BIT(7)
+/* DM was innocently affected by another DM over-running which caused HWR */
+#define ROGUE_FWIF_DM_STATE_INNOCENT_OVERRUNING BIT(8)
+/* DM was forced into HWR as it delayed more important workloads */
+#define ROGUE_FWIF_DM_STATE_HARD_CONTEXT_SWITCH BIT(9)
+/* DM was forced into HWR due to an uncorrected GPU ECC error */
+#define ROGUE_FWIF_DM_STATE_GPU_ECC_HWR BIT(10)
+
+/* Firmware's connection state */
+enum rogue_fwif_connection_fw_state {
+	/* Firmware is offline */
+	ROGUE_FW_CONNECTION_FW_OFFLINE = 0,
+	/* Firmware is initialised */
+	ROGUE_FW_CONNECTION_FW_READY,
+	/* Firmware connection is fully established */
+	ROGUE_FW_CONNECTION_FW_ACTIVE,
+	/* Firmware is clearing up connection data*/
+	ROGUE_FW_CONNECTION_FW_OFFLOADING,
+	ROGUE_FW_CONNECTION_FW_STATE_COUNT
+};
+
+/* OS' connection state */
+enum rogue_fwif_connection_os_state {
+	/* OS is offline */
+	ROGUE_FW_CONNECTION_OS_OFFLINE = 0,
+	/* OS's KM driver is setup and waiting */
+	ROGUE_FW_CONNECTION_OS_READY,
+	/* OS connection is fully established */
+	ROGUE_FW_CONNECTION_OS_ACTIVE,
+	ROGUE_FW_CONNECTION_OS_STATE_COUNT
+};
+
+struct rogue_fwif_os_runtime_flags {
+	unsigned int os_state : 3;
+	unsigned int fl_ok : 1;
+	unsigned int fl_grow_pending : 1;
+	unsigned int isolated_os : 1;
+	unsigned int reserved : 26;
+};
+
+#define PVR_SLR_LOG_ENTRIES 10
+/* MAX_CLIENT_CCB_NAME not visible to this header */
+#define PVR_SLR_LOG_STRLEN 30
+
+struct rogue_fwif_slr_entry {
+	aligned_u64 timestamp;
+	u32 fw_ctx_addr;
+	u32 num_ufos;
+	char ccb_name[PVR_SLR_LOG_STRLEN];
+	char padding[2];
+} __aligned(8);
+
+#define MAX_THREAD_NUM 2
+
+/* firmware trace control data */
+struct rogue_fwif_tracebuf {
+	u32 log_type;
+	struct rogue_fwif_tracebuf_space tracebuf[MAX_THREAD_NUM];
+	/*
+	 * Member initialised only when sTraceBuf is actually allocated (in
+	 * ROGUETraceBufferInitOnDemandResources)
+	 */
+	u32 tracebuf_size_in_dwords;
+	/* Compatibility and other flags */
+	u32 tracebuf_flags;
+} __aligned(8);
+
+/* firmware system data shared with the Host driver */
+struct rogue_fwif_sysdata {
+	/* Configuration flags from host */
+	u32 config_flags;
+	/* Extended configuration flags from host */
+	u32 config_flags_ext;
+	enum rogue_fwif_pow_state pow_state;
+	u32 hw_perf_ridx;
+	u32 hw_perf_widx;
+	u32 hw_perf_wrap_count;
+	/* Constant after setup, needed in FW */
+	u32 hw_perf_size;
+	/* The number of times the FW drops a packet due to buffer full */
+	u32 hw_perf_drop_count;
+
+	/*
+	 * ui32HWPerfUt, ui32FirstDropOrdinal, ui32LastDropOrdinal only valid
+	 * when FW is built with ROGUE_HWPERF_UTILIZATION &
+	 * ROGUE_HWPERF_DROP_TRACKING defined in rogue_fw_hwperf.c
+	 */
+	/* Buffer utilisation, high watermark of bytes in use */
+	u32 hw_perf_ut;
+	/* The ordinal of the first packet the FW dropped */
+	u32 first_drop_ordinal;
+	/* The ordinal of the last packet the FW dropped */
+	u32 last_drop_ordinal;
+	/* State flags for each Operating System mirrored from Fw coremem */
+	struct rogue_fwif_os_runtime_flags
+		os_runtime_flags_mirror[ROGUE_FW_MAX_NUM_OS];
+
+	struct rogue_fw_fault_info fault_info[ROGUE_FWIF_FWFAULTINFO_MAX];
+	u32 fw_faults;
+	u32 cr_poll_addr[MAX_THREAD_NUM];
+	u32 cr_poll_mask[MAX_THREAD_NUM];
+	u32 cr_poll_count[MAX_THREAD_NUM];
+	aligned_u64 start_idle_time;
+
+#if defined(SUPPORT_ROGUE_FW_STATS_FRAMEWORK)
+#	define ROGUE_FWIF_STATS_FRAMEWORK_LINESIZE (8)
+#	define ROGUE_FWIF_STATS_FRAMEWORK_MAX \
+		(2048 * ROGUE_FWIF_STATS_FRAMEWORK_LINESIZE)
+	u32 fw_stats_buf[ROGUE_FWIF_STATS_FRAMEWORK_MAX] __aligned(8);
+#endif
+	u32 hwr_state_flags;
+	u32 hwr_recovery_flags[PVR_FWIF_DM_MAX];
+	/* Compatibility and other flags */
+	u32 fw_sys_data_flags;
+	/* Identify whether MC config is P-P or P-S */
+	u32 mc_config;
+} __aligned(8);
+
+/* per-os firmware shared data */
+struct rogue_fwif_osdata {
+	/* Configuration flags from an OS */
+	u32 fw_os_config_flags;
+	/* Markers to signal that the host should perform a full sync check */
+	u32 fw_sync_check_mark;
+	u32 host_sync_check_mark;
+
+	u32 forced_updates_requested;
+	u8 slr_log_wp;
+	struct rogue_fwif_slr_entry slr_log_first;
+	struct rogue_fwif_slr_entry slr_log[PVR_SLR_LOG_ENTRIES];
+	aligned_u64 last_forced_update_time;
+
+	/* Interrupt count from Threads > */
+	u32 interrupt_count[MAX_THREAD_NUM];
+	u32 kccb_cmds_executed;
+	u32 power_sync_fw_addr;
+	/* Compatibility and other flags */
+	u32 fw_os_data_flags;
+	u32 padding;
+} __aligned(8);
+
+/* Firmware trace time-stamp field breakup */
+
+/* ROGUE_CR_TIMER register read (48 bits) value*/
+#define ROGUE_FWT_TIMESTAMP_TIME_SHIFT (0U)
+#define ROGUE_FWT_TIMESTAMP_TIME_CLRMSK (0xFFFF000000000000ull)
+
+/* Extra debug-info (16 bits) */
+#define ROGUE_FWT_TIMESTAMP_DEBUG_INFO_SHIFT (48U)
+#define ROGUE_FWT_TIMESTAMP_DEBUG_INFO_CLRMSK ~ROGUE_FWT_TIMESTAMP_TIME_CLRMSK
+
+/* Debug-info sub-fields */
+/*
+ * Bit 0: ROGUE_CR_EVENT_STATUS_MMU_PAGE_FAULT bit from ROGUE_CR_EVENT_STATUS
+ * register
+ */
+#define ROGUE_FWT_DEBUG_INFO_MMU_PAGE_FAULT_SHIFT (0U)
+#define ROGUE_FWT_DEBUG_INFO_MMU_PAGE_FAULT_SET \
+	BIT(ROGUE_FWT_DEBUG_INFO_MMU_PAGE_FAULT_SHIFT)
+
+/* Bit 1: ROGUE_CR_BIF_MMU_ENTRY_PENDING bit from ROGUE_CR_BIF_MMU_ENTRY register */
+#define ROGUE_FWT_DEBUG_INFO_MMU_ENTRY_PENDING_SHIFT (1U)
+#define ROGUE_FWT_DEBUG_INFO_MMU_ENTRY_PENDING_SET \
+	BIT(ROGUE_FWT_DEBUG_INFO_MMU_ENTRY_PENDING_SHIFT)
+
+/* Bit 2: ROGUE_CR_SLAVE_EVENT register is non-zero */
+#define ROGUE_FWT_DEBUG_INFO_SLAVE_EVENTS_SHIFT (2U)
+#define ROGUE_FWT_DEBUG_INFO_SLAVE_EVENTS_SET \
+	BIT(ROGUE_FWT_DEBUG_INFO_SLAVE_EVENTS_SHIFT)
+
+/* Bit 3-15: Unused bits */
+
+#define ROGUE_FWT_DEBUG_INFO_STR_MAXLEN 64
+#define ROGUE_FWT_DEBUG_INFO_STR_PREPEND " (debug info: "
+#define ROGUE_FWT_DEBUG_INFO_STR_APPEND ")"
+
+/*
+ ******************************************************************************
+ * HWR Data
+ ******************************************************************************
+ */
+enum rogue_hwrtype {
+	ROGUE_HWRTYPE_UNKNOWNFAILURE = 0,
+	ROGUE_HWRTYPE_OVERRUN = 1,
+	ROGUE_HWRTYPE_POLLFAILURE = 2,
+	ROGUE_HWRTYPE_BIF0FAULT = 3,
+	ROGUE_HWRTYPE_BIF1FAULT = 4,
+	ROGUE_HWRTYPE_TEXASBIF0FAULT = 5,
+	ROGUE_HWRTYPE_MMUFAULT = 6,
+	ROGUE_HWRTYPE_MMUMETAFAULT = 7,
+	ROGUE_HWRTYPE_MIPSTLBFAULT = 8,
+	ROGUE_HWRTYPE_ECCFAULT = 9,
+	ROGUE_HWRTYPE_MMURISCVFAULT = 10,
+};
+
+#define ROGUE_FWIF_HWRTYPE_BIF_BANK_GET(hwr_type) \
+	(((hwr_type) == ROGUE_HWRTYPE_BIF0FAULT) ? 0 : 1)
+
+#define ROGUE_FWIF_HWRTYPE_PAGE_FAULT_GET(hwr_type)       \
+	((((hwr_type) == ROGUE_HWRTYPE_BIF0FAULT) ||      \
+	  ((hwr_type) == ROGUE_HWRTYPE_BIF1FAULT) ||      \
+	  ((hwr_type) == ROGUE_HWRTYPE_TEXASBIF0FAULT) || \
+	  ((hwr_type) == ROGUE_HWRTYPE_MMUFAULT) ||       \
+	  ((hwr_type) == ROGUE_HWRTYPE_MMUMETAFAULT) ||   \
+	  ((hwr_type) == ROGUE_HWRTYPE_MIPSTLBFAULT) ||   \
+	  ((hwr_type) == ROGUE_HWRTYPE_MMURISCVFAULT))    \
+		 ? true                                   \
+		 : false)
+
+struct rogue_bifinfo {
+	aligned_u64 bif_req_status;
+	aligned_u64 bif_mmu_status;
+	aligned_u64 pc_address; /* phys address of the page catalogue */
+	aligned_u64 reserved;
+};
+
+struct rogue_eccinfo {
+	u32 fault_gpu;
+};
+
+struct rogue_mmuinfo {
+	aligned_u64 mmu_status[2];
+	aligned_u64 pc_address; /* phys address of the page catalogue */
+	aligned_u64 reserved;
+};
+
+struct rogue_pollinfo {
+	u32 thread_num;
+	u32 cr_poll_addr;
+	u32 cr_poll_mask;
+	u32 cr_poll_last_value;
+	aligned_u64 reserved;
+} __aligned(8);
+
+struct rogue_tlbinfo {
+	u32 bad_addr;
+	u32 entry_lo;
+};
+
+struct rogue_hwrinfo {
+	union {
+		struct rogue_bifinfo bif_info;
+		struct rogue_mmuinfo mmu_info;
+		struct rogue_pollinfo poll_info;
+		struct rogue_tlbinfo tlb_info;
+		struct rogue_eccinfo ecc_info;
+	} hwr_data;
+
+	aligned_u64 cr_timer;
+	aligned_u64 os_timer;
+	u32 frame_num;
+	u32 pid;
+	u32 active_hwrt_data;
+	u32 hwr_number;
+	u32 event_status;
+	u32 hwr_recovery_flags;
+	enum rogue_hwrtype hwr_type;
+	u32 dm;
+	u32 core_id;
+	aligned_u64 cr_time_of_kick;
+	aligned_u64 cr_time_hw_reset_start;
+	aligned_u64 cr_time_hw_reset_finish;
+	aligned_u64 cr_time_freelist_ready;
+	aligned_u64 reserved[2];
+} __aligned(8);
+
+/* Number of first HWR logs recorded (never overwritten by newer logs) */
+#define ROGUE_FWIF_HWINFO_MAX_FIRST 8U
+/* Number of latest HWR logs (older logs are overwritten by newer logs) */
+#define ROGUE_FWIF_HWINFO_MAX_LAST 8U
+/* Total number of HWR logs stored in a buffer */
+#define ROGUE_FWIF_HWINFO_MAX \
+	(ROGUE_FWIF_HWINFO_MAX_FIRST + ROGUE_FWIF_HWINFO_MAX_LAST)
+/* Index of the last log in the HWR log buffer */
+#define ROGUE_FWIF_HWINFO_LAST_INDEX (ROGUE_FWIF_HWINFO_MAX - 1U)
+
+struct rogue_fwif_hwrinfobuf {
+	struct rogue_hwrinfo hwr_info[ROGUE_FWIF_HWINFO_MAX];
+	u32 hwr_counter;
+	u32 write_index;
+	u32 dd_req_count;
+	u32 hwr_info_buf_flags; /* Compatibility and other flags */
+	u32 hwr_dm_locked_up_count[PVR_FWIF_DM_MAX];
+	u32 hwr_dm_overran_count[PVR_FWIF_DM_MAX];
+	u32 hwr_dm_recovered_count[PVR_FWIF_DM_MAX];
+	u32 hwr_dm_false_detect_count[PVR_FWIF_DM_MAX];
+} __aligned(8);
+
+#define ROGUE_FWIF_CTXSWITCH_PROFILE_FAST_EN (1)
+#define ROGUE_FWIF_CTXSWITCH_PROFILE_MEDIUM_EN (2)
+#define ROGUE_FWIF_CTXSWITCH_PROFILE_SLOW_EN (3)
+#define ROGUE_FWIF_CTXSWITCH_PROFILE_NODELAY_EN (4)
+
+#define ROGUE_FWIF_CDM_ARBITRATION_TASK_DEMAND_EN (1)
+#define ROGUE_FWIF_CDM_ARBITRATION_ROUND_ROBIN_EN (2)
+
+#define ROGUE_FWIF_ISP_SCHEDMODE_VER1_IPP (1)
+#define ROGUE_FWIF_ISP_SCHEDMODE_VER2_ISP (2)
+/*
+ ******************************************************************************
+ * ROGUE firmware Init Config Data
+ ******************************************************************************
+ */
+
+/* Flag definitions affecting the firmware globally */
+#define ROGUE_FWIF_INICFG_CTXSWITCH_MODE_RAND BIT(0)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_SRESET_EN BIT(1)
+#define ROGUE_FWIF_INICFG_HWPERF_EN BIT(2)
+#define ROGUE_FWIF_INICFG_DM_KILL_MODE_RAND_EN BIT(3)
+#define ROGUE_FWIF_INICFG_POW_RASCALDUST BIT(4)
+/* Bit 5 is reserved. */
+#define ROGUE_FWIF_INICFG_FBCDC_V3_1_EN BIT(6)
+#define ROGUE_FWIF_INICFG_CHECK_MLIST_EN BIT(7)
+#define ROGUE_FWIF_INICFG_DISABLE_CLKGATING_EN BIT(8)
+/* Bit 9 is reserved. */
+/* Bit 10 is reserved. */
+/* Bit 11 is reserved. */
+#define ROGUE_FWIF_INICFG_REGCONFIG_EN BIT(12)
+#define ROGUE_FWIF_INICFG_ASSERT_ON_OUTOFMEMORY BIT(13)
+#define ROGUE_FWIF_INICFG_HWP_DISABLE_FILTER BIT(14)
+/* Bit 15 is reserved. */
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT (16)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_FAST \
+	(ROGUE_FWIF_CTXSWITCH_PROFILE_FAST_EN    \
+	 << ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_MEDIUM \
+	(ROGUE_FWIF_CTXSWITCH_PROFILE_MEDIUM_EN    \
+	 << ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SLOW \
+	(ROGUE_FWIF_CTXSWITCH_PROFILE_SLOW_EN    \
+	 << ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_NODELAY \
+	(ROGUE_FWIF_CTXSWITCH_PROFILE_NODELAY_EN    \
+	 << ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT)
+#define ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_MASK \
+	(7 << ROGUE_FWIF_INICFG_CTXSWITCH_PROFILE_SHIFT)
+#define ROGUE_FWIF_INICFG_DISABLE_DM_OVERLAP BIT(19)
+#define ROGUE_FWIF_INICFG_ASSERT_ON_HWR_TRIGGER BIT(20)
+#define ROGUE_FWIF_INICFG_FABRIC_COHERENCY_ENABLED BIT(21)
+#define ROGUE_FWIF_INICFG_VALIDATE_IRQ BIT(22)
+#define ROGUE_FWIF_INICFG_DISABLE_PDP_EN BIT(23)
+#define ROGUE_FWIF_INICFG_SPU_POWER_STATE_MASK_CHANGE_EN BIT(24)
+#define ROGUE_FWIF_INICFG_WORKEST BIT(25)
+#define ROGUE_FWIF_INICFG_PDVFS BIT(26)
+#define ROGUE_FWIF_INICFG_CDM_ARBITRATION_SHIFT (27)
+#define ROGUE_FWIF_INICFG_CDM_ARBITRATION_TASK_DEMAND \
+	(ROGUE_FWIF_CDM_ARBITRATION_TASK_DEMAND_EN    \
+	 << ROGUE_FWIF_INICFG_CDM_ARBITRATION_SHIFT)
+#define ROGUE_FWIF_INICFG_CDM_ARBITRATION_ROUND_ROBIN \
+	(ROGUE_FWIF_CDM_ARBITRATION_ROUND_ROBIN_EN    \
+	 << ROGUE_FWIF_INICFG_CDM_ARBITRATION_SHIFT)
+#define ROGUE_FWIF_INICFG_CDM_ARBITRATION_MASK \
+	(3 << ROGUE_FWIF_INICFG_CDM_ARBITRATION_SHIFT)
+#define ROGUE_FWIF_INICFG_ISPSCHEDMODE_SHIFT (29)
+#define ROGUE_FWIF_INICFG_ISPSCHEDMODE_NONE (0)
+#define ROGUE_FWIF_INICFG_ISPSCHEDMODE_VER1_IPP \
+	(ROGUE_FWIF_ISP_SCHEDMODE_VER1_IPP      \
+	 << ROGUE_FWIF_INICFG_ISPSCHEDMODE_SHIFT)
+#define ROGUE_FWIF_INICFG_ISPSCHEDMODE_VER2_ISP \
+	(ROGUE_FWIF_ISP_SCHEDMODE_VER2_ISP      \
+	 << ROGUE_FWIF_INICFG_ISPSCHEDMODE_SHIFT)
+#define ROGUE_FWIF_INICFG_ISPSCHEDMODE_MASK        \
+	(ROGUE_FWIF_INICFG_ISPSCHEDMODE_VER1_IPP | \
+	 ROGUE_FWIF_INICFG_ISPSCHEDMODE_VER2_ISP)
+#define ROGUE_FWIF_INICFG_VALIDATE_SOCUSC_TIMER BIT(31)
+
+#define ROGUE_FWIF_INICFG_ALL (0xFFFFFFFFU)
+
+/* Extended Flag definitions affecting the firmware globally */
+#define ROGUE_FWIF_INICFG_EXT_TFBC_CONTROL_SHIFT (0)
+/* [7]   YUV10 override
+ * [6:4] Quality
+ * [3]   Quality enable
+ * [2:1] Compression scheme
+ * [0]   Lossy group
+ */
+#define ROGUE_FWIF_INICFG_EXT_TFBC_CONTROL_MASK (0xFF)
+#define ROGUE_FWIF_INICFG_EXT_ALL (ROGUE_FWIF_INICFG_EXT_TFBC_CONTROL_MASK)
+
+/* Flag definitions affecting only workloads submitted by a particular OS */
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_TDM_EN BIT(0)
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_GEOM_EN BIT(1)
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_FRAG_EN BIT(2)
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_CDM_EN BIT(3)
+
+#define ROGUE_FWIF_INICFG_OS_LOW_PRIO_CS_TDM BIT(4)
+#define ROGUE_FWIF_INICFG_OS_LOW_PRIO_CS_GEOM BIT(5)
+#define ROGUE_FWIF_INICFG_OS_LOW_PRIO_CS_FRAG BIT(6)
+#define ROGUE_FWIF_INICFG_OS_LOW_PRIO_CS_CDM BIT(7)
+
+#define ROGUE_FWIF_INICFG_OS_ALL (0xFF)
+
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_DM_ALL     \
+	(ROGUE_FWIF_INICFG_OS_CTXSWITCH_TDM_EN |  \
+	 ROGUE_FWIF_INICFG_OS_CTXSWITCH_GEOM_EN | \
+	 ROGUE_FWIF_INICFG_OS_CTXSWITCH_FRAG_EN |   \
+	 ROGUE_FWIF_INICFG_OS_CTXSWITCH_CDM_EN)
+
+#define ROGUE_FWIF_INICFG_OS_CTXSWITCH_CLRMSK \
+	~(ROGUE_FWIF_INICFG_OS_CTXSWITCH_DM_ALL)
+
+#define ROGUE_FWIF_FILTCFG_TRUNCATE_HALF BIT(3)
+#define ROGUE_FWIF_FILTCFG_TRUNCATE_INT BIT(2)
+#define ROGUE_FWIF_FILTCFG_NEW_FILTER_MODE BIT(1)
+
+enum rogue_activepm_conf {
+	ROGUE_ACTIVEPM_FORCE_OFF = 0,
+	ROGUE_ACTIVEPM_FORCE_ON = 1,
+	ROGUE_ACTIVEPM_DEFAULT = 2
+};
+
+enum rogue_rd_power_island_conf {
+	ROGUE_RD_POWER_ISLAND_FORCE_OFF = 0,
+	ROGUE_RD_POWER_ISLAND_FORCE_ON = 1,
+	ROGUE_RD_POWER_ISLAND_DEFAULT = 2
+};
+
+struct rogue_fw_register_list {
+	/* Register number */
+	u16 reg_num;
+	/* Indirect register number (or 0 if not used) */
+	u16 indirect_reg_num;
+	/* Start value for indirect register */
+	u16 indirect_start_val;
+	/* End value for indirect register */
+	u16 indirect_end_val;
+};
+
+struct rogue_fwif_dllist_node {
+	u32 p;
+	u32 n;
+};
+
+/*
+ * This number is used to represent an invalid page catalogue physical address
+ */
+#define ROGUE_FWIF_INVALID_PC_PHYADDR 0xFFFFFFFFFFFFFFFFLLU
+
+/* This number is used to represent unallocated page catalog base register */
+#define ROGUE_FW_BIF_INVALID_PCSET 0xFFFFFFFFU
+
+/* Firmware memory context. */
+struct rogue_fwif_fwmemcontext {
+	/* device physical address of context's page catalogue */
+	aligned_u64 pc_dev_paddr;
+	/*
+	 * associated page catalog base register (ROGUE_FW_BIF_INVALID_PCSET ==
+	 * unallocated)
+	 */
+	u32 page_cat_base_reg_set;
+	/* breakpoint address */
+	u32 breakpoint_addr;
+	/* breakpoint handler address */
+	u32 bp_handler_addr;
+	/* DM and enable control for BP */
+	u32 breakpoint_ctl;
+	/* Compatibility and other flags */
+	u32 fw_mem_ctx_flags;
+	u32 padding;
+} __aligned(8);
+
+/*
+ * FW context state flags
+ */
+#define ROGUE_FWIF_CONTEXT_FLAGS_NEED_RESUME (0x00000001U)
+#define ROGUE_FWIF_CONTEXT_FLAGS_MC_NEED_RESUME_MASKFULL (0x000000FFU)
+#define ROGUE_FWIF_CONTEXT_FLAGS_TDM_HEADER_STALE (0x00000100U)
+#define ROGUE_FWIF_CONTEXT_FLAGS_LAST_KICK_SECURE (0x00000200U)
+
+#define ROGUE_NUM_GEOM_CORES_MAX 4
+
+/*
+ * FW-accessible TA state which must be written out to memory on context store
+ */
+struct rogue_fwif_geom_ctx_state_per_geom {
+	/* To store in mid-TA */
+	aligned_u64 geom_reg_vdm_call_stack_pointer;
+	/* Initial value (in case is 'lost' due to a lock-up */
+	aligned_u64 geom_reg_vdm_call_stack_pointer_init;
+	u32 geom_reg_vbs_so_prim[4];
+	u16 geom_current_idx;
+	u16 padding[3];
+} __aligned(8);
+
+struct rogue_fwif_geom_ctx_state {
+	/* FW-accessible TA state which must be written out to memory on context store */
+	struct rogue_fwif_geom_ctx_state_per_geom geom_core[ROGUE_NUM_GEOM_CORES_MAX];
+} __aligned(8);
+
+/*
+ * FW-accessible ISP state which must be written out to memory on context store
+ */
+struct rogue_fwif_frag_ctx_state {
+	u32 frag_reg_pm_deallocated_mask_status;
+	u32 frag_reg_dm_pds_mtilefree_status;
+	/* Compatibility and other flags */
+	u32 ctx_state_flags;
+	/*
+	 * frag_reg_isp_store should be the last element of the structure as this
+	 * is an array whose size is determined at runtime after detecting the
+	 * ROGUE core
+	 */
+	u32 frag_reg_isp_store[];
+} __aligned(8);
+
+#define ROGUE_FWIF_CTX_USING_BUFFER_A (0)
+#define ROGUE_FWIF_CTX_USING_BUFFER_B (1U)
+
+struct rogue_fwif_compute_ctx_state {
+	u32 ctx_state_flags; /* Target buffer and other flags */
+};
+
+struct rogue_fwif_fwcommoncontext {
+	/* CCB details for this firmware context */
+	u32 ccbctl_fw_addr; /* CCB control */
+	u32 ccb_fw_addr; /* CCB base */
+	struct rogue_fwif_dma_addr ccb_meta_dma_addr;
+
+	/* Context suspend state */
+	/* geom/frag context suspend state, read/written by FW */
+	u32 context_state_addr __aligned(8);
+
+	/* Flags e.g. for context switching */
+	u32 fw_com_ctx_flags;
+	u32 priority;
+	u32 priority_seq_num;
+
+	/* Framework state */
+	/* Register updates for Framework */
+	u32 rf_cmd_addr __aligned(8);
+
+	/* Statistic updates waiting to be passed back to the host... */
+	/* True when some stats are pending */
+	bool stats_pending __aligned(4);
+	/* Number of stores on this context since last update */
+	s32 stats_num_stores;
+	/* Number of OOMs on this context since last update */
+	s32 stats_num_out_of_memory;
+	/* Number of PRs on this context since last update */
+	s32 stats_num_partial_renders;
+	/* Data Master type */
+	u32 dm;
+	/* Device Virtual Address of the signal the context is waiting on */
+	aligned_u64 wait_signal_address;
+	/* List entry for the wait-signal list */
+	struct rogue_fwif_dllist_node wait_signal_node __aligned(8);
+	/* List entry for the buffer stalled list */
+	struct rogue_fwif_dllist_node buf_stalled_node __aligned(8);
+	/* Address of the circular buffer queue pointers */
+	aligned_u64 cbuf_queue_ctrl_addr;
+
+	aligned_u64 robustness_address;
+	/* Max HWR deadline limit in ms */
+	u32 max_deadline_ms;
+	/* Following HWR circular buffer read-offset needs resetting */
+	bool read_offset_needs_reset;
+
+	/* List entry for the waiting list */
+	struct rogue_fwif_dllist_node waiting_node __aligned(8);
+	/* List entry for the run list */
+	struct rogue_fwif_dllist_node run_node __aligned(8);
+	/* UFO that last failed (or NULL) */
+	struct rogue_fwif_ufo last_failed_ufo;
+
+	/* Memory context */
+	u32 fw_mem_context_fw_addr;
+
+	/* References to the host side originators */
+	/* the Server Common Context */
+	u32 server_common_context_id;
+	/* associated process ID */
+	u32 pid;
+
+	/* True when Geom DM OOM is not allowed */
+	bool geom_oom_disabled __aligned(4);
+} __aligned(8);
+
+/* Firmware render context. */
+struct rogue_fwif_fwrendercontext {
+	/* Geometry firmware context. */
+	struct rogue_fwif_fwcommoncontext geom_context;
+	/* Fragment firmware context. */
+	struct rogue_fwif_fwcommoncontext frag_context;
+
+	struct rogue_fwif_static_rendercontext_state static_render_context_state;
+
+	/* Number of commands submitted to the WorkEst FW CCB */
+	u32 work_est_ccb_submitted;
+
+	/* Compatibility and other flags */
+	u32 fw_render_ctx_flags;
+} __aligned(8);
+
+/* Firmware compute context. */
+struct rogue_fwif_fwcomputecontext {
+	/* Firmware context for the CDM */
+	struct rogue_fwif_fwcommoncontext cdm_context;
+
+	struct rogue_fwif_static_computecontext_state
+		static_compute_context_state;
+
+	/* Number of commands submitted to the WorkEst FW CCB */
+	u32 work_est_ccb_submitted;
+
+	/* Compatibility and other flags */
+	u32 compute_ctx_flags;
+
+	u32 wgp_state;
+	u32 wgp_checksum;
+	u32 core_mask_a;
+	u32 core_mask_b;
+} __aligned(8);
+
+/* Firmware TDM context. */
+struct rogue_fwif_fwtdmcontext {
+	/* Firmware context for the TDM */
+	struct rogue_fwif_fwcommoncontext tdm_context;
+
+	/* Number of commands submitted to the WorkEst FW CCB */
+	u32 work_est_ccb_submitted;
+} __aligned(8);
+
+/* Firmware TQ3D context. */
+struct rogue_fwif_fwtransfercontext {
+	/* Firmware context for TQ3D. */
+	struct rogue_fwif_fwcommoncontext tq_context;
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * Defines for CMD_TYPE corruption detection and forward compatibility check
+ ******************************************************************************
+ */
+
+/*
+ * CMD_TYPE 32bit contains:
+ * 31:16	Reserved for magic value to detect corruption (16 bits)
+ * 15		Reserved for ROGUE_CCB_TYPE_TASK (1 bit)
+ * 14:0		Bits available for CMD_TYPEs (15 bits)
+ */
+
+/* Magic value to detect corruption */
+#define ROGUE_CMD_MAGIC_DWORD (0x2ABC)
+#define ROGUE_CMD_MAGIC_DWORD_MASK (0xFFFF0000U)
+#define ROGUE_CMD_MAGIC_DWORD_SHIFT (16U)
+#define ROGUE_CMD_MAGIC_DWORD_SHIFTED \
+	(ROGUE_CMD_MAGIC_DWORD << ROGUE_CMD_MAGIC_DWORD_SHIFT)
+
+/* Kernel CCB control for ROGUE */
+struct rogue_fwif_ccb_ctl {
+	/* write offset into array of commands (MUST be aligned to 16 bytes!) */
+	u32 write_offset;
+	/* read offset into array of commands */
+	u32 read_offset;
+	/* Offset wrapping mask (Total capacity of the CCB - 1) */
+	u32 wrap_mask;
+	/* size of each command in bytes */
+	u32 cmd_size;
+} __aligned(8);
+
+/* Kernel CCB command structure for ROGUE */
+
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_PT (0x1U) /* MMU_CTRL_INVAL_PT_EN */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_PD (0x2U) /* MMU_CTRL_INVAL_PD_EN */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_PC (0x4U) /* MMU_CTRL_INVAL_PC_EN */
+
+/*
+ * can't use PM_TLB0 bit from BIFPM_CTRL reg because it collides with PT
+ * bit from BIF_CTRL reg
+ */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_PMTLB (0x10)
+/* BIF_CTRL_INVAL_TLB1_EN */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_TLB \
+	(ROGUE_FWIF_MMUCACHEDATA_FLAGS_PMTLB | 0x8)
+/* MMU_CTRL_INVAL_ALL_CONTEXTS_EN */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_CTX_ALL (0x800)
+
+/* indicates FW should interrupt the host */
+#define ROGUE_FWIF_MMUCACHEDATA_FLAGS_INTERRUPT (0x4000000U)
+
+struct rogue_fwif_mmucachedata {
+	u32 cache_flags;
+	u32 mmu_cache_sync_fw_addr;
+	u32 mmu_cache_sync_update_value;
+};
+
+#define ROGUE_FWIF_BPDATA_FLAGS_ENABLE BIT(0)
+#define ROGUE_FWIF_BPDATA_FLAGS_WRITE BIT(1)
+#define ROGUE_FWIF_BPDATA_FLAGS_CTL BIT(2)
+#define ROGUE_FWIF_BPDATA_FLAGS_REGS BIT(3)
+
+struct rogue_fwif_bpdata {
+	/* Memory context */
+	u32 fw_mem_context_fw_addr;
+	/* Breakpoint address */
+	u32 bp_addr;
+	/* Breakpoint handler */
+	u32 bp_handler_addr;
+	/* Breakpoint control */
+	u32 bp_dm;
+	u32 bp_data_flags;
+	/* Number of temporary registers to overallocate */
+	u32 temp_regs;
+	/* Number of shared registers to overallocate */
+	u32 shared_regs;
+	/* DM associated with the breakpoint */
+	u32 dm;
+};
+
+#define ROGUE_FWIF_KCCB_CMD_KICK_DATA_MAX_NUM_CLEANUP_CTLS \
+	(ROGUE_FWIF_PRBUFFER_MAXSUPPORTED + 1U) /* +1 is RTDATASET cleanup */
+
+struct rogue_fwif_kccb_cmd_kick_data {
+	/* address of the firmware context */
+	u32 context_fw_addr;
+	/* Client CCB woff update */
+	u32 client_woff_update;
+	/* Client CCB wrap mask update after CCCB growth */
+	u32 client_wrap_mask_update;
+	/* number of CleanupCtl pointers attached */
+	u32 num_cleanup_ctl;
+	/* CleanupCtl structures associated with command */
+	u32 cleanup_ctl_fw_addr
+		[ROGUE_FWIF_KCCB_CMD_KICK_DATA_MAX_NUM_CLEANUP_CTLS];
+	/*
+	 * offset to the CmdHeader which houses the workload estimation kick
+	 * data.
+	 */
+	u32 work_est_cmd_header_offset;
+};
+
+struct rogue_fwif_kccb_cmd_combined_geom_frag_kick_data {
+	struct rogue_fwif_kccb_cmd_kick_data geom_cmd_kick_data;
+	struct rogue_fwif_kccb_cmd_kick_data frag_cmd_kick_data;
+};
+
+struct rogue_fwif_kccb_cmd_force_update_data {
+	/* address of the firmware context */
+	u32 context_fw_addr;
+	/* Client CCB fence offset */
+	u32 ccb_fence_offset;
+};
+
+enum rogue_fwif_cleanup_type {
+	/* FW common context cleanup */
+	ROGUE_FWIF_CLEANUP_FWCOMMONCONTEXT,
+	/* FW HW RT data cleanup */
+	ROGUE_FWIF_CLEANUP_HWRTDATA,
+	/* FW freelist cleanup */
+	ROGUE_FWIF_CLEANUP_FREELIST,
+	/* FW ZS Buffer cleanup */
+	ROGUE_FWIF_CLEANUP_ZSBUFFER,
+};
+
+struct rogue_fwif_cleanup_request {
+	/* Cleanup type */
+	enum rogue_fwif_cleanup_type cleanup_type;
+	union {
+		/* FW common context to cleanup */
+		u32 context_fw_addr;
+		/* HW RT to cleanup */
+		u32 hwrt_data_fw_addr;
+		/* Freelist to cleanup */
+		u32 freelist_fw_addr;
+		/* ZS Buffer to cleanup */
+		u32 zs_buffer_fw_addr;
+	} cleanup_data;
+};
+
+enum rogue_fwif_power_type {
+	ROGUE_FWIF_POW_OFF_REQ = 1,
+	ROGUE_FWIF_POW_FORCED_IDLE_REQ,
+	ROGUE_FWIF_POW_NUM_UNITS_CHANGE,
+	ROGUE_FWIF_POW_APM_LATENCY_CHANGE
+};
+
+enum rogue_fwif_power_force_idle_type {
+	ROGUE_FWIF_POWER_FORCE_IDLE = 1,
+	ROGUE_FWIF_POWER_CANCEL_FORCED_IDLE,
+	ROGUE_FWIF_POWER_HOST_TIMEOUT,
+};
+
+struct rogue_fwif_power_request {
+	/* Type of power request */
+	enum rogue_fwif_power_type pow_type;
+	union {
+		/* Number of active Dusts */
+		u32 num_of_dusts;
+		/* If the operation is mandatory */
+		bool forced __aligned(4);
+		/*
+		 * Type of Request. Consolidating Force Idle, Cancel Forced
+		 * Idle, Host Timeout
+		 */
+		enum rogue_fwif_power_force_idle_type pow_request_type;
+	} power_req_data;
+};
+
+struct rogue_fwif_slcflushinvaldata {
+	/* Context to fence on (only useful when bDMContext == TRUE) */
+	u32 context_fw_addr;
+	/* Invalidate the cache as well as flushing */
+	bool inval __aligned(4);
+	/* The data to flush/invalidate belongs to a specific DM context */
+	bool dm_context __aligned(4);
+	/* Optional address of range (only useful when bDMContext == FALSE) */
+	aligned_u64 address;
+	/* Optional size of range (only useful when bDMContext == FALSE) */
+	aligned_u64 size;
+};
+
+enum rogue_fwif_hwperf_update_config {
+	ROGUE_FWIF_HWPERF_CTRL_TOGGLE = 0,
+	ROGUE_FWIF_HWPERF_CTRL_SET = 1,
+	ROGUE_FWIF_HWPERF_CTRL_EMIT_FEATURES_EV = 2
+};
+
+struct rogue_fwif_hwperf_ctrl {
+	enum rogue_fwif_hwperf_update_config opcode; /* Control operation code */
+	aligned_u64 mask; /* Mask of events to toggle */
+};
+
+struct rogue_fwif_hwperf_config_enable_blks {
+	/* Number of ROGUE_HWPERF_CONFIG_MUX_CNTBLK in the array */
+	u32 num_blocks;
+	/* Address of the ROGUE_HWPERF_CONFIG_MUX_CNTBLK array */
+	u32 block_configs_fw_addr;
+};
+
+struct rogue_fwif_hwperf_config_da_blks {
+	/* Number of ROGUE_HWPERF_CONFIG_CNTBLK in the array */
+	u32 num_blocks;
+	/* Address of the ROGUE_HWPERF_CONFIG_CNTBLK array */
+	u32 block_configs_fw_addr;
+};
+
+struct rogue_fwif_coreclkspeedchange_data {
+	u32 new_clock_speed; /* New clock speed */
+};
+
+#define ROGUE_FWIF_HWPERF_CTRL_BLKS_MAX 16
+
+struct rogue_fwif_hwperf_ctrl_blks {
+	bool enable;
+	/* Number of block IDs in the array */
+	u32 num_blocks;
+	/* Array of ROGUE_HWPERF_CNTBLK_ID values */
+	u16 block_ids[ROGUE_FWIF_HWPERF_CTRL_BLKS_MAX];
+};
+
+struct rogue_fwif_hwperf_select_custom_cntrs {
+	u16 custom_block;
+	u16 num_counters;
+	u32 custom_counter_ids_fw_addr;
+};
+
+struct rogue_fwif_zsbuffer_backing_data {
+	u32 zs_buffer_fw_addr; /* ZS-Buffer FW address */
+
+	bool done __aligned(4); /* action backing/unbacking succeeded */
+};
+
+struct rogue_fwif_freelist_gs_data {
+	/* Freelist FW address */
+	u32 freelist_fw_addr;
+	/* Amount of the Freelist change */
+	u32 delta_pages;
+	/* New amount of pages on the freelist (including ready pages) */
+	u32 new_pages;
+	/* Number of ready pages to be held in reserve until OOM */
+	u32 ready_pages;
+};
+
+#define MAX_FREELISTS_SIZE 3
+#define MAX_HW_GEOM_FRAG_CONTEXTS_SIZE 3
+
+#define ROGUE_FWIF_MAX_FREELISTS_TO_RECONSTRUCT \
+	(MAX_HW_GEOM_FRAG_CONTEXTS_SIZE * MAX_FREELISTS_SIZE * 2U)
+#define ROGUE_FWIF_FREELISTS_RECONSTRUCTION_FAILED_FLAG 0x80000000U
+
+struct rogue_fwif_freelists_reconstruction_data {
+	u32 freelist_count;
+	u32 freelist_ids[ROGUE_FWIF_MAX_FREELISTS_TO_RECONSTRUCT];
+};
+
+struct rogue_fwif_write_offset_update_data {
+	/*
+	 * Context to that may need to be resumed following write offset update
+	 */
+	u32 context_fw_addr;
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * Proactive DVFS Structures
+ ******************************************************************************
+ */
+#define NUM_OPP_VALUES 16
+
+struct pdvfs_opp {
+	u32 volt; /* V  */
+	u32 freq; /* Hz */
+} __aligned(8);
+
+struct rogue_fwif_pdvfs_opp {
+	struct pdvfs_opp opp_values[NUM_OPP_VALUES];
+	u32 min_opp_point;
+	u32 max_opp_point;
+} __aligned(8);
+
+struct rogue_fwif_pdvfs_max_freq_data {
+	u32 max_opp_point;
+} __aligned(8);
+
+struct rogue_fwif_pdvfs_min_freq_data {
+	u32 min_opp_point;
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * Register configuration structures
+ ******************************************************************************
+ */
+
+#define ROGUE_FWIF_REG_CFG_MAX_SIZE 512
+
+enum rogue_fwif_regdata_cmd_type {
+	ROGUE_FWIF_REGCFG_CMD_ADD = 101,
+	ROGUE_FWIF_REGCFG_CMD_CLEAR = 102,
+	ROGUE_FWIF_REGCFG_CMD_ENABLE = 103,
+	ROGUE_FWIF_REGCFG_CMD_DISABLE = 104
+};
+
+enum rogue_fwif_reg_cfg_type {
+	/* Sidekick power event */
+	ROGUE_FWIF_REG_CFG_TYPE_PWR_ON = 0,
+	/* Rascal / dust power event */
+	ROGUE_FWIF_REG_CFG_TYPE_DUST_CHANGE,
+	/* Geometry kick */
+	ROGUE_FWIF_REG_CFG_TYPE_GEOM,
+	/* Fragment kick */
+	ROGUE_FWIF_REG_CFG_TYPE_FRAG,
+	/* Compute kick */
+	ROGUE_FWIF_REG_CFG_TYPE_CDM,
+	/* TLA kick */
+	ROGUE_FWIF_REG_CFG_TYPE_TLA,
+	/* TDM kick */
+	ROGUE_FWIF_REG_CFG_TYPE_TDM,
+	/* Applies to all types. Keep as last element */
+	ROGUE_FWIF_REG_CFG_TYPE_ALL
+};
+
+struct rogue_fwif_reg_cfg_rec {
+	u64 sddr;
+	u64 mask;
+	u64 value;
+};
+
+struct rogue_fwif_regconfig_data {
+	enum rogue_fwif_regdata_cmd_type cmd_type;
+	enum rogue_fwif_reg_cfg_type reg_config_type;
+	struct rogue_fwif_reg_cfg_rec reg_config __aligned(8);
+};
+
+struct rogue_fwif_reg_cfg {
+	/*
+	 * PDump WRW command write granularity is 32 bits.
+	 * Add padding to ensure array size is 32 bit granular.
+	 */
+	u8 num_regs_type[ALIGN((u32)ROGUE_FWIF_REG_CFG_TYPE_ALL,
+			       sizeof(u32))] __aligned(8);
+	struct rogue_fwif_reg_cfg_rec
+		reg_configs[ROGUE_FWIF_REG_CFG_MAX_SIZE] __aligned(8);
+} __aligned(8);
+
+enum rogue_fwif_os_state_change {
+	ROGUE_FWIF_OS_ONLINE = 1,
+	ROGUE_FWIF_OS_OFFLINE
+};
+
+struct rogue_fwif_os_state_change_data {
+	u32 osid;
+	enum rogue_fwif_os_state_change new_os_state;
+} __aligned(8);
+
+enum rogue_fwif_counter_dump_request {
+	ROGUE_FWIF_PWR_COUNTER_DUMP_START = 1,
+	ROGUE_FWIF_PWR_COUNTER_DUMP_STOP,
+	ROGUE_FWIF_PWR_COUNTER_DUMP_SAMPLE,
+};
+
+struct rogue_fwif_counter_dump_data {
+	enum rogue_fwif_counter_dump_request counter_dump_request;
+} __aligned(8);
+
+enum rogue_fwif_kccb_cmd_type {
+	/* Common commands */
+	ROGUE_FWIF_KCCB_CMD_KICK = 101U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	ROGUE_FWIF_KCCB_CMD_MMUCACHE = 102U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	ROGUE_FWIF_KCCB_CMD_BP = 103U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* SLC flush and invalidation request */
+	ROGUE_FWIF_KCCB_CMD_SLCFLUSHINVAL = 105U |
+					    ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/*
+	 * Requests cleanup of a FW resource (type specified in the command
+	 * data)
+	 */
+	ROGUE_FWIF_KCCB_CMD_CLEANUP = 106U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Power request */
+	ROGUE_FWIF_KCCB_CMD_POW = 107U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Backing for on-demand ZS-Buffer done */
+	ROGUE_FWIF_KCCB_CMD_ZSBUFFER_BACKING_UPDATE =
+		108U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Unbacking for on-demand ZS-Buffer done */
+	ROGUE_FWIF_KCCB_CMD_ZSBUFFER_UNBACKING_UPDATE =
+		109U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Freelist Grow done */
+	ROGUE_FWIF_KCCB_CMD_FREELIST_GROW_UPDATE =
+		110U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Freelists Reconstruction done */
+	ROGUE_FWIF_KCCB_CMD_FREELISTS_RECONSTRUCTION_UPDATE =
+		112U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/*
+	 * Informs the firmware that the host has added more data to a CDM2
+	 * Circular Buffer
+	 */
+	ROGUE_FWIF_KCCB_CMD_NOTIFY_WRITE_OFFSET_UPDATE =
+		114U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Health check request */
+	ROGUE_FWIF_KCCB_CMD_HEALTH_CHECK = 115U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Forcing signalling of all unmet UFOs for a given CCB offset */
+	ROGUE_FWIF_KCCB_CMD_FORCE_UPDATE = 116U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* There is a geometry and a fragment command in this single kick */
+	ROGUE_FWIF_KCCB_CMD_COMBINED_GEOM_FRAG_KICK = 117U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Informs the FW that a Guest OS has come online / offline. */
+	ROGUE_FWIF_KCCB_CMD_OS_ONLINE_STATE_CONFIGURE	= 118U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Commands only permitted to the native or host OS */
+	ROGUE_FWIF_KCCB_CMD_REGCONFIG = 200U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Configure HWPerf events (to be generated) and HWPerf buffer address (if required) */
+	ROGUE_FWIF_KCCB_CMD_HWPERF_UPDATE_CONFIG = 201U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Enable or disable multiple HWPerf blocks (reusing existing configuration) */
+	ROGUE_FWIF_KCCB_CMD_HWPERF_CTRL_BLKS = 203U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Core clock speed change event */
+	ROGUE_FWIF_KCCB_CMD_CORECLKSPEEDCHANGE = 204U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/*
+	 * Ask the firmware to update its cached ui32LogType value from the (shared)
+	 * tracebuf control structure
+	 */
+	ROGUE_FWIF_KCCB_CMD_LOGTYPE_UPDATE = 206U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Set a maximum frequency/OPP point */
+	ROGUE_FWIF_KCCB_CMD_PDVFS_LIMIT_MAX_FREQ = 207U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/*
+	 * Changes the relative scheduling priority for a particular OSid. It can
+	 * only be serviced for the Host DDK
+	 */
+	ROGUE_FWIF_KCCB_CMD_OSID_PRIORITY_CHANGE = 208U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Set or clear firmware state flags */
+	ROGUE_FWIF_KCCB_CMD_STATEFLAGS_CTRL = 209U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Set a minimum frequency/OPP point */
+	ROGUE_FWIF_KCCB_CMD_PDVFS_LIMIT_MIN_FREQ = 212U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Configure Periodic Hardware Reset behaviour */
+	ROGUE_FWIF_KCCB_CMD_PHR_CFG = 213U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Configure Safety Firmware Watchdog */
+	ROGUE_FWIF_KCCB_CMD_WDG_CFG = 215U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Controls counter dumping in the FW */
+	ROGUE_FWIF_KCCB_CMD_COUNTER_DUMP = 216U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Configure, clear and enable multiple HWPerf blocks */
+	ROGUE_FWIF_KCCB_CMD_HWPERF_CONFIG_ENABLE_BLKS = 217U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Configure the custom counters for HWPerf */
+	ROGUE_FWIF_KCCB_CMD_HWPERF_SELECT_CUSTOM_CNTRS = 218U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Configure directly addressable counters for HWPerf */
+	ROGUE_FWIF_KCCB_CMD_HWPERF_CONFIG_BLKS = 220U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+};
+
+#define ROGUE_FWIF_LAST_ALLOWED_GUEST_KCCB_CMD \
+	(ROGUE_FWIF_KCCB_CMD_REGCONFIG - 1)
+
+/* Kernel CCB command packet */
+struct rogue_fwif_kccb_cmd {
+	/* Command type */
+	enum rogue_fwif_kccb_cmd_type cmd_type;
+	/* Compatibility and other flags */
+	u32 kccb_flags;
+
+	/*
+	 * NOTE: Make sure that uCmdData is the last member of this struct
+	 * This is to calculate actual command size for device mem copy.
+	 * (Refer ROGUEGetCmdMemCopySize())
+	 */
+	union {
+		/* Data for Kick command */
+		struct rogue_fwif_kccb_cmd_kick_data cmd_kick_data;
+		/* Data for combined geom/frag Kick command */
+		struct rogue_fwif_kccb_cmd_combined_geom_frag_kick_data
+			combined_geom_frag_cmd_kick_data;
+		/* Data for MMU cache command */
+		struct rogue_fwif_mmucachedata mmu_cache_data;
+		/* Data for Breakpoint Commands */
+		struct rogue_fwif_bpdata bp_data;
+		/* Data for SLC Flush/Inval commands */
+		struct rogue_fwif_slcflushinvaldata slc_flush_inval_data;
+		/* Data for cleanup commands */
+		struct rogue_fwif_cleanup_request cleanup_data;
+		/* Data for power request commands */
+		struct rogue_fwif_power_request pow_data;
+		/* Data for HWPerf control command */
+		struct rogue_fwif_hwperf_ctrl hw_perf_ctrl;
+		/*
+		 * Data for HWPerf configure, clear and enable performance
+		 * counter block command
+		 */
+		struct rogue_fwif_hwperf_config_enable_blks
+			hw_perf_cfg_enable_blks;
+		/*
+		 * Data for HWPerf enable or disable performance counter block
+		 * commands
+		 */
+		struct rogue_fwif_hwperf_ctrl_blks hw_perf_ctrl_blks;
+		/* Data for HWPerf configure the custom counters to read */
+		struct rogue_fwif_hwperf_select_custom_cntrs
+			hw_perf_select_cstm_cntrs;
+		/* Data for HWPerf configure Directly Addressable blocks */
+		struct rogue_fwif_hwperf_config_da_blks hw_perf_cfg_da_blks;
+		/* Data for core clock speed change */
+		struct rogue_fwif_coreclkspeedchange_data
+			core_clk_speed_change_data;
+		/* Feedback for Z/S Buffer backing/unbacking */
+		struct rogue_fwif_zsbuffer_backing_data zs_buffer_backing_data;
+		/* Feedback for Freelist grow/shrink */
+		struct rogue_fwif_freelist_gs_data free_list_gs_data;
+		/* Feedback for Freelists reconstruction*/
+		struct rogue_fwif_freelists_reconstruction_data
+			free_lists_reconstruction_data;
+		/* Data for custom register configuration */
+		struct rogue_fwif_regconfig_data reg_config_data;
+		/* Data for informing the FW about the write offset update */
+		struct rogue_fwif_write_offset_update_data
+			write_offset_update_data;
+		/* Data for setting the max frequency/OPP */
+		struct rogue_fwif_pdvfs_max_freq_data pdvfs_max_freq_data;
+		/* Data for setting the min frequency/OPP */
+		struct rogue_fwif_pdvfs_min_freq_data pdvfs_min_freq_data;
+		/* Data for updating the Guest Online states */
+		struct rogue_fwif_os_state_change_data cmd_os_online_state_data;
+		/* Dev address for TBI buffer allocated on demand */
+		u32 tbi_buffer_fw_addr;
+		/* Data for dumping of register ranges */
+		struct rogue_fwif_counter_dump_data counter_dump_config_data;
+		/* Data for signalling all unmet fences for a given CCB */
+		struct rogue_fwif_kccb_cmd_force_update_data force_update_data;
+	} cmd_data __aligned(8);
+} __aligned(8);
+
+PVR_FW_STRUCT_SIZE_ASSERT(struct rogue_fwif_kccb_cmd);
+
+/*
+ ******************************************************************************
+ * Firmware CCB command structure for ROGUE
+ ******************************************************************************
+ */
+
+struct rogue_fwif_fwccb_cmd_zsbuffer_backing_data {
+	u32 zs_buffer_id;
+};
+
+struct rogue_fwif_fwccb_cmd_freelist_gs_data {
+	u32 freelist_id;
+};
+
+struct rogue_fwif_fwccb_cmd_freelists_reconstruction_data {
+	u32 freelist_count;
+	u32 hwr_counter;
+	u32 freelist_ids[ROGUE_FWIF_MAX_FREELISTS_TO_RECONSTRUCT];
+};
+
+/* 1 if a page fault happened */
+#define ROGUE_FWIF_FWCCB_CMD_CONTEXT_RESET_FLAG_PF BIT(0)
+/* 1 if applicable to all contexts */
+#define ROGUE_FWIF_FWCCB_CMD_CONTEXT_RESET_FLAG_ALL_CTXS BIT(1)
+
+struct rogue_fwif_fwccb_cmd_context_reset_data {
+	/* Context affected by the reset */
+	u32 server_common_context_id;
+	/* Reason for reset */
+	enum rogue_context_reset_reason reset_reason;
+	/* Data Master affected by the reset */
+	u32 dm;
+	/* Job ref running at the time of reset */
+	u32 reset_job_ref;
+	/* ROGUE_FWIF_FWCCB_CMD_CONTEXT_RESET_FLAG bitfield */
+	u32 flags;
+	/* At what page catalog address */
+	aligned_u64 pc_address;
+	/* Page fault address (only when applicable) */
+	aligned_u64 fault_address;
+};
+
+struct rogue_fwif_fwccb_cmd_fw_pagefault_data {
+	/* Page fault address */
+	u64 fw_fault_addr;
+};
+
+enum rogue_fwif_fwccb_cmd_type {
+	/* Requests ZSBuffer to be backed with physical pages */
+	ROGUE_FWIF_FWCCB_CMD_ZSBUFFER_BACKING = 101U |
+						ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Requests ZSBuffer to be unbacked */
+	ROGUE_FWIF_FWCCB_CMD_ZSBUFFER_UNBACKING = 102U |
+						  ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Requests an on-demand freelist grow/shrink */
+	ROGUE_FWIF_FWCCB_CMD_FREELIST_GROW = 103U |
+					     ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Requests freelists reconstruction */
+	ROGUE_FWIF_FWCCB_CMD_FREELISTS_RECONSTRUCTION =
+		104U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Notifies host of a HWR event on a context */
+	ROGUE_FWIF_FWCCB_CMD_CONTEXT_RESET_NOTIFICATION =
+		105U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Requests an on-demand debug dump */
+	ROGUE_FWIF_FWCCB_CMD_DEBUG_DUMP = 106U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	/* Requests an on-demand update on process stats */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_STATS = 107U |
+					    ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	ROGUE_FWIF_FWCCB_CMD_CORE_CLK_RATE_CHANGE =
+		108U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+	ROGUE_FWIF_FWCCB_CMD_REQUEST_GPU_RESTART =
+		109U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+
+	/* Notifies host of a FW pagefault */
+	ROGUE_FWIF_FWCCB_CMD_CONTEXT_FW_PF_NOTIFICATION =
+		112U | ROGUE_CMD_MAGIC_DWORD_SHIFTED,
+};
+
+enum rogue_fwif_fwccb_cmd_update_stats_type {
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32TotalNumPartialRenders stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_PARTIAL_RENDERS = 1,
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32TotalNumOutOfMemory stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_OUT_OF_MEMORY,
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32NumGeomStores stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_GEOM_STORES,
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32NumFragStores stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_FRAG_STORES,
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32NumCDMStores stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_CDM_STORES,
+	/*
+	 * PVRSRVStatsUpdateRenderContextStats should increase the value of the
+	 * ui32NumTDMStores stat
+	 */
+	ROGUE_FWIF_FWCCB_CMD_UPDATE_NUM_TDM_STORES
+};
+
+struct rogue_fwif_fwccb_cmd_update_stats_data {
+	/* Element to update */
+	enum rogue_fwif_fwccb_cmd_update_stats_type element_to_update;
+	/* The pid of the process whose stats are being updated */
+	u32 pid_owner;
+	/* Adjustment to be made to the statistic */
+	s32 adjustment_value;
+};
+
+struct rogue_fwif_fwccb_cmd_core_clk_rate_change_data {
+	u32 core_clk_rate;
+} __aligned(8);
+
+struct rogue_fwif_fwccb_cmd {
+	/* Command type */
+	enum rogue_fwif_fwccb_cmd_type cmd_type;
+	/* Compatibility and other flags */
+	u32 fwccb_flags;
+
+	union {
+		/* Data for Z/S-Buffer on-demand (un)backing*/
+		struct rogue_fwif_fwccb_cmd_zsbuffer_backing_data
+			cmd_zs_buffer_backing;
+		/* Data for on-demand freelist grow/shrink */
+		struct rogue_fwif_fwccb_cmd_freelist_gs_data cmd_free_list_gs;
+		/* Data for freelists reconstruction */
+		struct rogue_fwif_fwccb_cmd_freelists_reconstruction_data
+			cmd_freelists_reconstruction;
+		/* Data for context reset notification */
+		struct rogue_fwif_fwccb_cmd_context_reset_data
+			cmd_context_reset_notification;
+		/* Data for updating process stats */
+		struct rogue_fwif_fwccb_cmd_update_stats_data
+			cmd_update_stats_data;
+		struct rogue_fwif_fwccb_cmd_core_clk_rate_change_data
+			cmd_core_clk_rate_change;
+		struct rogue_fwif_fwccb_cmd_fw_pagefault_data cmd_fw_pagefault;
+	} cmd_data __aligned(8);
+} __aligned(8);
+
+PVR_FW_STRUCT_SIZE_ASSERT(struct rogue_fwif_fwccb_cmd);
+
+/*
+ ******************************************************************************
+ * Workload estimation Firmware CCB command structure for ROGUE
+ ******************************************************************************
+ */
+struct rogue_fwif_workest_fwccb_cmd {
+	/* Index for return data array */
+	u16 return_data_index;
+	/* The cycles the workload took on the hardware */
+	u32 cycles_taken;
+};
+
+/*
+ ******************************************************************************
+ * Client CCB commands for ROGUE
+ ******************************************************************************
+ */
+
+/*
+ * Required memory alignment for 64-bit variables accessible by Meta
+ * (The gcc meta aligns 64-bit variables to 64-bit; therefore, memory shared
+ * between the host and meta that contains 64-bit variables has to maintain
+ * this alignment)
+ */
+#define ROGUE_FWIF_FWALLOC_ALIGN sizeof(u64)
+
+#define ROGUE_CCB_TYPE_TASK BIT(15)
+#define ROGUE_CCB_FWALLOC_ALIGN(size)                \
+	(((size) + (ROGUE_FWIF_FWALLOC_ALIGN - 1)) & \
+	 ~(ROGUE_FWIF_FWALLOC_ALIGN - 1))
+
+#define ROGUE_FWIF_CCB_CMD_TYPE_GEOM \
+	(201U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_TQ_3D \
+	(202U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_FRAG \
+	(203U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_FRAG_PR \
+	(204U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_CDM \
+	(205U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_TQ_TDM \
+	(206U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_FBSC_INVALIDATE \
+	(207U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_TQ_2D \
+	(208U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_PRE_TIMESTAMP \
+	(209U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_NULL \
+	(210U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+#define ROGUE_FWIF_CCB_CMD_TYPE_ABORT \
+	(211U | ROGUE_CMD_MAGIC_DWORD_SHIFTED | ROGUE_CCB_TYPE_TASK)
+
+/* Leave a gap between CCB specific commands and generic commands */
+#define ROGUE_FWIF_CCB_CMD_TYPE_FENCE (212U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_UPDATE (213U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_RMW_UPDATE \
+	(214U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_FENCE_PR (215U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_PRIORITY (216U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+/*
+ * Pre and Post timestamp commands are supposed to sandwich the DM cmd. The
+ * padding code with the CCB wrap upsets the FW if we don't have the task type
+ * bit cleared for POST_TIMESTAMPs. That's why we have 2 different cmd types.
+ */
+#define ROGUE_FWIF_CCB_CMD_TYPE_POST_TIMESTAMP \
+	(217U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_UNFENCED_UPDATE \
+	(218U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+#define ROGUE_FWIF_CCB_CMD_TYPE_UNFENCED_RMW_UPDATE \
+	(219U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+
+#define ROGUE_FWIF_CCB_CMD_TYPE_PADDING (221U | ROGUE_CMD_MAGIC_DWORD_SHIFTED)
+
+struct rogue_fwif_workest_kick_data {
+	/* Index for the KM Workload estimation return data array */
+	u16 return_data_index __aligned(8);
+	/* Predicted time taken to do the work in cycles */
+	u32 cycles_prediction __aligned(8);
+	/* Deadline for the workload */
+	aligned_u64 deadline;
+};
+
+struct rogue_fwif_ccb_cmd_header {
+	u32 cmd_type;
+	u32 cmd_size;
+	/*
+	 * external job reference - provided by client and used in debug for
+	 * tracking submitted work
+	 */
+	u32 ext_job_ref;
+	/*
+	 * internal job reference - generated by services and used in debug for
+	 * tracking submitted work
+	 */
+	u32 int_job_ref;
+	/* Workload Estimation - Workload Estimation Data */
+	struct rogue_fwif_workest_kick_data work_est_kick_data __aligned(8);
+};
+
+/*
+ ******************************************************************************
+ * Client CCB commands which are only required by the kernel
+ ******************************************************************************
+ */
+struct rogue_fwif_cmd_priority {
+	s32 priority;
+};
+
+/*
+ ******************************************************************************
+ * Signature and Checksums Buffer
+ ******************************************************************************
+ */
+struct rogue_fwif_sigbuf_ctl {
+	/* Ptr to Signature Buffer memory */
+	u32 buffer_fw_addr;
+	/* Amount of space left for storing regs in the buffer */
+	u32 left_size_in_regs;
+} __aligned(8);
+
+struct rogue_fwif_counter_dump_ctl {
+	/* Ptr to counter dump buffer */
+	u32 buffer_fw_addr;
+	/* Amount of space for storing in the buffer */
+	u32 size_in_dwords;
+} __aligned(8);
+
+struct rogue_fwif_firmware_gcov_ctl {
+	/* Ptr to firmware gcov buffer */
+	u32 buffer_fw_addr;
+	/* Amount of space for storing in the buffer */
+	u32 size;
+} __aligned(8);
+
+/*
+ *****************************************************************************
+ * ROGUE Compatibility checks
+ *****************************************************************************
+ */
+
+/*
+ * WARNING: Whenever the layout of ROGUE_FWIF_COMPCHECKS_BVNC changes, the
+ * following define should be increased by 1 to indicate to the compatibility
+ * logic that layout has changed.
+ */
+#define ROGUE_FWIF_COMPCHECKS_LAYOUT_VERSION 3
+
+struct rogue_fwif_compchecks_bvnc {
+	/* WARNING: This field must be defined as first one in this structure */
+	u32 layout_version;
+	aligned_u64 bvnc;
+} __aligned(8);
+
+struct rogue_fwif_init_options {
+	u8 os_count_support;
+	u8 padding[7];
+} __aligned(8);
+
+#define ROGUE_FWIF_COMPCHECKS_BVNC_DECLARE_AND_INIT(name) \
+	struct rogue_fwif_compchecks_bvnc(name) = {       \
+		ROGUE_FWIF_COMPCHECKS_LAYOUT_VERSION,     \
+		0,                                        \
+	}
+
+static inline void rogue_fwif_compchecks_bvnc_init(struct rogue_fwif_compchecks_bvnc *compchecks)
+{
+	compchecks->layout_version = ROGUE_FWIF_COMPCHECKS_LAYOUT_VERSION;
+	compchecks->bvnc = 0;
+}
+
+struct rogue_fwif_compchecks {
+	/* hardware BVNC (from the ROGUE registers) */
+	struct rogue_fwif_compchecks_bvnc hw_bvnc;
+	/* firmware BVNC */
+	struct rogue_fwif_compchecks_bvnc fw_bvnc;
+	/* identifier of the FW processor version */
+	u32 fw_processor_version;
+	/* software DDK version */
+	u32 ddk_version;
+	/* software DDK build no. */
+	u32 ddk_build;
+	/* build options bit-field */
+	u32 build_options;
+	/* initialisation options bit-field */
+	struct rogue_fwif_init_options init_options;
+	/* Information is valid */
+	bool updated __aligned(4);
+	u32 padding;
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * Updated configuration post FW data init.
+ ******************************************************************************
+ */
+struct rogue_fwif_runtime_cfg {
+	/* APM latency in ms before signalling IDLE to the host */
+	u32 active_pm_latency_ms;
+	/* Compatibility and other flags */
+	u32 runtime_cfg_flags;
+	/*
+	 * If set, APM latency does not reset to system default each GPU power
+	 * transition
+	 */
+	bool active_pm_latency_persistant __aligned(4);
+	/* Core clock speed, currently only used to calculate timer ticks */
+	u32 core_clock_speed;
+	/* Last number of dusts change requested by the host */
+	u32 default_dusts_num_init;
+	/* Periodic Hardware Reset configuration values */
+	u32 phr_mode;
+	/* New number of milliseconds C/S is allowed to last */
+	u32 hcs_deadline_ms;
+	/* The watchdog period in microseconds */
+	u32 wdg_period_us;
+	/* Array of priorities per OS */
+	u32 osid_priority[ROGUE_FW_MAX_NUM_OS];
+	/* On-demand allocated HWPerf buffer address, to be passed to the FW */
+	u32 hwperf_buf_fw_addr;
+
+	bool padding __aligned(4);
+};
+
+/*
+ *****************************************************************************
+ * Control data for ROGUE
+ *****************************************************************************
+ */
+
+#define ROGUE_FWIF_HWR_DEBUG_DUMP_ALL (99999U)
+
+enum rogue_fwif_tpu_dm {
+	ROGUE_FWIF_TPU_DM_PDM = 0,
+	ROGUE_FWIF_TPU_DM_VDM = 1,
+	ROGUE_FWIF_TPU_DM_CDM = 2,
+	ROGUE_FWIF_TPU_DM_TDM = 3,
+	ROGUE_FWIF_TPU_DM_LAST
+};
+
+enum rogue_fwif_gpio_val_mode {
+	/* No GPIO validation */
+	ROGUE_FWIF_GPIO_VAL_OFF = 0,
+	/*
+	 * Simple test case that initiates by sending data via the GPIO and then
+	 * sends back any data received over the GPIO
+	 */
+	ROGUE_FWIF_GPIO_VAL_GENERAL = 1,
+	/*
+	 * More complex test case that writes and reads data across the entire
+	 * GPIO AP address range.
+	 */
+	ROGUE_FWIF_GPIO_VAL_AP = 2,
+	/* Validates the GPIO Testbench. */
+	ROGUE_FWIF_GPIO_VAL_TESTBENCH = 5,
+	/* Send and then receive each byte in the range 0-255. */
+	ROGUE_FWIF_GPIO_VAL_LOOPBACK = 6,
+	/* Send and then receive each power-of-2 byte in the range 0-255. */
+	ROGUE_FWIF_GPIO_VAL_LOOPBACK_LITE = 7,
+	ROGUE_FWIF_GPIO_VAL_LAST
+};
+
+enum fw_perf_conf {
+	FW_PERF_CONF_NONE = 0,
+	FW_PERF_CONF_ICACHE = 1,
+	FW_PERF_CONF_DCACHE = 2,
+	FW_PERF_CONF_JTLB_INSTR = 5,
+	FW_PERF_CONF_INSTRUCTIONS = 6
+};
+
+enum fw_boot_stage {
+	FW_BOOT_STAGE_TLB_INIT_FAILURE = -2,
+	FW_BOOT_STAGE_NOT_AVAILABLE = -1,
+	FW_BOOT_NOT_STARTED = 0,
+	FW_BOOT_BLDR_STARTED = 1,
+	FW_BOOT_CACHE_DONE,
+	FW_BOOT_TLB_DONE,
+	FW_BOOT_MAIN_STARTED,
+	FW_BOOT_ALIGNCHECKS_DONE,
+	FW_BOOT_INIT_DONE,
+};
+
+/*
+ * Kernel CCB return slot responses. Usage of bit-fields instead of bare
+ * integers allows FW to possibly pack-in several responses for each single kCCB
+ * command.
+ */
+/* Command executed (return status from FW) */
+#define ROGUE_FWIF_KCCB_RTN_SLOT_CMD_EXECUTED BIT(0)
+/* A cleanup was requested but resource busy */
+#define ROGUE_FWIF_KCCB_RTN_SLOT_CLEANUP_BUSY BIT(1)
+/* Poll failed in FW for a HW operation to complete */
+#define ROGUE_FWIF_KCCB_RTN_SLOT_POLL_FAILURE BIT(2)
+/* Reset value of a kCCB return slot (set by host) */
+#define ROGUE_FWIF_KCCB_RTN_SLOT_NO_RESPONSE 0x0U
+
+struct rogue_fwif_connection_ctl {
+	/* Fw-Os connection states */
+	enum rogue_fwif_connection_fw_state connection_fw_state;
+	enum rogue_fwif_connection_os_state connection_os_state;
+	u32 alive_fw_token;
+	u32 alive_os_token;
+} __aligned(8);
+
+struct rogue_fwif_osinit {
+	/* Kernel CCB */
+	u32 kernel_ccbctl_fw_addr;
+	u32 kernel_ccb_fw_addr;
+	u32 kernel_ccb_rtn_slots_fw_addr;
+
+	/* Firmware CCB */
+	u32 firmware_ccbctl_fw_addr;
+	u32 firmware_ccb_fw_addr;
+
+	/* Workload Estimation Firmware CCB */
+	u32 work_est_firmware_ccbctl_fw_addr;
+	u32 work_est_firmware_ccb_fw_addr;
+
+	u32 rogue_fwif_hwr_info_buf_ctl_fw_addr;
+
+	u32 hwr_debug_dump_limit;
+
+	u32 fw_os_data_fw_addr;
+
+	/* Compatibility checks to be populated by the Firmware */
+	struct rogue_fwif_compchecks rogue_comp_checks;
+} __aligned(8);
+
+/* BVNC Features */
+struct rogue_hwperf_bvnc_block {
+	/* Counter block ID, see ROGUE_HWPERF_CNTBLK_ID */
+	u16 block_id;
+
+	/* Number of counters in this block type */
+	u16 num_counters;
+
+	/* Number of blocks of this type */
+	u16 num_blocks;
+
+	u16 reserved;
+};
+
+#define ROGUE_HWPERF_MAX_BVNC_LEN (24)
+
+#define ROGUE_HWPERF_MAX_BVNC_BLOCK_LEN (16U)
+
+/* BVNC Features */
+struct rogue_hwperf_bvnc {
+	/* BVNC string */
+	char bvnc_string[ROGUE_HWPERF_MAX_BVNC_LEN];
+	/* See ROGUE_HWPERF_FEATURE_FLAGS */
+	u32 bvnc_km_feature_flags;
+	/* Number of blocks described in aBvncBlocks */
+	u16 num_bvnc_blocks;
+	/* Number of GPU cores present */
+	u16 bvnc_gpu_cores;
+	/* Supported Performance Blocks for BVNC */
+	struct rogue_hwperf_bvnc_block
+		bvnc_blocks[ROGUE_HWPERF_MAX_BVNC_BLOCK_LEN];
+};
+
+PVR_FW_STRUCT_SIZE_ASSERT(struct rogue_hwperf_bvnc);
+
+struct rogue_fwif_sysinit {
+	/* Fault read address */
+	aligned_u64 fault_phys_addr;
+
+	/* PDS execution base */
+	aligned_u64 pds_exec_base;
+	/* UCS execution base */
+	aligned_u64 usc_exec_base;
+	/* FBCDC bindless texture state table base */
+	aligned_u64 fbcdc_state_table_base;
+	aligned_u64 fbcdc_large_state_table_base;
+	/* Texture state base */
+	aligned_u64 texture_heap_base;
+
+	/* Event filter for Firmware events */
+	u64 hw_perf_filter;
+
+	aligned_u64 slc3_fence_dev_addr;
+
+	u32 tpu_trilinear_frac_mask[ROGUE_FWIF_TPU_DM_LAST] __aligned(8);
+
+	/* Signature and Checksum Buffers for DMs */
+	struct rogue_fwif_sigbuf_ctl sigbuf_ctl[PVR_FWIF_DM_MAX];
+
+	struct rogue_fwif_pdvfs_opp pdvfs_opp_info;
+
+	struct rogue_fwif_dma_addr coremem_data_store;
+
+	struct rogue_fwif_counter_dump_ctl counter_dump_ctl;
+
+	u32 filter_flags;
+
+	u32 runtime_cfg_fw_addr;
+
+	u32 trace_buf_ctl_fw_addr;
+	u32 fw_sys_data_fw_addr;
+
+	u32 gpu_util_fw_cb_ctl_fw_addr;
+	u32 reg_cfg_fw_addr;
+	u32 hwperf_ctl_fw_addr;
+
+	u32 align_checks;
+
+	/* Core clock speed at FW boot time */
+	u32 initial_core_clock_speed;
+
+	/* APM latency in ms before signalling IDLE to the host */
+	u32 active_pm_latency_ms;
+
+	/* Flag to be set by the Firmware after successful start */
+	bool firmware_started __aligned(4);
+
+	/* Host/FW Trace synchronisation Partition Marker */
+	u32 marker_val;
+
+	/* Firmware initialization complete time */
+	u32 firmware_started_timestamp;
+
+	u32 jones_disable_mask;
+
+	/* Firmware performance counter config */
+	enum fw_perf_conf firmware_perf;
+
+	/*
+	 * FW Pointer to memory containing core clock rate in Hz.
+	 * Firmware (PDVFS) updates the memory when running on non primary FW
+	 * thread to communicate to host driver.
+	 */
+	u32 core_clock_rate_fw_addr;
+
+	enum rogue_fwif_gpio_val_mode gpio_validation_mode;
+
+	/* Used in HWPerf for decoding BVNC Features */
+	struct rogue_hwperf_bvnc bvnc_km_feature_flags;
+
+	/* Value to write into ROGUE_CR_TFBC_COMPRESSION_CONTROL */
+	u32 tfbc_compression_control;
+} __aligned(8);
+
+/*
+ *****************************************************************************
+ * Timer correlation shared data and defines
+ *****************************************************************************
+ */
+
+struct rogue_fwif_time_corr {
+	aligned_u64 os_timestamp;
+	aligned_u64 os_mono_timestamp;
+	aligned_u64 cr_timestamp;
+
+	/*
+	 * Utility variable used to convert CR timer deltas to OS timer deltas
+	 * (nS), where the deltas are relative to the timestamps above:
+	 * deltaOS = (deltaCR * K) >> decimal_shift, see full explanation below
+	 */
+	aligned_u64 cr_delta_to_os_delta_kns;
+
+	u32 core_clock_speed;
+	u32 reserved;
+} __aligned(8);
+
+/*
+ * The following macros are used to help converting FW timestamps to the Host
+ * time domain. On the FW the ROGUE_CR_TIMER counter is used to keep track of
+ * time; it increments by 1 every 256 GPU clock ticks, so the general
+ * formula to perform the conversion is:
+ *
+ * [ GPU clock speed in Hz, if (scale == 10^9) then deltaOS is in nS,
+ *   otherwise if (scale == 10^6) then deltaOS is in uS ]
+ *
+ *             deltaCR * 256                                   256 * scale
+ *  deltaOS = --------------- * scale = deltaCR * K    [ K = --------------- ]
+ *             GPUclockspeed                                  GPUclockspeed
+ *
+ * The actual K is multiplied by 2^20 (and deltaCR * K is divided by 2^20)
+ * to get some better accuracy and to avoid returning 0 in the integer
+ * division 256000000/GPUfreq if GPUfreq is greater than 256MHz.
+ * This is the same as keeping K as a decimal number.
+ *
+ * The maximum deltaOS is slightly more than 5hrs for all GPU frequencies
+ * (deltaCR * K is more or less a constant), and it's relative to the base
+ * OS timestamp sampled as a part of the timer correlation data.
+ * This base is refreshed on GPU power-on, DVFS transition and periodic
+ * frequency calibration (executed every few seconds if the FW is doing
+ * some work), so as long as the GPU is doing something and one of these
+ * events is triggered then deltaCR * K will not overflow and deltaOS will be
+ * correct.
+ */
+
+#define ROGUE_FWIF_CRDELTA_TO_OSDELTA_ACCURACY_SHIFT (20)
+
+#define ROGUE_FWIF_GET_DELTA_OSTIME_NS(delta_cr, k) \
+	(((delta_cr) * (k)) >> ROGUE_FWIF_CRDELTA_TO_OSDELTA_ACCURACY_SHIFT)
+
+/*
+ ******************************************************************************
+ * GPU Utilisation
+ ******************************************************************************
+ */
+
+/* See rogue_common.h for a list of GPU states */
+#define ROGUE_FWIF_GPU_UTIL_TIME_MASK \
+	(0xFFFFFFFFFFFFFFFFull & ~ROGUE_FWIF_GPU_UTIL_STATE_MASK)
+
+#define ROGUE_FWIF_GPU_UTIL_GET_TIME(word) \
+	((word)(&ROGUE_FWIF_GPU_UTIL_TIME_MASK))
+#define ROGUE_FWIF_GPU_UTIL_GET_STATE(word) \
+	((word)(&ROGUE_FWIF_GPU_UTIL_STATE_MASK))
+
+/*
+ * The OS timestamps computed by the FW are approximations of the real time,
+ * which means they could be slightly behind or ahead the real timer on the
+ * Host. In some cases we can perform subtractions between FW approximated
+ * timestamps and real OS timestamps, so we need a form of protection against
+ * negative results if for instance the FW one is a bit ahead of time.
+ */
+#define ROGUE_FWIF_GPU_UTIL_GET_PERIOD(newtime, oldtime) \
+	(((newtime) > (oldtime)) ? ((newtime) - (oldtime)) : 0U)
+
+#define ROGUE_FWIF_GPU_UTIL_MAKE_WORD(time, state) \
+	(ROGUE_FWIF_GPU_UTIL_GET_TIME(time) |      \
+	 ROGUE_FWIF_GPU_UTIL_GET_STATE(state))
+
+/*
+ * The timer correlation array must be big enough to ensure old entries won't be
+ * overwritten before all the HWPerf events linked to those entries are
+ * processed by the MISR. The update frequency of this array depends on how fast
+ * the system can change state (basically how small the APM latency is) and
+ * perform DVFS transitions.
+ *
+ * The minimum size is 2 (not 1) to avoid race conditions between the FW reading
+ * an entry while the Host is updating it. With 2 entries in the worst case the
+ * FW will read old data, which is still quite ok if the Host is updating the
+ * timer correlation at that time.
+ */
+#define ROGUE_FWIF_TIME_CORR_ARRAY_SIZE 256U
+#define ROGUE_FWIF_TIME_CORR_CURR_INDEX(seqcount) \
+	((seqcount) % ROGUE_FWIF_TIME_CORR_ARRAY_SIZE)
+
+/* Make sure the timer correlation array size is a power of 2 */
+static_assert((ROGUE_FWIF_TIME_CORR_ARRAY_SIZE &
+	       (ROGUE_FWIF_TIME_CORR_ARRAY_SIZE - 1U)) == 0U,
+	      "ROGUE_FWIF_TIME_CORR_ARRAY_SIZE must be a power of two");
+
+struct rogue_fwif_gpu_util_fwcb {
+	struct rogue_fwif_time_corr time_corr[ROGUE_FWIF_TIME_CORR_ARRAY_SIZE];
+	u32 time_corr_seq_count;
+
+	/* Compatibility and other flags */
+	u32 gpu_util_flags;
+
+	/* Last GPU state + OS time of the last state update */
+	aligned_u64 last_word;
+
+	/* Counters for the amount of time the GPU was active/idle/blocked */
+	aligned_u64 stats_counters[PVR_FWIF_GPU_UTIL_STATE_NUM];
+} __aligned(8);
+
+struct rogue_fwif_rta_ctl {
+	/* Render number */
+	u32 render_target_index;
+	/* index in RTA */
+	u32 current_render_target;
+	/* total active RTs */
+	u32 active_render_targets;
+	/* total active RTs from the first TA kick, for OOM */
+	u32 cumul_active_render_targets;
+	/* Array of valid RT indices */
+	u32 valid_render_targets_fw_addr;
+	/* Array of number of occurred partial renders per render target */
+	u32 rta_num_partial_renders_fw_addr;
+	/* Number of render targets in the array */
+	u32 max_rts;
+	/* Compatibility and other flags */
+	u32 rta_ctl_flags;
+} __aligned(8);
+
+struct rogue_fwif_freelist {
+	aligned_u64 freelist_dev_addr;
+	aligned_u64 current_dev_addr;
+	u32 current_stack_top;
+	u32 max_pages;
+	u32 grow_pages;
+	/* HW pages */
+	u32 current_pages;
+	u32 allocated_page_count;
+	u32 allocated_mmu_page_count;
+	u32 freelist_id;
+
+	bool grow_pending __aligned(4);
+	/* Pages that should be used only when OOM is reached */
+	u32 ready_pages;
+	/* Compatibility and other flags */
+	u32 freelist_flags;
+	/* PM Global PB on which Freelist is loaded */
+	u32 pm_global_pb;
+	u32 padding;
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * HWRTData
+ ******************************************************************************
+ */
+
+/* HWRTData flags */
+/* Deprecated flags 1:0 */
+#define HWRTDATA_HAS_LAST_GEOM BIT(2)
+#define HWRTDATA_PARTIAL_RENDERED BIT(3)
+#define HWRTDATA_DISABLE_TILE_REORDERING BIT(4)
+#define HWRTDATA_NEED_BRN65101_BLIT BIT(5)
+#define HWRTDATA_FIRST_BRN65101_STRIP BIT(6)
+#define HWRTDATA_NEED_BRN67182_2ND_RENDER BIT(7)
+
+enum rogue_fwif_rtdata_state {
+	ROGUE_FWIF_RTDATA_STATE_NONE = 0,
+	ROGUE_FWIF_RTDATA_STATE_KICK_GEOM,
+	ROGUE_FWIF_RTDATA_STATE_KICK_GEOM_FIRST,
+	ROGUE_FWIF_RTDATA_STATE_GEOM_FINISHED,
+	ROGUE_FWIF_RTDATA_STATE_KICK_FRAG,
+	ROGUE_FWIF_RTDATA_STATE_FRAG_FINISHED,
+	ROGUE_FWIF_RTDATA_STATE_FRAG_CONTEXT_STORED,
+	ROGUE_FWIF_RTDATA_STATE_GEOM_OUTOFMEM,
+	ROGUE_FWIF_RTDATA_STATE_PARTIALRENDERFINISHED,
+	/*
+	 * In case of HWR, we can't set the RTDATA state to NONE, as this will
+	 * cause any TA to become a first TA. To ensure all related TA's are
+	 * skipped, we use the HWR state
+	 */
+	ROGUE_FWIF_RTDATA_STATE_HWR,
+	ROGUE_FWIF_RTDATA_STATE_UNKNOWN = 0x7FFFFFFFU
+};
+
+struct rogue_fwif_hwrtdata_common {
+	bool geom_caches_need_zeroing __aligned(4);
+
+	u32 screen_pixel_max;
+	aligned_u64 multi_sample_ctl;
+	u64 flipped_multi_sample_ctl;
+	u32 tpc_stride;
+	u32 tpc_size;
+	u32 te_screen;
+	u32 mtile_stride;
+	u32 teaa;
+	u32 te_mtile1;
+	u32 te_mtile2;
+	u32 isp_merge_lower_x;
+	u32 isp_merge_lower_y;
+	u32 isp_merge_upper_x;
+	u32 isp_merge_upper_y;
+	u32 isp_merge_scale_x;
+	u32 isp_merge_scale_y;
+	u32 rgn_header_size;
+	u32 isp_mtile_size;
+	u32 padding;
+} __aligned(8);
+
+struct rogue_fwif_hwrtdata {
+	/* MList Data Store */
+	aligned_u64 pm_mlist_dev_addr;
+
+	aligned_u64 vce_cat_base[4];
+	aligned_u64 vce_last_cat_base[4];
+	aligned_u64 te_cat_base[4];
+	aligned_u64 te_last_cat_base[4];
+	aligned_u64 alist_cat_base;
+	aligned_u64 alist_last_cat_base;
+
+	aligned_u64 pm_alist_stack_pointer;
+	u32 pm_mlist_stack_pointer;
+
+	u32 hwrt_data_common_fw_addr;
+
+	u32 hwrt_data_flags;
+	enum rogue_fwif_rtdata_state state;
+
+	u32 freelists_fw_addr[MAX_FREELISTS_SIZE] __aligned(8);
+	u32 freelist_hwr_snapshot[MAX_FREELISTS_SIZE];
+
+	aligned_u64 vheap_table_dev_addr;
+
+	struct rogue_fwif_rta_ctl rta_ctl;
+
+	aligned_u64 tail_ptrs_dev_addr;
+	aligned_u64 macrotile_array_dev_addr;
+	aligned_u64 rgn_header_dev_addr;
+	aligned_u64 rtc_dev_addr;
+
+	u32 owner_geom_not_used_by_host __aligned(8);
+
+	bool geom_caches_need_zeroing __aligned(4);
+
+	struct rogue_fwif_cleanup_ctl cleanup_state __aligned(64);
+} __aligned(8);
+
+/*
+ ******************************************************************************
+ * Sync checkpoints
+ ******************************************************************************
+ */
+
+#define PVR_SYNC_CHECKPOINT_UNDEF 0x000
+#define PVR_SYNC_CHECKPOINT_ACTIVE 0xac1     /* Checkpoint has not signaled. */
+#define PVR_SYNC_CHECKPOINT_SIGNALED 0x519   /* Checkpoint has signaled. */
+#define PVR_SYNC_CHECKPOINT_ERRORED 0xeff    /* Checkpoint has been errored. */
+
+#include "pvr_rogue_fwif_check.h"
+
+#endif /* PVR_ROGUE_FWIF_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_check.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_check.h
new file mode 100644
index 000000000000..eb8f1ffe7373
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_check.h
@@ -0,0 +1,491 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_CHECK_H
+#define PVR_ROGUE_FWIF_CHECK_H
+
+#include <linux/build_bug.h>
+
+#define OFFSET_CHECK(type, member, offset) \
+	static_assert(offsetof(type, member) == (offset), \
+		      "offsetof(" #type ", " #member ") incorrect")
+
+#define SIZE_CHECK(type, size) \
+	static_assert(sizeof(type) == (size), #type " is incorrect size")
+
+OFFSET_CHECK(struct rogue_fwif_file_info_buf, path, 0);
+OFFSET_CHECK(struct rogue_fwif_file_info_buf, info, 200);
+OFFSET_CHECK(struct rogue_fwif_file_info_buf, line_num, 400);
+SIZE_CHECK(struct rogue_fwif_file_info_buf, 408);
+
+OFFSET_CHECK(struct rogue_fwif_tracebuf_space, trace_pointer, 0);
+OFFSET_CHECK(struct rogue_fwif_tracebuf_space, trace_buffer_fw_addr, 4);
+OFFSET_CHECK(struct rogue_fwif_tracebuf_space, trace_buffer, 8);
+OFFSET_CHECK(struct rogue_fwif_tracebuf_space, assert_buf, 16);
+SIZE_CHECK(struct rogue_fwif_tracebuf_space, 424);
+
+OFFSET_CHECK(struct rogue_fwif_tracebuf, log_type, 0);
+OFFSET_CHECK(struct rogue_fwif_tracebuf, tracebuf, 8);
+OFFSET_CHECK(struct rogue_fwif_tracebuf, tracebuf_size_in_dwords, 856);
+OFFSET_CHECK(struct rogue_fwif_tracebuf, tracebuf_flags, 860);
+SIZE_CHECK(struct rogue_fwif_tracebuf, 864);
+
+OFFSET_CHECK(struct rogue_fw_fault_info, cr_timer, 0);
+OFFSET_CHECK(struct rogue_fw_fault_info, os_timer, 8);
+OFFSET_CHECK(struct rogue_fw_fault_info, data, 16);
+OFFSET_CHECK(struct rogue_fw_fault_info, reserved, 20);
+OFFSET_CHECK(struct rogue_fw_fault_info, fault_buf, 24);
+SIZE_CHECK(struct rogue_fw_fault_info, 432);
+
+OFFSET_CHECK(struct rogue_fwif_sysdata, config_flags, 0);
+OFFSET_CHECK(struct rogue_fwif_sysdata, config_flags_ext, 4);
+OFFSET_CHECK(struct rogue_fwif_sysdata, pow_state, 8);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_ridx, 12);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_widx, 16);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_wrap_count, 20);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_size, 24);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_drop_count, 28);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hw_perf_ut, 32);
+OFFSET_CHECK(struct rogue_fwif_sysdata, first_drop_ordinal, 36);
+OFFSET_CHECK(struct rogue_fwif_sysdata, last_drop_ordinal, 40);
+OFFSET_CHECK(struct rogue_fwif_sysdata, os_runtime_flags_mirror, 44);
+OFFSET_CHECK(struct rogue_fwif_sysdata, fault_info, 80);
+OFFSET_CHECK(struct rogue_fwif_sysdata, fw_faults, 3536);
+OFFSET_CHECK(struct rogue_fwif_sysdata, cr_poll_addr, 3540);
+OFFSET_CHECK(struct rogue_fwif_sysdata, cr_poll_mask, 3548);
+OFFSET_CHECK(struct rogue_fwif_sysdata, cr_poll_count, 3556);
+OFFSET_CHECK(struct rogue_fwif_sysdata, start_idle_time, 3568);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hwr_state_flags, 3576);
+OFFSET_CHECK(struct rogue_fwif_sysdata, hwr_recovery_flags, 3580);
+OFFSET_CHECK(struct rogue_fwif_sysdata, fw_sys_data_flags, 3616);
+OFFSET_CHECK(struct rogue_fwif_sysdata, mc_config, 3620);
+SIZE_CHECK(struct rogue_fwif_sysdata, 3624);
+
+OFFSET_CHECK(struct rogue_fwif_slr_entry, timestamp, 0);
+OFFSET_CHECK(struct rogue_fwif_slr_entry, fw_ctx_addr, 8);
+OFFSET_CHECK(struct rogue_fwif_slr_entry, num_ufos, 12);
+OFFSET_CHECK(struct rogue_fwif_slr_entry, ccb_name, 16);
+SIZE_CHECK(struct rogue_fwif_slr_entry, 48);
+
+OFFSET_CHECK(struct rogue_fwif_osdata, fw_os_config_flags, 0);
+OFFSET_CHECK(struct rogue_fwif_osdata, fw_sync_check_mark, 4);
+OFFSET_CHECK(struct rogue_fwif_osdata, host_sync_check_mark, 8);
+OFFSET_CHECK(struct rogue_fwif_osdata, forced_updates_requested, 12);
+OFFSET_CHECK(struct rogue_fwif_osdata, slr_log_wp, 16);
+OFFSET_CHECK(struct rogue_fwif_osdata, slr_log_first, 24);
+OFFSET_CHECK(struct rogue_fwif_osdata, slr_log, 72);
+OFFSET_CHECK(struct rogue_fwif_osdata, last_forced_update_time, 552);
+OFFSET_CHECK(struct rogue_fwif_osdata, interrupt_count, 560);
+OFFSET_CHECK(struct rogue_fwif_osdata, kccb_cmds_executed, 568);
+OFFSET_CHECK(struct rogue_fwif_osdata, power_sync_fw_addr, 572);
+OFFSET_CHECK(struct rogue_fwif_osdata, fw_os_data_flags, 576);
+SIZE_CHECK(struct rogue_fwif_osdata, 584);
+
+OFFSET_CHECK(struct rogue_bifinfo, bif_req_status, 0);
+OFFSET_CHECK(struct rogue_bifinfo, bif_mmu_status, 8);
+OFFSET_CHECK(struct rogue_bifinfo, pc_address, 16);
+OFFSET_CHECK(struct rogue_bifinfo, reserved, 24);
+SIZE_CHECK(struct rogue_bifinfo, 32);
+
+OFFSET_CHECK(struct rogue_eccinfo, fault_gpu, 0);
+SIZE_CHECK(struct rogue_eccinfo, 4);
+
+OFFSET_CHECK(struct rogue_mmuinfo, mmu_status, 0);
+OFFSET_CHECK(struct rogue_mmuinfo, pc_address, 16);
+OFFSET_CHECK(struct rogue_mmuinfo, reserved, 24);
+SIZE_CHECK(struct rogue_mmuinfo, 32);
+
+OFFSET_CHECK(struct rogue_pollinfo, thread_num, 0);
+OFFSET_CHECK(struct rogue_pollinfo, cr_poll_addr, 4);
+OFFSET_CHECK(struct rogue_pollinfo, cr_poll_mask, 8);
+OFFSET_CHECK(struct rogue_pollinfo, cr_poll_last_value, 12);
+OFFSET_CHECK(struct rogue_pollinfo, reserved, 16);
+SIZE_CHECK(struct rogue_pollinfo, 24);
+
+OFFSET_CHECK(struct rogue_tlbinfo, bad_addr, 0);
+OFFSET_CHECK(struct rogue_tlbinfo, entry_lo, 4);
+SIZE_CHECK(struct rogue_tlbinfo, 8);
+
+OFFSET_CHECK(struct rogue_hwrinfo, hwr_data, 0);
+OFFSET_CHECK(struct rogue_hwrinfo, cr_timer, 32);
+OFFSET_CHECK(struct rogue_hwrinfo, os_timer, 40);
+OFFSET_CHECK(struct rogue_hwrinfo, frame_num, 48);
+OFFSET_CHECK(struct rogue_hwrinfo, pid, 52);
+OFFSET_CHECK(struct rogue_hwrinfo, active_hwrt_data, 56);
+OFFSET_CHECK(struct rogue_hwrinfo, hwr_number, 60);
+OFFSET_CHECK(struct rogue_hwrinfo, event_status, 64);
+OFFSET_CHECK(struct rogue_hwrinfo, hwr_recovery_flags, 68);
+OFFSET_CHECK(struct rogue_hwrinfo, hwr_type, 72);
+OFFSET_CHECK(struct rogue_hwrinfo, dm, 76);
+OFFSET_CHECK(struct rogue_hwrinfo, core_id, 80);
+OFFSET_CHECK(struct rogue_hwrinfo, cr_time_of_kick, 88);
+OFFSET_CHECK(struct rogue_hwrinfo, cr_time_hw_reset_start, 96);
+OFFSET_CHECK(struct rogue_hwrinfo, cr_time_hw_reset_finish, 104);
+OFFSET_CHECK(struct rogue_hwrinfo, cr_time_freelist_ready, 112);
+OFFSET_CHECK(struct rogue_hwrinfo, reserved, 120);
+SIZE_CHECK(struct rogue_hwrinfo, 136);
+
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_info, 0);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_counter, 2176);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, write_index, 2180);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, dd_req_count, 2184);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_info_buf_flags, 2188);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_dm_locked_up_count, 2192);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_dm_overran_count, 2228);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_dm_recovered_count, 2264);
+OFFSET_CHECK(struct rogue_fwif_hwrinfobuf, hwr_dm_false_detect_count, 2300);
+SIZE_CHECK(struct rogue_fwif_hwrinfobuf, 2336);
+
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, pc_dev_paddr, 0);
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, page_cat_base_reg_set, 8);
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, breakpoint_addr, 12);
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, bp_handler_addr, 16);
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, breakpoint_ctl, 20);
+OFFSET_CHECK(struct rogue_fwif_fwmemcontext, fw_mem_ctx_flags, 24);
+SIZE_CHECK(struct rogue_fwif_fwmemcontext, 32);
+
+OFFSET_CHECK(struct rogue_fwif_geom_ctx_state_per_geom, geom_reg_vdm_call_stack_pointer, 0);
+OFFSET_CHECK(struct rogue_fwif_geom_ctx_state_per_geom, geom_reg_vdm_call_stack_pointer_init, 8);
+OFFSET_CHECK(struct rogue_fwif_geom_ctx_state_per_geom, geom_reg_vbs_so_prim, 16);
+OFFSET_CHECK(struct rogue_fwif_geom_ctx_state_per_geom, geom_current_idx, 32);
+SIZE_CHECK(struct rogue_fwif_geom_ctx_state_per_geom, 40);
+
+OFFSET_CHECK(struct rogue_fwif_geom_ctx_state, geom_core, 0);
+SIZE_CHECK(struct rogue_fwif_geom_ctx_state, 160);
+
+OFFSET_CHECK(struct rogue_fwif_frag_ctx_state, frag_reg_pm_deallocated_mask_status, 0);
+OFFSET_CHECK(struct rogue_fwif_frag_ctx_state, frag_reg_dm_pds_mtilefree_status, 4);
+OFFSET_CHECK(struct rogue_fwif_frag_ctx_state, ctx_state_flags, 8);
+OFFSET_CHECK(struct rogue_fwif_frag_ctx_state, frag_reg_isp_store, 12);
+SIZE_CHECK(struct rogue_fwif_frag_ctx_state, 16);
+
+OFFSET_CHECK(struct rogue_fwif_compute_ctx_state, ctx_state_flags, 0);
+SIZE_CHECK(struct rogue_fwif_compute_ctx_state, 4);
+
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, ccbctl_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, ccb_fw_addr, 4);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, ccb_meta_dma_addr, 8);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, context_state_addr, 24);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, fw_com_ctx_flags, 28);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, priority, 32);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, priority_seq_num, 36);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, rf_cmd_addr, 40);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, stats_pending, 44);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, stats_num_stores, 48);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, stats_num_out_of_memory, 52);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, stats_num_partial_renders, 56);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, dm, 60);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, wait_signal_address, 64);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, wait_signal_node, 72);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, buf_stalled_node, 80);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, cbuf_queue_ctrl_addr, 88);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, robustness_address, 96);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, max_deadline_ms, 104);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, read_offset_needs_reset, 108);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, waiting_node, 112);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, run_node, 120);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, last_failed_ufo, 128);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, fw_mem_context_fw_addr, 136);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, server_common_context_id, 140);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, pid, 144);
+OFFSET_CHECK(struct rogue_fwif_fwcommoncontext, geom_oom_disabled, 148);
+SIZE_CHECK(struct rogue_fwif_fwcommoncontext, 152);
+
+OFFSET_CHECK(struct rogue_fwif_ccb_ctl, write_offset, 0);
+OFFSET_CHECK(struct rogue_fwif_ccb_ctl, read_offset, 4);
+OFFSET_CHECK(struct rogue_fwif_ccb_ctl, wrap_mask, 8);
+OFFSET_CHECK(struct rogue_fwif_ccb_ctl, cmd_size, 12);
+SIZE_CHECK(struct rogue_fwif_ccb_ctl, 16);
+
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, context_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, client_woff_update, 4);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, client_wrap_mask_update, 8);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, num_cleanup_ctl, 12);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, cleanup_ctl_fw_addr, 16);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_kick_data, work_est_cmd_header_offset, 28);
+SIZE_CHECK(struct rogue_fwif_kccb_cmd_kick_data, 32);
+
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_combined_geom_frag_kick_data, geom_cmd_kick_data, 0);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_combined_geom_frag_kick_data, frag_cmd_kick_data, 32);
+SIZE_CHECK(struct rogue_fwif_kccb_cmd_combined_geom_frag_kick_data, 64);
+
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_force_update_data, context_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd_force_update_data, ccb_fence_offset, 4);
+SIZE_CHECK(struct rogue_fwif_kccb_cmd_force_update_data, 8);
+
+OFFSET_CHECK(struct rogue_fwif_cleanup_request, cleanup_type, 0);
+OFFSET_CHECK(struct rogue_fwif_cleanup_request, cleanup_data, 4);
+SIZE_CHECK(struct rogue_fwif_cleanup_request, 8);
+
+OFFSET_CHECK(struct rogue_fwif_power_request, pow_type, 0);
+OFFSET_CHECK(struct rogue_fwif_power_request, power_req_data, 4);
+SIZE_CHECK(struct rogue_fwif_power_request, 8);
+
+OFFSET_CHECK(struct rogue_fwif_slcflushinvaldata, context_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_slcflushinvaldata, inval, 4);
+OFFSET_CHECK(struct rogue_fwif_slcflushinvaldata, dm_context, 8);
+OFFSET_CHECK(struct rogue_fwif_slcflushinvaldata, address, 16);
+OFFSET_CHECK(struct rogue_fwif_slcflushinvaldata, size, 24);
+SIZE_CHECK(struct rogue_fwif_slcflushinvaldata, 32);
+
+OFFSET_CHECK(struct rogue_fwif_hwperf_ctrl, opcode, 0);
+OFFSET_CHECK(struct rogue_fwif_hwperf_ctrl, mask, 8);
+SIZE_CHECK(struct rogue_fwif_hwperf_ctrl, 16);
+
+OFFSET_CHECK(struct rogue_fwif_hwperf_config_enable_blks, num_blocks, 0);
+OFFSET_CHECK(struct rogue_fwif_hwperf_config_enable_blks, block_configs_fw_addr, 4);
+SIZE_CHECK(struct rogue_fwif_hwperf_config_enable_blks, 8);
+
+OFFSET_CHECK(struct rogue_fwif_hwperf_config_da_blks, num_blocks, 0);
+OFFSET_CHECK(struct rogue_fwif_hwperf_config_da_blks, block_configs_fw_addr, 4);
+SIZE_CHECK(struct rogue_fwif_hwperf_config_da_blks, 8);
+
+OFFSET_CHECK(struct rogue_fwif_coreclkspeedchange_data, new_clock_speed, 0);
+SIZE_CHECK(struct rogue_fwif_coreclkspeedchange_data, 4);
+
+OFFSET_CHECK(struct rogue_fwif_hwperf_ctrl_blks, enable, 0);
+OFFSET_CHECK(struct rogue_fwif_hwperf_ctrl_blks, num_blocks, 4);
+OFFSET_CHECK(struct rogue_fwif_hwperf_ctrl_blks, block_ids, 8);
+SIZE_CHECK(struct rogue_fwif_hwperf_ctrl_blks, 40);
+
+OFFSET_CHECK(struct rogue_fwif_hwperf_select_custom_cntrs, custom_block, 0);
+OFFSET_CHECK(struct rogue_fwif_hwperf_select_custom_cntrs, num_counters, 2);
+OFFSET_CHECK(struct rogue_fwif_hwperf_select_custom_cntrs, custom_counter_ids_fw_addr, 4);
+SIZE_CHECK(struct rogue_fwif_hwperf_select_custom_cntrs, 8);
+
+OFFSET_CHECK(struct rogue_fwif_zsbuffer_backing_data, zs_buffer_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_zsbuffer_backing_data, done, 4);
+SIZE_CHECK(struct rogue_fwif_zsbuffer_backing_data, 8);
+
+OFFSET_CHECK(struct rogue_fwif_freelist_gs_data, freelist_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_freelist_gs_data, delta_pages, 4);
+OFFSET_CHECK(struct rogue_fwif_freelist_gs_data, new_pages, 8);
+OFFSET_CHECK(struct rogue_fwif_freelist_gs_data, ready_pages, 12);
+SIZE_CHECK(struct rogue_fwif_freelist_gs_data, 16);
+
+OFFSET_CHECK(struct rogue_fwif_freelists_reconstruction_data, freelist_count, 0);
+OFFSET_CHECK(struct rogue_fwif_freelists_reconstruction_data, freelist_ids, 4);
+SIZE_CHECK(struct rogue_fwif_freelists_reconstruction_data, 76);
+
+OFFSET_CHECK(struct rogue_fwif_write_offset_update_data, context_fw_addr, 0);
+SIZE_CHECK(struct rogue_fwif_write_offset_update_data, 8);
+
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd, cmd_type, 0);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd, kccb_flags, 4);
+OFFSET_CHECK(struct rogue_fwif_kccb_cmd, cmd_data, 8);
+SIZE_CHECK(struct rogue_fwif_kccb_cmd, 88);
+
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, server_common_context_id, 0);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, reset_reason, 4);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, dm, 8);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, reset_job_ref, 12);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, flags, 16);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, pc_address, 24);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, fault_address, 32);
+SIZE_CHECK(struct rogue_fwif_fwccb_cmd_context_reset_data, 40);
+
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd_fw_pagefault_data, fw_fault_addr, 0);
+SIZE_CHECK(struct rogue_fwif_fwccb_cmd_fw_pagefault_data, 8);
+
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd, cmd_type, 0);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd, fwccb_flags, 4);
+OFFSET_CHECK(struct rogue_fwif_fwccb_cmd, cmd_data, 8);
+SIZE_CHECK(struct rogue_fwif_fwccb_cmd, 88);
+
+OFFSET_CHECK(struct rogue_fwif_ccb_cmd_header, cmd_type, 0);
+OFFSET_CHECK(struct rogue_fwif_ccb_cmd_header, cmd_size, 4);
+OFFSET_CHECK(struct rogue_fwif_ccb_cmd_header, ext_job_ref, 8);
+OFFSET_CHECK(struct rogue_fwif_ccb_cmd_header, int_job_ref, 12);
+OFFSET_CHECK(struct rogue_fwif_ccb_cmd_header, work_est_kick_data, 16);
+SIZE_CHECK(struct rogue_fwif_ccb_cmd_header, 40);
+
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, active_pm_latency_ms, 0);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, runtime_cfg_flags, 4);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, active_pm_latency_persistant, 8);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, core_clock_speed, 12);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, default_dusts_num_init, 16);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, phr_mode, 20);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, hcs_deadline_ms, 24);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, wdg_period_us, 28);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, osid_priority, 32);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, hwperf_buf_fw_addr, 64);
+OFFSET_CHECK(struct rogue_fwif_runtime_cfg, padding, 68);
+SIZE_CHECK(struct rogue_fwif_runtime_cfg, 72);
+
+OFFSET_CHECK(struct rogue_fwif_connection_ctl, connection_fw_state, 0);
+OFFSET_CHECK(struct rogue_fwif_connection_ctl, connection_os_state, 4);
+OFFSET_CHECK(struct rogue_fwif_connection_ctl, alive_fw_token, 8);
+OFFSET_CHECK(struct rogue_fwif_connection_ctl, alive_os_token, 12);
+SIZE_CHECK(struct rogue_fwif_connection_ctl, 16);
+
+OFFSET_CHECK(struct rogue_fwif_compchecks_bvnc, layout_version, 0);
+OFFSET_CHECK(struct rogue_fwif_compchecks_bvnc, bvnc, 8);
+SIZE_CHECK(struct rogue_fwif_compchecks_bvnc, 16);
+
+OFFSET_CHECK(struct rogue_fwif_init_options, os_count_support, 0);
+SIZE_CHECK(struct rogue_fwif_init_options, 8);
+
+OFFSET_CHECK(struct rogue_fwif_compchecks, hw_bvnc, 0);
+OFFSET_CHECK(struct rogue_fwif_compchecks, fw_bvnc, 16);
+OFFSET_CHECK(struct rogue_fwif_compchecks, fw_processor_version, 32);
+OFFSET_CHECK(struct rogue_fwif_compchecks, ddk_version, 36);
+OFFSET_CHECK(struct rogue_fwif_compchecks, ddk_build, 40);
+OFFSET_CHECK(struct rogue_fwif_compchecks, build_options, 44);
+OFFSET_CHECK(struct rogue_fwif_compchecks, init_options, 48);
+OFFSET_CHECK(struct rogue_fwif_compchecks, updated, 56);
+SIZE_CHECK(struct rogue_fwif_compchecks, 64);
+
+OFFSET_CHECK(struct rogue_fwif_osinit, kernel_ccbctl_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_osinit, kernel_ccb_fw_addr, 4);
+OFFSET_CHECK(struct rogue_fwif_osinit, kernel_ccb_rtn_slots_fw_addr, 8);
+OFFSET_CHECK(struct rogue_fwif_osinit, firmware_ccbctl_fw_addr, 12);
+OFFSET_CHECK(struct rogue_fwif_osinit, firmware_ccb_fw_addr, 16);
+OFFSET_CHECK(struct rogue_fwif_osinit, work_est_firmware_ccbctl_fw_addr, 20);
+OFFSET_CHECK(struct rogue_fwif_osinit, work_est_firmware_ccb_fw_addr, 24);
+OFFSET_CHECK(struct rogue_fwif_osinit, rogue_fwif_hwr_info_buf_ctl_fw_addr, 28);
+OFFSET_CHECK(struct rogue_fwif_osinit, hwr_debug_dump_limit, 32);
+OFFSET_CHECK(struct rogue_fwif_osinit, fw_os_data_fw_addr, 36);
+OFFSET_CHECK(struct rogue_fwif_osinit, rogue_comp_checks, 40);
+SIZE_CHECK(struct rogue_fwif_osinit, 104);
+
+OFFSET_CHECK(struct rogue_fwif_sigbuf_ctl, buffer_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_sigbuf_ctl, left_size_in_regs, 4);
+SIZE_CHECK(struct rogue_fwif_sigbuf_ctl, 8);
+
+OFFSET_CHECK(struct pdvfs_opp, volt, 0);
+OFFSET_CHECK(struct pdvfs_opp, freq, 4);
+SIZE_CHECK(struct pdvfs_opp, 8);
+
+OFFSET_CHECK(struct rogue_fwif_pdvfs_opp, opp_values, 0);
+OFFSET_CHECK(struct rogue_fwif_pdvfs_opp, min_opp_point, 128);
+OFFSET_CHECK(struct rogue_fwif_pdvfs_opp, max_opp_point, 132);
+SIZE_CHECK(struct rogue_fwif_pdvfs_opp, 136);
+
+OFFSET_CHECK(struct rogue_fwif_counter_dump_ctl, buffer_fw_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_counter_dump_ctl, size_in_dwords, 4);
+SIZE_CHECK(struct rogue_fwif_counter_dump_ctl, 8);
+
+OFFSET_CHECK(struct rogue_hwperf_bvnc, bvnc_string, 0);
+OFFSET_CHECK(struct rogue_hwperf_bvnc, bvnc_km_feature_flags, 24);
+OFFSET_CHECK(struct rogue_hwperf_bvnc, num_bvnc_blocks, 28);
+OFFSET_CHECK(struct rogue_hwperf_bvnc, bvnc_gpu_cores, 30);
+OFFSET_CHECK(struct rogue_hwperf_bvnc, bvnc_blocks, 32);
+SIZE_CHECK(struct rogue_hwperf_bvnc, 160);
+
+OFFSET_CHECK(struct rogue_fwif_sysinit, fault_phys_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_sysinit, pds_exec_base, 8);
+OFFSET_CHECK(struct rogue_fwif_sysinit, usc_exec_base, 16);
+OFFSET_CHECK(struct rogue_fwif_sysinit, fbcdc_state_table_base, 24);
+OFFSET_CHECK(struct rogue_fwif_sysinit, fbcdc_large_state_table_base, 32);
+OFFSET_CHECK(struct rogue_fwif_sysinit, texture_heap_base, 40);
+OFFSET_CHECK(struct rogue_fwif_sysinit, hw_perf_filter, 48);
+OFFSET_CHECK(struct rogue_fwif_sysinit, slc3_fence_dev_addr, 56);
+OFFSET_CHECK(struct rogue_fwif_sysinit, tpu_trilinear_frac_mask, 64);
+OFFSET_CHECK(struct rogue_fwif_sysinit, sigbuf_ctl, 80);
+OFFSET_CHECK(struct rogue_fwif_sysinit, pdvfs_opp_info, 152);
+OFFSET_CHECK(struct rogue_fwif_sysinit, coremem_data_store, 288);
+OFFSET_CHECK(struct rogue_fwif_sysinit, counter_dump_ctl, 304);
+OFFSET_CHECK(struct rogue_fwif_sysinit, filter_flags, 312);
+OFFSET_CHECK(struct rogue_fwif_sysinit, runtime_cfg_fw_addr, 316);
+OFFSET_CHECK(struct rogue_fwif_sysinit, trace_buf_ctl_fw_addr, 320);
+OFFSET_CHECK(struct rogue_fwif_sysinit, fw_sys_data_fw_addr, 324);
+OFFSET_CHECK(struct rogue_fwif_sysinit, gpu_util_fw_cb_ctl_fw_addr, 328);
+OFFSET_CHECK(struct rogue_fwif_sysinit, reg_cfg_fw_addr, 332);
+OFFSET_CHECK(struct rogue_fwif_sysinit, hwperf_ctl_fw_addr, 336);
+OFFSET_CHECK(struct rogue_fwif_sysinit, align_checks, 340);
+OFFSET_CHECK(struct rogue_fwif_sysinit, initial_core_clock_speed, 344);
+OFFSET_CHECK(struct rogue_fwif_sysinit, active_pm_latency_ms, 348);
+OFFSET_CHECK(struct rogue_fwif_sysinit, firmware_started, 352);
+OFFSET_CHECK(struct rogue_fwif_sysinit, marker_val, 356);
+OFFSET_CHECK(struct rogue_fwif_sysinit, firmware_started_timestamp, 360);
+OFFSET_CHECK(struct rogue_fwif_sysinit, jones_disable_mask, 364);
+OFFSET_CHECK(struct rogue_fwif_sysinit, firmware_perf, 368);
+OFFSET_CHECK(struct rogue_fwif_sysinit, core_clock_rate_fw_addr, 372);
+OFFSET_CHECK(struct rogue_fwif_sysinit, gpio_validation_mode, 376);
+OFFSET_CHECK(struct rogue_fwif_sysinit, bvnc_km_feature_flags, 380);
+OFFSET_CHECK(struct rogue_fwif_sysinit, tfbc_compression_control, 540);
+SIZE_CHECK(struct rogue_fwif_sysinit, 544);
+
+OFFSET_CHECK(struct rogue_fwif_gpu_util_fwcb, time_corr, 0);
+OFFSET_CHECK(struct rogue_fwif_gpu_util_fwcb, time_corr_seq_count, 10240);
+OFFSET_CHECK(struct rogue_fwif_gpu_util_fwcb, gpu_util_flags, 10244);
+OFFSET_CHECK(struct rogue_fwif_gpu_util_fwcb, last_word, 10248);
+OFFSET_CHECK(struct rogue_fwif_gpu_util_fwcb, stats_counters, 10256);
+SIZE_CHECK(struct rogue_fwif_gpu_util_fwcb, 10280);
+
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, render_target_index, 0);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, current_render_target, 4);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, active_render_targets, 8);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, cumul_active_render_targets, 12);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, valid_render_targets_fw_addr, 16);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, rta_num_partial_renders_fw_addr, 20);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, max_rts, 24);
+OFFSET_CHECK(struct rogue_fwif_rta_ctl, rta_ctl_flags, 28);
+SIZE_CHECK(struct rogue_fwif_rta_ctl, 32);
+
+OFFSET_CHECK(struct rogue_fwif_freelist, freelist_dev_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_freelist, current_dev_addr, 8);
+OFFSET_CHECK(struct rogue_fwif_freelist, current_stack_top, 16);
+OFFSET_CHECK(struct rogue_fwif_freelist, max_pages, 20);
+OFFSET_CHECK(struct rogue_fwif_freelist, grow_pages, 24);
+OFFSET_CHECK(struct rogue_fwif_freelist, current_pages, 28);
+OFFSET_CHECK(struct rogue_fwif_freelist, allocated_page_count, 32);
+OFFSET_CHECK(struct rogue_fwif_freelist, allocated_mmu_page_count, 36);
+OFFSET_CHECK(struct rogue_fwif_freelist, freelist_id, 40);
+OFFSET_CHECK(struct rogue_fwif_freelist, grow_pending, 44);
+OFFSET_CHECK(struct rogue_fwif_freelist, ready_pages, 48);
+OFFSET_CHECK(struct rogue_fwif_freelist, freelist_flags, 52);
+OFFSET_CHECK(struct rogue_fwif_freelist, pm_global_pb, 56);
+SIZE_CHECK(struct rogue_fwif_freelist, 64);
+
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, geom_caches_need_zeroing, 0);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, screen_pixel_max, 4);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, multi_sample_ctl, 8);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, flipped_multi_sample_ctl, 16);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, tpc_stride, 24);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, tpc_size, 28);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, te_screen, 32);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, mtile_stride, 36);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, teaa, 40);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, te_mtile1, 44);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, te_mtile2, 48);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_lower_x, 52);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_lower_y, 56);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_upper_x, 60);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_upper_y, 64);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_scale_x, 68);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_merge_scale_y, 72);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, rgn_header_size, 76);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata_common, isp_mtile_size, 80);
+SIZE_CHECK(struct rogue_fwif_hwrtdata_common, 88);
+
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, pm_mlist_dev_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, vce_cat_base, 8);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, vce_last_cat_base, 40);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, te_cat_base, 72);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, te_last_cat_base, 104);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, alist_cat_base, 136);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, alist_last_cat_base, 144);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, pm_alist_stack_pointer, 152);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, pm_mlist_stack_pointer, 160);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, hwrt_data_common_fw_addr, 164);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, hwrt_data_flags, 168);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, state, 172);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, freelists_fw_addr, 176);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, freelist_hwr_snapshot, 188);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, vheap_table_dev_addr, 200);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, rta_ctl, 208);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, tail_ptrs_dev_addr, 240);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, macrotile_array_dev_addr, 248);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, rgn_header_dev_addr, 256);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, rtc_dev_addr, 264);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, owner_geom_not_used_by_host, 272);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, geom_caches_need_zeroing, 276);
+OFFSET_CHECK(struct rogue_fwif_hwrtdata, cleanup_state, 320);
+SIZE_CHECK(struct rogue_fwif_hwrtdata, 384);
+
+OFFSET_CHECK(struct rogue_fwif_sync_checkpoint, state, 0);
+OFFSET_CHECK(struct rogue_fwif_sync_checkpoint, fw_ref_count, 4);
+SIZE_CHECK(struct rogue_fwif_sync_checkpoint, 8);
+
+#endif /* PVR_ROGUE_FWIF_CHECK_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_client.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_client.h
new file mode 100644
index 000000000000..8bf501371469
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_client.h
@@ -0,0 +1,373 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_CLIENT_H
+#define PVR_ROGUE_FWIF_CLIENT_H
+
+#include <linux/bits.h>
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+#include <linux/types.h>
+
+#include "pvr_rogue_fwif_shared.h"
+
+/*
+ * Page size used for Parameter Management.
+ */
+#define ROGUE_PM_PAGE_SIZE SZ_4K
+
+/*
+ * Minimum/Maximum PB size.
+ *
+ * Base page size is dependent on core:
+ *   S6/S6XT/S7               = 50 pages
+ *   S8XE                     = 40 pages
+ *   S8XE with BRN66011 fixed = 25 pages
+ *
+ * Minimum PB = Base Pages + (NUM_TE_PIPES-1)*16K + (NUM_VCE_PIPES-1)*64K +
+ *              IF_PM_PREALLOC(NUM_TE_PIPES*16K + NUM_VCE_PIPES*16K)
+ *
+ * Maximum PB size must ensure that no PM address space can be fully used,
+ * because if the full address space was used it would wrap and corrupt itself.
+ * Since there are two freelists (local is always minimum sized) this can be
+ * described as following three conditions being met:
+ *
+ *   (Minimum PB + Maximum PB)  <  ALIST PM address space size (16GB)
+ *   (Minimum PB + Maximum PB)  <  TE PM address space size (16GB) / NUM_TE_PIPES
+ *   (Minimum PB + Maximum PB)  <  VCE PM address space size (16GB) / NUM_VCE_PIPES
+ *
+ * Since the max of NUM_TE_PIPES and NUM_VCE_PIPES is 4, we have a hard limit
+ * of 4GB minus the Minimum PB. For convenience we take the smaller power-of-2
+ * value of 2GB. This is far more than any current applications use.
+ */
+#define ROGUE_PM_MAX_FREELIST_SIZE SZ_2G
+
+/*
+ * Flags supported by the geometry DM command i.e. &struct rogue_fwif_cmd_geom.
+ */
+
+#define ROGUE_GEOM_FLAGS_FIRSTKICK BIT_MASK(0)
+#define ROGUE_GEOM_FLAGS_LASTKICK BIT_MASK(1)
+/* Use single core in a multi core setup. */
+#define ROGUE_GEOM_FLAGS_SINGLE_CORE BIT_MASK(3)
+
+/*
+ * Flags supported by the fragment DM command i.e. &struct rogue_fwif_cmd_frag.
+ */
+
+/* Use single core in a multi core setup. */
+#define ROGUE_FRAG_FLAGS_SINGLE_CORE BIT_MASK(3)
+/* Indicates whether this render produces visibility results. */
+#define ROGUE_FRAG_FLAGS_GET_VIS_RESULTS BIT_MASK(5)
+/* Indicates whether a depth buffer is present. */
+#define ROGUE_FRAG_FLAGS_DEPTHBUFFER BIT_MASK(7)
+/* Indicates whether a stencil buffer is present. */
+#define ROGUE_FRAG_FLAGS_STENCILBUFFER BIT_MASK(8)
+/* Disable pixel merging for this render. */
+#define ROGUE_FRAG_FLAGS_DISABLE_PIXELMERGE BIT_MASK(15)
+/* Indicates whether a scratch buffer is present. */
+#define ROGUE_FRAG_FLAGS_SCRATCHBUFFER BIT_MASK(19)
+/* Disallow compute overlapped with this render. */
+#define ROGUE_FRAG_FLAGS_PREVENT_CDM_OVERLAP BIT_MASK(26)
+
+/*
+ * Flags supported by the compute DM command i.e. &struct rogue_fwif_cmd_compute.
+ */
+
+#define ROGUE_COMPUTE_FLAG_PREVENT_ALL_OVERLAP BIT_MASK(2)
+/*!< Use single core in a multi core setup. */
+#define ROGUE_COMPUTE_FLAG_SINGLE_CORE BIT_MASK(5)
+
+/*
+ * Flags supported by the transfer DM command i.e. &struct rogue_fwif_cmd_transfer.
+ */
+
+/*!< Use single core in a multi core setup. */
+#define ROGUE_TRANSFER_FLAGS_SINGLE_CORE BIT_MASK(1)
+
+/*
+ ************************************************
+ * Parameter/HWRTData control structures.
+ ************************************************
+ */
+
+/*
+ * Configuration registers which need to be loaded by the firmware before a geometry
+ * job can be started.
+ */
+struct rogue_fwif_geom_regs {
+	u64 vdm_ctrl_stream_base;
+	u64 tpu_border_colour_table;
+
+	/* Only used when feature VDM_DRAWINDIRECT present. */
+	u64 vdm_draw_indirect0;
+	/* Only used when feature VDM_DRAWINDIRECT present. */
+	u32 vdm_draw_indirect1;
+
+	u32 ppp_ctrl;
+	u32 te_psg;
+	/* Only used when BRN 49927 present. */
+	u32 tpu;
+
+	u32 vdm_context_resume_task0_size;
+	/* Only used when feature VDM_OBJECT_LEVEL_LLS present. */
+	u32 vdm_context_resume_task3_size;
+
+	/* Only used when BRN 56279 or BRN 67381 present. */
+	u32 pds_ctrl;
+
+	u32 view_idx;
+
+	/* Only used when feature TESSELLATION present */
+	u32 pds_coeff_free_prog;
+
+	u32 padding;
+};
+
+/* Only used when BRN 44455 or BRN 63027 present. */
+struct rogue_fwif_dummy_rgnhdr_init_geom_regs {
+	u64 te_psgregion_addr;
+};
+
+/*
+ * Represents a geometry command that can be used to tile a whole scene's objects as
+ * per TA behavior.
+ */
+struct rogue_fwif_cmd_geom {
+	/*
+	 * rogue_fwif_cmd_geom_frag_shared field must always be at the beginning of the
+	 * struct.
+	 *
+	 * The command struct (rogue_fwif_cmd_geom) is shared between Client and
+	 * Firmware. Kernel is unable to perform read/write operations on the
+	 * command struct, the SHARED region is the only exception from this rule.
+	 * This region must be the first member so that Kernel can easily access it.
+	 * For more info, see rogue_fwif_cmd_geom_frag_shared definition.
+	 */
+	struct rogue_fwif_cmd_geom_frag_shared cmd_shared;
+
+	struct rogue_fwif_geom_regs regs __aligned(8);
+	u32 flags __aligned(8);
+
+	/*
+	 * Holds the geometry/fragment fence value to allow the fragment partial render command
+	 * to go through.
+	 */
+	struct rogue_fwif_ufo partial_render_geom_frag_fence;
+
+	/* Only used when BRN 44455 or BRN 63027 present. */
+	struct rogue_fwif_dummy_rgnhdr_init_geom_regs dummy_rgnhdr_init_geom_regs __aligned(8);
+
+	/* Only used when BRN 61484 or BRN 66333 present. */
+	u32 brn61484_66333_live_rt;
+
+	u32 padding;
+};
+
+/*
+ * Configuration registers which need to be loaded by the firmware before ISP
+ * can be started.
+ */
+struct rogue_fwif_frag_regs {
+	u32 usc_pixel_output_ctrl;
+
+#define ROGUE_MAXIMUM_OUTPUT_REGISTERS_PER_PIXEL 8U
+	u32 usc_clear_register[ROGUE_MAXIMUM_OUTPUT_REGISTERS_PER_PIXEL];
+
+	u32 isp_bgobjdepth;
+	u32 isp_bgobjvals;
+	u32 isp_aa;
+	/* Only used when feature S7_TOP_INFRASTRUCTURE present. */
+	u32 isp_xtp_pipe_enable;
+
+	u32 isp_ctl;
+
+	/* Only used when BRN 49927 present. */
+	u32 tpu;
+
+	u32 event_pixel_pds_info;
+
+	/* Only used when feature CLUSTER_GROUPING present. */
+	u32 pixel_phantom;
+
+	u32 view_idx;
+
+	u32 event_pixel_pds_data;
+
+	/* Only used when BRN 65101 present. */
+	u32 brn65101_event_pixel_pds_data;
+
+	/* Only used when feature GPU_MULTICORE_SUPPORT or BRN 47217 present. */
+	u32 isp_oclqry_stride;
+
+	/* Only used when feature ZLS_SUBTILE present. */
+	u32 isp_zls_pixels;
+
+	/* Only used when feature ISP_ZLS_D24_S8_PACKING_OGL_MODE present. */
+	u32 rgx_cr_blackpearl_fix;
+
+	/* All values below the ALIGN(8) must be 64 bit. */
+	aligned_u64 isp_scissor_base;
+	u64 isp_dbias_base;
+	u64 isp_oclqry_base;
+	u64 isp_zlsctl;
+	u64 isp_zload_store_base;
+	u64 isp_stencil_load_store_base;
+
+	/*
+	 * Only used when feature FBCDC_ALGORITHM present and value < 3 or feature
+	 * FB_CDC_V4 present. Additionally, BRNs 48754, 60227, 72310 and 72311 must
+	 * not be present.
+	 */
+	u64 fb_cdc_zls;
+
+#define ROGUE_PBE_WORDS_REQUIRED_FOR_RENDERS 3U
+	u64 pbe_word[8U][ROGUE_PBE_WORDS_REQUIRED_FOR_RENDERS];
+	u64 tpu_border_colour_table;
+	u64 pds_bgnd[3U];
+
+	/* Only used when BRN 65101 present. */
+	u64 pds_bgnd_brn65101[3U];
+
+	u64 pds_pr_bgnd[3U];
+
+	/* Only used when BRN 62850 or 62865 present. */
+	u64 isp_dummy_stencil_store_base;
+
+	/* Only used when BRN 66193 present. */
+	u64 isp_dummy_depth_store_base;
+
+	/* Only used when BRN 67182 present. */
+	u32 rgnhdr_single_rt_size;
+	/* Only used when BRN 67182 present. */
+	u32 rgnhdr_scratch_offset;
+};
+
+struct rogue_fwif_cmd_frag {
+	struct rogue_fwif_cmd_geom_frag_shared cmd_shared __aligned(8);
+
+	struct rogue_fwif_frag_regs regs __aligned(8);
+	/* command control flags. */
+	u32 flags;
+	/* Stride IN BYTES for Z-Buffer in case of RTAs. */
+	u32 zls_stride;
+	/* Stride IN BYTES for S-Buffer in case of RTAs. */
+	u32 sls_stride;
+
+	/* Only used if feature GPU_MULTICORE_SUPPORT present. */
+	u32 execute_count;
+};
+
+/*
+ * Configuration registers which need to be loaded by the firmware before CDM
+ * can be started.
+ */
+struct rogue_fwif_compute_regs {
+	u64 tpu_border_colour_table;
+
+	/* Only used when feature CDM_USER_MODE_QUEUE present. */
+	u64 cdm_cb_queue;
+
+	/* Only used when feature CDM_USER_MODE_QUEUE present. */
+	u64 cdm_cb_base;
+	/* Only used when feature CDM_USER_MODE_QUEUE present. */
+	u64 cdm_cb;
+
+	/* Only used when feature CDM_USER_MODE_QUEUE is not present. */
+	u64 cdm_ctrl_stream_base;
+
+	u64 cdm_context_state_base_addr;
+
+	/* Only used when BRN 49927 is present. */
+	u32 tpu;
+	u32 cdm_resume_pds1;
+
+	/* Only used when feature COMPUTE_MORTON_CAPABLE present. */
+	u32 cdm_item;
+
+	/* Only used when feature CLUSTER_GROUPING present. */
+	u32 compute_cluster;
+
+	/* Only used when feature TPU_DM_GLOBAL_REGISTERS present. */
+	u32 tpu_tag_cdm_ctrl;
+
+	u32 padding;
+};
+
+struct rogue_fwif_cmd_compute {
+	/* Common command attributes */
+	struct rogue_fwif_cmd_common common __aligned(8);
+
+	/* CDM registers */
+	struct rogue_fwif_compute_regs regs;
+
+	/* Control flags */
+	u32 flags __aligned(8);
+
+	/* Only used when feature UNIFIED_STORE_VIRTUAL_PARTITIONING present. */
+	u32 num_temp_regions;
+
+	/* Only used when feature CDM_USER_MODE_QUEUE present. */
+	u32 stream_start_offset;
+
+	/* Only used when feature GPU_MULTICORE_SUPPORT present. */
+	u32 execute_count;
+};
+
+struct rogue_fwif_transfer_regs {
+	/*
+	 * All 32 bit values should be added in the top section. This then requires only a
+	 * single RGXFW_ALIGN to align all the 64 bit values in the second section.
+	 */
+	u32 isp_bgobjvals;
+
+	u32 usc_pixel_output_ctrl;
+	u32 usc_clear_register0;
+	u32 usc_clear_register1;
+	u32 usc_clear_register2;
+	u32 usc_clear_register3;
+
+	u32 isp_mtile_size;
+	u32 isp_render_origin;
+	u32 isp_ctl;
+
+	/* Only used when feature S7_TOP_INFRASTRUCTURE present. */
+	u32 isp_xtp_pipe_enable;
+	u32 isp_aa;
+
+	u32 event_pixel_pds_info;
+
+	u32 event_pixel_pds_code;
+	u32 event_pixel_pds_data;
+
+	u32 isp_render;
+	u32 isp_rgn;
+
+	/* Only used when feature GPU_MULTICORE_SUPPORT present. */
+	u32 frag_screen;
+
+	/* All values below the aligned_u64 must be 64 bit. */
+	aligned_u64 pds_bgnd0_base;
+	u64 pds_bgnd1_base;
+	u64 pds_bgnd3_sizeinfo;
+
+	u64 isp_mtile_base;
+#define ROGUE_PBE_WORDS_REQUIRED_FOR_TQS 3
+	/* TQ_MAX_RENDER_TARGETS * PBE_STATE_SIZE */
+	u64 pbe_wordx_mrty[3U * ROGUE_PBE_WORDS_REQUIRED_FOR_TQS];
+};
+
+struct rogue_fwif_cmd_transfer {
+	/* Common command attributes */
+	struct rogue_fwif_cmd_common common __aligned(8);
+
+	struct rogue_fwif_transfer_regs regs __aligned(8);
+
+	u32 flags;
+
+	u32 padding;
+};
+
+#include "pvr_rogue_fwif_client_check.h"
+
+#endif /* PVR_ROGUE_FWIF_CLIENT_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_client_check.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_client_check.h
new file mode 100644
index 000000000000..9fd1c5b826a5
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_client_check.h
@@ -0,0 +1,133 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_CLIENT_CHECK_H
+#define PVR_ROGUE_FWIF_CLIENT_CHECK_H
+
+#include <linux/build_bug.h>
+
+#define OFFSET_CHECK(type, member, offset) \
+	static_assert(offsetof(type, member) == (offset), \
+		      "offsetof(" #type ", " #member ") incorrect")
+
+#define SIZE_CHECK(type, size) \
+	static_assert(sizeof(type) == (size), #type " is incorrect size")
+
+OFFSET_CHECK(struct rogue_fwif_geom_regs, vdm_ctrl_stream_base, 0);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, tpu_border_colour_table, 8);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, vdm_draw_indirect0, 16);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, vdm_draw_indirect1, 24);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, ppp_ctrl, 28);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, te_psg, 32);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, tpu, 36);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, vdm_context_resume_task0_size, 40);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, vdm_context_resume_task3_size, 44);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, pds_ctrl, 48);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, view_idx, 52);
+OFFSET_CHECK(struct rogue_fwif_geom_regs, pds_coeff_free_prog, 56);
+SIZE_CHECK(struct rogue_fwif_geom_regs, 64);
+
+OFFSET_CHECK(struct rogue_fwif_dummy_rgnhdr_init_geom_regs, te_psgregion_addr, 0);
+SIZE_CHECK(struct rogue_fwif_dummy_rgnhdr_init_geom_regs, 8);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, cmd_shared, 0);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, regs, 16);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, flags, 80);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, partial_render_geom_frag_fence, 84);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, dummy_rgnhdr_init_geom_regs, 96);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom, brn61484_66333_live_rt, 104);
+SIZE_CHECK(struct rogue_fwif_cmd_geom, 112);
+
+OFFSET_CHECK(struct rogue_fwif_frag_regs, usc_pixel_output_ctrl, 0);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, usc_clear_register, 4);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_bgobjdepth, 36);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_bgobjvals, 40);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_aa, 44);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_xtp_pipe_enable, 48);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_ctl, 52);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, tpu, 56);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, event_pixel_pds_info, 60);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, pixel_phantom, 64);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, view_idx, 68);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, event_pixel_pds_data, 72);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, brn65101_event_pixel_pds_data, 76);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_oclqry_stride, 80);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_zls_pixels, 84);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, rgx_cr_blackpearl_fix, 88);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_scissor_base, 96);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_dbias_base, 104);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_oclqry_base, 112);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_zlsctl, 120);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_zload_store_base, 128);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_stencil_load_store_base, 136);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, fb_cdc_zls, 144);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, pbe_word, 152);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, tpu_border_colour_table, 344);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, pds_bgnd, 352);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, pds_bgnd_brn65101, 376);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, pds_pr_bgnd, 400);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_dummy_stencil_store_base, 424);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, isp_dummy_depth_store_base, 432);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, rgnhdr_single_rt_size, 440);
+OFFSET_CHECK(struct rogue_fwif_frag_regs, rgnhdr_scratch_offset, 444);
+SIZE_CHECK(struct rogue_fwif_frag_regs, 448);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, cmd_shared, 0);
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, regs, 16);
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, flags, 464);
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, zls_stride, 468);
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, sls_stride, 472);
+OFFSET_CHECK(struct rogue_fwif_cmd_frag, execute_count, 476);
+SIZE_CHECK(struct rogue_fwif_cmd_frag, 480);
+
+OFFSET_CHECK(struct rogue_fwif_compute_regs, tpu_border_colour_table, 0);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_cb_queue, 8);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_cb_base, 16);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_cb, 24);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_ctrl_stream_base, 32);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_context_state_base_addr, 40);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, tpu, 48);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_resume_pds1, 52);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, cdm_item, 56);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, compute_cluster, 60);
+OFFSET_CHECK(struct rogue_fwif_compute_regs, tpu_tag_cdm_ctrl, 64);
+SIZE_CHECK(struct rogue_fwif_compute_regs, 72);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, common, 0);
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, regs, 8);
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, flags, 80);
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, num_temp_regions, 84);
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, stream_start_offset, 88);
+OFFSET_CHECK(struct rogue_fwif_cmd_compute, execute_count, 92);
+SIZE_CHECK(struct rogue_fwif_cmd_compute, 96);
+
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_bgobjvals, 0);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, usc_pixel_output_ctrl, 4);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, usc_clear_register0, 8);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, usc_clear_register1, 12);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, usc_clear_register2, 16);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, usc_clear_register3, 20);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_mtile_size, 24);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_render_origin, 28);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_ctl, 32);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_xtp_pipe_enable, 36);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_aa, 40);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, event_pixel_pds_info, 44);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, event_pixel_pds_code, 48);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, event_pixel_pds_data, 52);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_render, 56);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_rgn, 60);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, frag_screen, 64);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, pds_bgnd0_base, 72);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, pds_bgnd1_base, 80);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, pds_bgnd3_sizeinfo, 88);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, isp_mtile_base, 96);
+OFFSET_CHECK(struct rogue_fwif_transfer_regs, pbe_wordx_mrty, 104);
+SIZE_CHECK(struct rogue_fwif_transfer_regs, 176);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_transfer, common, 0);
+OFFSET_CHECK(struct rogue_fwif_cmd_transfer, regs, 8);
+OFFSET_CHECK(struct rogue_fwif_cmd_transfer, flags, 184);
+SIZE_CHECK(struct rogue_fwif_cmd_transfer, 192);
+
+#endif /* PVR_ROGUE_FWIF_CLIENT_CHECK_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_common.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_common.h
new file mode 100644
index 000000000000..18b69500ba96
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_common.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_COMMON_H
+#define PVR_ROGUE_FWIF_COMMON_H
+
+#include <linux/build_bug.h>
+
+/*
+ * This macro represents a mask of LSBs that must be zero on data structure
+ * sizes and offsets to ensure they are 8-byte granular on types shared between
+ * the FW and host driver.
+ */
+#define PVR_FW_ALIGNMENT_LSB 7U
+
+/* Macro to test structure size alignment. */
+#define PVR_FW_STRUCT_SIZE_ASSERT(_a)                            \
+	static_assert((sizeof(_a) & PVR_FW_ALIGNMENT_LSB) == 0U, \
+		      "Size of " #_a " is not properly aligned")
+
+/* The master definition for data masters known to the firmware. */
+
+#define PVR_FWIF_DM_GP (0)
+/* Either TDM or 2D DM is present. */
+/* When the 'tla' feature is present in the hw (as per @pvr_device_features). */
+#define PVR_FWIF_DM_2D (1)
+/*
+ * When the 'fastrender_dm' feature is present in the hw (as per
+ * @pvr_device_features).
+ */
+#define PVR_FWIF_DM_TDM (1)
+
+#define PVR_FWIF_DM_GEOM (2)
+#define PVR_FWIF_DM_FRAG (3)
+#define PVR_FWIF_DM_CDM (4)
+#define PVR_FWIF_DM_RAY (5)
+#define PVR_FWIF_DM_GEOM2 (6)
+#define PVR_FWIF_DM_GEOM3 (7)
+#define PVR_FWIF_DM_GEOM4 (8)
+
+#define PVR_FWIF_DM_LAST PVR_FWIF_DM_GEOM4
+
+/* Maximum number of DM in use: GP, 2D/TDM, GEOM, 3D, CDM, RAY, GEOM2, GEOM3, GEOM4 */
+#define PVR_FWIF_DM_MAX (PVR_FWIF_DM_LAST + 1U)
+
+/* GPU Utilisation states */
+#define PVR_FWIF_GPU_UTIL_STATE_IDLE 0U
+#define PVR_FWIF_GPU_UTIL_STATE_ACTIVE 1U
+#define PVR_FWIF_GPU_UTIL_STATE_BLOCKED 2U
+#define PVR_FWIF_GPU_UTIL_STATE_NUM 3U
+#define PVR_FWIF_GPU_UTIL_STATE_MASK 0x3ULL
+
+/*
+ * Maximum amount of register writes that can be done by the register
+ * programmer (FW or META DMA). This is not a HW limitation, it is only
+ * a protection against malformed inputs to the register programmer.
+ */
+#define PVR_MAX_NUM_REGISTER_PROGRAMMER_WRITES 128U
+
+#endif /* PVR_ROGUE_FWIF_COMMON_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_dev_info.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_dev_info.h
new file mode 100644
index 000000000000..0a1020790e1e
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_dev_info.h
@@ -0,0 +1,113 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef __PVR_ROGUE_FWIF_DEV_INFO_H__
+#define __PVR_ROGUE_FWIF_DEV_INFO_H__
+
+enum {
+	PVR_FW_HAS_BRN_44079 = 0,
+	PVR_FW_HAS_BRN_47217,
+	PVR_FW_HAS_BRN_48492,
+	PVR_FW_HAS_BRN_48545,
+	PVR_FW_HAS_BRN_49927,
+	PVR_FW_HAS_BRN_50767,
+	PVR_FW_HAS_BRN_51764,
+	PVR_FW_HAS_BRN_62269,
+	PVR_FW_HAS_BRN_63142,
+	PVR_FW_HAS_BRN_63553,
+	PVR_FW_HAS_BRN_66011,
+	PVR_FW_HAS_BRN_71242,
+
+	PVR_FW_HAS_BRN_MAX
+};
+
+enum {
+	PVR_FW_HAS_ERN_35421 = 0,
+	PVR_FW_HAS_ERN_38020,
+	PVR_FW_HAS_ERN_38748,
+	PVR_FW_HAS_ERN_42064,
+	PVR_FW_HAS_ERN_42290,
+	PVR_FW_HAS_ERN_42606,
+	PVR_FW_HAS_ERN_47025,
+	PVR_FW_HAS_ERN_57596,
+
+	PVR_FW_HAS_ERN_MAX
+};
+
+enum {
+	PVR_FW_HAS_FEATURE_AXI_ACELITE = 0,
+	PVR_FW_HAS_FEATURE_CDM_CONTROL_STREAM_FORMAT,
+	PVR_FW_HAS_FEATURE_CLUSTER_GROUPING,
+	PVR_FW_HAS_FEATURE_COMMON_STORE_SIZE_IN_DWORDS,
+	PVR_FW_HAS_FEATURE_COMPUTE,
+	PVR_FW_HAS_FEATURE_COMPUTE_MORTON_CAPABLE,
+	PVR_FW_HAS_FEATURE_COMPUTE_OVERLAP,
+	PVR_FW_HAS_FEATURE_COREID_PER_OS,
+	PVR_FW_HAS_FEATURE_DYNAMIC_DUST_POWER,
+	PVR_FW_HAS_FEATURE_ECC_RAMS,
+	PVR_FW_HAS_FEATURE_FBCDC,
+	PVR_FW_HAS_FEATURE_FBCDC_ALGORITHM,
+	PVR_FW_HAS_FEATURE_FBCDC_ARCHITECTURE,
+	PVR_FW_HAS_FEATURE_FBC_MAX_DEFAULT_DESCRIPTORS,
+	PVR_FW_HAS_FEATURE_FBC_MAX_LARGE_DESCRIPTORS,
+	PVR_FW_HAS_FEATURE_FB_CDC_V4,
+	PVR_FW_HAS_FEATURE_GPU_MULTICORE_SUPPORT,
+	PVR_FW_HAS_FEATURE_GPU_VIRTUALISATION,
+	PVR_FW_HAS_FEATURE_GS_RTA_SUPPORT,
+	PVR_FW_HAS_FEATURE_IRQ_PER_OS,
+	PVR_FW_HAS_FEATURE_ISP_MAX_TILES_IN_FLIGHT,
+	PVR_FW_HAS_FEATURE_ISP_SAMPLES_PER_PIXEL,
+	PVR_FW_HAS_FEATURE_ISP_ZLS_D24_S8_PACKING_OGL_MODE,
+	PVR_FW_HAS_FEATURE_LAYOUT_MARS,
+	PVR_FW_HAS_FEATURE_MAX_PARTITIONS,
+	PVR_FW_HAS_FEATURE_META,
+	PVR_FW_HAS_FEATURE_META_COREMEM_SIZE,
+	PVR_FW_HAS_FEATURE_MIPS,
+	PVR_FW_HAS_FEATURE_NUM_CLUSTERS,
+	PVR_FW_HAS_FEATURE_NUM_ISP_IPP_PIPES,
+	PVR_FW_HAS_FEATURE_NUM_OSIDS,
+	PVR_FW_HAS_FEATURE_NUM_RASTER_PIPES,
+	PVR_FW_HAS_FEATURE_PBE2_IN_XE,
+	PVR_FW_HAS_FEATURE_PBVNC_COREID_REG,
+	PVR_FW_HAS_FEATURE_PERFBUS,
+	PVR_FW_HAS_FEATURE_PERF_COUNTER_BATCH,
+	PVR_FW_HAS_FEATURE_PHYS_BUS_WIDTH,
+	PVR_FW_HAS_FEATURE_RISCV_FW_PROCESSOR,
+	PVR_FW_HAS_FEATURE_ROGUEXE,
+	PVR_FW_HAS_FEATURE_S7_TOP_INFRASTRUCTURE,
+	PVR_FW_HAS_FEATURE_SIMPLE_INTERNAL_PARAMETER_FORMAT,
+	PVR_FW_HAS_FEATURE_SIMPLE_INTERNAL_PARAMETER_FORMAT_V2,
+	PVR_FW_HAS_FEATURE_SIMPLE_PARAMETER_FORMAT_VERSION,
+	PVR_FW_HAS_FEATURE_SLC_BANKS,
+	PVR_FW_HAS_FEATURE_SLC_CACHE_LINE_SIZE_BITS,
+	PVR_FW_HAS_FEATURE_SLC_SIZE_CONFIGURABLE,
+	PVR_FW_HAS_FEATURE_SLC_SIZE_IN_KILOBYTES,
+	PVR_FW_HAS_FEATURE_SOC_TIMER,
+	PVR_FW_HAS_FEATURE_SYS_BUS_SECURE_RESET,
+	PVR_FW_HAS_FEATURE_TESSELLATION,
+	PVR_FW_HAS_FEATURE_TILE_REGION_PROTECTION,
+	PVR_FW_HAS_FEATURE_TILE_SIZE_X,
+	PVR_FW_HAS_FEATURE_TILE_SIZE_Y,
+	PVR_FW_HAS_FEATURE_TLA,
+	PVR_FW_HAS_FEATURE_TPU_CEM_DATAMASTER_GLOBAL_REGISTERS,
+	PVR_FW_HAS_FEATURE_TPU_DM_GLOBAL_REGISTERS,
+	PVR_FW_HAS_FEATURE_TPU_FILTERING_MODE_CONTROL,
+	PVR_FW_HAS_FEATURE_USC_MIN_OUTPUT_REGISTERS_PER_PIX,
+	PVR_FW_HAS_FEATURE_VDM_DRAWINDIRECT,
+	PVR_FW_HAS_FEATURE_VDM_OBJECT_LEVEL_LLS,
+	PVR_FW_HAS_FEATURE_VIRTUAL_ADDRESS_SPACE_BITS,
+	PVR_FW_HAS_FEATURE_WATCHDOG_TIMER,
+	PVR_FW_HAS_FEATURE_WORKGROUP_PROTECTION,
+	PVR_FW_HAS_FEATURE_XE_ARCHITECTURE,
+	PVR_FW_HAS_FEATURE_XE_MEMORY_HIERARCHY,
+	PVR_FW_HAS_FEATURE_XE_TPU2,
+	PVR_FW_HAS_FEATURE_XPU_MAX_REGBANKS_ADDR_WIDTH,
+	PVR_FW_HAS_FEATURE_XPU_MAX_SLAVES,
+	PVR_FW_HAS_FEATURE_XPU_REGISTER_BROADCAST,
+	PVR_FW_HAS_FEATURE_XT_TOP_INFRASTRUCTURE,
+	PVR_FW_HAS_FEATURE_ZLS_SUBTILE,
+
+	PVR_FW_HAS_FEATURE_MAX
+};
+
+#endif /* __PVR_ROGUE_FWIF_DEV_INFO_H__ */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_resetframework.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_resetframework.h
new file mode 100644
index 000000000000..3d89524fe5d2
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_resetframework.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_RESETFRAMEWORK_H
+#define PVR_ROGUE_FWIF_RESETFRAMEWORK_H
+
+#include <linux/bits.h>
+#include <linux/types.h>
+
+#include "pvr_rogue_fwif_shared.h"
+
+struct rogue_fwif_rf_registers {
+	union {
+		u64 cdmreg_cdm_cb_base;
+		u64 cdmreg_cdm_ctrl_stream_base;
+	};
+	u64 cdmreg_cdm_cb_queue;
+	u64 cdmreg_cdm_cb;
+};
+
+struct rogue_fwif_rf_cmd {
+	/* THIS MUST BE THE LAST MEMBER OF THE CONTAINING STRUCTURE */
+	struct rogue_fwif_rf_registers fw_registers __aligned(8);
+};
+
+#define ROGUE_FWIF_RF_CMD_SIZE sizeof(struct rogue_fwif_rf_cmd)
+
+#endif /* PVR_ROGUE_FWIF_RESETFRAMEWORK_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared.h
new file mode 100644
index 000000000000..06c8012b31d4
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared.h
@@ -0,0 +1,258 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_SHARED_H
+#define PVR_ROGUE_FWIF_SHARED_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#define ROGUE_FWIF_NUM_RTDATAS 2U
+#define ROGUE_FWIF_NUM_GEOMDATAS 1U
+#define ROGUE_FWIF_NUM_RTDATA_FREELISTS 2U
+#define ROGUE_NUM_GEOM_CORES 1U
+
+#define ROGUE_NUM_GEOM_CORES_SIZE 2U
+
+/*
+ * Maximum number of UFOs in a CCB command.
+ * The number is based on having 32 sync prims (as originally), plus 32 sync
+ * checkpoints.
+ * Once the use of sync prims is no longer supported, we will retain
+ * the same total (64) as the number of sync checkpoints which may be
+ * supporting a fence is not visible to the client driver and has to
+ * allow for the number of different timelines involved in fence merges.
+ */
+#define ROGUE_FWIF_CCB_CMD_MAX_UFOS (32U + 32U)
+
+/*
+ * This is a generic limit imposed on any DM (GEOMETRY,FRAGMENT,CDM,TDM,2D,TRANSFER)
+ * command passed through the bridge.
+ * Just across the bridge in the server, any incoming kick command size is
+ * checked against this maximum limit.
+ * In case the incoming command size is larger than the specified limit,
+ * the bridge call is retired with error.
+ */
+#define ROGUE_FWIF_DM_INDEPENDENT_KICK_CMD_SIZE (1024U)
+
+#define ROGUE_FWIF_PRBUFFER_START (0)
+#define ROGUE_FWIF_PRBUFFER_ZSBUFFER (0)
+#define ROGUE_FWIF_PRBUFFER_MSAABUFFER (1)
+#define ROGUE_FWIF_PRBUFFER_MAXSUPPORTED (2)
+
+struct rogue_fwif_dma_addr {
+	aligned_u64 dev_addr;
+	u32 fw_addr;
+	u32 padding;
+} __aligned(8);
+
+struct rogue_fwif_ufo {
+	u32 addr;
+	u32 value;
+};
+
+#define ROGUE_FWIF_UFO_ADDR_IS_SYNC_CHECKPOINT (1)
+
+struct rogue_fwif_sync_checkpoint {
+	u32 state;
+	u32 fw_ref_count;
+};
+
+struct rogue_fwif_cleanup_ctl {
+	/* Number of commands received by the FW */
+	u32 submitted_commands;
+	/* Number of commands executed by the FW */
+	u32 executed_commands;
+} __aligned(8);
+
+/*
+ * Used to share frame numbers across UM-KM-FW,
+ * frame number is set in UM,
+ * frame number is required in both KM for HTB and FW for FW trace.
+ *
+ * May be used to house Kick flags in the future.
+ */
+struct rogue_fwif_cmd_common {
+	/* associated frame number */
+	u32 frame_num;
+};
+
+/*
+ * Geometry and fragment commands require set of firmware addresses that are stored in the Kernel.
+ * Client has handle(s) to Kernel containers storing these addresses, instead of raw addresses. We
+ * have to patch/write these addresses in KM to prevent UM from controlling FW addresses directly.
+ * Typedefs for geometry and fragment commands are shared between Client and Firmware (both
+ * single-BVNC). Kernel is implemented in a multi-BVNC manner, so it can't use geometry|fragment
+ * CMD type definitions directly. Therefore we have a SHARED block that is shared between UM-KM-FW
+ * across all BVNC configurations.
+ */
+struct rogue_fwif_cmd_geom_frag_shared {
+	/* Common command attributes */
+	struct rogue_fwif_cmd_common cmn;
+
+	/*
+	 * RTData associated with this command, this is used for context
+	 * selection and for storing out HW-context, when TA is switched out for
+	 * continuing later
+	 */
+	u32 hwrt_data_fw_addr;
+
+	/* Supported PR Buffers like Z/S/MSAA Scratch */
+	u32 pr_buffer_fw_addr[ROGUE_FWIF_PRBUFFER_MAXSUPPORTED];
+};
+
+/*
+ * Client Circular Command Buffer (CCCB) control structure.
+ * This is shared between the Server and the Firmware and holds byte offsets
+ * into the CCCB as well as the wrapping mask to aid wrap around. A given
+ * snapshot of this queue with Cmd 1 running on the GPU might be:
+ *
+ *          Roff                           Doff                 Woff
+ * [..........|-1----------|=2===|=3===|=4===|~5~~~~|~6~~~~|~7~~~~|..........]
+ *            <      runnable commands       ><   !ready to run   >
+ *
+ * Cmd 1    : Currently executing on the GPU data master.
+ * Cmd 2,3,4: Fence dependencies met, commands runnable.
+ * Cmd 5... : Fence dependency not met yet.
+ */
+struct rogue_fwif_cccb_ctl {
+	/* Host write offset into CCB. This must be aligned to 16 bytes. */
+	u32 write_offset;
+	/*
+	 * Firmware read offset into CCB. Points to the command that is runnable
+	 * on GPU, if R!=W
+	 */
+	u32 read_offset;
+	/*
+	 * Firmware fence dependency offset. Points to commands not ready, i.e.
+	 * fence dependencies are not met.
+	 */
+	u32 dep_offset;
+	/* Offset wrapping mask, total capacity in bytes of the CCB-1 */
+	u32 wrap_mask;
+
+	/* Only used if SUPPORT_AGP is present. */
+	u32 read_offset2;
+
+	/* Only used if SUPPORT_AGP4 is present. */
+	u32 read_offset3;
+	/* Only used if SUPPORT_AGP4 is present. */
+	u32 read_offset4;
+
+	u32 padding;
+} __aligned(8);
+
+#define ROGUE_FW_LOCAL_FREELIST (0)
+#define ROGUE_FW_GLOBAL_FREELIST (1)
+#define ROGUE_FW_FREELIST_TYPE_LAST ROGUE_FW_GLOBAL_FREELIST
+#define ROGUE_FW_MAX_FREELISTS (ROGUE_FW_FREELIST_TYPE_LAST + 1U)
+
+struct rogue_fwif_geom_registers_caswitch {
+	u64 geom_reg_vdm_context_state_base_addr;
+	u64 geom_reg_vdm_context_state_resume_addr;
+	u64 geom_reg_ta_context_state_base_addr;
+
+	struct {
+		u64 geom_reg_vdm_context_store_task0;
+		u64 geom_reg_vdm_context_store_task1;
+		u64 geom_reg_vdm_context_store_task2;
+
+		/* VDM resume state update controls */
+		u64 geom_reg_vdm_context_resume_task0;
+		u64 geom_reg_vdm_context_resume_task1;
+		u64 geom_reg_vdm_context_resume_task2;
+
+		u64 geom_reg_vdm_context_store_task3;
+		u64 geom_reg_vdm_context_store_task4;
+
+		u64 geom_reg_vdm_context_resume_task3;
+		u64 geom_reg_vdm_context_resume_task4;
+	} geom_state[2];
+};
+
+#define ROGUE_FWIF_GEOM_REGISTERS_CSWITCH_SIZE \
+	sizeof(struct rogue_fwif_geom_registers_caswitch)
+
+struct rogue_fwif_cdm_registers_cswitch {
+	u64 cdmreg_cdm_context_pds0;
+	u64 cdmreg_cdm_context_pds1;
+	u64 cdmreg_cdm_terminate_pds;
+	u64 cdmreg_cdm_terminate_pds1;
+
+	/* CDM resume controls */
+	u64 cdmreg_cdm_resume_pds0;
+	u64 cdmreg_cdm_context_pds0_b;
+	u64 cdmreg_cdm_resume_pds0_b;
+};
+
+struct rogue_fwif_static_rendercontext_state {
+	/* Geom registers for ctx switch */
+	struct rogue_fwif_geom_registers_caswitch ctxswitch_regs[ROGUE_NUM_GEOM_CORES_SIZE]
+		__aligned(8);
+};
+
+#define ROGUE_FWIF_STATIC_RENDERCONTEXT_SIZE \
+	sizeof(struct rogue_fwif_static_rendercontext_state)
+
+struct rogue_fwif_static_computecontext_state {
+	/* CDM registers for ctx switch */
+	struct rogue_fwif_cdm_registers_cswitch ctxswitch_regs __aligned(8);
+};
+
+#define ROGUE_FWIF_STATIC_COMPUTECONTEXT_SIZE \
+	sizeof(struct rogue_fwif_static_computecontext_state)
+
+enum rogue_fwif_prbuffer_state {
+	ROGUE_FWIF_PRBUFFER_UNBACKED = 0,
+	ROGUE_FWIF_PRBUFFER_BACKED,
+	ROGUE_FWIF_PRBUFFER_BACKING_PENDING,
+	ROGUE_FWIF_PRBUFFER_UNBACKING_PENDING,
+};
+
+struct rogue_fwif_prbuffer {
+	/* Buffer ID*/
+	u32 buffer_id;
+	/* Needs On-demand Z/S/MSAA Buffer allocation */
+	bool on_demand __aligned(4);
+	/* Z/S/MSAA -Buffer state */
+	enum rogue_fwif_prbuffer_state state;
+	/* Cleanup state */
+	struct rogue_fwif_cleanup_ctl cleanup_sate;
+	/* Compatibility and other flags */
+	u32 prbuffer_flags;
+} __aligned(8);
+
+/* Last reset reason for a context. */
+enum rogue_context_reset_reason {
+	/* No reset reason recorded */
+	ROGUE_CONTEXT_RESET_REASON_NONE = 0,
+	/* Caused a reset due to locking up */
+	ROGUE_CONTEXT_RESET_REASON_GUILTY_LOCKUP = 1,
+	/* Affected by another context locking up */
+	ROGUE_CONTEXT_RESET_REASON_INNOCENT_LOCKUP = 2,
+	/* Overran the global deadline */
+	ROGUE_CONTEXT_RESET_REASON_GUILTY_OVERRUNING = 3,
+	/* Affected by another context overrunning */
+	ROGUE_CONTEXT_RESET_REASON_INNOCENT_OVERRUNING = 4,
+	/* Forced reset to ensure scheduling requirements */
+	ROGUE_CONTEXT_RESET_REASON_HARD_CONTEXT_SWITCH = 5,
+	/* FW Safety watchdog triggered */
+	ROGUE_CONTEXT_RESET_REASON_FW_WATCHDOG = 12,
+	/* FW page fault (no HWR) */
+	ROGUE_CONTEXT_RESET_REASON_FW_PAGEFAULT = 13,
+	/* FW execution error (GPU reset requested) */
+	ROGUE_CONTEXT_RESET_REASON_FW_EXEC_ERR = 14,
+	/* Host watchdog detected FW error */
+	ROGUE_CONTEXT_RESET_REASON_HOST_WDG_FW_ERR = 15,
+	/* Geometry DM OOM event is not allowed */
+	ROGUE_CONTEXT_GEOM_OOM_DISABLED = 16,
+};
+
+struct rogue_context_reset_reason_data {
+	enum rogue_context_reset_reason reset_reason;
+	u32 reset_ext_job_ref;
+};
+
+#include "pvr_rogue_fwif_shared_check.h"
+
+#endif /* PVR_ROGUE_FWIF_SHARED_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared_check.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared_check.h
new file mode 100644
index 000000000000..4d6684474185
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_shared_check.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_SHARED_CHECK_H
+#define PVR_ROGUE_FWIF_SHARED_CHECK_H
+
+#include <linux/build_bug.h>
+
+#define OFFSET_CHECK(type, member, offset) \
+	static_assert(offsetof(type, member) == (offset), \
+		      "offsetof(" #type ", " #member ") incorrect")
+
+#define SIZE_CHECK(type, size) \
+	static_assert(sizeof(type) == (size), #type " is incorrect size")
+
+OFFSET_CHECK(struct rogue_fwif_dma_addr, dev_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_dma_addr, fw_addr, 8);
+SIZE_CHECK(struct rogue_fwif_dma_addr, 16);
+
+OFFSET_CHECK(struct rogue_fwif_ufo, addr, 0);
+OFFSET_CHECK(struct rogue_fwif_ufo, value, 4);
+SIZE_CHECK(struct rogue_fwif_ufo, 8);
+
+OFFSET_CHECK(struct rogue_fwif_cleanup_ctl, submitted_commands, 0);
+OFFSET_CHECK(struct rogue_fwif_cleanup_ctl, executed_commands, 4);
+SIZE_CHECK(struct rogue_fwif_cleanup_ctl, 8);
+
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, write_offset, 0);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, read_offset, 4);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, dep_offset, 8);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, wrap_mask, 12);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, read_offset2, 16);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, read_offset3, 20);
+OFFSET_CHECK(struct rogue_fwif_cccb_ctl, read_offset4, 24);
+SIZE_CHECK(struct rogue_fwif_cccb_ctl, 32);
+
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_reg_vdm_context_state_base_addr, 0);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_reg_vdm_context_state_resume_addr, 8);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_reg_ta_context_state_base_addr, 16);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_store_task0, 24);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_store_task1, 32);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_store_task2, 40);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_resume_task0, 48);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_resume_task1, 56);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_resume_task2, 64);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_store_task3, 72);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_store_task4, 80);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_resume_task3, 88);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[0].geom_reg_vdm_context_resume_task4, 96);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_store_task0, 104);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_store_task1, 112);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_store_task2, 120);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_resume_task0, 128);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_resume_task1, 136);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_resume_task2, 144);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_store_task3, 152);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_store_task4, 160);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_resume_task3, 168);
+OFFSET_CHECK(struct rogue_fwif_geom_registers_caswitch,
+	     geom_state[1].geom_reg_vdm_context_resume_task4, 176);
+SIZE_CHECK(struct rogue_fwif_geom_registers_caswitch, 184);
+
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds0, 0);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds1, 8);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_terminate_pds, 16);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_terminate_pds1, 24);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_resume_pds0, 32);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds0_b, 40);
+OFFSET_CHECK(struct rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_resume_pds0_b, 48);
+SIZE_CHECK(struct rogue_fwif_cdm_registers_cswitch, 56);
+
+OFFSET_CHECK(struct rogue_fwif_static_rendercontext_state, ctxswitch_regs, 0);
+SIZE_CHECK(struct rogue_fwif_static_rendercontext_state, 368);
+
+OFFSET_CHECK(struct rogue_fwif_static_computecontext_state, ctxswitch_regs, 0);
+SIZE_CHECK(struct rogue_fwif_static_computecontext_state, 56);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_common, frame_num, 0);
+SIZE_CHECK(struct rogue_fwif_cmd_common, 4);
+
+OFFSET_CHECK(struct rogue_fwif_cmd_geom_frag_shared, cmn, 0);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom_frag_shared, hwrt_data_fw_addr, 4);
+OFFSET_CHECK(struct rogue_fwif_cmd_geom_frag_shared, pr_buffer_fw_addr, 8);
+SIZE_CHECK(struct rogue_fwif_cmd_geom_frag_shared, 16);
+
+#endif /* PVR_ROGUE_FWIF_SHARED_CHECK_H */
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_fwif_stream.h b/drivers/gpu/drm/imagination/pvr_rogue_fwif_stream.h
new file mode 100644
index 000000000000..97859a41e677
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_fwif_stream.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_FWIF_STREAM_H
+#define PVR_ROGUE_FWIF_STREAM_H
+
+/**
+ * DOC: Streams
+ *
+ * Commands are submitted to the kernel driver in the form of streams.
+ *
+ * A command stream has the following layout :
+ *  - A 64-bit header containing:
+ *    * A u32 containing the length of the main stream inclusive of the length of the header.
+ *    * A u32 for padding.
+ *  - The main stream data.
+ *  - The extension stream (optional), which is composed of:
+ *    * One or more headers.
+ *    * The extension stream data, corresponding to the extension headers.
+ *
+ * The main stream provides the base command data. This has a fixed layout based on the features
+ * supported by a given GPU.
+ *
+ * The extension stream provides the command parameters that are required for BRNs & ERNs for the
+ * current GPU. This stream is comprised of one or more headers, followed by data for each given
+ * BRN/ERN.
+ *
+ * Each header is a u32 containing a bitmask of quirks & enhancements in the extension stream, a
+ * "type" field determining the set of quirks & enhancements the bitmask represents, and a
+ * continuation bit determining whether any more headers are present. The headers are then followed
+ * by command data; this is specific to each quirk/enhancement. All unused / reserved bits in the
+ * header must be set to 0.
+ *
+ * All parameters and headers in the main and extension streams must be naturally aligned.
+ *
+ * If a parameter appears in both the main and extension streams, then the extension parameter is
+ * used.
+ */
+
+/*
+ * Stream extension header definition
+ */
+#define PVR_STREAM_EXTHDR_TYPE_SHIFT 29U
+#define PVR_STREAM_EXTHDR_TYPE_MASK (7U << PVR_STREAM_EXTHDR_TYPE_SHIFT)
+#define PVR_STREAM_EXTHDR_TYPE_MAX 8U
+#define PVR_STREAM_EXTHDR_CONTINUATION BIT(28U)
+
+#define PVR_STREAM_EXTHDR_DATA_MASK ~(PVR_STREAM_EXTHDR_TYPE_MASK | PVR_STREAM_EXTHDR_CONTINUATION)
+
+/*
+ * Stream extension header - Geometry 0
+ */
+#define PVR_STREAM_EXTHDR_TYPE_GEOM0 0U
+
+#define PVR_STREAM_EXTHDR_GEOM0_BRN49927 BIT(0U)
+
+#define PVR_STREAM_EXTHDR_GEOM0_VALID PVR_STREAM_EXTHDR_GEOM0_BRN49927
+
+/*
+ * Stream extension header - Fragment 0
+ */
+#define PVR_STREAM_EXTHDR_TYPE_FRAG0 0U
+
+#define PVR_STREAM_EXTHDR_FRAG0_BRN47217 BIT(0U)
+#define PVR_STREAM_EXTHDR_FRAG0_BRN49927 BIT(1U)
+
+#define PVR_STREAM_EXTHDR_FRAG0_VALID PVR_STREAM_EXTHDR_FRAG0_BRN49927
+
+/*
+ * Stream extension header - Compute 0
+ */
+#define PVR_STREAM_EXTHDR_TYPE_COMPUTE0 0U
+
+#define PVR_STREAM_EXTHDR_COMPUTE0_BRN49927 BIT(0U)
+
+#define PVR_STREAM_EXTHDR_COMPUTE0_VALID PVR_STREAM_EXTHDR_COMPUTE0_BRN49927
+
+#endif /* PVR_ROGUE_FWIF_STREAM_H */
-- 
2.42.0


