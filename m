Return-Path: <devicetree+bounces-271569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILBOExGBqWkd9gAAu9opvQ
	(envelope-from <devicetree+bounces-271569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:11:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC5F212739
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A099300A8DD
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847DB3909B4;
	Thu,  5 Mar 2026 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="cahVYjnM"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012034.outbound.protection.outlook.com [52.101.66.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA62233509E;
	Thu,  5 Mar 2026 13:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772715993; cv=fail; b=VKzS/2C/2Gevzj87eOYGYXhaGdyBp/RU9TdwJvb5Gb9N1j99Xn24gl0FO5ttcO9fEuu5heGlQZdAfu6fUE2R/gad4UZh7G/DO1RI85xm1yTuzBtEPxsRQMRJlL9qH5Kx/k0zWxf/eHIAkoDwDteZoOe5XNJeT3JQ60wPwxbPKh0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772715993; c=relaxed/simple;
	bh=oedFnzacZMU8Qt/Gczb271sL9tINQCX84Iv/2BExmJY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=MureFLjgHPMzCCwEoaWWQBBoxk/KyEFCbggranSG7v+z5PIeBfBsDNLU242+QiehyfKBpuXHrc8tH+QAQMeOeNipF7pKV4A3K15j9VVE7CkHHLlfffFJ2wNF/MlHDe/REO3Oue/bDgYEt9YjrfdwKWLGrslKPpH1eL6tMmpoUlQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=cahVYjnM; arc=fail smtp.client-ip=52.101.66.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YyxGJV/KqX0/sy3XYZtOC88GQ7jDjhJnmyXwspgMlSR39VtwjkzldMsFAo0kOLoVHmnIH+YPvlcNERmM7LpOSH4O9jgf04ovkKrWW+qEq699Nzuu96FP7AX1pRTx4NBDjjR8N33OiYWotqcMuri96fxdutTMiTaed+zmLQrBP8XEbwjXDoik/jJa0LGqeEOXSFPr8djp59P5ve3ZxC+p+TXC2mvd9134XWqP4nQf0/sjkHpDg4UIGbysWLfsQ6C5AocAqcDoSf5r5aqEUDLxlCm0XxCZP0AzV2Pg4sfSGexW5dSk4HAdk9jukKFEvBo+R3gj0BmhWsw+how9G09ekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzM7zhyJRFiCYu/fpH2xJ+1v4FcLLsfnW4kGzg5pPUM=;
 b=XO6m/IjwQIozPq7F5jqIcdcuBLb+vN2oTMruyxzwI7z4FEonB0p4O+DlPHOQ8NgdJanVOc+XPcR+VdWYzmOdlESRA/l2cQOUs8HKDGc66T/orG0LTIdIIf5Kz8sw7OAJHSHXRyT0TP8lKYzO/hmu8AuXQMlmjnOJI/R+DHCSGo2EO6eSho9GK4FToOJMbeM7lljEhpGuE48lwzfi5YaN4Gx6/ATMwcm/3bulW+QDI8IKCP7v8V7ZYUtLmzEK+6o8/8pH098sF2jWOpDMvaVLcw+T5+JX+VTrP8cN3pM+N7jn9vrWeT+dj7j1IUyrPgEAaflCYTUQny+sSnMT4c3h6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 164.130.1.60) smtp.rcpttodomain=kernel.org smtp.mailfrom=foss.st.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=foss.st.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzM7zhyJRFiCYu/fpH2xJ+1v4FcLLsfnW4kGzg5pPUM=;
 b=cahVYjnMEf0Rc94bZ/pFREspp4s+fzDx9PMU6CEpMqaJn0wQHPQ/e/qLUUBUXcGuxmoxk8+phufHCVr8hkLjzc9riSIoNRsgdy19YBGTE6qs16bAcXIhnk6CDEEN+ahQgve27vorD59mW3vuWxu1zZnqNCY2MKVLC9aLfPu5FmrP7fnk86y8MDDe8/QaNTpgSPl8TNf2DimKrKacjMvU0gt6+KqH++qwti8MAAGx7EPaAVNJj2UaohReU3SofWSC+/dQxDfO6aPPsx9t8dUS5PcV3UKMY2/Qoz4mbT3U5R0bIVhy8BBtUhG2WprhnnRJ9hB3YHuU1Q7WM40r/0OQCA==
Received: from CWLP265CA0469.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::7)
 by AS8PR10MB7799.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:629::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 13:06:28 +0000
