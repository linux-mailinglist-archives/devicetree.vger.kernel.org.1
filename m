Return-Path: <devicetree+bounces-256611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 645CCD39C3E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:04:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2A60301FF55
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDD5224B05;
	Mon, 19 Jan 2026 02:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="fxPWPNou"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA6C21FF23;
	Mon, 19 Jan 2026 02:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788216; cv=fail; b=pXX4Xsbn/UUFAZ/OyXiZqWKWytMGbW7Y4N9GrTbxC2ht79B9K3pXJSwSZHkpJye0m6tjEZWhlyl+NcWCWBVoDqDnkSgwvhDtdJcWQl/NSOj9Yg9XWoGMdEAwhYEqXPdUYeiPyEM/1nhSucmDAVripSF+ezblzy9L3oCkLeHiydU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788216; c=relaxed/simple;
	bh=b0FdWTQ6nuDK06knUKXnX0hbBqkpWHP7AkrWMtiqjv0=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=eGY+JYi6ZkloZiNCY6DOGgj/RJxCmxT54QZpcxcf4Gm+YNazi7nqvnwOSnK13qk9BCxGYyT3IFtYsVgLOuyUDxFUbxorLAXfohvNMlLC3HXnhSi80lSWgd6zg8ZPtC53raJubbW9YEz4RyTwn6uj+aZMVRc0NyGsNplqnAlgNMo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=fxPWPNou; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RnJ2zOtyLDxBIPFxdJ4kQLCpX1Ij10siI4WKGLnPne2OPIeQ7MzAzLqAbm5B9QZ3iVPP8n4wPDx/EmVI+KjnvVe9/ffANaR73c4JP8OYPRa9nY4J1q22MdB2Pvo1d+NjygSNwCm0CtDOW1ZN5LVa2anRpAbw3sA9lMIEk/xHdgbJ7KcIZGXkIMaBTaYr6PE5pQsp1dPa7tMhhKlQbqq0nzeTzJtkt9wYFdmN2zNCX+IZP9Kp8MHQxKoaKPm0qCJDSV41dwSvY3wE/gez1pYOj6qQ61NNFoyyEw4+4KUhtg33qKH4SOu4Qjw/4ulLOl5aGTE2fi/lW9JeuddE40AllA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HDvAhONAkWKBx/FxbHbTXv8kxL0CINbkEF2R/uoiv1g=;
 b=n4Q/U0HzNcaUaySm9UqONmY+l+XLW4g2GWkBaa7rfsbuIUC/JpV340uNP5CdL/GVk1dugT9vXc0qUzA31m9mWXsCpBmTaZOVfWpLizfgMmNnzVRK2Gi54tBdoJRM3uK/DsmjHzu0e0RSIRdnOMyCRP4hJetCGvQVlm0JNCw5Nmmh3g8a0xTtFrn1TXgUVSPmKnYhfqToHo7GfkpU7pq5zvj8A9t4pQoY55E4QBAYe7iqvypT6pX2gDvuPY/OoykrXiaindQg1nSiQ3z2FzYuPq14HsPCrO//hj7u/ViMXs4CTaqtQefPH0GVyos7Iv1FP7KmCEkicFkiaXQIZDnSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDvAhONAkWKBx/FxbHbTXv8kxL0CINbkEF2R/uoiv1g=;
 b=fxPWPNouSt0qT9Pn/5Ya5fEXtOqCB3wYDCysVfzq23wIlcnfzbgXzjVBaHwLLE412cdFbpXo9zy3AfastmUY6RxId9dDbrV+Xi4DZlGCed3QS1jOKFh179ymiZKBR0yN+zsrzuaurTuq8G1/LOrP5zBdYrTnJQvp1/on/rsQzsqRNRgeWrBUqdt7waID/pY6fTTltb5xGn7wcxmdTUkav/ls7H3byX1aTKYeHcEFJ8Dv1yFortaM3bC3E7eYWVQtiGyRUvryb0FsbJbfdm5THps32jBYcnSEt1LDjSOd2oi4P5Yn3RwhJhl5yI9Kg45o0J5kTfmj9+h30IymBWG7lw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:23 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:23 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 10:02:56 +0800
