Return-Path: <devicetree+bounces-132232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8439F6397
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A943216BE62
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FED199934;
	Wed, 18 Dec 2024 10:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b="TPDC8QpN"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11023138.outbound.protection.outlook.com [40.107.162.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD01990C1;
	Wed, 18 Dec 2024 10:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734518612; cv=fail; b=sbzgpaLcM8WKyNFDorwDiibbXi0kFpzgZY7N6LyFrTBdl6Bb6cCNEaJCJJP36G0X6FEFlN2Ix3jTMZdYfB/rKI2JhWDo0JadtTnvMUYklnYawpO1UK4fC9S2UzzK8UDBdZ13KvOy7Oz+F0ePg+eSse9L8j2bBLT7Yt6bru+jJSQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734518612; c=relaxed/simple;
	bh=qzSpgc0G4J2PYs8PSal9VZcgN2oBGczhdGFbiRkSdUE=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=jPj8oacb1bmHEyT/LEw1SzeteJjsDQGaoGnp+pOQKBOcV/veyOXPLNbJWdVcRJmYQD1aSPatd9hvoN7uTLpe1Fklhv37b+crrf7ySSYVHaxL4lhPhDwLoKiJ9zvrP6o2XrsqjzrGxUkh6Of67wijB3PaLDiceYkWZ9cEpF79gN8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net; spf=pass smtp.mailfrom=wolfvision.net; dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b=TPDC8QpN; arc=fail smtp.client-ip=40.107.162.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolfvision.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hFnBzW9b1RQlzzgHaS4U4XGhJhBk+CB5H/7P4N1ouaIa57AKOhjrIeObB3qBR2sS8SHEfJ9Ptl0vOwJpRcu5TIzj3xgC9GIB7h0au+6+vcb02FfrFa70qFLYS9Qt1rlWochpzrc6+FvuSf6PHFiepJSjpDiF1Fv7vSQj11f/C5Ic4QxD8Wzj2AfRVqxfJFJtjTt6dwo+2YGDjpo8hlv39NWjWnuylSwasShmo1dpBy9Xdhuji4ydMNsrWQ431hEhZl8QrPa4aLkxQjYtzhKMJj7nfvQ0pdtwJ27wwt6g7ZsOEauag46pkBJ5NGmQeKZn8R8oNKiT2qZGXm2EhQQScw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkjn50WSqkhDkzSnyOl5gCBjaF3WFvpt943PooctGnc=;
 b=aaQbIuzoVcfWlCUs1hyhdepdY7FRBWdaXGx01R4O5mnQCWfRikCERJHhwC6eQLci0c9mTUSVFdQy97NaCBrVmpSdlbkuGqzyKuvZpIbcVzDyDmb71qgGngdoFfs32XVoX7fdSNmOhnSDnwPDLMwHdIGJGSxdFWfsz0E1RbJtDKyktt9jwyvTZgXsavO4INabMW8bIq2uaehj7jKXwwl2Zye1Q0FB4TH97RNYdYP6ErL3ek2Nki5P9mUfln2pVm70LD6ICMEUR+6YOstBQfFoWfOjrRPa8Am8oSefZjKLUnXqWHtr7p7J2Q2Iiegufp+WU19u77qK0+22qRcxirtniA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkjn50WSqkhDkzSnyOl5gCBjaF3WFvpt943PooctGnc=;
 b=TPDC8QpN36Jl0ZzfaLbd576wDfJ0feIT99KDnjASNxiCgfwU2/dEsbDFsk2Tua6ffMldjiuHOSdJE2jcHDokWuASpl97KYtX0wwBU3NNTCRFn+RbMH6Lm5mF7ioMpkJz8cMpd0UUgVzTngWoTDV6qwV1UZNju+9fWISLQH0Y9oc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DBBPR08MB10841.eurprd08.prod.outlook.com (2603:10a6:10:533::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Wed, 18 Dec
 2024 10:43:26 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 10:43:26 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 18 Dec 2024 11:43:11 +0100
Subject: [PATCH 1/2] arm64: dts: rockchip: fix num-channels property of
 wolfvision pf5 mic
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241218-b4-wolfvision-pf5-update-v1-1-1d1959858708@wolfvision.net>
References: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
In-Reply-To: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
To: Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734518605; l=941;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=qzSpgc0G4J2PYs8PSal9VZcgN2oBGczhdGFbiRkSdUE=;
 b=FIh66hHY2zQg83t4nt1RM5dfrEQEUCnB2WEY0UulWm+oklpxqxldpOwnJ2pvb5M79MOpPV0aQ
 umCAx+zWQjGB2i/WHr6KGf2+BRXwz9n19zGrFm3RcVOi89fBkfUjxsB
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
X-MS-Office365-Filtering-Correlation-Id: 2ab725c0-9279-4a0e-04c5-08dd1f50cda4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TVdDdmg3eVpsUXl1cVJsMmtVRzJaVlV2eUNHRkkyVXVtRzJyNjRDaDJ0Nk9C?=
 =?utf-8?B?NS9IVnpUQjRGRG42MjZ1c2ROZktuRG8zQkx5ZG1ORkpGZkFBeGZsaXZTN0Zs?=
 =?utf-8?B?Y3B6cTh2NUlwUnVyNmxROW95alBUSmN6UzhmVGRGbWFoR1VRb2Rhd3BxdHp1?=
 =?utf-8?B?MjJWb3cwTkhiUlhIVjk2ZjRRM2EyTUJxMS91ajJ4dXJKajJMdTlhSGlFK3RP?=
 =?utf-8?B?VEwxeG1rUVJ0alZUSXZhWk42cE1ZU250d3diek0xNWhTMkRCanhSUEhjSkF0?=
 =?utf-8?B?V3VOSlgrOVJORjJ4bXJ2cFRGSVVSNGFoMDRYeGdOQ2RzdU5RNVZQOTJlaDVj?=
 =?utf-8?B?YW5oTnlDK1NkeUpZYjBxRjhPYXB1SlY4Qlg2QVZwNEllekFxQjk3cFlidVk1?=
 =?utf-8?B?MHFQQ1JKS3AxRmkxc3YvbXFEMEZmQ1J2b25yS0Y0cEFyOTJYVWdHaWdTS2FT?=
 =?utf-8?B?a0h0enM5MzM4alVOdzg4bHVtb2FMWGJDUmtieWZOM2hmUkVDWmZsWmI3K3Ev?=
 =?utf-8?B?VzV0aFRGL3N2SzB2U1dDZ0k1endkaldUMk1mandldEtRaENxYjVhNVVHQXpZ?=
 =?utf-8?B?d2tzMmI3Mi8vTURSK1dwaC9xck9ZQW9YRTA3b2tYclJWTHlQMmxPb2VhT2JH?=
 =?utf-8?B?akdGTzRTWGFaY1VMM1JXRmZhdGEybk0wRm91NGllcThScjhmK3BBR0pBZXli?=
 =?utf-8?B?U2lUQ25TRVBGSG5JTm0rSXBlTVBJUTBmQmprK1F6elFRWFlPeGlWOEg4OUxw?=
 =?utf-8?B?NEh2OGdWZHpBbzlpeXNITVgzYmVZZ20xRWhMc1c3R0xEbnZkSGJ3THMyeExY?=
 =?utf-8?B?L0kxVDdWNlBuMlo3K0V3amFTTzlxN0xsMVppdGpBbzRIcmpFNDc1UUZZVkZW?=
 =?utf-8?B?a1JXUk5Ob01uSnhZWHg5QVpvQzBUQzNJYUUvWHdwSWowVlRvSzJDbXc2R0hD?=
 =?utf-8?B?M2FKdGRHdk5RYzNHclJQblZlUWRmT3hYNWxRekN4M1Ntb0dQRHdTU3djbHU0?=
 =?utf-8?B?aWRmWDNTS0hRVkZ1NXJ6RnJxdUVLSnlzcUtBbXNXVHhYZU83cW1TYmxTRmdM?=
 =?utf-8?B?NVVxTm8vaGg3bE1FRDRmQmlYZ2JsNDh1ZGdaNnBKWlpCLzZFUllnYk1PVE1Q?=
 =?utf-8?B?dU5rODladEFzLyt0ZXpFUHVlbFdJMyt0YWJrRStoM0RmZWlnVGdyalkwaDlK?=
 =?utf-8?B?UTNCWGlVV3ZJYXFFTkdSTXFPV1lhWFBhQWdyV09FbGQrYjNzN09iYkY1cEQ5?=
 =?utf-8?B?NjBKSGNXYzVNT3dpMnRxcnRjQ2poVlQ5dldzb29TY3Jsc1JyUjVXRG5zNk81?=
 =?utf-8?B?UjBUWGU1TUxUR1luMEFYaDhkVjlXa1NKd29lZzVSOTZSVWt0c05FMGJoTzRL?=
 =?utf-8?B?YzNqaktBTTB3MXB2TzI0T0lxZjFjWE9ZMW5rQThFWDhmTTI4YUE0SWRCSUNl?=
 =?utf-8?B?cEU1MTY1M1B2Z2ZmRlkrUWl1amV3WGsxZFFIQk5SRmJYRjVLY09NNXlDWGJN?=
 =?utf-8?B?bDdWQ0NVUWJBTlVRMkN4eU5scERXSWVKQmp6QTZhYm5TWU9YVEd6cDNMSjQy?=
 =?utf-8?B?eWVGVEFXTG9wUmlISVNXV3hpOVpPQnRmWGNhUmhYd0FkYUVFYXpDY1IxbVd6?=
 =?utf-8?B?NDBqUW9ieG1paE9qNnlxWDE3YWlwZS91Z09EbS9laFpGN2VjTExOb3hMdi9I?=
 =?utf-8?B?RmFxV01mTkpRcWVSZ1BCckRtYkUxRGU3S1JXMEozeHBaQStFL3owQlNPMWdG?=
 =?utf-8?B?cHY3NXQ2NzFmcUs3TVdBQmRrL0ZHVEZFQm1vT1hzM05pdW0xSnhRMW85ZXd2?=
 =?utf-8?B?ZDd4UXpVM2Y2MWVZa0h3YStPckNVR01CNnRpcll2V0QvazRkc2M4aHBoUlB5?=
 =?utf-8?B?QkhoU2ZtUTgzdTFhL1FMZE5nekdUakZHbmE2N0tqaE9kZ1NEdWFaV09NYTMw?=
 =?utf-8?Q?jZjnRBmglAjo9SLtMF/mxp46YmzxtTeQ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VkpYK2syL0lOY0Q5RElrbVAzOElGMDFhdytseC9rNjllcWwvbC9maWJKQUFO?=
 =?utf-8?B?K01nUFFOTnFpUjJuUHJEaTFxMVBOcEwvc1MxS0Z6Umt3NStwMVFMcXl6Y3Ni?=
 =?utf-8?B?bC9WaTZRaE91dGxFY0tRUVBNaWN2SEFCb3FkMUE2Wk9aTjQ5OHVkV3dQQ2Fm?=
 =?utf-8?B?UlJZWmsrTTVQWnFkbCtQcWUzaXdaZEo4YjFBQklzZWkvN0ZUV1pPcEd4Qnpz?=
 =?utf-8?B?ZUdlTVFna0UzLytWd0xIc1U3NGNDT0thMFBvUmVoa0lHSEE3YjZ1SWFOOWhB?=
 =?utf-8?B?YU5LQUtPZFBVTEZzSjJPa1EwZitydlpwRFFuQW91THBFTml5MzVCdWV0eW9R?=
 =?utf-8?B?VTRvTldTUE10aGVUWTZycFdzVm9iSU1nbFJpM0piZWYzaGhVcVljVlFCN1Fs?=
 =?utf-8?B?bXVNZDErbGZ3WkJVQWxpWFcvWTkyYWZDQnptSGpZL1JMTnMvclAwaWlsT0ZM?=
 =?utf-8?B?Z1JXZWdEVktaL2kyWFY1R1dyYWZkRFV4OXVxU20vNjM0YjhQM3ZDenRTM3Zi?=
 =?utf-8?B?YTZVN1B3aFI0UG1ZYUl6WXRHTm9rVTBheHB5cDczV1BMTHJHZGpPbk9uZS9J?=
 =?utf-8?B?cFBXNnIzU0RIc1hoTlA3ZWU3SHcwQy9Gb0xKN09pVVVzR1BWQVgwRDE3NnUx?=
 =?utf-8?B?MzZvUjZXR0Myb2FFbkJTMU9Xc2NYNzhUQUsxZWJSaFdxYXdzb0Fvc1BnV2dy?=
 =?utf-8?B?ZklHOE1xcFVSall5QTQwMVAwckdYUnFSQmhVK2I3ZUIxRTFKOTJFUEFGMDFF?=
 =?utf-8?B?MjdUdmpMR1o3Qy96WHVBY3RCQ2ZMUVdtdjE0bjU2VUUyN2I0S1QrYWFzY0kx?=
 =?utf-8?B?NVZuWGkwOWNhYytTd0k3U0h1ZFd3RGVZbk1MMnpzNk9kdS83Zlk0N05xOVp5?=
 =?utf-8?B?MlZ6RW4rckt0NXZnSlNtYU43Y3BmbnlRTzhNUjVtekdMWFVPbGJGTHhndG9m?=
 =?utf-8?B?KzZGdFJNcEdvUGhHd3d4eFhYeXRSbCsxUGUwTG5Qb1MzVXg1bVpBU2hJdzFa?=
 =?utf-8?B?TnhySVJ1L1FDWHZSWVZBczFPTlg5MEN5NS9zY2FqYmdYMDNmdVlVUXY1TnVC?=
 =?utf-8?B?LzIrbUxTQ1RZNC9UV2RWRnEybHBQNmJJVTdlZTlyUk1iZHpyUEg4WHFvWGRT?=
 =?utf-8?B?VE5LaGNidWFqOTdXTXREYWdvS0dSRk9wNitBKzcvYkk4eDdKWmw3YVlJQmN6?=
 =?utf-8?B?Zitza3ZsYjdEUzdOdjJMYTlBbWJhMGJDd1NaOHA2M2Q1ZGtVOUlRZ0JNbCt0?=
 =?utf-8?B?TGlOWlNTSURqeHFOZTdNb2dmc0hMenNwVksyQlVMeVN3M00xaEVWTCsvS0E5?=
 =?utf-8?B?TnhXNXRJdUJZK1V4RWtTY1U3bVl3czdYYmVqU1hMZUVJUlMwQ1JjdkFId3lF?=
 =?utf-8?B?c0VnVU9vSk1wSS9icUxOd0Y0bFNHWEh0MzBjV2toMlB3V01qbDVHNk1uVUV3?=
 =?utf-8?B?YVN4TXhnbStJZEliZjR6eXhhbUpYc0M4bThTcGh1enVFNlFYa1c2WnV5K1ZG?=
 =?utf-8?B?M3cxOVNvZHhFTEYvLzJzWWpWV0c1ZGNVOW1xQS9aeXhXUEwzcjJ2MVZJRGRB?=
 =?utf-8?B?RmJEZjhQWTByUC9RRmY1U05yalIyeDVWd0xTeWY2TG1zL3g2R1BDaGovVE4r?=
 =?utf-8?B?S29pZTNwQlE0QVlHOGR3NkNHZXJTbzZVVzBYOUY4RXFOdjBTTjJaaGdLb1NS?=
 =?utf-8?B?MENGT05jSHNvcTZjeGFtS21NdEZrWitqU01UUkU0dmphMjArdWFNSlI1cnN0?=
 =?utf-8?B?TzBBN3U5bVN5WHNyVGI0SWs5UW9NTW5vYlpXZWVsU3dYWmpSeUYrVzN3U05t?=
 =?utf-8?B?TUJ3NUozUmRwWTFaTHpES1I2WUNxeS9CYkowc0NGY0VkQlBFU1ZrUm84TXo3?=
 =?utf-8?B?UitYNGNIRHVoMm84cXRIbU1HNUwyd3ZrS0V2YmJMTUp6SHhOZzZlQ2V4c2Zn?=
 =?utf-8?B?bjdGR0dnc1lLSDNIcEhPLys2a1I4MkpNZkxGVWZSWFhrSmxWK0hEaWdMa2hT?=
 =?utf-8?B?RXg3ak9GZWhtbkZOZE1VNmlTZHFTaGRPSGlqS28yUlRtRzAvRDViOUlzNVlw?=
 =?utf-8?B?aGY5REhLZkM5cVowRThJVlhPSTVja1c2VUtac3BkNE1ybHpZM25WcXJrdi9q?=
 =?utf-8?B?VUFMY1dhWFdibmZ1NExaV2RneFJhMWo5ZU1udDZuWEIwaVJ6bURvdEZ2TWhW?=
 =?utf-8?Q?dpl2mj+jFa9sZNYWTwY4P7o=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ab725c0-9279-4a0e-04c5-08dd1f50cda4
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 10:43:26.5326
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tk9gheh2RGdsdXkPTzbiAo2ez/PAJwne8OYlXVkj80ji5ADSHhE5p4tMX5ng95tYrN+tom8wE6GI670mhPLsdT5hToEbOfGN5UQhjOKrcfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10841

The Rockchip RK3568 PDM block always considers stereo inputs. Therefore,
the number of channels must be always an even number, even if a single
mono microphone is attached.

Fixes: 0be29f76633a ("arm64: dts: rockchip: add wolfvision pf5 mainboard")
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
index e8243c908542..c6e413731241 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
@@ -53,7 +53,7 @@ hdmi_tx_5v: regulator-hdmi-tx-5v {
 
 	pdm_codec: pdm-codec {
 		compatible = "dmic-codec";
-		num-channels = <1>;
+		num-channels = <2>;
 		#sound-dai-cells = <0>;
 	};
 

-- 
2.34.1


