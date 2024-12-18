Return-Path: <devicetree+bounces-132234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD1B9F639A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C9EB7A27F2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A75119C554;
	Wed, 18 Dec 2024 10:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b="g5KfFQbO"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11023138.outbound.protection.outlook.com [40.107.162.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5300C199939;
	Wed, 18 Dec 2024 10:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734518613; cv=fail; b=KmdYYmaLlSlyzccD0GFpvG6yDFWt+gCmwF9/nt5hRB3FojNq5gkKk58yGoB+p1if4rD25jFaV3gjEsWrhJseJoeFlDs/YR/VA7iqRfMLZN0du8OLtSPCBeP7VZYe+CwuXSlFG1ObIIYDJcoV+Eo6dVqLNqs4osHNDtbTyDX4tCQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734518613; c=relaxed/simple;
	bh=PKbX80sp6fmo1xscI98jqjFw5KMYwr1ZmcF/FeEohCU=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=TTIZxFB7KaKJx7QLzcY//eZzBdCex2fV1CtPiUAVKiYBCba/4ciOZ2SsyNflwJsRbT1w2+78ypBpZrQcwStEIpsEmdTg1SfyLbW1ZvO4mgt1zMUn3oUDKjasISgFAhG7ssIX9lqjk44xglB+eA0ycUa7DrLRJZSDjcsK9CGIdOQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net; spf=pass smtp.mailfrom=wolfvision.net; dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b=g5KfFQbO; arc=fail smtp.client-ip=40.107.162.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolfvision.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s/drKchflte2UGktm2iLcHJkVGzCEVK2bLR+IhTC2yUkG8J34g7r2v7RW2LNm5rb8o/rFbkYH/KDU7ZVYgzhNNGWMxJfFRuQoGeZMvYyDQatxHwP//Bhg+cuGYzVDyHf5/wVmyI/+ApjYxSqgzFEuggyxBtZuqmg/nHnA4sAOFGYwtECkMPzxqGSe18ArUBDDJcl0YGQ96JbPlcigqi5fRmxPJG6L3i/nm5dtSpfHn4zklc60IANpahZW4xRHWpyGioahhCVsr/p3jNBbThlUunFDmcyCpt+2+rigf6W6erb00iJSr8iRU+XXW4Ww0/7Y7+3q+mNV5+nlR3OVyEqWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=frwHySiUt99urmdPAJId9ZT5HAE/k9Nka9CE6s9PMDQ=;
 b=JUPoVaqJnBJi3SZQqyk26Jq7cEoh2Lmnmx9rF7YwZ91ikeZdDoCM0c6yYeyRovRXjvGCSOhXgKvaufSKW7s/FarvyJIokPKZnDoaZERxYmN+d6Q+RADzX8Ip8U8OdGTFyeSWoBh+BkuQCPZVIisbb6WX0mdE3ChSqL6uBcfKZRJhC6n246X0keeTi4X79XIP6iLAWVayCubLYJp3kM5fpO3se9A18XnDq/iW9lp6Atrk0JStOq5rWWD+32F7L4SKXHyFNbn/5W9Lg9Yf6d2/cgsCchTMRHpw0hY18UBb3MeHpGFuYY/ef4LxF2AD/5ofigqqSjA9ZUgqgSLFzOpPNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=frwHySiUt99urmdPAJId9ZT5HAE/k9Nka9CE6s9PMDQ=;
 b=g5KfFQbO/DLkK28ApYB+8y1Q6zCdXFqPySfy9+8GA2BCah4mPVvsfyFpmommnTOXADU9Eopn/FNOnOlBo8H8bQtrR68SiwJ8Ea8xYU0yy5x9H6KSE+Ax3gJ6agApV2T4TumekGcrLpABv5nNuuLATiXuxcnjXlMRiSLbZ7U54f4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DBBPR08MB10841.eurprd08.prod.outlook.com (2603:10a6:10:533::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Wed, 18 Dec
 2024 10:43:27 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 10:43:27 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 18 Dec 2024 11:43:12 +0100
Subject: [PATCH 2/2] arm64: dts: rockchip: enable hdmi out audio on
 wolfvision pf5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241218-b4-wolfvision-pf5-update-v1-2-1d1959858708@wolfvision.net>
References: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
In-Reply-To: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
To: Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734518605; l=845;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=PKbX80sp6fmo1xscI98jqjFw5KMYwr1ZmcF/FeEohCU=;
 b=5oVBnMvIQFGCnOFtiR6JgMbeT0gPbPmXJm/aQIUUeMaUYog2gxidAAspadeLD4valuneFjLH+
 8I6EFjULsBNC7vVM0r39GlMcP/OPJznX7Ir6aD1LPo+4FxA7lvawKE/
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR09CA0140.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::24) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DBBPR08MB10841:EE_
X-MS-Office365-Filtering-Correlation-Id: 13b573b1-1136-4f55-8fc6-08dd1f50ce20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dmxYdjVpeEhZOEEvNnRnZU1Yb3dhbU1uKzJOeTVabXl2UDE1UUI5TUxxWFJ6?=
 =?utf-8?B?MTR4Qm1lb2JFc01HY25DUlFSNjRQZWhCeCszV1h3a05NOVlZMmNxakxITS9F?=
 =?utf-8?B?V2RmVzhBYloyZ21TOGlYQVRIUy9XeTZIZjJhb0pTZ1c3K0ZsZDVPWnNEMHQ4?=
 =?utf-8?B?SFFpL3htMzBpRUJLU2VXem1uSGNHU0lnTHlKbkpnY09zT3A1WWpjT0lZa2g3?=
 =?utf-8?B?N1NhU2xTcThiWlJNMHR0ZGYzQmNRbkpQSWVlc3FEU0V5Z1QraFNoWGo3NEtL?=
 =?utf-8?B?bkZVWlNabXR5U3FvcDFrRkVKMDhJQmswYnRqZDFxb25BcS84UVpweGVWZGxv?=
 =?utf-8?B?VGpxOXFmWkhqZEdoQjRMaWg1QjU5cUlIbktBaHdjVWpGT0xnRG53cVdpcnkr?=
 =?utf-8?B?c3pOZ2d2cnNUWTBTa2NFdUtoUjExeUt5UHZrM1NlTTFHcUMvYUFXMUpETGI2?=
 =?utf-8?B?aUdadndROSs5bG0zT0dqNjFmc2Qyb3BCUlh5VkxDTmd4cURSYUJjbGhTbGFU?=
 =?utf-8?B?Tjd1UG5JQkVvMHg2bXRONDlKUmMwVXB0RkZocTlyMmNnWE12cE8wTHNhOU9a?=
 =?utf-8?B?NnFnUnpWZkp1cEMwTFZsWWlFOWRzYlpETm5mNnpIZEZ2b1ZRTzJTN2JDaVh4?=
 =?utf-8?B?SHNYR3ZxWjdETndId2NhZFlBTWttMlREZUc4eFdtbzlRY2NYWXhNOWIwK0NT?=
 =?utf-8?B?MTZwa09QUjdjVGphRHdkeWhMcHBISFJYMmlTdjJYemUwUkxWa0ltd2hVVk05?=
 =?utf-8?B?ektoQlhheEU1bE5reUlKZDFlbTlhWlZraGE4SGZiaGp3bTlLSjFrbzlEVmNO?=
 =?utf-8?B?QUtPSkNvVjJZVWJQL3doMUtENFpkYnI1TWNSbzI1NEQ0RlIweCtKbnlwUE1x?=
 =?utf-8?B?V0g5VXRpZnordk1VRit2QktnRXVvTlBqcGRPNXplYmpsUEdJZnYvNHFwYjRs?=
 =?utf-8?B?blZZTWR2ZTljcVkwb2RGRlpvVEFsV3NtZVNaamxqcUZiRVNJQ1J5NXg1MVJH?=
 =?utf-8?B?a0djUEVpVFBkbTN1bFFVcFRNeG5FOCtoc2xtdCtkangwVkN5OG9FMjI4QTBH?=
 =?utf-8?B?RS91bjlQZlB5MlZ6OERZVVJzWDhrVGRGM1c2eTVRNVVnTmdBbTNrZ3k1OUhp?=
 =?utf-8?B?VUtZSXQ4SXZRamwvNkljZGV1NUhYbHdjTk9FU21HandQa3daNjFxaUltRmVV?=
 =?utf-8?B?WkFiQWpnR0NkZVlwejAra0tmKzhOMENlbXNFT3RuUXhnTzUyUktPR2pRYnN5?=
 =?utf-8?B?UEZJMm9ieERxVGtqOEdWOEtKWjZ3VmFIZVV1MDlHK2pPMTdvWFNuUFQ2SlVl?=
 =?utf-8?B?a20yU3daTUJML1dUZmNWVWRZdWpzZzdoTjRhdTlSUTVUSnFzNEF0S1pKRUFk?=
 =?utf-8?B?cXN0K2d4NkNOVjZTYkhEN0gzbGVUQ3lSdkplOWgxSEswcWhtZW93MUZ5Ymhj?=
 =?utf-8?B?WjAxd3p3OEN1L1lGbE5YMXNCUzZUSEZnMFcxSy9qUHhPZmhqUE5TVzdBaWRm?=
 =?utf-8?B?YXQ2T2hqSVNDNWxBaUNoZ3B6Wi8yQXdnVlBRZWxhMEx4QXA0eGJmTEZWUC8w?=
 =?utf-8?B?aG5OSFc3UmZneVB4dUR3SUl3K2lvMXh1Q0FEdlRWNEQ3RzVNZC9HMDVFTkto?=
 =?utf-8?B?cnd4REc3bFBYajI0V2RpaVpFSmpRWjIxNmttL2RkTTRXMjhGQUptd0RQVXgv?=
 =?utf-8?B?MVZZZGl0VVFOVXYxRDljQUpxTDc0ekh1OWZIRmpSUmFaakdMYVZwUWhhTXlZ?=
 =?utf-8?B?NUJ3bnZPbWVJcHh2OVNBTjJvT2tMYlhHU0x0RmpEL0IyWi9HblNKcHNFakdL?=
 =?utf-8?B?V0gyM09iV0JCOFRvNU1UbUg5T2d6eWZVSk82TjhlUWVHazVyRFY4aTRidlBN?=
 =?utf-8?B?c1hSWGNtcDgxS3RWSlRaVzNyTTUwcWJFNHNkNGpickFsYXpaZE9uNWZpQ0xG?=
 =?utf-8?Q?ezlUduzGBKOGhvdisRMa49D4u6+lLxXH?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UW1zTlFPejJwd1pwUzllQXZnMDc1UXFnM0N2Ui9RYWw3Wm5qVVhZVXJNMkZx?=
 =?utf-8?B?ZXl3Tm9HNldzUlhqWmhNL2NYK0VLeE91N1lYTWZCZHJPblZYOCtoZ2ZGY3lC?=
 =?utf-8?B?MW9BSzhqbUp5ek5PUjg4T0h3aTcrT2FJUGowMlZWNGVFZWV2K2tQMHN0Rk93?=
 =?utf-8?B?NGVBWUJLbkt3YTRMRDVVbW9hVExrcEpsYkpteFdiVUw1VUd4Ky9SVXFnT0c0?=
 =?utf-8?B?WVhqWTRTbS9iMDh6TVpjNkN2ZG1MRFpLSjlZOGNWWDNvRktaVDZ0bTE2LzlM?=
 =?utf-8?B?d1pLa3pHcUhnYmVWakVBbmQ2dFRyT0FQbnA2bjgvSTVyUndLZEpyemtGN0xy?=
 =?utf-8?B?VHBIOGpUUmp6RExjcGJuTUx5VGtDYjZ3OWs4blFPbTkxRmdJMlpBeElEUDJS?=
 =?utf-8?B?c05NbExJQytOZE9CZVRHMkRLczdabFAxU2FlL0NnZEhFNlJBcHJhTEQ2WWlq?=
 =?utf-8?B?TnY3MmZldkZreHRwR25nSytZKzNud0FBY3NEQUlzcUIzdXg4QWZXSDVhdTVv?=
 =?utf-8?B?N3ladVduNVFzMWJodUkrdWNxcld3TjJIbnVHM0NnSXpSc01heUtsRmR4MWI4?=
 =?utf-8?B?ckY2RDVqWml4QUFZSUZrNUVBREtUbmx6REtFVDJTK0ZaZmhjM3ZFR3Q2b25v?=
 =?utf-8?B?R3E2b21OTjZlWlVWOTRJZU9RcFhHdTRJTlBkTTlERmZ0RW1veFpoSU55S0dD?=
 =?utf-8?B?NmlSdnc5bVNRRFRwdy9WVTk1ZzRneHlHSm9rV0loWTZxcUxlRHRlTkRvVk1P?=
 =?utf-8?B?cmRJRkY4elBpSDVCN2lkWmZNWTlzQ0h6azVTT2xncTZnMnd2Tm1jdEtkdGJW?=
 =?utf-8?B?NDlWQUlLWUFHeHFNcDFaSGhDb29JakRhTGwzeEsxNkFwLzZSampvNHlzaCtT?=
 =?utf-8?B?eC9MNk9hUVIrUDhYZzA5VkszekttT1o5TXVyV3VKN2ZiQVU4bTdXTG5ibm9X?=
 =?utf-8?B?L0FJM3lLWWdkUURLRWQ3VGYrN1RzWi8zZ0dndWFLMnA2aTNHb0hrcTZrRkha?=
 =?utf-8?B?S2VHdUJoR05LWHZTem1GS1hreFJGWVF6Qkd1NVNTV1Bpa0dXYUs1VFkwQ2FK?=
 =?utf-8?B?OU1zNEJPdWdFTEtTZ0lRS1h2QjZRY2RQcE1LckxlbWRSQXBDTThFRkVMTzVv?=
 =?utf-8?B?MEd1NUJQbFUzUXFpQ1dGVCtxTExnd3liejZ4c3NrQjBRL0EySmhLRkZaaGZC?=
 =?utf-8?B?eldxWVYrQWptOTZtOXNOZTUxRzUxQXZxbE1QTm9wZFg4V08reEdxeTBjRG9r?=
 =?utf-8?B?YU1kOW1mUHYraFNSYzdKdHNVVUlmWjdrTnpjM01rMlV2dFBSbE8rR0FnYXFj?=
 =?utf-8?B?N1llblQ4WGNiZDlLYjVZWWEvMHJGV1FmTENsLy8rN3h0NThJckR5dmdYVzRL?=
 =?utf-8?B?U2FWTGRubG1GTHNrOE9HczlTZ3BMdDFyZDU3Y2JoUGRybUVJcVA5S2VsYklw?=
 =?utf-8?B?aGMxelU2UkJWZmoxakd2NS9OVTEyVkVKQUNmRVV5R1pYVXVQd2I4L1V0aVg5?=
 =?utf-8?B?cWtrWGVMdFNTY0FGSVkvV0FJZDZGWGJvU1cwOU5FQWNFckJVdTEwQzFHMVlu?=
 =?utf-8?B?NTBJcmlEMXYwS2JPLzNIWmxwWkRhcVBwTUJsYTNjQUdrc09IazBlSmhCcmR2?=
 =?utf-8?B?TDJVbVNsMVp4T2FGeGlBWFZNUUYyZzZJOG01TzVBMUNwUStURzhIYlFvOVNF?=
 =?utf-8?B?UXFpUmpkMnJoZk91UmxkeWpjVU91VjdSdnpZVXUrbVNlZW8zbndiTDhicUpl?=
 =?utf-8?B?M2UyK1ZWdVlYRGhQWEFGS0Y0aEFUSkNZZjlDSmhWQ1NNNFA4c09aSWV4K1hj?=
 =?utf-8?B?ZGFSQmpMeXdmSjFyKzNsSmlTc2ltNjJvQjRqc0JGSUI5dU1VRy9iUmdzRU1K?=
 =?utf-8?B?MUhLczJNU1NIRkxrR01lMzZlSlZjNzc4dERSQ1VxQURUQzJLZHZmRzBPdTJm?=
 =?utf-8?B?QTAvRW8wSElEQ2RDbVBxemFWOCs0bytGWHpNQnBSU0N0cUZEQ3BDYlFBWGZo?=
 =?utf-8?B?M2NjRE5JVkdDZ2JGSU5UY1FnQlJ5dDlyN0RPVUVsODQvZEt4UEFIUlgxd1pE?=
 =?utf-8?B?SGxYcjd5K0FQdklxOUkyT2JNUVA0MmRSQzVQY0VhZHJrcFJhRTBYQTQ5ZHVV?=
 =?utf-8?B?MHRuenZSS0FCeW0zUmRVZXNDUVNtelY5bGNDUHNXbTF1ZVhtWFRKcUJsTm0x?=
 =?utf-8?Q?/udm3Fe5awY/+MHqpMzaEuI=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 13b573b1-1136-4f55-8fc6-08dd1f50ce20
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 10:43:27.3546
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wzrKMXlfIn5z2+bGiQ1CZNDs5i1ZPxEklV8QfoxILLPClJPcy2NdbOqSFumbGL2WP/uHkLJeFEOGSjiS2/m0P5LFlSAIhwbBUo9wxfSOJCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10841

Enable HDMI out audio on the WolfVision PF5 mainboard.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
index c6e413731241..bb33fabae16e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
@@ -167,6 +167,10 @@ hdmi_tx_out: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -414,6 +418,10 @@ &i2c4 {
 	pinctrl-0 = <&i2c4m1_xfer>;
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &pdm {
 	pinctrl-0 = <&pdmm0_clk
 		     &pdmm0_sdi0>;

-- 
2.34.1


