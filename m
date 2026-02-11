Return-Path: <devicetree+bounces-264966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPi+DCWijWlh5gAAu9opvQ
	(envelope-from <devicetree+bounces-264966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B73612C035
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0B5E309EEB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E9EC2C21C2;
	Thu, 12 Feb 2026 09:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="MLFOW+3P"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010000.outbound.protection.outlook.com [52.101.69.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0D23EBF37;
	Thu, 12 Feb 2026 09:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889743; cv=fail; b=MmEOqqV9v6NH0sGOdsd8LCyHS7nY4ElKbvjTADGUaXwzcpI5CavtsMAc9mI3UQWTDwD9lxHRBPmREtjSMeUcnw37IU57bn9V7LcqlN+xCSJdERkpXIwQ/cFGZotnXtY8CRWzIQV+gE1Sq8m2A4j/4SbqWCYb708H9Lm+LyalhHw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889743; c=relaxed/simple;
	bh=ZuSNol2SYMNV/0K//bBSfgnu6B8EFaGW9AhbgRwcCeo=;
	h=From:Subject:Date:Message-Id:Content-Type:To:Cc:MIME-Version; b=dy956xvmnwp59hDV6JAlWXDY6cOHrkqVRc+Gm//dh2WVvjkmzG7wccLsqRTuRic/IkS52WxbX/WugSm+78d8LSGjwBY3o61/VskOrQnBzUctdZjTLca5rB7FNzQHTNrmU8QSi1AYDh0ObfpID2J8Wa0dCw6Bpp21fbzRWHVqHaU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=MLFOW+3P; arc=fail smtp.client-ip=52.101.69.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C66jdlXpFSRW/0YAtJTwBh5Vxwfk+/TGxhPLzF36HT4RyJWEWmEVwnnk8N+Q1LnZ/UW1AvB5qQKN6P4llsFSebTIGhQHw7Z1Qbe3M/SQ3oXtX4WwoRT4Q5j5qRDyou5DRNYXvW9Qt2/JXesfcideVwbDldg5u30cMCV35xEnr1DSIEA3c756CTADvcCjIB9H/aQprjnAoqD2yZtn1oe5XkmXJWmsIedoU8Ks8pGNclWMYSI8RgeVfISqamT47wLBGkfraS16f7j/FyJlvQsrwf025mG7kQj+rkzcx9dhi95HEDyUa87F5Y6zFGtXTctsGRYjl3zVgVyqxKyhXd1X6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ga9Ini35q/LTz0dh2h1ttPBtPnBpOxq2SjGUO8d6ihI=;
 b=sRC+IXqlKaDBb3BwMssVLzwMIkSVyyyR0UM39PkDb5kt/j2P9Tu2IgS2QsH9wy8Snw8+WLgRz4ZX6Q8cqJkMbnFRMwmXZtHHKc66fsICVvzX5TGrnuVZvOPD0m7jh20eXqtYuNZhqri0y1VrdDVa+Ix6iU0kHtXIOedEUwjqZIn2w9oh4Ln7hsBwpNLvBD+SZ4kWFK10tofVH3yNtJJHx79VJjTf8HPBiQT5TduUIvHaJdvMlh3OusXQPxlP4t4NPkY+hSROPE7L2R59HY7w58HTg6milCAtEBa42z0ey+m2o7FoY+GypLOgAKwcAFxJ5HM6zq0Dh8ykQY7G++Fleg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ga9Ini35q/LTz0dh2h1ttPBtPnBpOxq2SjGUO8d6ihI=;
 b=MLFOW+3PUOQVpp4kbtlM0RsQGF+d+lnl6xRU2Szx+F4d4AJmpvWINr0m2IL4QtatBRhpiwW4ZFhmGRP7fXwaXrFK/oQ+lzX/jYqAsxdXlGxxV9mj5+KbSO6GzuFoquu1HEoePLmKvCeIPIPuRIrKQrt5xKaQPmpZTmJVFsexMYotuWY5+0/JxGnzvvkopQu1qofOqlWJTG8+FS+hI/qvuLTuR3c+Qn6kHEPcpck0dt3t8KNmqMoRxxWv+7KE7q/aXjbeg7SKSSqEu6CXQ/X6g0vPq/wqOaWO/AHHu2mlXWAfiZtBNXAKF6oSJu6itfE8tKr4AuFgtHDRLUmHArCf0w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8556.eurprd04.prod.outlook.com (2603:10a6:20b:437::22)
 by AM9PR04MB8556.eurprd04.prod.outlook.com (2603:10a6:20b:437::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 12 Feb
 2026 09:48:58 +0000
Received: from AM9PR04MB8556.eurprd04.prod.outlook.com
 (fe80::f8b:a113:369a:3d56%5) by AM9PR04MB8556.eurprd04.prod.outlook.com
 (fe80::f8b:a113:369a:3d56%5) with TransportReplication id Version 15.20
 (Build 9587.19); Thu, 12 Feb 2026 09:48:58 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Wed, 11 Feb 2026
 23:13:09 +0000
From: Frank Li <Frank.Li@nxp.com>
Subject: [PATCH 0/3] ARM: dts: imx: collect some simple fix for imx2*
Date: Wed, 11 Feb 2026 18:12:54 -0500
Message-Id: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPYMjWkC/x3M0QpAMBSA4VfRubbaxiSvIq2xg1OMdoSSd7dcf
 hf//wBjJGRosgcinsS0hQSVZzDMLkwoyCeDlrqSWilB662N9QdbpnVf0F4uBgqT8KZHWZjSybq
 ElO8RR7r/ddu97wfzpuWGagAAAA==
X-Change-ID: 20260211-imx25_dts_simple_warning-d5be0354a084
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Alexander Shiyan <shc_work@mail.ru>, 
 Shawn Guo <shawn.guo@freescale.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770851586; l=849;
 i=Frank.Li@nxp.com; s=20240130; h=from:subject:message-id;
 bh=ZuSNol2SYMNV/0K//bBSfgnu6B8EFaGW9AhbgRwcCeo=;
 b=zhbsOpi1rWTWOjSeh3aRQJtvCTWGQ2Lgajiogyq3Ln/gfK1XqCVrTgp6lpxwSuoecyvA5SjiL
 mYhvc3/wn8kDW4/GUCexSwjzjXgZ8M3ZaCJI/lIcIZG75jzhc+VIVxB
X-Developer-Key: i=Frank.Li@nxp.com; a=ed25519;
 pk=I0L1sDUfPxpAkRvPKy7MdauTuSENRq+DnA+G4qcS94Q=
X-ClientProxiedBy: SJ0PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::11) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AM9PR04MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 92fc7708-dd30-4004-2c1a-08de69c31f34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|52116014|7416014|376014|19092799006|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OTljaVVYSTFqeEZVK3N4eFp4c2Z5eTZuUnhGWU5Fby90M2p1U0w2YkVwT1FC?=
 =?utf-8?B?SzZ0M3dYbGlJN2pwSUhjZzFFQ1Y4RGhSaE9WRTc5TE5NUC84TVdNMUtkT0E2?=
 =?utf-8?B?UWJXSUkxZmpSRnViTkpsM3FLV2JWSlhOT2dUbUNTUmdoYlJGWGJ2M3RiVy9k?=
 =?utf-8?B?eG9HdVB0NStNTi9QZVVsNWc4bUw2NVdWaTN4aHNDUHdRSGxNeDU1M0hBVW1G?=
 =?utf-8?B?cjVNaDkxSFlvUTM3dmdla21mM3J5NnYzZFY5Ykl0dEJuY1RLbUllQ2dOVURq?=
 =?utf-8?B?MFlKT25nQTUveXNFajdKbjlHRzJ4QnZsV0R0NGQxNzV5bnlVZkdOT0VuSkhB?=
 =?utf-8?B?cVNEcDlHbjNlSUVHR0ZPNWorZ2JMZEZKbnVxbFJVRURNTHYzc3d6b21Id3VM?=
 =?utf-8?B?ckJtR09uakpOL2k2S1R4S0Q2aVoxTUl5RmJsakZsVXMzbVdXUFNPVVFIRFJ2?=
 =?utf-8?B?Z2hyejM3R3RUamRlTjdvckc0MXkveFdLR2dCLzhiNlFLN1VnNXVkOElCaWVx?=
 =?utf-8?B?TmtrMDdlVHVZOFByS001M1BUUy9PWkhhVkJtL1ZDa1pXRWFJYm5zU2VQUEdD?=
 =?utf-8?B?TWpEVS84ZTNuYytCTWxPbGVVeWRoT0hzR3JVUWE2QThOcXcvNVhTWFU2OFI0?=
 =?utf-8?B?RlpVdkZEVmNoMmsrSVk4alhUMVg3dDY2M05DMWFWbzJHMlBCUStnMCtVL0VG?=
 =?utf-8?B?cjBSNm5SdFVtTTAzRW9MSzZQNWh4WGJpZVRaK0xZMEp4NnloTnF6Z3hza05t?=
 =?utf-8?B?OWZMWjd0dDFzQzF4dzlTWXgxcjdNMFFSQitOTkduSldZQTRkVGtCcGtJSFF2?=
 =?utf-8?B?WTRXSTc3bytqM3REbCs0elM3UHlKSTdJZURJZ3JhYU45NWJNSEZNT0RHeUNm?=
 =?utf-8?B?UEFldUZVVXBmQ0t3SjZzdXowWElrd2prcmxqRnFSMytZcTJVdVYyRk9xNDhm?=
 =?utf-8?B?c2RKbjA5aWI3NG1zRktXZkwxQ3M4TTFqZFRiaUx4ZGR3S21ROXd2SmoyWWJR?=
 =?utf-8?B?UGZnWUkwSWgySHJzbzk4ZktuL0t4SXhxT2Z3VnJPaUVRb1lFQmhid3Via0xk?=
 =?utf-8?B?bnRqVFdML2NldHJCZVY2bG04ZjVzZk1MeVA0SDFhZ0dmZ1c4aHhYV01aajQ1?=
 =?utf-8?B?ZDViNmhUbHNnMFN6OStScEw4b1RON2M4Ymh4RzVXaUhPSkVDT3JZNVJsVmxs?=
 =?utf-8?B?UG80eCs2SmJ5WEZnaE1sWFgwZWRvMDZ6bG5WdjdCaXlFMnhqcjlwYmhBdHpK?=
 =?utf-8?B?NmZiMjJwQTBLV2QxRHhXN0w4VkNuMnRHOHVDcW1SUDBtVmhFY2M4U3JBMTZx?=
 =?utf-8?B?TmpyWG1URU8vSlFkKzcyQlhyeUlRVUpzOTNuV08veVozTUFQRm9aU1pCdUpz?=
 =?utf-8?B?bXFtSWcxTHRKVHJOanZEVDRBRlJTYnRWdU5LaXc3ZTdTV0ZjcVRuK0plbjBa?=
 =?utf-8?B?SHNGN0w1aFUyVG5qeG5XdDc1S0Voa3lybGFUWDREaFEvVFllTFJqYnU1Mmlk?=
 =?utf-8?B?cFNvNmU5Vm1aNFF5V1BKWFV3ME1sSEh5REE0eTBxQW10ekxMMkFlVjFWVDE1?=
 =?utf-8?B?QWNBTFJFYUltRmpwV3doR3JFcC91WmZ6cGpwNHZCb0VjOElRT1lxaFp5Y2Qw?=
 =?utf-8?B?V2swb0xlS1czb0ppaDV3K0xsWGJSaENzdmtUdzNXYmFBTDUydlRaV0Y1VHZV?=
 =?utf-8?B?Z2k1NVVLeWlNVW1zeGlicDhEZExnWGFvTHFSNGVYbGRFVk0vOVdyQm1DV3Av?=
 =?utf-8?B?YnFBanVjZmtBQi9VeVJwWTRFWGRzQzVlaXRHSWhUSUI5bHVBSDFEZzYzeTRG?=
 =?utf-8?B?QUNyS28zWFQ0NjBOc0RmUDlnUWhHSHV3NGc0U1NrajVTNGN0WUdvZlFvbEF6?=
 =?utf-8?B?ZDhNUXQ5Qm5SWnN2OHlRUUpIb2UvbWcwS3BaSFRScWFVOXY3U1d0WGFkT09M?=
 =?utf-8?B?NFpONWRCaXNseUtIVlBLc2FWK3pxQ3poeEJWTFJ4Lzh6WXZ6OUtpTHFlYWFk?=
 =?utf-8?B?OUdERUFEUFJnY1RYUzJTYTJVRmxKQXNsS1VOaW9OeklVWWNxQWRsNVhzR1JJ?=
 =?utf-8?B?eWJWV0FUdUpWc2xubEpQRXB1S1dMVFdYY3V0WEMxaWtkUXh4c1lmTnQ1clN4?=
 =?utf-8?B?clkwTDZ5eDdSMjM3T05ha0pYdE1BN0ZtMy9idFhsbTFaTkhFSkRYOURMQVl1?=
 =?utf-8?Q?FtCqueRDeGrmmEtmXK9u00E=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8556.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(7416014)(376014)(19092799006)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NXJMSisrL2tCWmNQOTNRbEFmRnZkRnJNbTBURzdFVXk3eEVqR3JBM2FtS0d4?=
 =?utf-8?B?ejFsQk80b1YyMHpreFh1dHRkcys2L2pRUmxEL1BFbmVZbzgwUTZyNHFQNXZW?=
 =?utf-8?B?RThxVzV3Q2lteFplV0pPK3kvMXBQMGVNNnB6MDV5TGZ6RlpXVTdKb1phRm9E?=
 =?utf-8?B?NVlnYjgzaVRGSElhdDJmR0o4ampJVHhQcFIrTjBpcUJrTUpJMnVXY3JEK0VY?=
 =?utf-8?B?Slo1WFVyUkMxaGZRSW1vY2VJM2J3bjRJdXR4T1VHTmxYekwzZWhLVlY1ZkFs?=
 =?utf-8?B?MlZUc3lMY3d2NUFtU1dEem9reXgra0g5RjQwTEluY1JYRlFpNkpidjNsNTU5?=
 =?utf-8?B?ODZ1T0FaVGlvWmFERnI2dVNyQjJHZkluZUxHMk9NK2pzNm8yWVdyUHRvankv?=
 =?utf-8?B?VkNlZEhpRFRIeTdIWnNiYTZXY21MRko4VmtnT2pkalphVUk3bU44Ujc2VlRB?=
 =?utf-8?B?R3VRUEJib2NLYWhJMDhmTVc3aXplc1doSHd0T0U0YlU3aGtIc0VtcXRZVjl0?=
 =?utf-8?B?WjFFazJ2ZzVFcTVJNlFYRWtwU2RWcVliSkkrYWU5WWJzNnhOQUZURTFhRWs0?=
 =?utf-8?B?dGltbHBWV3F4UENNdVlBbUtndTJJVFBLTS9QdjFXNkxGWnJtYTMyeE8zOURJ?=
 =?utf-8?B?cnJnY1c5Q0dZVlhLS2VPZExnOFBuaFdBT2NiaERCZ3BBVzNpN3BRMGRIQnQy?=
 =?utf-8?B?YWxrZG9va0wySWsxNU9uYThiZGpNSkRHM2dLT0lSK1BTNndNdHZpN0NOTDRT?=
 =?utf-8?B?amhEUGpsQndHRnRjUWViS2pIbFFJQWt4QWhXMm1kSVlJRGI5dnU3Mmp5ZUdk?=
 =?utf-8?B?WnhPZHhFL1c0bHJIVFJTa2wreUxxQUc5QUs4SlJSdHZNTFZUbzRqZ0cvYlhh?=
 =?utf-8?B?SjZtRjA1eXJBbWN1MEJZVDV5TU5iK3pPMm9BK0V1T0c3YXV1UFFmZHN1Wnc5?=
 =?utf-8?B?T1k4L3hKL0RocUFFcWlKc01EMUJkT3Z5QlVCK29tb3ZCQUwzem5nNmV6eVcx?=
 =?utf-8?B?bVVkck9rV3E0am11YjlldDN0SlRJS2JmeTJjaHVxTDdpblY2aE9EQzJYNTJ3?=
 =?utf-8?B?MWRwb25FV0hBVnR1M0dIczFUWFRkSE5YUFZoOGlBRjEwSWQrRkdKRXpmclJC?=
 =?utf-8?B?bkdZSnd2S0JqRXcxR1c3M3BBN3d0cWpPY0dYMEhLUEdwOWs3QmgrVmdzTTFm?=
 =?utf-8?B?WG1jR3lwaS9yWEhncHdlL3V3cDJFOGsrU3c0NHprYzZ1Y3ZoZGV0c0tMR0Jh?=
 =?utf-8?B?elAvSFRNanFiQnJIM00vUDhxNVcrMFBhYXhLV2RNbWxhK3BMWWtrVklTcVNY?=
 =?utf-8?B?L09VRlBXSGdVa0NTVitFcXdTK041K2NqNnVGa0xXU3dLUEFEYjZDcm1DSk9s?=
 =?utf-8?B?OEZBREtDMlhJU3ZQMEFndU5mK002YlltZkszMlBITE00QVZ4bytRN3gwZUJW?=
 =?utf-8?B?UFhnZjVFSHdZWVFoSHVyekZDcS9ZV1gyWEFtZVR5S0NZRWlhdHI4UjRicThi?=
 =?utf-8?B?dTRmNkxOTmF3Q2RTQ0lPdlFvWTJpLzBkK2d1amNsYWtnNXRmRjVBNzJNdzBJ?=
 =?utf-8?B?ZGZxVW5pNFk5L1IvNUJoY25ueThnaU8vS1JrYzYvOGhXbzJ4U1Z5Y3ZSMktr?=
 =?utf-8?B?R0RUaTh5YTEwK2VxcW84MUJTT3VFY1RHYUdOY0NVS2QwbGVNVjZJdkpuZUNh?=
 =?utf-8?B?UHdacmRVYjNzbGh6cWM4N0pFcG1LYjNuanVZZUFQRENaSnBOQ3YrNDk1UVVM?=
 =?utf-8?B?bGNKc1FJdmZtNDFIMzJnUXR5ekNBYnZHRy9iUldoT0tmT0xYbWVBV24yQ2Y2?=
 =?utf-8?B?bC80TG1yTy9lTzlKd0l2S3hCcVZPNkdRbzJHU3pURzNncCtvZDJCbVFMUk5K?=
 =?utf-8?B?YlhaS1NKZi9SU0Z5WVRkUDNNZWVqZDB6dGdubmpqT1d1WEZwN3RqUVdpWWFW?=
 =?utf-8?B?V0lHUDZmNW11d3hYOFNuSUQ1VXhwQTdpVEFjUmV3dEFrcnczeE9HN2RXZ1Y0?=
 =?utf-8?B?UzUzR1dRMVlVK1hxWk11dXF3TnpmRU9USGYvMDlrcTBkall2NjZmZDAvcGtN?=
 =?utf-8?B?UFdlK084SVdRMUJIUWNQTDhKRG9yMHoxa2tJRGpVZW5MNEVTVW5EZ0g0VCtj?=
 =?utf-8?B?M2pWZHU0SUxyWDN2QStVN2E4amxIYzRQQzBMNDRvelIyT1FzN2lBZUI3YTZ1?=
 =?utf-8?B?RUdtQVNkR1hyMG8rbU5wR2xkY3Z2cmJUcmVIZzVoWWM4cU5MWXJ3RjJoSUg2?=
 =?utf-8?B?TVkxUjl1YlFYZmNIWWg3b0NtOG1rMlRJd3dCd0NsVExYZWx5bk9Yb0tNUncv?=
 =?utf-8?Q?LVK+ufEjpDVxMiZ3Yj?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92fc7708-dd30-4004-2c1a-08de69c31f34
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 23:13:09.7948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7fnlu/ALRSFEhsxstvlBPiYGuuT4xteIYN0wL4Jo6UUTuKMh8WhRH5uT0m6+8W7QjaUGupS/2kMLmZi9VLDyZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8556
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264966-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,mail.ru,freescale.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid,nxp.com:dkim,nxp.com:email]
X-Rspamd-Queue-Id: 8B73612C035
X-Rspamd-Action: no action

fix gpio irq issue. (review code)
fix check_dtbs warnings.

This is last around patch serise to cleanup all warning for imx2* dtb.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
Frank Li (3):
      ARM: dts: imx27-eukrea: replace interrupts with interrupts-extended
      ARM: dts: imx27-eukrea-cpuimx27: rename uart8250 to serial
      ARM: dts: imx27: remove fsl,imx-osc26m from fixed-clock node

 arch/arm/boot/dts/nxp/imx/imx27-eukrea-cpuimx27.dtsi     | 16 ++++++++--------
 .../dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts     |  2 +-
 arch/arm/boot/dts/nxp/imx/imx27.dtsi                     |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)
---
base-commit: d4c9a791ea9bca24ec28919e4703e760b24a488a
change-id: 20260211-imx25_dts_simple_warning-d5be0354a084

Best regards,
--
Frank Li <Frank.Li@nxp.com>


