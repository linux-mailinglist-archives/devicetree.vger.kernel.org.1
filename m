Return-Path: <devicetree+bounces-123031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC899D33CC
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 07:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20EE31F2192C
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 06:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CEF6158853;
	Wed, 20 Nov 2024 06:53:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2120.outbound.protection.partner.outlook.cn [139.219.17.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDE1158520;
	Wed, 20 Nov 2024 06:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732085600; cv=fail; b=RMFR3Ccmo+lYbAIz2LDI5dX2Jx4LqS5y1Tv/PIM5hMmHlZAT///aiTU9+FhTgbnSFLDquP3zjLyNDyuEPtKUKb8tugNBeTqgD8dmW43NQz9sS8hvAqqQVgihcUuvmDdK4HcjGMiCVemX8K35MrFLsuHsevDgaUV/tdPXQR59FkQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732085600; c=relaxed/simple;
	bh=Dvly3mq/jIYHdrE6CA87qLEYLoQV4IJ241kX6E0Fhz0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ei5p+PI8UB4dRLZQG0G2fEVxVJl0/gKYvI3G4vaNRZ0yR5lQ4ZXnjjrRD3hzybbbRk3qlpZU1gbVQQBrughfSCDkc+EluF03vQpknlpHVda2WFMbgffUMVcrkrtAaKocjfYEFZPjpNtdm5bfj7ascj6ePwOBUBYiVM4GwoSLHHo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyBaBdKZIYEC9HgGvnSMbsETUqAJpMYL/Xvg02Bn0R+QZXo+YykFmkrcyUgKE05mdu53JnzK0Z94MJvdQpTFd+dKvL+2R77JgCuEyY8psVlT+Vf8g4M0qb5EWIU+bqaZwZ6lgOWErKKUmSTY6MxZ0voN8JUObxUEVWAagCgzsE4eRarT/bXnIXHADcK9NRvTm9ztho4o5kPtHf46wHC2IAshnfNZIMnBXEUP1+IrPe5fSXQGMLMLxNToGyEqW/Z/35u6Vr2Ev7o01GzVer5iYZMss8v6cqmSjhQbaeReOctuwnhsJXy39lhHo8dgakFOPfzehOEY7MhyCTZlseDP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Or+srYcK09iMI0QRMnUdctDjKzFR4jUXRx4ck2QBYgs=;
 b=L074CYDkdXhYvXOrmQHN6KAaGqFBTaERJu6NSzM7LoUH2eoC/l8dX/OM5+PfSOn7QLppwcHgW2mob1iBieKF3p6ac2W/g2YoVVkzhRTNuAWXTmhX5szjEConq5fg27ADN8b9ZHF6TLCjyFIveJVxziwq79YKKOHMjOtjgPmVCSy3FNWCFs4V00wTVWM85LAsJrEwGxtsUj3mBpaestIZ8+XhBCvyc3l2rcUa2lO2yDHfwyqPvqWyQs7tyO6/XEXxP11U90HU7Lb7fZ/KpD5peLM7bZNxeURR+etbj8eAI2/buGQDyNuC3aKkwOFwmsJYYJVQUtjXVfym9+6u6iHceA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) by NTZPR01MB1100.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 06:20:23 +0000
Received: from NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 ([fe80::512d:38d7:ed9f:dfbe]) by
 NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn ([fe80::512d:38d7:ed9f:dfbe%4])
 with mapi id 15.20.8158.023; Wed, 20 Nov 2024 06:20:23 +0000
From: keith zhao <keith.zhao@starfivetech.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	william.qiu@starfivetech.com,
	xingyu.wu@starfivetech.com,
	kernel@esmil.dk,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	p.zabel@pengutronix.de,
	changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com,
	jack.zhu@starfivetech.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/9] drm: bridge: inno-hdmi: add inno bridge driver.
Date: Wed, 20 Nov 2024 14:18:42 +0800
Message-Id: <20241120061848.196754-4-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241120061848.196754-1-keith.zhao@starfivetech.com>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BJXPR01CA0059.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:12::26) To NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NTZPR01MB1050:EE_|NTZPR01MB1100:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a7aa604-d075-41f5-3a2e-08dd092b6a69
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|52116014|1800799024|41320700013|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	vVeqEPDxcwM+e8tp7xX0xRgIsRKxDImNZrzuYbIW1tJo8YdHPx/z/3l1IgV+ffqG/jCLgUp2YncYJU5D2Ek70Ug/G714YX44lRN9kyyJ1bFZj8gYk0nfCQpBrnvd1YfkIT2Yfpn+ZY0D4/YGSYiKUpNImXttQqvMyRA3Rs8oE2g2/G7c0iG+f/Yk0o+9sxxasRCIE9VOgvEM7QksYcUb+gQYn87Jp5xJbsNrNZpl2WXupL3euobMFkY60VueK9dJ0pyjr2cKP/LjVRuVAedRrKbx2a+2B3N3EKutcEq+3BVK56PwKzCkVHj4CeJuMwi5jfnlwIF/DnpY5auOGEtcaHdtuVLT01KxlPxsgx2s3t6cNOvxe3RV1xFcQvVTlsnChCYLBOfxIN8JbW9O5KGUYPKlVlZob+pyZ3K0wVAo1DTWIHTcc9URz4g4JTfIaBsnxZlbwUAEcbn/lv0apz7ADclVEkVXiSkdMXBj+hxUPF/8sfSypwSBpT6nJt/kihwmCFBPnzbvNGP/gJhx0Q6fN05m+5zjojxnn1bwnfw2w16AveIqYoMeDSM+VdvRthMbgTwMxOliCoko2uJxL0AqRVvb4Gm50OwVrbga326uO2r5/Oi8bMvE1wYDQI8eqClT
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(1800799024)(41320700013)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?SUdDMvaQddjqhK6TzKfhIUigjnOOPf4w8MLOmf2NG2Ertzk0zKxKEHghdekn?=
 =?us-ascii?Q?O8H6mPoSmHCBapH89SGhIQWYOpqMqfYsUUNHxhkYvoIoPsR2PGiynmLwyf97?=
 =?us-ascii?Q?3OUq91vxXLElJI1RA+k2wvwu3ePidJeMbdIysyUySCyETCCiFK4QkpBTqFef?=
 =?us-ascii?Q?zDP61nJXRRckyXwccx85addoktKIvbezYOCCQ+IA+dUbtKfkvk09A5/RAOCQ?=
 =?us-ascii?Q?gbdmb+cHg3S8AGRphQ2U21aMoptVvRn1zDZAxQ4Gm55jJN+ZwtT88wTzcM0N?=
 =?us-ascii?Q?hmiRjluNUwP6eXQigA2qofrXmkZ9JAgKQH4pe8C8mRwJEZzmCtm+MWQMppKx?=
 =?us-ascii?Q?k/DY7k5RPh7IPVL/lUA2pJLqk0WKvbtDblgQK1zwtqJlbXgWQEUhF0+mTavV?=
 =?us-ascii?Q?U8uCwqyIQXoa/qWrTfJm4oDOONJ/cQLk0kI7CNK2tArsA/ES4rZmSfDv/BQL?=
 =?us-ascii?Q?0mFH4FRK5KRt47bViBoYuVLU5iGZCoifm0URiUaHWGpHIN3C0JU4SQHsRL1+?=
 =?us-ascii?Q?7KiA1YgXoaAEGshvhkCeA60KVm0dJbhSZYlko89jHNjE6UyU9LLI+MYjY/tC?=
 =?us-ascii?Q?c7W/RzR9O62Pq96HVPtnhVPpXLDd2DYNR3sCqu5bd3hrZl7LDfR80opnAg2E?=
 =?us-ascii?Q?2Beh0aI3fqM2V9fMbrQaixqs+p4udwhjz1qxtQHP7uKfqXEGcdNh4WhtbM5u?=
 =?us-ascii?Q?iwCkV8Nhg2GHupEY9/FRBJF1f4CrunTFW5wMr5UGwhdejOdu1bIaTvxDNKyD?=
 =?us-ascii?Q?nqOYwM9VS6E3EeOieDRsjunNqV6jpYOUkuC8vpU1/+cT1ml27kBF27sEtLtx?=
 =?us-ascii?Q?da8MsWT0suTU7HXbgr1POt7oywwUfvOXweltI5Prf0tS9eZmqI1rQezwTHI4?=
 =?us-ascii?Q?Y5VBcrFawaO+3jh6C4Y8BvfsyOo9COaTeq7POSdpf6+n9ugFrwlX17G881j+?=
 =?us-ascii?Q?83tgKgjedKwGS9Njjuvj1gNZoq9PwirZiofRdijVIHcGpMqN1BAG5TtLKjMf?=
 =?us-ascii?Q?ERQcH1+S3+jGirlMG6rR9pcLPeW8QVgZwFYHanaGFacZvjDvG2HDKsYE6Ub5?=
 =?us-ascii?Q?zUxZYSA2Akqn66Pws4SFOztyNU0duAllvJnH7DX8wyBidxMC2vrkbL5yLnNO?=
 =?us-ascii?Q?JpZlktyZ4wF7JKjLLeYvj5E2iheTej0g/E36GT4Y7oqp/N46dWnq9MrpwQQg?=
 =?us-ascii?Q?l2v99FgkjcIjn5XCIJKPQ9q1qeYiHQN82qoJH/kGrJBeNns/DWSKLZ0ATwpU?=
 =?us-ascii?Q?xPvjmiiXXiXwHzN6CC4WD9RYMCYIxnbzQoJHOKNoduIz9NAYGEatbQnuSPn5?=
 =?us-ascii?Q?Q+SaVwIYABZQRcSAexX2VladoYE3JhCXYI8+XID/ASVkRoeaN4lbS3E7vUhg?=
 =?us-ascii?Q?X8eDz8zKn/ElQvNdd834gbVHGLH5fhNeOmGhMJS3TJB9ht8GPLAbDqz2NQsV?=
 =?us-ascii?Q?tif7h8aCbBpmQX0zcR7eEsvhcPxMROx4rcHoQCuR524JZWN/gUnte4aZUQjT?=
 =?us-ascii?Q?Vtg8Hf+zUeIbirIV8PD7F1IJbVBXNFUAAQaE9SQAf4BEraoCOqvA8qo6PNBi?=
 =?us-ascii?Q?8U+sINBsso4w6Q95oWjGeLoKfj1C/KcsDZtY21F6G8xiSp25eR9U5Pax5BNF?=
 =?us-ascii?Q?5g=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7aa604-d075-41f5-3a2e-08dd092b6a69
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 06:20:23.1732
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RdUvHEo0NE690xknQE+7ENsec01QT/HLimSOV2UYw4mqxATGISceJTq8jd2a+7ymKCRW4d5Z9tFFWhmkE7PIoCbACHB5AdRoB+/05mBBEQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1100

move rochchip inno hdmi connector to a newly created directory named
inno-hdmi.c, and rename rockchip/inno_hdmi.c to
rockchip/inno_hdmi-rockchip.c

This patch refines the Innosilicon HDMI architecture by abstracting
the existing connector into a bridge architecture.
The drm_bridge_connector_init function is used to create the connector.

