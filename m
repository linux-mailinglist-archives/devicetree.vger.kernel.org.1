Return-Path: <devicetree+bounces-18011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C46C7F4C88
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 17:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F58D1C209DB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 16:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 697112566;
	Wed, 22 Nov 2023 16:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="bBZresD/";
	dkim=pass (1024-bit key) header.d=IMGTecCRM.onmicrosoft.com header.i=@IMGTecCRM.onmicrosoft.com header.b="a82Ori1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D7C19E;
	Wed, 22 Nov 2023 08:35:51 -0800 (PST)
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3AMDkLtT020325;
	Wed, 22 Nov 2023 16:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:content-type:content-transfer-encoding:mime-version; s=
	dk201812; bh=AqdYfIIhmCKbKp6LpU/uxNDTEGEtpFFzLosf5ilb0Zw=; b=bBZ
	resD/ozhIArlOE6c+3/Bru6rN2bnR3WutWL7XJbec3BMwig38n8QvvemzFrGZrT0
	Ha+knEotSJjEvKWD0KquflReinEYOqBAdLP2PXKovkSJ+84Lat4x8ZbpQk1bBiLZ
	pv42Rvk3VzHU5DBWcivC+s03Ezmfi4xsX3OntD6+C4p9S7BZiLNk4WuEccYlyV70
	/TSBHVx5pp1KwawBjvP0UVEzWOPfK5/e92ZCF+4hfSChzaSlVyudebIxF4yqHPsd
	iRooMbXkxLBzfSIVcz1sPNKjJjk9DKr7iSriZXGYDot+CwmMZ06SymCZHyGgyltn
	rvZwbklzMvCOxw7BHew==
Received: from hhmail04.hh.imgtec.org ([217.156.249.195])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 3ug99gsf32-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 22 Nov 2023 16:35:13 +0000 (GMT)
Received: from HHMAIL04.hh.imgtec.org (10.100.10.119) by
 HHMAIL04.hh.imgtec.org (10.100.10.119) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 16:35:12 +0000
Received: from GBR01-LO4-obe.outbound.protection.outlook.com (104.47.85.105)
 by email.imgtec.com (10.100.10.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 16:35:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQhrPT735aZUzdnqQeUr7B4rXyJTJYhCR0SCjyfdEwq7tNDfRTeaMCfJRWj1o1VI2w6Acp6pfkWmdz6aEy4HushdnsELKh/KZsGpAAs7EgNHEBcj3ucwm6phqyYYJnU1gDv6yTnfEzELO+Z+fOmbwFivV0SoRLQ2SfRE/qgpGE6AFB/rHKofwq+X9DyX1XX83OIaDYk+VB2pRB1VNDBy9R9rTagIk9ZtjaBWgDW0wVZ3bdGB6M4TtLHlhDbHpdfJ47zKEDKd3392MnvwwFmTMll5ejS2T4laNBVRgN0PO4HHmf6gwg+c2fZ7o1xI1zTYY3oIBwzVqKmu0Ij1vqCIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqdYfIIhmCKbKp6LpU/uxNDTEGEtpFFzLosf5ilb0Zw=;
 b=mZl6S1RkmsUO9GgMlKfhW5m/47sQclkpJFISI8ktkRWZHw6zc4eXkK5MMRAis+5nFCaikUmJY5BaQPyvvTnluYjpS/++rLBMVXAKZSpOSSXiFZS9RnUWhHx+lPNB32l2D/1GkPfPlRCmtBe/MNtECN1+pMsRyA1gIc65+VvMu2qwXm7qOUxXQeNuy4lW9hwpZcZo8OhOYz88o/VJisaXaca9/2C6I5Urtrux+NRgOepkg2kaSUcY54gMWQGabRXUsM2KCMGS9wgpzID0Wd2SPHSMLW5F9npDHUzgUUGaE86ObVluPktJ3x2DYRbaCyPpTM9FueuXqaxnlljn6AgByQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=imgtec.com; dmarc=pass action=none header.from=imgtec.com;
 dkim=pass header.d=imgtec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IMGTecCRM.onmicrosoft.com; s=selector2-IMGTecCRM-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AqdYfIIhmCKbKp6LpU/uxNDTEGEtpFFzLosf5ilb0Zw=;
 b=a82Ori1txxnOWguO3KFzDl/3ojtQg3lSNxnm2qn0W5YfAwsPcmCkAIrho6XpTaJb95F4TbcD0AbvKJAl3E9ukk0XQbiGrYXpb9V22IEtqgaAsCtqGKlAX+F48y8WhdmkxDNyvdvfYGT8tNuYD+7AZErEWl3f+60DllfbjWzzqsw=
Received: from CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1a0::8)
 by CWLP265MB5329.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1c5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Wed, 22 Nov
 2023 16:35:10 +0000
Received: from CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a85a:76f7:c085:2b34]) by CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a85a:76f7:c085:2b34%3]) with mapi id 15.20.7025.017; Wed, 22 Nov 2023
 16:35:10 +0000
