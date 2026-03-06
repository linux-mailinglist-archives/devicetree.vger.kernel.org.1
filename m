Return-Path: <devicetree+bounces-271893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOtlMWyRqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:33:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABEA21D1FA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE426300CA1F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C46B0370D66;
	Fri,  6 Mar 2026 08:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="IuiRxQzq"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013016.outbound.protection.outlook.com [52.101.72.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D4C28726D;
	Fri,  6 Mar 2026 08:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786026; cv=fail; b=n+vgBMvAcC9AuLxLnu7xCkFhr3UxjTGZOxh9xoyoqfq19a9mpp1MAG3hRdZe57rRBfKkI7zGJjhQVXJWkR6Cjc0nGDhOWDHiiI3OVCPn9Symfo0XeUlCNhENSKcKRBEVPFq9xS0URcjSiUYxBNlA8fEA8oBA5ty5U2ZiyVbj0Mo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786026; c=relaxed/simple;
	bh=4iOkenbbMkWeH4qJnY6ZEec7a7U4Tdf6DX3pcrFgHHc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=PFv4xA0ZQ4C8204LnvqvOZlLLXwkEbiRrQbUb5K0JvNAPKNM2xotCP6y1HWJo/vu1J+SG0DDANKOp5XSj/MAccfkUmqDdJwm8U/Zex1759FSbrvC6eb4O0Lg9eh+Icqrp8B5wlOn+aD4zdD3JlP4WtLygb1m0NKerOooC9u+1ZM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=IuiRxQzq; arc=fail smtp.client-ip=52.101.72.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SqccUuX2Fy0b53AQykVXbIvSyD8n1iyQuyDz720+emcAucsq9PtJuAT5qkVLG8oWf8DN1d5n6/zk3RilGl0BKbDQgMs7XeVZf0uWYQHQhslpIqoNnGPsaVMBMoV7XaDBz54LhNP6hSK3hUOHyHgvkcTJaBiTsOi55IY1sUZA1ZvR49MaXLVCZc8YdVYJIs123V12CsOgp0FXe3mFKaZAjAAL7kP9nzAyi2cJ6JnNX457iFxIUHkW6ariD+oNZMORGWIu4fKTNzvSwBg2TqM5Q6seVOWEMnkcwA/tQvHMbKbOa/sqgvljvAKS+X+OyKqe5q1Fbb4NMBOMJd/ZDefLMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfg9+gLaHcA0dR3D0y565AQJas3n4i9mAKJfxQfEjEs=;
 b=LTELVoXH1Jxt2GNt9g34JaQRSC81x2qqhyEXkkW6zsN09TKl7k64V2tIUN3DsBO8rsYUUxK+uLuscDEfWHB4j6CD1NB/mtlX/QCXOcnKzOx5QRt2JpC02PdXfi0SWdCtHvqlrJHmN1+cTCq4OCDyfUmqDCCPB+fsvpLFpIbW8Ff6QKrmE0vMjGjDis91QbwGqpM6IGOy6eolFhRcTVX0DX/gCLZAd1htbFr2C9RkKV5WXIoOzBYKWV5xJsuYrH2YPLhqxb/IzuD7ADMAIslchjhrkGj6b4+B1106ttmjpUEcGtaH1oyD/NZMdV8B0EXac5NEsfwV0Fob4Q9fZw82qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vfg9+gLaHcA0dR3D0y565AQJas3n4i9mAKJfxQfEjEs=;
 b=IuiRxQzqUWI7qb0PK3oR61XLRwWJB52TneI+gcvhtc0sDMFk/m3wqWGQXijH9OA2Bqs0euMc+rZaQuDRhoeyd2d+RJtN6P3Ze7g7FOLCxt4XNsymAgN3G7o9QEGCDy3YIizEXnrzpLTGi5gV25ZTqZgTmnaPGJCxZkcBId/HK+MTA7elH5gELWZKWo0Kb/wRoMygDEQTTC9xMU5f56llfaJHfyCIu7kxxmBxX4xrIWNhVIIPsZOoUaJW2l5jdLNb/xw9N9W/OKjwE+S5kMWyVTmf/GunPx37RoKWQtEuOBaQAHMNPhsZ6UzitbI3QxiB8C54pnO7KWNMe3RA0hszeA==
Received: from DB9PR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::9) by DU4PR10MB8558.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:55c::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 08:33:40 +0000
Received: from DU2PEPF00028D00.eurprd03.prod.outlook.com
 (2603:10a6:10:1d8:cafe::7e) by DB9PR01CA0004.outlook.office365.com
 (2603:10a6:10:1d8::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.23 via Frontend Transport; Fri,
 6 Mar 2026 08:33:39 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 DU2PEPF00028D00.mail.protection.outlook.com (10.167.242.184) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Fri, 6 Mar 2026 08:33:38 +0000
Received: from STKDAG1NODE2.st.com (10.75.128.133) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 09:35:50 +0100
Received: from [10.48.86.212] (10.48.86.212) by STKDAG1NODE2.st.com
 (10.75.128.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Fri, 6 Mar
 2026 09:33:37 +0100
Message-ID: <48b17cb3-d0d4-496f-9b5f-3df319f28b49@foss.st.com>
Date: Fri, 6 Mar 2026 09:33:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: soc: st: document the RISAB firewall
 peripheral
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
	<alexandre.torgue@foss.st.com>, Antonio Borneo <antonio.borneo@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
 <20260209-stm32_risab-v1-1-ef0b2b6a7e0a@foss.st.com>
 <ee9759a6-1779-4891-8716-24c36134198a@kernel.org>
 <516036b6-b825-4a29-a48a-5d3af3234968@foss.st.com>
 <ac793499-bebb-477b-b27e-089529f3ee4b@kernel.org>
 <66ecf6a5-cc1f-4872-971d-6bc32894dbac@foss.st.com>
 <fd73947a-289a-43f9-9506-573fee935d12@kernel.org>
 <ed0ab69f-7aff-423f-8b93-980e79705b6d@foss.st.com>
 <c588720a-6a7d-4179-afb5-bb7e89e0e7e1@kernel.org>
 <b535dfd6-e4a6-4831-a868-c152574144c8@foss.st.com>
 <ae9962a4-b611-46e0-b124-5910e8708a20@kernel.org>
 <78be9de6-084d-4c3e-831d-a91fd0d1775e@foss.st.com>
Content-Language: en-US
In-Reply-To: <78be9de6-084d-4c3e-831d-a91fd0d1775e@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE2.st.com
 (10.75.128.133)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D00:EE_|DU4PR10MB8558:EE_
X-MS-Office365-Filtering-Correlation-Id: 32f33073-103d-4ca2-2c61-08de7b5b10e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700016;
X-Microsoft-Antispam-Message-Info:
	W5yJtrZYdwBRuyLcAhcVGE3SclCcKPa9EOWY9c9MaY/x6r7/MzRILFSWvdnbbhDq9RXt8Pr1/eXhUGWLPn+XmsvlcpECeKneGmdVn3swxYYtCi4E0BhMj1oRbYyIOAO9DQ+zS7tB6Bk6n54uaAD3s6tsun3ZEZWHrlA8vUPYpzjfWi4qMH9+l+Pxgob4h36loF3CTOcJXxVMXbv0CvZB6tlBzuXQD1WIeetGGPY2OXgAgheItsWXpj9FZN+gljVH+vaX9oYDd79Z+ABqdGfXqgPmrm837cs4Kf1mWVVo6cJq9GNAI/ZPI57FtHsW3OvNMwYblPgiBoCcvi5VMmSzfs2Mar5699+XGhSnlEnCSvporh806D2jRw/Tih5/AwH6ne2NKbJXb4ixsj8r6vZbgbN5RqtHvZVd0AdBb8sQoN72zZtw/BCBc+LNoZb0WK5jL+scX9QhermQcNDPf37V3zcbM88eoWqC9TfGSO8RSfOQZaQRRg9++/UTJdYQiiusrmQ5Ifguvnhqa9wBcQ0HyjfS7TFS11Z5yHx4juwFmsCUDIj4vAGJGBx4vvYcwP8lQjOw3gIYnooLR18kdqcvw7LvrQeLda58y60VGj730csDMVQXRC/q49H8HBFK6aIyfEtq2npM4B1p0sdSJeceiioREhLBtxkJq2ba0G6qayXcoRS+zdtD0fIvJ4RhUj9++yFeDo37G7ZvDv2D4X4b29kI0Q2wX0a8T1hZJ9KpMKcW9X58Mnuj/rDOF+n4nRFj8zI0Bds53iFSs5a/mSVOlw==
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	P8SuHmeHSZtWq4EfnI0PIqfLKWlEerMHzko0Y2WzHeosokOCXTsvMUAGTm4htIMWiinTDa4wcqOgNzqFf+KXoQmPk9vS8SD6YUsBBRy1YS8S1vN/rhfuBYVBTRpsTF6iZrqMkHS4ejugDpfxVtAyeSoGUN1+1Q4Q/wfmGwGqdqyLFFmWmJSeChas5/Ul38NcA9pDo5uTf4mZiwq2fgBvqpse7VTSdlI0peyhXfhLXN66OebepcgqblGvR34ehMacHz0nHImhK5HdgPa7FImVA2qO50EXPEgYcqJx4lIMKCEJCR4a8Va39agVLoWyyXft8e/4Tn9TMDGlyivQSvexDOhamy+QmN1wmYsDTutwQCpWrNROjSoMQymm/jLQ9oBwEt0GYvfps4ehznwlqqiYLRNyOylvNqIhzGhOqsMxqKKH9lyvzexZeKEXzB0p6VU6
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 08:33:38.8066
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f33073-103d-4ca2-2c61-08de7b5b10e9
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D00.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR10MB8558
X-Rspamd-Queue-Id: 6ABEA21D1FA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271893-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,420d0000:email];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[foss.st.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gatien.chevallier@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.198.58.160:email,4.196.180.0:email,4.210.111.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Hello,

I am changing employer so I will not longer be able to work on this
topic. Antonio Borneo (added in To:) will take over this and I fully
authorize him to rework the patches as he wishes while keeping/removing
my signed-off.

I'll make another patch on top of stm32 next branch to update my
email address in the MAINTAINERS file for the rest to keep an eye
on it.

Best regards,
Gatien

On 3/2/26 16:09, Gatien CHEVALLIER wrote:
> 
> 
> On 2/26/26 19:13, Krzysztof Kozlowski wrote:
>> On 19/02/2026 15:02, Gatien CHEVALLIER wrote:
>>> Just a small reintroduction of the issue:
>>> We need to provide three sets of information to the drivers of RISAx:
>>> - The registers of the RISAx device, handled through property "reg"
>>> - The global range of memory addresses protected by the RISAx devices
>>> (currently through the custom property "st,mem-map")
>>> - Each individual memory range protected, handled through property
>>> "memory-region" that points to children of "/reserved-memory". Memory
>>> regions may not cover the whole range covered by the RISAx.
>>>
>>> To replace the custom property, I have explored a few ways:
>>>
>>> 1) Describe the memory range covered by the memory firewall as a
>>> reserved memory: Cannot be done because, for the memory firewall
>>> covering the DDR, the reserved memory would overlap with the memory
>>> node used to describe the memory available for regular kernel use.
>>> The memory node represents part of the DDR in that case.
>>
>> But isn't this the entire point of RISAB on main system memory? You want
>> to mark part of system memory one way or another. And now you say that
>> overlapping would be a problem.
>>
> 
> Hello Krzysztof,
> 
> I explored a bit more the possible usage of a memory region to describe
> the range covered by the RISAB/F peripherals.
> 
> To describe both the range covered by the memory firewall using a memory
> region, I would need to have such node at SoC DT level:
> 
>       reserved-memory {
>           #address-cells = <2>;
>          #size-cells = <2>;
>          ranges;
> 
>          /* Range covered by RISAF/B */
>           ddr: ddr@80000000 {
>               reg = <0x0 0x80000000 0x1 0x00000000>;
>           };
>      };
> 
> The RISAF/B peripherals need to reference memory regions contained in
> the range of the memory it protects in order to apply access rights
> to these region's ranges appropriately. Therefore, adding regions like:
> 
>          tfm_code: tfm-code@80000000 {
>              reg = <0x0 0x80000000 0x0 0x100000>;
>              no-map;
>          };
> 
>          cm33_cube_fw: cm33-cube-fw@80100000 {
>              reg = <0x0 0x80100000 0x0 0x800000>;
>              no-map;
>          };
> 
>          tfm_data: tfm-data@80900000 {
>              reg = <0x0 0x80900000 0x0 0x100000>;
>              no-map;
>          };
>          ...
> 
> at board level. These are regions that can or cannot be accessed
> by the Linux kernel, depending on the access rights. Proceeding like
> this would also force the usage of memory-region-names to be able to
> differentiate the Range node from the actual memory regions. The
> RISAF/B node would look like:
> 
>          risaf4: risaf@420d0000 {
>              compatible = "st,stm32mp25-risaf-enc";
>              reg = <0x420d0000 0x1000>;
>              clocks = <&rcc CK_BUS_RISAF4>;
>              memory-region = <&ddr>, <&tfm_code>, <&cm33_cube_fw>, 
> <&tfm_data>
>              memory-region-names = "range", "tfm-code", ...
>          };
> 
> Notice that the tfm_code region here share the same base address
> as the node used to describe the range covered. This would result
> in the following error from DTC:
> 
> xxx.dtsi:109.21-112.5: Warning (unique_unit_address_if_enabled): / 
> reserved-memory/ddr@80000000: duplicate unit-address (also used in 
> node /reserved-memory/tfm-code@80000000).
> 
> In order to use it that way, I would need to force-keep the ddr node
> disabled at all time and use it only to extract the reg it describes.
> Which feels weird to have a node that can never be enabled.
> 
> Also note that, for our ecosystem, these 0x80000000 -> 0x84000000
> regions are inaccessible so it was simplified to (I'd prefer to
> describe them all BTW):
> 
>          fw@80000000 {
>              compatible = "shared-dma-pool";
>              reg = <0x0 0x80000000 0x0 0x4000000>;
>              no-map;
>          };
> 
> at board level (e.g: arch/arm64/boot/dts/st/stm32mp257f-ev1.dts).
> That is completely up to the user to define its memory mapping and its
> access rights per-region. One could use the lower DDR for some other
> usage.
> 
>> You do understand you do not have to reserve the memory, right? You are
>> doing only your specific mapping for that region.
>>
> 
> Yes, understood.
> 
>>>
>>>     memory@80000000 {
>>>         device_type = "memory";
>>>         reg = <0x0 0x80000000 0x1 0x0>;
>>>     };
>>>
>>>     reserved-memory {
>>>         #address-cells = <2>;
>>>         #size-cells = <2>;
>>>         ranges;
>>>
>>>         risaf_range: risaf-range@80000000 {
>>
>> There is no compatible here...
> 
> There's no need for a compatible for a reserved memory?
> 
>>
>>>             reg = <0x0 0x80000000 0x0 0x80000000>;
>>>             no-map;
>>
>> And why no-mapping? Isn't the point of the block is to have it as main
>> system memory?
> Main system memory is described using the memory node:
> 
>      memory@80000000 {
>          device_type = "memory";
>          reg = <0x0 0x80000000 0x1 0x0>;
>      };
> 
> this one is used to describe the possible memory range covered by the
> RISAF, which can be superior to the DDR size depending on the choice of
> the user for it's DDR, so we shouldn't map this region.
> 
> As stated before, I need a way to describe the range covered by the 
> RISAB/F, which may not reflect what memory can be used or not by the
> current execution context. Hence using a proprietary property to avoid
> confusion in the DT and simplifying what is the range covered and what
> are the memory region actually configured.
> 
> Best regards,
> Gatien
> 
>>
>>>         };
>>>     }
>>>
>>
>>
>>
>> Best regards,
>> Krzysztof
> 


