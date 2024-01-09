Return-Path: <devicetree+bounces-30444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7BC827F6E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8B57B25185
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 07:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7BDABA55;
	Tue,  9 Jan 2024 07:25:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2089.outbound.protection.partner.outlook.cn [139.219.146.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8060125102;
	Tue,  9 Jan 2024 07:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcrh4rzlSrr3/TGLrqKwLQgo0a04FajpJs8Se6cfC4UK6TtilkVsKHaB5SeatCDVamLEflCxCjtTK73y39PGIgydJ1jEWtZQJuqM4so5o5P0GKFchKb+bDQsnsMZSao5FH4uMqIJrgi67DSUYED9pxv0B2jEdtfFfpptbXBOyoIFPUjR9dfvnOiHsANANkItZbRd9FFRhLqBstCrZoCoz0gLz9YG3CtyWYXhrOMlrfX3LvQx1k/zgc0eWM0bLONZnBmvwg8mexrKEyMkpHFqV/huXJewbGmNHwxC0uIwlm5NrjYGcCJ/Fmans6/Eb3QyI8lIPzwkcl8i1bKUEWshFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pHvQt90YSAOgZH+tF5NoT0NxAop9t+SbJupHJGljm8A=;
 b=kXqH1/KgaOd0r2l8QE66keOhoHd7MYXFWKv4zSP2KJPzaBeNe052+3F2Q40OX8y3UV1hnNRB72VAAfCYcKhIIamrp8oV7l5UOIPuNjGVKDnjq40eHiybuETFv2LBonEoFfZijLEXpCuK1CgU8oAg748x0fAk8XMDuiksL0dAvcjxkU6akhSkFdZuWjGExCr/vN3VjsoEQAA/7+3O6XMp6Ay04bDPSg5HIXH7Q+3ETh3BblzLNIYAg68JNS8CxxANkqvoW+9n/HbC2EeUHh9Lb3SthKGMrMyDPdDjD8d1f88u+Cu1PP/MiccA35cqKrpGkBFjFkl1H3hZh6OSkk5Nig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::6) by NT0PR01MB1133.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:6::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.20; Tue, 9 Jan
 2024 07:09:58 +0000
Received: from NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 ([fe80::85fc:7fb9:8b00:dd88]) by
 NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn ([fe80::85fc:7fb9:8b00:dd88%3])
 with mapi id 15.20.7135.019; Tue, 9 Jan 2024 07:09:58 +0000
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	wahrenst@gmx.net,
	dave.stevenson@raspberrypi.com,
	thierry.reding@gmail.com,
	changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com,
	shengyang.chen@starfivetech.com,
	jack.zhu@starfivetech.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: panel: panel-simple: Add compatible property for waveshare 7inch touchscreen panel