From: Donald Robson <donald.robson@imgtec.com>
To: <dri-devel@lists.freedesktop.org>
CC: <frank.binns@imgtec.com>, <matt.coster@imgtec.com>,
        <boris.brezillon@collabora.com>, <faith.ekstrand@collabora.com>,
        <airlied@gmail.com>, <daniel@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <afd@ti.com>, <hns@goldelico.com>,
        <matthew.brost@intel.com>, <christian.koenig@amd.com>,
        <luben.tuikov@amd.com>, <dakr@redhat.com>,
        <linux-kernel@vger.kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <corbet@lwn.net>,
        <linux-doc@vger.kernel.org>, Sarah Walker <sarah.walker@imgtec.com>
Subject: [PATCH v9 05/20] drm/imagination: Add skeleton PowerVR driver
Date: Wed, 22 Nov 2023 16:34:26 +0000
Message-Id: <fed8a77e29620a61aed2684f802339759082cf1b.1700668843.git.donald.robson@imgtec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1700668843.git.donald.robson@imgtec.com>
References: <cover.1700668843.git.donald.robson@imgtec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0273.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37a::10) To CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:1a0::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CWLP265MB5770:EE_|CWLP265MB5329:EE_
X-MS-Office365-Filtering-Correlation-Id: 15ace67a-4ad0-47d6-5214-08dbeb78fe56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PwyjusFS6hLlhbZ7yrYHvsYtH8PgRXQUihYAL8rivXy/oLG5W8odaQzszn1+VqtzipGaklwAB3Fwq+SS6THMIqX1paJUWbCUYxzi0Sq+1dvQv0QoSNgRURHWeOqpkyaeCjZo/dDhFKlUzhFzwHFyM9ZhhOMjBCo/17h5vvVjAwLPuKo5U94NGEyjhYTDPXsCEF3b56k+aoxw7q3ydUBlt0RtcYMBz4XUUP1nfr65Ytj1f5IllNnThXMHWbJs++RQREQITgKpYX6i6IALnsMsmuy46M0YeaJxTwv8+eRN6Hyo88Rfw1ZlQ2YpoG4RDeZYLXJ7O29uPC/w6N5C50tX7/XF8IlatXxis41u4zEb17u0JttQGAKVoDX2p38hI1W23C4pPmW2OKXX9qZU5qsa4CeenBTGSdXgg47uhuAuskFhQ/6ZauzFe3HIEgrFjxUwuij9vySxG+ysHdAfV59NefDCTqZgh/dog8u7DKeKXgUPtMVGi5I3rB5u1BWeQrefRizO0oBwA1tUn1Q2IpnQi2swo6aJC9vnhPPlPQvNg1NI+FRwd1eWJ23SwFLILI1IYsWhOq5ZmcHJrUPrhkVPMlf+c/i/DkjBfC0k/e3CI7Ra9M9JPGHw16GqdQyx/yQK
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(136003)(39850400004)(376002)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(26005)(83380400001)(52116002)(6506007)(6666004)(107886003)(2616005)(6512007)(6486002)(44832011)(5660300002)(4326008)(8676002)(41300700001)(8936002)(7416002)(2906002)(30864003)(478600001)(316002)(6916009)(66476007)(66556008)(66946007)(86362001)(38100700002)(36756003)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlRmRmJoY3poSHhEY1U1amlvNTZHdE1uVjhsYjk4VjhYZFlZS1JVa05RNXU5?=
 =?utf-8?B?Y1dFWTF1RjhYS1N5MGhqWWVZYTgxZEhxMFpXT3pKcGs4T01nY1k2STJ6MUti?=
 =?utf-8?B?dHJIWEdmTjgybEYreXZnZFVmY3BlTkp2SHpzNlVreTByNHpnaFhlK0ZnUWtr?=
 =?utf-8?B?U21vQUVLL0pJaFNlVFZ2UGwxRER4YmdhTEVYdzAzZ0FaZkpoRTkrNjB6TkNW?=
 =?utf-8?B?UjduZzNGMXlrSUV5OE9xL1lFZXhoblNtdlREQ0JNM1U2OFJsNVAzZmY1RGwr?=
 =?utf-8?B?NjlsazAxQjFtSHNjMTRJWHR1U1ltVUlmVzBBUWtFM2FJM3B3MjFrbVlPMy9B?=
 =?utf-8?B?UVJoZzVaUzhzY0w1NFdndURlVjd6THUvdjJQZlQyYk5ZV2IyeVV3aFNTZklW?=
 =?utf-8?B?U1FlZFFTYUR1MUROckw1L0M2d3AxYU5oZnB5QUNYWTQwV0pUR29Ea0NacHhC?=
 =?utf-8?B?cHpzcFhpbCtKUUhCUEI4alBHbjhzaUlEd2h2allERFpXdENlWVQrUEhhd2pY?=
 =?utf-8?B?MXpGTjlGbTgzTzV2dGJtbFdCaE8vM2tjbFZUMHdWelRwVDZWd0U1V0ptZ0Iz?=
 =?utf-8?B?K1laaWUzT1lMNCtuTmZzV0xqTlFHYkcwZFFmalBaWjBEM01xNytzYnEwTlF5?=
 =?utf-8?B?WUNPeWdpK0ZvUlpua3h3TVh5bmJucStHcHpYUUU0RUxHWGxxUlFsREZJa292?=
 =?utf-8?B?RVNpQ1l3cTJhZE1oWFlmMDR5M2tud2FBRVVTRjAxRXhhUW1vL0hOQ0c1WWR2?=
 =?utf-8?B?aVIxREdQQXUrQXpCcTBhUWwya0tXcnBocjJMQVdvVzdaNmhzMDlBcTJidFlr?=
 =?utf-8?B?bXB4L1pJT3pmUTdUUEtCWElYdlZUL1QwRHNjR0N3cEVnaE1mUGtNc29OSUww?=
 =?utf-8?B?cXRiWGRoTFBEVk8yLzF4SHNsK1VQQTRhRnBPTzF0OU54VmVKcmRFVURUaWRQ?=
 =?utf-8?B?QmR6em9VRFpoVmkyN09WOExnbVlWa2RrY1BLVW5tRFN3b2JsaTlRM0JTb1dr?=
 =?utf-8?B?UmVPNHMzZ2N6VWJHTE91R2tHcnNhSncrR2VScm5ZNFd6ZFRpNEJGTUFhdWlv?=
 =?utf-8?B?cFUxNG41S09DV2c2RWN1UDNrK25QSVNkNzgzakNBR3Q4MG5PSzU0VitCVlE3?=
 =?utf-8?B?cEdDSklQSGxwUW9KamRYS05YVGJ3QnhHa0RhUVhXL2FYNlhCUVhKdUozM09O?=
 =?utf-8?B?SEJ3Uk5zWlRFOHlVUG4xaU9qdCtmMXFkSWhwSUNnaGRTbEt4bDBzQzBZNWRJ?=
 =?utf-8?B?b2RvZ2hwQjc2UGF6T0FIbjlGNDdYR0tzQjkzNWRrTmZGN1ZsL1pyS3QzNFo1?=
 =?utf-8?B?ajd3alBBQnNISFJkdC9FSDhGQWJvbU1TejdaOW9TV2FWUUFSb0NZeUdKSHdZ?=
 =?utf-8?B?QitpaGhtcmNBZG1LU05hZnZmR3hrcjFUcVVyZWxQR1VPMXFDY1F3SGpKRytX?=
 =?utf-8?B?dzJZTUJBdUtXdi9qNjhJU1VPd1VyaGk0Rm10OW9vMkpmTmhVbk1GdzZLSUFL?=
 =?utf-8?B?Z1pIS0duRzVoNTNFMDIxaU1rRU81cUNWeDhSOFpCaVQzUUR0Uzc1Y1dwam5M?=
 =?utf-8?B?WndNcXNJdUQvanFycTI2WlQzd0dOeElHcjlyU3RQL3ZITm4yL1NSQ1FiM0lr?=
 =?utf-8?B?K0ZWT1JrTlNQbkQrUW8wZlMvbjE2aUc5R1ZUWDVCcS9xbXpNSi9LSGNUOHlv?=
 =?utf-8?B?MzBDRncvS2JtWXdYQjBFaXZjUEdGckJTUXdmV0VjMFJTSTh6Y1VCbU5PQ29m?=
 =?utf-8?B?SWM2ZndDb0pWRTR1K1ZHNkMrb3BicGN2RFd2YXJWSmM1ZGdZTnhvUGtCWHQw?=
 =?utf-8?B?QXNNQXRvZmpOOEdmSm1lYS9LUklqS2NmZzc1R0RhT3NGQnBJZDhDSVlhK0RJ?=
 =?utf-8?B?NmhEcHdNZzN5N3VVZ255NW16dW1KdDRZaHhPM1JEaFNFdFhTK0tKUkpBN0dy?=
 =?utf-8?B?Wm5iaWdNZFhZd0lyckVYSzlqaVl4OURacnRja1duRHMxRktxYUlRSXdXeS9u?=
 =?utf-8?B?d2FwUHV5UzNzQTljbjdnWVpNZnlFUitkT0NRMW9DYjZOLzkxWHAyQ1dOMDho?=
 =?utf-8?B?WXFJRFRaUjlVSllBdSt0cC8zbVdteEZKY2lEbkpaK1VJME1CcExpTEJBUDZI?=
 =?utf-8?B?MUhEWXl6SmJvbnpzVHQyWURINmdGYUN4RnRBbmlZUmRFc21kWXhpUkJ2dTA3?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ace67a-4ad0-47d6-5214-08dbeb78fe56
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB5770.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2023 16:35:09.9806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0d5fd8bb-e8c2-4e0a-8dd5-2c264f7140fe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r2dLAxnmlRzGDEnYA0pxKMXvAYxJu00wYFg4a0nw5GI0TZbtApKERrd+rdR+2hyIJjgEOKUahP5Cfv9LkEiexhjq/LUFF/7T8j+n9KS61Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB5329
X-OriginatorOrg: imgtec.com
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: -1iqqntg8BTOcCVzAEnDGyMRPNXuxsxg
X-Proofpoint-ORIG-GUID: -1iqqntg8BTOcCVzAEnDGyMRPNXuxsxg

