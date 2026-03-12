Return-Path: <devicetree+bounces-274577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIoGFEWysmmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:32:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAF7271CF0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DB29300D316
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397532FE044;
	Thu, 12 Mar 2026 12:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="fH7ReqYv"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010051.outbound.protection.outlook.com [52.101.69.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41402D7DD7;
	Thu, 12 Mar 2026 12:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318722; cv=fail; b=J4nf28faKtk4qj6iWHW0gDitatkpZqPq4uGW8CnjX4o29SqAD/CUUKcs2IAvLz6WMZpduCIBE3wjJDvRRW91rPTkyfD1qZJUI61U97D+Fvej6sXrehP6pff0DUebJI2rqWnRJGeHnv7TOk2Db6bxalJIIywbgmh4UWJ9lNBt+3Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318722; c=relaxed/simple;
	bh=uqzWYQ6lOoZZxg03IZ20kzUI1wJTBg9HkdU1XPaS/Ac=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=BO0wFdYAzQXr7EnDxpYyXD61dGzom99kGyD+05UVHOQx0NNlH/K5q5ffwa6peTU90O6if6jBOauj/NTr8EMhznXdNtDY8oQQQ6NzaFU7NW8WePDq/5ZGEI1fTxy9vVh9YQ/JCCVAJRczcmFckzvFYzoKYxEhXjlTIWPjZSvQNqc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=fH7ReqYv; arc=fail smtp.client-ip=52.101.69.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f7i2O6dnODKDiea2GC/WLvF4gyFRvEud4zivkH4gZu3G1DAhCV5QIlPc1T9X+VKGvlslLTpsFjJjuKiHmf2Kca4fAsXY4Q+WSQleAP5yV08L+xQDtfAoob70dFgo39UPtGI0V4HvGbzrMn2yQLqDOPZc1rZnrlfUcJU/HhsVlqwjJGpD3SlDqUdloUiW40ru6EE6WvvBEDeAHdgospIER3BTrqROTmNgas1Nyoqw2BsTL74VAhiG81LEdlysJphqFtBaDbvFRSUxJMPkIp4O1C3GO9xELl2+CUvet9JoPN+6OttG3Dr3ZR8+cKBIfZMWQvwereda+6B+QcJUk7hUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ch+LX2tUTknZdFrPmisSIN0NXzjm8rAPfdOeyI/RheY=;
 b=LgQ4Ep9D1ThZ02CJw5GAd1G5VVJW4JcccVu//AF+hfiBwMsoue4vD4gNBCcevDPewKOK+AC82RVfbk+AXoQ8Uxz1LctD/CX4cOyZ2daIYQMsVP/xfGG+rOXIVrrjHBw3iheqlFvtG+UBwCoXaKTomq6ofMtHavG7R+Djw+JwRKBLpWxxCBKJegLAhaM/ujyqN8wJZg4VpponBnPi5Yh4QIQYpkTVpq0J3Rj7wJp8FFv6a+o6vhT00oiHOaE2yxR2/RnKJ1y95Of7mW29F3U3+FcEZeaek13VwuyrxbouxQ+DzfE3QCIXnnZl+u4yIfkZc70wlG1rLtfWfBjmnVmNHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.59) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ch+LX2tUTknZdFrPmisSIN0NXzjm8rAPfdOeyI/RheY=;
 b=fH7ReqYvaTiC1Ay3vo2eDE4meaW2jgRIzvlV8FFPszYozcSeX1IvFSy5WjDsPsaPiVGhVFNaSkspF6jxjcZVcj/uof2EEf3VGbRUk8di0RlrYU+67UEeYZsI8ChONgvDuuZlkW+DzVHjjbdtnFctdtf/Dl/CmrJ2crZ0CqK6oGsjmkNB80H4x3cDrTT5IagLgwSrKxbLiE1jNTKlOWtzIP9CwEkFkOz67H6j3fiaiWhKGuw8K35gR/A1FYqEBkkp1Th4u1MWR5rRHOCxFWQZw2U6f+rr4fx3VVEC/bJEZ7oQPi6sOwoh4WFftgijvmxjwFd+SQFFQY/Qtf0NefsAqw==
Received: from DUZPR01CA0283.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::17) by PAVPR10MB7466.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:2f5::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Thu, 12 Mar
 2026 12:31:51 +0000