Date: Tue,  9 Jan 2024 15:09:48 +0800
Message-Id: <20240109070949.23957-2-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240109070949.23957-1-shengyang.chen@starfivetech.com>
References: <20240109070949.23957-1-shengyang.chen@starfivetech.com>
Content-Type: text/plain
X-ClientProxiedBy: NT0PR01CA0013.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510::17) To NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:3::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NT0PR01MB1070:EE_|NT0PR01MB1133:EE_
X-MS-Office365-Filtering-Correlation-Id: 819c26bb-e6a6-44d2-ebd2-08dc10e1fd0a
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	9QZWV7dp5OUnmtsEBXSgTQ+JgQZhj0thIMwyYuTgnEv8BpFhNTpWi6E0iZxpPTmgbeZAntD8dW0p2QOHbwgy6+nJ5l39L/X5W6dbp6KG2yxC3v/bBOIBxOv4I1ctcqS18o5YQexJw8subW5eO6cd++VpOCtL2K1XgNeT6QEfUgL8BYYBhy9CrT02hQhRHBvRCaD111dIoVZAmvMSdyHGySsEaIG6ZALiCabA0BUtgxWjEHCYdDVeK2wD74+ZnKWQmnmrrRuD6lyAaYjGTVn0r+W9fJ5y3vNACiSx+cJspPmMbaNaaGg+uiIyehUWPDJhPRTgX8yT65CpAnm8hPyiJlqzKJQrZYmo4GE2zkX4nPca1vJZVoWJ+kZ0Dtlvu6VNy7oEU/MKPFOJtXSwh70PtMX46wTSdOMkFoTABNehVUKDpw3b+iLWMcW2XiG+/0yWxfINHd6s0ZU7U+IR+3VISXsgBsOtjSUZ4Q4Q2BrXX8gwg/K1B8d2tofx63TjVms1uTOo/uSgRBtv+Y0voO+b6eHeRsVMqEGNRQzyKddvaf6umaifFr7rO/4g33PvVcaj
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(396003)(39830400003)(366004)(346002)(136003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(66476007)(66946007)(4326008)(66556008)(8936002)(44832011)(36756003)(26005)(2616005)(6666004)(1076003)(508600001)(8676002)(41320700001)(41300700001)(5660300002)(2906002)(7416002)(52116002)(40180700001)(38350700005)(40160700002)(86362001)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Q615R01p6+AXljuF4rLvLVTl7SWcfJQr01N5EYLiVsM4LPjoylG5/TSzhRIc?=
 =?us-ascii?Q?NmBQFBUPackEw/MHHywuyUM65D6nTrEcPdkteIEEQzbTjzxRWbcPY8VeA1ds?=
 =?us-ascii?Q?w8CK69ODGWzwjh7a9tuniIkyFMW5YMuwf2yR8FYHYOTdX5Wg2O6jGY8M5OSk?=
 =?us-ascii?Q?thguDXGKG0up8vszn8oFBzmkhZ3H9RskD6bPIUVlbXqrwUG3hxcXDfpXopy5?=
 =?us-ascii?Q?1zJTi/d7WkfEsQ/QBVSymY31vDOwtulYh9QariJ6PSMuJ3C8uoYDPEuD0uVi?=
 =?us-ascii?Q?yojWKXfJ15ZVLWVuI3t+rGZiIo4edQwlw8G+r8gvOBVxCry+2+brgUeGqUb7?=
 =?us-ascii?Q?dTTzhhHKpc1S9F22W6QnAnEi3w7gKzkY7Dv8ITTuq/kDoEp3JZ/0H+wx8WfA?=
 =?us-ascii?Q?qxwX34KhjIzxbAsD+mifq/l8XxyiKrBzIew3f9iYBiqk68X/HDXRKILgjzBq?=
 =?us-ascii?Q?Vv385xil60Qior70YWjjXOrxdxXSYOx1VN5IEH+0e/zcuXUtliYqiWkaVDxS?=
 =?us-ascii?Q?MR5FQT5bEefSjYM9uueUxsp8NGVYQL3ErRENt0EK7aCyv4e+0q5XYweKeN3g?=
 =?us-ascii?Q?gLgKixyyh96X7zGdIdXpYNTYg1aWQ3g8kkEi+gsl9vRUw8Ku0ue+CZrtoQLM?=
 =?us-ascii?Q?rR6ujoDLSDMSsOM6tY37oYN/wyR1YN3n8frphFGD2YT5mNQ665e6k3WTQzqV?=
 =?us-ascii?Q?idhlvFnvEmQiRpGIrztGr4lOi/JfpcxBBeSuiBHXadxCfIc32zm2+OfivnKh?=
 =?us-ascii?Q?oPBtkhrKhW+cXiS5mp8kkypq7X9aABw/NmqpUBbVK2uu/CjxtJSrwMM0eL3O?=
 =?us-ascii?Q?12Q2+3l9MHJD2mSlSCTTH9yzj/P1uVS6v7u8rqwMAQji8v7QZb9HOg5wukVc?=
 =?us-ascii?Q?OHRcPE28MWJuB9zCi0OnhS/tJCaqVrnaxuXoMRAmA71kgv8eCceXkQ5WSM7Y?=
 =?us-ascii?Q?v/ewdZUVuVjKqLpuge0uqZM2HRyjej9KmiV4unMQrGWJ4bmKQlOefpAOWChT?=
 =?us-ascii?Q?JePSaeccOgsZ3KpZ9lsCi+PWckIXL9ov4WdOPtaDJkq4FByWz02Y4GsU8pnw?=
 =?us-ascii?Q?irwo6MtL1NmwtHlRkO3zRpJ75HE4IQlX9MCZRfkTknJ/7Inh+MCvHc3WB7fs?=
 =?us-ascii?Q?0eROCXyw4pOnrPKrDaU++YN59ArMGhJXv+lDn4B7t+3PzQg8EnG9GccYW+Re?=
 =?us-ascii?Q?0PSR4+5KyLDXwb2DSq+LQmJK0VWpsOxg1ra8dJUiMQ7WFAB3wlaRiuKegHWU?=
 =?us-ascii?Q?VD4P8WC9d/D7TW4lFActhp5F3/vLkD89dnAICNWjKQd7QYSE1U+R5rVqrqHa?=
 =?us-ascii?Q?eSP5iOKwUJJWg+se3uEUQSuhthVYeQ4P0Ok3XA1q7ewtVzzsnbb71IzrR3Ej?=
 =?us-ascii?Q?L1COb6llLlur9hKIEt6Q4ZWhcVjkLwmVLVqY0Hac2NdU9TwR+AIVewOCiolb?=
 =?us-ascii?Q?IoXBFQQsRdcRF4+nqqyNQFa+Jgqgnv4pWldn4nSdBIh0rd9T8Pz4Om+SFZmC?=
 =?us-ascii?Q?6gTRoz9SUV4CWhl2hpb06yTkvX7Xpwr4OQDMyeYa/8rwT1q/u+d/XCrIZCYL?=
 =?us-ascii?Q?tnSwhPM7I0ATFRjsmqZunzC3BnVowEOmTNY4XLU4gYSVBmqi6+gLCzjlQyyn?=
 =?us-ascii?Q?JFLhBdq91xp1Sa2FPC04kIQ=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 819c26bb-e6a6-44d2-ebd2-08dc10e1fd0a
X-MS-Exchange-CrossTenant-AuthSource: NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2024 07:09:57.9687
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QbVemyxFMpwTsYSDYtmKpi+Q0kQfbawPfFGww3uQFBAMeiBw0FixbVnzBCQ1e+NcuSFZaUyzyVTCVbSiUSdhExvKKB27r6Agtfnd7LTTrVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NT0PR01MB1133

The waveshare 7" 800x480 panel is a clone of Raspberry Pi 7" 800x480 panel
It can be drived by Raspberry Pi panel's process but it needs different
timing from Raspberry Pi panel. Add compatible property for it.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 11422af3477e..02f6b1b2ddc9 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -335,6 +335,8 @@ properties:
       - vivax,tpc9150-panel
         # VXT 800x480 color TFT LCD panel
       - vxt,vl050-8048nt-c01
+        # Waveshare 7" (800x480) touchscreen LCD panel
+      - waveshare,7inch-touchscreen
         # Winstar Display Corporation 3.5" QVGA (320x240) TFT LCD panel
       - winstar,wf35ltiacd
         # Yes Optoelectronics YTC700TLAG-05-201C 7" TFT LCD panel
-- 
2.17.1


