Return-Path: <devicetree+bounces-260544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDr+AEs8emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:41:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 66761A5FFB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:41:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C56D3053296
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 546AC314D1F;
	Wed, 28 Jan 2026 16:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="IGTMTu5W"
X-Original-To: devicetree@vger.kernel.org
Received: from eu.cloud-sec-av.com (eu.cloud-sec-av.com [52.212.19.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DD43191C9;
	Wed, 28 Jan 2026 16:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.212.19.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769618187; cv=fail; b=J/kNtai7src4LPHGwXxLDR9/TAGT5glB2D2k/52uL+U5stwmJyK1ZcpGc8OoCnwy+j4sCKhoP6ijbJUyzXwX6jMkgdmhOd68nWMFKCAi66O/zceMRzkFcQ5C2FA1uAR0n6XBWa6AGwV5imCrnDnSjVrjBehdwHsGc2xZyBINC/s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769618187; c=relaxed/simple;
	bh=Dk/wn7d68fWDHNJs+1BlZ4K8F2ZYzkGyzbp7Lt7eWHI=;
	h=From:Subject:Date:Message-Id:Content-Type:To:Cc:MIME-Version; b=hKY0ZNsjC8QhBA60H/oCtkKTwXWSGYbyiNAgpOi2+N+ISvWL43VMB+MY44Zpyc9udfT6Y5YZwkenR5QRPtD1jwrSWDPsMPf9jKfag8X0pFtbVLacP7n8X+o3Bs91e7qGqJn9lmeLmbT4i5F6JVhvkY1aR+5S2ZOzE9rOfpLjH24=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=solid-run.com; spf=fail smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=IGTMTu5W; arc=fail smtp.client-ip=52.212.19.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=solid-run.com
Received: from mta-incoming-627-12-mt-prod-cp-eu-2-v5.checkpointcloudsec.com (ip-10-20-3-237.eu-west-1.compute.internal [10.20.3.237])
	by mta-outgoing-303-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 529837FF03;
	Wed, 28 Jan 2026 16:26:37 +0000 (UTC)
Received: from GV1PR07CU001.outbound.protection.outlook.com (unknown [10.20.161.122])
	by mta-incoming-627-12-mt-prod-cp-eu-2-v5.checkpointcloudsec.com (Postfix) with ESMTPS id 196F640417;
	Wed, 28 Jan 2026 16:21:37 +0000 (UTC)
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
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
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
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8749:EE_|PAXPR04MB9447:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ff3a331-5e62-4791-5db5-08de5e894bf0
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
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
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(7416014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bEpsczkvcnF4Zit4cVZiMEpwWGZsZXN1eTRiZXZpOVJxQ2tORHVUVlNsNzlR?=
 =?utf-8?B?aTl0cnQ1TWFBdDhjVFpZbVN1TXZVK0d5WGd5VmoxVDdVR3lYcS9mNExPYmNv?=
 =?utf-8?B?K1VKUVM2Ym1NeEU2ZVQ3Vk5DRHhyZjZBdW9LVFZmbTVBSHljdC9SZHMrRHlp?=
 =?utf-8?B?ZlBCZTRkM09qejFCTW9lOFlJYnpqWFdDRzdIVlZxTHludlJwYXRjZFQ5SzRT?=
 =?utf-8?B?dXJiekdzbXpIeE5CUGxkQXB2Nm9ZeWwzSHBrNzZna0IzZVR6Ukh3bTdLZzhO?=
 =?utf-8?B?Q215SmJUeU1iWXYwcGJMQW9iNWh1ODczYytIQ0MvYmQzNXorVWhEazFUdWlu?=
 =?utf-8?B?Q1JNWWQzSEM3UTJJdFluRUZFRWp3elBIWkQrb0VuRjVNRkJyL0JpMzZBZWN5?=
 =?utf-8?B?cmZ0Qng0NkN3a04rMEI5TzFhR0g4YkxtMHpEYVNvbjFLVVVhTFkyQnVkSHlH?=
 =?utf-8?B?bGMzTHNGWUVvYkt2LzV0Z1p4VnlaZkpKZ0t6eGR0a1ZoRkZPcm0vbHVFZkox?=
 =?utf-8?B?dURXN1BOek5QS2hBRXNaeW04dTFmaTJJMlc4SUJzdTRFenFNVmY1NHVvL0F3?=
 =?utf-8?B?NlpleCtpWC9pRTNrOWlaQUVHZWljRSthdFN4MkFYT1ZRU3Z2WTFJN0s5M1ds?=
 =?utf-8?B?MWU0bFhZbWpDelFGUDdZdHJKaVpqMDRFeW1qdzFpV0F4Rld1OWp0RHJDbCsx?=
 =?utf-8?B?QkxBZEw3M2d6VkFJaTZYUjN2TllyOWk1T29NM1NQM0xacitLL3NnSjRzK2JS?=
 =?utf-8?B?RlRuUGUxZjJld2pCQjh4Sm9ZZW90cGVWUStzTEVxaFlrVVNtOEtEZklZT1JC?=
 =?utf-8?B?OUUvQTE1ajI5VkRod2FkN3hORnViZDljT3hWRE9BVm1mcWNHdm13S2ErcDFS?=
 =?utf-8?B?bVE4Z001SG5SWERDRjhjL2ZhNU9hOWZUWjdVc2dRenRHTk9lVWV1SFRSc1RY?=
 =?utf-8?B?VHJMbWpNVnNaNzBCamZhdUNSeVAyc1RnRDhUZktTODNKSVlmVHdQemhvTk1M?=
 =?utf-8?B?dTZleERoTzhiRTlocFJrR1dsa0dzSVA1RTZLTFhMU3NRa1lUQmNNcGwyTGNR?=
 =?utf-8?B?M1lNWDg5bEV4amd0U1RHY21yODhrcG1GazVYVEJ3Q2hKZUg4d2NYc0lkL3N2?=
 =?utf-8?B?OVdRbDFjNDNabGFBYkMxSDFDUUtkNWRhZlZMWjRlUS9aR3p3NlVDR2RBYjYz?=
 =?utf-8?B?eHBYOUVtYU80aGlJcUxIMkE3ZXZCaVVJUGlUL0t5Uks3aVJEdzY0ajZSQStZ?=
 =?utf-8?B?R2N1NFZMVVN1T0FZeFN3KzlMcHpQRWhISTNTNkhkQm1kN25VL2lxR29GYkRM?=
 =?utf-8?B?d256aHBUZmMvOGE1MVViODZROXZ6Z1hIc0hKK2ZpTituOUJ2ODNwbkRuTExL?=
 =?utf-8?B?V2ZVUEVPU0IwSlFpTUxJSi9XYjZiMndPTjVwcjdIZ2lLaU1KdjVIa3ExaHZj?=
 =?utf-8?B?REhhNGhQcmpScy9sOG11VGhBS2pTVHE0YWtHMk9HRmRRSUJtR25WemdPcGtP?=
 =?utf-8?B?VndtZGNuQXV0bWVxMHN6Rm95NGpIb2E5MG1GblZpbTAwZEszdENjQ1hZZkly?=
 =?utf-8?B?MzdBVUhBR1dSZ3I0YW5KOUd1U3dHdkpSdTNWRG9FVHJVSGUyTkxSQzlQdEwr?=
 =?utf-8?B?clVvTTJsR3FSQUE0eTY5cXlpV1ZwSjM4WXM5SHlWZTBycWh4TkNuNVY1RDdO?=
 =?utf-8?B?Vi83aG5VSUVvVFp1R2VQTjAwemR2TWNvNEJlQUcyK1c1Y2lhSHNhRE02SHNm?=
 =?utf-8?B?THVFMk9nMVZRNVArMldUdjhlWUlzYTlPbkpnRmtKNEUxTkp1NXJsZVRzaDZn?=
 =?utf-8?B?ZjZ5aFhGaTltRjRtajJoSklCemd1WkxRMUdUZVFteDFaWTFLRXNob0I1KzN6?=
 =?utf-8?B?WGhUMExxeXlVd0JGOFB1UDVnRnNqOU9yS0tlajQzR04vZWFnVmEzSStoQ1Vy?=
 =?utf-8?B?ZGoyU0hSdk1wdXY3SFhFdTRyWENEYVJTYUVhVVhsTkFpNkZTOWJ4K1h0R0lu?=
 =?utf-8?B?RHJWOStMZTJKVjNTVUdxTnpoeTI3S2xIU3ljTGRISlBmM1hFdjVnSS9QZ1Ny?=
 =?utf-8?B?K3hPZ0FXYngrM3plN1d0U3BSN2tNaW9BZ3ZCL3M4TnZFMURWdkg3bW1JTUNE?=
 =?utf-8?B?cDFLTzlLZFArMFlCaEk0d2NEZlp0d1AwZldlWW41S0I1TTliL3FiTDI0MGtt?=
 =?utf-8?B?MkMrbURIeXg1SU4wZlY0NkUrWHU3aDJLVWpqcEgzb09yMHlNN1ZibTVFOTJZ?=
 =?utf-8?B?U2JiWUY5cVJieCtOU3k3Wll0ZklualdvY0x5UVg2dmVIMHA5bHQ2SlREd3k3?=
 =?utf-8?B?SDFUZUp1UjBISTVxOExnb3FqeUZ1T0JpM1hBWUw5YWtkTFhYTlAzUT09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	0tpkCqB3OWrwhXXt25uVxtVLstngC6rofvN6cOLjzzqn57ia5GqwTg3QG3CTDbdaizAR64P00Xe0c0CS2QQ3zy2a2eRcnklXv+/DcwQUs+tnddWjiNNEc9byI/zEMIhpdb669ZqPkqwVK3IND6uqhMS2nxYzvtoePRNwr9BK+vdMV0bp05CGYPUwu5e7FDBHlBpQZavjHIbmFCToS0MppQEpaLTMnRVx884E9I5MaSG243eGzmIHtmwFuB2db+Kpjpa2pLQxO+rmy992dYPOSguZA13sx6GIke3y3BQP/eJFcgt1H/lmU06tmoJPFM9FxS6quRdCx3iqiK1p/I8FsUNNsPFWj+CJFRS6fTjjSl4l0Nw+nwPPk8ILcLh+9D5VzPrG/x29mDTvNQrVeRa8AabPHxhtsyiOMBEdJaQFBosKP38e9+qvOir5LGX6SLcN4zLRQsUKYk7h+UrHhpoyMoc1VC6FbPHl0m7g3zF7f4oQoJNQRJpgK/4Hu7686nyeM+qC2yOnVidsbvYJQQWZE3ha3y785f5AYK76CTBUvSaxMwDiQWyoIhNh02EGs+qQrBrBL6v3dtlv8I2yzrb2ocyw7F5Km5EjJ3DJ0/xZuCZs50mqihaXA9r1iJA0embP
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff3a331-5e62-4791-5db5-08de5e894bf0
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8749.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 16:21:31.2775
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 59O0whl8y9bIebxQkpDGGZ2GEB/jGfi+4yFr6Qarc66GMFXZiI2Ob7/jikp0PLC74bLL0feTSPsGKIyugX5wpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9447
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260544-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:mid,solid-run.com:email,solidrn.onmicrosoft.com:dkim,nxp.com:email,0.0.0.3:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 66761A5FFB
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