Received: from DB1PEPF000509FA.eurprd03.prod.outlook.com
 (2603:10a6:10:4b7:cafe::53) by DUZPR01CA0283.outlook.office365.com
 (2603:10a6:10:4b7::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Thu,
 12 Mar 2026 12:31:52 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.59)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.59 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.59; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.59) by
 DB1PEPF000509FA.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Thu, 12 Mar 2026 12:31:50 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpo365.st.com
 (10.250.44.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 12 Mar
 2026 13:34:19 +0100
Received: from [10.48.86.79] (10.48.86.79) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 12 Mar
 2026 13:31:48 +0100
Message-ID: <6259ef49-4f16-4e0e-8559-58dc9b156bce@foss.st.com>
Date: Thu, 12 Mar 2026 13:31:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: stm32: fix misalignments in nodes of
 STM32MP1x
To: Amelie Delaunay <amelie.delaunay@foss.st.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20260304-mp1x_alignment_issues-v1-0-19a8013782a5@foss.st.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20260304-mp1x_alignment_issues-v1-0-19a8013782a5@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ENXCAS1NODE2.st.com (10.75.128.138) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FA:EE_|PAVPR10MB7466:EE_
X-MS-Office365-Filtering-Correlation-Id: 73e952bc-899d-44ff-6654-08de80335605
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	xQeCGx20opln65vj7nVvZ4XP6e5HZ/a0Fu9MKI/GIXrCRtuy1qcDAFEwDp51qsEQaE4Kj0kutmyP7I9vCIEA2LChBEY7pvjtoK4XA/yyyG9UXfqeG9pVqU9S5Yi9485Ew6hqCo09KUAwb+6UdrP+0rvxof6Z6Ypel+6nZqWYQ2U7Ultorj9VfoFIAy28CVrjzMia8rql2UpSNdosVLfXnn7f/IM5GeImH/MpqNV1MAYfPXyKsbrT+kS0EsrXroHGp77OB6RUkh+vcR6BGBM27Oet84GHov7CVxvu2BqoqK5YGOTyXHjcVXGRUhWyayEGC49rkAE83IwB4DwgXZ3ZDzJCKATwHjZrLvcZ2iPKSbh0CuLtgd2lBIKFoGt5JagdIQUyBBPNPBwkV7f4c72Xv4QBxDJnitm7L4fu0fxpdh4gQg2Vqk/BEGHayfnWG62vasA+c05IiT8W2HDwP3wWZDSoGvoeHf5ybPLrDxmzVC7W42JEcjzE9ChsvgAcPAoV0rA7i3EX/dE9NvWFtsj57SgH0BPdS7pfdSwndKKCIGxuCKhExFxZCdpCs5NuMY8bMyCXFrbZywhthJXG7X6YU/+mOlQ0UvzowE8mLlSDO5rF+YTN+8TBsZbDyO2t/5AtWu5Ihi5HIW898S9yK0vKjmhSnuDvCJzQjpJewJD/azN4Qa1iohT30S8xHiU5gXQFdlzFHEJe52NiIfOYbsl//mWa/MDRhu96eodc/9maNBz0iKyAs7rhqsMaBUIaT8Ox8hUcud3Q7QTXvvH26ma5Vw==
X-Forefront-Antispam-Report:
	CIP:164.130.1.59;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	FxdAjMQdr9zPf7nOpIvQAQDAWQKozubDRn8HzWFaUhbHUOq0wO2Uk4xLvFud73pjpRjzGt4IV5YSue3yaxNUbTXKx6aVGJxfpVbKGSZ6xTVjFM34PYO5iIoBd4OReRRnwipbFw73f9i7W/j3n3mM2IPlpvZXP5F0NnXt2o6LXLl6afJ/f3cRsFM+1nUmwgMLEzUXd4cutPvC39ANLxNyaaySdS6aA/aCQ5jxc5DBVDZD3b/dmtMTaCGqdJLwVx8+n3HpK+E+IW1mxJQzz6EU2xOQjEmrs31SXel+1dFQSGO5NqExhkSy+b568MUT1xZ4PweLM1RdNN8RbwnqvH+Oec1PVBiI5XpdHzWaQlDpTfPm844bTsL1wRhu9KmKVlXZFloAJuNWW76nGmmlwcDj+2ZVw9W4ht46KmKEvNijeQ2Bc7kXpHsqNP/kR48ZepDU
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 12:31:50.6909
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73e952bc-899d-44ff-6654-08de80335605
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.59];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509FA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR10MB7466
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274577-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,st.com:email,foss.st.com:dkim,foss.st.com:mid];
	FREEMAIL_TO(0.00)[foss.st.com,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.torgue@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: ACAF7271CF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi

On 3/4/26 09:06, Amelie Delaunay wrote:
> Since the ETZPC system bus was introduced on STM32MP13 and STM32MP15,
> misalignments have appeared in some nodes moved under the etzpc
> parent node in stm32mp151.dtsi and stm32mp131.dtsi.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
> Amelie Delaunay (2):
>        ARM: dts: stm32: fix misalignments in nodes of stm32mp151
>        ARM: dts: stm32: fix misalignments in nodes of stm32mp131
> 
>   arch/arm/boot/dts/st/stm32mp131.dtsi | 14 +++++++-------
>   arch/arm/boot/dts/st/stm32mp151.dtsi | 14 +++++++-------
>   2 files changed, 14 insertions(+), 14 deletions(-)
> ---
> base-commit: 291f393298f72091490dfa70ab4a0ebdbb4c7d7e
> change-id: 20260303-mp1x_alignment_issues-62a3fdc37d03
> 
> Best regards,

Applied on stm32-next

Regards
Alex

