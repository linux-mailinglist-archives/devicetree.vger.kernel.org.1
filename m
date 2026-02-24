Return-Path: <devicetree+bounces-267795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFCSJgxznWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:44:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D17184DCB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 601D93053671
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D64036E46D;
	Tue, 24 Feb 2026 09:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="HgqdgiW2"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013053.outbound.protection.outlook.com [52.101.83.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732EB36D51E;
	Tue, 24 Feb 2026 09:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926260; cv=fail; b=tapZpkeYF2lNcx3mBLTFyndqWMk5rIEaDedkLNrcsgzUWqFYLxLoeZEfhLq9Y85eMqshzqrbBTvA07IwHpiQDaLALmmy7YkdufMJ1U5Ma1/QH2h41+8Vfem4h4836BXIV9rheNxz3y5Py4LJnTUACy1KODoyy/RUmP0ueotWIIA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926260; c=relaxed/simple;
	bh=vF6qvHoYym5M+7gLytHdIzJwjKIM/OtZbSemfnn4u3k=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KKBE46ozDaW1/CeNSWSyWPLV3RQbd9bnXYIfBhlsFs07EY0J58lG+KeHL90ksZGl5cIhrFVbHCF7ljIPIBQ9xs1+LKDBH2GY59neT9+bFIWg1q9raIGVxlGYMv4QDTViEvJjtNDq7v4ZE3NQSZS8RgEwbnTFjzr8o2vlJooIJT8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=HgqdgiW2; arc=fail smtp.client-ip=52.101.83.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MV0yn+LkDcMZ2snfYEbmwh2mMCeS/qdjyagp40denrGdsCQPv/++GvH0ejDiLC0EkVs4TopAbVYp3YcvmU+9d1Oi1sSf+3tMKF4RHf2rx7reQZqZ6jmLIgi5Jd4rSS6mS1CIeRFDw2EFJ5tKGOYdFGaQ6zFFW0OTEbH+ypaHRskMed+/OzzgfWa6OotrizLUhGsoM4otJSNhbI94ZL654dLoLrH4RqwDRycV6WUDmO16miPefnJBDlsvmDWqbdbqd4DsY9d23VykP13hHlgE8C8S1lLUNXpzIkNNyQenBdJsQk4AK7bVyiJff/V84FsaRe6wz8cABSLgnADIPYb2YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qc2an6iEG7PFswszaBbn3PwLT1Sl9LPKCzEXowR3u9A=;
 b=XG0W4ugoOYsG9n5zsQ6THB2o0sSecrq6Yk5r+WbqsVL+e+fJ5D0PjGUjAmHqcgnvvAXT88AZnD7Ptqtm1OL+9Sux5WY3uBFq10ZsxNjRAzWchDAyysQq50FV8/OBdmkEkY600zIHt4vwmcilRAmJvAC2vr4zFyqGdEt/INPejr6Z4WYicck7b7C73m0BJ0SFCwy7zWfA5ZYrkm5NDzhET+3xn3YiocdnkD1pJVRgww2RJ9llizZ3idizz6IXkWT+MCKWNaICrPXWivaf2lDUgICkUbYq07p/nqKPHiu4rYmRdE8a2nVW38cUcR8e/HLq2ONhT/UzPWWLoT5103K9bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qc2an6iEG7PFswszaBbn3PwLT1Sl9LPKCzEXowR3u9A=;
 b=HgqdgiW2iZRcI3HARrvWQAe4QUtY0fOwPL7BbMQ8BEh5eceSf8NNC9CwuJCpEwiGcVwjrFGE6bSOwML0wD1iqZGfNvUmq+hWQ6k1PBde72uvzqNA2WME1NKk6DJE14amx4r0BNvChP9aHrPnsjX73bdDk0G7b83f71cc3fhaBf/hfW6UAhJLmQlBeZYIP+bNaJt9FbhDe+uK877SRc74JRe18pzetAOivTQdl1HO2CsIunEyyZBexa/7RRRx27As5tx6/S3qu+GEdd5sSwY/ceWRTzWkdBvvJc14AoLK0MQs+/o6GdM8CIqWrybtLOFxJCbRXS+QWncimPol3zU6Hw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com (2603:10a6:208:191::20)
 by GV2PR04MB11325.eurprd04.prod.outlook.com (2603:10a6:150:2a8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 09:44:14 +0000
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b]) by AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b%3]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 09:44:14 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	daniel.baluta@nxp.com,
	dario.binacchi@amarulasolutions.com,
	alexander.stein@ew.tq-group.com,
	Markus.Niebel@tq-group.com,
	matthias.schiffer@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH  1/2] dt-bindings: arm: fsl: Add compatible for i.MX8MP audio board (version 2)