Signed-off-by: keith zhao <keith.zhao@starfivetech.com>
---
 MAINTAINERS                                   |    2 +
 drivers/gpu/drm/bridge/Kconfig                |    2 +
 drivers/gpu/drm/bridge/Makefile               |    1 +
 drivers/gpu/drm/bridge/innosilicon/Kconfig    |    6 +
 drivers/gpu/drm/bridge/innosilicon/Makefile   |    2 +
 .../gpu/drm/bridge/innosilicon/inno-hdmi.c    |  376 ++++++
 .../gpu/drm/bridge/innosilicon/inno-hdmi.h    |   34 +
 drivers/gpu/drm/rockchip/Kconfig              |    1 +
 drivers/gpu/drm/rockchip/Makefile             |    2 +-
 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c |  690 +++++++++++
 .../{inno_hdmi.h => inno_hdmi-rockchip.h}     |    0
 drivers/gpu/drm/rockchip/inno_hdmi.c          | 1025 -----------------
 include/drm/bridge/inno_hdmi.h                |   56 +
 13 files changed, 1171 insertions(+), 1026 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/innosilicon/Kconfig
 create mode 100644 drivers/gpu/drm/bridge/innosilicon/Makefile
 create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
 create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h
 create mode 100644 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
 rename drivers/gpu/drm/rockchip/{inno_hdmi.h => inno_hdmi-rockchip.h} (100%)
 delete mode 100644 drivers/gpu/drm/rockchip/inno_hdmi.c
 create mode 100644 include/drm/bridge/inno_hdmi.h

diff --git a/MAINTAINERS b/MAINTAINERS
index f787dd625497..7766ee0bdd74 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7439,6 +7439,8 @@ S:	Maintained
 T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
 F:	Documentation/devicetree/bindings/display/starfive/
+F:	drivers/gpu/drm/bridge/innosilicon/
+F:	include/drm/bridge/inno_hdmi.h
 
 DRM DRIVER FOR SYNAPTICS R63353 PANELS
 M:	Michael Trimarchi <michael@amarulasolutions.com>
diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 683cb33805b2..37be5dd5213f 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -423,6 +423,8 @@ source "drivers/gpu/drm/bridge/cadence/Kconfig"
 
 source "drivers/gpu/drm/bridge/imx/Kconfig"
 
+source "drivers/gpu/drm/bridge/innosilicon/Kconfig"
+
 source "drivers/gpu/drm/bridge/synopsys/Kconfig"
 
 endmenu
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 3daf803ce80b..866d1e0fd8aa 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -41,4 +41,5 @@ obj-$(CONFIG_DRM_ITE_IT66121) += ite-it66121.o
 obj-y += analogix/
 obj-y += cadence/
 obj-y += imx/
+obj-y += innosilicon/
 obj-y += synopsys/
diff --git a/drivers/gpu/drm/bridge/innosilicon/Kconfig b/drivers/gpu/drm/bridge/innosilicon/Kconfig
new file mode 100644
index 000000000000..73dbed3b1c4d
--- /dev/null
+++ b/drivers/gpu/drm/bridge/innosilicon/Kconfig
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config DRM_INNO_HDMI
+	tristate
+	help
+	  Support the common interface which is part of the INNO
+	  Designware HDMI block.
diff --git a/drivers/gpu/drm/bridge/innosilicon/Makefile b/drivers/gpu/drm/bridge/innosilicon/Makefile
new file mode 100644
index 000000000000..3b3a961ab9fb
--- /dev/null
+++ b/drivers/gpu/drm/bridge/innosilicon/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DRM_INNO_HDMI) += inno-hdmi.o
diff --git a/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
new file mode 100644
index 000000000000..c26132b41bdf
--- /dev/null
+++ b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
@@ -0,0 +1,376 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ *    Zheng Yang <zhengyang@rock-chips.com>
+ *    Yakir Yang <ykk@rock-chips.com>
+ * Copyright (C) StarFive Technology Co., Ltd.
+ */
+
+#include <linux/irq.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+
+#include <drm/bridge/inno_hdmi.h>
+#include <drm/display/drm_hdmi_state_helper.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_of.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
+
+#include "inno-hdmi.h"
+
+u8 hdmi_readb(struct inno_hdmi *hdmi, u16 offset)
+{
+	return readl_relaxed(hdmi->regs + (offset) * 0x04);
+}
+EXPORT_SYMBOL_GPL(hdmi_readb);
+
+void hdmi_writeb(struct inno_hdmi *hdmi, u16 offset, u32 val)
+{
+	writel_relaxed(val, hdmi->regs + (offset) * 0x04);
+}
+EXPORT_SYMBOL_GPL(hdmi_writeb);
+
+void hdmi_modb(struct inno_hdmi *hdmi, u16 offset, u32 msk, u32 val)
+{
+	u8 temp = hdmi_readb(hdmi, offset) & ~msk;
+
+	temp |= val & msk;
+	hdmi_writeb(hdmi, offset, temp);
+}
+EXPORT_SYMBOL_GPL(hdmi_modb);
+
+void inno_hdmi_i2c_init(struct inno_hdmi *hdmi, unsigned long long rate)
+{
+	unsigned long long ddc_bus_freq = rate >> 2;
+
+	do_div(ddc_bus_freq, HDMI_SCL_RATE);
+
+	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
+	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
+
+	/* Clear the EDID interrupt flag and mute the interrupt */
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
+}
+EXPORT_SYMBOL_GPL(inno_hdmi_i2c_init);
+
+static irqreturn_t inno_hdmi_i2c_irq(struct inno_hdmi *hdmi)
+{
+	struct inno_hdmi_i2c *i2c = hdmi->i2c;
+	u8 stat;
+
+	stat = hdmi_readb(hdmi, HDMI_INTERRUPT_STATUS1);
+	if (!(stat & m_INT_EDID_READY))
+		return IRQ_NONE;
+
+	/* Clear HDMI EDID interrupt flag */
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
+
+	complete(&i2c->cmp);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t inno_hdmi_hardirq(int irq, void *dev_id)
+{
+	struct inno_hdmi *hdmi = dev_id;
+	irqreturn_t ret = IRQ_NONE;
+	u8 interrupt;
+
+	if (hdmi->i2c)
+		ret = inno_hdmi_i2c_irq(hdmi);
+
+	interrupt = hdmi_readb(hdmi, HDMI_STATUS);
+	if (interrupt & m_INT_HOTPLUG) {
+		hdmi_modb(hdmi, HDMI_STATUS, m_INT_HOTPLUG, m_INT_HOTPLUG);
+		ret = IRQ_WAKE_THREAD;
+	}
+
+	return ret;
+}
+
+static irqreturn_t inno_hdmi_irq(int irq, void *dev_id)
+{
+	struct inno_hdmi *hdmi = dev_id;
+
+	drm_helper_hpd_irq_event(hdmi->bridge.dev);
+
+	return IRQ_HANDLED;
+}
+
+static int inno_hdmi_i2c_read(struct inno_hdmi *hdmi, struct i2c_msg *msgs)
+{
+	int length = msgs->len;
+	u8 *buf = msgs->buf;
+	int ret;
+
+	ret = wait_for_completion_timeout(&hdmi->i2c->cmp, HZ / 10);
+	if (!ret)
+		return -EAGAIN;
+
+	while (length--)
+		*buf++ = hdmi_readb(hdmi, HDMI_EDID_FIFO_ADDR);
+
+	return 0;
+}
+
+static int inno_hdmi_i2c_write(struct inno_hdmi *hdmi, struct i2c_msg *msgs)
+{
+	/*
+	 * The DDC module only support read EDID message, so
+	 * we assume that each word write to this i2c adapter
+	 * should be the offset of EDID word address.
+	 */
+	if (msgs->len != 1 || (msgs->addr != DDC_ADDR && msgs->addr != DDC_SEGMENT_ADDR))
+		return -EINVAL;
+
+	reinit_completion(&hdmi->i2c->cmp);
+
+	if (msgs->addr == DDC_SEGMENT_ADDR)
+		hdmi->i2c->segment_addr = msgs->buf[0];
+	if (msgs->addr == DDC_ADDR)
+		hdmi->i2c->ddc_addr = msgs->buf[0];
+
+	/* Set edid fifo first addr */
+	hdmi_writeb(hdmi, HDMI_EDID_FIFO_OFFSET, 0x00);
+
+	/* Set edid word address 0x00/0x80 */
+	hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);
+
+	/* Set edid segment pointer */
+	hdmi_writeb(hdmi, HDMI_EDID_SEGMENT_POINTER, hdmi->i2c->segment_addr);
+
+	return 0;
+}
+
+static int inno_hdmi_i2c_xfer(struct i2c_adapter *adap,
+			      struct i2c_msg *msgs, int num)
+{
+	struct inno_hdmi *hdmi = i2c_get_adapdata(adap);
+	struct inno_hdmi_i2c *i2c = hdmi->i2c;
+	int i, ret = 0;
+
+	guard(mutex)(&i2c->lock);
+	/* Clear the EDID interrupt flag and unmute the interrupt */
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, m_INT_EDID_READY);
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
+
+	for (i = 0; i < num; i++) {
+		DRM_DEV_DEBUG(hdmi->dev,
+			      "xfer: num: %d/%d, len: %d, flags: %#x\n",
+			      i + 1, num, msgs[i].len, msgs[i].flags);
+
+		if (msgs[i].flags & I2C_M_RD)
+			ret = inno_hdmi_i2c_read(hdmi, &msgs[i]);
+		else
+			ret = inno_hdmi_i2c_write(hdmi, &msgs[i]);
+
+		if (ret < 0)
+			break;
+	}
+
+	if (!ret)
+		ret = num;
+
+	/* Mute HDMI EDID interrupt */
+	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
+
+	return ret;
+}
+
+static u32 inno_hdmi_i2c_func(struct i2c_adapter *adapter)
+{
+	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
+}
+
+static const struct i2c_algorithm inno_hdmi_algorithm = {
+	.master_xfer	= inno_hdmi_i2c_xfer,
+	.functionality	= inno_hdmi_i2c_func,
+};
+
+static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
+{
+	struct i2c_adapter *adap;
+	struct inno_hdmi_i2c *i2c;
+	int ret;
+
+	i2c = devm_kzalloc(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
+	if (!i2c)
+		return ERR_PTR(-ENOMEM);
+
+	mutex_init(&i2c->lock);
+	init_completion(&i2c->cmp);
+
+	adap = &i2c->adap;
+	adap->owner = THIS_MODULE;
+	adap->dev.parent = hdmi->dev;
+	adap->dev.of_node = hdmi->dev->of_node;
+	adap->algo = &inno_hdmi_algorithm;
+	strscpy(adap->name, "Inno HDMI", sizeof(adap->name));
+	i2c_set_adapdata(adap, hdmi);
+
+	ret = devm_i2c_add_adapter(hdmi->dev, adap);
+	if (ret) {
+		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
+		return ERR_PTR(ret);
+	}
+
+	hdmi->i2c = i2c;
+
+	DRM_DEV_DEBUG(hdmi->dev, "registered %s I2C bus driver\n", adap->name);
+
+	return adap;
+}
+
+static int inno_bridge_attach(struct drm_bridge *bridge,
+			      enum drm_bridge_attach_flags flags)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+
+	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
+		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
+					 bridge, flags);
+
+	return 0;
+}
+
+static enum drm_connector_status
+inno_hdmi_bridge_detect(struct drm_bridge *bridge)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+
+	return (hdmi_readb(hdmi, HDMI_STATUS) & m_HOTPLUG) ?
+		connector_status_connected : connector_status_disconnected;
+}
+
+static const struct drm_edid *inno_bridge_edid_read(struct drm_bridge *bridge,
+						    struct drm_connector *connector)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+
+	return drm_edid_read_ddc(connector, hdmi->bridge.ddc);
+}
+
+static enum drm_mode_status
+inno_bridge_mode_valid(struct drm_bridge *bridge,
+		       const struct drm_display_info *info,
+		       const struct drm_display_mode *mode)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+
+	enum drm_mode_status mode_status = MODE_OK;
+
+	if (hdmi->plat_data->mode_valid)
+		mode_status = hdmi->plat_data->mode_valid(hdmi, mode);
+
+	return mode_status;
+}
+
+static int inno_hdmi_clear_infoframe(struct drm_bridge *bridge,
+				     enum hdmi_infoframe_type type)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+	int ret = 0;
+
+	if (hdmi->plat_data->hdmi_clear_infoframe)
+		ret = hdmi->plat_data->hdmi_clear_infoframe(hdmi, type);
+
+	return ret;
+}
+
+static int inno_write_infoframe(struct drm_bridge *bridge,
+				enum hdmi_infoframe_type type,
+				const u8 *buffer, size_t len)
+{
+	struct inno_hdmi *hdmi = bridge->driver_private;
+	int ret = 0;
+
+	if (hdmi->plat_data->hdmi_write_infoframe)
+		ret = hdmi->plat_data->hdmi_write_infoframe(hdmi, type, buffer, len);
+
+	return ret;
+}
+
+static int inno_bridge_atomic_check(struct drm_bridge *bridge,
+					   struct drm_bridge_state *bridge_state,
+					   struct drm_crtc_state *crtc_state,
+					   struct drm_connector_state *conn_state)
+{
+	return drm_atomic_helper_connector_hdmi_check(conn_state->connector,
+							  bridge_state->base.state);
+}
+
+static const struct drm_bridge_funcs inno_bridge_funcs = {
+	.atomic_check	  = inno_bridge_atomic_check,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+	.attach = inno_bridge_attach,
+	.detect = inno_hdmi_bridge_detect,
+	.edid_read = inno_bridge_edid_read,
+	.mode_valid = inno_bridge_mode_valid,
+	.hdmi_clear_infoframe = inno_hdmi_clear_infoframe,
+	.hdmi_write_infoframe = inno_write_infoframe,
+};
+
+int inno_hdmi_bind(struct drm_device *drm, struct inno_hdmi *hdmi, struct drm_encoder	*encoder)
+{
+	int ret, irq;
+	struct platform_device *pdev = to_platform_device(hdmi->dev);
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		ret = irq;
+		return ret;
+	}
+
+	hdmi->ddc = inno_hdmi_i2c_adapter(hdmi);
+	if (IS_ERR(hdmi->ddc)) {
+		ret = PTR_ERR(hdmi->ddc);
+		hdmi->ddc = NULL;
+		return ret;
+	}
+
+	hdmi->next_bridge = devm_drm_of_get_bridge(hdmi->dev, hdmi->dev->of_node, 1, 0);
+	if (IS_ERR(hdmi->next_bridge))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->next_bridge),
+				     "failed to acquire drm_bridge\n");
+
+	hdmi->bridge.driver_private = hdmi;
+	hdmi->bridge.funcs = &inno_bridge_funcs;
+	hdmi->bridge.ddc = hdmi->ddc;
+#ifdef CONFIG_OF
+	hdmi->bridge.of_node = hdmi->dev->of_node;
+#endif
+	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID |
+					 DRM_BRIDGE_OP_HPD | DRM_BRIDGE_OP_HDMI;
+	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
+
+	hdmi->bridge.vendor = hdmi->plat_data->vendor;
+	hdmi->bridge.product = hdmi->plat_data->product;
+
+	devm_drm_bridge_add(hdmi->dev, &hdmi->bridge);
+
+	/* Unmute hotplug interrupt */
+	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
+
+	ret = devm_request_threaded_irq(hdmi->dev, irq, inno_hdmi_hardirq,
+					inno_hdmi_irq, IRQF_SHARED,
+					dev_name(hdmi->dev), hdmi);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(inno_hdmi_bind);
+
+MODULE_AUTHOR("Keith Zhao <keithzhao@starfivetech.com>");
+MODULE_DESCRIPTION("INNO HDMI transmitter driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:inno-hdmi");
diff --git a/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h
new file mode 100644
index 000000000000..75e3e002947f
--- /dev/null
+++ b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ *    Zheng Yang <zhengyang@rock-chips.com>
+ *    Yakir Yang <ykk@rock-chips.com>
+ * Copyright (C) StarFive Technology Co., Ltd.
+ */
+
+#ifndef __INNO_H__
+#define __INNO_H__
+
+#define DDC_SEGMENT_ADDR		0x30
+
+#define HDMI_SCL_RATE			(100 * 1000)
+#define DDC_BUS_FREQ_L			0x4b
+#define DDC_BUS_FREQ_H			0x4c
+
+#define HDMI_EDID_SEGMENT_POINTER	0x4d
+#define HDMI_EDID_WORD_ADDR		0x4e
+#define HDMI_EDID_FIFO_OFFSET		0x4f
+#define HDMI_EDID_FIFO_ADDR		0x50
+
+#define HDMI_INTERRUPT_MASK1		0xc0
+#define HDMI_INTERRUPT_STATUS1		0xc1
+#define	m_INT_ACTIVE_VSYNC		(1 << 5)
+#define m_INT_EDID_READY		(1 << 2)
+
+#define HDMI_STATUS			0xc8
+#define m_HOTPLUG			(1 << 7)
+#define m_MASK_INT_HOTPLUG		(1 << 5)
+#define m_INT_HOTPLUG			(1 << 1)
+#define v_MASK_INT_HOTPLUG(n)		(((n) & 0x1) << 5)
+
+#endif /* __INNO_H__ */
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 258dd38e1a8e..e728b5ee2219 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -78,6 +78,7 @@ config ROCKCHIP_INNO_HDMI
 	select DRM_DISPLAY_HDMI_HELPER
 	select DRM_DISPLAY_HDMI_STATE_HELPER
 	select DRM_DISPLAY_HELPER
