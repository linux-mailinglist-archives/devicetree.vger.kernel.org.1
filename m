Return-Path: <devicetree+bounces-13237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD0E7DD023
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 16:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA5CD1C20C5D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB52B1E517;
	Tue, 31 Oct 2023 15:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="mzR0DFhl";
	dkim=pass (1024-bit key) header.d=IMGTecCRM.onmicrosoft.com header.i=@IMGTecCRM.onmicrosoft.com header.b="J4/rdrUe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798F21DFFA;
	Tue, 31 Oct 2023 15:14:42 +0000 (UTC)
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 677D71BC;
	Tue, 31 Oct 2023 08:14:21 -0700 (PDT)
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39VCJjRe013616;
	Tue, 31 Oct 2023 15:13:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	dk201812; bh=Ylef6Vt61ufWyQfWAZerG/5oqzlrrdQaQ/aeZjqQKvI=; b=mzR
	0DFhlxC/mE1zeLRIRBxbBvks2hArIqJwCbzVRZd09VYthCFhWR5Jev73IEwm2NzN
	zUozJPCRYVrMCxJGIomR2BYS9hInYfsWcsRBTBY0ta+RxpU58wHYRQjNnjkIbb0m
	HUm0XTNDTXuKeX5Bq0s/AsfB0UQbZbCTE8zJu14THGqQi8yWL6p/kkOSHr3OMFCG
	wxxMh5q86mOAMm91osz9zlBiuD6KTgazcYoq+b2DnCwJOuQDb07hb9aGVg8Y9iA0
	JzySKYA3hGhOHknF0P+i6az6SsBGkfYkL8qf5OEWQorl5zkVV9148nYNVpW8Ky3H
	dFy/Cjve+IXS2IHQMOg==