Subject: [PATCH 3/5] regulator: adp5055: use
 of_property_read_[u32|s32]_default()
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add_dt_default-v1-3-db4787ea7a9e@nxp.com>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
In-Reply-To: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG2PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:4:91::20) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DBBPR04MB7658:EE_
X-MS-Office365-Filtering-Correlation-Id: ab64a2b9-4c2e-4dea-128c-08de56feed0d
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZGlNbEZ3SlBtL0xCd2VDanRmMWVFbUt0MTl4YWRpb3ZTZEVFZ3ExK1pjT3NO?=
 =?utf-8?B?T29lRE1iNnJyNytTc3lCOFFORE5UajNDYnAyRmhFbzdvOCt4eVlZSm1mL0tU?=
 =?utf-8?B?R3dHYlVwMEM5cTg4SzFuMWdRWkNrZ1poRlZmaGgzR1cxaG1Bd2hvNXBIWldk?=
 =?utf-8?B?aE4vb0FNNG1aT1pyQ0dwYUREOGpYaENmYjlKbXhsRHNmMkowUWZzTkZwVUhI?=
 =?utf-8?B?M0Y1ZTdFaUo3TEFGQnk3YzFJMG9sWXpOMVZhcFZHbUcxMXl1MnB2WWVyZHFS?=
 =?utf-8?B?YlNsUjBBcm9IUllvNk81MzRtallZZlZ5M3dSSXExRXdnUy9tY29LNjRKK1Yx?=
 =?utf-8?B?V3h5NGV2K1RiM2wydFRnTnBRMWE5TXR0SWd4VHdoKzRDaHl5MG1BWWVob01H?=
 =?utf-8?B?OENPSkpTYWNVYk9HL0pYUTNIVjRyQTZXb3BzT291bDZaNTRwL3c0SENmVXRI?=
 =?utf-8?B?eHkvMjhaVmZHYnh4UDJuZUg5TFZHY3UwdFdPN2Rpa3dMMExYVTEvcVpEZllZ?=
 =?utf-8?B?cXF5RDZpdEhZVmU5QVhjMkF5bThNL0RpNCtGa3hpK1BlNUV6OUlYekxlZW8r?=
 =?utf-8?B?RVBUQ3BIUUxFMTNkQXZMd01lRXZZNkVFYmo3Y04zM25DNWoyRnJCaGpadG9E?=
 =?utf-8?B?TUdpVVF2ck5CcGRWbU1BWDREOWMzTlZhL29oQ0E4TGJuZFh4cUVNKzdYVDJq?=
 =?utf-8?B?TEREYXF3M2I0OEFyQW9uOVI5d1hrVXU2UldHOU55SUFkeWZJcFdVQWVCbGpp?=
 =?utf-8?B?YzQwaXJTOHBIaGg3MjZLRVBISTZQeXk0d0hOVzg2S1NsdzBoRmtYMUV0SWhi?=
 =?utf-8?B?MzZvQ3VlcDl5blU3ZVlqWXhkQ2hibWMyZzVJYk1vWDRhMGxxeTFNcm9QOVVo?=
 =?utf-8?B?NXQ2MzNTajRnYXBiRUlIYnJGMFIyU3RtMGVNUkRXY0pBbzY1anJkaHdvdURT?=
 =?utf-8?B?bWtGVE55UEhqZXJoVHhLN21BaDgyUHk4cjdhb2tyWEVJS000YkZNMW90ZTg3?=
 =?utf-8?B?WW1aTFZNVlJjamlrOXAraExkMm9YdjlHTG96UmZNVGhqMzA2ZldwUVp1N1hp?=
 =?utf-8?B?eHNETmw1S3RHQkYyQVc1UVVQeTJNNXlEcEZjRDcrTzB6enFPREpiUkh1RTJX?=
 =?utf-8?B?TjdMZkR0SGRMUTlqc1RYR3dxZmNSZU9yOEZZTUFISWszUURXQmwybHdUQm04?=
 =?utf-8?B?SlBCTGdLQXVjdjZUVzhDc0l2SzVLRzhCWU9VQzJSV05rZ3NZeWFOYldYcGcx?=
 =?utf-8?B?VXoxYjlPT2pSTmJvc0JmTmdNUzBOWCtzTlZKMU4rakdLQ0V2VzhyNVpVTXAy?=
 =?utf-8?B?bmUrNDcyV012T3V2ZXE4NUlsUVVSb0ZqbUt3dHJVMVBuU3lTcVpWL0lLenkz?=
 =?utf-8?B?YlNuSHYxNlNhVTdGWks0NXNTMUlaelFyUGRleWJkVGlqSnFXcFVPcmNEYWwx?=
 =?utf-8?B?TFlQaTRuSE9ZeUFuVk83RUlvY3BoU1pLV3d2bjJlMngxcEJQdVowR3l0eHpK?=
 =?utf-8?B?VmsrdklpYW8yczVKcGpHRXZzNkhBOFNjcWRaVExnNTFmVnVvd3cvTWYzQ05V?=
 =?utf-8?B?VWcrS2xCMG5Id1QyWXpWM2Uyd2J6V3BMSEF4SzJ0WmdaOUgrWVd3R2NzS293?=
 =?utf-8?B?cVFNRG9FYXRoRGFIenpoYnJrYkVzWFhkTXlYYXJxSUNxbjErK2lNSGpjQTRP?=
 =?utf-8?B?bUhNYm9jd3A1eVoyTUZEMjg1R2tlMjFwTFZhS3dRTVIzMHVLVjI5VUpSMGdO?=
 =?utf-8?B?NHFkMmg1UzZVMC9LYzdhaitvMkF3allkNE1pZkk5MVR0QXExdFBlaWFHRXpu?=
 =?utf-8?B?SDZFZWt6bWZWS0Z6QjhmWHVZWFE3a0dialVYdllRME51Smd1TXVMb2Nvd0N0?=
 =?utf-8?B?STN5Ti9wbDNiWWNLQ3MvdXRRYkVCNE9MSFcvSnlvS05hWU1kRDlLNndhanVE?=
 =?utf-8?B?bnZIUVlDUHo4eThIWW1nR2w2aHNkdzhvNmNkRnJIejZsYnZyak1PSzZjSmls?=
 =?utf-8?B?eVVBbjFCbENpRzhxeEg4bXBwa0h1Z2QrWGJTWG5abkhTSXd5a3BWa3BPUUdJ?=
 =?utf-8?B?VUw1K0VrL0twY0RBWjgrRTNVaWU4cTdrbnFTN3JjS3VyY1NxdWhia3Q3dDBh?=
 =?utf-8?B?VjdFSktNSDlUMkZ6VHRuSHlPS285QmFkV0Z6NFN5L0xveHFRekw5cjVjaW01?=
 =?utf-8?Q?zFBsN1xz146RD3lfmH0Ij3Q=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cVFEU0NkVm8ybUJSM1NkRXdRM0UxczhTTEZtNTdyb0xTbjZBWG1MOVE3L1pO?=
 =?utf-8?B?QnFITEFNUDZNSTB4TmE4cTJjNTFkdlo5RDNSeXRTWExHSW9MbzVPaEZoVE44?=
 =?utf-8?B?MWFCZ0N1WnkvbEgxalBuc0IzL0RBZFFVNGZWWHQ0cUFSM05WaEdEVDl5Vm54?=
 =?utf-8?B?TXhnbkdBaFUrcE45d3lDcFQ4Rk45ZEx2cjkyNWliclQ0ZXR4eGVpYnJyS0xX?=
 =?utf-8?B?ak0zWWZPNko1MitsYnFBaDZLNGZRVDR2WHJUL1MzRk5RZURqdklORlVhcmJo?=
 =?utf-8?B?YkdzSSthSkFqdzQ5Ti9nalhRK0tXa0hQdUJkOWtENVdKUDBwTXcvWi9DUFpv?=
 =?utf-8?B?Q1BxNzd6cjFPTnBreEN3Z3Yxc01CdHpkNytNNm9nZnV1cDVsWUxNaEVWUktv?=
 =?utf-8?B?YnRtNEJqQ3A5L04zS0JTWjlpa2tiRXpwN3M3TUtLY0VsK1NoMDA3T0NtbmlB?=
 =?utf-8?B?bDBSOFJIS3VURFo2Tk9iYXpidE5XQVZGUCt0cU52RktDaTZpU25ZMmo4Mms4?=
 =?utf-8?B?VG8rK2luSjlFQVgwVUMvSDBSenBRTkxGMFdYZnR1Zkk2dTcwQVgxamFYd0N3?=
 =?utf-8?B?emdjQnRhb0ppUTVYWm91bGpTMTVHWis5N1NtbUVwY2d3LzZPVzAzdmMwMWFV?=
 =?utf-8?B?a2FxaGpmZTM1UEQ1dDZrMUkvd0VLRmxiT2NYaFA2eGR6S1VnWnYxaTFyODVR?=
 =?utf-8?B?anFVKzMrUkt2SCtCZmptaEhVRjV1ZDExOEcrUVNjUjZmcjhCRkxMZ2VBSFhz?=
 =?utf-8?B?OUZpdkk1bnpOZ3RIdURxM0t3Rk51d1V1aXk4NzFFVnZJdVBHL0tYTTRrSGNN?=
 =?utf-8?B?RnZlN2ZVSHFHcXg0N3YyeHRQQWF2ZlNFaVk1M2FKWlhLSDNtalNtQ0xHeVdh?=
 =?utf-8?B?L3JnTDF5M0ZNUS9PTDAxQXEyYkQzQmNBRnhGT3o0VTlOZlB2OHVTUHN4RnB4?=
 =?utf-8?B?QzdmaXN1RGxYWWVDTm1OakdYR1I3Y2VEcHl0MzBkMDMwS0w2bC9QTnliQ3ZU?=
 =?utf-8?B?M0RHMitSeExnQzQ3VmF2dVUvZHNxZGZiSWdzNzFYdzZ3NUVlUjh1djF6d1J3?=
 =?utf-8?B?S0h1NjVESVVtVDFydHUyZEFMQ2FON3prdTFyWHpwOFV4cWd4ZVpKb1NlM3VC?=
 =?utf-8?B?aUxPWlh0UHpMdWh4QWl6VEZSUW15K0ZER0dmNXJlM1B2QmRZeGhtOWlSd1Z3?=
 =?utf-8?B?aFcxMk1OZDllaHVvSndRNU9Cd05MOFNVREE1WVFDL0RiVVJYNlQwQk16bjJJ?=
 =?utf-8?B?RHBjMUo5MkVZSFVFUnhvZnhNbXpoT1RjL0hGQ1VEVW9taHdyZytWS3VDQUdN?=
 =?utf-8?B?amRVRmVCQVpQRW1UOEpwaGJVWXJTUXJGekM4L0Q1NWhzRytHZi9oZnBNT2dW?=
 =?utf-8?B?TUF3ZTRRSE5hK0ZyTkxaMTh5WlFnckVwaGt4UEJGYUJrMStTdWFIYW1BZVlU?=
 =?utf-8?B?L0hYUkU2ZDhtMEtHcUVibG5teHRIc1RvMnNVaDNtQ0h0YVI1TTBvOWMyNVVt?=
 =?utf-8?B?QjJCQ0hxSlltcWFYb3JKK2Evc1V1dE9Yc0VveHoyK2pWa1VPdnNXbi9xUkZC?=
 =?utf-8?B?S1EwVVh1OXd2Vkl2VXBsOWN3ZUprdFp5dHhsdjNraEVnd0luRVZsWkFuSldX?=
 =?utf-8?B?TUV2NEQwYXdYdmZwNFo3YjlsTjFYMkJuV3ppWnR1RWhxWTdZcFBJVmFuTzRB?=
 =?utf-8?B?cWZNUkZtajM0TzhoU2VUM0dKdytUMGJyeWpBSStXK0FmZGpaUXJzTllMWkcv?=
 =?utf-8?B?aWNsNXZNb0hHWHpjMGF2Q0pqaTBpVFU2UTdweVRXMGVwVm9jdzhML29UTVRZ?=
 =?utf-8?B?dldPWlNMMWFPUjZJQmZiZWlsRGhQekl6VCtxUWRJYkpmditvblpCM0k5T2No?=
 =?utf-8?B?Y1JFUjRXamo1NHU0VlVLdUZKMElZdkFmbUo0ZFFGVzlvUmxCYTVaOEV0dThO?=
 =?utf-8?B?bENPdHdlMXFsbVN6a3dEcjlvYzJRZms0VElJWlRJcWVwZkt2TmxnbEo2NEo2?=
 =?utf-8?B?Wll3VXk2UVlXdnRXc0JvdVpSYnNUK0NnZUpJT2xpbHpDd2RJOTFnKzZ4cnc2?=
 =?utf-8?B?OE85d1o3dHVjUUhnWXlKekcyRjdTb2thZ2Riak9wU0EyYm0wRzJiYzhxMFVP?=
 =?utf-8?B?bmZxVGQ3MnFld0Y3bjRsc2VvRXl0cTR1MUhNMjROZEF5aG01eEh3eGpyQ01Z?=
 =?utf-8?B?djhobUlXMXZmYkl5em5qWkZ3WXRmTHNYMVRZMVBEK3pMY25kVUtKdng1Rm51?=
 =?utf-8?B?KzlDbzBZRHdJcnFlcDBmN2lNeGozUnQ4Vk1ZZitvbHdCcXRKd1FDVUV1djd4?=
 =?utf-8?B?dGNiZ2V5RUlpbGNENFJpUGlqdkV6Q21QQlE5WS9pOXNvMGNwQnNMdz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab64a2b9-4c2e-4dea-128c-08de56feed0d
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:23.4096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4kkP4jAva+LZj9qnqH7djgUhKdy/9XHRfxzUPYqvmUpwnNpeeRJBIlSloU0F2ceXfzQomeeuwPxKwpd7kVj4AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

