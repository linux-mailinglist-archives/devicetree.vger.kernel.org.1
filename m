Return-Path: <devicetree+bounces-264965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJhIOcihjWlh5gAAu9opvQ
	(envelope-from <devicetree+bounces-264965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:47:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F7D12C006
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:47:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC930303B17B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E043F2C11FA;
	Thu, 12 Feb 2026 09:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="OKLl21Fg"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013020.outbound.protection.outlook.com [40.107.162.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870826F2F2;
	Thu, 12 Feb 2026 09:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889669; cv=fail; b=YGBWdsp/Dn21Pp3MVuNAR5Hcj0/NuNIuukOqrZz/ODxCWkqtQ5AWk+BhQK1bwpclc/A9iEjPQbNZ4gPFyourgxRfEG/Iy/CICcy1NmwIDWB+CDMZtzLWFcoCGsQN0JbIKAG8OuaYXCxZWbbbSmi/fRiepSg27Y8qLPTuIKgw8yk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889669; c=relaxed/simple;
	bh=6FN5xRFIrCohylw5qJU8natZvxfm0tXU7lZnmXRoSGo=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=EGt3Dgx0kW6C0h0utyQCGuDGWKw0OFq7t8x6Zyxa9IV3AKhaWeEXv+tUaVCwdCam1nViJHNUfB49AsL1gWSXogZVwpbGugkhEuvMGuQuEL6nBf5JrPZKJl2pK5AYl1KtgyexzGY3lKHd7OtLsFFkb38/RRSS0s2A3xCXKjt1gx4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=OKLl21Fg; arc=fail smtp.client-ip=40.107.162.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CrdmSQfs0RrkkuJH+Gu9oa1UlsKrsu2cx01inxnCzQH6JGTivU9kER/fGLOlCCjhbtShRFflzOzJoU15RJZcol5BrlSoZlZ1L2eoZLIsEVjjZqRKvmQbm4syRAFkenUEJt5QqOi1vF6JclgL2jHq7y9uFzNOXhoCInjeLNaYvG/ZWLQR5n16v+HSGt+xTte9gArCruuFiI+OvpOMRidqU98CA/hYaKkGSb7oF+NthJS9x7JhvSPROisgXQ9wTKgS39qmysWiXJD9Yk7lMabtbbyYNv3PC5FfZSTADFnG2NfX7lH7ydBmzUnka7rZT1MJxbcyQjZIYpdHGk/xh6ujTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwVzplF+TuL6xO2KD/TycUHZR0WYTLiGSfeIttz5GNQ=;
 b=k/b6T4tWx5X4PgTLo1wFMhlyfxywYZfiSTa5ZS06yhajoR45ixnRFni/Whq9BfheInj+2uNC6Cl4Vd4SmFMvDbE+/qZ0vyVbaoTnh5N5PA5hQCYjS+pkP0K1lTjZvKaSFPu3LAxrzlqglwaTuB6DGzGMNx0baYSjhV57oiicb3FwVWAPp668tdJ5evfxt90H2NhGipjZe805Fv6dyFoBff+XUNQOm4HQAafPSImFM0pu1koMqxx94x/gnJLB99In0+fWqS5OIREXlEHyPDpVJJyEFbJNLMUzdgY5md1LeK2t6CNf4eHNlHSE8z7JCKL10OatwTdmqu6G8wvJwpzcRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uwVzplF+TuL6xO2KD/TycUHZR0WYTLiGSfeIttz5GNQ=;
 b=OKLl21FgaittBjk4nbmJUuJc/KNwzO9FHVd2H5xI3jWEfrYb5v4163QYr2H0SCD3KnesUrdcJZGeji6oZBE3gYAJvzLDIgOeSlUKG3GQL1xx8JuhXMnlqSSk11w7ZZYM+AkMD7Gt6Uwit1nw0wBSM0MEn68O231IcbNc2XLe9MXR7XK6us2wnm4/rYBYKtfYPGpnIsc8wcktZTWipLGRB4WXNkE8mD3rc4q9+5DiIJmaKJWc6P17DmMyGsNa8GheRZe2r6KsBOuRLzk0ydJr2nlYApqrcqct7VbxOFosJ/2Z2fhyNBN7XuNJZQOpWZ9qHGE0ZFjeBo7/f5GhCSnYjA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8554.eurprd04.prod.outlook.com (2603:10a6:20b:435::14)
 by AM9PR04MB8554.eurprd04.prod.outlook.com (2603:10a6:20b:435::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 12 Feb
 2026 09:47:43 +0000
Received: from AM9PR04MB8554.eurprd04.prod.outlook.com
 (fe80::3263:fc9e:6624:41a9%6) by AM9PR04MB8554.eurprd04.prod.outlook.com
 (fe80::3263:fc9e:6624:41a9%6) with TransportReplication id Version 15.20
 (Build 9587.19); Thu, 12 Feb 2026 09:47:43 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Wed, 11 Feb 2026
 23:13:20 +0000
From: Frank Li <Frank.Li@nxp.com>
Date: Wed, 11 Feb 2026 18:12:57 -0500
Subject: [PATCH 3/3] ARM: dts: imx27: remove fsl,imx-osc26m from
 fixed-clock node
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-imx25_dts_simple_warning-v1-3-7b40e1acca27@nxp.com>
References: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com>
In-Reply-To: <20260211-imx25_dts_simple_warning-v1-0-7b40e1acca27@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Alexander Shiyan <shc_work@mail.ru>, 
 Shawn Guo <shawn.guo@freescale.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770851586; l=968;
 i=Frank.Li@nxp.com; s=20240130; h=from:subject:message-id;
 bh=6FN5xRFIrCohylw5qJU8natZvxfm0tXU7lZnmXRoSGo=;
 b=8TqguYU0cv2b4jR60ELlC2FhexjAai7ChJJfhjxXnHsYEDqG17Da0Xn7LrmdVkds4b1CPdFKC
 w/OXF+NRDFTDvPfC91Gc9cPgWBN+m8QJOkKSH9XCZGgTHqOj2QKFRMe
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
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AM9PR04MB8554:EE_
X-MS-Office365-Filtering-Correlation-Id: 39d1ef4f-f841-41d0-c375-08de69c32563
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MEIxS1NBcHd6SC9Ub2YrSm9VcCtZUmVoUGFMMm14RzhJdkNTcXJKWnRlVkZL?=
 =?utf-8?B?RitWNVVGUXBsV0dZdE5MeUJLcG5zamp0ZjRmcVMrNEpnSzF3bFV4OWVhOElO?=
 =?utf-8?B?YXE3aHFVMlB2V0dVV05rM2FsMFN1bVJmM0ttZnk1U3hHbUtEZHE4alJEMm5E?=
 =?utf-8?B?ZGpuTDhCSms3Z3VIeHFGS3ZPTnRaWlBCSWN3dHZQc0ZKcnBkOGpGYnRLSHVQ?=
 =?utf-8?B?OVVmclBTUWY0ZGdLUjZNZ01ZZHhrYlJTVFpXYnhyblZ6Z3dEMGhJTDZqbWxQ?=
 =?utf-8?B?T05tMU0rbDRyQ2RrcUhSRnpKb05MS3AxSGM0eTFzOXltK05Fc0NndVRTQVVY?=
 =?utf-8?B?NVU4ZUVxL3lBajRkRXVFMTRxOXpIcktpYnNTcVdUd0tQdVg4QVF3NU10aENj?=
 =?utf-8?B?Umk5bWdOY3RKellKZEFaTDk2VHZ3VFdQekMwUFdpK08yUjNubFF5Tnhrb2Vu?=
 =?utf-8?B?djNoUFJIOHpRbnhxT0xRdFNabDBZY1kzTFZ1QnMySmNJR0VESGVveGF5VTB3?=
 =?utf-8?B?TXcxVTZkUzRXb3QvQjQzOWkyQWRXVlJIUHErelhEa2RGdW5DSGMxbmVhTnFW?=
 =?utf-8?B?ZWV1WTE5YlFYam5KWEIrUit0Uzc3UURzSjlxYnFvZFZuMlVwVngzdE52ei9v?=
 =?utf-8?B?R1Q0emQzaUxSTnVpcExicnQyVGJLMVdjUUFHR3ZXMWo2dTFsNlZpK0RJaWNa?=
 =?utf-8?B?VXhUTFJUYVdtbGp1bmdIKzNOcU1vSDZtVFE0dGUxZkJsUVhlSllRRC8xZ1hB?=
 =?utf-8?B?OG9QMFZHT2RqazhvWTFUU0x2Tmk5SGN1WlkyRldmeDN5TWNkM3h3V1VQTkFK?=
 =?utf-8?B?eThzZzEwMUpOM01FeFZ5UTFnYUlkVXkydGlWcExQSVN6R2hWUzNJaTZsa0Z6?=
 =?utf-8?B?VUE3SFdoQ0RYanZkSkFyYmlnaHZFZ0hOL1VHOFdQSmdwZk5iVEZyTUlTTWlO?=
 =?utf-8?B?TkpucXV3MnhtVmRZaUZYdUtYdTcrdW91bGZJZjF4TmlEa3hBMGFZZ1VJdGI4?=
 =?utf-8?B?WGFwNTZXNGdGRVRtcXRmYWQ5OVlzZUF1aytIcHJ3aXVRSjlNNlBtM0pvNEZ5?=
 =?utf-8?B?Zk9UWTFjYXIrZVNUUlZ6eUVSMm9QTFVMNVVOQkdpeEpSMWkydjkvTWFHTC9E?=
 =?utf-8?B?b3VLVGJvbUtFVDRCMjJuVGtSU2VHM045NjdQZGpiZVc0cWhTVzY2NWxUWm45?=
 =?utf-8?B?SnNGQ3RMdkQ1REVlOFFvUVhZWlJIZFR4QVloRkJFWS9rYzhJRzhGYW10ckwz?=
 =?utf-8?B?aDRUWkU2b0pvallMd2QxRFRoWG1vSEs2UThZOVFoK2xmYkVXS3NyNmMrSlIx?=
 =?utf-8?B?Zi9jbE1iWGJxaEk4NHZqbkYzb3p5UXoxQWNOb0lEZnk5ZnhTWjQxaXJpekc3?=
 =?utf-8?B?QXZZSHE2aHkwK0s1cGNHVkZxWnlGSndYck9RZlpZcFZmYWx5Mys5OXVmclhZ?=
 =?utf-8?B?dlVUaDRPaXViZGlHS2VrcEJicmRDNFNaaDBTN1FzeDZ3V2tRQnFJbVNpSEZa?=
 =?utf-8?B?ZlZTN1FpNXhtdUZNNi8wemRDUW5hcllhTk9lVEJlRVdCMWYyNDdWcWlzTlVh?=
 =?utf-8?B?bXQvK0JQaktRaHp3VThuSUYxbi9WRXZ4V2kyd3o1bEhKTHpzN1F6L01nMGZv?=
 =?utf-8?B?Z2xzRm9Ua3RCSmtlU1JOd0FaUHRkVkducllHeUQ5MndGbU9kNU03WEhnTWpw?=
 =?utf-8?B?QWhaLzJaUnlSeVkvd3NCZ0FYQ2t3cVlva1hyZ2Q1SE9XNGRpZEQxY3J5cFBF?=
 =?utf-8?B?bERsaHhsbGNNRlFNcGZVWTdjTkxETTc0WllQODVvRE45WGlqS201WXF0cTNH?=
 =?utf-8?B?ZktKc3U3S2hWSnpocjFGT3FpTllUcG55SWpoZFZPN0J6VjcyRGNiY3hCZTV1?=
 =?utf-8?B?c0tTamNFL3liNjc3cytoOHIyTjNtYUwxRTM0RFp0YTRSQ3BFdzlpeE5reWhy?=
 =?utf-8?B?YXNwb0E5VXQrVG1RMHVWY0l5VGVLbGp5NklYU1p4aTV6c0JXMTlMQnlKYkNr?=
 =?utf-8?B?VzBaR0dmZ29DMFpmRVpjMW5Ibkw3bGNKNm1lZ3JBcWcrR0pvQ1FiYVFBbGNB?=
 =?utf-8?B?MXhOc3AvQWF4MDZscDNkeWw2MWRPSTBzMEZQbHJQOTlFV3lUaUZTTElHd2E0?=
 =?utf-8?B?akgvMzdCYTh2Z3YvQmltWWlFL0NvbjI0N015QVZTdmxLYTRpTXd4a29JeVNQ?=
 =?utf-8?Q?yqSO8XemxV3qJQqsYN+qdlA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8554.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y21NN1E3Y3JUT2xRS3Z4NWVXcU5QZFNITXdBTmFXeEM3Z0dqYmdYaTVKQ1hx?=
 =?utf-8?B?SG93OHJqbkpHVWs5RmVWUWNJeWR4eERxMU1UNjZtMHNUSVZYRFN4dWJMNlpy?=
 =?utf-8?B?bnhCelBHK3dvS2FkMlQ3ZVlHK0luMUpJVUkrSUFpcmVhSkZTNjZWL3Y3NC9o?=
 =?utf-8?B?NVNUS0hPcjAwd3ZOTTdQQUJaU2ZMdlQxaGlqdjdnd2gyd2NDSkNwSkF4aDJ1?=
 =?utf-8?B?YlRCQVVlR1Qwdjd3b1YzWlIvYllzZ29tMDNuR3p3ekVxZ2FWYU1wYXhxTElT?=
 =?utf-8?B?NG5aV0VWSXhqSzdVcUdSUUlwQXlRUEFua053c0Z5TEFCK2hqWkFDSnE2T3NI?=
 =?utf-8?B?dThkeDk5Mlp4cDUvWmxoajhkRktNZ2ZscHIzc0hEd2hzdXBiYkVVcjlqbGdE?=
 =?utf-8?B?a3Eyd2ZadzVNU25oam1QSGY5Qko4c1NWb2xyM3N5aERqMHdXM3JUdE9aSVg5?=
 =?utf-8?B?RWlZUzlYWWJYalNkSElQcExRZmk5T3BhdE0rM082SFdHTDVPMExDMCthaFNK?=
 =?utf-8?B?N0pvQmZaaXJ3SG94ME1VTUp2NU4zQWdXS2hCMVFSaEFjNVZraHVhNWxvQ2p2?=
 =?utf-8?B?SHovUUVTYTd4UzN4UzFLN0hFTGZlOVhmOVI0UFp0bUZjRFI0UThPSEREMXJU?=
 =?utf-8?B?RS96TTRQcDhHVnR5a0MxeG5ndnpaTDRWL2h0RlRXTnU4c0M5UytXZmxYdFZV?=
 =?utf-8?B?SVRpTDFmQTI5Y0FDVE4yMnpNOTZ5d2RKNHBBMmJXQXVKSGRYck1kZ0c5OXZE?=
 =?utf-8?B?YksrcW5lZnE1aVRvSmRrUytEOTBoRXVITE55UGxvNEtHdmMvQ1c4bDVWV3lG?=
 =?utf-8?B?VDZ4ZzhUUEdTbkIvS09zSzU1d1J1dW1Md3NGVDFKeXlObDlCWTZOKzZxL1J3?=
 =?utf-8?B?THNKbmhzODJ0TDNkRXovV1RwOFRpK0lkcCtpS2hLWTd0aUN1R1Q5SXVZNUxa?=
 =?utf-8?B?QkRGTytNQllRS1piSlY2YTY1VjVGVFNEU2t2OVgvTHRvS3ptWkc3ZVhpZ2NR?=
 =?utf-8?B?YnYvYmUrOHZaaWxlVlFMNWl5Qmd0RHFzeDVMS1JNY2NkUGZtZE5hSWVVUXg5?=
 =?utf-8?B?VlpSYlQzTzEzUFJySUxxeDMxdlZ1K09ncVEyV1M4ay9ZNmFiVGZ2UVhJYUJx?=
 =?utf-8?B?N0poTkFQbFU5bXFHcm9XS0xtc1U4by96WlB5RW91SVZwdWNlaUhJRU5EWlRt?=
 =?utf-8?B?TE9oeW5UWENYaDdDdVJvdjVNOCtEQWsyMEQ0bGlZc2ovMitkZFJwL2poM29q?=
 =?utf-8?B?Nm16aE5tOFU0Q3FCRmJQN3dCL2xibFNuMzRobml3UGlTc01NMWtwcjNvaFNy?=
 =?utf-8?B?d2ZiSUFEMXU0UUx6VGFKSDQvRGdJd1Z0d1NJeEFGbm5iZDFFTGVzRUsxRW95?=
 =?utf-8?B?WkZBNkE1R09LWEpleUQ1QlJIWWdkcWxIazNDM2dyVE9TTTROd1p3WkxwbzJa?=
 =?utf-8?B?QjBMcWFlRjJYa3F4bWRiTWlwYnhRcDlwSm5EQ1YzNUF6R3JwUGpaOFgrRE5M?=
 =?utf-8?B?SUpMbHhpS2hWaE9LdXFjYnViblNuc0g3RUVWZ05SYllEbG0vL2RNSkFrL3Yx?=
 =?utf-8?B?RHQ5bitmZis3U1ZKcW5FYW1XN3RkOUVTSUFCT2EvamtLUnBwUHlzN1VDUFEv?=
 =?utf-8?B?NjVadktiaXBJUDNFcVFEa09yMC9ZYzVJMUJjRzNIaXBSRzM2ck8vYktyUTlw?=
 =?utf-8?B?RnFRL25lYWlxSGpZUWZXUTVieHNQclJ6elBTeDUrQUxlQkZJTkdGZGMxUUJv?=
 =?utf-8?B?eTdVN1dhVkMzNjZCeFd1RGkrUHFxeUs2YUFURXI3Ny83cTFhNUlLeENuYm9H?=
 =?utf-8?B?QlB0RjZvY01BZU1jUlFQTElnZGF3dGhXZUZBWm5EeUlzQVVJNXE1aExTeWJR?=
 =?utf-8?B?czljT3JyOThHbTBCUHRwaEZwZ29xcFEzSHdUWVNZNThPN3EvMkxKZ3cxL09v?=
 =?utf-8?B?K0RXblJDZmhFY0JQY2dVTHBwMkNROUVsU24zT2ZLR1c5UTY3eUpQNDNDN1ZR?=
 =?utf-8?B?WFBmNGZoazhRWTJrTHBYb0dnR1EvdjFRQlVoV2FUNUlMbUFLZ0lOM3JGV095?=
 =?utf-8?B?RGZVM05CU0hCbjF4Uk1MYXdJd2ZnSjRzVW1KTzlmd2dEMUJzdmlZTWI5VXF4?=
 =?utf-8?B?OUxuOUgxS0ZOSHB2MUc3ODRKYktoWVpoNTZCT1MwdUFLeHpFNzNTcisyWnhh?=
 =?utf-8?B?anBBeHJJZkhlc0xybnB1eUF0bktBNlYwNUtSdHZvRWxmYnpJSHVCU2pONmN1?=
 =?utf-8?B?elRTQm5jdkpQMXR1S05McmtMYmdyQTQ5Y1BVd3RKZ3kvdzBYdFdHOUVWY0Jr?=
 =?utf-8?Q?hr6G9jk2k/rRj6StOT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39d1ef4f-f841-41d0-c375-08de69c32563
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 23:13:20.1313
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b1k5NhZvIy1vQlq4HKvUXJNqBauOWr5eK/pl6NhwuMZa9xrCpfLn6uZTA35FVKKNxpUNkYESgpITt8ZOlHZqSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8554
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264965-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nxp.com:mid,nxp.com:dkim,nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.153.50.192:email]
X-Rspamd-Queue-Id: 30F7D12C006
X-Rspamd-Action: no action

Remove fsl,imx-osc26m from fixed-clock node to fix below CHECK_DTB
warnings:
arch/arm/boot/dts/nxp/imx/imx27-apf27.dtb: osc26m (fsl,imx-osc26m): compatible: ['fsl,imx-osc26m', 'fixed-clock'] is too long
	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx27.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx27.dtsi b/arch/arm/boot/dts/nxp/imx/imx27.dtsi
index 99a8f2b1f7d319fd8d25ff696d53622f8badf0c7..3605b03dbc00ebcdae21b9032410d7e13b35aeec 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx27.dtsi
@@ -49,7 +49,7 @@ aitc: aitc-interrupt-controller@10040000 {
 
 	clocks {
 		clk_osc26m: osc26m {
-			compatible = "fsl,imx-osc26m", "fixed-clock";
+			compatible = "fixed-clock";
 			#clock-cells = <0>;
 			clock-frequency = <26000000>;
 		};

-- 
2.43.0


