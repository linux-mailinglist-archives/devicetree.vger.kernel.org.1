Return-Path: <devicetree+bounces-7259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB357BFDCD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D431281C26
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B911F1DFC9;
	Tue, 10 Oct 2023 13:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="Fw9g3OwA";
	dkim=pass (1024-bit key) header.d=IMGTecCRM.onmicrosoft.com header.i=@IMGTecCRM.onmicrosoft.com header.b="CYk8v+I9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1E71DFCA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:39:03 +0000 (UTC)
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D09FD3;
	Tue, 10 Oct 2023 06:38:55 -0700 (PDT)
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39ACSosa008503;
	Tue, 10 Oct 2023 14:38:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	dk201812; bh=oUnpPo0Uhh0MrkvZDrcZLBZIgwBEd6OJe5mf/h6fZ+U=; b=Fw9
	g3OwAHhHG8XswfPMTgSR0ddvdczwwKlBJMh0kKlejILeprrl6MFBiJfK6g53NglY
	/dOM3PMiNkXz67dl2cc7tz6JW+8BmlC6UDmom1d7pu2mjcqGBCxUkeoPg26en5zA
	L03AMbgeEvQzhKw1zU8IcTC7ic+6YbjbKGEdBBdNRTKX7XInujdfubi8TKgq8Bav
	vnol9wRFClh4ol7nR0vTEMFPmHt/vLkCTC5zqmA1775IgShP/muPqJJSV+QLwuuv
	NI6CJhe2GFeaowIHosTTpBPMMDm9h9LdTdwX2wB86HVAl2zk1nZJIkp+4V3pTLEC
	o04kgDE9k9Gm40mMSeA==
Received: from hhmail04.hh.imgtec.org ([217.156.249.195])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 3tjwkq2a69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 10 Oct 2023 14:38:20 +0100 (BST)
Received: from HHMAIL05.hh.imgtec.org (10.100.10.120) by
 HHMAIL04.hh.imgtec.org (10.100.10.119) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Tue, 10 Oct 2023 14:38:19 +0100