From: Sarah Walker <sarah.walker@imgtec.com>

This adds the basic skeleton of the driver. The driver registers
itself with DRM on probe. Ioctl handlers are currently implemented
as stubs.

Changes since v8:
- Corrected license identifiers

Changes since v5:
- Update compatible string & description to match marketing name
- Checkpatch fixes in to/from_pvr_device/file macros

Changes since v3:
- Clarify supported GPU generations in driver description
- Use drm_dev_unplug() when removing device
- Change from_* and to_* functions to macros
- Fix IS_PTR/PTR_ERR confusion in pvr_probe()
- Remove err_out labels in favour of direct returning
- Remove specific am62 compatible match string
- Drop MODULE_FIRMWARE()

Co-developed-by: Frank Binns <frank.binns@imgtec.com>
Signed-off-by: Frank Binns <frank.binns@imgtec.com>
Co-developed-by: Matt Coster <matt.coster@imgtec.com>
Signed-off-by: Matt Coster <matt.coster@imgtec.com>
Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
Signed-off-by: Donald Robson <donald.robson@imgtec.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
 MAINTAINERS                              |   1 +
 drivers/gpu/drm/Kconfig                  |   2 +
 drivers/gpu/drm/Makefile                 |   1 +
 drivers/gpu/drm/imagination/Kconfig      |  15 +
 drivers/gpu/drm/imagination/Makefile     |   9 +
 drivers/gpu/drm/imagination/pvr_device.h | 153 +++++++
 drivers/gpu/drm/imagination/pvr_drv.c    | 509 +++++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_drv.h    |  22 +
 8 files changed, 712 insertions(+)
 create mode 100644 drivers/gpu/drm/imagination/Kconfig
 create mode 100644 drivers/gpu/drm/imagination/Makefile
 create mode 100644 drivers/gpu/drm/imagination/pvr_device.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_drv.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_drv.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 37642011c319..debbc1956b8e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10398,6 +10398,7 @@ M:	Donald Robson <donald.robson@imgtec.com>
 M:	Matt Coster <matt.coster@imgtec.com>
 S:	Supported
 F:	Documentation/devicetree/bindings/gpu/img,powervr.yaml
