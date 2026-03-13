Return-Path: <devicetree+bounces-274959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB0WNi3Bs2mEagAAu9opvQ
	(envelope-from <devicetree+bounces-274959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:47:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345927EF46
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D2393015B86
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C3B2D837C;
	Fri, 13 Mar 2026 07:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="D91Onl6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010061.outbound.protection.outlook.com [52.101.61.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9034A79CD;
	Fri, 13 Mar 2026 07:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.61
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773388073; cv=fail; b=YFb6o58zXk+LnZrckn8s2hlKnHcHZU8qs82mQ+kN2dpBVyQ2jvCON7uoxrUoaUOLpkEXTvxh59jUaXtUU7kptainC3p5QLVamw+TY8RGapG2EAxb12yV3izmHJ3Gpt1Pv+T7sK21Qc17cJrViWYMnQb/QIrlEI65qTzaD6Dt31s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773388073; c=relaxed/simple;
	bh=M6+olLMPLh/0ttEMTcj93///A0HCY72oTK80mdfOce0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FV/ke9BZL2LypvSKTZXAPHOi4Te5C0FdDHjsiBeC87IY0VclhSbzFl783cH5LOTB5jUBnJIhwlWSyT0B4LYxNIwY0cIy51ci//DVb4qdXOeindYw74mcpsYeHj6OJnw/cq/h+PGbemBeP5E9GO9jRBTh4yhwXVGj7pVlb737kTw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=D91Onl6Q; arc=fail smtp.client-ip=52.101.61.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FYkQJexqfZyaIX7bn3ICG6jx8FcEb1/TXcokehcw6Wh/QMvuQRoFYDOlic7lGXAHKXlrk4mnwzyjbcjVmSPYcmkheMlQKxdYEN8m+KCT/NMcHlxauHlmh9x5mLJYnW+g8gZxFsXdAfPcnivKOl7DY3Ndlh5JI2ASWbjyJ1r90TRRIq13MK0HJov0bIdMbGz3B/GlRsX91Cbov4Zzec9JeJ2VXQsFedwKPcbauz6T/O4swZHzgd9HENzOZ8lHdObkRXy0QYZBW9qNgp29yDxJVLBpp0EjlIByJ9QmnvXxO+10xc6TTQGJTADb7tlZNdtOfNWOSMyiP2//3u3CHRmtOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ToGnh3yeB71hHz/0RKbhcnA3sjL4bLBovhtrQ1V7BRM=;
 b=hKLo5kdHBBJq5Y+/NJwY5OAA1aRYjGjmgO4bjv9oGKjkXpKjJDMyVsLL2JnP+TnRQ9FhffHF7Wd6QrSs/9gFdWFWXkXZXwkODkVr68ZUdoGRfLNRgxKvZB8kLmnIm3y2+k1VCBcVH+Z8xedqduM96VWKD0mjPpMqpYwrljmhkiv7ZUrZXitjWRn07BuCn9lOr46gTPLepb6SMkLI52aLnXu5wKiuL50+HHPHJgFkQKMYlssMhi/6V/k7Sfe7VhejuzWCbX6Rk3w2U8sRQFgcEcPIkrLp4wQZVzTvZeVeYiU/98BRHs8CmGphEBNAZ3cxMW3CGSf0I0tMCbxOrE5NJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ToGnh3yeB71hHz/0RKbhcnA3sjL4bLBovhtrQ1V7BRM=;
 b=D91Onl6QBupT036WMdKK79vlRMw+SpA6lm0Hcmbw1u+RuTH83KQgLhV7r/RKhWFAipdejOishPMzyTGvi0eWuT4YS8psYjdUS/YwkxY9n33Fbccnayfhp4TWjPQ+/dKU7OQIYNrcN1smBwjWCqi0fEucZFzpYo6DrUGAJ4RWtxk=
Received: from SJ0PR03CA0036.namprd03.prod.outlook.com (2603:10b6:a03:33e::11)
 by SA1PR10MB7554.namprd10.prod.outlook.com (2603:10b6:806:379::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.16; Fri, 13 Mar
 2026 07:47:49 +0000
Received: from SJ5PEPF000001F2.namprd05.prod.outlook.com
 (2603:10b6:a03:33e:cafe::d3) by SJ0PR03CA0036.outlook.office365.com
 (2603:10b6:a03:33e::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Fri,
 13 Mar 2026 07:47:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ5PEPF000001F2.mail.protection.outlook.com (10.167.242.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 13 Mar 2026 07:47:47 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:47:23 -0500
Received: from DFLE214.ent.ti.com (10.64.6.72) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 02:47:23 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE214.ent.ti.com
 (10.64.6.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 02:47:23 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D7lJNv3847731;
	Fri, 13 Mar 2026 02:47:20 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Franz Schnyder <fra.schnyder@gmail.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Franz Schnyder
	<franz.schnyder@toradex.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 0/2] arm64: dts: ti: k3-am69-aquila: Fix DP enable GPIO
Date: Fri, 13 Mar 2026 13:16:55 +0530
Message-ID: <177338196935.240421.13983455283267702229.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260202083604.325060-1-fra.schnyder@gmail.com>
References: <20260202083604.325060-1-fra.schnyder@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F2:EE_|SA1PR10MB7554:EE_
X-MS-Office365-Filtering-Correlation-Id: 637f181d-4189-4f18-8947-08de80d4d1b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	d+KuvUidfnMKQuq0tmgQBmgirOm6rlj84GVk/UeE41b/rjr2GjR3FBRVHaWMY4mdVHcB4SwGNN54K8hZqam8aqlmL/tX5u6WJM7E/di8T3VFQ+3WZ66owbCi2vfp2dqmWNentKjv7OGYjuAmobtaghduFSVcyuj8gm2je0r4VXqZW9MklpIgtwMeU+pQQTRAbwzF0cbcCYve4cOCipYPSBZwOn19IXsS6+j4Llcm/OVqUJc8lKwaD+iDWhgxISjpV2mT94JRbxzhyZk9KIDJbT5VfpxQ9HU2gf5SB0pLyBmUzFCvaiD23sr9irfS0OnRY5Dpa+PvjOxSTfAQhZeVlbAm5Wk0BOFF+Fe1bpkTE9VPMcJW6VPo+M/S5zpPlgtTh3z5N23hDiImLlncCebOgWiUwkwDBJzdqYcU4fhUXfXz69RFZk1lRk0C8ZPnd1QGX895+caDciq4N0mxuzBQfW0z7T3q7M+/48/scmJyl203EPTPRGh8Sqa3wCoXkATNiJrCpHOtDbD4Q7JY/eNs34OnsWi3CHms6MeP7i3qVgm9WHkiHV+iApC/tgvEporokbmFqi9zO0ofcjLrXrFU7QzvPlmsuYpVBZ5rMk2xIQEAmduvTwpeAEIH4l84Bb1vJpYJoH6sYUjnjFwD1isKPDILRQM9W4TC4qb2CpT2Q65afMEr8oEXHFpbVqfPKDZVXKFwCFs3DJOHG0/7tWK/W1A20wdmV/JSLITPaFywNMg=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	sm0ya9rTEd8kp6YqNN3jRAcr4ko+hGC6YbTUgl3zXCH2+7Ecud7DwYy+8zDpd5rgzVuLEKg7f8inkODcs0NBy0rYZaB5FxTC3fhra6/uPERDm1yJfvuEFBFF5YK6nRxPa3zlrltnVG2z+h+RVAAA+/N/R3YVHlqn7GHyRDOVQnhT2Haso7vNEp9YhR2MIC5ZuFqmquux2kAQsJMtBsjMlh595CaKG2aEh3kj+61F8VaoEebog2TFyiVoy0yMxYPZxOkSQLkWOkPQRVTw11v4WbOLixNKkr24yOJOBL7hRz7fKnrKnWtyjAsQykwUXdK3aLcf85V7wWUZoZ+aqVQHQlGRz518OaLSASEK+thMnAQ4AE9yqgTIWYqltP6oCIOjxwpIkcGUtiKM4nmvmNr3RTMYvBXEml+3uD6roZ41i2b6ek00cgaL6sM5aXwN4Uqu
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 07:47:47.1524
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 637f181d-4189-4f18-8947-08de80d4d1b3
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB7554
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274959-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0345927EF46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Franz Schnyder,

On Mon, 02 Feb 2026 09:35:59 +0100, Franz Schnyder wrote:
> Correct the DP regulator enable GPIO to index 21 on Clover and Dev board.
> The 3.3V DP regulator was not being enabled by the assigned GPIO, as it
> is routed to GPIO index 21 and not 37, which was causing instability
> with displays connected over DP or via an active DP-to-HDMI adapter.
> 
> Franz Schnyder (2):
>   arm64: dts: ti: k3-am69-aquila-dev: Fix DP regulator enable GPIO
>   arm64: dts: ti: k3-am69-aquila-clover: Fix DP regulator enable GPIO
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-am69-aquila-dev: Fix DP regulator enable GPIO
      commit: 222191225e69711089ecade3b98d79757d51e907
[2/2] arm64: dts: ti: k3-am69-aquila-clover: Fix DP regulator enable GPIO
      commit: 8cfb2e517113543e0de9e8df5754d5e09cb3627e

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh


