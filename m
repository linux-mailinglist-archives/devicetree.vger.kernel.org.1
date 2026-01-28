Return-Path: <devicetree+bounces-260543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IZpJrpAemmr4wEAu9opvQ
	(envelope-from <devicetree+bounces-260543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:00:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C06A676C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C9B23301C0E6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6673164A9;
	Wed, 28 Jan 2026 16:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="IGTMTu5W";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="IGTMTu5W"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022114.outbound.protection.outlook.com [52.101.66.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3B314B84;
	Wed, 28 Jan 2026 16:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.114
ARC-Seal:i=4; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769617789; cv=fail; b=c0pQupt2/WulzqvOd0NnAGFJz03zRa+/V4xv/OYlKjGG1z6nCoUjbzT/x0zdsgo0uRNq/D8bTHo4mwvKbYY+51aB1pf2Cum5mwtw+0MVLekZXGOqPQuaHa+OJhTzGeHEhSwuF4waGTXWvYXuuN9HZNPK63UQSIaHnx6jlKBLlkc=
ARC-Message-Signature:i=4; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769617789; c=relaxed/simple;
	bh=Dk/wn7d68fWDHNJs+1BlZ4K8F2ZYzkGyzbp7Lt7eWHI=;
	h=From:Subject:Date:Message-Id:Content-Type:To:Cc:MIME-Version; b=S11zpatBv7QyJcr2NKQ9JEBZCiQiotNPA/eSe97SzovRfqyTBvcYDztSf8FOwU029vZDlq3wVyvCRKuPtAb/rnbH9GADqC/AjCUQCedkpoEcirMFpccODE37IlX1SfSb07PDrz2UtTK6ArK07+8u/dF+i0qSnnxMFs4dDLGIcu8=
ARC-Authentication-Results:i=4; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=IGTMTu5W; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=IGTMTu5W; arc=fail smtp.client-ip=52.101.66.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ujAVlUTiW7rAJWfBw/5EzOIAUOpdAq8LOCi0D2bKKcl1RbTguhyMxwGYCGSOlEem8MINzFJl4P+AkKiP35LUl4nBynrcDhNh94wiGi2nqm5/mMBWn+XFs/XVAiyljqvVbTm+be3p9MqCCJKiCPEUW+qAP6ZO9OVDHmT+mWbYYrApRTWuFCT3q2YfDsz2n/F8SXSxdl9/DaytnTNY6M3bOxLi8FqPkPHlQJ1LuJ1+hcZKgB83IDgEju31Zfo8O3WnW+Z/ShG1HZLICJlmwYbvdrtBMfYK1aRk5sluhco0fo6B7+2gXF7AUYMmBi6obtziYMVs6GB0eYbOE/OcZttGnw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZ4H2IYVsolszdiDB8cD7Yhj4uQ/GoWsUfN5P/Vh/wY=;
 b=okRU07cxukpD5xidaiQVIRrsOhmJ5ioY/EpMh2SNcKdur8pHRHVeHNryXGLuEaI+Qe7i1WZQxsOJOZMDgXzfu/AAQ4eA3c528Y4mqjk/1djigUyCnGL6WvrsWq8lSPbzOSkKY+8VXGOO6cyTvpN8aPGBXUA7iKQ4VNOV7k86Aw3VoAQVDBDltW+0OCE94cX/clZ2VjhccCu6swBtxwlnw3V+znQ5jL8Sl/SlgpFduSF0ZjXUVOuN9ha6+6xIGi5AtnEkrwxZICCPRr2HwvAMRs2GakxzTxanmY+iNfQR8jHdvFG3zg1DQtJmnhPLQ6wSLi2j1YMCrH1cfSFCMZt2hQ==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=gmail.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZ4H2IYVsolszdiDB8cD7Yhj4uQ/GoWsUfN5P/Vh/wY=;
 b=IGTMTu5W1Zsmkjm7HX8Z+Eyyd9jjDgXFTdX7/eoJ1Pv+Vyv+2uXd4SZksD6WN4MSDiPd3dysrTZXbK+NOTAdusrQ0Q0Kk2BqpOJf/n8QWfVxBOwt6lKiQW+XSeZXII6SHrDeGJ8eS5RDxiZ+/hjJF0zSKHykNzp/fAP27QBI9j0=
Received: from AS4PR09CA0011.eurprd09.prod.outlook.com (2603:10a6:20b:5e0::13)
 by DBBPR04MB7865.eurprd04.prod.outlook.com (2603:10a6:10:1e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 16:29:44 +0000
Received: from AM2PEPF0001C714.eurprd05.prod.outlook.com
 (2603:10a6:20b:5e0:cafe::4f) by AS4PR09CA0011.outlook.office365.com
 (2603:10a6:20b:5e0::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.16 via Frontend Transport; Wed,
 28 Jan 2026 16:29:42 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM2PEPF0001C714.mail.protection.outlook.com (10.167.16.184) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3
 via Frontend Transport; Wed, 28 Jan 2026 16:29:43 +0000
Received: from emails-4404942-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-51.eu-west-1.compute.internal [10.20.6.51])
	by mta-outgoing-dlp-834-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id A7327801B5;
	Wed, 28 Jan 2026 16:29:43 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1769617783; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=RZ4H2IYVsolszdiDB8cD7Yhj4uQ/GoWsUfN5P/Vh/wY=;
 b=mXHlr+kNrGKQfLTRPQqmY1QmNyAZNzqNXFvEsJhNbFZutupv/QtSCjztkJDqXGfEsfTYS
 U7gyO7PT0qU78F202gch7PE/cpmb5r+RNoLfgYVmeP6pB3Sv5EKRLHEpaJ1xTZIL+8DNyel
 AvzXg+aAUThH3gi+23qPN6HUhdzoKAU=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1769617783;
 b=QYhrx14rwDUKiBy75mhxSb47kBjjsa2HnGYuFaiuaQ0BJMPm8CbhZvEY4YqArPPZ5HMI7
 jMSPryQ9p7iWyiwjtHPjKOV+UQlqDGPsHSBrdV9AO4uEG7NjoSMA0FHy0S6u2ItjQXsb8mu
 yz7gCvNPYLlIRL8qZuQ5Tlp+riIr8YU=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y+cvk75q5wzKmDxdXZVigAXqr9C4TRtm87ML2skAcGHMkkqb72GhJWb2NMFnSd+Z0RCBOTKZVYOlgPywX7Q+Mhi6nfxm07Mm0GTpZ+Chyn9x5pin5HD8dcowi29S/tKqvIQ00ciApnyYoFlmt+JxVSoXKIvNJfscHuOTobP6FCASa1CGGWUJOs/Dq/w3zLKz3OsgD6xE5eeirxV9qi4diHC+j0CSFZTQEO3bHcxfDPYSFMl/gRTqT8+DCR20sTkg/76j80GCY/WB2E2d/MigX2XW9Kxx352DxFEhbpjY1CBdgBbEGAkyAqg/PKNTWjySrOnTNkCA97tvEBos8XNZ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZ4H2IYVsolszdiDB8cD7Yhj4uQ/GoWsUfN5P/Vh/wY=;
 b=Eg/SCQXhzM3L9Vg0u0RtgCpDTFjOhUzpkapj3x0SlRa/S44dyrTtJMhkph0u+u8L3XWcXnw/mHrO0cBGZEIhyS3YWtgjMcbsqMDy1uKaDQ3ZRMBwTg/uVWUACvUtmzMt5IamLiHmsAkFtw7mNTQ08djojdGWBv8eOJYHonmxwj+z0SJbFctXfKQ6IlvtEmf9lx3+pCQzPzL1TZlQhiSGwr3oF/3veART6Iej7sT4UmRc1+NqJjBLBEhooxg23Hvm7RnqSedLFlUT6mHSGbiWOlksLFMce4oTDX/2wvmEx9kRvshED/EskBbTqXy/THI0OEEsx1mxSRZNjStbjOvZaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZ4H2IYVsolszdiDB8cD7Yhj4uQ/GoWsUfN5P/Vh/wY=;
 b=IGTMTu5W1Zsmkjm7HX8Z+Eyyd9jjDgXFTdX7/eoJ1Pv+Vyv+2uXd4SZksD6WN4MSDiPd3dysrTZXbK+NOTAdusrQ0Q0Kk2BqpOJf/n8QWfVxBOwt6lKiQW+XSeZXII6SHrDeGJ8eS5RDxiZ+/hjJF0zSKHykNzp/fAP27QBI9j0=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by PAXPR04MB9447.eurprd04.prod.outlook.com (2603:10a6:102:2b2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 16:21:32 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 16:21:31 +0000
From: Josua Mayer <josua@solid-run.com>
Subject: [PATCH v8 0/8] arm64: dts: add description for solidrun imx8mp
 hummingboard-iiot
Date: Wed, 28 Jan 2026 18:21:24 +0200
Message-Id: <20260128-imx8mp-hb-iiot-v8-0-9646a3025cf4@solid-run.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIQ3emkC/6XQTWrDMBAF4KsErauiGVk/zqr3KF1Y0qgW1FawU
 5MSfPfKgZBQa9flG5iPx7uymaZEMzsermyiJc0pjyXYlwPzfTd+Ek+hZIYCFQjUPA0XO5x473h
 K+cwVKiekI+o0svJ0miimyw18/yi5T/M5Tz83f4HteqfMX2oBLri2MlotlbFg3+b8lQKfvsdXn
 we2cQs+CBB7AgsRLEoZKLRtSzVCPhGwJ2QhXISu8VHFzlaJ5kGggB3RFELJIgTtEVysEepOaAE
 VQm0tpG4dkvDCVAn9f8I8EWB3hCkExbKSBmgrW6zr+gsgwgEvQgIAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: Mikhail Anikin <mikhail.anikin@solid-run.com>,
 Yazan Shhady <yazan.shhady@solid-run.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Josua Mayer <josua@solid-run.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.13.0
X-ClientProxiedBy: TLZP290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::20) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	PAXPR04MB8749:EE_|PAXPR04MB9447:EE_|AM2PEPF0001C714:EE_|DBBPR04MB7865:EE_
X-MS-Office365-Filtering-Correlation-Id: f4c827f5-1ec7-4a8b-2b7b-08de5e8a71c0
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|366016|376014|52116014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 =?utf-8?B?aThEUWd3czY2eVR5bFlzZUR0VnlxNDdVOXVZdTJvVnlHS29LdDhKeHlWWnl0?=
 =?utf-8?B?YWhLVDFDRmd4UUdQODVxczBjL0pVQ2pNcDB3Tmp6OEwxU29JT0xIRnozUU84?=
 =?utf-8?B?aUV1VkVwaTVLdnRRejJlMTEyMWN4d0o2aUlFcFBtOFpNUkZGZE1ybW9JZHI4?=
 =?utf-8?B?emdDTGNuWDVPSmZUR0VnQXZNalo2Y3BvdWp5MElkSzdJdjFNWm1BMmhsUjEy?=
 =?utf-8?B?V3c0djhXblQ5VE9XR3k1TEE2ZzhiWWptOG1ya2RZREFRQ2xkM2ZjR3NTRlVJ?=
 =?utf-8?B?TmhyYkluTkgrN0pNWjJ3S0ZEZlNiTFJKM24zY3FVT2ZGVlhMcTRHZnhNNmR5?=
 =?utf-8?B?TjBDb1h0SjJoSS9NQWFYQTMwT0Fib3d5WWx3OGQwU0RZV21tQ2dpWWM5Zms4?=
 =?utf-8?B?Ymd3dU1MamprM2dydDBzVEViS1ZyRU9ONHVvdTRXblp2eGpWblJxZVVqRS9x?=
 =?utf-8?B?NmhaVkQybUZqWVV5NktjaVoxU2hXc3ZGUWxQdGJ0dWk3UkgyekVnVURCU1M3?=
 =?utf-8?B?QUh0a2pDa1RIZmQ2dVUzNU9MSlB6TjY4UWsxamY4TmhMbE9vWkplRGFueVJz?=
 =?utf-8?B?cnY3YVF1T2xyZVIySWRYejdIdzcvQ2J2YkZDTXVGN0l6S0pwSE41YTl5NE9p?=
 =?utf-8?B?c2N1MFRnc3Z1RjQ2V2JROXVzR2dXb2hnRFYrREVLbFNWQ3BtNysrcThmbStm?=
 =?utf-8?B?azlUKzhIZDl3eUdkU2o4Tk5vV0MvZ0xqeldLTjhvSkhnbGQwdzdXOTdUczcy?=
 =?utf-8?B?K01uc1dlZ1ZneWsvRHlxNFdRbTlOR05JM2JqSGdPR3FzRml0SnlZd0paYlFY?=
 =?utf-8?B?SkFSc3dIa05OTXhkUllySGE1QkEzdjZEUXlNcTFmOTl2NnhOV1lXYi9naW5Y?=
 =?utf-8?B?MDArUkZFV1pCd3V6K1RVdXViWXJjdnh5djBkSi8xbTRrYWFFdWVHcGw0N1pt?=
 =?utf-8?B?OExNS1FJQyt0TUJFRUZETUNUdDhQZWRBb3BNbkxPSHplaEV4UDVKMzdxbnB0?=
 =?utf-8?B?MjV2dnFFM2hDUkF1aWY3bS9FUnRwL0tZRzdJWmtrZDBtZUJpSTVjbHE0ZWpF?=
 =?utf-8?B?NnljdTJSUjZkcExQbTZiY0hDV3RBNmxCZUMxUmRGdVFDeFFxMDh6c3R6czNr?=
 =?utf-8?B?ODF0SVhGVmZOVFEwbEtyM0VhNnpPUG5YeGNtU2xrcmpVVVR5UFZRa1QvMFRw?=
 =?utf-8?B?TUU4N0FWZHl2RXY5c1dRNm80WFBMMkxVakFGZ2JreXFZYlcxb3h1TGFBYkZW?=
 =?utf-8?B?eWpLd3ZGNU43K0VnRWNzZDJnQVJuMlpIVHNpcWJBTU9XSmhuYnJBUEx3eFZ3?=
 =?utf-8?B?UDYwYnhiZHhjRCs1LzJuU2luOEIxYm56V2x5WVpxWTNkZlVpQUhUMFRvaFli?=
 =?utf-8?B?Qnp1ek5xQU93akUrWGkyYThNZXJmckNDT0szbkdVczJDMk9kUWd0b1gzY1Yr?=
 =?utf-8?B?dy92Y0pKc3lsM1Q1dy9HZXRGZWR6a05Oejk1eXc0Zm8zQmxFVXBtVGszdkVo?=
 =?utf-8?B?bHN2bHZNL2xIQVlUb1QyZnpaa3ZYcVdtQU8zbUc2SE8wcnFyeFY2MjdRNm5i?=
 =?utf-8?B?eEt3cFczbitiSGZHZGlXb0VuTWlXWk52bXFXQkF3bHY4aFNubjBBbWlMQjN0?=
 =?utf-8?B?S2pOWjZGaGxPejB6SUpQeGxDSG5SaVBIRU53NFJ2RHJncFJBZTFnUm04TnVB?=
 =?utf-8?B?V3JQd1hranNSQXM5V1hzN3NGZFZlTFc2R0NjWVZUT3lxdnphcEdGKzJ0WGxQ?=
 =?utf-8?B?VmVneFZMRkRiQ0JsSEVSVEdVbmJVYTZ0aHNpNlN6bUxlbXRJVElwTVdNZXZ1?=
 =?utf-8?B?NXpSUWRjb01UaS9YeVFBRndiaEt0OC9qS2xQNlFXR1F1dTI3bVcyRXd0ZGNN?=
 =?utf-8?B?ZHVYc2xQZklzeHMvYmtWSTFaUVVNRWUzRzJNL1A1Ylh1eDJ6azdhaWtqYXUy?=
 =?utf-8?B?SlcrOEZnWHdFUHEvOUhUMko5YmRUcGp3L1pyMmM0a3JRWUJFemRVSmZwNzJk?=
 =?utf-8?B?YlBuL2g0MGYwcU9WRlJzd1NuNWV6M0J1bldMdUlTR2t0c2F1OGQ4WnMvSnM4?=
 =?utf-8?B?ZlZyYTJtczY1QThTNVIyNm1vRFA3WlJXdnkzK1hYRWZQMUFFaXVIRlNkb0s4?=
 =?utf-8?B?aVZVN2pVaXMrWklCbGpaSUlDTFJMcWY4UDA3bTVMT0NST3lpMUNiWUhvQ3Z0?=
 =?utf-8?Q?zLQr99TbxeztyVgwy0TrCJQ=3D?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(7416014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9447
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: dde41a1dfb3e42b383544adf6d8dfd16:solidrun,office365_emails,sent,inline:9b090c66d9ef8042e2fc0e00da84b2f1
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM2PEPF0001C714.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	3ff3a331-5e62-4791-5db5-08de5e894bf0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|7416014|376014|1800799024|82310400026|35042699022|14060799003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dHRTRm4rcnk4Tlp4ckd5blF1VnRmejNHTlVJck9pSVVCYUFaTVhoOTcvcHNt?=
 =?utf-8?B?alY1QUVjL21Sd2hBcnYrVEYvQW1ZdXlQUGpQWTFTYzJLVkkwMkVzRm8wcWt6?=
 =?utf-8?B?MnBtZWdPYVdwN21vcVhWWnZTY0w1K20wVExyUlJUMEtIbkVGd0pNVWtCU2VY?=
 =?utf-8?B?TlExQVFvTVJodldxOU5MWkt4QVNZdUU3RFFRTHlnVmFYaWQ2L1hOdklhQkhJ?=
 =?utf-8?B?MElydHV5VTlsV1Y0Rnp2elBFUk1wMWVmTG9OL1B6ZUhicXBpaDl5ZklxZWs2?=
 =?utf-8?B?V0U4RWFxcVA0NkNGQXFYY3djc0ZiL2dSMnVKRVdiZUkxK0hRY0VPQk9tc2Qx?=
 =?utf-8?B?ZkEzNnhRd0MzaHkwU2N0d1dJYmxTeEkvMTQ0dFZHcXBEWWc4TG5OYmVQT2hk?=
 =?utf-8?B?L0thMHBCSVlyMTA0V244blZJVjlsWTVOa2hzOVU1aUR6K0NOeUFUVU0xM0da?=
 =?utf-8?B?bDVpNUlyTVBZZjFnRSs2OHN6VFpsNGs3YmozR1dtSGtSV3kzWXgvMlp0MGMy?=
 =?utf-8?B?L3EzRUE0RVI3d3VrSjhHd3lhWFI0cm9JMTdPWml4RU84cGxjRmZ4TXc1MVZQ?=
 =?utf-8?B?R0FNaWwwaVZwY1lXWGV1T2pBcmp6N0ZaWEJZT3g5RERFeTdNbTU2cmM5blJM?=
 =?utf-8?B?QU0rS1NzQ3ZmU2xiaGhjZklTTDQ4MTduaEF3dVdWMUJudXk0NHcvWjJMdTFR?=
 =?utf-8?B?aTZJVXBUVXk4YTQydjR3L1Qwbm1PeFNtRWVtNC8rMGNyUDIwbHZjdCttSHp0?=
 =?utf-8?B?NjVwdmpZSlpBNXE2NGhybkpYY2E0MmZQd294c2hwVzZ0aUdQbzEyNzRPbjFp?=
 =?utf-8?B?cDNJdFF0UnZneE5WL3pCLzJ5WkJFRmNJQVdLUzMvbjBXNW5NU29XR0tHMnBh?=
 =?utf-8?B?VnVxeVVvM1hSMS9mNXJ0dm50SUpYOXRHRXd0SzJGU0VHV0JpeDcwNzFrT1Bj?=
 =?utf-8?B?bXUxSXQyRVIwaGE5TjJmRDJaejE0SlRNVVIvRmJCaGd1WTd6MkZDMVZVUmh0?=
 =?utf-8?B?Y0M3K2ZCQlAxcW9IUUxESmxiNGR4cGtYTXFab3lkR1VBZWV0MjlqNkhzN3dU?=
 =?utf-8?B?elEvVnp5UmI2aGRuN3JCRUdNWlJkVE44UTFaMis2MjQyaUZKRmZ2OW1VQWxS?=
 =?utf-8?B?RkNVYUtaYWRObm8zQVJwZStlUG15alVQZEdVTUFjQWFwSFFCWDJTN0RuZTJj?=
 =?utf-8?B?Z3ZuZGVOUmI4RjB5WjlFZW12QzExMDEzOFdOQWlDMkZNWGpYOCtOUDNvM3pG?=
 =?utf-8?B?bFFOS2llRHQ1RkhIcWVlOGFKRXlVd2liRjNYSzdtbkphNmJISWxjazkyOE10?=
 =?utf-8?B?KzJPWmkyeURGczNkaVZhd0xTc0NRZmF4bjJaL1A1enpUdVF2amd2VUQ3RWpv?=
 =?utf-8?B?Ymp2SkJ4aHlGbXVJOU8zcjRjUnZYTWk1Ri82ZnBPUmc3MUszTldlZmdkMmpu?=
 =?utf-8?B?VDczV3RwR2ZPNnVpL2t0dGdGbVRzNnphU3hsWERWRjZWWW9VUTJhK1dpaWV6?=
 =?utf-8?B?UVlIdXFxNDZlQ0k0ZTlJdW9obDRVRmNEeGkrV1cxOEw0SUNHTEpwMStFNUww?=
 =?utf-8?B?dmp5eHhKeDM5aHdhcFkrOUk2aytrem1rVkt6My9UUi83cTZ0YjVIcTNsZitz?=
 =?utf-8?B?aE0rWHdqOUhCUHBBWTVrUDJvaHNLUnMxbUcyTWFScndVbWxLV0M5T1daa1Jp?=
 =?utf-8?B?OWtuSDRDVGZhWnQvWUpxN3BvY2dNZDd3d1lEZXYydDh0cXl3dlN4UlJNQ2h5?=
 =?utf-8?B?RkJhRi9nR2R1UEZTNnpHaTlWVUpsbTdIZGRLT1NTSEM0NVBuY3BQY3cvY0ph?=
 =?utf-8?B?cllCWFdVREo1R0dnOGVHenZVWngyM2xnTHdvMDdvTW0vdm5zeU9ueGFweHlT?=
 =?utf-8?B?UVVsYWwraVRLTEdwWGQvdXFZc2lXdlZneDlYd0toNmFEVU5xaFBnNGNJRUNV?=
 =?utf-8?B?ci8yZ0hlaVNWQ21Mai82czJlcWRmY2xBVlFiVy9iWnF5aW9JamtkbC8wdTd0?=
 =?utf-8?B?dnZGbUwrUzhhWjhzRW1XRmpCcmlsZk0rbVBhcm0vQ05UaUdhMG8xVUgzdmZZ?=
 =?utf-8?B?dWpMeUJvNnVHSENZSFJwOEFmeVVEZEszUkd5dWs1UE1IQ3VEZGo5RTlTWll2?=
 =?utf-8?B?QTMwZEVGVVBEUHFzNkRqRFBiTUR1eTRoRzZ0UDdCbVBFcTZ6T0x3elZ1MXNp?=
 =?utf-8?B?NGs2MWk1dnZSZUZNUnFHVDcrNlFiSWpoMU5RZkpSaHpXWDBtMythZ3dqZVdk?=
 =?utf-8?B?MnlxNlpNS1lUYU5WVi8xQTY5aHhRPT0=?=
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(36860700013)(7416014)(376014)(1800799024)(82310400026)(35042699022)(14060799003);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 16:29:43.9104
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4c827f5-1ec7-4a8b-2b7b-08de5e8a71c0
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM2PEPF0001C714.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7865
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=4];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260543-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,bootlin.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,solid-run.com:mid,solid-run.com:email,nxp.com:email,0.0.0.3:email,microchip.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A5C06A676C
X-Rspamd-Action: no action

This patchset mainly adds description for 3 SolidRun boards:
- i.MX8MP Hummingboard IIoT
- SolidSense N8 Compact
- i.MX8MM Hummingboard Ripple

This includes dt bindings and a range of bug-fixes:

- dt bindings for the boards
- fix to dsi panel bindings referncing panel-common and adding port
  property
- cosmetic fix to some  solidrun imx8mp boards for regulator gpio
   polarity
- fix dsi hdmi bridge on hummingboard pulse
- compile dtbs with symbols to support overlays
- gpiod_set_value _can_sleep conversion for panel and touchscreen
   drivers

Open Questions:

- How to describe HX3 USB-2.0/3.0 Hub placed on a USB-2.0-only Bus
  (affects imx8mm-hummingboard-ripple.dts)
- Is "description for" implied not only on dt-bindings patches, but also
  dts? E.g. is this commit subject acceptable?:
  "arm64: dts: add solidrun solidsense-n8 board"

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
Changes in v8:
- sorted most dt nodes by name.
  (Reported-by: Frank Li <Frank.li@nxp.com>)
- reworded hb-iiot commit description.
  (Reported-by: Frank Li <Frank.li@nxp.com>)
- reworded commit description changing dtc-flags for imx8mp-sr-som based
  boards.
- set DTC_FLAGS before dtb in Makefiles.
  (Reported-by: Frank Li <Frank.li@nxp.com>)
- fixed spelling and missing paragraph separation for mini-hdmi patch.
  (Reported-by: Frank Li <Frank.li@nxp.com>)
- Link to v7: https://lore.kernel.org/r/20260118-imx8mp-hb-iiot-v7-0-ef1176119a8e@solid-run.com

Changes in v7:
- updated Makefile to apply each addon to the base dtb, for better
  coverage at build-time and dtbs_check.
  Fixes Rob Hering bot warnings.
- Fixed subject version prefix (v6 was prefixed with v5)
- Link to v6: https://lore.kernel.org/r/20260101-imx8mp-hb-iiot-v5-0-b369b2e0c07f@solid-run.com

Changes in v6:
- imx8mm-hb-ripple: sorted i2c devices by address;
  removed unnecessary newline.
  (Reported-by: Shawn Guo <shawnguo@kernel.org>)
- hb-iiot dts: sorted aliases alphabetically;
  fixed gpio flags for vmmc regulator;
  specified led@3 reg field in hexadecimal.
  (Reported-by: Shawn Guo <shawnguo@kernel.org>)
- Link to v5: https://lore.kernel.org/r/20251221-imx8mp-hb-iiot-v5-0-4a4dad916348@solid-run.com

Changes in v5:
- rebased on v6.19-rc1
- dropped ilitek-ts patch already picked into input-next
- solidsense-n8 / imx8mm-sr-som: drop untested wake-on-lan support
- hb-iiot: disable software unsupported rtc timer irq
- hb-iiot: fix wrong pins selected for uart4
- Link to v4: https://lore.kernel.org/r/20251201-imx8mp-hb-iiot-v4-0-53a4cd6c21bf@solid-run.com

Changes in v4:
- dropped patches already picked into drm-misc-next
- ronbo panel: picked up reviewed-by tag
  (Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>)
- ilitek-ts: changed mdelay calls on reset path to fsleep
  (Note Dmitry requested msleep/usleep_range)
  (Reported-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>)
- changed hummingboard-iiot tpm irq type to level
- Link to v3: https://lore.kernel.org/r/20251117-imx8mp-hb-iiot-v3-0-bf1a4cf5fa8e@solid-run.com

Changes in v3:
- sinmplified language in gpiod_can_sleep patches.
  (Reported-By: Frank Li <Frank.li@nxp.com>)
- collected ack on winstar lvds panel binding
  (Acked-by: Conor Dooley <conor.dooley@microchip.com>)
- Link to v2: https://lore.kernel.org/r/20251107-imx8mp-hb-iiot-v2-0-d8233ded999e@solid-run.com

Changes in v2:
- fix spelling mistakes in commit descriptions.
- remove redundant "binding for" from subject:
  https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst
  (Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
- remove one useless comment from imx8mm-sr-som.dtsi to fix long line
  warning.
- change ronbo panel binding to inherit panel-common and switch
  additionalProperties to unevaluatedProperties.
  (Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
- add dt binding for winstar lvds panel
- fix dtbs_check for dsi & lvds panel addons
- change n8 board dts comment-style in header
- collected ack on solidrun boards bindings patch (patch 1 in the series)
  (Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>)
- added standard led label property to hb-iiot multi-purpose leds
  ensuring consistent names in case lp5562 driver starts using it.
- Link to v1: https://lore.kernel.org/r/20251027-imx8mp-hb-iiot-v1-0-683f86357818@solid-run.com

---
Josua Mayer (8):
      dt-bindings: arm: fsl: Add various solidrun i.mx8m boards
      arm64: dts: imx8mp-hummingboard-pulse/cubox-m: fix vmmc gpio polarity
      arm64: dts: imx8mp-hummingboard-pulse: fix mini-hdmi dsi port reference
      arm64: dts: imx8mp-sr-som: build dtbs with symbols for overlay support
      arm64: dts: add support for SolidRun i.MX8MP HummingBoard IIoT
      arm64: dts: imx8mp-hummingboard-iiot: add dt overlays for muxable ports
      arm64: dts: add description for solidrun solidsense-n8 board
      arm64: dts: add description for solidrun i.mx8mm som and evb

 Documentation/devicetree/bindings/arm/fsl.yaml     |   9 +
 arch/arm64/boot/dts/freescale/Makefile             |  23 +
 .../dts/freescale/imx8mm-hummingboard-ripple.dts   | 335 ++++++++
 arch/arm64/boot/dts/freescale/imx8mm-sr-som.dtsi   | 393 ++++++++++
 .../dts/freescale/imx8mn-solidsense-n8-compact.dts | 851 +++++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-cubox-m.dts   |   2 +-
 ...hummingboard-iiot-panel-dsi-WJ70N3TYJHMNG0.dtso |  69 ++
 ...ummingboard-iiot-panel-lvds-WF70A8SYJHLNGA.dtso | 105 +++
 .../imx8mp-hummingboard-iiot-rs485-a.dtso          |  18 +
 .../imx8mp-hummingboard-iiot-rs485-b.dtso          |  18 +
 .../dts/freescale/imx8mp-hummingboard-iiot.dts     | 721 +++++++++++++++++
 .../imx8mp-hummingboard-pulse-common.dtsi          |   2 +-
 .../imx8mp-hummingboard-pulse-mini-hdmi.dtsi       |  11 +-
 13 files changed, 2548 insertions(+), 9 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251026-imx8mp-hb-iiot-525b03beea62

Best regards,
-- 
Josua Mayer <josua@solid-run.com>