Received: from AMS0EPF0000019F.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::5d) by CWLP265CA0469.outlook.office365.com
 (2603:10a6:400:1d4::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.23 via Frontend Transport; Thu,
 5 Mar 2026 13:05:55 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 164.130.1.60)
 smtp.mailfrom=foss.st.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=foss.st.com;
Received-SPF: Fail (protection.outlook.com: domain of foss.st.com does not
 designate 164.130.1.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=164.130.1.60; helo=smtpO365.st.com;
Received: from smtpO365.st.com (164.130.1.60) by
 AMS0EPF0000019F.mail.protection.outlook.com (10.167.16.251) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Thu, 5 Mar 2026 13:06:27 +0000
Received: from STKDAG1NODE1.st.com (10.75.128.132) by smtpO365.st.com
 (10.250.44.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Mar
 2026 14:08:39 +0100
Received: from [10.130.75.212] (10.130.75.212) by STKDAG1NODE1.st.com
 (10.75.128.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 5 Mar
 2026 14:06:26 +0100
Message-ID: <f086a52f-332f-4be9-aff0-d283fb516637@foss.st.com>
Date: Thu, 5 Mar 2026 14:06:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Linux-stm32] [PATCH v2 0/9] Enable display support for
 STM32MP257F-DK and STM32MP235F-DK
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>
CC: <devicetree@vger.kernel.org>, Yannick Fertre <yannick.fertre@foss.st.com>,
	<linux-kernel@vger.kernel.org>, =?UTF-8?Q?Rapha=C3=ABl_Gallais-Pou?=
	<rgallaispou@gmail.com>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>
References: <20260210-display-v2-0-0592bd514958@foss.st.com>
Content-Language: en-US
In-Reply-To: <20260210-display-v2-0-0592bd514958@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: STKCAS1NODE1.st.com (10.75.128.134) To STKDAG1NODE1.st.com
 (10.75.128.132)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF0000019F:EE_|AS8PR10MB7799:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e7402a3-02bf-4a3c-0ef6-08de7ab80320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700016|1800799024;
X-Microsoft-Antispam-Message-Info:
	MybMf/UrxM18UdP80WVVm8M6rBGAjOnglAgwFp6OucBfDtJvenC4XiNpE3hVgqUJUSTCBQX/RjT8/XSpYva41IhMFaZI51WllzFF5KtAZdaR0VjnhOSVZnaaELNaY1w1KIVZPorlp0hWDzUj8j2dYeGLsnklrOWyQQ6URPSJkMn9fzNgYZRwHvFnU6UrqScarggjr9f53/RFMqhpc60Bqu2tTo3VUtg7AJH/wZzLW9lt0AHwpznJB86vL6gGJid0tC1SQK8nT8l8dWStObj/0MMSV+AqBEbadUAwt082T5KS3QMcJS5V7p1cHl/AP/gvg/t6rJOWYfprukY0jOyZiRHONjkR87cqnth6nDtdqhS6vffDGrBHbky9Iv4EGb7hq2ccMqq0PNMS62HzCkm5u6hEiA7cZHTFGTr9xpGq2GQX6UUQ6wS0gS4trJ2AoVK4AofGK2pM8gcZ8WOE2ri9BRVdMa0nmXWtPxdNkLB9Rio3rMdTGFtlatujAMy4cMmIFDKFf7Rge48wN6ySUwynuLBqAHbm8jMAEcAN6MVk1bcLAns2AHom8AH1cN2ye6+ferMQLowQqCDMXkYCa5IvG/EGp2F4yzXSNPWFNHHR/YaOj5emJVJmBgUanKllDHo6GbfDD+ADlynmTyCgaoe1trgUnr9ZMWibWF+wrsxK+xKjZ6HYyMdqwY7Rn4iLfy08bQO/raiVRLcsKqjdlAN6CwFQFEmv3M4Jj71qIzDQKZf3LEjuOkv9eL9XsZG16avGNdNMfPCy1PPBspbpEcUAyQ==
X-Forefront-Antispam-Report:
	CIP:164.130.1.60;CTRY:IT;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:smtpO365.st.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	prWVd/eeu/je/xO8IfDaojv7pfY2maTI51OuZtvmUdFcGy2r+hUlTOwE3ywiufZDyH5zdQxXJQ9sVaH3UivH4lrRdeJBlXFLEFhUW6SMNResbHeU4BDiYcGzN5RW9KLMA1tg5PGBWgf0uDP31WeKPvSF84rRValLZeLO2oXGN+7ncYhlVz9UWxerZWn2GVT4lQ2hHeOCHXlGb8vsIf7vOcotheIzvT7jIexsOm6K8fPkTD49WFhI4ZhGg0TS3NCbFmLa30maoGULBcxM/hPd74ie5UfdKKlf04Q8kNDQDMfrddqQixOxinDzh6RjdFCuRT6lXI8E29MLewelPKOklMHc1P1LDd0Us0U1kHyIN5gKMHBoQ3F9hiFkeXt3xZsRJmHAgGtvEAQws/+Jodq3pa6a7Vrm4SV+Vx0Tidpk162gGIfZi4BLKfs2RD2a86qO
X-OriginatorOrg: foss.st.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 13:06:27.7343
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7402a3-02bf-4a3c-0ef6-08de7ab80320
X-MS-Exchange-CrossTenant-Id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;Ip=[164.130.1.60];Helo=[smtpO365.st.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF0000019F.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7799
X-Rspamd-Queue-Id: 9EC5F212739
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[foss.st.com,none];
	R_DKIM_ALLOW(-0.20)[foss.st.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271569-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[st.com:email,foss.st.com:dkim,foss.st.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,foss.st.com,gmail.com,st-md-mailman.stormreply.com,lists.infradead.org];
	DKIM_TRACE(0.00)[foss.st.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raphael.gallais-pou@foss.st.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action



On 2/10/26 11:03, Raphael Gallais-Pou wrote:
> This series aims to add and enable sufficient LVDS display support for
> STM32MP257F-DK and STM32MP235F-DK boards.
>
> Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> ---

Hi, 

Gentle ping regarding this series. I have not received any feedbacks from it in
a month.

Thanks for your time, 
Best regards, 
Raphaël
> Changes in v2:
> - Added support for STM32MP235F-DK. A second series would have dependant
>   to the v1 of this series due to the pinctrl.  Better send it though
>   one push to reduce dependencies.
> - Link to v1:
> https://lore.kernel.org/r/20260205-master-v1-0-fe6399aa3aab@foss.st.com/
>
> ---
> Raphael Gallais-Pou (9):
>       arm64: dts: st: add i2c2 pins for stm32mp25
>       arm64: dts: st: add ltdc support on stm32mp231
>       arm64: dts: st: add ltdc support on stm32mp235
>       arm64: dts: st: add lvds support on stm32mp235
>       arm64: dts: st: add clock-cells to syscfg node on stm32mp231
>       arm64: dts: st: describe power supplies for stm32mp235f-dk board
>       arm64: dts: st: enable display support on stm32mp235f-dk board
>       arm64: dts: st: describe power supplies for stm32mp257f-dk board
>       arm64: dts: st: enable display support on stm32mp257f-dk board
>
>  arch/arm64/boot/dts/st/stm32mp231.dtsi        |  19 +++++
>  arch/arm64/boot/dts/st/stm32mp235.dtsi        |  18 ++++
>  arch/arm64/boot/dts/st/stm32mp235f-dk.dts     | 117 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/st/stm32mp25-pinctrl.dtsi |  17 ++++
>  arch/arm64/boot/dts/st/stm32mp257f-dk.dts     | 118 ++++++++++++++++++++++++++
>  5 files changed, 289 insertions(+)
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20260209-display-516c2cedc734
>
> Best regards,


