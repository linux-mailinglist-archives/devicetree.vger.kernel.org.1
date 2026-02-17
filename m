Return-Path: <devicetree+bounces-266169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ng5IHZ0lGnVDwIAu9opvQ
	(envelope-from <devicetree+bounces-266169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFE314CE46
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE1443008C8F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B9936C0A8;
	Tue, 17 Feb 2026 13:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="KHHV64Iq"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010037.outbound.protection.outlook.com [52.101.85.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16336B068;
	Tue, 17 Feb 2026 13:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.37
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336531; cv=fail; b=bw7DZ1uKyivIWiXNhP5gpQSiScmakiQ4hlkfBdz/KOB5pB6SgAma8DouEyvGDeNaG0OERQDxCSfPwWHkBQlXibXxo0Al5R+2YhyLoDzZgvnEmqmx+VD7XUWnIjmFMt95tp3oXW7RP70cgUBVhHGmOMF+4Y3raw58pTfPbrhTQKE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336531; c=relaxed/simple;
	bh=MYQ6uZ/TjWD2Wz260KBvWi8Uq5/n3V1Hpicp2zr3BZA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=f+yvPoPR6KyYFHvf1ay2MEAd9755WSjfB/bvzbdf/canSPyBtzemPHbBiZSbQrgx99YNyCYc7QVNUFzFQ4P40LaJux0Uvi6y3jIsgmb4/PjGh0e4d+z/2+FxJCvQTjpG7YKuPuavSxt/WAejCVyE6udPt2sfEHAWAJwtbbUbGyc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=KHHV64Iq; arc=fail smtp.client-ip=52.101.85.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s2IXCULQaSiiFHvRrPev5buBCw72F2LOKqk0RV3oZMXzG6fggzqCV6EniMcPLJ5cZvZTt5hfy1zw1rmFJAvv+4vfz/Ugz3BXQB8/SY9ppx1AIQy/pD7Tmc44uV66ULNk1c+f0C9XRxV22V+diZmRGQkde1ZG94eUQaO/8DUmSqEP7p3cs0XELhutoEPKLNPrQjWzZZJuNB1G9qq7edjXZ78W1mRhGfFK0c6+WjbbK1XN6pHSEIHlp6c7G5SMlMd7alYsi1U0N/DB9g8YqZyDcALZZ2TY9z826QQ0etc+Mk294KsQKcrmqhYNuIRXoT2Kma1K9r87D6Lf5dzq9B/Spw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+A++JfBe8vXG4S/9R2JRv4Dun9P+yhFOqjiFmM7cf2o=;
 b=rE2l0qe8jqJroOsjgAvU/LBiz9bJ2qA/60lAjrhY19B5+tQ3j7xGWpr22U9S2v9WN1PD/5FGsXbg/96IVvCmN9Nz5tP/Lpcimmu1pCO0iPzDhqXYlz5KnA1yKI5JXpYiarGdTxOL87HAe8jBWiz57Cm82RGq6eNP5uoIDLLsN5qSC85HR91hHWC2/p8z+ic/qvpY1l6+Jt7RZUk8uMqgOKB801C0SN5xOPU18P2iAGehWcK4td3xdgYZwE2Su9uuETdfYwS3T6vQEV1R8nC3ELX0n7FNOLeRrlI9EWJleEmT74E7EeuqfROITvKE9JaFn+z19qMyMtfKsgX86JpOFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+A++JfBe8vXG4S/9R2JRv4Dun9P+yhFOqjiFmM7cf2o=;
 b=KHHV64IqX9PHLGn27NEi+6hgtirRM2tFpLeH6J1uIUQnQnOnv75/EvjKMHUTu11zBt6hAFkLmLBDtPsAtWET41Jjpqgbh0mUgvue5iGTrTr8Cfm+OheHELgAztqhpPt3Z1ruX2f0dVDEczGRxuhV1LeTGkgORPxzOB7W22SCpBKDAHZm996CyoTBf6uDrsQRGXFSU1E+tDYrL4UGksH4HuaXNkbOO9BW/f+G4UzHKY7WEnxFBdLVxFimBMrw7fkT8hHNvwRDVL1zKXJ2vUyvGfi6KOj8tXIhOSkAUY/8kLCBeDaSp7v3MoMyCjxxtRLXyRB/uz9qejeYKBS/k8YTfQ==
Received: from BL1P221CA0017.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::35)
 by DS1PR22MB5746.namprd22.prod.outlook.com (2603:10b6:8:1e5::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 13:55:27 +0000
Received: from BL6PEPF0001AB72.namprd02.prod.outlook.com
 (2603:10b6:208:2c5:cafe::85) by BL1P221CA0017.outlook.office365.com
 (2603:10b6:208:2c5::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.16 via Frontend Transport; Tue,
 17 Feb 2026 13:55:27 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 BL6PEPF0001AB72.mail.protection.outlook.com (10.167.242.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:26 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 90085E8F41;
	Tue, 17 Feb 2026 15:55:23 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/5] ARM: dts: imx: {bx50v3,b850v3}: Update device trees
Date: Tue, 17 Feb 2026 15:55:15 +0200
Message-ID: <20260217135521.65742-1-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB72:EE_|DS1PR22MB5746:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d70b0c53-ce83-4796-a19e-08de6e2c34b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?KvBnboz0HYqljDHU8PmFotlXIV0dIJzUMY/1iAme1KmeuBP/ThD9cVMopIUE?=
 =?us-ascii?Q?lMcPa5ZBky5LBkWcUqfzxIb/XLizzBx+S++UqR/RwMxwQ/qPqA8HpqHeDWdl?=
 =?us-ascii?Q?p0HyYdLxQlIaNsCB+W/bcM+Z9xbsKzLFGd2kHwVMZgz2p9uz1D5fj/xws7gD?=
 =?us-ascii?Q?R8LGwGWsDnrRAOt00gmFcbgx/NNrlLZ+fnKWuXvEZpXHpK1B0MN6YWfa3AJm?=
 =?us-ascii?Q?vPPLa0Fv9REBsH8WPjGKQGCxJiRZr9cORhf1yDJ4UUCis8yiY9bLt1tWtOKe?=
 =?us-ascii?Q?OzEnXU4rpRXw0bfztdxSkRjr5hMrrD70ryEOn0DVZrAqt+RUjSg/+6M2+9Wl?=
 =?us-ascii?Q?hX4AWiC1ry0CL/vIu7YunA71/keb+w/coJTwa6vaKYjWjgSJ7EKAyM9n5X2x?=
 =?us-ascii?Q?d06aOYaVMvoqcZEiA+Z6qbIncCRF4Z0qUB6kTpw3sc2XKGK9mB1IxMZ3UOQZ?=
 =?us-ascii?Q?J6XVeTSUX0kfskvfqGqIU3DKxUsvKJW+bG1nFyn/Mz7m3lRdI3TDVKA2mV+K?=
 =?us-ascii?Q?XkrHjyq7mlEIYMjQgU5o8XeVGmW1YuSLAVkWxCfzW1SezewP+hTRlwK/5Y0g?=
 =?us-ascii?Q?LVMSHTjvkSiR/BYOQZo6glSsG4kMfYifxOVFOYmpdz3yYYc8X8mcUfwId8Dj?=
 =?us-ascii?Q?SxYZSVk3v11sQsK8ILIjFnTIL5NNoe9DC1ucO3jrXRwyFnUnDUIUMAqvfS92?=
 =?us-ascii?Q?RtySo+FAwTFVPZ76Jbp82jCrrI0+3ScQmryFfx/8GvSqQPRj9cKN48qwphZ2?=
 =?us-ascii?Q?eTISEO0Iz8xx/HcQ54+Xd2AgF5XuH7cOPFdA2/4mTq4kAEBKyzH8miXSDnzB?=
 =?us-ascii?Q?h3Ftc/Vdjx3cRxKknAfCdpbFuG3v8hcv7Tl9ghr/BkLc9pQIj12UvynzTxJD?=
 =?us-ascii?Q?EkcrN3NbG8eSKaKn9N95FqmAz/ZRxTA+kMXmcuWwdrh1WCqpywn7tQPHtT3s?=
 =?us-ascii?Q?CBZmu55KLSUVqHjCevBxY4NZkby0aGfJ+YpAmC9G3UPZfQd5ksqxl7gXgE6p?=
 =?us-ascii?Q?QAuvcuPKWF9D1uxLm0EZGblxVd108OagPPnmngjcf2myTuYnmDZC3+HQL6IO?=
 =?us-ascii?Q?b03faTsoywpTDDIughPDfBHAocoO6vsN0b0izFNUIm71b9Iu7KXYT5tGYHgL?=
 =?us-ascii?Q?TJvyI/rCt4/Hs2vf2QYv5Ev1rQzPLYO2yiWkYTLymxPmIbwy3JeJoqFIihY9?=
 =?us-ascii?Q?OlHhC52JDInsvq5YlUI3MeEfMLsoTw/aChqNtf2/NgMA8Ennn+YgGjprpccg?=
 =?us-ascii?Q?vJz62UCgvjvBI+YV06yMwfMuwAcNKP6IOUFQlw+m1h3YBcvJZwEnGGSUhV2i?=
 =?us-ascii?Q?Xi8kS31fONYQm1Sw4A7Hu6fFvaUyYf4ToD8ujHXSVN5TXtrlFqcdZmY8810r?=
 =?us-ascii?Q?mbCKRtsPNrqrGlnjm3HpthadeWaFkp11FxubyEfIgQpMqYn8wNYFFCLG2/dF?=
 =?us-ascii?Q?aGrtbm7UBXi2dmKyZs6SHa89eRH28/AYGrqGhuUFKP3feY5rZBocx2aUKrnD?=
 =?us-ascii?Q?TKSk4yP9Ry2g/QYnQdcDmI2RBdkyqCtmpecU0OAYV44Q/2Ye2M2DObmFmOyA?=
 =?us-ascii?Q?TwtQ4I18cOqGoSUy92fsw1rogWutj3LFEgeFTG5acvb0gQoru1m8AILaKKMO?=
 =?us-ascii?Q?fg8JbQ85XV+ONLzcKeKwoAH+hB266OBvjJKqJAwvoZBKYSPpYxkFxX87yx9f?=
 =?us-ascii?Q?Yu7lJg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	uJHVgWYqcZ28ij5eamGbLJq4GufTE93uZP2MKJ8q9VYjLJbwbTNvGm25to7mPAK9Cz7XtrW9qcqLbmcidry5TWM8lvu4jil66yRnlLXA7TVybgHYPdOUJocIjrzfPvEWs0APhEpXi+q/awNCAj5da+RM8dZn9c4H2Y7ABFyKkjaqbiqImefdaOZ0Z/NIkXDaubEbOqfm0XmWVSrD9h1piK8Wm9c3WnU1xyddgnaZ2EJgs5Og6l1jVu+Ksji+FjaAYhnlJt7d4quMPXBjtsTRiwXTcPeexVEEST7SEY2mMxzFGy7pSNDORNJ45VFtCo/lX0O6/pHH7krt/eDahsE4f5lcFNQ8VD98naW5lkMUaTpWzR5QJ2cDy7UrxDfo2tFXAiB2mI0yBB+wjZQ05tDMgrGq4gtUTi9D2BWzvJ4pgWWbm23w45ErB52NbnIfcYDH
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:26.9257
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d70b0c53-ce83-4796-a19e-08de6e2c34b8
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BL6PEPF0001AB72.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR22MB5746
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266169-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BDFE314CE46
X-Rspamd-Action: no action

Configure PHY speed and mode.
Configure b850v3 gpio4 line name.
Disable b850v3 usdhc4 interface.

Changes since v1:
- Clarify the exact warning message in patch 2
- Add patch 3 to order reference modififcations correctly
- Correct the ordering of reference modification in patch 4

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
Ian Ray (5):
  ARM: dts: imx: bx50v3: Configure switch PHY max-speed
  ARM: dts: imx: bx50v3: Configure phy-mode
  ARM: dts: imx: b850v3: Use alphabetical sorting
  ARM: dts: imx: b850v3: Define GPIO line names
  ARM: dts: imx: b850v3: Disable usdhc4

 arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts  | 53 ++++++++++++++-------
 arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi |  4 ++
 4 files changed, 41 insertions(+), 18 deletions(-)

-- 
2.49.0


