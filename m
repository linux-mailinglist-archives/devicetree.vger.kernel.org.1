Return-Path: <devicetree+bounces-153368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3156A4C280
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 14:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB9401892DCE
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A434212F82;
	Mon,  3 Mar 2025 13:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="GSTmujm5";
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="GSTmujm5"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013032.outbound.protection.outlook.com [40.107.162.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7F61F3B9E
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 13:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.32
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741010180; cv=fail; b=WQ1E8bQMtVA1gHaX5SlNWFia/3OzETfwOPvKw7nEVzcaurC5QlwoCHntT4DcgmbVCpjGeBZheCjspNImbN3atLNbzqj7G5mAinzrLuKHRMxvICQV0fAup1dKoiDBH5gWrOQPFXTO6aWlRunXln+2FZhkE0gHpqgsPVysqA+wPAs=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741010180; c=relaxed/simple;
	bh=hXBpSrxBtXL/gsN5Ku5KwxLwSr8bCoov3kP3XF3zsyw=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=rXhqV/whRyaaIIuPC01vIEk1rKIISdqPxc6GJypg8xHgSf/umwAit951VboMyWaMR7QS3D6n16xJK0Ez0fWWaRm1Nx8R6i6fWT4tCWeUdjlrOF7x+H1Lq7EH9i326B31OnhP/hHvsMdz0z/EIrmO9UuV9zGnIdm2HC6uOaXzUDQ=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=GSTmujm5; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=GSTmujm5; arc=fail smtp.client-ip=40.107.162.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=mx/hoT76ah5dqCEpomH19QJ4GeP/X9SVB+hGaH1x/YK7UqPMPJ0qtlkSyhUc3FwmF0NDXOHt+Zgc1ueL5Y8DbBQ0cx8mc0vSex2fYGnu7gWpdpxPddNUBKvAgDbuCsI6xxqjYBuhvu13kxw8PPb+cK+HuSE0z699Wos+4ZjZZx75CA+2EAGEmw8Ul7G8QmeeZSRwtKYopFpFJb7WACpHn5u4b85ozYDOdbNJ5uN5MzN4K4LTP91joRaHSM6v3OtW4Zva4RUtfqPpHaGvEYo5t3JRlPBoObOiNQQIk3Xm+QJlYT3UyBfPPJEU+3cCa9Wp+qgcMcYmZJFAZf1f/FfATg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pOb+PVv6DtzZuQq9+IfXDRC9avKT7RKZXbPt4VkKOA=;
 b=j2tPkSBFL6QBgyWfAVrIPfvKM35pGdRgXWwObJWVS/PIbJHrE8yy2bnkPH71ocIM9NFvX6uxzJ9ZkWg0gnNyIHJ4PFUuryoTYkKadKvLyQI+r2shNHDLnc9RTf2oegf3Y42NAAYtCsNHc8mUXsMqbCkaBZmN5hNZvckVCqepEE+ZcuBjlsFyEdbrSzpruVlfNQvRP7cHeISAbo1EAdoM1wzFVkpOGe8/QdzV6CyLvrOXJmbNn6ZX6xW16PwA9+3NHezZqKfUGUiR/+wcAf+Wpy0fsWNPa8QRprQvho2aeNUnFsXkrrmRWE2sd6QHrtfaLGKpxCr4lRpBvuw3h1Ow/g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6pOb+PVv6DtzZuQq9+IfXDRC9avKT7RKZXbPt4VkKOA=;
 b=GSTmujm5oxmIixmsPSr4mkroJHeYM/Mi1xPUZYKcPd6fDVzc3/QImKc88vwrlmCoDFKs5YnPzfkyJcXOktKlvSFo75lK2z5JeSZu6D5X4o76kmRo6kKRmLunD5XbNISry2kR0QD6KAh9kg/zrMDL22d7Fn4uLyCwNjoNT4iOJKQ=
Received: from DB8P191CA0025.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:130::35)
 by VE1PR08MB5680.eurprd08.prod.outlook.com (2603:10a6:800:1a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Mon, 3 Mar
 2025 13:56:12 +0000
Received: from DU6PEPF00009526.eurprd02.prod.outlook.com
 (2603:10a6:10:130:cafe::d5) by DB8P191CA0025.outlook.office365.com
 (2603:10a6:10:130::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8489.27 via Frontend Transport; Mon,
 3 Mar 2025 13:56:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF00009526.mail.protection.outlook.com (10.167.8.7) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8511.15 via
 Frontend Transport; Mon, 3 Mar 2025 13:56:11 +0000
Received: ("Tessian outbound 93a06e49d4fd:v585"); Mon, 03 Mar 2025 13:56:11 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 675ab306485041da
X-TessianGatewayMetadata: NEF7rxruAlv9aKJeRaEwzT328NOGKWKi/lVnP0KXPCa1hnRkkF9a+k6ZgUNL5I1B50aouCHPPlq9ADCicwJkOwCztA5bc/MkfCsmmOO3CxCGg31MJaBxAh6yiJmDxK+suW7NDF6rVNDvKmfmx64IMn/3UYjmPjkcnuswhpGwb14=
X-CR-MTA-TID: 64aa7808
Received: from L9eab541c29d8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A74E424F-E043-46D4-A728-B38B0FC420EF.1;
	Mon, 03 Mar 2025 13:55:58 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L9eab541c29d8.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Mon, 03 Mar 2025 13:55:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gCdYl7fYglrUiL7p5VKYcMFx1sbbej2eCwOjn49LCOydlDpHzGHJHt/Vxj9xTJ390++OWciLR9Q1y47mRTIvWaWNEyQgPTaPGEeb3Mg6NvA+53TIlycAAdYMKoxlkpr8DIG3JsXHhM7LJVOLpJsdrcF/S64xiildkxEyG9PNPdcqcUVOmgxwyvYMy92jw0/YlAqiUfKISPj9l4lFiNJ6XVmXuUwBtHnl65wPiF7HMqvUH6SVTbZTNZaBnvoJ29hyVB7rBm8RvTu8GwQvnAnFszZGzID98KCZLwQGV7yKI9iUtL253oh8tEVUZgou8qF2SSSmir0koYu4XM4wX/wW1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pOb+PVv6DtzZuQq9+IfXDRC9avKT7RKZXbPt4VkKOA=;
 b=cQ2/0S3Ph3uiMkqSZe92KeOW4yYBmndTZn7K/21DdAP9kcC6KeIUHIQ5Ly9mSg9X6CLoH5KXKE6U2008sGD4kVyRnYQrqXkcsTfjfUZM5iL3hq1cqKFL7CGIktD33/lrZiAmXyxEokI+DZej9YxxUlXmy1nK6+4cfw2WgxPoUyPCr/joJoR1WkHVCbCCKfNJk2gK6phNKUls1t6gUz/s913o8ZKBSzuyqT+N3JBUBs49yUMRXSam7/NunVCiQiciWDpFO3K+QctNG7CEp/Vj9bfM4HTG6v9xBs4D/S2rGj+GgRdVLWSa0XFOxy5bEmu7trFsoeeRbB49jWpmxywzdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6pOb+PVv6DtzZuQq9+IfXDRC9avKT7RKZXbPt4VkKOA=;
 b=GSTmujm5oxmIixmsPSr4mkroJHeYM/Mi1xPUZYKcPd6fDVzc3/QImKc88vwrlmCoDFKs5YnPzfkyJcXOktKlvSFo75lK2z5JeSZu6D5X4o76kmRo6kKRmLunD5XbNISry2kR0QD6KAh9kg/zrMDL22d7Fn4uLyCwNjoNT4iOJKQ=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AS4PR08MB7925.eurprd08.prod.outlook.com (2603:10a6:20b:574::8)
 by VE1PR08MB5758.eurprd08.prod.outlook.com (2603:10a6:800:1a0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.18; Mon, 3 Mar
 2025 13:55:51 +0000
Received: from AS4PR08MB7925.eurprd08.prod.outlook.com
 ([fe80::8ef3:b027:e22f:1ea7]) by AS4PR08MB7925.eurprd08.prod.outlook.com
 ([fe80::8ef3:b027:e22f:1ea7%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 13:55:51 +0000
Message-ID: <94f65cda-02bb-4165-ae6e-be19b7cee55f@arm.com>
Date: Mon, 3 Mar 2025 13:55:49 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/panthor: Add i.MX95 support
To: Marek Vasut <marex@denx.de>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-9-marex@denx.de> <4658624.cEBGB3zze1@steina-w>
 <887a6d8d-9eab-44ed-9fd0-9197598231f4@arm.com>
 <980075f9-5ad2-430e-b139-7e9477bf415c@denx.de>
Content-Language: en-GB
From: Florent Tomasin <florent.tomasin@arm.com>
In-Reply-To: <980075f9-5ad2-430e-b139-7e9477bf415c@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0479.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:3dc::20) To AS4PR08MB7925.eurprd08.prod.outlook.com
 (2603:10a6:20b:574::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	AS4PR08MB7925:EE_|VE1PR08MB5758:EE_|DU6PEPF00009526:EE_|VE1PR08MB5680:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a5df0fd-3e85-4253-590a-08dd5a5b2827
X-LD-Processed: f34e5979-57d9-4aaa-ad4d-b122a662184d,ExtAddr
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info-Original:
 =?utf-8?B?a1RzMGIzRDdwQjhGZlVYSkQvSFh6bU9QMGthdnZJbHE5ODF3cVkxbG9Ka0Z4?=
 =?utf-8?B?d0FYVGNHbGh6SnpOQWYwNHorV2J2UlNEZU16NEh4TFdRQzRDaDNxZFRmeUQz?=
 =?utf-8?B?WVJCVnd1MG5OeW16OVBaNEZwdEFHVi9kYWlMRUJ2YzBoTlFrTUdISFRXcnhT?=
 =?utf-8?B?VVR1RUI1SzAwbGUwdkt0RmwrUkJEVDRQWS9VbkloaWhUaHV1SDVscmYwK0Uy?=
 =?utf-8?B?Uk9ESUI5NEVMSHNjTnNSLzZFWW81TElVU21GZEZWdEErRnVKd2laUyszM3hh?=
 =?utf-8?B?bnJxcWExdjBaVlBROTZtVGVTWXRpRDNuWkVaYldhTG9FdHo3N2hSZW9jWXlh?=
 =?utf-8?B?Y0dUeU1kWG1IUlNkTCtPMldGcFVXemRNaU5EVCtDUS8yVEo4MjJlN1hEV2dW?=
 =?utf-8?B?NEtGVmppVXpNdzRTRysrMTJxdUhlYXVYaXdCOTljZW9vWE8vZ3dYM2daKzdI?=
 =?utf-8?B?cFR5eEExZ3h1NU0vU3FpSGxLWDBJM2ZsN2tqMTZlY24zMThvNkxYbUNFWEZs?=
 =?utf-8?B?cHhYR1QzdkJpOVFKaFdkb0FNeG1NUGgwYTBnQ2kydDR2UFhZSE9iWkRjRE5M?=
 =?utf-8?B?V1dpeTEyc1RJLzlqY2c2UWFuZWd5WDhvdERXRkR6aUM5NGpJVVhncGU4OGhi?=
 =?utf-8?B?SW1GN1RTN1dzTm5tcUg2SnpEN3dzd3NyWFAydlRydXJBVlhlN29yYXJjeFJE?=
 =?utf-8?B?M3ErKzVvTk1EMWNGc0tETFhJM1UxckdmNytVZ2IycXV1OU5LZXBWcDVMYW5E?=
 =?utf-8?B?Y2VXc0hKQVRIdklBbHlsYnZqQ3ZiaTNZQ1FTU3JwWWEwSDVoK2FVNjdzaGNv?=
 =?utf-8?B?cGVOcmJ1bDFTMVlYYURVQ0kxZzJVenR0MzZCWEFMOTJWSWNJek9wSThoRTFO?=
 =?utf-8?B?Q2tROVVOcUpDZUFhNXhaamtHb0FUR0g1L2ZEVHlNVW14Unc5dUIrdHI2VW8v?=
 =?utf-8?B?cmtiVWJPeXcxSzMvS3BYUTRNcFhlYUZQZzhiR3JnMExEeVh0VmdrM1VWRE1M?=
 =?utf-8?B?cktQc1ByUEI3Qlp5aVM2K2RKQVpNaHFkeHRhL3gvRXdpRUR0TzRyZ1VrRldw?=
 =?utf-8?B?TW9NamZoekdIOTR4V1cwblF4REs4SU5uRWc3c3NtcDNpMzF6eFRsdGFiSXNO?=
 =?utf-8?B?d1oxSFFLMmlvS0xwVXFIUnJaQUphZnl6SDJudHpvM1dJTTBBTU9nWi9QTDBu?=
 =?utf-8?B?WnN6TGxGc1hiNVJVaEdDY3EzTHNNT1FIZWhvYXFON2syZ25qTnczdjFzK0xn?=
 =?utf-8?B?RHF6Qkt5T3lOSnJ6dDNnNzJkQ1pVcmdtMmRMR1ZjcUpWY01ZZGRTbURNenhs?=
 =?utf-8?B?eGxuS0pzbDdKZGNDeDZKUjFJWGd5eE9yRlBtUWJSdGtQb01MWVhVZFhKeGx6?=
 =?utf-8?B?R2EweGNVTlNqY3E3Z1NvcndPYm9EVnl4S2ZaalIyNU9ZZXI1L0xOZTRMVTE5?=
 =?utf-8?B?aTdBWmtuMlg0NVZjb0piVXMyTllLem1DL2ZuVWMyQmt4MGZnUUxsQ0RFcTE0?=
 =?utf-8?B?YUV6Z3p6T0J6RjhDbTVUZklYUXBUT0VqM1FodWVQUG9ySTlLRWd0dmcrUGJS?=
 =?utf-8?B?c0lXS1U3THpsckw2YXg1ZDlzYWhYSjVaTlNHNkM4UXMyeTN3a2hiNVh4S3Vr?=
 =?utf-8?B?NlRNRXFIWXcyVU1wZnBnODhKSmlEeithYnJwM3ZXWmp1cGlrRHdhVlBrMUx6?=
 =?utf-8?B?aEcxKzNlcDdOSVZHTktudEJTVVkvNm4zY2t5Y1ozQU02Ly90aUJXOTFNK1NS?=
 =?utf-8?B?YWROTFlMNWpJOTlqRFJqVWRESUlxSVlnK2ZjZ0V6d05nNmtZMXVmNDFQQ2tq?=
 =?utf-8?B?eHZmNDV0NCtoWnZxTkpPM2xTcEs3eHdoYUxzVkJuTmRaYnFoVEFGb1RmTVlE?=
 =?utf-8?Q?IuiHDYTlyjBi/?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7925.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5758
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender:
 ip=[2603:10a6:20b:574::8];domain=AS4PR08MB7925.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DU6PEPF00009526.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	98136230-b4a5-41c2-0319-08dd5a5b1bfc
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|14060799003|36860700013|35042699022|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SUZmYU5HQ0RzZm80RmpueWRQdGVnYWtNTm94VHFnM3FYWSs1ODN5L013U2gv?=
 =?utf-8?B?aVhpYmpsRlVZOUZLZEhKbWhhWHkvMGExdFk1bmFOb2JWeUtaZXQ5cHNKdEpY?=
 =?utf-8?B?cVhRZXZLb1dwc3BqRnNwM3NjRWgzY00xWk8xdGFZOHNQYS81S3RjdngvNG43?=
 =?utf-8?B?V2Y5WGZEK3d4UFRvRzhxaGJoMkY0d2YyVmpkSGdxYk1xOHBZSGVuYktocTY1?=
 =?utf-8?B?SEo5RDBVaWFKenRJbUJ1ZXozQ0FpaTJWblF4ZWt4TmQwaTR1UXNUZGJDV2RB?=
 =?utf-8?B?Z1JPMGlzVHZ4SzVMbzRnNXY4WWh4MkI3elQzczZrR3lYTm5WRmpCbGMxWGY1?=
 =?utf-8?B?VkFDOHE5NVFia2poRTcrUGxxcXc2YXBBQkEzOWJYeFhmQldjRE9qcGJVUXN3?=
 =?utf-8?B?eHoxQ3dkV0JMVVNDeTROSGRXZFNYY0xTQ05qRm84QlhvYkxRV2dGREFsQlNV?=
 =?utf-8?B?YURTQ3NvMWxFRGNTOFluN3Vwc09JWjhFYjhmMTBUVVRBME9vUEVLQzJGaHR3?=
 =?utf-8?B?dnF2U0s5UXdMVXJLQVpoM3JFRGFxbTlQMjJYK0VZdm43RjY3WTNhTjNiUjBR?=
 =?utf-8?B?bW54d1FPUG13ck0yazQ3U0h4N3Uya3ZFUkVLSTg3ZnR6MGxiZ0k5OUxqaDFk?=
 =?utf-8?B?ZTdQK0xzKzR2dmdUc25UNUpyQWZlZEN4T1MwNEJjRGFJSk1PL3RNZk9Ld3ZP?=
 =?utf-8?B?eFllcmdSa1F1L2FWUXFtc05TeFBpZ0ZIc2piQlBWZzFPZmFMZS9QSnZUcmY3?=
 =?utf-8?B?K2M1emoxZ2JSbEF0dG9vK243SXBFQXQyN2U5SzBaWjJoK3RqUGNKNEltY1cr?=
 =?utf-8?B?RE8rOFJ2Z2NFQmh3S1Q0bXdkQk1udHdDenA5cGdLL1ljdUptYVlna1RjdjQr?=
 =?utf-8?B?UkI5V1ZkZWlrUFB2Z1luOHZkMjJpMElRcXBMT1pVTjJ5N2xpQlMvT2tSRDUy?=
 =?utf-8?B?NzdLYUY5Z0x0R3ZXZnl1aWtNQm90VmVOeXpQTVIzK1lyZUlwVm1SUW1zMjZo?=
 =?utf-8?B?dXBOUVg0UTVQRGFndjh0dXVzTWkwUGg4UXBBZG1kbTJTZm9OZVByN290Z2M4?=
 =?utf-8?B?MXlrM1o5QmRYaEUwaEQ5bDJ0YjNZMzNib1RIcHhtYnNabjBjd0h5UVJ5UHdz?=
 =?utf-8?B?UzVNSEdGaWZUWVJtWVBiRmdPL3ZzNi9ORTBjejNkN0pDVjlpZDRJa281Y1hZ?=
 =?utf-8?B?ZjVUMGVUeUUwTERKQzUxWHhsdWNsbkxTKzE2VElEa0tTUGFPTlJpUkQ0VVgy?=
 =?utf-8?B?aldwVGE3c2s2ZnVDd2c5WnN1d1JvNFZuMEpuTHZWZ2RMQmZvb1FueTNLeDcy?=
 =?utf-8?B?SGEyMjJwYUluZmlYVzdSQ1JMZ2pWVUZEZDhJTVptZi94WHhVcktTNHVaRVNh?=
 =?utf-8?B?K3g1UXR0b1doZ2FaZmI2TXhNYUNwZks3NnJhYVBab2hQTGdqbjR4R1BNb2M2?=
 =?utf-8?B?eW8weXorblczdkVNSDBFL2lMZFYzNUVmNGg3TjNuTEFRQWIrTjFVVnRqV2Nu?=
 =?utf-8?B?L2RjeElsemlxT0x0UnJEbWNjYTh0VDlYR1Y0M3ZJTXFZb0VKcGcrT0VIMUth?=
 =?utf-8?B?THRBNWd4N1U4ZU83Y294cEhNcVRHc3Zoam9ZZ1hnSXZ2eFJpSkNBTEp0OExP?=
 =?utf-8?B?YjJZSnE1eVl4RUZ0T1ZCOGcrMUF4QWw3TEpmVDRxcmFTVkFUSzJyM1g4UFFW?=
 =?utf-8?B?d2JWNDQ1UGJFSWFqRk1aanVFU1cxSGtmNDc0YTRSRlNsMlBDczM4Z1JDWGVy?=
 =?utf-8?B?bWF1RlV6V3hZcS9icXNKcVpRczMzYUU3OEFVcFA4Q1R4Z3R4MzVnTHMvekZy?=
 =?utf-8?B?UXgwSyt6M2ZGRHB1M0ZxNW1WVUdIQUwzbjE2VTB3cFRaTUtMUVFEYW9pRVdB?=
 =?utf-8?B?OTMxU3hPVUN0ZTc3cjNzbVVUYmVlMFNQendFZks1bzJRNXlIRnFsRnBnR1NL?=
 =?utf-8?B?QXA1MktHaUdEcUV2dlF5RWFSSUQ5Zy91MjBPeU1iSHRMVk13Z0FnbU02U3BE?=
 =?utf-8?Q?pdy44IDiYTb7ykLFe5laARR779lUc8=3D?=
X-Forefront-Antispam-Report:
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(14060799003)(36860700013)(35042699022)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 13:56:11.8044
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a5df0fd-3e85-4253-590a-08dd5a5b2827
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU6PEPF00009526.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5680

Hi Marek,

On 28/02/2025 17:26, Marek Vasut wrote:
> On 2/28/25 12:23 PM, Florent Tomasin wrote:
> 
> Hi,
> 
>>>> diff --git a/drivers/gpu/drm/panthor/panthor_drv.c b/drivers/gpu/
>>>> drm/panthor/panthor_drv.c
>>>> index 06fe46e320738..2504a456d45c4 100644
>>>> --- a/drivers/gpu/drm/panthor/panthor_drv.c
>>>> +++ b/drivers/gpu/drm/panthor/panthor_drv.c
>>>> @@ -1591,6 +1591,7 @@ static struct attribute *panthor_attrs[] = {
>>>>   ATTRIBUTE_GROUPS(panthor);
>>>>     static const struct of_device_id dt_match[] = {
>>>> +    { .compatible = "fsl,imx95-mali" },    /* G310 */
>> No sure the comment about G310 is needed.
>>
>>>>       { .compatible = "rockchip,rk3588-mali" },
>>>>       { .compatible = "arm,mali-valhall-csf" },
>>>>       {}
>>>> diff --git a/drivers/gpu/drm/panthor/panthor_gpu.c b/drivers/gpu/
>>>> drm/panthor/panthor_gpu.c
>>>> index 0f07ef7d9aea7..2371ab8e50627 100644
>>>> --- a/drivers/gpu/drm/panthor/panthor_gpu.c
>>>> +++ b/drivers/gpu/drm/panthor/panthor_gpu.c
>>>> @@ -67,6 +67,7 @@ struct panthor_model {
>>>>   }
>>>>     static const struct panthor_model gpu_models[] = {
>>>> +    GPU_MODEL(g310, 0, 0),    /* NXP i.MX95 */
>> We can remove the comment about the SoC. This GPU model could be found
>> in other vendor platforms.
> 
> Maybe it is a good idea to keep track of which GPU is in which SoC at
> least this way ?

I am worried the list gets bigger and bigger.
Maybe a comment in the DTB binding would be me more appropriate and
easier to search?

>>> Are you sure about 0, 0? With this I get
>>>> [drm] mali-unknown id 0xac74 major 0x0 minor 0x0 status 0x1
>>>
>>> Using GPU_MODEL(g310, 10, 4) I get:
>>>> [drm] mali-g310 id 0xac74 major 0x0 minor 0x0 status 0x1
>>
>> I'd agree it should be GPU_MODEL(g310, 10, 4). Unless the GPU
>> version has been changed by the vendor?
> With the fix suggested by Alexander, I get the following output on boot,
> so I think 10/4 is OK ?
> 
> panthor 4d900000.gpu: [drm] clock rate = 1000000000
> panthor 4d900000.gpu: EM: created perf domain
> panthor 4d900000.gpu: [drm] mali-g310 id 0xac74 major 0x0 minor 0x0
> status 0x1
> panthor 4d900000.gpu: [drm] Features: L2:0x7110306 Tiler:0x809 Mem:0x1
> MMU:0x2830 AS:0xff
> panthor 4d900000.gpu: [drm] shader_present=0x1 l2_present=0x1
> tiler_present=0x1
> panthor 4d900000.gpu: [drm] Firmware protected mode entry not be
> supported, ignoring
> panthor 4d900000.gpu: [drm] Firmware git sha:
> 8e5cfcfec20cc8aff8509d37e72babc935d34a3b
> panthor 4d900000.gpu: [drm] CSF FW using interface v1.1.0, Features 0x0
> Instrumentation features 0x71
> [drm] Initialized panthor 1.3.0 for 4d900000.gpu on minor 0

It looks about right

Regards,
Florent


