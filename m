Return-Path: <devicetree+bounces-315646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhhFJ74QPWoywggAu9opvQ
	(envelope-from <devicetree+bounces-315646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:27:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 010106C516E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:27:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=axis.com header.s=selector1 header.b=lksh2q1Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315646-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315646-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=axis.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87CA8300A8F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B4B3D904E;
	Thu, 25 Jun 2026 11:27:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011027.outbound.protection.outlook.com [52.101.65.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65E73CF1FF;
	Thu, 25 Jun 2026 11:27:36 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782386858; cv=fail; b=t8NyxhX4fn+XaZKILQZ1J5Osot0s6XfhN4L/6vGdR9pnPv7Qe263TgNbwU8NxM8UkNLYxaAHPioSwnDz6H22Ok3FVKHt4UpbBXwrk+9ar6gFAk24xIHCUVrVGtPWR01iiQGd/zP4r6to5uIApHvRqNMIeYaqK/l101HqFvcHbMA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782386858; c=relaxed/simple;
	bh=8ku9u7Hm6aqsqHJGBykoiMXfP8YFmXmtMvOqb4+oUz4=;
	h=From:To:CC:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jThfaFkwk5INqNxVCB3yPCbvpcJ9O0+J473GDP9Gg4LYn7CkgT/KJdhs6+9/M+rjLfJjQb43H/voRy61IST0bbEggGcBPxVh7oVaJgkK6zuZI0QPTAq7TMqD/pXfWnL5FGggCqXxwo42MHUMQeXI1r864Ee2lIxe0R1/DejYon4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=lksh2q1Z; arc=fail smtp.client-ip=52.101.65.27
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ODpt0/jvqC/DAR+RUEchknI+w6jpc5FJfWMRWHXJTyMAZVAfv4DBhBv3CGFkUiGcmM1yCLKlQpfgoC2NO7wdvSzfutIewJO9BUzuAsBDIDqwnTtyK5MSS3D+f7PIqEGGfnv4w6asOdndT2zT9zz+LEaH+ld8PXc14AduVwqtAaW9Ny9wQdY3kBnW9wa+iyzKswRIdbyYS0vfcQH21J21v1rkGZGQ/M9RCTBA05fbHzQAj6AY7GsaiDae6d7nHzVgTPL6GGS7DzoLn9bxZFburc+J9sRy0gYmJCPrzDRtTlbEpAgUTZnoTxk5HH/Q2kg6jV768U2MP1jVMXp+lW/RLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C6SERsrbrXMt41bMkXJCE59I4Pr17v8bSdZ0CGuDYTQ=;
 b=mggFBEJbS76T1NI42gYzNvxb4A00/Ff+aLJ9AP0joIfX9bllh6mL/04E7jx5MewWGhJkmN7O7I6wECoDlOzj/BqM17iXh11jU5+hw2MOVqhr7Oi+HtT3oX7wxnlLRLD2K6eX421TxRrjZCjWoOuWY78m7xhbnXbFBYLfwGIFk/PjE8PaFwX9mq5k5/UnVhwdUAc1tsAw5KQIvVgRhZOWVPN2tvS7EebDD/icVbX3DutOcuMac9qygVfqsn6zKw1sbugjTQJSo+LLgfmlHEY4F6ci1KzDG6XaykU+gRcpVeRPEw4OUJXzsp+eHmtRs3pQi/sv6ra9Ar6kDSrQamfwug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6SERsrbrXMt41bMkXJCE59I4Pr17v8bSdZ0CGuDYTQ=;
 b=lksh2q1ZD0u14N27xACYBrO/7wO9mQC+rVx92RQL5flTwFNtOREe4FtUvJB5lc26JgFSr0dIcN2NWD99SvObyMpmffH5sLfPMFduVW2Hf3iRnhjkYCTTAOCM4hWecLzX9FwPH/hdd5RtV1az+DRDP/HuBIh5Xl75U81gguxu2A0=
Received: from DUZPR01CA0317.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::27) by GVXPR02MB10618.eurprd02.prod.outlook.com
 (2603:10a6:150:153::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 11:27:31 +0000
Received: from DB5PEPF00014B8F.eurprd02.prod.outlook.com
 (2603:10a6:10:4ba:cafe::65) by DUZPR01CA0317.outlook.office365.com
 (2603:10a6:10:4ba::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.16 via Frontend Transport; Thu,
 25 Jun 2026 11:27:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DB5PEPF00014B8F.mail.protection.outlook.com (10.167.8.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Thu, 25 Jun 2026 11:27:30 +0000
Received: from pc67007-2609 (10.4.0.13) by se-mail11w.axis.com (10.20.40.11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Thu, 25 Jun
 2026 13:27:30 +0200
From: Waqar Hameed <waqar.hameed@axis.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<kernel@axis.com>, <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: power: supply: Add TI BQ25630 charger
In-Reply-To: <20260622-whimsical-inescapable-pronghorn-5f94bb@quoll>
	(Krzysztof Kozlowski's message of "Mon, 22 Jun 2026 13:06:51 +0200")
References: <cover.1781789320.git.waqarh@axis.com>
	<96b7d1a0aa0c00929f0fef2847db116b54079a30.1781789320.git.waqarh@axis.com>
	<20260622-whimsical-inescapable-pronghorn-5f94bb@quoll>
User-Agent: a.out
Date: Thu, 25 Jun 2026 13:27:29 +0200
Message-ID: <pndwlvm6ese.a.out@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: se-mail11w.axis.com (10.20.40.11) To se-mail11w.axis.com
 (10.20.40.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B8F:EE_|GVXPR02MB10618:EE_
X-MS-Office365-Filtering-Correlation-Id: a621ce97-1072-4182-8c4d-08ded2acbebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026|23010399003|11063799006|56012099006|3023799007|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	arRhJTvG0OLAhonVU/M16dN0dIBltSb8icKBY4r2DjmbFEzgZckBcQQluIo/71qXAM9sXQZcpOoBNqeSYBMMEGH5tlP05/kg8rUovRYHSi9WXKrB4L3xu0l1daOzz7dBCB9SQ3kBzSE/8bn0aACYvT9sU/R4EiRfnFmwMOHeEK7H7EYWnb0/Y5UZbCnVi1XDJ1/S3hJ227EmRH0JpT6NZMo8Wv9XsrzxgyXTJPv7H6Xgzu3Twt0iczxZSTVITtlmSTp+wliy3bgO8vD6b1Snno9tA7h/8J+aOBot1mKLmdNIYoK+BXjg2Nd03L8cUAwOxA8bETcURduiz+UMTaObDDI6cc/uJsJzwP0rhBV3guiW77J/osD1wGmOEmtNd0kv/Cw++EZp9Tn+BY/sr6T2bW8NUSj3c2vL76+zAYjVhgIObVm7T5Xce2ZOrWqZ7zOhDQNPEi1dDE2ZKbexqIAlF1R5spNKRr78yXNDFzGG9S5kNiFz4rZdtGMUbjFtOry9tcwdSF6ttGGu5/dIwkwtphJiefLWxjVHW7A1XM8C2ABUEn+2r7i+0Mgw6vA59kEZDmAm67VD0G8EoMql1fqy2OTN+/S1EUtrHrLtOMy15jfGrYUUKGRjZAAOruxM6Y1vvHMoOtYSIJ/iIQTbphv7oxiB8et1FgAgK2ImtW8E8llQcBkWlAdci5Bhf6X0CghvMDdA4U2UT02u4H2841SrAg==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026)(23010399003)(11063799006)(56012099006)(3023799007)(4143699003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Kxgweae4GHCafS/FcROt7ScQZeeB2gl1QZLcKWfBiIuQ/n8HpW5MwVS46jkjM8logZ5TEiaqLvB40wQBjXIZoIylIrezsx4gYvT66h7yZSghw7N+5+CibTOszMC1sPq86gSvMHkmHFI4SttSU3TqD1V8kK6uQhvYfCPIMnzMG5Djo55FYcdukZSn2glPG2rB4B14wa+TqmhXuZ2wVFFJhA3xrmp9onK3eg3XVn9I2y6xPWGwLgt/5of21SGy44zT7NfRSTS5dhJd9f3n8GH3scFSEWnrSOJBrprTcrQwn4kCS0IsGaTugNBIU40VMpxfSXrV6/aiWOzzMsAYJs2bSprJe6maC5K0IhqzMsLpBYWjvd/uTHco0BQkwpb2Yh1yC/2EXUZraxedDSPhPsHeblYfv6W+eNtMMUvrtQ36mR+yU8pjIG36cRM3L+7iwq7F
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 11:27:30.8839
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a621ce97-1072-4182-8c4d-08ded2acbebb
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5PEPF00014B8F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR02MB10618
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.15 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[bounces-315646-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,axis.com:dkim,axis.com:mid,axis.com:from_mime];
	FORGED_SENDER(0.00)[waqar.hameed@axis.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:sre@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kernel@axis.com,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[waqar.hameed@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 010106C516E

On Mon, Jun 22, 2026 at 13:06 +0200 Krzysztof Kozlowski <krzk@kernel.org> w=
rote:

> On Thu, Jun 18, 2026 at 03:37:59PM +0200, Waqar Hameed wrote:
>> +allOf:
>> +  - $ref: power-supply.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,bq25630
>> +
>> +  reg:
>> +    const: 0x6b
>> +    description:
>> +      Device I2C address.
>
> Drop description, obvious.

I see that several others actually don't have a description for this
property. I'll drop it!

>
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +    description: |
>
> Do not need '|' unless you need to preserve formatting.

Right, let's remove it.

>
>> +      Device sends active low 256 =C2=B5s pulse. Type should therefore =
be
>> +      IRQ_TYPE_EDGE_FALLING.
>> +
>> +  monitored-battery: true
>
> Drop this one

I was actually unsure about this one, but several other bindings had
this one. We can remove it.

>
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - monitored-battery
>> +
>> +additionalProperties: false
>
> And here use 'unevaluatedProperties: false' instead.

Hm, reading the documentation [1], `unevaluatedProperties` should be
used, because of the "include" of `power-supply.yaml`. I'll change to
that.

However, there are tons of other places where `additionalProperties` is
used instead _with_ a reference to `power-supply.yaml` (which is what I
followed). Are all of them actually "wrong" then?

>
> With these fixed:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thank you for your review Krzysztof!

[1] `Documentation/devicetree/bindings/writing-schema.rst`