Received: from hhmail04.hh.imgtec.org ([217.156.249.195])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 3u0rjntf42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 31 Oct 2023 15:13:28 +0000 (GMT)
Received: from HHMAIL04.hh.imgtec.org (10.100.10.119) by
 HHMAIL04.hh.imgtec.org (10.100.10.119) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 15:13:27 +0000
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (104.47.21.51) by
 email.imgtec.com (10.100.10.121) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34 via Frontend
 Transport; Tue, 31 Oct 2023 15:13:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BZ7MY0aOJTPlXgalymUH71iN6Ufc5bLIqeWUAxBqYb9qP/jAo806YamdbUCEfL6l5jcd/Hbm0kjMxBC64TrnfLqzR3cdtEUx8PDAE2aVIf3goFet8nWX862cQbKqIJy39SThd1dcd3oSeB9bDd1cfZhgdAG5hrfKTtm1iTsivdX6VF+HJchhz+8LDXPdZbpQ6OK8dyZnGqj/Vsq18Pd1n4jzMXzm9ZcZo1GRLccm+MEwB1TC2ChBF7Eb0kHb2ySCU46n6AFH+DkpNVPGqy3pciGdDy+xIF/+QWcdpUw24DKoXmRpcTojWX0YAJLM8T31meGPoQeBL/B/HvDIGtTeBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ylef6Vt61ufWyQfWAZerG/5oqzlrrdQaQ/aeZjqQKvI=;
 b=muoZUmoaUOlzG5LExdEFjIv9ZGpgV1+Q3QbgSp3IszHRMjPPO3rgbu2EArpDa7nn2AhdvzNAym/8xsHQezXHLIG0/Y1/Ydku7dwg8CSsbfuqx3gl7NqbA6gKQujGIh6ax/gqBKFRg3QXvfu0+dYLU5fUQVhVQ0QhdSwam1SQsYuCVInVppCqVR2NdxqPC44a/ViKZrCptIdCJyLBjkBN/fvzUHuDmFHHXbOUWjDpNTCDRB7l5vIpxwoe+Jy46RFpq2gXy6oe9dxiD0SB6axTc3DwLuUN/aBURW3SJSjs3FrypuVNrXfEtvz36Wxg2C+r0ZTPjkvP3aUfLh07nCVhAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=imgtec.com; dmarc=pass action=none header.from=imgtec.com;
 dkim=pass header.d=imgtec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IMGTecCRM.onmicrosoft.com; s=selector2-IMGTecCRM-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ylef6Vt61ufWyQfWAZerG/5oqzlrrdQaQ/aeZjqQKvI=;
 b=J4/rdrUeUPprcXHgwyCpoq40aptzDcQXITj4Zypy0NrTPipfdIS688RcJNkdC5/Sb7RqU2/XJausLLKgmG7iZvKOcxEfKZwW0Nwt+cNfN+HsojMSftSUwJ3CEdUPltQ+mTD/AqrcQVKabRVHdKCy3Oyr48yeqfym9wp/SnjDQ2k=
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:170::9)
 by CWLP265MB2018.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:6a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.25; Tue, 31 Oct
 2023 15:13:23 +0000
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::eef1:bccc:508d:e086]) by CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::eef1:bccc:508d:e086%5]) with mapi id 15.20.6933.029; Tue, 31 Oct 2023
 15:13:23 +0000
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
Subject: [PATCH v8 15/20] drm/imagination: Implement free list and HWRT create and destroy ioctls
Date: Tue, 31 Oct 2023 15:12:52 +0000
Message-Id: <20231031151257.90350-16-sarah.walker@imgtec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231031151257.90350-1-sarah.walker@imgtec.com>
References: <20231031151257.90350-1-sarah.walker@imgtec.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0301.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:196::18) To CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:170::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CWLP265MB4817:EE_|CWLP265MB2018:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e2e1814-9c15-4595-05af-08dbda23ec7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KzSvLWyuoRICjFg8F7eumM52iKknpR5BhVzaHzokIhiyp5tN208oXSG8Rl4eOFdzWJMd0d5LhnfbEdhAwSnBK3eV3EyGOEQHC8dr70+yfCcy89x5v1YWqVtM87rgoV315VP3oiSpfzKIA+eWPX63PnnfQ5PuksSsOP3GLon2EJA4pM89WGYLMaqExYEIVySetPpeezlTOunVajK+fTTkWuyuzaCijJ+teTMmRtQWyW5clS/wGKlMrAr/Z+GMr7rFrs5xM/tmALDMFsYZgj1o5wKse5IgvC9iX3ytKWUhcNfFVVhC+acqjr+/TJBPCEimQYW9SCkVLduZXa5n4OjteE1kasQxc6w3QN01eRu1q4W5PzHHvMvqzIMD832WUJEutFBU+7fwXZa4h6tw4AROmDB7niM6yJyQsRGum/oJQiXTHNu4qW9o5TtljGufJ75YFyWL60IAWTKFaNZHjsw7DIjeuZZTQjY36qxL6PsLYFntPuJ0BytaaVRdq4R4BzhPhuZ2mBDrhnyceGt9qIZ5zXf/BnjFweHEVlSzuEO6nTkLrU3TdhwZ/uF/J3qV5sJmTj2fDpYhQKUZXkscI7VuHXCm81QzTYRjuVzGr5poBuOVHe1S5AMr0yTmS0WXma2I
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(39850400004)(346002)(396003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(2906002)(30864003)(7416002)(41300700001)(5660300002)(44832011)(8676002)(4326008)(8936002)(38350700005)(36756003)(86362001)(38100700002)(1076003)(316002)(6916009)(66946007)(66476007)(66556008)(2616005)(83380400001)(478600001)(6666004)(26005)(6512007)(6506007)(52116002)(6486002)(579004)(559001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I2ikkenQ7769AV1TWW8Myi3Sbr/mtcSyE3eelwg4TGhlW2yOahRFV20XEK89?=
 =?us-ascii?Q?Vt7TiBTaksM1PRLa6sAOo7fgw7T/4b28fmOHlf3yob8zC6XVyxqpC+emfp/e?=
 =?us-ascii?Q?O50D6IPOnGmKo4Va0NQiha6PLH2M6CDoeNcpYtXh0obP8KhSkzt3zaAQut6s?=
 =?us-ascii?Q?/lljeYkbK5QtQpvqniSN/jd63fVX0HbtEcOlfiOA7h2SFr2aKLMd6wy2UIkl?=
 =?us-ascii?Q?r5ew346yc1HTYA6ZOitvoX4a14lVgZEFGfAekPC7sWzH6afpz1BiSP4WcQy0?=
 =?us-ascii?Q?oYJQ+1l/lxhTln4+UUg63jgUaNdjDEQASTpt5jKWzRqDsiwJgxkqEWILuUU6?=
 =?us-ascii?Q?k9+affUOcveh+G5v+ikdQWgVvCNvFJN78QXyQadBX/5Bs3DBurr8fA2gP+Qd?=
 =?us-ascii?Q?rKU6v0EV7IcEijAe0xo5Is/P3/o74x2FEL6r4M3xUdLfiuk/D6F3FwLTJ1gB?=
 =?us-ascii?Q?3OLX8o8BMmOMx/w8+QOwwsgqBw5UEV22Q0V0k4mrMpLkrbJxftiYfbI45Qjv?=
 =?us-ascii?Q?6aEja+zTpD0Bo78iFx8hOIiYzpn3oxbBiQGG4V/ISu17OBKAft50Ef8/O9xl?=
 =?us-ascii?Q?j3i9XLGym80usRI0ZeL2lvulberJ3/Oz9OLyLnj8p+CzIUmEnYm0ridEzjPN?=
 =?us-ascii?Q?Pat1UqFPPc0uTTg+pIbkbFD/WB209YGUYpnL9QUiL6uYyafwcVJqFThCd+fB?=
 =?us-ascii?Q?idUXOjzoRfDHq2NoBL7M2Oe1XvJ5HjVyUGWLvlNDd84wEYNDf44nEw15I3Nj?=
 =?us-ascii?Q?p0EnmJQ7s4Q6SB3xACWkj3Uq6Rfh0byAzTipn8I8ZWg4uQ/IFOlvD9PpWw8o?=
 =?us-ascii?Q?oKVxc99LgeKX4dYsZUeV+Q+A2J5SyMW/A5TZdU6AQ4hyXJxkZ8dyom/Jubog?=
 =?us-ascii?Q?akpaxxVbwmbZzSlyGTg2970C3JP6hg9P/ipM2u1/o5DHAYLDOGBVTp8fQhie?=
 =?us-ascii?Q?Rg/30ib+IQeUlv0OM6G7IEvVdSwci2/dBnW7JkxGjW2R4XA4FZUbDLKRsR4n?=
 =?us-ascii?Q?5CVINa5Qgruk8yKl0Y83405dNOfOF3wiIZIwBTpWYSZg64yJCJ60Mk5yLo2T?=
 =?us-ascii?Q?fd2RwBRW3gbmsMKr8cFi60TmWWcg+poz5XWXKT5VTGr2AtxbcHrxt7poE879?=
 =?us-ascii?Q?fmTLX+3ClxKiW7cgcZTzwSVWCIjvj+npNiegHSh4x6ZakbSzSV2omJqDvQlM?=
 =?us-ascii?Q?o29fLJ2N5LyesnYbkrqct+cDfh0DZwCrgbmIqsEVX3rHFNHLQDvNnDtXq5Rp?=
 =?us-ascii?Q?vq01qHdnYH8ZAv+ZbpAKj+ZUmXH+SQsW9h9NgHTw+rBL625Vxe8R/d8qPxnu?=
 =?us-ascii?Q?jrbnH7mBVpMliGVdD8oCMFaQqYhYILf+hUD5SXfnCh4Ri++U/liyKG43TG+j?=
 =?us-ascii?Q?jk33hcXnZCoP/Z1TAJo0V06YeuKuPPFRDBmdktDIC66pOutuW2zgGPQZKqt4?=
 =?us-ascii?Q?oC93N3N5v1XdcoGbDgO6ZmqnEicokmN2h7l7X2lzHMS0yVO10LZk3uwSpHXG?=
 =?us-ascii?Q?YWIYzGa3ZwRptCo4OgL7xRuFv5ifsJ0S51iLeD+np5hHeC0o9UGkmchFo7GA?=
 =?us-ascii?Q?X/JSGgKi0ZwGgQ6Y7POcFIKg7NL4mrj8yoAmyecYqIUU6nnIH2YRaBFwhM5w?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2e1814-9c15-4595-05af-08dbda23ec7c
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 15:13:23.0798
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0d5fd8bb-e8c2-4e0a-8dd5-2c264f7140fe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LvA1MvmEroBXCiDnXafWIrPYLwGIn1wsmBBBXyVkqkhh6HSTg7aIZSbFRZxOMT7MrvwfG1iOvDOvkZd1skZjZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB2018
X-OriginatorOrg: imgtec.com
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: YZWJhOtIyH8lCQUlVqRHYyvX8tRSG67u
X-Proofpoint-ORIG-GUID: YZWJhOtIyH8lCQUlVqRHYyvX8tRSG67u

Implement ioctls to create and destroy free lists and HWRT datasets. Free
lists are used for GPU-side memory allocation during geometry processing.
HWRT datasets are the FW-side structures representing render targets.

Changes since v6:
- Fix out-of-bounds shift in get_cr_multisamplectl_val()

Changes since v4:
- Remove use of drm_gem_shmem_get_pages()

Changes since v3:
- Support free list grow requests from FW
- Use drm_dev_{enter,exit}

Co-developed-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Co-developed-by: Donald Robson <donald.robson@imgtec.com>
Signed-off-by: Donald Robson <donald.robson@imgtec.com>
Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
---
 drivers/gpu/drm/imagination/Makefile        |   2 +
 drivers/gpu/drm/imagination/pvr_ccb.c       |  10 +
 drivers/gpu/drm/imagination/pvr_device.h    |  24 +
 drivers/gpu/drm/imagination/pvr_drv.c       | 112 +++-
 drivers/gpu/drm/imagination/pvr_free_list.c | 625 ++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_free_list.h | 195 ++++++
 drivers/gpu/drm/imagination/pvr_hwrt.c      | 549 +++++++++++++++++
 drivers/gpu/drm/imagination/pvr_hwrt.h      | 165 ++++++
 8 files changed, 1678 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/imagination/pvr_free_list.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_free_list.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_hwrt.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_hwrt.h

diff --git a/drivers/gpu/drm/imagination/Makefile b/drivers/gpu/drm/imagination/Makefile
index 0a6532d30c00..fca2ee2efbac 100644
--- a/drivers/gpu/drm/imagination/Makefile
+++ b/drivers/gpu/drm/imagination/Makefile
@@ -8,12 +8,14 @@ powervr-y := \
 	pvr_device.o \
 	pvr_device_info.o \
 	pvr_drv.o \
+	pvr_free_list.o \
 	pvr_fw.o \
 	pvr_fw_meta.o \
 	pvr_fw_mips.o \
 	pvr_fw_startstop.o \
 	pvr_fw_trace.o \
 	pvr_gem.o \
+	pvr_hwrt.o \
 	pvr_mmu.o \
 	pvr_power.o \
 	pvr_vm.o \
diff --git a/drivers/gpu/drm/imagination/pvr_ccb.c b/drivers/gpu/drm/imagination/pvr_ccb.c
index 64b58b8989ca..f0ea71f72776 100644
--- a/drivers/gpu/drm/imagination/pvr_ccb.c
+++ b/drivers/gpu/drm/imagination/pvr_ccb.c
@@ -4,6 +4,7 @@
 #include "pvr_ccb.h"
 #include "pvr_device.h"
 #include "pvr_drv.h"
+#include "pvr_free_list.h"
 #include "pvr_fw.h"
 #include "pvr_gem.h"
 #include "pvr_power.h"
@@ -139,6 +140,15 @@ process_fwccb_command(struct pvr_device *pvr_dev, struct rogue_fwif_fwccb_cmd *c
 		pvr_power_reset(pvr_dev, false);
 		break;
 
+	case ROGUE_FWIF_FWCCB_CMD_FREELISTS_RECONSTRUCTION:
+		pvr_free_list_process_reconstruct_req(pvr_dev,
+						      &cmd->cmd_data.cmd_freelists_reconstruction);
+		break;
+
+	case ROGUE_FWIF_FWCCB_CMD_FREELIST_GROW:
+		pvr_free_list_process_grow_req(pvr_dev, &cmd->cmd_data.cmd_free_list_gs);
+		break;
+
 	default:
 		drm_info(from_pvr_device(pvr_dev), "Received unknown FWCCB command %x\n",
 			 cmd->cmd_type);
diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index f280b040b216..996318649499 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -152,6 +152,14 @@ struct pvr_device {
 	 */
 	atomic_t mmu_flush_cache_flags;
 
+	/**
+	 * @free_list_ids: Array of free lists belonging to this device. Array members
+	 *                 are of type "struct pvr_free_list *".
+	 *
+	 * This array is used to allocate IDs used by the firmware.
+	 */
+	struct xarray free_list_ids;
+
 	struct {
 		/** @work: Work item for watchdog callback. */
 		struct delayed_work work;
@@ -247,6 +255,22 @@ struct pvr_file {
 	 */
 	struct pvr_device *pvr_dev;
 
+	/**
+	 * @free_list_handles: Array of free lists belonging to this file. Array
+	 * members are of type "struct pvr_free_list *".
+	 *
+	 * This array is used to allocate handles returned to userspace.
+	 */
+	struct xarray free_list_handles;
+
+	/**
+	 * @hwrt_handles: Array of HWRT datasets belonging to this file. Array
+	 * members are of type "struct pvr_hwrt_dataset *".
+	 *
+	 * This array is used to allocate handles returned to userspace.
+	 */
+	struct xarray hwrt_handles;
+
 	/**
 	 * @vm_ctx_handles: Array of VM contexts belonging to this file. Array
 	 * members are of type "struct pvr_vm_context *".
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index 9f5d794e601f..1ee58c96378f 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -3,7 +3,9 @@
 
 #include "pvr_device.h"
 #include "pvr_drv.h"
+#include "pvr_free_list.h"
 #include "pvr_gem.h"
+#include "pvr_hwrt.h"
 #include "pvr_mmu.h"
 #include "pvr_power.h"
 #include "pvr_rogue_defs.h"
@@ -711,7 +713,41 @@ static int
 pvr_ioctl_create_free_list(struct drm_device *drm_dev, void *raw_args,
 			   struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_create_free_list_args *args = raw_args;
+	struct pvr_file *pvr_file = to_pvr_file(file);
+	struct pvr_free_list *free_list;
+	int idx;
+	int err;
+
+	if (!drm_dev_enter(drm_dev, &idx))
+		return -EIO;
+
+	free_list = pvr_free_list_create(pvr_file, args);
+	if (IS_ERR(free_list)) {
+		err = PTR_ERR(free_list);
+		goto err_drm_dev_exit;
+	}
+
+	/* Allocate object handle for userspace. */
+	err = xa_alloc(&pvr_file->free_list_handles,
+		       &args->handle,
+		       free_list,
+		       xa_limit_32b,
+		       GFP_KERNEL);
+	if (err < 0)
+		goto err_cleanup;
+
+	drm_dev_exit(idx);
+
+	return 0;
+
+err_cleanup:
+	pvr_free_list_put(free_list);
+
+err_drm_dev_exit:
+	drm_dev_exit(idx);
+
+	return err;
 }
 
 /**
@@ -731,7 +767,19 @@ static int
 pvr_ioctl_destroy_free_list(struct drm_device *drm_dev, void *raw_args,
 			    struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_destroy_free_list_args *args = raw_args;
+	struct pvr_file *pvr_file = to_pvr_file(file);
+	struct pvr_free_list *free_list;
+
+	if (args->_padding_4)
+		return -EINVAL;
+
+	free_list = xa_erase(&pvr_file->free_list_handles, args->handle);
+	if (!free_list)
+		return -EINVAL;
+
+	pvr_free_list_put(free_list);
+	return 0;
 }
 
 /**
@@ -751,7 +799,41 @@ static int
 pvr_ioctl_create_hwrt_dataset(struct drm_device *drm_dev, void *raw_args,
 			      struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_create_hwrt_dataset_args *args = raw_args;
+	struct pvr_file *pvr_file = to_pvr_file(file);
+	struct pvr_hwrt_dataset *hwrt;
+	int idx;
+	int err;
+
+	if (!drm_dev_enter(drm_dev, &idx))
+		return -EIO;
+
+	hwrt = pvr_hwrt_dataset_create(pvr_file, args);
+	if (IS_ERR(hwrt)) {
+		err = PTR_ERR(hwrt);
+		goto err_drm_dev_exit;
+	}
+
+	/* Allocate object handle for userspace. */
+	err = xa_alloc(&pvr_file->hwrt_handles,
+		       &args->handle,
+		       hwrt,
+		       xa_limit_32b,
+		       GFP_KERNEL);
+	if (err < 0)
+		goto err_cleanup;
+
+	drm_dev_exit(idx);
+
+	return 0;
+
+err_cleanup:
+	pvr_hwrt_dataset_put(hwrt);
+
+err_drm_dev_exit:
+	drm_dev_exit(idx);
+
+	return err;
 }
 
 /**
@@ -771,7 +853,19 @@ static int
 pvr_ioctl_destroy_hwrt_dataset(struct drm_device *drm_dev, void *raw_args,
 			       struct drm_file *file)
 {
-	return -ENOTTY;
+	struct drm_pvr_ioctl_destroy_hwrt_dataset_args *args = raw_args;
+	struct pvr_file *pvr_file = to_pvr_file(file);
+	struct pvr_hwrt_dataset *hwrt;
+
+	if (args->_padding_4)
+		return -EINVAL;
+
+	hwrt = xa_erase(&pvr_file->hwrt_handles, args->handle);
+	if (!hwrt)
+		return -EINVAL;
+
+	pvr_hwrt_dataset_put(hwrt);
+	return 0;
 }
 
 /**
@@ -1195,6 +1289,8 @@ pvr_drm_driver_open(struct drm_device *drm_dev, struct drm_file *file)
 	 */
 	pvr_file->pvr_dev = pvr_dev;
 
+	xa_init_flags(&pvr_file->free_list_handles, XA_FLAGS_ALLOC1);
+	xa_init_flags(&pvr_file->hwrt_handles, XA_FLAGS_ALLOC1);
 	xa_init_flags(&pvr_file->vm_ctx_handles, XA_FLAGS_ALLOC1);
 
 	/*
@@ -1223,6 +1319,8 @@ pvr_drm_driver_postclose(__always_unused struct drm_device *drm_dev,
 	struct pvr_file *pvr_file = to_pvr_file(file);
 
 	/* Drop references on any remaining objects. */
+	pvr_destroy_free_lists_for_file(pvr_file);
+	pvr_destroy_hwrt_datasets_for_file(pvr_file);
 	pvr_destroy_vm_contexts_for_file(pvr_file);
 
 	kfree(pvr_file);
@@ -1281,6 +1379,8 @@ pvr_probe(struct platform_device *plat_dev)
 	if (err)
 		goto err_device_fini;
 
+	xa_init_flags(&pvr_dev->free_list_ids, XA_FLAGS_ALLOC1);
+
 	return 0;
 
 err_device_fini:
@@ -1298,6 +1398,10 @@ pvr_remove(struct platform_device *plat_dev)
 	struct drm_device *drm_dev = platform_get_drvdata(plat_dev);
 	struct pvr_device *pvr_dev = to_pvr_device(drm_dev);
 
+	WARN_ON(!xa_empty(&pvr_dev->free_list_ids));
+
+	xa_destroy(&pvr_dev->free_list_ids);
+
 	pm_runtime_suspend(drm_dev->dev);
 	pvr_device_fini(pvr_dev);
 	drm_dev_unplug(drm_dev);
diff --git a/drivers/gpu/drm/imagination/pvr_free_list.c b/drivers/gpu/drm/imagination/pvr_free_list.c
new file mode 100644
index 000000000000..cbd5a72794ce
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_free_list.c
@@ -0,0 +1,625 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_free_list.h"
+#include "pvr_gem.h"
+#include "pvr_hwrt.h"
+#include "pvr_rogue_fwif.h"
+#include "pvr_vm.h"
+
+#include <drm/drm_gem.h>
+#include <linux/slab.h>
+#include <linux/xarray.h>
+#include <uapi/drm/pvr_drm.h>
+
+#define FREE_LIST_ENTRY_SIZE sizeof(u32)
+
+#define FREE_LIST_ALIGNMENT \
+	((ROGUE_BIF_PM_FREELIST_BASE_ADDR_ALIGNSIZE / FREE_LIST_ENTRY_SIZE) - 1)
+
+#define FREE_LIST_MIN_PAGES 50
+#define FREE_LIST_MIN_PAGES_BRN66011 40
+#define FREE_LIST_MIN_PAGES_ROGUEXE 25
+
+/**
+ * pvr_get_free_list_min_pages() - Get minimum free list size for this device
+ * @pvr_dev: Device pointer.
+ *
+ * Returns:
+ *  * Minimum free list size, in PM physical pages.
+ */
+u32
+pvr_get_free_list_min_pages(struct pvr_device *pvr_dev)
+{
+	u32 value;
+
+	if (PVR_HAS_FEATURE(pvr_dev, roguexe)) {
+		if (PVR_HAS_QUIRK(pvr_dev, 66011))
+			value = FREE_LIST_MIN_PAGES_BRN66011;
+		else
+			value = FREE_LIST_MIN_PAGES_ROGUEXE;
+	} else {
+		value = FREE_LIST_MIN_PAGES;
+	}
+
+	return value;
+}
+
+static int
+free_list_create_kernel_structure(struct pvr_file *pvr_file,
+				  struct drm_pvr_ioctl_create_free_list_args *args,
+				  struct pvr_free_list *free_list)
+{
+	struct pvr_gem_object *free_list_obj;
+	struct pvr_vm_context *vm_ctx;
+	u64 free_list_size;
+	int err;
+
+	if (args->grow_threshold > 100 ||
+	    args->initial_num_pages > args->max_num_pages ||
+	    args->grow_num_pages > args->max_num_pages ||
+	    args->max_num_pages == 0 ||
+	    (args->initial_num_pages < args->max_num_pages && !args->grow_num_pages) ||
+	    (args->initial_num_pages == args->max_num_pages && args->grow_num_pages))
+		return -EINVAL;
+
+	if ((args->initial_num_pages & FREE_LIST_ALIGNMENT) ||
+	    (args->max_num_pages & FREE_LIST_ALIGNMENT) ||
+	    (args->grow_num_pages & FREE_LIST_ALIGNMENT))
+		return -EINVAL;
+
+	vm_ctx = pvr_vm_context_lookup(pvr_file, args->vm_context_handle);
+	if (!vm_ctx)
+		return -EINVAL;
+
+	free_list_obj = pvr_vm_find_gem_object(vm_ctx, args->free_list_gpu_addr,
+					       NULL, &free_list_size);
+	if (!free_list_obj) {
+		err = -EINVAL;
+		goto err_put_vm_context;
+	}
+
+	if ((free_list_obj->flags & DRM_PVR_BO_ALLOW_CPU_USERSPACE_ACCESS) ||
+	    !(free_list_obj->flags & DRM_PVR_BO_PM_FW_PROTECT) ||
+	    free_list_size < (args->max_num_pages * FREE_LIST_ENTRY_SIZE)) {
+		err = -EINVAL;
+		goto err_put_free_list_obj;
+	}
+
+	free_list->pvr_dev = pvr_file->pvr_dev;
+	free_list->current_pages = 0;
+	free_list->max_pages = args->max_num_pages;
+	free_list->grow_pages = args->grow_num_pages;
+	free_list->grow_threshold = args->grow_threshold;
+	free_list->obj = free_list_obj;
+	free_list->free_list_gpu_addr = args->free_list_gpu_addr;
+	free_list->initial_num_pages = args->initial_num_pages;
+
+	pvr_vm_context_put(vm_ctx);
+
+	return 0;
+
+err_put_free_list_obj:
+	pvr_gem_object_put(free_list_obj);
+
+err_put_vm_context:
+	pvr_vm_context_put(vm_ctx);
+
+	return err;
+}
+
+static void
+free_list_destroy_kernel_structure(struct pvr_free_list *free_list)
+{
+	WARN_ON(!list_empty(&free_list->hwrt_list));
+
+	pvr_gem_object_put(free_list->obj);
+}
+
+/**
+ * calculate_free_list_ready_pages_locked() - Function to work out the number of free
+ *                                            list pages to reserve for growing within
+ *                                            the FW without having to wait for the
+ *                                            host to progress a grow request
+ * @free_list: Pointer to free list.
+ * @pages: Total pages currently in free list.
+ *
+ * If the threshold or grow size means less than the alignment size (4 pages on
+ * Rogue), then the feature is not used.
+ *
+ * Caller must hold &free_list->lock.
+ *
+ * Return: number of pages to reserve.
+ */
+static u32
+calculate_free_list_ready_pages_locked(struct pvr_free_list *free_list, u32 pages)
+{
+	u32 ready_pages;
+
+	lockdep_assert_held(&free_list->lock);
+
+	ready_pages = ((pages * free_list->grow_threshold) / 100);
+
+	/* The number of pages must be less than the grow size. */
+	ready_pages = min(ready_pages, free_list->grow_pages);
+
+	/*
+	 * The number of pages must be a multiple of the free list align size.
+	 */
+	ready_pages &= ~FREE_LIST_ALIGNMENT;
+
+	return ready_pages;
+}
+
+static u32
+calculate_free_list_ready_pages(struct pvr_free_list *free_list, u32 pages)
+{
+	u32 ret;
+
+	mutex_lock(&free_list->lock);
+
+	ret = calculate_free_list_ready_pages_locked(free_list, pages);
+
+	mutex_unlock(&free_list->lock);
+
+	return ret;
+}
+
+static void
+free_list_fw_init(void *cpu_ptr, void *priv)
+{
+	struct rogue_fwif_freelist *fw_data = cpu_ptr;
+	struct pvr_free_list *free_list = priv;
+	u32 ready_pages;
+
+	/* Fill out FW structure */
+	ready_pages = calculate_free_list_ready_pages(free_list,
+						      free_list->initial_num_pages);
+
+	fw_data->max_pages = free_list->max_pages;
+	fw_data->current_pages = free_list->initial_num_pages - ready_pages;
+	fw_data->grow_pages = free_list->grow_pages;
+	fw_data->ready_pages = ready_pages;
+	fw_data->freelist_id = free_list->fw_id;
+	fw_data->grow_pending = false;
+	fw_data->current_stack_top = fw_data->current_pages - 1;
+	fw_data->freelist_dev_addr = free_list->free_list_gpu_addr;
+	fw_data->current_dev_addr = (fw_data->freelist_dev_addr +
+				     ((fw_data->max_pages - fw_data->current_pages) *
+				      FREE_LIST_ENTRY_SIZE)) &
+				    ~((u64)ROGUE_BIF_PM_FREELIST_BASE_ADDR_ALIGNSIZE - 1);
+}
+
+static int
+free_list_create_fw_structure(struct pvr_file *pvr_file,
+			      struct drm_pvr_ioctl_create_free_list_args *args,
+			      struct pvr_free_list *free_list)
+{
+	struct pvr_device *pvr_dev = pvr_file->pvr_dev;
+
+	/*
+	 * Create and map the FW structure so we can initialise it. This is not
+	 * accessed on the CPU side post-initialisation so the mapping lifetime
+	 * is only for this function.
+	 */
+	free_list->fw_data = pvr_fw_object_create_and_map(pvr_dev, sizeof(*free_list->fw_data),
+							  PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+							  free_list_fw_init, free_list,
+							  &free_list->fw_obj);
+	if (IS_ERR(free_list->fw_data))
+		return PTR_ERR(free_list->fw_data);
+
+	return 0;
+}
+
+static void
+free_list_destroy_fw_structure(struct pvr_free_list *free_list)
+{
+	pvr_fw_object_unmap_and_destroy(free_list->fw_obj);
+}
+
+static int
+pvr_free_list_insert_pages_locked(struct pvr_free_list *free_list,
+				  struct sg_table *sgt, u32 offset, u32 num_pages)
+{
+	struct sg_dma_page_iter dma_iter;
+	u32 *page_list;
+
+	lockdep_assert_held(&free_list->lock);
+
+	page_list = pvr_gem_object_vmap(free_list->obj);
+	if (IS_ERR(page_list))
+		return PTR_ERR(page_list);
+
+	offset /= FREE_LIST_ENTRY_SIZE;
+	/* clang-format off */
+	for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
+		dma_addr_t dma_addr = sg_page_iter_dma_address(&dma_iter);
+		u64 dma_pfn = dma_addr >>
+			       ROGUE_BIF_PM_PHYSICAL_PAGE_ALIGNSHIFT;
+		u32 dma_addr_offset;
+
+		BUILD_BUG_ON(ROGUE_BIF_PM_PHYSICAL_PAGE_SIZE > PAGE_SIZE);
+
+		for (dma_addr_offset = 0; dma_addr_offset < PAGE_SIZE;
+		     dma_addr_offset += ROGUE_BIF_PM_PHYSICAL_PAGE_SIZE) {
+			WARN_ON_ONCE(dma_pfn >> 32);
+
+			page_list[offset++] = (u32)dma_pfn;
+			dma_pfn++;
+
+			num_pages--;
+			if (!num_pages)
+				break;
+		}
+
+		if (!num_pages)
+			break;
+	};
+	/* clang-format on */
+
+	/* Make sure our free_list update is flushed. */
+	wmb();
+
+	pvr_gem_object_vunmap(free_list->obj);
+
+	return 0;
+}
+
+static int
+pvr_free_list_insert_node_locked(struct pvr_free_list_node *free_list_node)
+{
+	struct pvr_free_list *free_list = free_list_node->free_list;
+	struct sg_table *sgt;
+	u32 start_page;
+	u32 offset;
+	int err;
+
+	lockdep_assert_held(&free_list->lock);
+
+	start_page = free_list->max_pages - free_list->current_pages -
+		     free_list_node->num_pages;
+	offset = (start_page * FREE_LIST_ENTRY_SIZE) &
+		  ~((u64)ROGUE_BIF_PM_FREELIST_BASE_ADDR_ALIGNSIZE - 1);
+
+	sgt = drm_gem_shmem_get_pages_sgt(&free_list_node->mem_obj->base);
+	if (WARN_ON(IS_ERR(sgt)))
+		return PTR_ERR(sgt);
+
+	err = pvr_free_list_insert_pages_locked(free_list, sgt,
+						offset, free_list_node->num_pages);
+	if (!err)
+		free_list->current_pages += free_list_node->num_pages;
+
+	return err;
+}
+
+static int
+pvr_free_list_grow(struct pvr_free_list *free_list, u32 num_pages)
+{
+	struct pvr_device *pvr_dev = free_list->pvr_dev;
+	struct pvr_free_list_node *free_list_node;
+	int err;
+
+	mutex_lock(&free_list->lock);
+
+	if (num_pages & FREE_LIST_ALIGNMENT) {
+		err = -EINVAL;
+		goto err_unlock;
+	}
+
+	free_list_node = kzalloc(sizeof(*free_list_node), GFP_KERNEL);
+	if (!free_list_node) {
+		err = -ENOMEM;
+		goto err_unlock;
+	}
+
+	free_list_node->num_pages = num_pages;
+	free_list_node->free_list = free_list;
+
+	free_list_node->mem_obj = pvr_gem_object_create(pvr_dev,
+							num_pages <<
+							ROGUE_BIF_PM_PHYSICAL_PAGE_ALIGNSHIFT,
+							PVR_BO_FW_FLAGS_DEVICE_CACHED);
+	if (IS_ERR(free_list_node->mem_obj)) {
+		err = PTR_ERR(free_list_node->mem_obj);
+		goto err_free;
+	}
+
+	err = pvr_free_list_insert_node_locked(free_list_node);
+	if (err)
+		goto err_destroy_gem_object;
+
+	list_add_tail(&free_list_node->node, &free_list->mem_block_list);
+
+	/*
+	 * Reserve a number ready pages to allow the FW to process OOM quickly
+	 * and asynchronously request a grow.
+	 */
+	free_list->ready_pages =
+		calculate_free_list_ready_pages_locked(free_list,
+						       free_list->current_pages);
+	free_list->current_pages -= free_list->ready_pages;
+
+	mutex_unlock(&free_list->lock);
+
+	return 0;
+
+err_destroy_gem_object:
+	pvr_gem_object_put(free_list_node->mem_obj);
+
+err_free:
+	kfree(free_list_node);
+
+err_unlock:
+	mutex_unlock(&free_list->lock);
+
+	return err;
+}
+
+void pvr_free_list_process_grow_req(struct pvr_device *pvr_dev,
+				    struct rogue_fwif_fwccb_cmd_freelist_gs_data *req)
+{
+	struct pvr_free_list *free_list = pvr_free_list_lookup_id(pvr_dev, req->freelist_id);
+	struct rogue_fwif_kccb_cmd resp_cmd = {
+		.cmd_type = ROGUE_FWIF_KCCB_CMD_FREELIST_GROW_UPDATE,
+	};
+	struct rogue_fwif_freelist_gs_data *resp = &resp_cmd.cmd_data.free_list_gs_data;
+	u32 grow_pages = 0;
+
+	/* If we don't have a freelist registered for this ID, we can't do much. */
+	if (WARN_ON(!free_list))
+		return;
+
+	/* Since the FW made the request, it has already consumed the ready pages,
+	 * update the host struct.
+	 */
+	free_list->current_pages += free_list->ready_pages;
+	free_list->ready_pages = 0;
+
+	/* If the grow succeeds, update the grow_pages argument. */
+	if (!pvr_free_list_grow(free_list, free_list->grow_pages))
+		grow_pages = free_list->grow_pages;
+
+	/* Now prepare the response and send it back to the FW. */
+	pvr_fw_object_get_fw_addr(free_list->fw_obj, &resp->freelist_fw_addr);
+	resp->delta_pages = grow_pages;
+	resp->new_pages = free_list->current_pages + free_list->ready_pages;
+	resp->ready_pages = free_list->ready_pages;
+	pvr_free_list_put(free_list);
+
+	WARN_ON(pvr_kccb_send_cmd(pvr_dev, &resp_cmd, NULL));
+}
+
+static void
+pvr_free_list_free_node(struct pvr_free_list_node *free_list_node)
+{
+	pvr_gem_object_put(free_list_node->mem_obj);
+
+	kfree(free_list_node);
+}
+
+/**
+ * pvr_free_list_create() - Create a new free list and return an object pointer
+ * @pvr_file: Pointer to pvr_file structure.
+ * @args: Creation arguments from userspace.
+ *
+ * Return:
+ *  * Pointer to new free_list, or
+ *  * ERR_PTR(-%ENOMEM) on out of memory.
+ */
+struct pvr_free_list *
+pvr_free_list_create(struct pvr_file *pvr_file,
+		     struct drm_pvr_ioctl_create_free_list_args *args)
+{
+	struct pvr_free_list *free_list;
+	int err;
+
+	/* Create and fill out the kernel structure */
+	free_list = kzalloc(sizeof(*free_list), GFP_KERNEL);
+
+	if (!free_list)
+		return ERR_PTR(-ENOMEM);
+
+	kref_init(&free_list->ref_count);
+	INIT_LIST_HEAD(&free_list->mem_block_list);
+	INIT_LIST_HEAD(&free_list->hwrt_list);
+	mutex_init(&free_list->lock);
+
+	err = free_list_create_kernel_structure(pvr_file, args, free_list);
+	if (err < 0)
+		goto err_free;
+
+	/* Allocate global object ID for firmware. */
+	err = xa_alloc(&pvr_file->pvr_dev->free_list_ids,
+		       &free_list->fw_id,
+		       free_list,
+		       xa_limit_32b,
+		       GFP_KERNEL);
+	if (err)
+		goto err_destroy_kernel_structure;
+
+	err = free_list_create_fw_structure(pvr_file, args, free_list);
+	if (err < 0)
+		goto err_free_fw_id;
+
+	err = pvr_free_list_grow(free_list, args->initial_num_pages);
+	if (err < 0)
+		goto err_fw_struct_cleanup;
+
+	return free_list;
+
+err_fw_struct_cleanup:
+	WARN_ON(pvr_fw_structure_cleanup(free_list->pvr_dev,
+					 ROGUE_FWIF_CLEANUP_FREELIST,
+					 free_list->fw_obj, 0));
+
+err_free_fw_id:
+	xa_erase(&free_list->pvr_dev->free_list_ids, free_list->fw_id);
+
+err_destroy_kernel_structure:
+	free_list_destroy_kernel_structure(free_list);
+
+err_free:
+	mutex_destroy(&free_list->lock);
+	kfree(free_list);
+
+	return ERR_PTR(err);
+}
+
+static void
+pvr_free_list_release(struct kref *ref_count)
+{
+	struct pvr_free_list *free_list =
+		container_of(ref_count, struct pvr_free_list, ref_count);
+	struct list_head *pos, *n;
+	int err;
+
+	xa_erase(&free_list->pvr_dev->free_list_ids, free_list->fw_id);
+
+	err = pvr_fw_structure_cleanup(free_list->pvr_dev,
+				       ROGUE_FWIF_CLEANUP_FREELIST,
+				       free_list->fw_obj, 0);
+	if (err == -EBUSY) {
+		/* Flush the FWCCB to process any HWR or freelist reconstruction
+		 * request that might keep the freelist busy, and try again.
+		 */
+		pvr_fwccb_process(free_list->pvr_dev);
+		err = pvr_fw_structure_cleanup(free_list->pvr_dev,
+					       ROGUE_FWIF_CLEANUP_FREELIST,
+					       free_list->fw_obj, 0);
+	}
+
+	WARN_ON(err);
+
+	/* clang-format off */
+	list_for_each_safe(pos, n, &free_list->mem_block_list) {
+		struct pvr_free_list_node *free_list_node =
+			container_of(pos, struct pvr_free_list_node, node);
+
+		list_del(pos);
+		pvr_free_list_free_node(free_list_node);
+	}
+	/* clang-format on */
+
+	free_list_destroy_kernel_structure(free_list);
+	free_list_destroy_fw_structure(free_list);
+	mutex_destroy(&free_list->lock);
+	kfree(free_list);
+}
+
+/**
+ * pvr_destroy_free_lists_for_file: Destroy any free lists associated with the
+ * given file.
+ * @pvr_file: Pointer to pvr_file structure.
+ *
+ * Removes all free lists associated with @pvr_file from the device free_list
+ * list and drops initial references. Free lists will then be destroyed once
+ * all outstanding references are dropped.
+ */
+void pvr_destroy_free_lists_for_file(struct pvr_file *pvr_file)
+{
+	struct pvr_free_list *free_list;
+	unsigned long handle;
+
+	xa_for_each(&pvr_file->free_list_handles, handle, free_list) {
+		(void)free_list;
+		pvr_free_list_put(xa_erase(&pvr_file->free_list_handles, handle));
+	}
+}
+
+/**
+ * pvr_free_list_put() - Release reference on free list
+ * @free_list: Pointer to list to release reference on
+ */
+void
+pvr_free_list_put(struct pvr_free_list *free_list)
+{
+	if (free_list)
+		kref_put(&free_list->ref_count, pvr_free_list_release);
+}
+
+void pvr_free_list_add_hwrt(struct pvr_free_list *free_list, struct pvr_hwrt_data *hwrt_data)
+{
+	mutex_lock(&free_list->lock);
+
+	list_add_tail(&hwrt_data->freelist_node, &free_list->hwrt_list);
+
+	mutex_unlock(&free_list->lock);
+}
+
+void pvr_free_list_remove_hwrt(struct pvr_free_list *free_list, struct pvr_hwrt_data *hwrt_data)
+{
+	mutex_lock(&free_list->lock);
+
+	list_del(&hwrt_data->freelist_node);
+
+	mutex_unlock(&free_list->lock);
+}
+
+static void
+pvr_free_list_reconstruct(struct pvr_device *pvr_dev, u32 freelist_id)
+{
+	struct pvr_free_list *free_list = pvr_free_list_lookup_id(pvr_dev, freelist_id);
+	struct pvr_free_list_node *free_list_node;
+	struct rogue_fwif_freelist *fw_data;
+	struct pvr_hwrt_data *hwrt_data;
+
+	if (!free_list)
+		return;
+
+	mutex_lock(&free_list->lock);
+
+	/* Rebuild the free list based on the memory block list. */
+	free_list->current_pages = 0;
+
+	list_for_each_entry(free_list_node, &free_list->mem_block_list, node)
+		WARN_ON(pvr_free_list_insert_node_locked(free_list_node));
+
+	/*
+	 * Remove the ready pages, which are reserved to allow the FW to process OOM quickly and
+	 * asynchronously request a grow.
+	 */
+	free_list->current_pages -= free_list->ready_pages;
+
+	fw_data = free_list->fw_data;
+	fw_data->current_stack_top = fw_data->current_pages - 1;
+	fw_data->allocated_page_count = 0;
+	fw_data->allocated_mmu_page_count = 0;
+
+	/* Reset the state of any associated HWRTs. */
+	list_for_each_entry(hwrt_data, &free_list->hwrt_list, freelist_node) {
+		struct rogue_fwif_hwrtdata *hwrt_fw_data = pvr_fw_object_vmap(hwrt_data->fw_obj);
+
+		if (!WARN_ON(IS_ERR(hwrt_fw_data))) {
+			hwrt_fw_data->state = ROGUE_FWIF_RTDATA_STATE_HWR;
+			hwrt_fw_data->hwrt_data_flags &= ~HWRTDATA_HAS_LAST_GEOM;
+		}
+
+		pvr_fw_object_vunmap(hwrt_data->fw_obj);
+	}
+
+	mutex_unlock(&free_list->lock);
+
+	pvr_free_list_put(free_list);
+}
+
+void
+pvr_free_list_process_reconstruct_req(struct pvr_device *pvr_dev,
+				struct rogue_fwif_fwccb_cmd_freelists_reconstruction_data *req)
+{
+	struct rogue_fwif_kccb_cmd resp_cmd = {
+		.cmd_type = ROGUE_FWIF_KCCB_CMD_FREELISTS_RECONSTRUCTION_UPDATE,
+	};
+	struct rogue_fwif_freelists_reconstruction_data *resp =
+		&resp_cmd.cmd_data.free_lists_reconstruction_data;
+
+	for (u32 i = 0; i < req->freelist_count; i++)
+		pvr_free_list_reconstruct(pvr_dev, req->freelist_ids[i]);
+
+	resp->freelist_count = req->freelist_count;
+	memcpy(resp->freelist_ids, req->freelist_ids,
+	       req->freelist_count * sizeof(resp->freelist_ids[0]));
+
+	WARN_ON(pvr_kccb_send_cmd(pvr_dev, &resp_cmd, NULL));
+}
diff --git a/drivers/gpu/drm/imagination/pvr_free_list.h b/drivers/gpu/drm/imagination/pvr_free_list.h
new file mode 100644
index 000000000000..9f3ed6d7c4c5
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_free_list.h
@@ -0,0 +1,195 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_FREE_LIST_H
+#define PVR_FREE_LIST_H
+
+#include <linux/compiler_attributes.h>
+#include <linux/kref.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
+#include <linux/xarray.h>
+#include <uapi/drm/pvr_drm.h>
+
+#include "pvr_device.h"
+
+/* Forward declaration from pvr_gem.h. */
+struct pvr_fw_object;
+
+/* Forward declaration from pvr_gem.h. */
+struct pvr_gem_object;
+
+/* Forward declaration from pvr_hwrt.h. */
+struct pvr_hwrt_data;
+
+/**
+ * struct pvr_free_list_node - structure representing an allocation in the free
+ *                             list
+ */
+struct pvr_free_list_node {
+	/** @node: List node for &pvr_free_list.mem_block_list. */
+	struct list_head node;
+
+	/** @free_list: Pointer to owning free list. */
+	struct pvr_free_list *free_list;
+
+	/** @num_pages: Number of pages in this node. */
+	u32 num_pages;
+
+	/** @mem_obj: GEM object representing the pages in this node. */
+	struct pvr_gem_object *mem_obj;
+};
+
+/**
+ * struct pvr_free_list - structure representing a free list
+ */
+struct pvr_free_list {
+	/** @ref_count: Reference count of object. */
+	struct kref ref_count;
+
+	/** @pvr_dev: Pointer to device that owns this object. */
+	struct pvr_device *pvr_dev;
+
+	/** @obj: GEM object representing the free list. */
+	struct pvr_gem_object *obj;
+
+	/** @fw_obj: FW object representing the FW-side structure. */
+	struct pvr_fw_object *fw_obj;
+
+	/** @fw_data: Pointer to CPU mapping of the FW-side structure. */
+	struct rogue_fwif_freelist *fw_data;
+
+	/**
+	 * @lock: Mutex protecting modification of the free list. Must be held when accessing any
+	 *        of the members below.
+	 */
+	struct mutex lock;
+
+	/** @fw_id: Firmware ID for this object. */
+	u32 fw_id;
+
+	/** @current_pages: Current number of pages in free list. */
+	u32 current_pages;
+
+	/** @max_pages: Maximum number of pages in free list. */
+	u32 max_pages;
+
+	/** @grow_pages: Pages to grow free list by per request. */
+	u32 grow_pages;
+
+	/**
+	 * @grow_threshold: Percentage of FL memory used that should trigger a
+	 *                  new grow request.
+	 */
+	u32 grow_threshold;
+
+	/**
+	 * @ready_pages: Number of pages reserved for FW to use while a grow
+	 *               request is being processed.
+	 */
+	u32 ready_pages;
+
+	/** @mem_block_list: List of memory blocks in this free list. */
+	struct list_head mem_block_list;
+
+	/** @hwrt_list: List of HWRTs using this free list. */
+	struct list_head hwrt_list;
+
+	/** @initial_num_pages: Initial number of pages in free list. */
+	u32 initial_num_pages;
+
+	/** @free_list_gpu_addr: Address of free list in GPU address space. */
+	u64 free_list_gpu_addr;
+};
+
+struct pvr_free_list *
+pvr_free_list_create(struct pvr_file *pvr_file,
+		     struct drm_pvr_ioctl_create_free_list_args *args);
+
+void
+pvr_destroy_free_lists_for_file(struct pvr_file *pvr_file);
+
+u32
+pvr_get_free_list_min_pages(struct pvr_device *pvr_dev);
+
+static __always_inline struct pvr_free_list *
+pvr_free_list_get(struct pvr_free_list *free_list)
+{
+	if (free_list)
+		kref_get(&free_list->ref_count);
+
+	return free_list;
+}
+
+/**
+ * pvr_free_list_lookup() - Lookup free list pointer from handle and file
+ * @pvr_file: Pointer to pvr_file structure.
+ * @handle: Object handle.
+ *
+ * Takes reference on free list object. Call pvr_free_list_put() to release.
+ *
+ * Returns:
+ *  * The requested object on success, or
+ *  * %NULL on failure (object does not exist in list, is not a free list, or
+ *    does not belong to @pvr_file)
+ */
+static __always_inline struct pvr_free_list *
+pvr_free_list_lookup(struct pvr_file *pvr_file, u32 handle)
+{
+	struct pvr_free_list *free_list;
+
+	xa_lock(&pvr_file->free_list_handles);
+	free_list = pvr_free_list_get(xa_load(&pvr_file->free_list_handles, handle));
+	xa_unlock(&pvr_file->free_list_handles);
+
+	return free_list;
+}
+
+/**
+ * pvr_free_list_lookup_id() - Lookup free list pointer from FW ID
+ * @pvr_dev: Device pointer.
+ * @id: FW object ID.
+ *
+ * Takes reference on free list object. Call pvr_free_list_put() to release.
+ *
+ * Returns:
+ *  * The requested object on success, or
+ *  * %NULL on failure (object does not exist in list, or is not a free list)
+ */
+static __always_inline struct pvr_free_list *
+pvr_free_list_lookup_id(struct pvr_device *pvr_dev, u32 id)
+{
+	struct pvr_free_list *free_list;
+
+	xa_lock(&pvr_dev->free_list_ids);
+
+	/* Contexts are removed from the ctx_ids set in the context release path,
+	 * meaning the ref_count reached zero before they get removed. We need
+	 * to make sure we're not trying to acquire a context that's being
+	 * destroyed.
+	 */
+	free_list = xa_load(&pvr_dev->free_list_ids, id);
+	if (free_list && !kref_get_unless_zero(&free_list->ref_count))
+		free_list = NULL;
+	xa_unlock(&pvr_dev->free_list_ids);
+
+	return free_list;
+}
+
+void
+pvr_free_list_put(struct pvr_free_list *free_list);
+
+void
+pvr_free_list_add_hwrt(struct pvr_free_list *free_list, struct pvr_hwrt_data *hwrt_data);
+void
+pvr_free_list_remove_hwrt(struct pvr_free_list *free_list, struct pvr_hwrt_data *hwrt_data);
+
+void pvr_free_list_process_grow_req(struct pvr_device *pvr_dev,
+				    struct rogue_fwif_fwccb_cmd_freelist_gs_data *req);
+
+void
+pvr_free_list_process_reconstruct_req(struct pvr_device *pvr_dev,
+				struct rogue_fwif_fwccb_cmd_freelists_reconstruction_data *req);
+
+#endif /* PVR_FREE_LIST_H */
diff --git a/drivers/gpu/drm/imagination/pvr_hwrt.c b/drivers/gpu/drm/imagination/pvr_hwrt.c
new file mode 100644
index 000000000000..cd611cdd1179
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_hwrt.c
@@ -0,0 +1,549 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_free_list.h"
+#include "pvr_hwrt.h"
+#include "pvr_gem.h"
+#include "pvr_rogue_cr_defs_client.h"
+#include "pvr_rogue_fwif.h"
+
+#include <drm/drm_gem.h>
+#include <linux/bitops.h>
+#include <linux/math.h>
+#include <linux/slab.h>
+#include <linux/xarray.h>
+#include <uapi/drm/pvr_drm.h>
+
+static_assert(ROGUE_FWIF_NUM_RTDATAS == 2);
+static_assert(ROGUE_FWIF_NUM_GEOMDATAS == 1);
+static_assert(ROGUE_FWIF_NUM_RTDATA_FREELISTS == 2);
+
+/*
+ * struct pvr_rt_mtile_info - Render target macrotile information
+ */
+struct pvr_rt_mtile_info {
+	u32 mtile_x[3];
+	u32 mtile_y[3];
+	u32 tile_max_x;
+	u32 tile_max_y;
+	u32 tile_size_x;
+	u32 tile_size_y;
+	u32 num_tiles_x;
+	u32 num_tiles_y;
+};
+
+/* Size of Shadow Render Target Cache entry */
+#define SRTC_ENTRY_SIZE sizeof(u32)
+/* Size of Renders Accumulation Array entry */
+#define RAA_ENTRY_SIZE sizeof(u32)
+
+static int
+hwrt_init_kernel_structure(struct pvr_file *pvr_file,
+			   struct drm_pvr_ioctl_create_hwrt_dataset_args *args,
+			   struct pvr_hwrt_dataset *hwrt)
+{
+	struct pvr_device *pvr_dev = pvr_file->pvr_dev;
+	int err;
+	int i;
+
+	hwrt->pvr_dev = pvr_dev;
+	hwrt->max_rts = args->layers;
+
+	/* Get pointers to the free lists */
+	for (i = 0; i < ARRAY_SIZE(hwrt->free_lists); i++) {
+		hwrt->free_lists[i] = pvr_free_list_lookup(pvr_file,  args->free_list_handles[i]);
+		if (!hwrt->free_lists[i]) {
+			err = -EINVAL;
+			goto err_put_free_lists;
+		}
+	}
+
+	if (hwrt->free_lists[ROGUE_FW_LOCAL_FREELIST]->current_pages <
+	    pvr_get_free_list_min_pages(pvr_dev)) {
+		err = -EINVAL;
+		goto err_put_free_lists;
+	}
+
+	return 0;
+
+err_put_free_lists:
+	for (i = 0; i < ARRAY_SIZE(hwrt->free_lists); i++) {
+		pvr_free_list_put(hwrt->free_lists[i]);
+		hwrt->free_lists[i] = NULL;
+	}
+
+	return err;
+}
+
+static void
+hwrt_fini_kernel_structure(struct pvr_hwrt_dataset *hwrt)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(hwrt->free_lists); i++) {
+		pvr_free_list_put(hwrt->free_lists[i]);
+		hwrt->free_lists[i] = NULL;
+	}
+}
+
+static void
+hwrt_fini_common_fw_structure(struct pvr_hwrt_dataset *hwrt)
+{
+	pvr_fw_object_destroy(hwrt->common_fw_obj);
+}
+
+static int
+get_cr_isp_mtile_size_val(struct pvr_device *pvr_dev, u32 samples,
+			  struct pvr_rt_mtile_info *info, u32 *value_out)
+{
+	u32 x = info->mtile_x[0];
+	u32 y = info->mtile_y[0];
+	u32 samples_per_pixel;
+	int err;
+
+	err = PVR_FEATURE_VALUE(pvr_dev, isp_samples_per_pixel, &samples_per_pixel);
+	if (err)
+		return err;
+
+	if (samples_per_pixel == 1) {
+		if (samples >= 4)
+			x <<= 1;
+		if (samples >= 2)
+			y <<= 1;
+	} else if (samples_per_pixel == 2) {
+		if (samples >= 8)
+			x <<= 1;
+		if (samples >= 4)
+			y <<= 1;
+	} else if (samples_per_pixel == 4) {
+		if (samples >= 8)
+			y <<= 1;
+	} else {
+		WARN(true, "Unsupported ISP samples per pixel value");
+		return -EINVAL;
+	}
+
+	*value_out = ((x << ROGUE_CR_ISP_MTILE_SIZE_X_SHIFT) & ~ROGUE_CR_ISP_MTILE_SIZE_X_CLRMSK) |
+		     ((y << ROGUE_CR_ISP_MTILE_SIZE_Y_SHIFT) & ~ROGUE_CR_ISP_MTILE_SIZE_Y_CLRMSK);
+
+	return 0;
+}
+
+static int
+get_cr_multisamplectl_val(u32 samples, bool y_flip, u64 *value_out)
+{
+	static const struct {
+		u8 x[8];
+		u8 y[8];
+	} sample_positions[4] = {
+		/* 1 sample */
+		{
+			.x = { 8 },
+			.y = { 8 },
+		},
+		/* 2 samples */
+		{
+			.x = { 12, 4 },
+			.y = { 12, 4 },
+		},
+		/* 4 samples */
+		{
+			.x = { 6, 14, 2, 10 },
+			.y = { 2, 6, 10, 14 },
+		},
+		/* 8 samples */
+		{
+			.x = { 9, 7, 13, 5, 3, 1, 11, 15 },
+			.y = { 5, 11, 9, 3, 13, 7, 15, 1 },
+		},
+	};
+	const int idx = fls(samples) - 1;
+	u64 value = 0;
+
+	if (idx < 0 || idx > 3)
+		return -EINVAL;
+
+	for (u32 i = 0; i < 8; i++) {
+		value |= ((u64)sample_positions[idx].x[i]) << (i * 8);
+		if (y_flip)
+			value |= (((u64)(16 - sample_positions[idx].y[i]) & 0xf)) << (i * 8 + 4);
+		else
+			value |= ((u64)sample_positions[idx].y[i]) << (i * 8 + 4);
+	}
+
+	*value_out = value;
+
+	return 0;
+}
+
+static int
+get_cr_te_aa_val(struct pvr_device *pvr_dev, u32 samples, u32 *value_out)
+{
+	u32 samples_per_pixel;
+	u32 value = 0;
+	int err = 0;
+
+	err = PVR_FEATURE_VALUE(pvr_dev, isp_samples_per_pixel, &samples_per_pixel);
+	if (err)
+		return err;
+
+	switch (samples_per_pixel) {
+	case 1:
+		if (samples >= 2)
+			value |= ROGUE_CR_TE_AA_Y_EN;
+		if (samples >= 4)
+			value |= ROGUE_CR_TE_AA_X_EN;
+		break;
+	case 2:
+		if (samples >= 2)
+			value |= ROGUE_CR_TE_AA_X2_EN;
+		if (samples >= 4)
+			value |= ROGUE_CR_TE_AA_Y_EN;
+		if (samples >= 8)
+			value |= ROGUE_CR_TE_AA_X_EN;
+		break;
+	case 4:
+		if (samples >= 2)
+			value |= ROGUE_CR_TE_AA_X2_EN;
+		if (samples >= 4)
+			value |= ROGUE_CR_TE_AA_Y2_EN;
+		if (samples >= 8)
+			value |= ROGUE_CR_TE_AA_Y_EN;
+		break;
+	default:
+		WARN(true, "Unsupported ISP samples per pixel value");
+		return -EINVAL;
+	}
+
+	*value_out = value;
+
+	return 0;
+}
+
+static void
+hwrtdata_common_init(void *cpu_ptr, void *priv)
+{
+	struct pvr_hwrt_dataset *hwrt = priv;
+
+	memcpy(cpu_ptr, &hwrt->common, sizeof(hwrt->common));
+}
+
+static int
+hwrt_init_common_fw_structure(struct pvr_file *pvr_file,
+			      struct drm_pvr_ioctl_create_hwrt_dataset_args *args,
+			      struct pvr_hwrt_dataset *hwrt)
+{
+	struct drm_pvr_create_hwrt_geom_data_args *geom_data_args = &args->geom_data_args;
+	struct pvr_device *pvr_dev = pvr_file->pvr_dev;
+	struct pvr_rt_mtile_info info;
+	int err;
+
+	err = PVR_FEATURE_VALUE(pvr_dev, tile_size_x, &info.tile_size_x);
+	if (WARN_ON(err))
+		return err;
+
+	err = PVR_FEATURE_VALUE(pvr_dev, tile_size_y, &info.tile_size_y);
+	if (WARN_ON(err))
+		return err;
+
+	info.num_tiles_x = DIV_ROUND_UP(args->width, info.tile_size_x);
+	info.num_tiles_y = DIV_ROUND_UP(args->height, info.tile_size_y);
+
+	if (PVR_HAS_FEATURE(pvr_dev, simple_parameter_format_version)) {
+		u32 parameter_format;
+
+		err = PVR_FEATURE_VALUE(pvr_dev, simple_parameter_format_version,
+					&parameter_format);
+		if (WARN_ON(err))
+			return err;
+
+		WARN_ON(parameter_format != 2);
+
+		/*
+		 * Set up 16 macrotiles with a multiple of 2x2 tiles per macrotile, which is
+		 * aligned to a tile group.
+		 */
+		info.mtile_x[0] = DIV_ROUND_UP(info.num_tiles_x, 8) * 2;
+		info.mtile_y[0] = DIV_ROUND_UP(info.num_tiles_y, 8) * 2;
+		info.mtile_x[1] = 0;
+		info.mtile_y[1] = 0;
+		info.mtile_x[2] = 0;
+		info.mtile_y[2] = 0;
+		info.tile_max_x = round_up(info.num_tiles_x, 2) - 1;
+		info.tile_max_y = round_up(info.num_tiles_y, 2) - 1;
+	} else {
+		/* Set up 16 macrotiles with a multiple of 4x4 tiles per macrotile. */
+		info.mtile_x[0] = round_up(DIV_ROUND_UP(info.num_tiles_x, 4), 4);
+		info.mtile_y[0] = round_up(DIV_ROUND_UP(info.num_tiles_y, 4), 4);
+		info.mtile_x[1] = info.mtile_x[0] * 2;
+		info.mtile_y[1] = info.mtile_y[0] * 2;
+		info.mtile_x[2] = info.mtile_x[0] * 3;
+		info.mtile_y[2] = info.mtile_y[0] * 3;
+		info.tile_max_x = info.num_tiles_x - 1;
+		info.tile_max_y = info.num_tiles_y - 1;
+	}
+
+	hwrt->common.geom_caches_need_zeroing = false;
+
+	hwrt->common.isp_merge_lower_x = args->isp_merge_lower_x;
+	hwrt->common.isp_merge_lower_y = args->isp_merge_lower_y;
+	hwrt->common.isp_merge_upper_x = args->isp_merge_upper_x;
+	hwrt->common.isp_merge_upper_y = args->isp_merge_upper_y;
+	hwrt->common.isp_merge_scale_x = args->isp_merge_scale_x;
+	hwrt->common.isp_merge_scale_y = args->isp_merge_scale_y;
+
+	err = get_cr_multisamplectl_val(args->samples, false,
+					&hwrt->common.multi_sample_ctl);
+	if (err)
+		return err;
+
+	err = get_cr_multisamplectl_val(args->samples, true,
+					&hwrt->common.flipped_multi_sample_ctl);
+	if (err)
+		return err;
+
+	hwrt->common.mtile_stride = info.mtile_x[0] * info.mtile_y[0];
+
+	err = get_cr_te_aa_val(pvr_dev, args->samples, &hwrt->common.teaa);
+	if (err)
+		return err;
+
+	hwrt->common.screen_pixel_max =
+		(((args->width - 1) << ROGUE_CR_PPP_SCREEN_PIXXMAX_SHIFT) &
+		 ~ROGUE_CR_PPP_SCREEN_PIXXMAX_CLRMSK) |
+		(((args->height - 1) << ROGUE_CR_PPP_SCREEN_PIXYMAX_SHIFT) &
+		 ~ROGUE_CR_PPP_SCREEN_PIXYMAX_CLRMSK);
+
+	hwrt->common.te_screen =
+		((info.tile_max_x << ROGUE_CR_TE_SCREEN_XMAX_SHIFT) &
+		 ~ROGUE_CR_TE_SCREEN_XMAX_CLRMSK) |
+		((info.tile_max_y << ROGUE_CR_TE_SCREEN_YMAX_SHIFT) &
+		 ~ROGUE_CR_TE_SCREEN_YMAX_CLRMSK);
+	hwrt->common.te_mtile1 =
+		((info.mtile_x[0] << ROGUE_CR_TE_MTILE1_X1_SHIFT) & ~ROGUE_CR_TE_MTILE1_X1_CLRMSK) |
+		((info.mtile_x[1] << ROGUE_CR_TE_MTILE1_X2_SHIFT) & ~ROGUE_CR_TE_MTILE1_X2_CLRMSK) |
+		((info.mtile_x[2] << ROGUE_CR_TE_MTILE1_X3_SHIFT) & ~ROGUE_CR_TE_MTILE1_X3_CLRMSK);
+	hwrt->common.te_mtile2 =
+		((info.mtile_y[0] << ROGUE_CR_TE_MTILE2_Y1_SHIFT) & ~ROGUE_CR_TE_MTILE2_Y1_CLRMSK) |
+		((info.mtile_y[1] << ROGUE_CR_TE_MTILE2_Y2_SHIFT) & ~ROGUE_CR_TE_MTILE2_Y2_CLRMSK) |
+		((info.mtile_y[2] << ROGUE_CR_TE_MTILE2_Y3_SHIFT) & ~ROGUE_CR_TE_MTILE2_Y3_CLRMSK);
+
+	err = get_cr_isp_mtile_size_val(pvr_dev, args->samples, &info,
+					&hwrt->common.isp_mtile_size);
+	if (err)
+		return err;
+
+	hwrt->common.tpc_stride = geom_data_args->tpc_stride;
+	hwrt->common.tpc_size = geom_data_args->tpc_size;
+
+	hwrt->common.rgn_header_size = args->region_header_size;
+
+	err = pvr_fw_object_create(pvr_dev, sizeof(struct rogue_fwif_hwrtdata_common),
+				   PVR_BO_FW_FLAGS_DEVICE_UNCACHED, hwrtdata_common_init, hwrt,
+				   &hwrt->common_fw_obj);
+
+	return err;
+}
+
+static void
+hwrt_fw_data_init(void *cpu_ptr, void *priv)
+{
+	struct pvr_hwrt_data *hwrt_data = priv;
+
+	memcpy(cpu_ptr, &hwrt_data->data, sizeof(hwrt_data->data));
+}
+
+static int
+hwrt_data_init_fw_structure(struct pvr_file *pvr_file,
+			    struct pvr_hwrt_dataset *hwrt,
+			    struct drm_pvr_ioctl_create_hwrt_dataset_args *args,
+			    struct drm_pvr_create_hwrt_rt_data_args *rt_data_args,
+			    struct pvr_hwrt_data *hwrt_data)
+{
+	struct drm_pvr_create_hwrt_geom_data_args *geom_data_args = &args->geom_data_args;
+	struct pvr_device *pvr_dev = pvr_file->pvr_dev;
+	struct rogue_fwif_rta_ctl *rta_ctl;
+	int free_list_i;
+	int err;
+
+	pvr_fw_object_get_fw_addr(hwrt->common_fw_obj,
+				  &hwrt_data->data.hwrt_data_common_fw_addr);
+
+	for (free_list_i = 0; free_list_i < ARRAY_SIZE(hwrt->free_lists); free_list_i++) {
+		pvr_fw_object_get_fw_addr(hwrt->free_lists[free_list_i]->fw_obj,
+					  &hwrt_data->data.freelists_fw_addr[free_list_i]);
+	}
+
+	hwrt_data->data.tail_ptrs_dev_addr = geom_data_args->tpc_dev_addr;
+	hwrt_data->data.vheap_table_dev_addr = geom_data_args->vheap_table_dev_addr;
+	hwrt_data->data.rtc_dev_addr = geom_data_args->rtc_dev_addr;
+
+	hwrt_data->data.pm_mlist_dev_addr = rt_data_args->pm_mlist_dev_addr;
+	hwrt_data->data.macrotile_array_dev_addr = rt_data_args->macrotile_array_dev_addr;
+	hwrt_data->data.rgn_header_dev_addr = rt_data_args->region_header_dev_addr;
+
+	rta_ctl = &hwrt_data->data.rta_ctl;
+
+	rta_ctl->render_target_index = 0;
+	rta_ctl->active_render_targets = 0;
+	rta_ctl->valid_render_targets_fw_addr = 0;
+	rta_ctl->rta_num_partial_renders_fw_addr = 0;
+	rta_ctl->max_rts = args->layers;
+
+	if (args->layers > 1) {
+		err = pvr_fw_object_create(pvr_dev, args->layers * SRTC_ENTRY_SIZE,
+					   PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+					   NULL, NULL, &hwrt_data->srtc_obj);
+		if (err)
+			return err;
+		pvr_fw_object_get_fw_addr(hwrt_data->srtc_obj,
+					  &rta_ctl->valid_render_targets_fw_addr);
+
+		err = pvr_fw_object_create(pvr_dev, args->layers * RAA_ENTRY_SIZE,
+					   PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+					   NULL, NULL, &hwrt_data->raa_obj);
+		if (err)
+			goto err_put_shadow_rt_cache;
+		pvr_fw_object_get_fw_addr(hwrt_data->raa_obj,
+					  &rta_ctl->rta_num_partial_renders_fw_addr);
+	}
+
+	err = pvr_fw_object_create(pvr_dev, sizeof(struct rogue_fwif_hwrtdata),
+				   PVR_BO_FW_FLAGS_DEVICE_UNCACHED,
+				   hwrt_fw_data_init, hwrt_data, &hwrt_data->fw_obj);
+	if (err)
+		goto err_put_raa_obj;
+
+	pvr_free_list_add_hwrt(hwrt->free_lists[0], hwrt_data);
+
+	return 0;
+
+err_put_raa_obj:
+	if (args->layers > 1)
+		pvr_fw_object_destroy(hwrt_data->raa_obj);
+
+err_put_shadow_rt_cache:
+	if (args->layers > 1)
+		pvr_fw_object_destroy(hwrt_data->srtc_obj);
+
+	return err;
+}
+
+static void
+hwrt_data_fini_fw_structure(struct pvr_hwrt_dataset *hwrt, int hwrt_nr)
+{
+	struct pvr_hwrt_data *hwrt_data = &hwrt->data[hwrt_nr];
+
+	pvr_free_list_remove_hwrt(hwrt->free_lists[0], hwrt_data);
+
+	if (hwrt->max_rts > 1) {
+		pvr_fw_object_destroy(hwrt_data->raa_obj);
+		pvr_fw_object_destroy(hwrt_data->srtc_obj);
+	}
+
+	pvr_fw_object_destroy(hwrt_data->fw_obj);
+}
+
+/**
+ * pvr_hwrt_dataset_create() - Create a new HWRT dataset
+ * @pvr_file: Pointer to pvr_file structure.
+ * @args: Creation arguments from userspace.
+ *
+ * Return:
+ *  * Pointer to new HWRT, or
+ *  * ERR_PTR(-%ENOMEM) on out of memory.
+ */
+struct pvr_hwrt_dataset *
+pvr_hwrt_dataset_create(struct pvr_file *pvr_file,
+			struct drm_pvr_ioctl_create_hwrt_dataset_args *args)
+{
+	struct pvr_hwrt_dataset *hwrt;
+	int err;
+
+	/* Create and fill out the kernel structure */
+	hwrt = kzalloc(sizeof(*hwrt), GFP_KERNEL);
+
+	if (!hwrt)
+		return ERR_PTR(-ENOMEM);
+
+	kref_init(&hwrt->ref_count);
+
+	err = hwrt_init_kernel_structure(pvr_file, args, hwrt);
+	if (err < 0)
+		goto err_free;
+
+	err = hwrt_init_common_fw_structure(pvr_file, args, hwrt);
+	if (err < 0)
+		goto err_free;
+
+	for (int i = 0; i < ARRAY_SIZE(hwrt->data); i++) {
+		err = hwrt_data_init_fw_structure(pvr_file, hwrt, args,
+						  &args->rt_data_args[i],
+						  &hwrt->data[i]);
+		if (err < 0) {
+			i--;
+			/* Destroy already created structures. */
+			for (; i >= 0; i--)
+				hwrt_data_fini_fw_structure(hwrt, i);
+			goto err_free;
+		}
+
+		hwrt->data[i].hwrt_dataset = hwrt;
+	}
+
+	return hwrt;
+
+err_free:
+	pvr_hwrt_dataset_put(hwrt);
+
+	return ERR_PTR(err);
+}
+
+static void
+pvr_hwrt_dataset_release(struct kref *ref_count)
+{
+	struct pvr_hwrt_dataset *hwrt =
+		container_of(ref_count, struct pvr_hwrt_dataset, ref_count);
+
+	for (int i = ARRAY_SIZE(hwrt->data) - 1; i >= 0; i--) {
+		WARN_ON(pvr_fw_structure_cleanup(hwrt->pvr_dev, ROGUE_FWIF_CLEANUP_HWRTDATA,
+						 hwrt->data[i].fw_obj, 0));
+		hwrt_data_fini_fw_structure(hwrt, i);
+	}
+
+	hwrt_fini_common_fw_structure(hwrt);
+	hwrt_fini_kernel_structure(hwrt);
+
+	kfree(hwrt);
+}
+
+/**
+ * pvr_destroy_hwrt_datasets_for_file: Destroy any HWRT datasets associated
+ * with the given file.
+ * @pvr_file: Pointer to pvr_file structure.
+ *
+ * Removes all HWRT datasets associated with @pvr_file from the device
+ * hwrt_dataset list and drops initial references. HWRT datasets will then be
+ * destroyed once all outstanding references are dropped.
+ */
+void pvr_destroy_hwrt_datasets_for_file(struct pvr_file *pvr_file)
+{
+	struct pvr_hwrt_dataset *hwrt;
+	unsigned long handle;
+
+	xa_for_each(&pvr_file->hwrt_handles, handle, hwrt) {
+		(void)hwrt;
+		pvr_hwrt_dataset_put(xa_erase(&pvr_file->hwrt_handles, handle));
+	}
+}
+
+/**
+ * pvr_hwrt_dataset_put() - Release reference on HWRT dataset
+ * @hwrt: Pointer to HWRT dataset to release reference on
+ */
+void
+pvr_hwrt_dataset_put(struct pvr_hwrt_dataset *hwrt)
+{
+	if (hwrt)
+		kref_put(&hwrt->ref_count, pvr_hwrt_dataset_release);
+}
diff --git a/drivers/gpu/drm/imagination/pvr_hwrt.h b/drivers/gpu/drm/imagination/pvr_hwrt.h
new file mode 100644
index 000000000000..dd7797a85f27
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_hwrt.h
@@ -0,0 +1,165 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_HWRT_H
+#define PVR_HWRT_H
+
+#include <linux/compiler_attributes.h>
+#include <linux/kref.h>
+#include <linux/list.h>
+#include <linux/types.h>
+#include <linux/xarray.h>
+#include <uapi/drm/pvr_drm.h>
+
+#include "pvr_device.h"
+#include "pvr_rogue_fwif_shared.h"
+
+/* Forward declaration from pvr_free_list.h. */
+struct pvr_free_list;
+
+/* Forward declaration from pvr_gem.h. */
+struct pvr_fw_object;
+
+/**
+ * struct pvr_hwrt_data - structure representing HWRT data
+ */
+struct pvr_hwrt_data {
+	/** @fw_obj: FW object representing the FW-side structure. */
+	struct pvr_fw_object *fw_obj;
+
+	/** @data: Local copy of FW-side structure. */
+	struct rogue_fwif_hwrtdata data;
+
+	/** @freelist_node: List node connecting this HWRT to the local freelist. */
+	struct list_head freelist_node;
+
+	/**
+	 * @srtc_obj: FW object representing shadow render target cache.
+	 *
+	 * Only valid if @max_rts > 1.
+	 */
+	struct pvr_fw_object *srtc_obj;
+
+	/**
+	 * @raa_obj: FW object representing renders accumulation array.
+	 *
+	 * Only valid if @max_rts > 1.
+	 */
+	struct pvr_fw_object *raa_obj;
+
+	/** @hwrt_dataset: Back pointer to owning HWRT dataset. */
+	struct pvr_hwrt_dataset *hwrt_dataset;
+};
+
+/**
+ * struct pvr_hwrt_dataset - structure representing a HWRT data set.
+ */
+struct pvr_hwrt_dataset {
+	/** @ref_count: Reference count of object. */
+	struct kref ref_count;
+
+	/** @pvr_dev: Pointer to device that owns this object. */
+	struct pvr_device *pvr_dev;
+
+	/** @common_fw_obj: FW object representing common FW-side structure. */
+	struct pvr_fw_object *common_fw_obj;
+
+	struct rogue_fwif_hwrtdata_common common;
+
+	/** @data: HWRT data structures belonging to this set. */
+	struct pvr_hwrt_data data[ROGUE_FWIF_NUM_RTDATAS];
+
+	/** @free_lists: Free lists used by HWRT data set. */
+	struct pvr_free_list *free_lists[ROGUE_FWIF_NUM_RTDATA_FREELISTS];
+
+	/** @max_rts: Maximum render targets for this HWRT data set. */
+	u16 max_rts;
+};
+
+struct pvr_hwrt_dataset *
+pvr_hwrt_dataset_create(struct pvr_file *pvr_file,
+			struct drm_pvr_ioctl_create_hwrt_dataset_args *args);
+
+void
+pvr_destroy_hwrt_datasets_for_file(struct pvr_file *pvr_file);
+
+/**
+ * pvr_hwrt_dataset_lookup() - Lookup HWRT dataset pointer from handle
+ * @pvr_file: Pointer to pvr_file structure.
+ * @handle: Object handle.
+ *
+ * Takes reference on dataset object. Call pvr_hwrt_dataset_put() to release.
+ *
+ * Returns:
+ *  * The requested object on success, or
+ *  * %NULL on failure (object does not exist in list, or is not a HWRT
+ *    dataset)
+ */
+static __always_inline struct pvr_hwrt_dataset *
+pvr_hwrt_dataset_lookup(struct pvr_file *pvr_file, u32 handle)
+{
+	struct pvr_hwrt_dataset *hwrt;
+
+	xa_lock(&pvr_file->hwrt_handles);
+	hwrt = xa_load(&pvr_file->hwrt_handles, handle);
+
+	if (hwrt)
+		kref_get(&hwrt->ref_count);
+
+	xa_unlock(&pvr_file->hwrt_handles);
+
+	return hwrt;
+}
+
+void
+pvr_hwrt_dataset_put(struct pvr_hwrt_dataset *hwrt);
+
+/**
+ * pvr_hwrt_data_lookup() - Lookup HWRT data pointer from handle and index
+ * @pvr_file: Pointer to pvr_file structure.
+ * @handle: Object handle.
+ * @index: Index of RT data within dataset.
+ *
+ * Takes reference on dataset object. Call pvr_hwrt_data_put() to release.
+ *
+ * Returns:
+ *  * The requested object on success, or
+ *  * %NULL on failure (object does not exist in list, or is not a HWRT
+ *    dataset, or index is out of range)
+ */
+static __always_inline struct pvr_hwrt_data *
+pvr_hwrt_data_lookup(struct pvr_file *pvr_file, u32 handle, u32 index)
+{
+	struct pvr_hwrt_dataset *hwrt_dataset = pvr_hwrt_dataset_lookup(pvr_file, handle);
+
+	if (hwrt_dataset) {
+		if (index < ARRAY_SIZE(hwrt_dataset->data))
+			return &hwrt_dataset->data[index];
+
+		pvr_hwrt_dataset_put(hwrt_dataset);
+	}
+
+	return NULL;
+}
+
+/**
+ * pvr_hwrt_data_put() - Release reference on HWRT data
+ * @hwrt: Pointer to HWRT data to release reference on
+ */
+static __always_inline void
+pvr_hwrt_data_put(struct pvr_hwrt_data *hwrt)
+{
+	if (hwrt)
+		pvr_hwrt_dataset_put(hwrt->hwrt_dataset);
+}
+
+static __always_inline struct pvr_hwrt_data *
+pvr_hwrt_data_get(struct pvr_hwrt_data *hwrt)
+{
+	if (hwrt)
+		kref_get(&hwrt->hwrt_dataset->ref_count);
+
+	return hwrt;
+}
+
+#endif /* PVR_HWRT_H */
-- 
2.42.0