Received: from GBR01-LO4-obe.outbound.protection.outlook.com (104.47.85.105)
 by email.imgtec.com (10.100.10.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31 via Frontend Transport; Tue, 10 Oct 2023 14:38:19 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6rxsTaOPaqCYHpVaONC7ESQjJLsXQNCD/oA/gqj2uIVOalHdoUQ+85E5yCYNdtwFKQnjS3TMcLVextN3MZFm/QO5bxNDL2USp6X79UpUuYYF/5zRVqhkQqTl58gwT2rNiNGWgd8HH5Fytj3dTSnGUP2kXzBDJoAzBoo/9Kj4P6UI5PXyDfvD+B8F/a0yt/Uc+Z8O3PCFeswfOBPS0+S3V/KqaLh9p7dRqJz3Ybc+gmfs0NAX6PHUVZqJxlAiH2OICNioDoShL+JcMmrWWupqdwX8TG0qUGiegD8gM89s3gtfzOBoup8jzMugxyu3e5p7rGgvY7t8zjB/Rk8UmFFWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUnpPo0Uhh0MrkvZDrcZLBZIgwBEd6OJe5mf/h6fZ+U=;
 b=H6jjvhrC3fATC8HEcJfmeQtn5ci2tqrd/fp4c8dznz9AWi2Wfbc904x0RSqjln6GVGpS4MED2SNjRFfl7137fRr1qdIK/5KwrZBHBb7IF3/kuj5CSTcLV0a/dRa1g3dLlwNHIxE28dCMuzm9OPWV2UYgNWiPRwAbDrK7OKbNVwqBvW+Ap1AJbFpQnI05kSARQNKhTaqv46PhekJ108Bs3S131icoWyN9Z0JqAcZcJ8LxydDkBc3X9R8kPeJc/GFYzhPeZXLYsXnwrvoO14WoDol7eztk7i97Q6nxgAW5YM09jNsUZ+zePjwipwSLhINJPPJqWK4fkplZTfdRmIHQsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=imgtec.com; dmarc=pass action=none header.from=imgtec.com;
 dkim=pass header.d=imgtec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IMGTecCRM.onmicrosoft.com; s=selector2-IMGTecCRM-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oUnpPo0Uhh0MrkvZDrcZLBZIgwBEd6OJe5mf/h6fZ+U=;
 b=CYk8v+I9sJMnWSNgJq2TfNn89ykjOkPhmRhtJiSpMZm3SksaaGrpMmKDxK1j4gAU1gNh0cU3RoqqeAvsXS7YCJpcPoMPZfFKEzXjT0thKpMqimHPavuaD5RB3Ngf+/IFeI7oezL34ULpoosQ+odlyLyD2cB6SfRr6Srw7yzCv6Q=
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:170::9)
 by LO0P265MB6147.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:248::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 13:38:16 +0000
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1f14:8c15:179d:7afc]) by CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1f14:8c15:179d:7afc%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 13:38:16 +0000
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
Subject: [PATCH v7 16/20] drm/imagination: Implement context creation/destruction ioctls
Date: Tue, 10 Oct 2023 14:37:34 +0100
Message-Id: <20231010133738.35274-17-sarah.walker@imgtec.com>
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
X-MS-Office365-Filtering-Correlation-Id: 33438fbf-b994-4b35-a2e5-08dbc9962816
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ghNsrLSpQrjMjrZFIJrRBu+dmhgyh77vFehTPNCFWMiqDAKVFWENXB6jha7+rnTSUp8q26+TfPiZxL+yWzsH13sDmjkO4yQqaSvHYc+T+5vJTbwCp7eqgGVHYnBNzHc3eGvLGVXi/ymazZXqn6GsO/Qj7IXqWdmvrOw2lZbbyPIK+yS9A6Ldlfu1Yr0RNTZwgMOk2cpvEpm9FFzcyJvq5+xjqEMyTadAaF0ecnqi60VoalmNfS7vrwmVB5yYv8FI3Mv0ibaTdf9J6R5metoME/WnSuBNNhJxcSLHIHCC2BpUYb2wPLWnDEPvDmfqjHoTBk7ZOJZssWHVyJUcolVuKl5D0xLn4U0ShsjE0HCaSjLqvcDYDbsUCSsF0X0bzQ1OnlFXFfn99QUg/FO9Vhv+aNbNk3b7iw8HZTvZW2sMpx2BX2Urd/NcBnyikBz+hW8EonxLpBcNiPjCAhi2AMUqJhXaHf1q/AgcGcwQdrOuYDRRivfH8gjPJp5zyTzqm/dBggoo8IKysDmiWMr8Cf46DRZDGRWgBIC5WroQMWe2CsnDXW3nbnc5oYyEKohiPhUbPX1SvKvFgYpsYsYuOy/8TpSYDngbNu57Y2j4Cz7FjPZmbKtzkDQSM7rcgUIrcGVo
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(366004)(346002)(396003)(39850400004)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6512007)(478600001)(52116002)(6486002)(6666004)(6506007)(1076003)(83380400001)(26005)(2616005)(2906002)(30864003)(66556008)(316002)(66476007)(5660300002)(8936002)(44832011)(41300700001)(8676002)(4326008)(66946007)(6916009)(38100700002)(38350700002)(36756003)(86362001)(7416002)(559001)(579004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TsPFFWjuTfTPQLxNsIDjZJoWABCjZUAWBTOq49ZfAwHGvy7eV9EoYh6mjrIJ?=
 =?us-ascii?Q?wlonX5eboBz5O/CddqZn4yes7lb24zrGjlPC2fgnK5xA3qAdQWzFS4kWXUMF?=
 =?us-ascii?Q?sqDF904KnIPzV4gEDfZ8GRVr8lARBc81MJJzIHpsdzGdfkqOq7koyC1dlOwg?=
 =?us-ascii?Q?yQ703ga6W9PCYV6WZoyA+W1SXrDbspX4IwPUeOmHu8FzICvVj8T6+0UtyBt/?=
 =?us-ascii?Q?9Dg4mhry5emATwC87zOkrDHwbMi5KI2CL5OEQ5SUTgDLYlWTNmie9Y/R502i?=
 =?us-ascii?Q?LNp08aY7Ony5ABHdbwankDXNeqpJEqzl/TJ7s4yv0zKSh3g01tXzax2vJIo3?=
 =?us-ascii?Q?r/Rx1azzDoXAjwOi+nVlhKNzGSwVg+UpiAaWLm9Z4Bh+wANlAfLNTUwhnfdO?=
 =?us-ascii?Q?P1c9iBHER7OYTSO52VSHE7y3NyGFwILsF8lTVy2C8Av8OSaMGTdY9jJTU/z/?=
 =?us-ascii?Q?Luv6BUlB/2yzrxBMG+KZjcxZ+WoSlhPfI0uTk3P9rvfLtLwz8kZxzoMa1sq4?=
 =?us-ascii?Q?s+11ANd/OUQYGCP6KlBMONTKXbVnb3zrgTV1tHuwafK2Uzll5s7G/RDpPWeG?=
 =?us-ascii?Q?y7o6ZhjdtPSerCW9HeDjWdy8XRFVuiRU1FEFFu14vxT1uJ8KW7RNv95ydf3t?=
 =?us-ascii?Q?b9Zrd7WtvU6g9l9SR4lQ0T+DFMkkcjBRcHZqhqqlDV9kWp4dt0BwBeW/+muy?=
 =?us-ascii?Q?ggx5UwiHGSqJAY+wqUrIqlYIwVWjxDXznh0qyYF6Xv9+YwpMPyBcAY3cgmye?=
 =?us-ascii?Q?MP9Ad2VaQWlgd86DKrrRVyG+ghi9MaeZBwKcAwdJUgsODbJWif5T92Fm+aPo?=
 =?us-ascii?Q?ldOWYgQDX7AIZe0Ab0GVelqy31+7hvp0b5RL6PZgGVObX3jymDXhaWL10U6K?=
 =?us-ascii?Q?uTxut5iwvhDLO9EXlXGzGNV6lw29Fbq09KcUm7VCL7AtTueIW/b/N378nqqK?=
 =?us-ascii?Q?sMtm84nkMMOfc86oBQlu7P8/NyCGN6wSuIBecCf2Ojggd+GPR2iNOPvJsNJ0?=
 =?us-ascii?Q?DCevzPvsvGF71+DVd7J8Pnh7NigVLVtUofQoPSy56JfUvNHQprcqKPOwcvtL?=
 =?us-ascii?Q?zyU51ubaXr15yccGUMHGjSaPM10kEPRZFcX8kjQtfuun/tdexHTX0MqzKxOb?=
 =?us-ascii?Q?MViGTsIIHJ6gexP/wqwrloxaWV2MiyD3jPTomvKfiFsRRvfQml6C3sqCFIqn?=
 =?us-ascii?Q?ekXgJUL5wiAJfcp0RQeKl7sZLdyQ+u1u+X32eo7xinQ+0PdslybLChivsBw9?=
 =?us-ascii?Q?LMTuiaA/3QdNW1983bpRj3wvmDVwVBFTf/F76rXPKdFAkUiLDVGk+ovhr8kE?=
 =?us-ascii?Q?npCx2IfyMQMczG56VG/ovFtGIgSdl1P4gJr6NRnSgG/e6DUy1tYUagM+Vcpe?=
 =?us-ascii?Q?KwkTSA3iRYCdNgr/WVhE7Hc0OTMntOnayubOoHt5tlBVOHyhP0OvYWo75ksq?=
 =?us-ascii?Q?Uyy0HT5NdpXb+enFYL+X7ATS2W8Q9sjZ1wSJBSRtsvUez8/KiRS7Xvo/2FaN?=
 =?us-ascii?Q?BAvIDdonMgU+WXBqFtmgsMlO6ET1MwiNtT51fZE8VVKR8jnFsmRTNt0OOQvQ?=
 =?us-ascii?Q?Ds1BJDO49bVLh0K/8SWZVZn7MbrcUPFAxeXZx7Gz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33438fbf-b994-4b35-a2e5-08dbc9962816
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 13:38:15.9989
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0d5fd8bb-e8c2-4e0a-8dd5-2c264f7140fe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CGSTaKkQEiq4nm/rj02Jzzlqx+Iggb9g+0/7xSad1GWlFal1zuMcRTlxhI8NRPntCsN4oixry4QyamZlSrXSDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB6147
X-OriginatorOrg: imgtec.com
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: c5d6s6qwesVCClSkezCxxsJCz3acNfxV
X-Proofpoint-ORIG-GUID: c5d6s6qwesVCClSkezCxxsJCz3acNfxV
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Implement ioctls for the creation and destruction of contexts. Contexts are
used for job submission and each is associated with a particular job type.

Changes since v5:
- Fix context release in final error path in pvr_context_create()

Changes since v3:
- Use drm_dev_{enter,exit}

Co-developed-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
---
 drivers/gpu/drm/imagination/Makefile          |   4 +
 drivers/gpu/drm/imagination/pvr_cccb.c        | 267 ++++++++++++++
 drivers/gpu/drm/imagination/pvr_cccb.h        | 109 ++++++
 drivers/gpu/drm/imagination/pvr_context.c     | 341 ++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_context.h     | 161 +++++++++
 drivers/gpu/drm/imagination/pvr_device.h      |  21 ++
 drivers/gpu/drm/imagination/pvr_drv.c         |  29 +-
 drivers/gpu/drm/imagination/pvr_stream.c      | 285 +++++++++++++++
 drivers/gpu/drm/imagination/pvr_stream.h      |  75 ++++
 drivers/gpu/drm/imagination/pvr_stream_defs.c | 125 +++++++
 drivers/gpu/drm/imagination/pvr_stream_defs.h |  16 +
 11 files changed, 1431 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/imagination/pvr_cccb.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_cccb.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_context.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_context.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_stream.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_stream.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_stream_defs.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_stream_defs.h

diff --git a/drivers/gpu/drm/imagination/Makefile b/drivers/gpu/drm/imagination/Makefile
index fca2ee2efbac..0c8ab120f277 100644
--- a/drivers/gpu/drm/imagination/Makefile
+++ b/drivers/gpu/drm/imagination/Makefile
@@ -5,6 +5,8 @@ subdir-ccflags-y := -I$(srctree)/$(src)
 
 powervr-y := \
 	pvr_ccb.o \
+	pvr_cccb.o \
+	pvr_context.o \
 	pvr_device.o \
 	pvr_device_info.o \
 	pvr_drv.o \
@@ -18,6 +20,8 @@ powervr-y := \
 	pvr_hwrt.o \
 	pvr_mmu.o \
 	pvr_power.o \
+	pvr_stream.o \
+	pvr_stream_defs.o \
 	pvr_vm.o \
 	pvr_vm_mips.o
 
diff --git a/drivers/gpu/drm/imagination/pvr_cccb.c b/drivers/gpu/drm/imagination/pvr_cccb.c
new file mode 100644
index 000000000000..8dfc157c3c10
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_cccb.c
@@ -0,0 +1,267 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_ccb.h"
+#include "pvr_cccb.h"
+#include "pvr_device.h"
+#include "pvr_gem.h"
+#include "pvr_hwrt.h"
+
+#include <linux/compiler.h>
+#include <linux/delay.h>
+#include <linux/jiffies.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
+
+static __always_inline u32
+get_ccb_space(u32 w_off, u32 r_off, u32 ccb_size)
+{
+	return (((r_off) - (w_off)) + ((ccb_size) - 1)) & ((ccb_size) - 1);
+}
+
+static void
+cccb_ctrl_init(void *cpu_ptr, void *priv)
+{
+	struct rogue_fwif_cccb_ctl *ctrl = cpu_ptr;
+	struct pvr_cccb *pvr_cccb = priv;
+
+	WRITE_ONCE(ctrl->write_offset, 0);
+	WRITE_ONCE(ctrl->read_offset, 0);
+	WRITE_ONCE(ctrl->dep_offset, 0);
+	WRITE_ONCE(ctrl->wrap_mask, pvr_cccb->wrap_mask);
+}
+
+/**
+ * pvr_cccb_init() - Initialise a Client CCB
+ * @pvr_dev: Device pointer.
+ * @pvr_cccb: Pointer to Client CCB structure to initialise.
+ * @size_log2: Log2 size of Client CCB in bytes.
+ * @name: Name of owner of Client CCB. Used for fence context.
+ *
+ * Return:
+ *  * Zero on success, or
+ *  * Any error code returned by pvr_fw_object_create_and_map().
+ */
+int
+pvr_cccb_init(struct pvr_device *pvr_dev, struct pvr_cccb *pvr_cccb,
+	      u32 size_log2, const char *name)
+{
+	size_t size = 1 << size_log2;
+	int err;
+
+	pvr_cccb->size = size;
+	pvr_cccb->write_offset = 0;
+	pvr_cccb->wrap_mask = size - 1;
+
+	/*
+	 * Map CCCB and control structure as uncached, so we don't have to flush
+	 * CPU cache repeatedly when polling for space.
+	 */
+	pvr_cccb->ctrl = pvr_fw_object_create_and_map(pvr_dev, sizeof(*pvr_cccb->ctrl),
+						      PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+						      cccb_ctrl_init, pvr_cccb,
+						      &pvr_cccb->ctrl_obj);
+	if (IS_ERR(pvr_cccb->ctrl))
+		return PTR_ERR(pvr_cccb->ctrl);
+
+	pvr_cccb->cccb = pvr_fw_object_create_and_map(pvr_dev, size,
+						      PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+						      NULL, NULL, &pvr_cccb->cccb_obj);
+	if (IS_ERR(pvr_cccb->cccb)) {
+		err = PTR_ERR(pvr_cccb->cccb);
+		goto err_free_ctrl;
+	}
+
+	pvr_fw_object_get_fw_addr(pvr_cccb->ctrl_obj, &pvr_cccb->ctrl_fw_addr);
+	pvr_fw_object_get_fw_addr(pvr_cccb->cccb_obj, &pvr_cccb->cccb_fw_addr);
+
+	return 0;
+
+err_free_ctrl:
+	pvr_fw_object_unmap_and_destroy(pvr_cccb->ctrl_obj);
+
+	return err;
+}
+
+/**
+ * pvr_cccb_fini() - Release Client CCB structure
+ * @pvr_cccb: Client CCB to release.
+ */
+void
+pvr_cccb_fini(struct pvr_cccb *pvr_cccb)
+{
+	pvr_fw_object_unmap_and_destroy(pvr_cccb->cccb_obj);
+	pvr_fw_object_unmap_and_destroy(pvr_cccb->ctrl_obj);
+}
+
+/**
+ * pvr_cccb_cmdseq_fits() - Check if a command sequence fits in the CCCB
+ * @pvr_cccb: Target Client CCB.
+ * @size: Size of the command sequence.
+ *
+ * Check if a command sequence fits in the CCCB we have at hand.
+ *
+ * Return:
+ *  * true if the command sequence fits in the CCCB, or
+ *  * false otherwise.
+ */
+bool pvr_cccb_cmdseq_fits(struct pvr_cccb *pvr_cccb, size_t size)
+{
+	struct rogue_fwif_cccb_ctl *ctrl = pvr_cccb->ctrl;
+	u32 read_offset, remaining;
+	bool fits = false;
+
+	read_offset = READ_ONCE(ctrl->read_offset);
+	remaining = pvr_cccb->size - pvr_cccb->write_offset;
+
+	/* Always ensure we have enough room for a padding command at the end of the CCCB.
+	 * If our command sequence does not fit, reserve the remaining space for a padding
+	 * command.
+	 */
+	if (size + PADDING_COMMAND_SIZE > remaining)
+		size += remaining;
+
+	if (get_ccb_space(pvr_cccb->write_offset, read_offset, pvr_cccb->size) >= size)
+		fits = true;
+
+	return fits;
+}
+
+/**
+ * pvr_cccb_write_command_with_header() - Write a command + command header to a
+ *                                        Client CCB
+ * @pvr_cccb: Target Client CCB.
+ * @cmd_type: Client CCB command type. Must be one of %ROGUE_FWIF_CCB_CMD_TYPE_*.
+ * @cmd_size: Size of command in bytes.
+ * @cmd_data: Pointer to command to write.
+ * @ext_job_ref: External job reference.
+ * @int_job_ref: Internal job reference.
+ *
+ * Caller must make sure there's enough space in CCCB to queue this command. This
+ * can be done by calling pvr_cccb_cmdseq_fits().
+ *
+ * This function is not protected by any lock. The caller must ensure there's
+ * no concurrent caller, which should be guaranteed by the drm_sched model (job
+ * submission is serialized in drm_sched_main()).
+ */
+void
+pvr_cccb_write_command_with_header(struct pvr_cccb *pvr_cccb, u32 cmd_type, u32 cmd_size,
+				   void *cmd_data, u32 ext_job_ref, u32 int_job_ref)
+{
+	u32 sz_with_hdr = pvr_cccb_get_size_of_cmd_with_hdr(cmd_size);
+	struct rogue_fwif_ccb_cmd_header cmd_header = {
+		.cmd_type = cmd_type,
+		.cmd_size = ALIGN(cmd_size, 8),
+		.ext_job_ref = ext_job_ref,
+		.int_job_ref = int_job_ref,
+	};
+	struct rogue_fwif_cccb_ctl *ctrl = pvr_cccb->ctrl;
+	u32 remaining = pvr_cccb->size - pvr_cccb->write_offset;
+	u32 required_size, cccb_space, read_offset;
+
+	/*
+	 * Always ensure we have enough room for a padding command at the end of
+	 * the CCCB.
+	 */
+	if (remaining < sz_with_hdr + PADDING_COMMAND_SIZE) {
+		/*
+		 * Command would need to wrap, so we need to pad the remainder
+		 * of the CCCB.
+		 */
+		required_size = sz_with_hdr + remaining;
+	} else {
+		required_size = sz_with_hdr;
+	}
+
+	read_offset = READ_ONCE(ctrl->read_offset);
+	cccb_space = get_ccb_space(pvr_cccb->write_offset, read_offset, pvr_cccb->size);
+	if (WARN_ON(cccb_space < required_size))
+		return;
+
+	if (required_size != sz_with_hdr) {
+		/* Add padding command */
+		struct rogue_fwif_ccb_cmd_header pad_cmd = {
+			.cmd_type = ROGUE_FWIF_CCB_CMD_TYPE_PADDING,
+			.cmd_size = remaining - sizeof(pad_cmd),
+		};
+
+		memcpy(&pvr_cccb->cccb[pvr_cccb->write_offset], &pad_cmd, sizeof(pad_cmd));
+		pvr_cccb->write_offset = 0;
+	}
+
+	memcpy(&pvr_cccb->cccb[pvr_cccb->write_offset], &cmd_header, sizeof(cmd_header));
+	memcpy(&pvr_cccb->cccb[pvr_cccb->write_offset + sizeof(cmd_header)], cmd_data, cmd_size);
+	pvr_cccb->write_offset += sz_with_hdr;
+}
+
+static void fill_cmd_kick_data(struct pvr_cccb *cccb, u32 ctx_fw_addr,
+			       struct pvr_hwrt_data *hwrt,
+			       struct rogue_fwif_kccb_cmd_kick_data *k)
+{
+	k->context_fw_addr = ctx_fw_addr;
+	k->client_woff_update = cccb->write_offset;
+	k->client_wrap_mask_update = cccb->wrap_mask;
+
+	if (hwrt) {
+		u32 cleanup_state_offset = offsetof(struct rogue_fwif_hwrtdata, cleanup_state);
+
+		pvr_fw_object_get_fw_addr_offset(hwrt->fw_obj, cleanup_state_offset,
+						 &k->cleanup_ctl_fw_addr[k->num_cleanup_ctl++]);
+	}
+}
+
+/**
+ * pvr_cccb_send_kccb_kick: Send KCCB kick to trigger command processing
+ * @pvr_dev: Device pointer.
+ * @pvr_cccb: Pointer to CCCB to process.
+ * @cctx_fw_addr: FW virtual address for context owning this Client CCB.
+ * @hwrt: HWRT data set associated with this kick. May be %NULL.
+ *
+ * You must call pvr_kccb_reserve_slot() and wait for the returned fence to
+ * signal (if this function didn't return NULL) before calling
+ * pvr_cccb_send_kccb_kick().
+ */
+void
+pvr_cccb_send_kccb_kick(struct pvr_device *pvr_dev,
+			struct pvr_cccb *pvr_cccb, u32 cctx_fw_addr,
+			struct pvr_hwrt_data *hwrt)
+{
+	struct rogue_fwif_kccb_cmd cmd_kick = {
+		.cmd_type = ROGUE_FWIF_KCCB_CMD_KICK,
+	};
+
+	fill_cmd_kick_data(pvr_cccb, cctx_fw_addr, hwrt, &cmd_kick.cmd_data.cmd_kick_data);
+
+	/* Make sure the writes to the CCCB are flushed before sending the KICK. */
+	wmb();
+
+	pvr_kccb_send_cmd_reserved_powered(pvr_dev, &cmd_kick, NULL);
+}
+
+void
+pvr_cccb_send_kccb_combined_kick(struct pvr_device *pvr_dev,
+				 struct pvr_cccb *geom_cccb,
+				 struct pvr_cccb *frag_cccb,
+				 u32 geom_ctx_fw_addr,
+				 u32 frag_ctx_fw_addr,
+				 struct pvr_hwrt_data *hwrt,
+				 bool frag_is_pr)
+{
+	struct rogue_fwif_kccb_cmd cmd_kick = {
+		.cmd_type = ROGUE_FWIF_KCCB_CMD_COMBINED_GEOM_FRAG_KICK,
+	};
+
+	fill_cmd_kick_data(geom_cccb, geom_ctx_fw_addr, hwrt,
+			   &cmd_kick.cmd_data.combined_geom_frag_cmd_kick_data.geom_cmd_kick_data);
+
+	/* If this is a partial-render job, we don't attach resources to cleanup-ctl array,
+	 * because the resources are already retained by the geometry job.
+	 */
+	fill_cmd_kick_data(frag_cccb, frag_ctx_fw_addr, frag_is_pr ? NULL : hwrt,
+			   &cmd_kick.cmd_data.combined_geom_frag_cmd_kick_data.frag_cmd_kick_data);
+
+	/* Make sure the writes to the CCCB are flushed before sending the KICK. */
+	wmb();
+
+	pvr_kccb_send_cmd_reserved_powered(pvr_dev, &cmd_kick, NULL);
+}
diff --git a/drivers/gpu/drm/imagination/pvr_cccb.h b/drivers/gpu/drm/imagination/pvr_cccb.h
new file mode 100644
index 000000000000..a9f5f38b874b
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_cccb.h
@@ -0,0 +1,109 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_CCCB_H
+#define PVR_CCCB_H
+
+#include "pvr_rogue_fwif.h"
+#include "pvr_rogue_fwif_shared.h"
+
+#include <linux/mutex.h>
+#include <linux/types.h>
+
+#define PADDING_COMMAND_SIZE sizeof(struct rogue_fwif_ccb_cmd_header)
+
+/* Forward declaration from pvr_device.h. */
+struct pvr_device;
+
+/* Forward declaration from pvr_gem.h. */
+struct pvr_fw_object;
+
+/* Forward declaration from pvr_hwrt.h. */
+struct pvr_hwrt_data;
+
+struct pvr_cccb {
+	/** @ctrl_obj: FW object representing CCCB control structure. */
+	struct pvr_fw_object *ctrl_obj;
+
+	/** @ccb_obj: FW object representing CCCB. */
+	struct pvr_fw_object *cccb_obj;
+
+	/**
+	 * @ctrl: Kernel mapping of CCCB control structure. @lock must be held
+	 *        when accessing.
+	 */
+	struct rogue_fwif_cccb_ctl *ctrl;
+
+	/** @cccb: Kernel mapping of CCCB. @lock must be held when accessing.*/
+	u8 *cccb;
+
+	/** @ctrl_fw_addr: FW virtual address of CCCB control structure. */
+	u32 ctrl_fw_addr;
+	/** @ccb_fw_addr: FW virtual address of CCCB. */
+	u32 cccb_fw_addr;
+
+	/** @size: Size of CCCB in bytes. */
+	size_t size;
+
+	/** @write_offset: CCCB write offset. */
+	u32 write_offset;
+
+	/** @wrap_mask: CCCB wrap mask. */
+	u32 wrap_mask;
+};
+
+int pvr_cccb_init(struct pvr_device *pvr_dev, struct pvr_cccb *cccb,
+		  u32 size_log2, const char *name);
+void pvr_cccb_fini(struct pvr_cccb *cccb);
+
+void pvr_cccb_write_command_with_header(struct pvr_cccb *pvr_cccb,
+					u32 cmd_type, u32 cmd_size, void *cmd_data,
+					u32 ext_job_ref, u32 int_job_ref);
+void pvr_cccb_send_kccb_kick(struct pvr_device *pvr_dev,
+			     struct pvr_cccb *pvr_cccb, u32 cctx_fw_addr,
+			     struct pvr_hwrt_data *hwrt);
+void pvr_cccb_send_kccb_combined_kick(struct pvr_device *pvr_dev,
+				      struct pvr_cccb *geom_cccb,
+				      struct pvr_cccb *frag_cccb,
+				      u32 geom_ctx_fw_addr,
+				      u32 frag_ctx_fw_addr,
+				      struct pvr_hwrt_data *hwrt,
+				      bool frag_is_pr);
+bool pvr_cccb_cmdseq_fits(struct pvr_cccb *pvr_cccb, size_t size);
+
+/**
+ * pvr_cccb_get_size_of_cmd_with_hdr() - Get the size of a command and its header.
+ * @cmd_size: Command size.
+ *
+ * Returns the size of the command and its header.
+ */
+static __always_inline u32
+pvr_cccb_get_size_of_cmd_with_hdr(u32 cmd_size)
+{
+	WARN_ON(!IS_ALIGNED(cmd_size, 8));
+	return sizeof(struct rogue_fwif_ccb_cmd_header) + ALIGN(cmd_size, 8);
+}
+
+/**
+ * pvr_cccb_cmdseq_can_fit() - Check if a command sequence can fit in the CCCB.
+ * @size: Command sequence size.
+ *
+ * Returns:
+ *  * true it the CCCB is big enough to contain a command sequence, or
+ *  * false otherwise.
+ */
+static __always_inline bool
+pvr_cccb_cmdseq_can_fit(struct pvr_cccb *pvr_cccb, size_t size)
+{
+	/* We divide the capacity by two to simplify our CCCB fencing logic:
+	 * we want to be sure that, no matter what we had queued before, we
+	 * are able to either queue our command sequence at the end or add a
+	 * padding command and queue the command sequence at the beginning
+	 * of the CCCB. If the command sequence size is bigger than half the
+	 * CCCB capacity, we'd have to queue the padding command and make sure
+	 * the FW is done processing it before queueing our command sequence.
+	 */
+	return size + PADDING_COMMAND_SIZE <= pvr_cccb->size / 2;
+}
+
+#endif /* PVR_CCCB_H */
diff --git a/drivers/gpu/drm/imagination/pvr_context.c b/drivers/gpu/drm/imagination/pvr_context.c
new file mode 100644
index 000000000000..7ade4d395d1d
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_context.c
@@ -0,0 +1,341 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_cccb.h"
+#include "pvr_context.h"
+#include "pvr_device.h"
+#include "pvr_drv.h"
+#include "pvr_gem.h"
+#include "pvr_power.h"
+#include "pvr_rogue_fwif.h"
+#include "pvr_rogue_fwif_common.h"
+#include "pvr_rogue_fwif_resetframework.h"
+#include "pvr_stream_defs.h"
+#include "pvr_vm.h"
+
+#include <drm/drm_auth.h>
+#include <drm/drm_managed.h>
+#include <linux/errno.h>
+#include <linux/kernel.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/types.h>
+#include <linux/xarray.h>
+
+static int
+remap_priority(struct pvr_file *pvr_file, s32 uapi_priority,
+	       enum pvr_context_priority *priority_out)
+{
+	switch (uapi_priority) {
+	case DRM_PVR_CTX_PRIORITY_LOW:
+		*priority_out = PVR_CTX_PRIORITY_LOW;
+		break;
+	case DRM_PVR_CTX_PRIORITY_NORMAL:
+		*priority_out = PVR_CTX_PRIORITY_MEDIUM;
+		break;
+	case DRM_PVR_CTX_PRIORITY_HIGH:
+		if (!capable(CAP_SYS_NICE) && !drm_is_current_master(from_pvr_file(pvr_file)))
+			return -EACCES;
+		*priority_out = PVR_CTX_PRIORITY_HIGH;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int get_fw_obj_size(enum drm_pvr_ctx_type type)
+{
+	switch (type) {
+	case DRM_PVR_CTX_TYPE_RENDER:
+		return sizeof(struct rogue_fwif_fwrendercontext);
+	case DRM_PVR_CTX_TYPE_COMPUTE:
+		return sizeof(struct rogue_fwif_fwcomputecontext);
+	case DRM_PVR_CTX_TYPE_TRANSFER_FRAG:
+		return sizeof(struct rogue_fwif_fwtransfercontext);
+	}
+
+	return -EINVAL;
+}
+
+static int
+process_static_context_state(struct pvr_device *pvr_dev, const struct pvr_stream_cmd_defs *cmd_defs,
+			     u64 stream_user_ptr, u32 stream_size, void *dest)
+{
+	void *stream;
+	int err;
+
+	stream = kzalloc(stream_size, GFP_KERNEL);
+	if (!stream)
+		return -ENOMEM;
+
+	if (copy_from_user(stream, u64_to_user_ptr(stream_user_ptr), stream_size)) {
+		err = -EFAULT;
+		goto err_free;
+	}
+
+	err = pvr_stream_process(pvr_dev, cmd_defs, stream, stream_size, dest);
+	if (err)
+		goto err_free;
+
+	kfree(stream);
+
+	return 0;
+
+err_free:
+	kfree(stream);
+
+	return err;
+}
+
+static int init_render_fw_objs(struct pvr_context *ctx,
+			       struct drm_pvr_ioctl_create_context_args *args,
+			       void *fw_ctx_map)
+{
+	struct rogue_fwif_static_rendercontext_state *static_rendercontext_state;
+	struct rogue_fwif_fwrendercontext *fw_render_context = fw_ctx_map;
+
+	if (!args->static_context_state_len)
+		return -EINVAL;
+
+	static_rendercontext_state = &fw_render_context->static_render_context_state;
+
+	/* Copy static render context state from userspace. */
+	return process_static_context_state(ctx->pvr_dev,
+					    &pvr_static_render_context_state_stream,
+					    args->static_context_state,
+					    args->static_context_state_len,
+					    &static_rendercontext_state->ctxswitch_regs[0]);
+}
+
+static int init_compute_fw_objs(struct pvr_context *ctx,
+				struct drm_pvr_ioctl_create_context_args *args,
+				void *fw_ctx_map)
+{
+	struct rogue_fwif_fwcomputecontext *fw_compute_context = fw_ctx_map;
+	struct rogue_fwif_cdm_registers_cswitch *ctxswitch_regs;
+
+	if (!args->static_context_state_len)
+		return -EINVAL;
+
+	ctxswitch_regs = &fw_compute_context->static_compute_context_state.ctxswitch_regs;
+
+	/* Copy static render context state from userspace. */
+	return process_static_context_state(ctx->pvr_dev,
+					    &pvr_static_compute_context_state_stream,
+					    args->static_context_state,
+					    args->static_context_state_len,
+					    ctxswitch_regs);
+}
+
+static int init_transfer_fw_objs(struct pvr_context *ctx,
+				 struct drm_pvr_ioctl_create_context_args *args,
+				 void *fw_ctx_map)
+{
+	if (args->static_context_state_len)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int init_fw_objs(struct pvr_context *ctx,
+			struct drm_pvr_ioctl_create_context_args *args,
+			void *fw_ctx_map)
+{
+	switch (ctx->type) {
+	case DRM_PVR_CTX_TYPE_RENDER:
+		return init_render_fw_objs(ctx, args, fw_ctx_map);
+	case DRM_PVR_CTX_TYPE_COMPUTE:
+		return init_compute_fw_objs(ctx, args, fw_ctx_map);
+	case DRM_PVR_CTX_TYPE_TRANSFER_FRAG:
+		return init_transfer_fw_objs(ctx, args, fw_ctx_map);
+	}
+
+	return -EINVAL;
+}
+
+static void
+ctx_fw_data_init(void *cpu_ptr, void *priv)
+{
+	struct pvr_context *ctx = priv;
+
+	memcpy(cpu_ptr, ctx->data, ctx->data_size);
+}
+
+/**
+ * pvr_context_create() - Create a context.
+ * @pvr_file: File to attach the created context to.
+ * @args: Context creation arguments.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * A negative error code on failure.
+ */
+int pvr_context_create(struct pvr_file *pvr_file, struct drm_pvr_ioctl_create_context_args *args)
+{
+	struct pvr_device *pvr_dev = pvr_file->pvr_dev;
+	struct pvr_context *ctx;
+	int ctx_size;
+	int err;
+
+	/* Context creation flags are currently unused and must be zero. */
+	if (args->flags)
+		return -EINVAL;
+
+	ctx_size = get_fw_obj_size(args->type);
+	if (ctx_size < 0)
+		return ctx_size;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->data_size = ctx_size;
+	ctx->type = args->type;
+	ctx->flags = args->flags;
+	ctx->pvr_dev = pvr_dev;
+	kref_init(&ctx->ref_count);
+
+	err = remap_priority(pvr_file, args->priority, &ctx->priority);
+	if (err)
+		goto err_free_ctx;
+
+	ctx->vm_ctx = pvr_vm_context_lookup(pvr_file, args->vm_context_handle);
+	if (IS_ERR(ctx->vm_ctx)) {
+		err = PTR_ERR(ctx->vm_ctx);
+		goto err_free_ctx;
+	}
+
+	ctx->data = kzalloc(ctx_size, GFP_KERNEL);
+	if (!ctx->data) {
+		err = -ENOMEM;
+		goto err_put_vm;
+	}
+
+	err = init_fw_objs(ctx, args, ctx->data);
+	if (err)
+		goto err_free_ctx_data;
+
+	err = pvr_fw_object_create(pvr_dev, ctx_size, PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+				   ctx_fw_data_init, ctx, &ctx->fw_obj);
+	if (err)
+		goto err_free_ctx_data;
+
+	err = xa_alloc(&pvr_dev->ctx_ids, &ctx->ctx_id, ctx, xa_limit_32b, GFP_KERNEL);
+	if (err)
+		goto err_destroy_fw_obj;
+
+	err = xa_alloc(&pvr_file->ctx_handles, &args->handle, ctx, xa_limit_32b, GFP_KERNEL);
+	if (err) {
+		/*
+		 * It's possible that another thread could have taken a reference on the context at
+		 * this point as it is in the ctx_ids xarray. Therefore instead of directly
+		 * destroying the context, drop a reference instead.
+		 */
+		pvr_context_put(ctx);
+		return err;
+	}
+
+	return 0;
+
+err_destroy_fw_obj:
+	pvr_fw_object_destroy(ctx->fw_obj);
+
+err_free_ctx_data:
+	kfree(ctx->data);
+
+err_put_vm:
+	pvr_vm_context_put(ctx->vm_ctx);
+
+err_free_ctx:
+	kfree(ctx);
+	return err;
+}
+
+static void
+pvr_context_release(struct kref *ref_count)
+{
+	struct pvr_context *ctx =
+		container_of(ref_count, struct pvr_context, ref_count);
+	struct pvr_device *pvr_dev = ctx->pvr_dev;
+
+	xa_erase(&pvr_dev->ctx_ids, ctx->ctx_id);
+	pvr_fw_object_destroy(ctx->fw_obj);
+	kfree(ctx->data);
+	pvr_vm_context_put(ctx->vm_ctx);
+	kfree(ctx);
+}
+
+/**
+ * pvr_context_put() - Release reference on context
+ * @ctx: Target context.
+ */
+void
+pvr_context_put(struct pvr_context *ctx)
+{
+	if (ctx)
+		kref_put(&ctx->ref_count, pvr_context_release);
+}
+
+/**
+ * pvr_context_destroy() - Destroy context
+ * @pvr_file: Pointer to pvr_file structure.
+ * @handle: Userspace context handle.
+ *
+ * Removes context from context list and drops initial reference. Context will
+ * then be destroyed once all outstanding references are dropped.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if context not in context list.
+ */
+int
+pvr_context_destroy(struct pvr_file *pvr_file, u32 handle)
+{
+	struct pvr_context *ctx = xa_erase(&pvr_file->ctx_handles, handle);
+
+	if (!ctx)
+		return -EINVAL;
+
+	/* Release the reference held by the handle set. */
+	pvr_context_put(ctx);
+
+	return 0;
+}
+
+/**
+ * pvr_destroy_contexts_for_file: Destroy any contexts associated with the given file
+ * @pvr_file: Pointer to pvr_file structure.
+ *
+ * Removes all contexts associated with @pvr_file from the device context list and drops initial
+ * references. Contexts will then be destroyed once all outstanding references are dropped.
+ */
+void pvr_destroy_contexts_for_file(struct pvr_file *pvr_file)
+{
+	struct pvr_context *ctx;
+	unsigned long handle;
+
+	xa_for_each(&pvr_file->ctx_handles, handle, ctx)
+		pvr_context_destroy(pvr_file, handle);
+}
+
+/**
+ * pvr_context_device_init() - Device level initialization for queue related resources.
+ * @pvr_dev: The device to initialize.
+ */
+void pvr_context_device_init(struct pvr_device *pvr_dev)
+{
+	xa_init_flags(&pvr_dev->ctx_ids, XA_FLAGS_ALLOC1);
+}
+
+/**
+ * pvr_context_device_fini() - Device level cleanup for queue related resources.
+ * @pvr_dev: The device to cleanup.
+ */
+void pvr_context_device_fini(struct pvr_device *pvr_dev)
+{
+	WARN_ON(!xa_empty(&pvr_dev->ctx_ids));
+	xa_destroy(&pvr_dev->ctx_ids);
+}
diff --git a/drivers/gpu/drm/imagination/pvr_context.h b/drivers/gpu/drm/imagination/pvr_context.h
new file mode 100644
index 000000000000..fa7115380272
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_context.h
@@ -0,0 +1,161 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_CONTEXT_H
+#define PVR_CONTEXT_H
+
+#include <drm/gpu_scheduler.h>
+
+#include <linux/compiler_attributes.h>
+#include <linux/dma-fence.h>
+#include <linux/kref.h>
+#include <linux/types.h>
+#include <linux/xarray.h>
+#include <uapi/drm/pvr_drm.h>
+
+#include "pvr_cccb.h"
+#include "pvr_device.h"
+
+/* Forward declaration from pvr_gem.h. */
+struct pvr_fw_object;
+
+enum pvr_context_priority {
+	PVR_CTX_PRIORITY_LOW = 0,
+	PVR_CTX_PRIORITY_MEDIUM,
+	PVR_CTX_PRIORITY_HIGH,
+};
+
+/**
+ * struct pvr_context - Context data
+ */
+struct pvr_context {
+	/** @ref_count: Refcount for context. */
+	struct kref ref_count;
+
+	/** @pvr_dev: Pointer to owning device. */
+	struct pvr_device *pvr_dev;
+
+	/** @vm_ctx: Pointer to associated VM context. */
+	struct pvr_vm_context *vm_ctx;
+
+	/** @type: Type of context. */
+	enum drm_pvr_ctx_type type;
+
+	/** @flags: Context flags. */
+	u32 flags;
+
+	/** @priority: Context priority*/
+	enum pvr_context_priority priority;
+
+	/** @fw_obj: FW object representing FW-side context data. */
+	struct pvr_fw_object *fw_obj;
+
+	/** @data: Pointer to local copy of FW context data. */
+	void *data;
+
+	/** @data_size: Size of FW context data, in bytes. */
+	u32 data_size;
+
+	/** @ctx_id: FW context ID. */
+	u32 ctx_id;
+};
+
+/**
+ * pvr_context_get() - Take additional reference on context.
+ * @ctx: Context pointer.
+ *
+ * Call pvr_context_put() to release.
+ *
+ * Returns:
+ *  * The requested context on success, or
+ *  * %NULL if no context pointer passed.
+ */
+static __always_inline struct pvr_context *
+pvr_context_get(struct pvr_context *ctx)
+{
+	if (ctx)
+		kref_get(&ctx->ref_count);
+
+	return ctx;
+}
+
+/**
+ * pvr_context_lookup() - Lookup context pointer from handle and file.
+ * @pvr_file: Pointer to pvr_file structure.
+ * @handle: Context handle.
+ *
+ * Takes reference on context. Call pvr_context_put() to release.
+ *
+ * Return:
+ *  * The requested context on success, or
+ *  * %NULL on failure (context does not exist, or does not belong to @pvr_file).
+ */
+static __always_inline struct pvr_context *
+pvr_context_lookup(struct pvr_file *pvr_file, u32 handle)
+{
+	struct pvr_context *ctx;
+
+	/* Take the array lock to protect against context removal.  */
+	xa_lock(&pvr_file->ctx_handles);
+	ctx = pvr_context_get(xa_load(&pvr_file->ctx_handles, handle));
+	xa_unlock(&pvr_file->ctx_handles);
+
+	return ctx;
+}
+
+/**
+ * pvr_context_lookup_id() - Lookup context pointer from ID.
+ * @pvr_dev: Device pointer.
+ * @id: FW context ID.
+ *
+ * Takes reference on context. Call pvr_context_put() to release.
+ *
+ * Return:
+ *  * The requested context on success, or
+ *  * %NULL on failure (context does not exist).
+ */
+static __always_inline struct pvr_context *
+pvr_context_lookup_id(struct pvr_device *pvr_dev, u32 id)
+{
+	struct pvr_context *ctx;
+
+	/* Take the array lock to protect against context removal.  */
+	xa_lock(&pvr_dev->ctx_ids);
+
+	/* Contexts are removed from the ctx_ids set in the context release path,
+	 * meaning the ref_count reached zero before they get removed. We need
+	 * to make sure we're not trying to acquire a context that's being
+	 * destroyed.
+	 */
+	ctx = xa_load(&pvr_dev->ctx_ids, id);
+	if (!kref_get_unless_zero(&ctx->ref_count))
+		ctx = NULL;
+
+	xa_unlock(&pvr_dev->ctx_ids);
+
+	return ctx;
+}
+
+static __always_inline u32
+pvr_context_get_fw_addr(struct pvr_context *ctx)
+{
+	u32 ctx_fw_addr = 0;
+
+	pvr_fw_object_get_fw_addr(ctx->fw_obj, &ctx_fw_addr);
+
+	return ctx_fw_addr;
+}
+
+void pvr_context_put(struct pvr_context *ctx);
+
+int pvr_context_create(struct pvr_file *pvr_file, struct drm_pvr_ioctl_create_context_args *args);
+
+int pvr_context_destroy(struct pvr_file *pvr_file, u32 handle);
+
+void pvr_destroy_contexts_for_file(struct pvr_file *pvr_file);
+
+void pvr_context_device_init(struct pvr_device *pvr_dev);
+
+void pvr_context_device_fini(struct pvr_device *pvr_dev);
+
+#endif /* PVR_CONTEXT_H */
diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index 84166266ace8..d419e4cc0214 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -7,6 +7,8 @@
 #include "pvr_ccb.h"
 #include "pvr_device_info.h"
 #include "pvr_fw.h"
+#include "pvr_rogue_fwif_stream.h"
+#include "pvr_stream.h"
 
 #include <drm/drm_device.h>
 #include <drm/drm_file.h>
@@ -146,6 +148,17 @@ struct pvr_device {
 	/** @fw_dev: Firmware related data. */
 	struct pvr_fw_device fw_dev;
 
+	/** @stream_musthave_quirks: Bit array of "must-have" quirks for stream commands. */
+	u32 stream_musthave_quirks[PVR_STREAM_TYPE_MAX][PVR_STREAM_EXTHDR_TYPE_MAX];
+
+	/**
+	 * @ctx_ids: Array of contexts belonging to this device. Array members
+	 *           are of type "struct pvr_context *".
+	 *
+	 * This array is used to allocate IDs used by the firmware.
+	 */
+	struct xarray ctx_ids;
+
 	/**
 	 * @free_list_ids: Array of free lists belonging to this device. Array members
 	 *                 are of type "struct pvr_free_list *".
@@ -249,6 +262,14 @@ struct pvr_file {
 	 */
 	struct pvr_device *pvr_dev;
 
+	/**
+	 * @ctx_handles: Array of contexts belonging to this file. Array members
+	 *               are of type "struct pvr_context *".
+	 *
+	 * This array is used to allocate handles returned to userspace.
+	 */
+	struct xarray ctx_handles;
+
 	/**
 	 * @free_list_handles: Array of free lists belonging to this file. Array
 	 * members are of type "struct pvr_free_list *".
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index 9a3f34fdced1..138eee20f238 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0 OR MIT
 /* Copyright (c) 2023 Imagination Technologies Ltd. */
 
+#include "pvr_context.h"
 #include "pvr_device.h"
 #include "pvr_drv.h"
 #include "pvr_free_list.h"
@@ -685,7 +686,19 @@ static int
 pvr_ioctl_create_context(struct drm_device *drm_dev, void *raw_args,
 			 struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_create_context_args *args = raw_args;
+	struct pvr_file *pvr_file = file->driver_priv;
+	int idx;
+	int ret;
+
+	if (!drm_dev_enter(drm_dev, &idx))
+		return -EIO;
+
+	ret = pvr_context_create(pvr_file, args);
+
+	drm_dev_exit(idx);
+
+	return ret;
 }
 
 /**
@@ -705,7 +718,13 @@ static int
 pvr_ioctl_destroy_context(struct drm_device *drm_dev, void *raw_args,
 			  struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_destroy_context_args *args = raw_args;
+	struct pvr_file *pvr_file = file->driver_priv;
+
+	if (args->_padding_4)
+		return -EINVAL;
+
+	return pvr_context_destroy(pvr_file, args->handle);
 }
 
 /**
@@ -1301,6 +1320,7 @@ pvr_drm_driver_open(struct drm_device *drm_dev, struct drm_file *file)
 	 */
 	pvr_file->pvr_dev = pvr_dev;
 
+	xa_init_flags(&pvr_file->ctx_handles, XA_FLAGS_ALLOC1);
 	xa_init_flags(&pvr_file->free_list_handles, XA_FLAGS_ALLOC1);
 	xa_init_flags(&pvr_file->hwrt_handles, XA_FLAGS_ALLOC1);
 	xa_init_flags(&pvr_file->vm_ctx_handles, XA_FLAGS_ALLOC1);
@@ -1330,6 +1350,9 @@ pvr_drm_driver_postclose(__always_unused struct drm_device *drm_dev,
 {
 	struct pvr_file *pvr_file = to_pvr_file(file);
 
+	/* Kill remaining contexts. */
+	pvr_destroy_contexts_for_file(pvr_file);
+
 	/* Drop references on any remaining objects. */
 	pvr_destroy_free_lists_for_file(pvr_file);
 	pvr_destroy_hwrt_datasets_for_file(pvr_file);
@@ -1375,6 +1398,7 @@ pvr_probe(struct platform_device *plat_dev)
 	drm_dev = &pvr_dev->base;
 
 	platform_set_drvdata(plat_dev, drm_dev);
+	pvr_context_device_init(pvr_dev);
 
 	devm_pm_runtime_enable(&plat_dev->dev);
 	pm_runtime_mark_last_busy(&plat_dev->dev);
@@ -1418,6 +1442,7 @@ pvr_remove(struct platform_device *plat_dev)
 	drm_dev_unplug(drm_dev);
 	pvr_device_fini(pvr_dev);
 	pvr_watchdog_fini(pvr_dev);
+	pvr_context_device_fini(pvr_dev);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/imagination/pvr_stream.c b/drivers/gpu/drm/imagination/pvr_stream.c
new file mode 100644
index 000000000000..7603db7e79a7
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_stream.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_device.h"
+#include "pvr_rogue_fwif_stream.h"
+#include "pvr_stream.h"
+
+#include <linux/align.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+#include <uapi/drm/pvr_drm.h>
+
+static __always_inline bool
+stream_def_is_supported(struct pvr_device *pvr_dev, const struct pvr_stream_def *stream_def)
+{
+	if (stream_def->feature == PVR_FEATURE_NONE)
+		return true;
+
+	if (!(stream_def->feature & PVR_FEATURE_NOT) &&
+	    pvr_device_has_feature(pvr_dev, stream_def->feature)) {
+		return true;
+	}
+
+	if ((stream_def->feature & PVR_FEATURE_NOT) &&
+	    !pvr_device_has_feature(pvr_dev, stream_def->feature & ~PVR_FEATURE_NOT)) {
+		return true;
+	}
+
+	return false;
+}
+
+static int
+pvr_stream_get_data(u8 *stream, u32 *stream_offset, u32 stream_size, u32 data_size, u32 align_size,
+		    void *dest)
+{
+	*stream_offset = ALIGN(*stream_offset, align_size);
+
+	if ((*stream_offset + data_size) > stream_size)
+		return -EINVAL;
+
+	memcpy(dest, stream + *stream_offset, data_size);
+
+	(*stream_offset) += data_size;
+
+	return 0;
+}
+
+/**
+ * pvr_stream_process_1() - Process a single stream and fill destination structure
+ * @pvr_dev: Device pointer.
+ * @stream_def: Stream definition.
+ * @nr_entries: Number of entries in &stream_def.
+ * @stream: Pointer to stream.
+ * @stream_offset: Starting offset within stream.
+ * @stream_size: Size of input stream, in bytes.
+ * @dest: Pointer to destination structure.
+ * @dest_size: Size of destination structure.
+ * @stream_offset_out: Pointer to variable to write updated stream offset to. May be NULL.
+ *
+ * Returns:
+ *  * 0 on success, or
+ *  * -%EINVAL on malformed stream.
+ */
+static int
+pvr_stream_process_1(struct pvr_device *pvr_dev, const struct pvr_stream_def *stream_def,
+		     u32 nr_entries, u8 *stream, u32 stream_offset, u32 stream_size,
+		     u8 *dest, u32 dest_size, u32 *stream_offset_out)
+{
+	int err = 0;
+	u32 i;
+
+	for (i = 0; i < nr_entries; i++) {
+		if (stream_def[i].offset >= dest_size) {
+			err = -EINVAL;
+			break;
+		}
+
+		if (!stream_def_is_supported(pvr_dev, &stream_def[i]))
+			continue;
+
+		switch (stream_def[i].size) {
+		case PVR_STREAM_SIZE_8:
+			err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u8),
+						  sizeof(u8), dest + stream_def[i].offset);
+			if (err)
+				return err;
+			break;
+
+		case PVR_STREAM_SIZE_16:
+			err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u16),
+						  sizeof(u16), dest + stream_def[i].offset);
+			if (err)
+				return err;
+			break;
+
+		case PVR_STREAM_SIZE_32:
+			err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u32),
+						  sizeof(u32), dest + stream_def[i].offset);
+			if (err)
+				return err;
+			break;
+
+		case PVR_STREAM_SIZE_64:
+			err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u64),
+						  sizeof(u64), dest + stream_def[i].offset);
+			if (err)
+				return err;
+			break;
+
+		case PVR_STREAM_SIZE_ARRAY:
+			err = pvr_stream_get_data(stream, &stream_offset, stream_size,
+						  stream_def[i].array_size, sizeof(u64),
+						  dest + stream_def[i].offset);
+			if (err)
+				return err;
+			break;
+		}
+	}
+
+	if (stream_offset_out)
+		*stream_offset_out = stream_offset;
+
+	return 0;
+}
+
+static int
+pvr_stream_process_ext_stream(struct pvr_device *pvr_dev,
+			      const struct pvr_stream_cmd_defs *cmd_defs, void *ext_stream,
+			      u32 stream_offset, u32 ext_stream_size, void *dest)
+{
+	u32 musthave_masks[PVR_STREAM_EXTHDR_TYPE_MAX];
+	u32 ext_header;
+	int err = 0;
+	u32 i;
+
+	/* Copy "must have" mask from device. We clear this as we process the stream. */
+	memcpy(musthave_masks, pvr_dev->stream_musthave_quirks[cmd_defs->type],
+	       sizeof(musthave_masks));
+
+	do {
+		const struct pvr_stream_ext_header *header;
+		u32 type;
+		u32 data;
+
+		err = pvr_stream_get_data(ext_stream, &stream_offset, ext_stream_size, sizeof(u32),
+					  sizeof(ext_header), &ext_header);
+		if (err)
+			return err;
+
+		type = (ext_header & PVR_STREAM_EXTHDR_TYPE_MASK) >> PVR_STREAM_EXTHDR_TYPE_SHIFT;
+		data = ext_header & PVR_STREAM_EXTHDR_DATA_MASK;
+
+		if (type >= cmd_defs->ext_nr_headers)
+			return -EINVAL;
+
+		header = &cmd_defs->ext_headers[type];
+		if (data & ~header->valid_mask)
+			return -EINVAL;
+
+		musthave_masks[type] &= ~data;
+
+		for (i = 0; i < header->ext_streams_num; i++) {
+			const struct pvr_stream_ext_def *ext_def = &header->ext_streams[i];
+
+			if (!(ext_header & ext_def->header_mask))
+				continue;
+
+			if (!pvr_device_has_uapi_quirk(pvr_dev, ext_def->quirk))
+				return -EINVAL;
+
+			err = pvr_stream_process_1(pvr_dev, ext_def->stream, ext_def->stream_len,
+						   ext_stream, stream_offset,
+						   ext_stream_size, dest,
+						   cmd_defs->dest_size, &stream_offset);
+			if (err)
+				return err;
+		}
+	} while (ext_header & PVR_STREAM_EXTHDR_CONTINUATION);
+
+	/*
+	 * Verify that "must have" mask is now zero. If it isn't then one of the "must have" quirks
+	 * for this command was not present.
+	 */
+	for (i = 0; i < cmd_defs->ext_nr_headers; i++) {
+		if (musthave_masks[i])
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * pvr_stream_process() - Build FW structure from stream
+ * @pvr_dev: Device pointer.
+ * @cmd_defs: Stream definition.
+ * @stream: Pointer to command stream.
+ * @stream_size: Size of command stream, in bytes.
+ * @dest_out: Pointer to destination buffer.
+ *
+ * Caller is responsible for freeing the output structure.
+ *
+ * Returns:
+ *  * 0 on success,
+ *  * -%ENOMEM on out of memory, or
+ *  * -%EINVAL on malformed stream.
+ */
+int
+pvr_stream_process(struct pvr_device *pvr_dev, const struct pvr_stream_cmd_defs *cmd_defs,
+		   void *stream, u32 stream_size, void *dest_out)
+{
+	u32 stream_offset = 0;
+	u32 main_stream_len;
+	u32 padding;
+	int err;
+
+	if (!stream || !stream_size)
+		return -EINVAL;
+
+	err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u32),
+				  sizeof(u32), &main_stream_len);
+	if (err)
+		return err;
+
+	/*
+	 * u32 after stream length is padding to ensure u64 alignment, but may be used for expansion
+	 * in the future. Verify it's zero.
+	 */
+	err = pvr_stream_get_data(stream, &stream_offset, stream_size, sizeof(u32),
+				  sizeof(u32), &padding);
+	if (err)
+		return err;
+
+	if (main_stream_len < stream_offset || main_stream_len > stream_size || padding)
+		return -EINVAL;
+
+	err = pvr_stream_process_1(pvr_dev, cmd_defs->main_stream, cmd_defs->main_stream_len,
+				   stream, stream_offset, main_stream_len, dest_out,
+				   cmd_defs->dest_size, &stream_offset);
+	if (err)
+		return err;
+
+	if (stream_offset < stream_size) {
+		err = pvr_stream_process_ext_stream(pvr_dev, cmd_defs, stream, stream_offset,
+						    stream_size, dest_out);
+		if (err)
+			return err;
+	} else {
+		u32 i;
+
+		/*
+		 * If we don't have an extension stream then there must not be any "must have"
+		 * quirks for this command.
+		 */
+		for (i = 0; i < cmd_defs->ext_nr_headers; i++) {
+			if (pvr_dev->stream_musthave_quirks[cmd_defs->type][i])
+				return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * pvr_stream_create_musthave_masks() - Create "must have" masks for streams based on current device
+ *                                      quirks
+ * @pvr_dev: Device pointer.
+ */
+void
+pvr_stream_create_musthave_masks(struct pvr_device *pvr_dev)
+{
+	memset(pvr_dev->stream_musthave_quirks, 0, sizeof(pvr_dev->stream_musthave_quirks));
+
+	if (pvr_device_has_uapi_quirk(pvr_dev, 47217))
+		pvr_dev->stream_musthave_quirks[PVR_STREAM_TYPE_FRAG][0] |=
+			PVR_STREAM_EXTHDR_FRAG0_BRN47217;
+
+	if (pvr_device_has_uapi_quirk(pvr_dev, 49927)) {
+		pvr_dev->stream_musthave_quirks[PVR_STREAM_TYPE_GEOM][0] |=
+			PVR_STREAM_EXTHDR_GEOM0_BRN49927;
+		pvr_dev->stream_musthave_quirks[PVR_STREAM_TYPE_FRAG][0] |=
+			PVR_STREAM_EXTHDR_FRAG0_BRN49927;
+		pvr_dev->stream_musthave_quirks[PVR_STREAM_TYPE_COMPUTE][0] |=
+			PVR_STREAM_EXTHDR_COMPUTE0_BRN49927;
+	}
+}
diff --git a/drivers/gpu/drm/imagination/pvr_stream.h b/drivers/gpu/drm/imagination/pvr_stream.h
new file mode 100644
index 000000000000..ecc5edfb7bf4
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_stream.h
@@ -0,0 +1,75 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_STREAM_H
+#define PVR_STREAM_H
+
+#include <linux/bits.h>
+#include <linux/limits.h>
+#include <linux/types.h>
+
+struct pvr_device;
+
+struct pvr_job;
+
+enum pvr_stream_type {
+	PVR_STREAM_TYPE_GEOM = 0,
+	PVR_STREAM_TYPE_FRAG,
+	PVR_STREAM_TYPE_COMPUTE,
+	PVR_STREAM_TYPE_TRANSFER,
+	PVR_STREAM_TYPE_STATIC_RENDER_CONTEXT,
+	PVR_STREAM_TYPE_STATIC_COMPUTE_CONTEXT,
+
+	PVR_STREAM_TYPE_MAX
+};
+
+enum pvr_stream_size {
+	PVR_STREAM_SIZE_8 = 0,
+	PVR_STREAM_SIZE_16,
+	PVR_STREAM_SIZE_32,
+	PVR_STREAM_SIZE_64,
+	PVR_STREAM_SIZE_ARRAY,
+};
+
+#define PVR_FEATURE_NOT  BIT(31)
+#define PVR_FEATURE_NONE U32_MAX
+
+struct pvr_stream_def {
+	u32 offset;
+	enum pvr_stream_size size;
+	u32 array_size;
+	u32 feature;
+};
+
+struct pvr_stream_ext_def {
+	const struct pvr_stream_def *stream;
+	u32 stream_len;
+	u32 header_mask;
+	u32 quirk;
+};
+
+struct pvr_stream_ext_header {
+	const struct pvr_stream_ext_def *ext_streams;
+	u32 ext_streams_num;
+	u32 valid_mask;
+};
+
+struct pvr_stream_cmd_defs {
+	enum pvr_stream_type type;
+
+	const struct pvr_stream_def *main_stream;
+	u32 main_stream_len;
+
+	u32 ext_nr_headers;
+	const struct pvr_stream_ext_header *ext_headers;
+
+	size_t dest_size;
+};
+
+int
+pvr_stream_process(struct pvr_device *pvr_dev, const struct pvr_stream_cmd_defs *cmd_defs,
+		   void *stream, u32 stream_size, void *dest_out);
+void
+pvr_stream_create_musthave_masks(struct pvr_device *pvr_dev);
+
+#endif /* PVR_STREAM_H */
diff --git a/drivers/gpu/drm/imagination/pvr_stream_defs.c b/drivers/gpu/drm/imagination/pvr_stream_defs.c
new file mode 100644
index 000000000000..3c646e25accf
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_stream_defs.c
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_device_info.h"
+#include "pvr_rogue_fwif_client.h"
+#include "pvr_rogue_fwif_stream.h"
+#include "pvr_stream.h"
+#include "pvr_stream_defs.h"
+
+#include <linux/stddef.h>
+#include <uapi/drm/pvr_drm.h>
+
+#define PVR_STREAM_DEF_SET(owner, member, _size, _array_size, _feature) \
+	{ .offset = offsetof(struct owner, member), \
+	  .size = (_size),  \
+	  .array_size = (_array_size), \
+	  .feature = (_feature) }
+
+#define PVR_STREAM_DEF(owner, member, member_size)  \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ ## member_size, 0, PVR_FEATURE_NONE)
+
+#define PVR_STREAM_DEF_FEATURE(owner, member, member_size, feature) \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ ## member_size, 0, feature)
+
+#define PVR_STREAM_DEF_NOT_FEATURE(owner, member, member_size, feature)       \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ ## member_size, 0, \
+			   (feature) | PVR_FEATURE_NOT)
+
+#define PVR_STREAM_DEF_ARRAY(owner, member)                                       \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ARRAY,                  \
+			   sizeof(((struct owner *)0)->member), PVR_FEATURE_NONE)
+
+#define PVR_STREAM_DEF_ARRAY_FEATURE(owner, member, feature)            \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ARRAY,         \
+			   sizeof(((struct owner *)0)->member), feature)
+
+#define PVR_STREAM_DEF_ARRAY_NOT_FEATURE(owner, member, feature)                             \
+	PVR_STREAM_DEF_SET(owner, member, PVR_STREAM_SIZE_ARRAY,                             \
+			   sizeof(((struct owner *)0)->member), (feature) | PVR_FEATURE_NOT)
+
+/*
+ * When adding new parameters to the stream definition, the new parameters must go after the
+ * existing parameters, to preserve order. As parameters are naturally aligned, care must be taken
+ * with respect to implicit padding in the stream; padding should be minimised as much as possible.
+ */
+static const struct pvr_stream_def rogue_fwif_static_render_context_state_stream[] = {
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_reg_vdm_context_state_base_addr, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_reg_vdm_context_state_resume_addr, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_reg_ta_context_state_base_addr, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_store_task0, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_store_task1, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_store_task2, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_store_task3, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_store_task4, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_resume_task0, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_resume_task1, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_resume_task2, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_resume_task3, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[0].geom_reg_vdm_context_resume_task4, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_store_task0, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_store_task1, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_store_task2, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_store_task3, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_store_task4, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_resume_task0, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_resume_task1, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_resume_task2, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_resume_task3, 64),
+	PVR_STREAM_DEF(rogue_fwif_geom_registers_caswitch,
+		       geom_state[1].geom_reg_vdm_context_resume_task4, 64),
+};
+
+const struct pvr_stream_cmd_defs pvr_static_render_context_state_stream = {
+	.type = PVR_STREAM_TYPE_STATIC_RENDER_CONTEXT,
+
+	.main_stream = rogue_fwif_static_render_context_state_stream,
+	.main_stream_len = ARRAY_SIZE(rogue_fwif_static_render_context_state_stream),
+
+	.ext_nr_headers = 0,
+
+	.dest_size = sizeof(struct rogue_fwif_geom_registers_caswitch),
+};
+
+static const struct pvr_stream_def rogue_fwif_static_compute_context_state_stream[] = {
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds0, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds1, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_terminate_pds, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_terminate_pds1, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_resume_pds0, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_context_pds0_b, 64),
+	PVR_STREAM_DEF(rogue_fwif_cdm_registers_cswitch, cdmreg_cdm_resume_pds0_b, 64),
+};
+
+const struct pvr_stream_cmd_defs pvr_static_compute_context_state_stream = {
+	.type = PVR_STREAM_TYPE_STATIC_COMPUTE_CONTEXT,
+
+	.main_stream = rogue_fwif_static_compute_context_state_stream,
+	.main_stream_len = ARRAY_SIZE(rogue_fwif_static_compute_context_state_stream),
+
+	.ext_nr_headers = 0,
+
+	.dest_size = sizeof(struct rogue_fwif_cdm_registers_cswitch),
+};
diff --git a/drivers/gpu/drm/imagination/pvr_stream_defs.h b/drivers/gpu/drm/imagination/pvr_stream_defs.h
new file mode 100644
index 000000000000..7e0ecfa12030
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_stream_defs.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_STREAM_DEFS_H
+#define PVR_STREAM_DEFS_H
+
+#include "pvr_stream.h"
+
+extern const struct pvr_stream_cmd_defs pvr_cmd_geom_stream;
+extern const struct pvr_stream_cmd_defs pvr_cmd_frag_stream;
+extern const struct pvr_stream_cmd_defs pvr_cmd_compute_stream;
+extern const struct pvr_stream_cmd_defs pvr_cmd_transfer_stream;
+extern const struct pvr_stream_cmd_defs pvr_static_render_context_state_stream;
+extern const struct pvr_stream_cmd_defs pvr_static_compute_context_state_stream;
+
+#endif /* PVR_STREAM_DEFS_H */
-- 
2.42.0