Date: Tue, 24 Feb 2026 17:45:26 +0800
Message-Id: <20260224094527.169215-2-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20260224094527.169215-1-shengjiu.wang@nxp.com>
References: <20260224094527.169215-1-shengjiu.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0067.apcprd02.prod.outlook.com
 (2603:1096:4:54::31) To AM0PR04MB7044.eurprd04.prod.outlook.com
 (2603:10a6:208:191::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB7044:EE_|GV2PR04MB11325:EE_
X-MS-Office365-Filtering-Correlation-Id: 68ff78a6-13f7-411e-c1de-08de738944f5
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|19092799006|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?yCR869s8KBYXf7g/XOI8ngbXJT406BdMa8XE+3BEgX0HMVueQtFC5z6OXtDX?=
 =?us-ascii?Q?1B5s4leaALC43XA5Fvj07/DfQFxzq5Os9YuQFy1w3I1Pa6rfi/2n4gIFuE+c?=
 =?us-ascii?Q?7h19kC3P550HaRamVetPXqxCJAO7sU6K3pM3GOPUVw3Uof2EMbfmv8DpACpo?=
 =?us-ascii?Q?j8iHziBdyLIr0BpafislLzOJ/6WD2jiQM28TMcPtg9/0ajecjNUWlB4Sofro?=
 =?us-ascii?Q?ONI61e/iMja2Z4MCdGxw5SdSyK1FIGqxoOYmSzK0x3pjTMyI3dDd8v9F1Plg?=
 =?us-ascii?Q?yPcLML3CfwUz/VCfkhGpp3sI9pjxK7VgO+fammJjTQCKu+p3vrNORe3UYWiD?=
 =?us-ascii?Q?1rX4nUq/1Cq6XQvF7Rwn22FbvBigXsTOJ1Bg4FanwtecFm3LsMMxoc7pEvld?=
 =?us-ascii?Q?i/2sdBDlVC1N3QYApQyKglkiZoNtbRD0qkSyRQ7kWPxCyOVIbaMnen7CChYp?=
 =?us-ascii?Q?B2bDa+0uvf8GeJXjfCxak9ljCRZXcs/BuinFFKbZBkbvS10DRDziH4t14NdQ?=
 =?us-ascii?Q?l91qT0l67FHaKoXmA0wat5kkdWu0wNYfLzxrHqgtfO8CanfKT/uLnSH61lEg?=
 =?us-ascii?Q?tdfGf7DMNSUtvebRrG6FySk/g/8OJgdw1e8fXjItfxsf2bKJ5TuuWyNvu1Hr?=
 =?us-ascii?Q?2z/1xP9s3KUVd8+eka1UcgaygAFmLbscKB3YOfZwjl/bhEw843abrD4feZBT?=
 =?us-ascii?Q?SVopE/2rfw1bf60J9vIIetVyppiQPqNwUZHbOJ4zEWEv+HRkcq/rPcERms8u?=
 =?us-ascii?Q?+AzEMJcWzPiHyN5yhip1tgFM/1EjQIpdv38/B9nNXaZt/FqusGfDESmR+xwl?=
 =?us-ascii?Q?uCoGC9WfQicPS4xyfSN3UKmQARDUrkvDoJOPAR/j3ExQFa5MmhQWXUexai5u?=
 =?us-ascii?Q?BBezHuXYE4gm0eoe3Kkd25hs4Z+54CA7hTiNKZ1l0DPsta7lTL+k5a9w9vtt?=
 =?us-ascii?Q?UqmXsL/Lq8N7G1uU/gzEy7yKnoSYmQa+1lX8+viTYW9ImFeA+g468qWaHjDk?=
 =?us-ascii?Q?46R4HdbUQz1RhaQXXDoQHUD0CFJKw2kWFeKzCczMMwFqrV6lK33XguYoALuP?=
 =?us-ascii?Q?eC51JKRb/2SyqxnSDdbkgfV0Tlp+/+w2mTx/vA1ZTNJJeyMS9Bv8HYnWPC/c?=
 =?us-ascii?Q?j9q6aHsxeGAyLE01XDJG7PynW27GNyxYGrMgNdqdIvubi5qPbX/HoovyTpk5?=
 =?us-ascii?Q?qBBCswNGVRPIgKkqmIMcJYqMKMYjMtrkbpBKmLx0dqZ/2D2RLwwg3i7JRhL9?=
 =?us-ascii?Q?VVYS6+XlH/mS/G7ONh0JtrN7KNySwlK9tyMMNGkZySbpMlZEEH6da99Z4qqB?=
 =?us-ascii?Q?ivfFCGIwxLtM7JMU4UYGeal03vanz5tohGL0MppteW36eGV1G+ARsjIV2abA?=
 =?us-ascii?Q?Wq8Qalv6YGNKm7U+oYwUtsebLOnRCWzX2QzkZQZuf7zKOGWXhhzH+QeDPh5I?=
 =?us-ascii?Q?svdGv1tC0mQkO7nYXbhp87KPYHTyl2+8R9c3RAfkzNb0HjgEnIuDTwh1LnRQ?=
 =?us-ascii?Q?VfSAeyPYWzwo+ZVbrDnvx5LcrwmE0rmcxXDVToHoX6NE5/H+ndxsyJ8Jgx4N?=
 =?us-ascii?Q?VYTeTyJ1GtRQqfPmF9ocqd3WwdGWP4h66iqhV8IC3AxuUIDm+oTOMIEDJyRG?=
 =?us-ascii?Q?L/rz9ymxUDzKEy5+C7DNO4Tjcie44x5SI49B8xafVRxq?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB7044.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(19092799006)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?xO3UG8F7gtwJfl4g4fgpYE5AQ3GT4N/eTguTzvbYJ95VIBga/Y30RlVMxmf/?=
 =?us-ascii?Q?ggFYprGs0MFt5Dg/g65GHfqHE+PA8iNaBT2SqqzUI2PbEhgRcZhWmr7jk7g0?=
 =?us-ascii?Q?L3zFqZcgMaSkR5T5hfZIRLSGiBUmK4ZhZxdGng8wFd/yc67XZwhk3kPYLOIx?=
 =?us-ascii?Q?vxi2dMBLFhJrssHhFPQYUmiadd4+nbMLWPLJJkNeaO+WUIWKPDpPhjCtFhsU?=
 =?us-ascii?Q?z7B3og8SGSSHAsl90pOWuyJv0jwdwIkFiS1N8A2oSSnuVWOM0bB1PyxNCFP6?=
 =?us-ascii?Q?EUBreVjvody+bnxXF36/qBedCdibfQWDptqpX7/vNoWDYXOtE/g8sTh7qZx4?=
 =?us-ascii?Q?9pYLTZ8R/tgGGqBfpu6biNL6VTaNQFB1rN/IKUSziAtusAs2xpo6nfD9eAjt?=
 =?us-ascii?Q?3mIGl0FTuA2YpX1zXplzwsBU9Wlx4QPuR//2QgaFYuqmmVpTz2YpeuIyTIln?=
 =?us-ascii?Q?gfIFX1PH5LiXwcziH4+MlamjGyi7f/9jDx2Y5QmvVf5JVvUu7rpTfkDH3oxg?=
 =?us-ascii?Q?Oi5jyBB6Q3/SdWvE6VO14RJnsJdGq3UuqcKm/xqYXgZxJ3kXzEvNVaygMRKR?=
 =?us-ascii?Q?c25EMpUwGESx+wImkSs3NvSd36c8l8ii1/tq/HoSoP7x82h+CejBBDX2QpVf?=
 =?us-ascii?Q?yiZnq0rI97RtZ5xcNpzS0xqqYS7WmTp8I5dMcuDQ3amALJvr9vz351Qiv2bY?=
 =?us-ascii?Q?crWhQFKtI/eE1ekF5OVMYM5HyZReDUn2PlUWQjGkv7tzrySfA6vTRvCP7+m2?=
 =?us-ascii?Q?cJYrwllq/RYgCRY07vllqLmxw9REgBPfImgUG30OEMXbxNIPVcxXzZ/C30X5?=
 =?us-ascii?Q?UrEEtPFetLccd7N+uruEqeSkfaPTPJmFuP5ubedDz2NF3ZACD2jpPoAGSy29?=
 =?us-ascii?Q?eUqWxIrEnhFoH+pnvF0dP4ZTh+BatJ9EKR9nO8wp50tIavp9FSG30KPpazoh?=
 =?us-ascii?Q?Tnc8Eyl8//kG/MlcD4NqVZCLqxgy+i1HskZeZIk3omv7hCErRGloR6YmUbkK?=
 =?us-ascii?Q?Y+FmCHEo+/2kX/NMqGCMjnYJWDHJSrB3+pFNzJ85OWcDmOkWhPtR8LWhR4ZK?=
 =?us-ascii?Q?kP5D97JB+XNFfkXeFBKnGuxG9lFMFu48FX7OYtH+/4VaL85QTANWryOwRtRZ?=
 =?us-ascii?Q?5vyAO/UVU89u8TJj7CJDfr3obDlLvCw88491VDKvSdpVkRDbMkwgDShUI2Cp?=
 =?us-ascii?Q?i6R+qSaEy7GD1J9AYG8Bj5sHJe9ZdQqT1xxxh9OBYWTw6OjrK/o58iNm2e3Y?=
 =?us-ascii?Q?KjHKRO1PoXyBKGyAK1wWl6l8D6AHnCUhijIM9LB7hElM0Tr7mPpyWk9Q0OR8?=
 =?us-ascii?Q?by6Yx8EQDw7P+bhaUJ/q/weRMO/J1YbQpN2y5d10lJFCxEoDV0hQ/Fyuw4lz?=
 =?us-ascii?Q?by5pF+ETBNHcuAJWh2TKmU6QBDbTyxnEExIJFHV/J3DDPmqD4QI6wdkjFktH?=
 =?us-ascii?Q?lY1sVtOp3KhTMNurSDjCyJgl5vfdsRODNM3GqHTfGHXxownWpfiZGnULkPM4?=
 =?us-ascii?Q?wZsXg5gdWO6A5zZYtRqdvrRyQfbFD2EokrcwtWhkJlFOrETx8F2jZqAbvTcL?=
 =?us-ascii?Q?aMdZX+MjRDogFnn3d6ouZT2QiwwGLOfnS8l9IOL0iaBipCeTY6wmXTvfAQYP?=
 =?us-ascii?Q?CY70VmRJgkX1zlluRysZr4Ed44GxKplyD4Gf8wFrkoqxpsXM6Cm8z/Wmbj6b?=
 =?us-ascii?Q?ExKlrv91M1BR8K9Td4B57BXagmlEoWwu1lXKt/2hoZxYvu7Tzl/bgQTRfhub?=
 =?us-ascii?Q?Y0/vO5y7qw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68ff78a6-13f7-411e-c1de-08de738944f5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB7044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 09:44:14.1401
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGdcpdswNKO/DIWvH79WFtquoA9N5I+lQfLpPZ0mL6iPQnMujqW0JIXor2WF3x/WycQgggNLVjrudpV6bmpv0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB11325
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,vger.kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267795-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiu.wang@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid,nxp.com:dkim,nxp.com:email,i.mx:url]
X-Rspamd-Queue-Id: F2D17184DCB
X-Rspamd-Action: no action

Introduce a new DT compatible string for the NXP i.MX8MP audio board
(version 2).

i.MX Audio Board is a configurable and functional audio processing
platform. Integrating a variety of audio input and output interfaces into
the system, the i.MX Audio Board supports HDMI input, HDMI eARC,
S/PDIF I/O, 2-ch ADC line-in, 24-ch DAC line-out and more. Based on these
features, rich audio application cases can be realized.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..a205c6587a89 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1106,6 +1106,7 @@ properties:
               - beacon,imx8mp-beacon-kit  # i.MX8MP Beacon Development Kit
               - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
               - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
+              - fsl,imx8mp-ab2            # i.MX8MP Audio Board V2
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - fsl,imx8mp-evk-revb4      # i.MX8MP EVK Rev B4 Board
               - fsl,imx8mp-frdm           # i.MX8MP Freedom Board
-- 
2.34.1


