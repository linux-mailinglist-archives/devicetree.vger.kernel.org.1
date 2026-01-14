Return-Path: <devicetree+bounces-254915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F274DD1DABD
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF5AD3012C5F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEDE389474;
	Wed, 14 Jan 2026 09:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="WrhzTDpD"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012063.outbound.protection.outlook.com [40.107.200.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E627437F8BC;
	Wed, 14 Jan 2026 09:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383779; cv=fail; b=WSZsseRrnCUkUe7yb9eAqQ9K93zkC8ZSkmwo0QwcV1VzAJdAugJL3iOd0n6an/6U9pWxCu5vgYR08mKyTFIsoRwYRc6ie2OhzxZoT78x/P0rR4jQwC7Up9ydcM7Mdn2jSbvMSJQHlrewtltqQaeYL9eIuwP1RYReRnc7jV0y2xY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383779; c=relaxed/simple;
	bh=bKknaMUWOyx6oMYgZujyfQXfF8ru6iY6lKZouDyZaMw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gqgBeuXjDAJOofYWX8avNgSVrBr87znVVQaNMeUJmu9nIegWETh/fxAKVSuHedB1auoA8HAnaB6gtggmRCaxp2pmh4OvWSduao7pRKxgrkt1TCbBiUILVz3X3suU0WCEt4dY5GBNFaaJJssXiugcLw2GtDVhnQF7MIFt8SG5HDw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=WrhzTDpD; arc=fail smtp.client-ip=40.107.200.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LQdyvQbKPqRigYmVj4igOy1kLmZ9Q83XXjqXCgAHN3nMRtEGTyGSSAJueXokZRx2iDLtNyYc2NrzM5RKOwM69QyCXHdElMsuTgxDFPLsCEMa3XLYTW33yU6j+/pEP6+PXTN4UHJGnlWtqKmMA9ulYOZBwR7eez5xfeOAWoxTSvFLD9YTn+4vUeLyK1epfE+aRn7kdm/U6Fe0iPduo8tyNAkIL3XpuMiqZNT3qSoWXPGJQ4jRlpT456vzbwjiwLt4Ljmeof70FGTY0cC094/Q0C8W/xlLYlcnKOahvBesj1K+aYtWn8+AgMNOdouJJWjgbbtiGgf78qyIK3JbD1iMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hIGzJFolKS47SPodtQ9SlSQLkV/kyhYjrkQ7Z5wfXOw=;
 b=r2HAPptoglgHtC0JPiGsZZjy5FwuDjA2fHVjMr2kCvL5ldqD1V/hRkldPo3V8OETwRh2udLfxJK7J75oFf/tIsTmgh4POo6KYh3FSb58BFSGv7YNJ2LTvmjks4QRNqe0YFPMmvtUWY2TjFbB8FRPbDk/pZab7UIb8lwJPCh6tz7gSvz72SJpTI64XSoK018B9i7KA+y0f6GsEUGuuvMU12NLvDrNmNhiQn/MgUUdfdtdf/FTMvjALDeab/IUbeZPegmQIMqulQqf/2HLQ9PYoWKFw1WMmjhSfc46KxcRbEjQgzsr2ewPDJal014MnJwqMOBUCBYpr+jJAIvrUAIdJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hIGzJFolKS47SPodtQ9SlSQLkV/kyhYjrkQ7Z5wfXOw=;
 b=WrhzTDpDcv+KECc5lsXXNS2UHALaNqIZhHZeXg4yHkcsSYY9s8JSsrcj7A3aOAAxo88WlAes38C1tNt7M9AqHdMfAsozyv3NQap186cIC+gu1yjji5Qv5I9bH4DiAyujpfPE9+LJvdpRgU/AHwMH8fswOikPbgElQUySQNsYHsh3ZTRNF0bguWkvw8e8rWsD9D73Rso6pjH7IRMjqi+pDJZZNphIAs0BnY0qfhH1JMkY/qbNVjG8/vt5PWVA22j54zrOLrAT9Co6ip2bMCH16av8Lfy9xJ+lQayAYNKU+RQOgfDwXjNE1XIpXbN1OGtTTIhjuTin+zzeSwwAvtAmMQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by BY1PR03MB7214.namprd03.prod.outlook.com (2603:10b6:a03:530::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 09:42:55 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 09:42:55 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: intel: Add Agilex eMMC support
Date: Wed, 14 Jan 2026 01:42:52 -0800
Message-ID: <a1858f93fb430d3f664406e6d300c4d44b4647a2.1768378952.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1768378952.git.tzeyee.ng@altera.com>
References: <cover.1768378952.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0059.namprd17.prod.outlook.com
 (2603:10b6:a03:167::36) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|BY1PR03MB7214:EE_
X-MS-Office365-Filtering-Correlation-Id: a1412d50-b64c-4864-6f76-08de53514b2f
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?j04WcOCP7cmO4ZaF1IJydMc79r3lhHZHtayQEjtjrL9H9SEjM01d7dgSyV52?=
 =?us-ascii?Q?A+iktuAralMgtOXeVESPR9jmc0uqIzHziRUTyPLTATF2tt3a2c0tEjH3gNJ8?=
 =?us-ascii?Q?6qI/ZAXmc64j+Fqzkv1O51E5imdFH8lC8RfBDvyDhgylkpd8zWxfMn9ec5t/?=
 =?us-ascii?Q?CmocMnEFBmgPtw1D1EWY4PcEMeZ6QQSTlozOY2UpoC9nqklDr6hMCyX3RPOz?=
 =?us-ascii?Q?Et9l7hpLIunpC0e0f5SjIaM5HE1pUUX8T/74+lNgcvVD2d+yS0QMhgfUhXwe?=
 =?us-ascii?Q?qaDfbuPUGxiuHTe5rOkVly6JN1j9N2l3c5VVZOkX+HjyiSXRQflwPTaTkUiI?=
 =?us-ascii?Q?NePAUZYVAAaTFb+Tn22h3ovLE1tq5Ntc+sj9UwFw5D/ISYE3/mtw/si46fg2?=
 =?us-ascii?Q?IyDVIA7a4toGNQVd7+k0Y3xZUwDATN6qn0BCprxHIfDVTxHD8KYtVnjvxPrI?=
 =?us-ascii?Q?oNI5mIWDTGvQtwEYJ7dnv8NoiJ1BbdHvZKQf4J99cSELZJB2HXvot5t3IXHk?=
 =?us-ascii?Q?etOKDRT+8go7GpjCEGEoHxacztlZZAjFBNE7wLr3ZEqesuIQ6+k5UeHqwZwN?=
 =?us-ascii?Q?kPoRv74sumBiYsuKod6AkzcVBh94X9btrht98WB4ioERVjk6GvZpxBmCcvGj?=
 =?us-ascii?Q?R41TaPm82l+2nonO8R2GoHnvnFdQyTn96CXU+1WT+MNRX2APTgZJRyFTqL95?=
 =?us-ascii?Q?bML5lxQ+kZmzsQeElsvHeLFB9ST6nGrhLOVIEis9Aqqq76fUF572oMpfRKfF?=
 =?us-ascii?Q?jRR1e2oNEZYf9P5Z0ztl+cig3PGQla1z5Ul7/KFI3QqE7Erx33elPNcdcsGb?=
 =?us-ascii?Q?uHYH1BxmKfiKLlAn0iSDiK/ZFwhGtnDaQ33Kt29VjN2iciqZkIpRxABbqdv/?=
 =?us-ascii?Q?SUBYey21GV7MPlhEGYm5tc4vH26kk6T5ldCJCcTCCgC+0ln8CepYQkwdMCDe?=
 =?us-ascii?Q?0kacjcV93Lw3rKARtR9CE7gcCRyJpR7J8908xyAQf7rUxBT5XexirmrxLxQW?=
 =?us-ascii?Q?B78xFUiVQGf73c9wj46S9sp+7QoiJdGOZTZ4hxNfnM2q+L4FtNk3SZ5u3O0I?=
 =?us-ascii?Q?pCBYMjl8Lz3Gk8FC4sOUnxVsdcWv02EYlMdXRRcxl/vGOr5v3z346LyzNnYB?=
 =?us-ascii?Q?KAOyJrGYU5+Gss2h6ucvelafuc8rQ74M+8CVXNydqECEpaicla+k8PjwlBDJ?=
 =?us-ascii?Q?9Blbl4Zt2donKVHz930w4mBB6gXfhYSEXdA0oa5/KmemkBeIILpRyNuuh703?=
 =?us-ascii?Q?C4Me6KOQhBG5d3+0qo/SZA1HfVGPf7NOz2avjyOXMkgjxEkX76il2P+BOW5k?=
 =?us-ascii?Q?cnyMFLZfwwBTrxWFcdqPGJQCdyzm0PzDxyhNZQybO7ATF+ffqMLAyrL8/YMn?=
 =?us-ascii?Q?M04qjdgYn8I1C9iiJZtd6M3MknUnon5OkYew9HsohHNkLqrHkDNK1Nwst1jH?=
 =?us-ascii?Q?gTNMtSw62/U+mTbSRY+/tpr+BUIvr+bA?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?sTD0vi8VQ5xBQsW8kDkTvt2NjGAaoUWwSEh2ziSISZ3nJLPX0gz4OaCGxptp?=
 =?us-ascii?Q?nCInxaCU3ALhTFJ/2PHfuepu/s0oBuuxxF/JaaRaOl6FJWifWZ5ZDPGh1Pua?=
 =?us-ascii?Q?r7y5n7K7pZ/rr77+2wIKn3IVZRVzQarNB7YycTfGgcrCJAioDwnb8SB/PP2Q?=
 =?us-ascii?Q?B5IabMMnFCR6X4E45PDZwue/BeLuVboC5J8oUYy9M6pprzE/AFxZbpMenxZA?=
 =?us-ascii?Q?PuR2z8i/Uh6KaMD6oPGNa07Vt5XwWhMX3fgsoFmDSL4SxWogTd2e0SgBfiYx?=
 =?us-ascii?Q?J5PNoay45McNPO65nQbXyEznSli4xism0aUc0Wblf9q5QG46sFLTrMojIV2e?=
 =?us-ascii?Q?kgWEe1bmOTYb8fBzNglgV49QnaJYcY1Zu0j5AChj8Yot74Z1tvkLjCZsGKM7?=
 =?us-ascii?Q?m3j6ap/pC8i3zFc8vJTLsffFJ3yYnuTRMpW5XVUVE5t9vc+o4Hc7Z+zI/2ri?=
 =?us-ascii?Q?fMTfsSjMRfwZ4O47l+jVK0IiI1qkOTW25t/quRCInv2CwAaGrkUqak3XyEhf?=
 =?us-ascii?Q?sgwwsu4Q7Q6rQhi6qTu1JMe8CHlK75XQ2pvGCtaOnC+viqmBA/T8fWMj6sDp?=
 =?us-ascii?Q?X9mlEmre+Wk81t16hurKGWFExvuMtKZDJUej7QAwm0kH9NfZ59AAd+itur+O?=
 =?us-ascii?Q?knDtzbWg9sCz6MIOzAq3iFvhGailhxcte3wdhzSyEI+OezBIQS1b9yQVr7kA?=
 =?us-ascii?Q?xbMRvg3nJl527Bi3iUJM+VRqwOsd3Ms3voLR4AFYJosw0hp1tCrGkso2OJvo?=
 =?us-ascii?Q?83hx9WS5ZULaHKFZbDtVxqbLkGXpk7A8OtCKgVeadUJZnZgbH32rZXsdlJbN?=
 =?us-ascii?Q?Kt4XuJ4NVrhkyMpaBrGHlPp/DJHDupz4yAs0pqVdYVwX4zBX3vaNNpUM+ypC?=
 =?us-ascii?Q?EhdSiepcu3xa1+lrmUlA9QpIqpNMSgb3Hy9T2fWer/RhiXck4OY2Y5pnWAER?=
 =?us-ascii?Q?flcRDwWso742eGJrJ9RpWXc20iNone5uxVxS2LEVeL6ZPgmmOLp/dZi+1s7Y?=
 =?us-ascii?Q?MPQEGNqtyT9Jo/Fz9CMGSlJ2w9pW9WDnPNhkPp/6mcE0h/vAhz+hmruQmo/J?=
 =?us-ascii?Q?VHCKNmUbGpClGPiU0QyA/IyPCV/eyKRUr5Mix/O4iWaWRgmlYwpWf7CAG++V?=
 =?us-ascii?Q?ESNYVpiZcokOJLuCBl0rgPB6aJcB/quXtBfweBXZQiV3iOa7OX6BX5docNZt?=
 =?us-ascii?Q?su4puDgeBVzf+jxdB41m+q2eAvVAFDC+hHVVRsV4KRZvYIplojB0tnnfknn4?=
 =?us-ascii?Q?hazcYEsIkmbQlz7tVbJ9YiZAD4OVv9qUeI2zKGI3Tof21nzBwnY0FuhjgrHX?=
 =?us-ascii?Q?lM/YxVuIqsMfUSx9wJT8F5qlQmMKEx3W6ZcHMECMklT/1HfUyJmkx5HZ7nn7?=
 =?us-ascii?Q?5PXcR7xV9jlZLrE9c4sbwK7ob/h2inU6/XukrTd5mm7CX0YRvE64F5NJB5xZ?=
 =?us-ascii?Q?lDkEBSJAX4FKf0cyGnQIkchKGGnWgkSa+LUn+Im9yOawVxAcgSwmjAxGs6p3?=
 =?us-ascii?Q?J+SwsQN2dj+IDzR452uB8/CcAny7F8LOkCG4erqcp8EPNy5FfwlBhR5NCdWF?=
 =?us-ascii?Q?8ZCVkqMPjS9eGLdRtxTDgBub2zhEaLvip4Ni1MvaanPqXc6alA0mzD5nWXWq?=
 =?us-ascii?Q?7uaEUgGbHZXfO47Ztzma1SgdqL4z3zGyORMtI96xF0PGkhvulpNbeCNdsWc0?=
 =?us-ascii?Q?7ZEg8XmmjpD8sggoYrqURqeO9NiytPskI0Tj67U3XhXe23AaDG2GLjnlVMGW?=
 =?us-ascii?Q?mvOXcTaW1w=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1412d50-b64c-4864-6f76-08de53514b2f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 09:42:55.2839
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iTb/JRbCiD/2Xs91WvXfT1Bq6zZC2lOrqeuZprXiLcXqaXKdO+sd3byTe8p6BzDWx0eyNbL1lEcxx4kcs+ElQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR03MB7214

From: Ng Tze Yee <tzeyee.ng@altera.com>

Agilex devkit support a separate eMMC daughter card. Document Agilex
eMMC daughter board compatible.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v2:
- Add new compatible string for the eMMC daughter card in the binding file
---
 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index c918837bd41c..5fe0938662b0 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -20,6 +20,7 @@ properties:
               - intel,n5x-socdk
               - intel,socfpga-agilex-n6000
               - intel,socfpga-agilex-socdk
+              - intel,socfpga-agilex-socdk-emmc
           - const: intel,socfpga-agilex
       - description: Agilex3 boards
         items:
-- 
2.25.1