+F:	drivers/gpu/drm/imagination/
 F:	include/uapi/drm/pvr_drm.h
 
 IMON SOUNDGRAPH USB IR RECEIVER
diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index cdbc56e07649..740c1c0bd068 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -394,6 +394,8 @@ source "drivers/gpu/drm/solomon/Kconfig"
 
 source "drivers/gpu/drm/sprd/Kconfig"
 
+source "drivers/gpu/drm/imagination/Kconfig"
+
 config DRM_HYPERV
 	tristate "DRM Support for Hyper-V synthetic video device"
 	depends on DRM && PCI && MMU && HYPERV
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index cdbe91ac0bfc..b4cb0835620a 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -199,3 +199,4 @@ obj-$(CONFIG_DRM_HYPERV) += hyperv/
 obj-y			+= solomon/
 obj-$(CONFIG_DRM_SPRD) += sprd/
 obj-$(CONFIG_DRM_LOONGSON) += loongson/
+obj-$(CONFIG_DRM_POWERVR) += imagination/
diff --git a/drivers/gpu/drm/imagination/Kconfig b/drivers/gpu/drm/imagination/Kconfig
new file mode 100644
index 000000000000..03d0a5031f5c
--- /dev/null
+++ b/drivers/gpu/drm/imagination/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0-only OR MIT
+# Copyright (c) 2023 Imagination Technologies Ltd.
+
+config DRM_POWERVR
+	tristate "Imagination Technologies PowerVR (Series 6 and later) & IMG Graphics"
+	depends on ARM64
+	depends on DRM
+	select DRM_GEM_SHMEM_HELPER
+	select DRM_SCHED
+	select FW_LOADER
+	help
+	  Choose this option if you have a system that has an Imagination
+	  Technologies PowerVR (Series 6 or later) or IMG GPU.
+
+	  If "M" is selected, the module will be called powervr.
diff --git a/drivers/gpu/drm/imagination/Makefile b/drivers/gpu/drm/imagination/Makefile
new file mode 100644
index 000000000000..f12a06ada9ec
--- /dev/null
+++ b/drivers/gpu/drm/imagination/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only OR MIT
+# Copyright (c) 2023 Imagination Technologies Ltd.
+
+subdir-ccflags-y := -I$(srctree)/$(src)
+
+powervr-y := \
+	pvr_drv.o \
+
+obj-$(CONFIG_DRM_POWERVR) += powervr.o
diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
new file mode 100644
index 000000000000..d3629164a629
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -0,0 +1,153 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_DEVICE_H
+#define PVR_DEVICE_H
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include <drm/drm_mm.h>
+
+#include <linux/bits.h>
+#include <linux/compiler_attributes.h>
+#include <linux/compiler_types.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+#include <linux/wait.h>
+
+/**
+ * struct pvr_device - powervr-specific wrapper for &struct drm_device
+ */
+struct pvr_device {
+	/**
+	 * @base: The underlying &struct drm_device.
+	 *
+	 * Do not access this member directly, instead call
+	 * from_pvr_device().
+	 */
+	struct drm_device base;
+};
+
+/**
+ * struct pvr_file - powervr-specific data to be assigned to &struct
+ * drm_file.driver_priv
+ */
+struct pvr_file {
+	/**
+	 * @file: A reference to the parent &struct drm_file.
+	 *
+	 * Do not access this member directly, instead call from_pvr_file().
+	 */
+	struct drm_file *file;
+
+	/**
+	 * @pvr_dev: A reference to the powervr-specific wrapper for the
+	 *           associated device. Saves on repeated calls to
+	 *           to_pvr_device().
+	 */
+	struct pvr_device *pvr_dev;
+};
+
+#define from_pvr_device(pvr_dev) (&(pvr_dev)->base)
+
+#define to_pvr_device(drm_dev) container_of_const(drm_dev, struct pvr_device, base)
+
+#define from_pvr_file(pvr_file) ((pvr_file)->file)
+
+#define to_pvr_file(file) ((file)->driver_priv)
+
+/**
+ * DOC: IOCTL validation helpers
+ *
+ * To validate the constraints imposed on IOCTL argument structs, a collection
+ * of macros and helper functions exist in ``pvr_device.h``.
+ *
+ * Of the current helpers, it should only be necessary to call
+ * PVR_IOCTL_UNION_PADDING_CHECK() directly. This macro should be used once in
+ * every code path which extracts a union member from a struct passed from
+ * userspace.
+ */
+
+/**
+ * pvr_ioctl_union_padding_check() - Validate that the implicit padding between
+ * the end of a union member and the end of the union itself is zeroed.
+ * @instance: Pointer to the instance of the struct to validate.
+ * @union_offset: Offset into the type of @instance of the target union. Must
+ * be 64-bit aligned.
+ * @union_size: Size of the target union in the type of @instance. Must be
+ * 64-bit aligned.
+ * @member_size: Size of the target member in the target union specified by
+ * @union_offset and @union_size. It is assumed that the offset of the target
+ * member is zero relative to @union_offset. Must be 64-bit aligned.
+ *
+ * You probably want to use PVR_IOCTL_UNION_PADDING_CHECK() instead of calling
+ * this function directly, since that macro abstracts away much of the setup,
+ * and also provides some static validation. See its docs for details.
+ *
+ * Return:
+ *  * %true if every byte between the end of the used member of the union and
+ *    the end of that union is zeroed, or
+ *  * %false otherwise.
+ */
+static __always_inline bool
+pvr_ioctl_union_padding_check(void *instance, size_t union_offset,
+			      size_t union_size, size_t member_size)
+{
+	/*
+	 * void pointer arithmetic is technically illegal - cast to a byte
+	 * pointer so this addition works safely.
+	 */
+	void *padding_start = ((u8 *)instance) + union_offset + member_size;
+	size_t padding_size = union_size - member_size;
+
+	return !memchr_inv(padding_start, 0, padding_size);
+}
+
+/**
+ * PVR_STATIC_ASSERT_64BIT_ALIGNED() - Inline assertion for 64-bit alignment.
+ * @static_expr_: Target expression to evaluate.
+ *
+ * If @static_expr_ does not evaluate to a constant integer which would be a
+ * 64-bit aligned address (i.e. a multiple of 8), compilation will fail.
+ *
+ * Return:
+ * The value of @static_expr_.
+ */
+#define PVR_STATIC_ASSERT_64BIT_ALIGNED(static_expr_)                     \
+	({                                                                \
+		static_assert(((static_expr_) & (sizeof(u64) - 1)) == 0); \
+		(static_expr_);                                           \
+	})
+
+/**
+ * PVR_IOCTL_UNION_PADDING_CHECK() - Validate that the implicit padding between
+ * the end of a union member and the end of the union itself is zeroed.
+ * @struct_instance_: An expression which evaluates to a pointer to a UAPI data
+ * struct.
+ * @union_: The name of the union member of @struct_instance_ to check. If the
+ * union member is nested within the type of @struct_instance_, this may
+ * contain the member access operator (".").
+ * @member_: The name of the member of @union_ to assess.
+ *
+ * This is a wrapper around pvr_ioctl_union_padding_check() which performs
+ * alignment checks and simplifies things for the caller.
+ *
+ * Return:
+ *  * %true if every byte in @struct_instance_ between the end of @member_ and
+ *    the end of @union_ is zeroed, or
+ *  * %false otherwise.
+ */
+#define PVR_IOCTL_UNION_PADDING_CHECK(struct_instance_, union_, member_)     \
+	({                                                                   \
+		typeof(struct_instance_) __instance = (struct_instance_);    \
+		size_t __union_offset = PVR_STATIC_ASSERT_64BIT_ALIGNED(     \
+			offsetof(typeof(*__instance), union_));              \
+		size_t __union_size = PVR_STATIC_ASSERT_64BIT_ALIGNED(       \
+			sizeof(__instance->union_));                         \
+		size_t __member_size = PVR_STATIC_ASSERT_64BIT_ALIGNED(      \
+			sizeof(__instance->union_.member_));                 \
+		pvr_ioctl_union_padding_check(__instance, __union_offset,    \
+					      __union_size, __member_size);  \
+	})
+
+#endif /* PVR_DEVICE_H */
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
new file mode 100644
index 000000000000..3d4f2ba2c015
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -0,0 +1,509 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#include "pvr_device.h"
+#include "pvr_drv.h"
+
+#include <uapi/drm/pvr_drm.h>
+
+#include <drm/drm_device.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_file.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_ioctl.h>
+
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/fs.h>
+#include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/of_device.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+/**
+ * DOC: PowerVR (Series 6 and later) and IMG Graphics Driver
+ *
+ * This driver supports the following PowerVR/IMG graphics cores from Imagination Technologies:
+ *
+ * * AXE-1-16M (found in Texas Instruments AM62)
+ */
+
+/**
+ * pvr_ioctl_create_bo() - IOCTL to create a GEM buffer object.
+ * @drm_dev: [IN] Target DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ * &struct drm_pvr_ioctl_create_bo_args.
+ * @file: [IN] DRM file-private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_CREATE_BO.
+ *
+ * Return:
+ *  * 0 on success,
+ *  * -%EINVAL if the value of &drm_pvr_ioctl_create_bo_args.size is zero
+ *    or wider than &typedef size_t,
+ *  * -%EINVAL if any bits in &drm_pvr_ioctl_create_bo_args.flags that are
+ *    reserved or undefined are set,
+ *  * -%EINVAL if any padding fields in &drm_pvr_ioctl_create_bo_args are not
+ *    zero,
+ *  * Any error encountered while creating the object (see
+ *    pvr_gem_object_create()), or
+ *  * Any error encountered while transferring ownership of the object into a
+ *    userspace-accessible handle (see pvr_gem_object_into_handle()).
+ */
+static int
+pvr_ioctl_create_bo(struct drm_device *drm_dev, void *raw_args,
+		    struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_get_bo_mmap_offset() - IOCTL to generate a "fake" offset to be
+ * used when calling mmap() from userspace to map the given GEM buffer object
+ * @drm_dev: [IN] DRM device (unused).
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_get_bo_mmap_offset_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_GET_BO_MMAP_OFFSET.
+ *
+ * This IOCTL does *not* perform an mmap. See the docs on
+ * &struct drm_pvr_ioctl_get_bo_mmap_offset_args for details.
+ *
+ * Return:
+ *  * 0 on success,
+ *  * -%ENOENT if the handle does not reference a valid GEM buffer object,
+ *  * -%EINVAL if any padding fields in &struct
+ *    drm_pvr_ioctl_get_bo_mmap_offset_args are not zero, or
+ *  * Any error returned by drm_gem_create_mmap_offset().
+ */
+static int
+pvr_ioctl_get_bo_mmap_offset(struct drm_device *drm_dev, void *raw_args,
+			     struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_dev_query() - IOCTL to copy information about a device
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_dev_query_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_DEV_QUERY.
+ * If the given receiving struct pointer is NULL, or the indicated size is too
+ * small, the expected size of the struct type will be returned in the size
+ * argument field.
+ *
+ * Return:
+ *  * 0 on success or when fetching the size with args->pointer == NULL, or
+ *  * -%E2BIG if the indicated size of the receiving struct is less than is
+ *    required to contain the copied data, or
+ *  * -%EINVAL if the indicated struct type is unknown, or
+ *  * -%ENOMEM if local memory could not be allocated, or
+ *  * -%EFAULT if local memory could not be copied to userspace.
+ */
+static int
+pvr_ioctl_dev_query(struct drm_device *drm_dev, void *raw_args,
+		    struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_create_context() - IOCTL to create a context
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_create_context_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_CREATE_CONTEXT.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if provided arguments are invalid, or
+ *  * -%EFAULT if arguments can't be copied from userspace, or
+ *  * Any error returned by pvr_create_render_context().
+ */
+static int
+pvr_ioctl_create_context(struct drm_device *drm_dev, void *raw_args,
+			 struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_destroy_context() - IOCTL to destroy a context
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_destroy_context_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_DESTROY_CONTEXT.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if context not in context list.
+ */
+static int
+pvr_ioctl_destroy_context(struct drm_device *drm_dev, void *raw_args,
+			  struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_create_free_list() - IOCTL to create a free list
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_create_free_list_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_CREATE_FREE_LIST.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * Any error returned by pvr_free_list_create().
+ */
+static int
+pvr_ioctl_create_free_list(struct drm_device *drm_dev, void *raw_args,
+			   struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_destroy_free_list() - IOCTL to destroy a free list
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+ *                 &struct drm_pvr_ioctl_destroy_free_list_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_DESTROY_FREE_LIST.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if free list not in object list.
+ */
+static int
+pvr_ioctl_destroy_free_list(struct drm_device *drm_dev, void *raw_args,
+			    struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_create_hwrt_dataset() - IOCTL to create a HWRT dataset
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_create_hwrt_dataset_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_CREATE_HWRT_DATASET.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * Any error returned by pvr_hwrt_dataset_create().
+ */
+static int
+pvr_ioctl_create_hwrt_dataset(struct drm_device *drm_dev, void *raw_args,
+			      struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_destroy_hwrt_dataset() - IOCTL to destroy a HWRT dataset
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+ *                 &struct drm_pvr_ioctl_destroy_hwrt_dataset_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_DESTROY_HWRT_DATASET.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if HWRT dataset not in object list.
+ */
+static int
+pvr_ioctl_destroy_hwrt_dataset(struct drm_device *drm_dev, void *raw_args,
+			       struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_create_vm_context() - IOCTL to create a VM context
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN/OUT] Arguments passed to this IOCTL. This must be of type
+ *                     &struct drm_pvr_ioctl_create_vm_context_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_CREATE_VM_CONTEXT.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * Any error returned by pvr_vm_create_context().
+ */
+static int
+pvr_ioctl_create_vm_context(struct drm_device *drm_dev, void *raw_args,
+			    struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_destroy_vm_context() - IOCTL to destroy a VM context
+￼* @drm_dev: [IN] DRM device.
+￼* @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+￼*                 &struct drm_pvr_ioctl_destroy_vm_context_args.
+￼* @file: [IN] DRM file private data.
+￼*
+￼* Called from userspace with %DRM_IOCTL_PVR_DESTROY_VM_CONTEXT.
+￼*
+￼* Return:
+￼*  * 0 on success, or
+￼*  * -%EINVAL if object not in object list.
+ */
+static int
+pvr_ioctl_destroy_vm_context(struct drm_device *drm_dev, void *raw_args,
+			     struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_vm_map() - IOCTL to map buffer to GPU address space.
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+ *                 &struct drm_pvr_ioctl_vm_map_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_VM_MAP.
+ *
+ * Return:
+ *  * 0 on success,
+ *  * -%EINVAL if &drm_pvr_ioctl_vm_op_map_args.flags is not zero,
+ *  * -%EINVAL if the bounds specified by &drm_pvr_ioctl_vm_op_map_args.offset
+ *    and &drm_pvr_ioctl_vm_op_map_args.size are not valid or do not fall
+ *    within the buffer object specified by
+ *    &drm_pvr_ioctl_vm_op_map_args.handle,
+ *  * -%EINVAL if the bounds specified by
+ *    &drm_pvr_ioctl_vm_op_map_args.device_addr and
+ *    &drm_pvr_ioctl_vm_op_map_args.size do not form a valid device-virtual
+ *    address range which falls entirely within a single heap, or
+ *  * -%ENOENT if &drm_pvr_ioctl_vm_op_map_args.handle does not refer to a
+ *    valid PowerVR buffer object.
+ */
+static int
+pvr_ioctl_vm_map(struct drm_device *drm_dev, void *raw_args,
+		 struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/**
+ * pvr_ioctl_vm_unmap() - IOCTL to unmap buffer from GPU address space.
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+ *                 &struct drm_pvr_ioctl_vm_unmap_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_VM_UNMAP.
+ *
+ * Return:
+ *  * 0 on success,
+ *  * -%EINVAL if &drm_pvr_ioctl_vm_op_unmap_args.device_addr is not a valid
+ *    device page-aligned device-virtual address, or
+ *  * -%ENOENT if there is currently no PowerVR buffer object mapped at
+ *    &drm_pvr_ioctl_vm_op_unmap_args.device_addr.
+ */
+static int
+pvr_ioctl_vm_unmap(struct drm_device *drm_dev, void *raw_args,
+		   struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+/*
+ * pvr_ioctl_submit_job() - IOCTL to submit a job to the GPU
+ * @drm_dev: [IN] DRM device.
+ * @raw_args: [IN] Arguments passed to this IOCTL. This must be of type
+ *                 &struct drm_pvr_ioctl_submit_job_args.
+ * @file: [IN] DRM file private data.
+ *
+ * Called from userspace with %DRM_IOCTL_PVR_SUBMIT_JOB.
+ *
+ * Return:
+ *  * 0 on success, or
+ *  * -%EINVAL if arguments are invalid.
+ */
+static int
+pvr_ioctl_submit_jobs(struct drm_device *drm_dev, void *raw_args,
+		      struct drm_file *file)
+{
+	return -ENOTTY;
+}
+
+#define DRM_PVR_IOCTL(_name, _func, _flags) \
+	DRM_IOCTL_DEF_DRV(PVR_##_name, pvr_ioctl_##_func, _flags)
+
+/* clang-format off */
+
+static const struct drm_ioctl_desc pvr_drm_driver_ioctls[] = {
+	DRM_PVR_IOCTL(DEV_QUERY, dev_query, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(CREATE_BO, create_bo, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(GET_BO_MMAP_OFFSET, get_bo_mmap_offset, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(CREATE_VM_CONTEXT, create_vm_context, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(DESTROY_VM_CONTEXT, destroy_vm_context, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(VM_MAP, vm_map, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(VM_UNMAP, vm_unmap, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(CREATE_CONTEXT, create_context, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(DESTROY_CONTEXT, destroy_context, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(CREATE_FREE_LIST, create_free_list, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(DESTROY_FREE_LIST, destroy_free_list, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(CREATE_HWRT_DATASET, create_hwrt_dataset, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(DESTROY_HWRT_DATASET, destroy_hwrt_dataset, DRM_RENDER_ALLOW),
+	DRM_PVR_IOCTL(SUBMIT_JOBS, submit_jobs, DRM_RENDER_ALLOW),
+};
+
+/* clang-format on */
+
+#undef DRM_PVR_IOCTL
+
+/**
+ * pvr_drm_driver_open() - Driver callback when a new &struct drm_file is opened
+ * @drm_dev: [IN] DRM device.
+ * @file: [IN] DRM file private data.
+ *
+ * Allocates powervr-specific file private data (&struct pvr_file).
+ *
+ * Registered in &pvr_drm_driver.
+ *
+ * Return:
+ *  * 0 on success,
+ *  * -%ENOMEM if the allocation of a &struct ipvr_file fails, or
+ *  * Any error returned by pvr_memory_context_init().
+ */
+static int
+pvr_drm_driver_open(struct drm_device *drm_dev, struct drm_file *file)
+{
+	struct pvr_device *pvr_dev = to_pvr_device(drm_dev);
+	struct pvr_file *pvr_file;
+
+	pvr_file = kzalloc(sizeof(*pvr_file), GFP_KERNEL);
+	if (!pvr_file)
+		return -ENOMEM;
+
+	/*
+	 * Store reference to base DRM file private data for use by
+	 * from_pvr_file.
+	 */
+	pvr_file->file = file;
+
+	/*
+	 * Store reference to powervr-specific outer device struct in file
+	 * private data for convenient access.
+	 */
+	pvr_file->pvr_dev = pvr_dev;
+
+	/*
+	 * Store reference to powervr-specific file private data in DRM file
+	 * private data.
+	 */
+	file->driver_priv = pvr_file;
+
+	return 0;
+}
+
+/**
+ * pvr_drm_driver_postclose() - One of the driver callbacks when a &struct
+ * drm_file is closed.
+ * @drm_dev: [IN] DRM device (unused).
+ * @file: [IN] DRM file private data.
+ *
+ * Frees powervr-specific file private data (&struct pvr_file).
+ *
+ * Registered in &pvr_drm_driver.
+ */
+static void
+pvr_drm_driver_postclose(__always_unused struct drm_device *drm_dev,
+			 struct drm_file *file)
+{
+	struct pvr_file *pvr_file = to_pvr_file(file);
+
+	kfree(pvr_file);
+	file->driver_priv = NULL;
+}
+
+DEFINE_DRM_GEM_FOPS(pvr_drm_driver_fops);
+
+static struct drm_driver pvr_drm_driver = {
+	.driver_features = DRIVER_RENDER,
+	.open = pvr_drm_driver_open,
+	.postclose = pvr_drm_driver_postclose,
+	.ioctls = pvr_drm_driver_ioctls,
+	.num_ioctls = ARRAY_SIZE(pvr_drm_driver_ioctls),
+	.fops = &pvr_drm_driver_fops,
+
+	.name = PVR_DRIVER_NAME,
+	.desc = PVR_DRIVER_DESC,
+	.date = PVR_DRIVER_DATE,
+	.major = PVR_DRIVER_MAJOR,
+	.minor = PVR_DRIVER_MINOR,
+	.patchlevel = PVR_DRIVER_PATCHLEVEL,
+
+};
+
+static int
+pvr_probe(struct platform_device *plat_dev)
+{
+	struct pvr_device *pvr_dev;
+	struct drm_device *drm_dev;
+
+	pvr_dev = devm_drm_dev_alloc(&plat_dev->dev, &pvr_drm_driver,
+				     struct pvr_device, base);
+	if (IS_ERR(pvr_dev))
+		return PTR_ERR(pvr_dev);
+
+	drm_dev = &pvr_dev->base;
+
+	platform_set_drvdata(plat_dev, drm_dev);
+
+	return drm_dev_register(drm_dev, 0);
+}
+
+static int
+pvr_remove(struct platform_device *plat_dev)
+{
+	struct drm_device *drm_dev = platform_get_drvdata(plat_dev);
+
+	drm_dev_unplug(drm_dev);
+
+	return 0;
+}
+
+static const struct of_device_id dt_match[] = {
+	{ .compatible = "img,img-axe", .data = NULL },
+	{}
+};
+MODULE_DEVICE_TABLE(of, dt_match);
+
+static struct platform_driver pvr_driver = {
+	.probe = pvr_probe,
+	.remove = pvr_remove,
+	.driver = {
+		.name = PVR_DRIVER_NAME,
+		.of_match_table = dt_match,
+	},
+};
+module_platform_driver(pvr_driver);
+
+MODULE_AUTHOR("Imagination Technologies Ltd.");
+MODULE_DESCRIPTION(PVR_DRIVER_DESC);
+MODULE_LICENSE("Dual MIT/GPL");
+MODULE_IMPORT_NS(DMA_BUF);
diff --git a/drivers/gpu/drm/imagination/pvr_drv.h b/drivers/gpu/drm/imagination/pvr_drv.h
new file mode 100644
index 000000000000..c29d11af88fe
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_drv.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
+/* Copyright (c) 2023 Imagination Technologies Ltd. */
+
+#ifndef PVR_DRV_H
+#define PVR_DRV_H
+
+#include "linux/compiler_attributes.h"
+#include <uapi/drm/pvr_drm.h>
+
+#define PVR_DRIVER_NAME "powervr"
+#define PVR_DRIVER_DESC "Imagination PowerVR (Series 6 and later) & IMG Graphics"
+#define PVR_DRIVER_DATE "20230904"
+
+/*
+ * Driver interface version:
+ *  - 1.0: Initial interface
+ */
+#define PVR_DRIVER_MAJOR 1
+#define PVR_DRIVER_MINOR 0
+#define PVR_DRIVER_PATCHLEVEL 0
+
+#endif /* PVR_DRV_H */
-- 
2.25.1