+	select DRM_INNO_HDMI
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Innosilicon HDMI driver. If you want to enable
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 3ff7b21c0414..4b2d0cba8db3 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -12,7 +12,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) += dw-mipi-dsi-rockchip.o
-rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) += inno_hdmi.o
+rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) += inno_hdmi-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) += rockchip_lvds.o
 rockchipdrm-$(CONFIG_ROCKCHIP_RGB) += rockchip_rgb.o
 rockchipdrm-$(CONFIG_ROCKCHIP_RK3066_HDMI) += rk3066_hdmi.o
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
new file mode 100644
index 000000000000..2bde9d539e9e
--- /dev/null
+++ b/drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
@@ -0,0 +1,690 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ *    Zheng Yang <zhengyang@rock-chips.com>
+ *    Yakir Yang <ykk@rock-chips.com>
+ */
+
+#include <linux/irq.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/hdmi.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+
+#include <drm/bridge/inno_hdmi.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge_connector.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_of.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+
+#include <drm/display/drm_hdmi_helper.h>
+#include <drm/display/drm_hdmi_state_helper.h>
+
+#include "rockchip_drm_drv.h"
+
+#include "inno_hdmi-rockchip.h"
+
+#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
+
+struct inno_hdmi_rockchip_phy_config {
+	unsigned long pixelclock;
+	u8 pre_emphasis;
+	u8 voltage_level_control;
+};
+
+struct inno_hdmi_rockchip_variant {
+	struct inno_hdmi_rockchip_phy_config *phy_configs;
+	struct inno_hdmi_rockchip_phy_config *default_phy_config;
+	const struct inno_hdmi_plat_data *plat_data;
+};
+
+struct rockchip_inno_hdmi {
+	struct device *dev;
+
+	struct clk *pclk;
+	struct clk *refclk;
+
+	struct inno_hdmi inno_hdmi;
+	struct drm_connector	*connector;
+	struct rockchip_encoder	encoder;
+
+	const struct inno_hdmi_rockchip_variant *variant;
+	unsigned int			colorimetry;
+};
+
+static struct rockchip_inno_hdmi *encoder_to_rk_hdmi(struct drm_encoder *encoder)
+{
+	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
+
+	return container_of(rkencoder, struct rockchip_inno_hdmi, encoder);
+}
+
+static struct rockchip_inno_hdmi *inno_hdmi_to_rk_hdmi(struct inno_hdmi *inno_hdmi)
+{
+	return container_of(inno_hdmi, struct rockchip_inno_hdmi, inno_hdmi);
+}
+
+enum {
+	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
+	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
+	CSC_RGB_0_255_TO_RGB_16_235_8BIT,
+};
+
+static const char coeff_csc[][24] = {
+	/*
+	 * RGB2YUV:601 SD mode:
+	 *   Cb = -0.291G - 0.148R + 0.439B + 128
+	 *   Y  = 0.504G  + 0.257R + 0.098B + 16
+	 *   Cr = -0.368G + 0.439R - 0.071B + 128
+	 */
+	{
+		0x11, 0x5f, 0x01, 0x82, 0x10, 0x23, 0x00, 0x80,
+		0x02, 0x1c, 0x00, 0xa1, 0x00, 0x36, 0x00, 0x1e,
+		0x11, 0x29, 0x10, 0x59, 0x01, 0x82, 0x00, 0x80
+	},
+	/*
+	 * RGB2YUV:709 HD mode:
+	 *   Cb = - 0.338G - 0.101R + 0.439B + 128
+	 *   Y  = 0.614G   + 0.183R + 0.062B + 16
+	 *   Cr = - 0.399G + 0.439R - 0.040B + 128
+	 */
+	{
+		0x11, 0x98, 0x01, 0xc1, 0x10, 0x28, 0x00, 0x80,
+		0x02, 0x74, 0x00, 0xbb, 0x00, 0x3f, 0x00, 0x10,
+		0x11, 0x5a, 0x10, 0x67, 0x01, 0xc1, 0x00, 0x80
+	},
+	/*
+	 * RGB[0:255]2RGB[16:235]:
+	 *   R' = R x (235-16)/255 + 16;
+	 *   G' = G x (235-16)/255 + 16;
+	 *   B' = B x (235-16)/255 + 16;
+	 */
+	{
+		0x00, 0x00, 0x03, 0x6F, 0x00, 0x00, 0x00, 0x10,
+		0x03, 0x6F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
+		0x00, 0x00, 0x00, 0x00, 0x03, 0x6F, 0x00, 0x10
+	},
+};
+
+static struct inno_hdmi_rockchip_phy_config rk3036_hdmi_phy_configs[] = {
+	{  74250000, 0x3f, 0xbb },
+	{ 165000000, 0x6f, 0xbb },
+	{      ~0UL, 0x00, 0x00 }
+};
+
+static struct inno_hdmi_rockchip_phy_config rk3128_hdmi_phy_configs[] = {
+	{  74250000, 0x3f, 0xaa },
+	{ 165000000, 0x5f, 0xaa },
+	{      ~0UL, 0x00, 0x00 }
+};
+
+static int inno_hdmi_rockchip_find_phy_config(struct rockchip_inno_hdmi *rk_hdmi,
+					      unsigned long pixelclk)
+{
+	const struct inno_hdmi_rockchip_phy_config *phy_configs =
+						rk_hdmi->variant->phy_configs;
+	int i;
+
+	for (i = 0; phy_configs[i].pixelclock != ~0UL; i++) {
+		if (pixelclk <= phy_configs[i].pixelclock)
+			return i;
+	}
+
+	DRM_DEV_DEBUG(rk_hdmi->dev, "No phy configuration for pixelclock %lu\n",
+		      pixelclk);
+
+	return -EINVAL;
+}
+
+static void inno_hdmi_rockchip_sys_power(struct inno_hdmi *hdmi, bool enable)
+{
+	if (enable)
+		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_ON);
+	else
+		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
+}
+
+static void inno_hdmi_rockchip_standby(struct inno_hdmi *hdmi)
+{
+	inno_hdmi_rockchip_sys_power(hdmi, false);
+
+	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
+};
+
+static void inno_hdmi_rockchip_power_up(struct rockchip_inno_hdmi *rk_hdmi,
+					unsigned long mpixelclock)
+{
+	struct inno_hdmi_rockchip_phy_config *phy_config;
+	struct inno_hdmi *hdmi = &rk_hdmi->inno_hdmi;
+	int ret = inno_hdmi_rockchip_find_phy_config(rk_hdmi, mpixelclock);
+
+	if (ret < 0) {
+		phy_config = rk_hdmi->variant->default_phy_config;
+		DRM_DEV_ERROR(rk_hdmi->dev,
+			      "Using default phy configuration for TMDS rate %lu",
+			      mpixelclock);
+	} else {
+		phy_config = &rk_hdmi->variant->phy_configs[ret];
+	}
+
+	inno_hdmi_rockchip_sys_power(hdmi, false);
+
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, phy_config->pre_emphasis);
+	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, phy_config->voltage_level_control);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
+	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
+	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
+	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x00);
+	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x01);
+
+	inno_hdmi_rockchip_sys_power(hdmi, true);
+};
+
+static void inno_hdmi_rockchip_reset(struct inno_hdmi *hdmi)
+{
+	u32 val;
+	u32 msk;
+
+	hdmi_modb(hdmi, HDMI_SYS_CTRL, m_RST_DIGITAL, v_NOT_RST_DIGITAL);
+	udelay(100);
+
+	hdmi_modb(hdmi, HDMI_SYS_CTRL, m_RST_ANALOG, v_NOT_RST_ANALOG);
+	udelay(100);
+
+	msk = m_REG_CLK_INV | m_REG_CLK_SOURCE | m_POWER | m_INT_POL;
+	val = v_REG_CLK_INV | v_REG_CLK_SOURCE_SYS | v_PWR_ON | v_INT_POL_HIGH;
+	hdmi_modb(hdmi, HDMI_SYS_CTRL, msk, val);
+
+	inno_hdmi_rockchip_standby(hdmi);
+}
+
+static int inno_hdmi_rockchip_disable_frame(struct inno_hdmi *hdmi,
+					    enum hdmi_infoframe_type type)
+{
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
+		drm_err(hdmi->bridge.dev,
+			"Unsupported infoframe type: %u\n", type);
+		return 0;
+	}
+
+	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
+
+	return 0;
+}
+
+static int inno_hdmi_rockchip_upload_frame(struct inno_hdmi *hdmi,
+					   enum hdmi_infoframe_type type,
+					   const u8 *buffer, size_t len)
+{
+	ssize_t i;
+
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
+		drm_err(hdmi->bridge.dev,
+			"Unsupported infoframe type: %u\n", type);
+		return 0;
+	}
+
+	inno_hdmi_rockchip_disable_frame(hdmi, type);
+
+	for (i = 0; i < len; i++)
+		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);
+
+	return 0;
+}
+
+static int inno_hdmi_rockchip_config_video_csc(struct rockchip_inno_hdmi *rk_hdmi)
+{
+	struct drm_connector *connector = rk_hdmi->connector;
+	struct drm_connector_state *conn_state = connector->state;
+	struct inno_hdmi *hdmi = &rk_hdmi->inno_hdmi;
+
+	int c0_c2_change = 0;
+	int csc_enable = 0;
+	int csc_mode = 0;
+	int auto_csc = 0;
+	int value;
+	int i;
+
+	/* Input video mode is SDR RGB24bit, data enable signal from external */
+	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL1, v_DE_EXTERNAL |
+		    v_VIDEO_INPUT_FORMAT(VIDEO_INPUT_SDR_RGB444));
+
+	/* Input color hardcode to RGB, and output color hardcode to RGB888 */
+	value = v_VIDEO_INPUT_BITS(VIDEO_INPUT_8BITS) |
+		v_VIDEO_OUTPUT_COLOR(0) |
+		v_VIDEO_INPUT_CSP(0);
+	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
+
+	if (conn_state->hdmi.output_format == HDMI_COLORSPACE_RGB) {
+		if (conn_state->hdmi.is_limited_range) {
+			csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
+			auto_csc = AUTO_CSC_DISABLE;
+			c0_c2_change = C0_C2_CHANGE_DISABLE;
+			csc_enable = v_CSC_ENABLE;
+
+		} else {
+			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
+			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+
+			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
+				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
+				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
+				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
+			return 0;
+		}
+	} else {
+		if (rk_hdmi->colorimetry == HDMI_COLORIMETRY_ITU_601) {
+			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
+				csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
+				auto_csc = AUTO_CSC_DISABLE;
+				c0_c2_change = C0_C2_CHANGE_DISABLE;
+				csc_enable = v_CSC_ENABLE;
+			}
+		} else {
+			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
+				csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
+				auto_csc = AUTO_CSC_DISABLE;
+				c0_c2_change = C0_C2_CHANGE_DISABLE;
+				csc_enable = v_CSC_ENABLE;
+			}
+		}
+	}
+
+	for (i = 0; i < 24; i++)
+		hdmi_writeb(hdmi, HDMI_VIDEO_CSC_COEF + i,
+			    coeff_csc[csc_mode][i]);
+
+	value = v_SOF_DISABLE | csc_enable | v_COLOR_DEPTH_NOT_INDICATED(1);
+	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+	hdmi_modb(hdmi, HDMI_VIDEO_CONTRL, m_VIDEO_AUTO_CSC |
+		  m_VIDEO_C0_C2_SWAP, v_VIDEO_AUTO_CSC(auto_csc) |
+		  v_VIDEO_C0_C2_SWAP(c0_c2_change));
+
+	return 0;
+}
+
+static int inno_hdmi_rockchip_config_video_timing(struct inno_hdmi *hdmi,
+						  struct drm_display_mode *mode)
+{
+	int value;
+
+	/* Set detail external video timing polarity and interlace mode */
+	value = v_EXTERANL_VIDEO(1);
+	value |= mode->flags & DRM_MODE_FLAG_PHSYNC ?
+		 v_HSYNC_POLARITY(1) : v_HSYNC_POLARITY(0);
+	value |= mode->flags & DRM_MODE_FLAG_PVSYNC ?
+		 v_VSYNC_POLARITY(1) : v_VSYNC_POLARITY(0);
+	value |= mode->flags & DRM_MODE_FLAG_INTERLACE ?
+		 v_INETLACE(1) : v_INETLACE(0);
+	hdmi_writeb(hdmi, HDMI_VIDEO_TIMING_CTL, value);
+
+	/* Set detail external video timing */
+	value = mode->htotal;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_L, value & 0xFF);
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_H, (value >> 8) & 0xFF);
+
+	value = mode->htotal - mode->hdisplay;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
+
+	value = mode->htotal - mode->hsync_start;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
+
+	value = mode->hsync_end - mode->hsync_start;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_L, value & 0xFF);
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_H, (value >> 8) & 0xFF);
+
+	value = mode->vtotal;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_L, value & 0xFF);
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_H, (value >> 8) & 0xFF);
+
+	value = mode->vtotal - mode->vdisplay;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
+
+	value = mode->vtotal - mode->vsync_start;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
+
+	value = mode->vsync_end - mode->vsync_start;
+	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDURATION, value & 0xFF);
+
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_DIV_RATIO, 0x1e);
+	hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_LOW, 0x2c);
+	hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH, 0x01);
+
+	return 0;
+}
+
+static int inno_hdmi_rockchip_setup(struct rockchip_inno_hdmi *rk_hdmi,
+				    struct drm_atomic_state *state)
+{
+	struct inno_hdmi *hdmi = &rk_hdmi->inno_hdmi;
+	struct drm_connector *connector = rk_hdmi->connector;
+	struct drm_display_info *display = &connector->display_info;
+	struct drm_connector_state *new_conn_state;
+	struct drm_crtc_state *new_crtc_state;
+
+	new_conn_state = drm_atomic_get_new_connector_state(state, connector);
+	if (WARN_ON(!new_conn_state))
+		return -EINVAL;
+
+	new_crtc_state = drm_atomic_get_new_crtc_state(state, new_conn_state->crtc);
+	if (WARN_ON(!new_crtc_state))
+		return -EINVAL;
+
+	/* Mute video and audio output */
+	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
+		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
+
+	/* Set HDMI Mode */
+	hdmi_writeb(hdmi, HDMI_HDCP_CTRL,
+		    v_HDMI_DVI(display->is_hdmi));
+
+	inno_hdmi_rockchip_config_video_timing(hdmi, &new_crtc_state->adjusted_mode);
+
+	inno_hdmi_rockchip_config_video_csc(rk_hdmi);
+
+	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
+
+	/*
+	 * When IP controller have configured to an accurate video
+	 * timing, then the TMDS clock source would be switched to
+	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
+	 * clock rate, and reconfigure the DDC clock.
+	 */
+	inno_hdmi_i2c_init(hdmi, new_conn_state->hdmi.tmds_char_rate);
+
+	/* Unmute video and audio output */
+	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
+		  v_AUDIO_MUTE(0) | v_VIDEO_MUTE(0));
+
+	inno_hdmi_rockchip_power_up(rk_hdmi, new_conn_state->hdmi.tmds_char_rate);
+
+	return 0;
+}
+
+static enum drm_mode_status inno_hdmi_rockchip_mode_valid(struct inno_hdmi *hdmi,
+							  const struct drm_display_mode *mode)
+{
+	unsigned long mpixelclk, max_tolerance;
+	long rounded_refclk;
+	struct rockchip_inno_hdmi *rk_hdmi = inno_hdmi_to_rk_hdmi(hdmi);
+
+	/* No support for double-clock modes */
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_BAD;
+
+	mpixelclk = mode->clock * 1000;
+
+	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
+		return MODE_CLOCK_LOW;
+
+	if (inno_hdmi_rockchip_find_phy_config(rk_hdmi, mpixelclk) < 0)
+		return MODE_CLOCK_HIGH;
+
+	if (rk_hdmi->refclk) {
+		rounded_refclk = clk_round_rate(rk_hdmi->refclk, mpixelclk);
+		if (rounded_refclk < 0)
+			return MODE_BAD;
+
+		/* Vesa DMT standard mentions +/- 0.5% max tolerance */
+		max_tolerance = mpixelclk / 200;
+		if (abs_diff((unsigned long)rounded_refclk, mpixelclk) > max_tolerance)
+			return MODE_NOCLOCK;
+	}
+
+	return MODE_OK;
+}
+
+static void inno_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder,
+					      struct drm_atomic_state *state)
+{
+	struct rockchip_inno_hdmi *rk_hdmi = encoder_to_rk_hdmi(encoder);
+
+	inno_hdmi_rockchip_setup(rk_hdmi, state);
+}
+
+static void inno_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder,
+					       struct drm_atomic_state *state)
+{
+	struct rockchip_inno_hdmi *rk_hdmi = encoder_to_rk_hdmi(encoder);
+
+	inno_hdmi_rockchip_standby(&rk_hdmi->inno_hdmi);
+}
+
+static int
+inno_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
+					struct drm_crtc_state *crtc_state,
+					struct drm_connector_state *conn_state)
+{
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
+	u8 vic = drm_match_cea_mode(mode);
+	struct rockchip_inno_hdmi *rk_hdmi = encoder_to_rk_hdmi(encoder);
+
+	s->output_mode = ROCKCHIP_OUT_MODE_P888;
+	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
+
+	if (vic == 6 || vic == 7 ||
+	    vic == 21 || vic == 22 ||
+	    vic == 2 || vic == 3 ||
+	    vic == 17 || vic == 18)
+		rk_hdmi->colorimetry = HDMI_COLORIMETRY_ITU_601;
+	else
+		rk_hdmi->colorimetry = HDMI_COLORIMETRY_ITU_709;
+
+	return 0;
+}
+
+static const struct drm_encoder_helper_funcs inno_hdmi_rockchip_encoder_helper_funcs = {
+	.atomic_check	= inno_hdmi_rockchip_encoder_atomic_check,
+	.atomic_enable	= inno_hdmi_rockchip_encoder_enable,
+	.atomic_disable	= inno_hdmi_rockchip_encoder_disable,
+};
+
+static int inno_hdmi_rockchip_register(struct drm_device *drm, struct inno_hdmi *hdmi)
+{
+	struct rockchip_inno_hdmi *rk_hdmi = inno_hdmi_to_rk_hdmi(hdmi);
+	struct drm_encoder *encoder = &rk_hdmi->encoder.encoder;
+	struct device *dev = hdmi->dev;
+	int ret;
+
+	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
+
+	/*
+	 * If we failed to find the CRTC(s) which this encoder is
+	 * supposed to be connected to, it's because the CRTC has
+	 * not been registered yet.  Defer probing, and hope that
+	 * the required CRTC is added later.
+	 */
+	if (encoder->possible_crtcs == 0)
+		return -EPROBE_DEFER;
+
+	drm_encoder_helper_add(encoder, &inno_hdmi_rockchip_encoder_helper_funcs);
+	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
+
+	ret = inno_hdmi_bind(drm, hdmi, encoder);
+	if (ret)
+		goto err_cleanup_encoder;
+
+	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+	if (ret)
+		goto err_cleanup_encoder;
+
+	rk_hdmi->connector = drm_bridge_connector_init(drm, encoder);
+	if (IS_ERR(rk_hdmi->connector)) {
+		dev_err(dev, "Unable to create bridge connector\n");
+		ret = PTR_ERR(rk_hdmi->connector);
+		return ret;
+	}
+
+	drm_connector_attach_encoder(rk_hdmi->connector, encoder);
+
+	return 0;
+
+err_cleanup_encoder:
+	drm_encoder_cleanup(encoder);
+	return ret;
+}
+
+static int inno_hdmi_rockchip_bind(struct device *dev, struct device *master, void *data)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct drm_device *drm = data;
+	struct rockchip_inno_hdmi *rk_hdmi;
+	struct inno_hdmi *hdmi;
+	const struct inno_hdmi_rockchip_variant *variant;
+	int ret;
+
+	rk_hdmi = devm_kzalloc(dev, sizeof(*rk_hdmi), GFP_KERNEL);
+	if (!rk_hdmi)
+		return -ENOMEM;
+
+	rk_hdmi->dev = dev;
+	hdmi = &rk_hdmi->inno_hdmi;
+	hdmi->dev = dev;
+
+	variant = of_device_get_match_data(hdmi->dev);
+	if (!variant)
+		return -EINVAL;
+
+	rk_hdmi->variant = variant;
+	hdmi->plat_data = variant->plat_data;
+
+	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(hdmi->regs))
+		return PTR_ERR(hdmi->regs);
+
+	rk_hdmi->pclk = devm_clk_get(hdmi->dev, "pclk");
+	if (IS_ERR(rk_hdmi->pclk)) {
+		DRM_DEV_ERROR(rk_hdmi->dev, "Unable to get HDMI pclk clk\n");
+		return PTR_ERR(rk_hdmi->pclk);
+	}
+
+	ret = clk_prepare_enable(rk_hdmi->pclk);
+	if (ret) {
+		DRM_DEV_ERROR(rk_hdmi->dev,
+			      "Cannot enable HDMI pclk clock: %d\n", ret);
+		return ret;
+	}
+
+	rk_hdmi->refclk = devm_clk_get_optional(rk_hdmi->dev, "ref");
+	if (IS_ERR(rk_hdmi->refclk)) {
+		DRM_DEV_ERROR(rk_hdmi->dev, "Unable to get HDMI reference clock\n");
+		ret = PTR_ERR(rk_hdmi->refclk);
+		goto err_disable_pclk;
+	}
+
+	ret = clk_prepare_enable(rk_hdmi->refclk);
+	if (ret) {
+		DRM_DEV_ERROR(rk_hdmi->dev,
+			      "Cannot enable HDMI reference clock: %d\n", ret);
+		goto err_disable_pclk;
+	}
+
+	inno_hdmi_rockchip_reset(hdmi);
+
+	/*
+	 * When the controller isn't configured to an accurate
+	 * video timing and there is no reference clock available,
+	 * then the TMDS clock source would be switched to PCLK_HDMI,
+	 * so we need to init the TMDS rate to PCLK rate, and
+	 * reconfigure the DDC clock.
+	 */
+	if (rk_hdmi->refclk)
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(rk_hdmi->refclk));
+	else
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(rk_hdmi->pclk));
+
+	ret = inno_hdmi_rockchip_register(drm, hdmi);
+	if (ret)
+		goto err_disable_clk;
+
+	dev_set_drvdata(dev, hdmi);
+
+	return 0;
+
+err_disable_clk:
+	clk_disable_unprepare(rk_hdmi->refclk);
+err_disable_pclk:
+	clk_disable_unprepare(rk_hdmi->pclk);
+	return ret;
+}
+
+static void inno_hdmi_rockchip_unbind(struct device *dev, struct device *master,
+			     void *data)
+{
+	struct inno_hdmi *hdmi = dev_get_drvdata(dev);
+	struct rockchip_inno_hdmi *rk_hdmi = inno_hdmi_to_rk_hdmi(hdmi);
+
+	rk_hdmi->encoder.encoder.funcs->destroy(&rk_hdmi->encoder.encoder);
+
+	clk_disable_unprepare(rk_hdmi->refclk);
+	clk_disable_unprepare(rk_hdmi->pclk);
+}
+
+static const struct component_ops inno_hdmi_rockchip_ops = {
+	.bind	= inno_hdmi_rockchip_bind,
+	.unbind	= inno_hdmi_rockchip_unbind,
+};
+
+static int inno_hdmi_rockchip_probe(struct platform_device *pdev)
+{
+	return component_add(&pdev->dev, &inno_hdmi_rockchip_ops);
+}
+
+static void inno_hdmi_rockchip_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &inno_hdmi_rockchip_ops);
+}
+
+const struct inno_hdmi_plat_data data_inno = {
+	.vendor = "Rockchip",
+	.product = "Inno HDMI",
+	.mode_valid = inno_hdmi_rockchip_mode_valid,
+	.hdmi_clear_infoframe = inno_hdmi_rockchip_disable_frame,
+	.hdmi_write_infoframe = inno_hdmi_rockchip_upload_frame,
+};
+
+static const struct inno_hdmi_rockchip_variant rk3036_inno_hdmi_variant = {
+	.phy_configs = rk3036_hdmi_phy_configs,
+	.default_phy_config = &rk3036_hdmi_phy_configs[1],
+	.plat_data = &data_inno,
+};
+
+static const struct inno_hdmi_rockchip_variant rk3128_inno_hdmi_variant = {
+	.phy_configs = rk3128_hdmi_phy_configs,
+	.default_phy_config = &rk3128_hdmi_phy_configs[1],
+	.plat_data = &data_inno,
+};
+
+static const struct of_device_id inno_hdmi_dt_ids[] = {
+	{ .compatible = "rockchip,rk3036-inno-hdmi",
+	  .data = &rk3036_inno_hdmi_variant,
+	},
+	{ .compatible = "rockchip,rk3128-inno-hdmi",
+	  .data = &rk3128_inno_hdmi_variant,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, inno_hdmi_dt_ids);
+
+struct platform_driver inno_hdmi_driver = {
+	.probe  = inno_hdmi_rockchip_probe,
+	.remove_new = inno_hdmi_rockchip_remove,
+	.driver = {
+		.name = "innohdmi-rockchip",
+		.of_match_table = inno_hdmi_dt_ids,
+	},
+};
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.h b/drivers/gpu/drm/rockchip/inno_hdmi-rockchip.h
similarity index 100%
rename from drivers/gpu/drm/rockchip/inno_hdmi.h
rename to drivers/gpu/drm/rockchip/inno_hdmi-rockchip.h
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
deleted file mode 100644
index 42ef62aa0a1e..000000000000
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ /dev/null
@@ -1,1025 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
- *    Zheng Yang <zhengyang@rock-chips.com>
- *    Yakir Yang <ykk@rock-chips.com>
- */
-
-#include <linux/irq.h>
-#include <linux/clk.h>
-#include <linux/delay.h>
-#include <linux/err.h>
-#include <linux/hdmi.h>
-#include <linux/mod_devicetable.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/platform_device.h>
-
-#include <drm/drm_atomic.h>
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_edid.h>
-#include <drm/drm_of.h>
-#include <drm/drm_probe_helper.h>
-#include <drm/drm_simple_kms_helper.h>
-
-#include <drm/display/drm_hdmi_helper.h>
-#include <drm/display/drm_hdmi_state_helper.h>
-
-#include "rockchip_drm_drv.h"
-
-#include "inno_hdmi.h"
-
-#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
-
-struct inno_hdmi_phy_config {
-	unsigned long pixelclock;
-	u8 pre_emphasis;
-	u8 voltage_level_control;
-};
-
-struct inno_hdmi_variant {
-	struct inno_hdmi_phy_config *phy_configs;
-	struct inno_hdmi_phy_config *default_phy_config;
-};
-
-struct inno_hdmi_i2c {
-	struct i2c_adapter adap;
-
-	u8 ddc_addr;
-	u8 segment_addr;
-
-	struct mutex lock;
-	struct completion cmp;
-};
-
-struct inno_hdmi {
-	struct device *dev;
-
-	struct clk *pclk;
-	struct clk *refclk;
-	void __iomem *regs;
-
-	struct drm_connector	connector;
-	struct rockchip_encoder	encoder;
-
-	struct inno_hdmi_i2c *i2c;
-	struct i2c_adapter *ddc;
-
-	const struct inno_hdmi_variant *variant;
-};
-
-struct inno_hdmi_connector_state {
-	struct drm_connector_state	base;
-	unsigned int			colorimetry;
-};
-
-static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
-{
-	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
-
-	return container_of(rkencoder, struct inno_hdmi, encoder);
-}
-
-static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
-{
-	return container_of(connector, struct inno_hdmi, connector);
-}
-
-#define to_inno_hdmi_conn_state(conn_state) \
-	container_of_const(conn_state, struct inno_hdmi_connector_state, base)
-
-enum {
-	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
-	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
-	CSC_RGB_0_255_TO_RGB_16_235_8BIT,
-};
-
-static const char coeff_csc[][24] = {
-	/*
-	 * RGB2YUV:601 SD mode:
-	 *   Cb = -0.291G - 0.148R + 0.439B + 128
-	 *   Y  = 0.504G  + 0.257R + 0.098B + 16
-	 *   Cr = -0.368G + 0.439R - 0.071B + 128
-	 */
-	{
-		0x11, 0x5f, 0x01, 0x82, 0x10, 0x23, 0x00, 0x80,
-		0x02, 0x1c, 0x00, 0xa1, 0x00, 0x36, 0x00, 0x1e,
-		0x11, 0x29, 0x10, 0x59, 0x01, 0x82, 0x00, 0x80
-	},
-	/*
-	 * RGB2YUV:709 HD mode:
-	 *   Cb = - 0.338G - 0.101R + 0.439B + 128
-	 *   Y  = 0.614G   + 0.183R + 0.062B + 16
-	 *   Cr = - 0.399G + 0.439R - 0.040B + 128
-	 */
-	{
-		0x11, 0x98, 0x01, 0xc1, 0x10, 0x28, 0x00, 0x80,
-		0x02, 0x74, 0x00, 0xbb, 0x00, 0x3f, 0x00, 0x10,
-		0x11, 0x5a, 0x10, 0x67, 0x01, 0xc1, 0x00, 0x80
-	},
-	/*
-	 * RGB[0:255]2RGB[16:235]:
-	 *   R' = R x (235-16)/255 + 16;
-	 *   G' = G x (235-16)/255 + 16;
-	 *   B' = B x (235-16)/255 + 16;
-	 */
-	{
-		0x00, 0x00, 0x03, 0x6F, 0x00, 0x00, 0x00, 0x10,
-		0x03, 0x6F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
-		0x00, 0x00, 0x00, 0x00, 0x03, 0x6F, 0x00, 0x10
-	},
-};
-
-static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
-	{  74250000, 0x3f, 0xbb },
-	{ 165000000, 0x6f, 0xbb },
-	{      ~0UL, 0x00, 0x00 }
-};
-
-static struct inno_hdmi_phy_config rk3128_hdmi_phy_configs[] = {
-	{  74250000, 0x3f, 0xaa },
-	{ 165000000, 0x5f, 0xaa },
-	{      ~0UL, 0x00, 0x00 }
-};
-
-static int inno_hdmi_find_phy_config(struct inno_hdmi *hdmi,
-				     unsigned long pixelclk)
-{
-	const struct inno_hdmi_phy_config *phy_configs =
-						hdmi->variant->phy_configs;
-	int i;
-
-	for (i = 0; phy_configs[i].pixelclock != ~0UL; i++) {
-		if (pixelclk <= phy_configs[i].pixelclock)
-			return i;
-	}
-
-	DRM_DEV_DEBUG(hdmi->dev, "No phy configuration for pixelclock %lu\n",
-		      pixelclk);
-
-	return -EINVAL;
-}
-
-static inline u8 hdmi_readb(struct inno_hdmi *hdmi, u16 offset)
-{
-	return readl_relaxed(hdmi->regs + (offset) * 0x04);
-}
-
-static inline void hdmi_writeb(struct inno_hdmi *hdmi, u16 offset, u32 val)
-{
-	writel_relaxed(val, hdmi->regs + (offset) * 0x04);
-}
-
-static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
-			     u32 msk, u32 val)
-{
-	u8 temp = hdmi_readb(hdmi, offset) & ~msk;
-
-	temp |= val & msk;
-	hdmi_writeb(hdmi, offset, temp);
-}
-
-static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi, unsigned long long rate)
-{
-	unsigned long long ddc_bus_freq = rate >> 2;
-
-	do_div(ddc_bus_freq, HDMI_SCL_RATE);
-
-	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
-	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
-
-	/* Clear the EDID interrupt flag and mute the interrupt */
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
-}
-
-static void inno_hdmi_sys_power(struct inno_hdmi *hdmi, bool enable)
-{
-	if (enable)
-		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_ON);
-	else
-		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
-}
-
-static void inno_hdmi_standby(struct inno_hdmi *hdmi)
-{
-	inno_hdmi_sys_power(hdmi, false);
-
-	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0x00);
-	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x00);
-	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x00);
-	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
-};
-
-static void inno_hdmi_power_up(struct inno_hdmi *hdmi,
-			       unsigned long mpixelclock)
-{
-	struct inno_hdmi_phy_config *phy_config;
-	int ret = inno_hdmi_find_phy_config(hdmi, mpixelclock);
-
-	if (ret < 0) {
-		phy_config = hdmi->variant->default_phy_config;
-		DRM_DEV_ERROR(hdmi->dev,
-			      "Using default phy configuration for TMDS rate %lu",
-			      mpixelclock);
-	} else {
-		phy_config = &hdmi->variant->phy_configs[ret];
-	}
-
-	inno_hdmi_sys_power(hdmi, false);
-
-	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, phy_config->pre_emphasis);
-	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, phy_config->voltage_level_control);
-	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
-	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
-	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
-	hdmi_writeb(hdmi, HDMI_PHY_CHG_PWR, 0x0f);
-	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x00);
-	hdmi_writeb(hdmi, HDMI_PHY_SYNC, 0x01);
-
-	inno_hdmi_sys_power(hdmi, true);
-};
-
-static void inno_hdmi_reset(struct inno_hdmi *hdmi)
-{
-	u32 val;
-	u32 msk;
-
-	hdmi_modb(hdmi, HDMI_SYS_CTRL, m_RST_DIGITAL, v_NOT_RST_DIGITAL);
-	udelay(100);
-
-	hdmi_modb(hdmi, HDMI_SYS_CTRL, m_RST_ANALOG, v_NOT_RST_ANALOG);
-	udelay(100);
-
-	msk = m_REG_CLK_INV | m_REG_CLK_SOURCE | m_POWER | m_INT_POL;
-	val = v_REG_CLK_INV | v_REG_CLK_SOURCE_SYS | v_PWR_ON | v_INT_POL_HIGH;
-	hdmi_modb(hdmi, HDMI_SYS_CTRL, msk, val);
-
-	inno_hdmi_standby(hdmi);
-}
-
-static int inno_hdmi_disable_frame(struct drm_connector *connector,
-				   enum hdmi_infoframe_type type)
-{
-	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
-
-	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
-
-	return 0;
-}
-
-static int inno_hdmi_upload_frame(struct drm_connector *connector,
-				  enum hdmi_infoframe_type type,
-				  const u8 *buffer, size_t len)
-{
-	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-	ssize_t i;
-
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
-
-	inno_hdmi_disable_frame(connector, type);
-
-	for (i = 0; i < len; i++)
-		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);
-
-	return 0;
-}
-
-static const struct drm_connector_hdmi_funcs inno_hdmi_hdmi_connector_funcs = {
-	.clear_infoframe	= inno_hdmi_disable_frame,
-	.write_infoframe	= inno_hdmi_upload_frame,
-};
-
-static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
-{
-	struct drm_connector *connector = &hdmi->connector;
-	struct drm_connector_state *conn_state = connector->state;
-	struct inno_hdmi_connector_state *inno_conn_state =
-					to_inno_hdmi_conn_state(conn_state);
-	int c0_c2_change = 0;
-	int csc_enable = 0;
-	int csc_mode = 0;
-	int auto_csc = 0;
-	int value;
-	int i;
-
-	/* Input video mode is SDR RGB24bit, data enable signal from external */
-	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL1, v_DE_EXTERNAL |
-		    v_VIDEO_INPUT_FORMAT(VIDEO_INPUT_SDR_RGB444));
-
-	/* Input color hardcode to RGB, and output color hardcode to RGB888 */
-	value = v_VIDEO_INPUT_BITS(VIDEO_INPUT_8BITS) |
-		v_VIDEO_OUTPUT_COLOR(0) |
-		v_VIDEO_INPUT_CSP(0);
-	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
-
-	if (conn_state->hdmi.output_format == HDMI_COLORSPACE_RGB) {
-		if (conn_state->hdmi.is_limited_range) {
-			csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
-			auto_csc = AUTO_CSC_DISABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_ENABLE;
-
-		} else {
-			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
-			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
-
-			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
-				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
-				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
-				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
-			return 0;
-		}
-	} else {
-		if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
-				csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
-				auto_csc = AUTO_CSC_DISABLE;
-				c0_c2_change = C0_C2_CHANGE_DISABLE;
-				csc_enable = v_CSC_ENABLE;
-			}
-		} else {
-			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
-				csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
-				auto_csc = AUTO_CSC_DISABLE;
-				c0_c2_change = C0_C2_CHANGE_DISABLE;
-				csc_enable = v_CSC_ENABLE;
-			}
-		}
-	}
-
-	for (i = 0; i < 24; i++)
-		hdmi_writeb(hdmi, HDMI_VIDEO_CSC_COEF + i,
-			    coeff_csc[csc_mode][i]);
-
-	value = v_SOF_DISABLE | csc_enable | v_COLOR_DEPTH_NOT_INDICATED(1);
-	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
-	hdmi_modb(hdmi, HDMI_VIDEO_CONTRL, m_VIDEO_AUTO_CSC |
-		  m_VIDEO_C0_C2_SWAP, v_VIDEO_AUTO_CSC(auto_csc) |
-		  v_VIDEO_C0_C2_SWAP(c0_c2_change));
-
-	return 0;
-}
-
-static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
-					 struct drm_display_mode *mode)
-{
-	int value;
-
-	/* Set detail external video timing polarity and interlace mode */
-	value = v_EXTERANL_VIDEO(1);
-	value |= mode->flags & DRM_MODE_FLAG_PHSYNC ?
-		 v_HSYNC_POLARITY(1) : v_HSYNC_POLARITY(0);
-	value |= mode->flags & DRM_MODE_FLAG_PVSYNC ?
-		 v_VSYNC_POLARITY(1) : v_VSYNC_POLARITY(0);
-	value |= mode->flags & DRM_MODE_FLAG_INTERLACE ?
-		 v_INETLACE(1) : v_INETLACE(0);
-	hdmi_writeb(hdmi, HDMI_VIDEO_TIMING_CTL, value);
-
-	/* Set detail external video timing */
-	value = mode->htotal;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_L, value & 0xFF);
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_H, (value >> 8) & 0xFF);
-
-	value = mode->htotal - mode->hdisplay;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
-
-	value = mode->htotal - mode->hsync_start;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
-
-	value = mode->hsync_end - mode->hsync_start;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_L, value & 0xFF);
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_H, (value >> 8) & 0xFF);
-
-	value = mode->vtotal;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_L, value & 0xFF);
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_H, (value >> 8) & 0xFF);
-
-	value = mode->vtotal - mode->vdisplay;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
-
-	value = mode->vtotal - mode->vsync_start;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
-
-	value = mode->vsync_end - mode->vsync_start;
-	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDURATION, value & 0xFF);
-
-	hdmi_writeb(hdmi, HDMI_PHY_PRE_DIV_RATIO, 0x1e);
-	hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_LOW, 0x2c);
-	hdmi_writeb(hdmi, HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH, 0x01);
-
-	return 0;
-}
-
-static int inno_hdmi_setup(struct inno_hdmi *hdmi,
-			   struct drm_atomic_state *state)
-{
-	struct drm_connector *connector = &hdmi->connector;
-	struct drm_display_info *display = &connector->display_info;
-	struct drm_connector_state *new_conn_state;
-	struct drm_crtc_state *new_crtc_state;
-
-	new_conn_state = drm_atomic_get_new_connector_state(state, connector);
-	if (WARN_ON(!new_conn_state))
-		return -EINVAL;
-
-	new_crtc_state = drm_atomic_get_new_crtc_state(state, new_conn_state->crtc);
-	if (WARN_ON(!new_crtc_state))
-		return -EINVAL;
-
-	/* Mute video and audio output */
-	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
-		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
-
-	/* Set HDMI Mode */
-	hdmi_writeb(hdmi, HDMI_HDCP_CTRL,
-		    v_HDMI_DVI(display->is_hdmi));
-
-	inno_hdmi_config_video_timing(hdmi, &new_crtc_state->adjusted_mode);
-
-	inno_hdmi_config_video_csc(hdmi);
-
-	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
-
-	/*
-	 * When IP controller have configured to an accurate video
-	 * timing, then the TMDS clock source would be switched to
-	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
-	 * clock rate, and reconfigure the DDC clock.
-	 */
-	inno_hdmi_i2c_init(hdmi, new_conn_state->hdmi.tmds_char_rate);
-
-	/* Unmute video and audio output */
-	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
-		  v_AUDIO_MUTE(0) | v_VIDEO_MUTE(0));
-
-	inno_hdmi_power_up(hdmi, new_conn_state->hdmi.tmds_char_rate);
-
-	return 0;
-}
-
-static enum drm_mode_status inno_hdmi_display_mode_valid(struct inno_hdmi *hdmi,
-							 struct drm_display_mode *mode)
-{
-	unsigned long mpixelclk, max_tolerance;
-	long rounded_refclk;
-
-	/* No support for double-clock modes */
-	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
-		return MODE_BAD;
-
-	mpixelclk = mode->clock * 1000;
-
-	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
-		return MODE_CLOCK_LOW;
-
-	if (inno_hdmi_find_phy_config(hdmi, mpixelclk) < 0)
-		return MODE_CLOCK_HIGH;
-
-	if (hdmi->refclk) {
-		rounded_refclk = clk_round_rate(hdmi->refclk, mpixelclk);
-		if (rounded_refclk < 0)
-			return MODE_BAD;
-
-		/* Vesa DMT standard mentions +/- 0.5% max tolerance */
-		max_tolerance = mpixelclk / 200;
-		if (abs_diff((unsigned long)rounded_refclk, mpixelclk) > max_tolerance)
-			return MODE_NOCLOCK;
-	}
-
-	return MODE_OK;
-}
-
-static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
-				     struct drm_atomic_state *state)
-{
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_setup(hdmi, state);
-}
-
-static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
-				      struct drm_atomic_state *state)
-{
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_standby(hdmi);
-}
-
-static int
-inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
-			       struct drm_crtc_state *crtc_state,
-			       struct drm_connector_state *conn_state)
-{
-	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
-	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
-	u8 vic = drm_match_cea_mode(mode);
-	struct inno_hdmi_connector_state *inno_conn_state =
-					to_inno_hdmi_conn_state(conn_state);
-
-	s->output_mode = ROCKCHIP_OUT_MODE_P888;
-	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
-
-	if (vic == 6 || vic == 7 ||
-	    vic == 21 || vic == 22 ||
-	    vic == 2 || vic == 3 ||
-	    vic == 17 || vic == 18)
-		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
-
-	return 0;
-}
-
-static const struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
-	.atomic_check	= inno_hdmi_encoder_atomic_check,
-	.atomic_enable	= inno_hdmi_encoder_enable,
-	.atomic_disable	= inno_hdmi_encoder_disable,
-};
-
-static enum drm_connector_status
-inno_hdmi_connector_detect(struct drm_connector *connector, bool force)
-{
-	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-
-	return (hdmi_readb(hdmi, HDMI_STATUS) & m_HOTPLUG) ?
-		connector_status_connected : connector_status_disconnected;
-}
-
-static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
-{
-	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-	const struct drm_edid *drm_edid;
-	int ret = 0;
-
-	if (!hdmi->ddc)
-		return 0;
-
-	drm_edid = drm_edid_read_ddc(connector, hdmi->ddc);
-	drm_edid_connector_update(connector, drm_edid);
-	ret = drm_edid_connector_add_modes(connector);
-	drm_edid_free(drm_edid);
-
-	return ret;
-}
-
-static enum drm_mode_status
-inno_hdmi_connector_mode_valid(struct drm_connector *connector,
-			       struct drm_display_mode *mode)
-{
-	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
-
-	return  inno_hdmi_display_mode_valid(hdmi, mode);
-}
-
-static void
-inno_hdmi_connector_destroy_state(struct drm_connector *connector,
-				  struct drm_connector_state *state)
-{
-	struct inno_hdmi_connector_state *inno_conn_state =
-						to_inno_hdmi_conn_state(state);
-
-	__drm_atomic_helper_connector_destroy_state(&inno_conn_state->base);
-	kfree(inno_conn_state);
-}
-
-static void inno_hdmi_connector_reset(struct drm_connector *connector)
-{
-	struct inno_hdmi_connector_state *inno_conn_state;
-
-	if (connector->state) {
-		inno_hdmi_connector_destroy_state(connector, connector->state);
-		connector->state = NULL;
-	}
-
-	inno_conn_state = kzalloc(sizeof(*inno_conn_state), GFP_KERNEL);
-	if (!inno_conn_state)
-		return;
-
-	__drm_atomic_helper_connector_reset(connector, &inno_conn_state->base);
-	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
-
-	inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
-}
-
-static struct drm_connector_state *
-inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
-{
-	struct inno_hdmi_connector_state *inno_conn_state;
-
-	if (WARN_ON(!connector->state))
-		return NULL;
-
-	inno_conn_state = kmemdup(to_inno_hdmi_conn_state(connector->state),
-				  sizeof(*inno_conn_state), GFP_KERNEL);
-
-	if (!inno_conn_state)
-		return NULL;
-
-	__drm_atomic_helper_connector_duplicate_state(connector,
-						      &inno_conn_state->base);
-
-	return &inno_conn_state->base;
-}
-
-static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.detect = inno_hdmi_connector_detect,
-	.reset = inno_hdmi_connector_reset,
-	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
-	.atomic_destroy_state = inno_hdmi_connector_destroy_state,
-};
-
-static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
-	.atomic_check = drm_atomic_helper_connector_hdmi_check,
-	.get_modes = inno_hdmi_connector_get_modes,
-	.mode_valid = inno_hdmi_connector_mode_valid,
-};
-
-static int inno_hdmi_register(struct drm_device *drm, struct inno_hdmi *hdmi)
-{
-	struct drm_encoder *encoder = &hdmi->encoder.encoder;
-	struct device *dev = hdmi->dev;
-
-	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
-
-	/*
-	 * If we failed to find the CRTC(s) which this encoder is
-	 * supposed to be connected to, it's because the CRTC has
-	 * not been registered yet.  Defer probing, and hope that
-	 * the required CRTC is added later.
-	 */
-	if (encoder->possible_crtcs == 0)
-		return -EPROBE_DEFER;
-
-	drm_encoder_helper_add(encoder, &inno_hdmi_encoder_helper_funcs);
-	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
-
-	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
-
-	drm_connector_helper_add(&hdmi->connector,
-				 &inno_hdmi_connector_helper_funcs);
-	drmm_connector_hdmi_init(drm, &hdmi->connector,
-				 "Rockchip", "Inno HDMI",
-				 &inno_hdmi_connector_funcs,
-				 &inno_hdmi_hdmi_connector_funcs,
-				 DRM_MODE_CONNECTOR_HDMIA,
-				 hdmi->ddc,
-				 BIT(HDMI_COLORSPACE_RGB),
-				 8);
-
-	drm_connector_attach_encoder(&hdmi->connector, encoder);
-
-	return 0;
-}
-
-static irqreturn_t inno_hdmi_i2c_irq(struct inno_hdmi *hdmi)
-{
-	struct inno_hdmi_i2c *i2c = hdmi->i2c;
-	u8 stat;
-
-	stat = hdmi_readb(hdmi, HDMI_INTERRUPT_STATUS1);
-	if (!(stat & m_INT_EDID_READY))
-		return IRQ_NONE;
-
-	/* Clear HDMI EDID interrupt flag */
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
-
-	complete(&i2c->cmp);
-
-	return IRQ_HANDLED;
-}
-
-static irqreturn_t inno_hdmi_hardirq(int irq, void *dev_id)
-{
-	struct inno_hdmi *hdmi = dev_id;
-	irqreturn_t ret = IRQ_NONE;
-	u8 interrupt;
-
-	if (hdmi->i2c)
-		ret = inno_hdmi_i2c_irq(hdmi);
-
-	interrupt = hdmi_readb(hdmi, HDMI_STATUS);
-	if (interrupt & m_INT_HOTPLUG) {
-		hdmi_modb(hdmi, HDMI_STATUS, m_INT_HOTPLUG, m_INT_HOTPLUG);
-		ret = IRQ_WAKE_THREAD;
-	}
-
-	return ret;
-}
-
-static irqreturn_t inno_hdmi_irq(int irq, void *dev_id)
-{
-	struct inno_hdmi *hdmi = dev_id;
-
-	drm_helper_hpd_irq_event(hdmi->connector.dev);
-
-	return IRQ_HANDLED;
-}
-
-static int inno_hdmi_i2c_read(struct inno_hdmi *hdmi, struct i2c_msg *msgs)
-{
-	int length = msgs->len;
-	u8 *buf = msgs->buf;
-	int ret;
-
-	ret = wait_for_completion_timeout(&hdmi->i2c->cmp, HZ / 10);
-	if (!ret)
-		return -EAGAIN;
-
-	while (length--)
-		*buf++ = hdmi_readb(hdmi, HDMI_EDID_FIFO_ADDR);
-
-	return 0;
-}
-
-static int inno_hdmi_i2c_write(struct inno_hdmi *hdmi, struct i2c_msg *msgs)
-{
-	/*
-	 * The DDC module only support read EDID message, so
-	 * we assume that each word write to this i2c adapter
-	 * should be the offset of EDID word address.
-	 */
-	if ((msgs->len != 1) ||
-	    ((msgs->addr != DDC_ADDR) && (msgs->addr != DDC_SEGMENT_ADDR)))
-		return -EINVAL;
-
-	reinit_completion(&hdmi->i2c->cmp);
-
-	if (msgs->addr == DDC_SEGMENT_ADDR)
-		hdmi->i2c->segment_addr = msgs->buf[0];
-	if (msgs->addr == DDC_ADDR)
-		hdmi->i2c->ddc_addr = msgs->buf[0];
-
-	/* Set edid fifo first addr */
-	hdmi_writeb(hdmi, HDMI_EDID_FIFO_OFFSET, 0x00);
-
-	/* Set edid word address 0x00/0x80 */
-	hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);
-
-	/* Set edid segment pointer */
-	hdmi_writeb(hdmi, HDMI_EDID_SEGMENT_POINTER, hdmi->i2c->segment_addr);
-
-	return 0;
-}
-
-static int inno_hdmi_i2c_xfer(struct i2c_adapter *adap,
-			      struct i2c_msg *msgs, int num)
-{
-	struct inno_hdmi *hdmi = i2c_get_adapdata(adap);
-	struct inno_hdmi_i2c *i2c = hdmi->i2c;
-	int i, ret = 0;
-
-	mutex_lock(&i2c->lock);
-
-	/* Clear the EDID interrupt flag and unmute the interrupt */
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, m_INT_EDID_READY);
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);
-
-	for (i = 0; i < num; i++) {
-		DRM_DEV_DEBUG(hdmi->dev,
-			      "xfer: num: %d/%d, len: %d, flags: %#x\n",
-			      i + 1, num, msgs[i].len, msgs[i].flags);
-
-		if (msgs[i].flags & I2C_M_RD)
-			ret = inno_hdmi_i2c_read(hdmi, &msgs[i]);
-		else
-			ret = inno_hdmi_i2c_write(hdmi, &msgs[i]);
-
-		if (ret < 0)
-			break;
-	}
-
-	if (!ret)
-		ret = num;
-
-	/* Mute HDMI EDID interrupt */
-	hdmi_writeb(hdmi, HDMI_INTERRUPT_MASK1, 0);
-
-	mutex_unlock(&i2c->lock);
-
-	return ret;
-}
-
-static u32 inno_hdmi_i2c_func(struct i2c_adapter *adapter)
-{
-	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
-}
-
-static const struct i2c_algorithm inno_hdmi_algorithm = {
-	.master_xfer	= inno_hdmi_i2c_xfer,
-	.functionality	= inno_hdmi_i2c_func,
-};
-
-static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
-{
-	struct i2c_adapter *adap;
-	struct inno_hdmi_i2c *i2c;
-	int ret;
-
-	i2c = devm_kzalloc(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
-	if (!i2c)
-		return ERR_PTR(-ENOMEM);
-
-	mutex_init(&i2c->lock);
-	init_completion(&i2c->cmp);
-
-	adap = &i2c->adap;
-	adap->owner = THIS_MODULE;
-	adap->dev.parent = hdmi->dev;
-	adap->dev.of_node = hdmi->dev->of_node;
-	adap->algo = &inno_hdmi_algorithm;
-	strscpy(adap->name, "Inno HDMI", sizeof(adap->name));
-	i2c_set_adapdata(adap, hdmi);
-
-	ret = i2c_add_adapter(adap);
-	if (ret) {
-		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
-		devm_kfree(hdmi->dev, i2c);
-		return ERR_PTR(ret);
-	}
-
-	hdmi->i2c = i2c;
-
-	DRM_DEV_INFO(hdmi->dev, "registered %s I2C bus driver\n", adap->name);
-
-	return adap;
-}
-
-static int inno_hdmi_bind(struct device *dev, struct device *master,
-				 void *data)
-{
-	struct platform_device *pdev = to_platform_device(dev);
-	struct drm_device *drm = data;
-	struct inno_hdmi *hdmi;
-	const struct inno_hdmi_variant *variant;
-	int irq;
-	int ret;
-
-	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
-	if (!hdmi)
-		return -ENOMEM;
-
-	hdmi->dev = dev;
-
-	variant = of_device_get_match_data(hdmi->dev);
-	if (!variant)
-		return -EINVAL;
-
-	hdmi->variant = variant;
-
-	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(hdmi->regs))
-		return PTR_ERR(hdmi->regs);
-
-	hdmi->pclk = devm_clk_get(hdmi->dev, "pclk");
-	if (IS_ERR(hdmi->pclk)) {
-		DRM_DEV_ERROR(hdmi->dev, "Unable to get HDMI pclk clk\n");
-		return PTR_ERR(hdmi->pclk);
-	}
-
-	ret = clk_prepare_enable(hdmi->pclk);
-	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev,
-			      "Cannot enable HDMI pclk clock: %d\n", ret);
-		return ret;
-	}
-
-	hdmi->refclk = devm_clk_get_optional(hdmi->dev, "ref");
-	if (IS_ERR(hdmi->refclk)) {
-		DRM_DEV_ERROR(hdmi->dev, "Unable to get HDMI reference clock\n");
-		ret = PTR_ERR(hdmi->refclk);
-		goto err_disable_pclk;
-	}
-
-	ret = clk_prepare_enable(hdmi->refclk);
-	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev,
-			      "Cannot enable HDMI reference clock: %d\n", ret);
-		goto err_disable_pclk;
-	}
-
-	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		ret = irq;
-		goto err_disable_clk;
-	}
-
-	inno_hdmi_reset(hdmi);
-
-	hdmi->ddc = inno_hdmi_i2c_adapter(hdmi);
-	if (IS_ERR(hdmi->ddc)) {
-		ret = PTR_ERR(hdmi->ddc);
-		hdmi->ddc = NULL;
-		goto err_disable_clk;
-	}
-
-	/*
-	 * When the controller isn't configured to an accurate
-	 * video timing and there is no reference clock available,
-	 * then the TMDS clock source would be switched to PCLK_HDMI,
-	 * so we need to init the TMDS rate to PCLK rate, and
-	 * reconfigure the DDC clock.
-	 */
-	if (hdmi->refclk)
-		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->refclk));
-	else
-		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
-
-	ret = inno_hdmi_register(drm, hdmi);
-	if (ret)
-		goto err_put_adapter;
-
-	dev_set_drvdata(dev, hdmi);
-
-	/* Unmute hotplug interrupt */
-	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
-
-	ret = devm_request_threaded_irq(dev, irq, inno_hdmi_hardirq,
-					inno_hdmi_irq, IRQF_SHARED,
-					dev_name(dev), hdmi);
-	if (ret < 0)
-		goto err_cleanup_hdmi;
-
-	return 0;
-err_cleanup_hdmi:
-	hdmi->connector.funcs->destroy(&hdmi->connector);
-	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
-err_put_adapter:
-	i2c_put_adapter(hdmi->ddc);
-err_disable_clk:
-	clk_disable_unprepare(hdmi->refclk);
-err_disable_pclk:
-	clk_disable_unprepare(hdmi->pclk);
-	return ret;
-}
-
-static void inno_hdmi_unbind(struct device *dev, struct device *master,
-			     void *data)
-{
-	struct inno_hdmi *hdmi = dev_get_drvdata(dev);
-
-	hdmi->connector.funcs->destroy(&hdmi->connector);
-	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
-
-	i2c_put_adapter(hdmi->ddc);
-	clk_disable_unprepare(hdmi->refclk);
-	clk_disable_unprepare(hdmi->pclk);
-}
-
-static const struct component_ops inno_hdmi_ops = {
-	.bind	= inno_hdmi_bind,
-	.unbind	= inno_hdmi_unbind,
-};
-
-static int inno_hdmi_probe(struct platform_device *pdev)
-{
-	return component_add(&pdev->dev, &inno_hdmi_ops);
-}
-
-static void inno_hdmi_remove(struct platform_device *pdev)
-{
-	component_del(&pdev->dev, &inno_hdmi_ops);
-}
-
-static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
-	.phy_configs = rk3036_hdmi_phy_configs,
-	.default_phy_config = &rk3036_hdmi_phy_configs[1],
-};
-
-static const struct inno_hdmi_variant rk3128_inno_hdmi_variant = {
-	.phy_configs = rk3128_hdmi_phy_configs,
-	.default_phy_config = &rk3128_hdmi_phy_configs[1],
-};
-
-static const struct of_device_id inno_hdmi_dt_ids[] = {
-	{ .compatible = "rockchip,rk3036-inno-hdmi",
-	  .data = &rk3036_inno_hdmi_variant,
-	},
-	{ .compatible = "rockchip,rk3128-inno-hdmi",
-	  .data = &rk3128_inno_hdmi_variant,
-	},
-	{},
-};
-MODULE_DEVICE_TABLE(of, inno_hdmi_dt_ids);
-
-struct platform_driver inno_hdmi_driver = {
-	.probe  = inno_hdmi_probe,
-	.remove_new = inno_hdmi_remove,
-	.driver = {
-		.name = "innohdmi-rockchip",
-		.of_match_table = inno_hdmi_dt_ids,
-	},
-};
diff --git a/include/drm/bridge/inno_hdmi.h b/include/drm/bridge/inno_hdmi.h
new file mode 100644
index 000000000000..bfd22f180153
--- /dev/null
+++ b/include/drm/bridge/inno_hdmi.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) StarFive Technology Co., Ltd.
+ */
+
+#ifndef __INNO_COMMON_HDMI__
+#define __INNO_COMMON_HDMI__
+
+#include <drm/drm_connector.h>
+#include <drm/drm_encoder.h>
+#include <drm/drm_bridge.h>
+#include <linux/i2c.h>
+
+struct inno_hdmi;
+
+struct inno_hdmi_i2c {
+	u8 ddc_addr;
+	u8 segment_addr;
+
+	struct i2c_adapter adap;
+	struct mutex lock; /* For i2c operation. */
+	struct completion cmp;
+};
+
+struct inno_hdmi_plat_data {
+	const char *vendor;
+	const char *product;
+
+	/* Platform-specific mode validation*/
+	enum drm_mode_status (*mode_valid)(struct inno_hdmi *hdmi,
+					   const struct drm_display_mode *mode);
+	int (*hdmi_clear_infoframe)(struct inno_hdmi *hdmi, enum hdmi_infoframe_type type);
+	int (*hdmi_write_infoframe)(struct inno_hdmi *hdmi, enum hdmi_infoframe_type type,
+				    const u8 *buffer, size_t len);
+};
+
+struct inno_hdmi {
+	struct device *dev;
+	void __iomem *regs;
+
+	struct i2c_adapter *ddc;
+	struct drm_bridge bridge;
+	struct drm_bridge *next_bridge;
+	struct inno_hdmi_i2c *i2c;
+
+	const struct inno_hdmi_plat_data *plat_data;
+};
+
+u8 hdmi_readb(struct inno_hdmi *hdmi, u16 offset);
+void hdmi_writeb(struct inno_hdmi *hdmi, u16 offset, u32 val);
+void hdmi_modb(struct inno_hdmi *hdmi, u16 offset, u32 msk, u32 val);
+
+void inno_hdmi_i2c_init(struct inno_hdmi *hdmi, unsigned long long rate);
+int inno_hdmi_bind(struct drm_device *drm, struct inno_hdmi *hdmi, struct drm_encoder *encoder);
+
+#endif /* __INNO_COMMON_HDMI__ */
-- 
2.34.1


