Return-Path: <devicetree+bounces-291076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pLbyENiv8GmhXQEAu9opvQ
	(envelope-from <devicetree+bounces-291076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 15:02:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DB548571B
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 15:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 146A7301BA5B
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 13:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4712342EEC5;
	Tue, 28 Apr 2026 12:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="VwZWTBub"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012040.outbound.protection.outlook.com [40.107.209.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E54A3F23C3;
	Tue, 28 Apr 2026 12:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.40
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777381059; cv=fail; b=kFVLBxu2GgCL4xdWLtfj8JLbhVIenLCEejNdCdP7t12TWoGm9nE4qtKtKkOGLj69YoB55tDXojT85jG0arKold7OVPxp+aeZOW1kaqFsCXfEtwLWjIDcNhT9esjwdvfxCk7HYQEa3By2G40N9ZaZQJmQIDLU1Mw8nv+KfXkKKEo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777381059; c=relaxed/simple;
	bh=drfQTG6czT/I0h8yir4uCIoUWQrbgXUJ+oRoZ+YfCgc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=KcF9OUFyEs/Qqh82l+fi3v+ym430CLhLo1OEbS4zDZbjeKtpRXneG8AkcyY0pMwyEg9vA60nRgNGTzpvAUrHUaiqYdiTDH37BkVBVsDdfEDD0xhod3hzqrWpjUE8tXytjkgOwwX23fl8hFPoeblr717sAMo3W6eq1kW/wi/aBdA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=VwZWTBub; arc=fail smtp.client-ip=40.107.209.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lVw3X1pq+2MyGy6iMOVqiuIqi16kxp3CC0o2KOB+xTvTZKwxZeQaxUdidqr0oPogXkrrrgBeOWOEOmqOCj4wE9RpemgyksODdjeu94gy84W2/p+3cZsck3MoXoIfPj2pvyo6V8ZEyCnpTjr7ts1MKpL00RAXl0Cl4NGuDA+llIMV1YCDjI7avhNPCyU2Z6VBVeQ10ib3kE6lYQjjvki0mKEUDWQKcVKVK0QIb0Kxq7Ty83Auiv/JrUbQf7aPHKAZoDSX4B+S8BNias2oqTwJDUnC8OkN39FYMRmW9qKD88qsUXO9Jcyk7ZdO3+aBxTlaWiIMcNVXKoNQSvrMVGRCSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4UOrOlfjyVKCMtb/ajycqxE9MXc6DG1VOCdBbm3f+So=;
 b=tAsIzKftif2soa8S8gm4op3wci/Za6F75SaTF44+mgumtVPgBwczoqU03kCvRawrM1YckAnG7QCQCYkn9lUuP5YcIRkSiIhJ9U9WszrBSnfVAJIOf0SDkX6a/qbgTB+X4JGd0MQnCg/2KcoQeQMlVOuX+YV2wwSGBBanciedFXe+UmxLyqfFBzFQ00EYzm1WkWQ49gzcL5OiX2dYn8mZNWtJFD2beZUYblS7JFOMzHURl81hJ9iNhov0syQ+HpG3kiS99ZDiwZExTaOm/vdjIs+7JEybjI3sDz7VXHpxCU6vNuL3SB+TbryUW1QoCThCA9JEqplYNaThtQVlwiDylg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=bootlin.com smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UOrOlfjyVKCMtb/ajycqxE9MXc6DG1VOCdBbm3f+So=;
 b=VwZWTBubWNgfhu7fWQoqzPTkG5lufDPFsbkF7tGfiERhHVXM2ZayoxrKCcw2/YDdMFgWc+CtLtowyJRsnedNAN1ph0dtUGfMezeHEceEnwT8fQM3ioJkCYreFkV6PTl6yog4UzboQ1Wm/FyxaOrNGqVUaq2ygW8UGV7ILahPtoQ=
Received: from SN7PR04CA0181.namprd04.prod.outlook.com (2603:10b6:806:126::6)
 by DS4PPFBD26857F8.namprd10.prod.outlook.com (2603:10b6:f:fc00::d44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Tue, 28 Apr
 2026 12:57:34 +0000
Received: from SN1PEPF0002636B.namprd02.prod.outlook.com
 (2603:10b6:806:126:cafe::e5) by SN7PR04CA0181.outlook.office365.com
 (2603:10b6:806:126::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9846.28 via Frontend Transport; Tue,
 28 Apr 2026 12:57:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SN1PEPF0002636B.mail.protection.outlook.com (10.167.241.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9791.48 via Frontend Transport; Tue, 28 Apr 2026 12:57:32 +0000
Received: from DFLE212.ent.ti.com (10.64.6.70) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 28 Apr
 2026 07:57:31 -0500
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 28 Apr
 2026 07:57:31 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 28 Apr 2026 07:57:31 -0500
Received: from [10.249.134.231] ([10.249.134.231])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 63SCvRhk1213541;
	Tue, 28 Apr 2026 07:57:27 -0500
Message-ID: <69fb51b6-e5df-4971-813f-a48a7a54accf@ti.com>
Date: Tue, 28 Apr 2026 18:27:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j721s2-som-p0: add bootph-pre-ram
 property to pmic@4c
To: Thomas Richard <thomas.richard@bootlin.com>, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, "Rob
 Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
CC: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <gregory.clement@bootlin.com>,
	<richard.genoud@bootlin.com>, <a-kumar2@ti.com>
References: <20260428-k3-j721s2-som-bootph-pre-ram-pmic-4c-v1-1-e8202ce955a0@bootlin.com>
 <6aa8fd45-ec3d-4bd7-9b13-6c00e4fd4efc@ti.com>
 <3a78ff9c-e70e-47c2-b356-2bf9d75bc372@bootlin.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <3a78ff9c-e70e-47c2-b356-2bf9d75bc372@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002636B:EE_|DS4PPFBD26857F8:EE_
X-MS-Office365-Filtering-Correlation-Id: 8581584d-9d09-40cd-46a3-08dea525b628
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|82310400026|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	ArXxU/eUq9XFLA2FyT737YbyW3yM9kHr5sLQdB1RLvLqCMwDe7XZykgDAq+J/2Kf4TmaFcOmDs8FF/dcT1/eJhxm9lFcLqHhrOSZil3lxergjP1fkNoLz5K8PATAND9NkrHm3mqSJeSYXWML+ZMo22Kh2CEQKNtzmfhot3p10xOnRuNqXJLLzavoCOMWvrdnA9DMy6NtsNaDr3nZyUzZm+7rd+u5nd14ZxCVJtndyHtruW+DT+wICDJRMHbm+qXG3yQf3I4d9hYnr6aVm2zVIQ3fVud8GyC8cq07Y3Lj5VzA/00zazPYmZ8Jd+affGsls/kKo72Rpwaksxy8FQG5Bu653ntgaAYRnugWh0Px+cHBd2EKIrNtU5U+2Az/KigRGpR7aq+QMHQ4TKX5dLODbBAIb+YPAfGrd7y/KQo39bLAxwehlUUyTJCKAZyVW/GkT5s0B82SBwyQ5IrA6g9PSFYBVOoz3l/jxbJMaW084ENc94boMxPcrFJ/tznwe/i9wZHvG2p1fcq8Ni6YqULnVknR4Io5NjZ4IvP8slpt3gIZhPKK2ILLBse2JisiWkwNYwOg/S0wf4TxEzzW19rzxlCScE9XotA3KBQs+zpg2JQunwhzqHPJ0bk3Bc90txXuk/wvE6FQ3TETj7wuR2Dvw9ax7Z3xHQRpQ8a46SvJSAUZjycQTTapd7jYEMUUgjMY36HMyUQQkkuROGCQcT4rtqqPPSHsg0XOHR2wCP1CBv3FYt5TdZIwY6KR1ETl6f3kqI/docqUgrOh7VR1oWxWGw==
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	RvYy8tyYCgjGJfKjlrVZOhYRfsl2DNZLM7gJKmgiXgTC9oqANdYp3U+5kO25nyU9Qc86BCtkb0xxLnpaeg1nNynesI9+Ad5vpISRxh4YxcwRKLhPogKb2nEP7vZmyjGSPMDiyPSPTzihQyOrjvGB8kkMRHvTt9RyzkGOMGEznTkFXA1QiUPSYXP9uZSn34cJIw4adNlEd9zFomroe3ilzSDqHJ5GZ5qCy11RHDeBPdqVfxUCfHGAFNpD+ieEF26jfouW+inFgLEx0/SQSMXxeSC4WBTK6LBnY7QoixKSm5cfdYNgsFc+cEFj9gBPMDGMjHvqZy33b199S2c3kaOcTjqy4lx2cPNbd3BUHXCewYsUt+Dr6Kdh3n1g/HrJ8ze7FfCguotXV9WJqnO62hzCUBjYzecBmd4T8Xmyhg9jttLfIEXkH8ewACuyruXtwhHW
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:57:32.0918
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8581584d-9d09-40cd-46a3-08dea525b628
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF0002636B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFBD26857F8
X-Rspamd-Queue-Id: 56DB548571B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:dkim,ti.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,4c:email];
	TAGGED_FROM(0.00)[bounces-291076-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[4c:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[pmic.4c:query timed out];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u-kumar1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]



On 4/28/2026 5:36 PM, Thomas Richard wrote:
> On 4/28/26 12:15 PM, Kumar, Udit wrote:
>>
>>
>> On 4/28/2026 2:23 PM, Thomas Richard (TI) wrote:
>>> On j721s2, pmic@4c is needed to exit the DDR from retention after
>>
>> pmic@4c to PMIC-A to align with schematic, please
> 
> You mean PMIC-B.
> 

Yes,

> Best Regards,
> Thomas


