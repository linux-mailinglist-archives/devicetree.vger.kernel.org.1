Return-Path: <devicetree+bounces-257582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCK8Hlbvb2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:10:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B554C024
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2569D7C1AAD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F26547AF50;
	Tue, 20 Jan 2026 19:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="VyosqNbK"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010050.outbound.protection.outlook.com [52.101.61.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C4247A0DC;
	Tue, 20 Jan 2026 19:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937199; cv=fail; b=ZlWSxYsA/u5+ovZwzTyUXJZtBmurFnEU3pYwDmpkuNG9GP6xLWVtjyiQhHU7BCAri5GrSPpcN1sL0ezGBmoTgeI4AfUsTV5Ge20aqLKgFnfqP7uy5Aeyx/qQzckV15wmXgu0+njQYRRMGdZDzvUsF1UqDYN+47O8Nngoz4fYf4I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937199; c=relaxed/simple;
	bh=TNpIy81LQHrIx/NbjKfXunvLDohcuExXo/vA1w+RCTM=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=Kwj87rrVIF37ZhceBHwtHmsYrOrZiE4THK85zRueQhO2s86BwU8QK3RDOH4CATTMbTadtNXsL3XHqPdUQHxHbN89fg1/P5DDrCIu6FyIQNXeFp3IGwXNIEnX+uggSowOnkDEBIK+m66+fJuNNKcE/8BWuSmlytZl6CVwvnsnUFg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=VyosqNbK; arc=fail smtp.client-ip=52.101.61.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ut8ng4lRRhNKem3HdKEb1RhDFbrfKs4Z1I0XMo2I19PhIUhlEakzmwtKci07dfz/dgPJFttHg8t6Myvybt1LBIrX1knGGiko6bfNwDCFVUhhM/p0hOuvfIOARk1+N5oGC3fMVdnVywO6h06y2eg1zPPzaqlLbiU3D9lS/XLI6WGq/221zZ7sWtQ32X6h4sVuT+s/p6ch5Wvm3SizwHfFlDE0K3MowQU11eTTeSN9TWE1Db5VTAM3DZQtEqDeTNN9ziwayZII8lWVJVNjC9540PlB1Mt/iXP81HSucX1+K5wHXIigtXqAmMLZEVCZCY+2an5knOAJMU7/3/TIUfhWpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vY+8CGq7eOaoY3JYDVpaW/NTMXh5CLbovHTANyUKOE0=;
 b=JBTyrgoPiFKMEEoarlG8detAw/K9Ig46F1eVyC9co9HSES9ZMuPW3gLNJ5vHH3tq7++TUXUPtDDxTpgKPOJlDhsgOQtTs+tP5hHUYuLt5N2nUgIOHtb4dthzjTRG6PL5zS16klMytDDWGZzi6mTDmFD3atf6bMlvzdF78NWienPzSk6N7pIE5Q6LQjx+gkHc9YXo2cT96BPK+8Z/Y/j8tUyagVwc+6K4mM93a37K3OT6Xs3H0sx5cwpfrTGenktXeK7J2+ahC4WtmL+PRxau6CSOyAMYQcAtmFXsp2Q/OzNtQO9w5oLzJoLoUoio1eNDHj5Ii3bNxwng1XksNYfeWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vY+8CGq7eOaoY3JYDVpaW/NTMXh5CLbovHTANyUKOE0=;
 b=VyosqNbKJdK/2h4c/ZXjwePSZxoQWxheUh5t829t3W9BrBp39824yoaJVKiDkZxXHU4hXHM01xKCTvxwqGQo7dE6fLKlfsht82HuG1m+ndvTGwztMDwAvyKk4zoNSRtXacOcjbMeLDL0RYxZgkMM50giP81mKBhG9SLAyhAuo0cPMPDXjUGNitSWkv+xCvzXefUcFzDO8NZMD6KTTun3QRxLgjbjfQo91VbclWCMqy8jJIY7nXRYOA8xgXJ17WpVh4XtWPnL+peaKAq+19Ap2elm0QW85eNAH8j94Zh3zP979dlDccEDXYGkivY2NM8zpvRU0iKdosXwc3zPZ7sLjg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627) by DS0PR12MB8296.namprd12.prod.outlook.com
 (2603:10b6:8:f7::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 19:26:32 +0000
Received: from CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9]) by CH1PPFDAD84AB72.namprd12.prod.outlook.com
 ([fe80::7816:ec9f:a1fe:e5c9%6]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 19:26:32 +0000
From: Marc Olberding <molberding@nvidia.com>
Date: Tue, 20 Jan 2026 11:26:16 -0800
Subject: [PATCH v3 1/2] ARM: dts: aspeed: add an alt 128M flash layout
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-alt-128-v3-1-a81bdafc00a7@nvidia.com>
References: <20260120-alt-128-v3-0-a81bdafc00a7@nvidia.com>
In-Reply-To: <20260120-alt-128-v3-0-a81bdafc00a7@nvidia.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Marc Olberding <molberding@nvidia.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768937188; l=2331;
 i=molberding@nvidia.com; s=20250815; h=from:subject:message-id;
 bh=TNpIy81LQHrIx/NbjKfXunvLDohcuExXo/vA1w+RCTM=;
 b=DGv+a8+/fB9ZRP/kJwpSc5IRcRWKGENQ6nDHEntOe8WIDrX61c3j1+zq/I+MV5Di1tyfTurar
 62ExZwvgwmcCojrq0IPKZPE0yOXyGZLsHfMt47iA1U9+FvFqvc0Deqw
X-Developer-Key: i=molberding@nvidia.com; a=ed25519;
 pk=qCpZ1WFEf5YiaL88PDdYhG+A/bKk7rHp7KF2K3GmkH0=
X-ClientProxiedBy: MW4PR03CA0049.namprd03.prod.outlook.com
 (2603:10b6:303:8e::24) To CH1PPFDAD84AB72.namprd12.prod.outlook.com
 (2603:10b6:61f:fc00::627)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PPFDAD84AB72:EE_|DS0PR12MB8296:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eca60ba-2fe8-49ca-7a06-08de5859d127
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?enBDQWhQYzh6THp4S1RpYmFTSVVuSkNzVGhBek40dndvY2hqOW1lcXJnSitk?=
 =?utf-8?B?aGxRRm4xYUpwVTc0VkVsMC9BUktxeEdSdlhZN0MxRU5POHg3KzhURVU2YXhk?=
 =?utf-8?B?YjBnYjZsOEoxMmVPc25wUFBmQkRHSCtHdHkwMC9rNyt5Q1dEQjhzNkY4RVFp?=
 =?utf-8?B?Y1lBcHRwdG5GdFg1QUUydWUvOElRUFpOcE15TWpsQ1lzVHo3YXZTSWV0WkVS?=
 =?utf-8?B?UGZhNFNxMU9qQnF4cDFVcDhxWHVFZHorTFZVWGRSQXpaL0FmN0hWekwvS0th?=
 =?utf-8?B?aTBGQ3RwNUlraGI3clVZZWQ1b0VZS2tkbU1lSTNpOW1LNVJUTmJxS0E1Rkdj?=
 =?utf-8?B?cmZTeXdMNy9XekZJQ3l4OVVvdkp2SDI1VmwxaDAxcUtzY1ozRWdYazB5bzhr?=
 =?utf-8?B?WlhkV09yWEpuRkJHcFNmUWliNWZlSU9tdFVGMHliR0lOYTVpS1hsUHRjVnpU?=
 =?utf-8?B?TzlQWGthTGdzdnE4aStnY1FRUjB2SnAwWm9rRzM1S0NIMTVOS0VnRVZzRUxs?=
 =?utf-8?B?enFycTR5TjZrZ2pJQTVWSDNmSy80VHBzOEl1QTVuRi9RSWVPTlI3REgzTm00?=
 =?utf-8?B?eUZuZWV2RWtuY3RibWxIbm0wMzZiQnB0aVpLRlBmbmN6RTZMZStEdnYwOUxj?=
 =?utf-8?B?NjMxNWN1cWJNS3JXaFBZMjZyQWdkdFdDdDJjS3dTMVllZytvSndENDc1SFR4?=
 =?utf-8?B?Sy94bDJCSjlQSWFQREtyT2ZvbTAreXowRTVVRnFWVjdIaWswaXkvcTBNWUkx?=
 =?utf-8?B?MzI0YmZzTXltUkZ4Y05wTllhYVZKalpUZXNRSnc4V1p2bnVwMi9TSXZwemd5?=
 =?utf-8?B?Tld3VHJEYzNHa1JQblRKT0EzSnRjM0JrODI4NFgrQjRtMkhhaE9FMHlHSnZm?=
 =?utf-8?B?M2JGRjBhWVkxeU16Nm9XN21YVHlJanBieW1rdzV0VlFLVHpDeWZJN0FzTHBC?=
 =?utf-8?B?QTdiSUpkNk0yelhreWZ5dy9kTkFSR0NhaGZjREMwODllVEc4ZVgyak9xc1JT?=
 =?utf-8?B?R3JvbFdidWlMcHIzWXpQelM5eEw5aHVrVnZ2MkxDMWNrVU10SmVzdXF0SWh4?=
 =?utf-8?B?ZVdMSk43dE1ubmJCaDc5MHlCbHFwR1gyeTZ3NzJVWm8xOEgrMEIzbmd1a2lJ?=
 =?utf-8?B?QmVhOXBKUnNJc1lFNGNDUEhXODNsN1hkSmYxNm04d0E4aWRUWG1RbWxoRGtj?=
 =?utf-8?B?SmRFb3FsZHFSbWNkeEViOGxDYkg4elhvdFhROU0zcjVRYVZVbXJDZUd0MWp0?=
 =?utf-8?B?a3lML3d2SS9CK2Y1N3FDN053bXlWUy9FZGhqdklzYjFpejRlekw3SzFJSVlj?=
 =?utf-8?B?S0VwcGJZNGVENmNZdkp3WlJjUmVBTFBoQUJKd0prUlpNNFMwTTBmdWFRc05P?=
 =?utf-8?B?VFAzTFA2MGV6MDcvdFE1M0lmL2tFOXdIUU5XdWtjVCtBWFF1ay9PVWZqZDdJ?=
 =?utf-8?B?UncwRGRNUVdDSTd1MHJ6UGxMN3hRd0hHc2Ztcmd4TzBOQzNPL0xNZFRrenY1?=
 =?utf-8?B?Q0tGek1oVS9yYUhNVGRXNG5SMDRTTFkxQmNoS0ZRc24vVmVWTWlzbzVQNXNM?=
 =?utf-8?B?QlRTV0dVWEtBWUpZcWJSQlJBblFjV0EyM05tL21la3ozQVkwMXk3b2ZEellE?=
 =?utf-8?B?MVh4dEtWa1luNnc1RVBwaDVQelhHQVljNG9DNkZNOFA4OTFwSzNJcFV0d05s?=
 =?utf-8?B?dTRieVZ6V1BxdjlsS3NvNmdYaVd5SkhwS3BjMTZiWmpPMmxpNFBPR1FUclgz?=
 =?utf-8?B?QXUwOHFYd3lHdGZYeWNhYTBvd0RkWS9SZFNUSHN3NDVqNzRYeStXeGg0bVRK?=
 =?utf-8?B?aDdKQmlUM04zL1N4aUk3YnJvL2hWaEQwN1hVemo3WjlVVXo1NGtJVjdrakg3?=
 =?utf-8?B?RnA3Tnp4djJRNVZKR0o0YVhEbDdSai9FQTM2bm9obnBZSER3NWhjZkxtQThx?=
 =?utf-8?B?elZ3dmF6VzNSRVVoZmdGWURqa0ZHWFVJdk5mV3hQN0tvTGs5QVZMNCtIb1NQ?=
 =?utf-8?B?SUN4d0MwRjlBQ1BIWTNtcGt1Vjl2YnE2SHg3QnRXb09OZkpPM2kvczRpdUNK?=
 =?utf-8?B?VkRrNzZZWGNibGY3YTVWMzRvMkg4eVZqVTQvMmJuQW1SVnM0R3FnRmhKR3gr?=
 =?utf-8?Q?tZuA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH1PPFDAD84AB72.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YklMQ0V0RU9qWVg4QncxTDFIUDk2Yy84dloxUERTMkYzMk9YNm1tS3QrNy9C?=
 =?utf-8?B?SjlkeHpmaFk0VHJFVDI2S3d3empXRTJJN2NnK1pFL0Vwem9FVDZSeGpKRng2?=
 =?utf-8?B?czJOc2tNclN2Z0RQNXVmWmRVaWZBeWN0UmF2SXRXQWNxbFZGRUtRRzhFZnNI?=
 =?utf-8?B?MXFtclozTCt0VlphV2xXRkV5dG4yeTdQNk5HNjZRU2U0VVJYMVM3eHl1c2hQ?=
 =?utf-8?B?eFZJM001elBIaFFTY0lRb1dmNVRZU0pGYk0yK2NZdkJZSHdoeUt6QTBDQVR6?=
 =?utf-8?B?S1FXSjdqYWxsd1k2ODZEbnV6WEt2ZlE0aFQxalRodk9wZ25kZFl3TDlTdFpk?=
 =?utf-8?B?Y2RUNFVCU3Q0Rk40TGZlUEZMV2UxSUZjSHdobmF2RXZZSW12eVZtNVFZV1Z3?=
 =?utf-8?B?bXdFQzM0aXladjJNNDFWQ3RySE90QmNXTWdEMnZ1cUZCNHJFTHJYY2x6UUoy?=
 =?utf-8?B?dFIzekpETUVEci9rSEZYeFJtUmhkTW5JUFdIV29laERuWlVhRExPcjdxZkdL?=
 =?utf-8?B?bWF0bXBvaGJzUWd2WFlWeWZDYUloMVZuVXpFWTBmUHZ6Y1RUOGdXYXk0RjAy?=
 =?utf-8?B?UXhCZVdjTWNaRU0xb0d0QVVZVkNkTmU5THgxRXdsS3F3cGxnclJTWTdvUFpm?=
 =?utf-8?B?STdublE1ZkVCaUZXNldYcmFPZUdmM1V3ZENUbFRQWExwQW9BeHpnN093RU9a?=
 =?utf-8?B?U054cFVjTUI5OXFSeXQzdHgrcmNzdVBZcHJhTVg0SkU3cS93MENGT0JxREsr?=
 =?utf-8?B?b3pQZTB1cHNHdUljalRiSWZaWlRzRHdTcEg5eWlKVTlDVUFIMzR1bGZSdkhX?=
 =?utf-8?B?aHZValpzaEk5OWF1NVBNa2FXcTU0ZGN4KzF5NWhmY1VNODdNWHBsbWpwN25z?=
 =?utf-8?B?eTI4WWVhdkxOTDdoUm1hMWRQN2pKUVc4LzI2Z2w0Wm4yME5MTGJPUDRIQUcr?=
 =?utf-8?B?QklpM2JwUHA4YnpDczZyM0FjbUxQSFBQbUNYM2NVRDNlVGZtSytXaXBmL1J4?=
 =?utf-8?B?SjFZWU1NdS9ESDNzNUM3OERsUW0xYnpieHcvSHBUWU8xMG9YYy9SeUY0TXBn?=
 =?utf-8?B?OFEwckxFTExQeXQ2V2c5YXk0V2k2YjVsOGxwZlhzaHRzOUUxQTA2UjNNNG5K?=
 =?utf-8?B?a3NVL2taUkp2c2lsNU82U1VWUXFlNS9qQ0xLUTNiL0tyRkF0UytHMk8zUWpH?=
 =?utf-8?B?YXZmVnNNNGxzVEtsL1Vpb0ZOTTY3YWdZQXlvekpTNGtQM2VHL01QK25vUkNr?=
 =?utf-8?B?QkFJV210RlpvSzRVbmdnMHJrM3hDVDFkTWRaRmRvNktpQWYxajhoVlk2RXp4?=
 =?utf-8?B?RE1ody9ESUFJM0puVm5hNGw4amNxMlZaa1FLUGtVN0xlaHpzRU9MUlNBQnJw?=
 =?utf-8?B?eGRFSXl1YXJPRDdQYTh1MXpGNVZqREdURks4UHJaZlA2a2tsNFNEcVpZcVpZ?=
 =?utf-8?B?cWpJTjJ0QnYvZmlLSkRoOFZhWENTU1dhS3FkaTJIWUEza3R6bE1TcmwxSmFC?=
 =?utf-8?B?RkdvYStJbDc4NXVPTkNpcGdJSDhSTkdFTEtzUmM0NWNKdUh0YkFGREUwT1FJ?=
 =?utf-8?B?RGw5Z3pEUytSRFFvV1dwOTNFNDRhcmNDNFVFekljS1NaM211aVdTbWFFQkEw?=
 =?utf-8?B?UWVlSkFhNTd3bVpmNUhtclN1c01sYkt2RTdZNE1lMlc1T2FBczBRQjB0NGdW?=
 =?utf-8?B?SFhQUk9GU3dRTWNOdmVnTS9LcTJmZWxhSmlab2pqSTZCVWE1bCs0MnJlM1ox?=
 =?utf-8?B?aGdmTzEyRW0wZUlaSDIwNi82dGJvQUhWMlc2YnNyRWlxcWo3ZlI2c29wRjNu?=
 =?utf-8?B?T3M3dVVGemlpVXhIdS9zWnJlU3RSTzZ5RzFCUmNTNk05SGxJbG5RQjFCY085?=
 =?utf-8?B?b0xHWldYRkd4dG5QMzh1RlhlREpYK3FYdG9ibUNzUUNnK2orV2w1M29VdGZz?=
 =?utf-8?B?bjlBOUJ6ZFA4MXpLb2l3dHBUbSs5dk9adDQ5RThyei9vNmtwUVU2MWUyYU54?=
 =?utf-8?B?R3NPa3RqL1JrMG0vcXdrS0lUWGFicmJsL2VQeXlDMGVJNHMvNUpjQy9CemZL?=
 =?utf-8?B?elhwbkl2bXY2dG5aZzBUK0JwOTRGVHpBRWVYRmNvWHFwbDNQV2RJejZveTBt?=
 =?utf-8?B?VEt2NlpwVUNsYVprRVdYNnZWN1pMazJPMFBDVUNzV1pPL1BXMDVDdTdoT1ZL?=
 =?utf-8?B?Nm9oTDF0T2owVUppL1Uwamw3cW1tbklZTW1tQVRuZ2JkMm9FQnJ6NjRtRW9J?=
 =?utf-8?B?QWxHdWh4MXR2dEYrdmlQZi82Yng4ckJCa1RGdXNrVlZsRUZkaXBQQ3N0U1Rs?=
 =?utf-8?B?UWF4NnB4WVdRdXQ2VWJYby9DWDg4bFJZeCtTMFVjL012aVA2OVptUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eca60ba-2fe8-49ca-7a06-08de5859d127
X-MS-Exchange-CrossTenant-AuthSource: CH1PPFDAD84AB72.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 19:26:32.1883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 19cdOT9PrRwy7bHIgo3Fho4kJpqNRefmhY/CgsfbS4VIIrAgOzWhgVSPxcFxKCEjHfECCus3aVodBSa9dQzZMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8296
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[nvidia.com,reject];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257582-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[molberding@nvidia.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nvidia.com:email,nvidia.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,Nvidia.com:dkim,a00000:email,e0000:email,0.91.141.128:email]
X-Rspamd-Queue-Id: 11B554C024
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a 128M layout for the BMC flash chip we didn't boot from. Including
this allows the user to write to each partition on the alternate spi
chip. This dtsi follows the existing standard of using the same layout
as non alt version and prepending `alt` to each partition's name.

Tested by running on target and catting sysfs nodes
    for devdir in /sys/class/mtd/mtd*; do
         [[ -d $devdir && -r $devdir/name ]] || continue
         name=$(<"$devdir/name")
         [[ $name == alt* ]] || continue

         size=$(<"$devdir/size")
         offset=0
         [[ -r $devdir/offset ]] && offset=$(<"$devdir/offset")

         dev=$(basename "$devdir")
         printf "%s name=%s offset=0x%X size=0x%X\n" "$dev" "$name" \
            "$offset" "$size"
    done

    mtd10 name=alt-rofs offset=0xA00000 size=0x5600000
    mtd11 name=alt-rwfs offset=0x6000000 size=0x2000000
    mtd7 name=alt-u-boot offset=0x0 size=0xE0000
    mtd8 name=alt-u-boot-env offset=0xE0000 size=0x20000
    mtd9 name=alt-kernel offset=0x100000 size=0x900000

Ran dtbs check, no errors from the msx4 dts

running diff between the main and alt flash layouts shows that the only
diff is alt prepended to the partition labels, as expected.

Signed-off-by: Marc Olberding <molberding@nvidia.com>
---
 .../dts/aspeed/openbmc-flash-layout-128-alt.dtsi   | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/openbmc-flash-layout-128-alt.dtsi b/arch/arm/boot/dts/aspeed/openbmc-flash-layout-128-alt.dtsi
new file mode 100644
index 000000000000..08ce2eab472c
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/openbmc-flash-layout-128-alt.dtsi
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+partitions {
+	compatible = "fixed-partitions";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	u-boot@0 {
+		reg = <0x0 0xe0000>; // 896KB
+		label = "alt-u-boot";
+	};
+
+	u-boot-env@e0000 {
+		reg = <0xe0000 0x20000>; // 128KB
+		label = "alt-u-boot-env";
+	};
+
+	kernel@100000 {
+		reg = <0x100000 0x900000>; // 9MB
+		label = "alt-kernel";
+	};
+
+	rofs@a00000 {
+		reg = <0xa00000 0x5600000>; // 86MB
+		label = "alt-rofs";
+	};
+
+	rwfs@6000000 {
+		reg = <0x6000000 0x2000000>; // 32MB
+		label = "alt-rwfs";
+	};
+};

-- 
2.34.1


