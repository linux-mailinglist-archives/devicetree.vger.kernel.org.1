Return-Path: <devicetree+bounces-132233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA19F6398
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2617116E48E
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8170B19ABC6;
	Wed, 18 Dec 2024 10:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b="rw47qh10"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2100.outbound.protection.outlook.com [40.107.20.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CC71991AA;
	Wed, 18 Dec 2024 10:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.100
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734518613; cv=fail; b=uS3Bw5uhb7RlrYbAN4ou/8Y8ckFjxCCccDK8IwMDkI3iFQiNnni3Q5uZEnshVGctYIHnxyEA9ZpMiOXre8cJeyjm3vqmdO4cgr9i4GEKYF9cQvuEjRQjKn6GtvqG06uCpKsH+8IRq6FXT1kos2sg5X3NlbR2TW8Qs+oTX5pot0M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734518613; c=relaxed/simple;
	bh=Ct5vybN8ZVAqPSxwt50sQiHIwH3AAO7iN936rcWmNHQ=;
	h=From:Subject:Date:Message-Id:Content-Type:To:Cc:MIME-Version; b=gPmsKIGhjoOweIp91e1h0S/9P0/IqDrOi8SEqK+VZuXM3fHYiN4IaM5miY27j/k06guNpjj6rO9dWbzhea5waH/O8KIRbtEgReJKFnB98g0rzAqBXiumQJKHkXzTNxKX7CBz8y/jb6JWBaR9JVZTsMVWevIBIGoQJPMkYrKbpt8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net; spf=pass smtp.mailfrom=wolfvision.net; dkim=pass (1024-bit key) header.d=wolfvision.net header.i=@wolfvision.net header.b=rw47qh10; arc=fail smtp.client-ip=40.107.20.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wolfvision.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YwENV+0Y/JPM9Ddwtd28AbrRxnUXLwE498SqxtFRYeL4miVpw4D0BfVMOo/jjaoSxWg35FqJ8kVrwFYyEv/HsmeJNlaFwEs8CthUu/C288W6p6fhGYsbPoJ3gfLm5qIGP/d2ExToUZfbBRBl1M2V5ySEcSd5UWupmjFlqXM0HGOpNRFMl4AgHvyjHcQYt5G8l8cyZn6pn51KYEdbbJGvNUOEFbMM6CRUTeOBjLcE6y/6WIC8qpWm7VPTDvysboAe1v9aZk98IkXjVtvtKFOxi3AOmCr+YuXy8FmHxRdtUVIdxdS/ckGBTmFmddbS6pzUGAoq0y2P96V4EoL4jorGuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCK6POT64CVfD4SoWw+RGnQucRHZT1Rmx4wEkOlbTwY=;
 b=M6H5tPmPUSo8kbPql52/ZjHGSGQGyF2A5ULPAlCzwS8cP96JmsA0o/vjSD/mQzhpffTzcA2yrhIjMiUSw/dcvxQmj5JX5gnjKMM0Thj2OsubLFHsh88kPr4DRi+LwpVFLi9lLjlvtHZZUF2TVvTePPJlEpXqVbYyRPUkLbdMKu5mV6bFFC27Eq1exp0YcvkxoI3m2hKdjAZ3w2Gt1KvqfWpNt9ceU/ZAT7wuJOzG+Ch3ez12/7zn37HEaIt+/pL+cmSKshsUYztoPX1K/S8PmZP8CLHm5jqw+Y62lspY+iAIWLKZtVUIlLt3v6odRgf8/WTy7k5pPQGcPzhfXC0u9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yCK6POT64CVfD4SoWw+RGnQucRHZT1Rmx4wEkOlbTwY=;
 b=rw47qh10+0D/QxRHw2W5jA9wpVZLP2y/5xBbjUEfZOCk8N9tvxZ5pa4jAcxN473NleMw76mZmGsR14eiNzCKFubw89HNMfe3YMSRdf0kvd2WP3er2IzdK0WVerNu0mrZx8WlIiIcBBdyZ9HIb8NMZDnZsH+bnTibO0vVz6H2GK8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB7778.eurprd08.prod.outlook.com (2603:10a6:150:56::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 10:43:26 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 10:43:25 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH 0/2] arm64: dts: rockchip: update wolfvision pf5 mainboard
Date: Wed, 18 Dec 2024 11:43:10 +0100
Message-Id: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD6nYmcC/yWMSQqAMAwAvyI5GzC1ovgV8aA21YBoad1A/LtFj
 wMzc0NgLxygTm7wfEiQdYlAaQLD1C0jo5jIoDKlSVGFvcZzne1vorMF7s50GyMNeUWGTK5Lgpg
 7z1aub920z/MCVW5Ts2oAAAA=
To: Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734518605; l=809;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=Ct5vybN8ZVAqPSxwt50sQiHIwH3AAO7iN936rcWmNHQ=;
 b=5yXCb2Y31G4x3thaWHZsY0tNlBhb0OMIiR/CavpNBUF/oAw3OnLp22tnuMMtyFF4dHd2UN8qh
 G9W/+mHa2y5DtQ/dlCP+FUe7ETMWT8VbrGnrSvOK4QfajnTSv8OHu3V
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
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 6734de56-7cf4-4d0d-e1fc-08dd1f50cd2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OS83NWRsVDY3bWJ6Zm5yb2IvUU5GK3BCRUcxSmg5M0J2bDlxZzlIdG5yMGtW?=
 =?utf-8?B?QmdUWWZ0MEdqUEpRNXFYWWFkRlRPb2NjS1VUNm9JTVk2MzNqZjRJbVpUMU5x?=
 =?utf-8?B?YU5KcWgxNjJ2RDNlb21Wa2RwUXllU1dsSHBjdDhnSldXcndiWGdSRnJpQ0Vx?=
 =?utf-8?B?UnNzcitaVTQwamFnRnVBMXg5WHJmZUViYU5KNzlINlE3dkhITmd4bHJaVmlT?=
 =?utf-8?B?ZnJnS1FoMzRlU1dsdkxYRHVDSXFTbmhxN3RLeGFpbDZzV2JXSDcvVDA3ZjFa?=
 =?utf-8?B?YSsyV1ZicEtHU2RzbmMwQWo1QUVTbWJaWDhicXNPSU9VN0c1cTcxOUZ0Rnhu?=
 =?utf-8?B?ekVzR25BNG8wbFZkdDJNTG9maFFoN3had1RLQ29LTGpra29VMVNZYU9Bbm4w?=
 =?utf-8?B?NE15Y0JwbjlHR1NRbUpZb1hGRFhlTkk2NDJUZDBSOWorTUxPVlI3cVgwMm1U?=
 =?utf-8?B?cWZ3Wm5YVnpJcHArUWMvSGcvUjRCU0U5SkhoOEFvc21xSURaU3RPZXFZOEJC?=
 =?utf-8?B?VFhYTXhCNTFxWXJKK2srQ0NMQUdpeUk1UERWb2x1OHJwVHdYQ0poNEFUVURH?=
 =?utf-8?B?WnBxemhNRXMxdUNsNTU1YjNCZDYvK1dLekcxYVZLUjBuU1plWEFpOTM0eDFM?=
 =?utf-8?B?d09idUZVSjRqTnExc05pRDlCTmJ2Z3JEdk1XZGloVkMySzUyUWRaZFRETG9I?=
 =?utf-8?B?M3lkTXFXSGdIU2syM3BmOXVKbklyM2x6NEJNZ0s3QXpXNi9QelBSajg3aStM?=
 =?utf-8?B?anp4cmdlRkNzTmhJbk02bUgzNkIzYjdsUEpzb3E4cDZ3NDluUjQrWkhrbE5q?=
 =?utf-8?B?cGJQWDF6Wm5CNXFOUTNOYjNjL1pmVjlXc1JYRHY2UU5TSEFuUUFXN3lzRTJy?=
 =?utf-8?B?YkU4RWh6SE4yTi9SOWtRNEZ2Nkt2dFBFOHRDL2FvQys1bVM2OTVYclFhV3BZ?=
 =?utf-8?B?ZStwY3c4SE1BdFFkOW1sUjVxVWxJZEVCV0tncmdqZ1lhL0hVREZsRktnSm1t?=
 =?utf-8?B?enhMN2lWWHE3NUozalVEZTZJZldJQTdydHF0SG1NZHVKbmlScEpTVU5xcnNL?=
 =?utf-8?B?TFdKbVl0YTkwU2xhZ1dKNFNLVVNQV3R3SG4wazIrSE52SkNSb0svK3VUVEdV?=
 =?utf-8?B?Wjd0R0gyWnBIdTBMVm5ZS2gwaUVJb3JCUFNJcVBPRDdTc2pIaFJndTRHa3NO?=
 =?utf-8?B?K3FiUU1tVUZ2czUxS3RSeEs4bkVZZDJtbTluV2Uvd2dkNEJjNEVrZnFzNlNX?=
 =?utf-8?B?SG9PbE5rOTZ6MDhMSkFPOXVqc2pGVUJhNkwva1NVdTRLVzhYOU41MTVFOUxa?=
 =?utf-8?B?M21JUVRsaWJPTlllRXJ1dk1ZN2UxazlJdFNDbWlRMjhPOGR0KysydkljMTZ5?=
 =?utf-8?B?S1RhbWxVRUxLR0wxaDFuWHNZanlRckRMcFFpU2lvNllQNUphTTl1NHRWRWJW?=
 =?utf-8?B?dmlKTjlWN2krUTRnaHBEVVJ3ckdGbGpXa1NYanpBZ2YyVVFzZzlhWkZ1WEdK?=
 =?utf-8?B?QWNtR0Y4cC9uMW1qYVNqeXhrYXFkWk01RFFvaWd3OHcxaFJ3dkN3ODdCVU1Z?=
 =?utf-8?B?MkEvSEdjenI3WjhySVduQmgveE1xMkR4RUZOUXNFck9nMU5IaklIeDEzUDBR?=
 =?utf-8?B?QUlOeFRpdStyM2FVSlprNGZGTHVHTENhVVdwanVaNGdMYkZEMndKVjhzOTlH?=
 =?utf-8?B?dWkySXM5b05kb0dNdCtpSWxiSUpjZTk0OGlyNHoxRHdaWk0veGdpSVRnYnh4?=
 =?utf-8?B?R28vYlpXNTFwZDJ2MndVMjh3KzlzUlFnc3hwb0J2M2lDSGlMNXhDZWtXVzdF?=
 =?utf-8?B?NmFTUDF4bXBDYzdHR20vbzk4UjJBenNaZmtqeFJnY3RKUU9wbzl2ZWsycWNM?=
 =?utf-8?B?RisvRVBzQnVEM2ZWM3pyUzVXYnNaV05lbVRRc3FRRm5IV05xM1RLdTFwV1hs?=
 =?utf-8?Q?qwbEIjAbLWUBUxDadVkZ0RrC01JwuG5r?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bWFYSXBNTmU2Vmx5dW1HK2FmY3llMnhCTlpVZ2RMRVJ4cUxYUGo0aGFLUjBP?=
 =?utf-8?B?MWRNVDF6RGhJMlpNODc0MW9mYUt0Ymx2RSsyTkN5OWlKSTRQeHJjb3p4OElo?=
 =?utf-8?B?dlZNanZib2JBQlo2dEs0QS9NeDhCR1RJV2s2VVp0V0l0SFRUWTBrbjh2dUM0?=
 =?utf-8?B?NDlXSkVaOFMwVWxqcjF3VW1qdTh4RFVpYkxQNktoYmZ4N0wyVFBvSjR0c2h6?=
 =?utf-8?B?MzBnOG1rT0w5Sm1WV2JwV3phUUVkOS8zalE3SUhOZ3JYKzEzczVHNC9PbVo5?=
 =?utf-8?B?bjJqd2h3YmdFYVZEYjBaVHQ1ZlB0MkVPc2xUNXNKUlZYWENKaUFBcWpKWFRa?=
 =?utf-8?B?MERlbnU5MHV1WXljSWJtQ252MUozK0VwUU5tMnN3bUlPREliUlFiNlNkRWMz?=
 =?utf-8?B?eU5FV0xUeUlHd1UzZExINVlMTzFqQmErY2FvcTY3eGtjRXVtd0N3Q2VYcjMw?=
 =?utf-8?B?SnN5RFh0dklGWUR2a1BjcUVUYlRSdDRhdkVhOElBdDFMTW1SQ1RUdlJCNTZo?=
 =?utf-8?B?S3J3Y0VQa0t6aDRXRXhLMG9UQVJTcEtCT3lsaUY5dVNySDhtOFhHSFZJSi9L?=
 =?utf-8?B?emRCaXBiMHFKK1dyb0xCelRMdDJ5akJneFBhQUdTdnN6aFJGWDNQdkxWVXpI?=
 =?utf-8?B?amw4bEpibk1pV2ZNQzJLS3BHYkVpekt3S0xmUzQ1SmxmTksvTy9NeGNjRUVo?=
 =?utf-8?B?d01yNlIzR2RKUHhTOURBSStXSXVJVjdxcmpCUUFDUURTSEk5c1dWd2Q0KzVY?=
 =?utf-8?B?c0ZpKzArREdCMzhBa3ZJQUlBWXBrbnBjVE82THZ2b3VYeHNQejZvcnJTZys0?=
 =?utf-8?B?ckpqenB0eURaamRwRm5xbFQ3ajczTWlOY1lEOFpjeUV1VERmR2d6TitXY0tw?=
 =?utf-8?B?OWl0aDZ3RmluUkZUWWZab0V1bFVacG5wOG9kWFo3V2hMSkZZRkpiVlZ1bjda?=
 =?utf-8?B?STBwcEZjUU54eS81cFhMUUYzZ0x3akxxZUFKVFNqaCtHOG9LZUd3dElwZnlD?=
 =?utf-8?B?YXM4Z0RtMTgvYzFLcFZzZmJxd2E2cUdQNDJ5ZzVKWkJGSndMc2lCSWgwQnhx?=
 =?utf-8?B?WTFiOFJMNDM3WFpJVGJHWVZkeDhydUV2dkgxQUJGKzU5eG4wOFltQlV3MUkw?=
 =?utf-8?B?TW02WTI0UE9UZ3d0bTVWUXRzbGJJM1h1STNvUVV5dk9Oci9ENVlsb3pjMlR5?=
 =?utf-8?B?MHVMUzdrazZaT2YzWGJlUWRoM0oyNGIwTHJHL1lML3IzK3YwOWZXV2k3b1Rj?=
 =?utf-8?B?Mk9KUWVURGVGaFp6UFROQzRINGtrTnBoYmZ5Sm1ScExtUnZjNEZyQUVzTUxm?=
 =?utf-8?B?R1UwUWJ6bkc2dFhqNmsxSnp1eTVnQnYvbnVjTHdBVDFsVmZzVzdOM1hRNmw2?=
 =?utf-8?B?dXVDRG1VUDNGYXJYSDBrdEZTQkdWNmgzU0JQaW95Z0Y4a1g1bUw0VHEzRkpp?=
 =?utf-8?B?ZkVRQS8raVNOaHB0VGNkRjdUb29nS2FkQXVNTTZTUk1NVmxxRGYrRTFiYXFW?=
 =?utf-8?B?VUozOWtScVlWcTBCVkRmd3FlYkd5c3gxNlNLdHlENVlQMWFvNlpBQXBid2tu?=
 =?utf-8?B?NzFUajRKR3daSVYxcEQwOWp1ZmU2NTNMRW4wMVhtRGVTZ1dWc25VZGpmU21h?=
 =?utf-8?B?TFFTdk1DQnd0WDRwSXo4cUFRc3B5cDZGMm45MjZnQ2g2N0xMcFZXcGFwS3lw?=
 =?utf-8?B?TjA2RHMvWUpNUUY4UnpkNGJXV3lCcGxqeW9BenRoWDRVVU9CQVA1RVIrMkNC?=
 =?utf-8?B?Z3d4R2RKRFZQSkcwT2dUN0RUTzAzZkNRQkh4VjU3c3h5c0N4VnorTm5GaFFK?=
 =?utf-8?B?d2hJSHU5OUNoZFA4UDYwcnlHVjhVQnI3VjZ2ZmhjOGw1ZUsySVA5N01XMlBX?=
 =?utf-8?B?K3NKUHRqQmdhMlhQcEhZS0pEMGFtdDR1RGhwODBOcGFLUkxhRE40UWNzbm1j?=
 =?utf-8?B?d0E0a1J5SHFhbGVQNkljVDN2UDhKMkZFNnl3cWF0N3laODNuSFdwUWN3ZWtl?=
 =?utf-8?B?bFhQR2hnWjJzNjR5R3ZVRDA3NU1RaUE0ZDZma3Z2OVRXalJtSGVHcDZQVnY0?=
 =?utf-8?B?SHNUVTBCSXlBbFd1cFdtZi9taUxHN0tNS0NjeVFIb3pObTFjVXIzNkNralJ0?=
 =?utf-8?B?d05QbjJaeUdhbi9KenNrMUIyRy9SVFVaQlFhWXhNMGYvM3VBTkUzM0NSVXdO?=
 =?utf-8?B?TUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6734de56-7cf4-4d0d-e1fc-08dd1f50cd2a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 10:43:25.7408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2wjZyl9DpoCc4BbQOsDh2tiQhmlgjVfrSGsykdYhyCI89f/Zx2DEI+mSdlk7fFpARvnZP5649t3tzc43+g6npAetxDGrMUYlHoS8q551QEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7778

Habidere,
    
Two updates for the WolfVision PF5 mainboard:
 - The onboard microphone is mono, but needs to be treated as stereo
   microphone due to restrictions of the RK3568 PDM block. Fix this.
 - Enable the HDMI TX audio.
    
Regards,
Michael

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
Michael Riesch (2):
      arm64: dts: rockchip: fix num-channels property of wolfvision pf5 mic
      arm64: dts: rockchip: enable hdmi out audio on wolfvision pf5

 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20241218-b4-wolfvision-pf5-update-1c381d1d3471

Best regards,
-- 
Michael Riesch <michael.riesch@wolfvision.net>