From: Peng Fan <peng.fan@nxp.com>

Switch to of_property_read_[u32|s32]_default() to reduce boilerplate and
make the "optional with default" intent explicit when parsing the DVS upper
and lower limits from DT.

While at it, fix dev_err_probe() calls with a proper error code: -EINVAL.

No functional changes apart from the error-path fix.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/regulator/adp5055-regulator.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/regulator/adp5055-regulator.c b/drivers/regulator/adp5055-regulator.c
index 4b004a6b2f84e8201228e7f542d83903031e00b7..e4a6d4c15772e54537ab00bc82ce05a5b0e7dc4d 100644
--- a/drivers/regulator/adp5055-regulator.c
+++ b/drivers/regulator/adp5055-regulator.c
@@ -218,25 +218,17 @@ static int adp5055_of_parse_cb(struct device_node *np,
 		adp5055->en_mode_software = true;
 	}
 
-	ret = of_property_read_u32(np, "adi,dvs-limit-upper-microvolt", &pval);
-	if (ret)
-		adp5055->dvs_limit_upper[id] = 192000;
-	else
-		adp5055->dvs_limit_upper[id] = pval;
-
-	if (adp5055->dvs_limit_upper[id] > 192000 || adp5055->dvs_limit_upper[id] < 12000)
-		return dev_err_probe(config->dev, adp5055->dvs_limit_upper[id],
-			"Out of range - dvs-limit-upper-microvolt value.");
-
-	ret = of_property_read_u32(np, "adi,dvs-limit-lower-microvolt", &pval);
-	if (ret)
-		adp5055->dvs_limit_lower[id] = -190500;
-	else
-		adp5055->dvs_limit_lower[id] = pval;
-
-	if (adp5055->dvs_limit_lower[id] > -10500 || adp5055->dvs_limit_lower[id] < -190500)
-		return dev_err_probe(config->dev, adp5055->dvs_limit_lower[id],
-			"Out of range - dvs-limit-lower-microvolt value.");
+	pval = of_property_read_u32_default(np, "adi,dvs-limit-upper-microvolt", 192000);
+	if (pval > 192000 || pval < 12000)
+		return dev_err_probe(config->dev, -EINVAL,
+				     "Out of range - dvs-limit-upper-microvolt value.");
+	adp5055->dvs_limit_upper[id] = pval;
+
+	pval = of_property_read_s32_default(np, "adi,dvs-limit-lower-microvolt", -190500);
+	if (pval > -10500 || pval < -190500)
+		return dev_err_probe(config->dev, -EINVAL,
+				     "Out of range - dvs-limit-lower-microvolt value.");
+	adp5055->dvs_limit_lower[id] = pval;
 
 	for (i = 0; i < 4; i++) {
 		ret = of_property_match_string(np, "adi,fast-transient",

-- 
2.37.1


