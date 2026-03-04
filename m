Return-Path: <devicetree+bounces-270989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIL/Cd8VqGlTnwAAu9opvQ
	(envelope-from <devicetree+bounces-270989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:22:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E2E1FEE5C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:22:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A07343058E01
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66EF3AE18F;
	Wed,  4 Mar 2026 11:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="SiR7+lzD";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="SiR7+lzD"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11021101.outbound.protection.outlook.com [40.107.130.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF6B3A5E7B;
	Wed,  4 Mar 2026 11:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.101
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623298; cv=fail; b=VQJLSqWDvERpMUdVVojgrjo6LMyorZWz+xVSLH2b9HbrtehqGtnUmsebzoltbgjM1k0c1VGj3PVbt9NqyTNeM+vZIKpqX8AidHmDiQ9cqUWiZ/hadq7Fix+apSZ2uQE95yKap1bg3Rs4onIQalBm9IeUNlhTcDGOR1j26akRn7Q=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623298; c=relaxed/simple;
	bh=gjSiu2zBVs1yQmgbUcjZyHDuA1L49uahsRVDk0Qu3Xg=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=ftXqTVnGYgDCgdPydDvPz9qHloj9Baq/pZ38j6TnzRiwEqO/AS0OCcc2G5GpcWT+k0kqvz6LEMmpuXryP3kPfWWTLSEZ0cclLTOTwKvBcuWo+ut+yhpZOQt8fCbPzQh2Usds/Lc//zLrp31pKdHToLsfsuktlNLfXMHUfO66+LM=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=SiR7+lzD; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=SiR7+lzD; arc=fail smtp.client-ip=40.107.130.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=mB04GG/M+ZxpYrrT7GAYXmZqOdh0DBQu4zj3i2RqY3kTaDhVfHBx30r7nEUKoJCSDM7iqg2bmNccZtqKkKqZ94C2TQtuDHA5EnJQ4SHS+kY3++ydV5fvbjhINiHdDowRGwDaJ8xjebYUJfvlwXtp5/Bjo/s8jdk2kKIue8AIbRMMP8sZWFCUxKpE/oAd9spd8J5krM5mTq9dr5OkJtE8Rck3kdD3XiJ+k35oKvAvL4vEG055Vm+vZGR1GzRwGEMNzrhBUvDXT51M99onQ7JzHwG1tE1g2sQur8vgATGpRKPsqU6Y4GDyOlYLQZKVf7ua7cku/9I6MhAFkh4ICUhagg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/q3VYBJzfd7KKMEeJHRSdYBNjf2jCJkZzR3CCCu9lN8=;
 b=YWGZo9VD2pGVF+/bd6LLpgpwb74n4bdGo0N/iwnm83hE0TPaXMkI9D3PmkytRDznX38mdTdRVg06pxvh7kuIh/ZZcNfTCcX79nXOqSmmHbKhBFD6RPRBqB1WgvxNp0HLZE1iIeo2YVhuaaVZVBrkMbsIL32qrkKEEPBW246pJWa7vab4X8zRJJw5317tzOxyt4L3l8bZQKT478t3EqajrLvgRKRP5VTrnRnAkmNMU3e2wo5oVnvfBSsfsRfeCfOIwF1wqd1cmXgJ4rfNOEGdEL0LhJ846lRS901GEj++s5m8pJIousUJ7bJrSpQSiR0yapRnLJxyqkorsoSSfyyn4Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/q3VYBJzfd7KKMEeJHRSdYBNjf2jCJkZzR3CCCu9lN8=;
 b=SiR7+lzDahI3raiGykLBDRUpVCMP9UxNe9AudNsZzcUB8cvBZL44RXmECjlqGfOZsi2Ttp1Az3JYomsGw2AoepnR+LLVG57UxTfzJbwJZrDFV9nCF/EBIAPUPmkjdi2li92bJspEpuJdS76Wz7IAiQLutlkf3iFukSkl88hPSu4=
Received: from DUZPR01CA0138.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::14) by DU4PR04MB11984.eurprd04.prod.outlook.com
 (2603:10a6:10:61b::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 11:21:34 +0000
Received: from DB5PEPF00014B8F.eurprd02.prod.outlook.com
 (2603:10a6:10:4bc:cafe::4f) by DUZPR01CA0138.outlook.office365.com
 (2603:10a6:10:4bc::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 11:21:31 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB5PEPF00014B8F.mail.protection.outlook.com (10.167.8.203) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Wed, 4 Mar 2026 11:21:33 +0000
Received: from emails-6196780-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-166.eu-west-1.compute.internal [10.20.5.166])
	by mta-outgoing-dlp-141-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id DA09280619;
	Wed,  4 Mar 2026 11:21:33 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Mar  4 11:21:26 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRbcn0GZmzSbZlOQBXfh+FMCAT6OFZQCxkjr4Ty/h6XD3YTY7VIsCnibPL382xJXqrG41ebg3j9suk9Tfe2YyyHaBfaq1zd1ppBq+Ww6nuBPRXvyYjod6zeJTK7Fa4rSkPI3ly82LR+X+z9n7a2vmDrdnctfFzywaYM+h7IyexVadSGh3aR/2GuG57H022ZZoMvpELNCzPL1yAdmgkWPWQn6HwcRse4crAKYtNIydn0szs5CVekXK1WmfonhrNbxQBKQXbkYofgIs7r0xkjddm6b6TtMoeF9kDOG7VASNtD/EqG5EcG1dB0mW2e/QctnAGab3XzsgdnoHZo3vwN8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/q3VYBJzfd7KKMEeJHRSdYBNjf2jCJkZzR3CCCu9lN8=;
 b=GRul3Y8nleIBVB+KIla5cxbvgTipyD8VNTmXFGbYTM3GmLtzhYUuJaHMA3hYu8GyKxO29/JvhLf+/YJ1E6/etTIWhDTf52awgGEast6f0GfG6BqitWRjY7j3ZnwmJSDAZXWyr27Hd5qA4UcgOnR0ue42/I7ZfY0nnKrwQ5vxJkBElhNbtdYNi2fKB1pzEUIYyggISb8r/J78qSRbrNECra82R/jc/wm/HVPzj/Ht+CNheRYXfS5dD19IISa0I7IzINrG2eMryV7YU1mpVcSeU5zXrog0Nw3d91T+MSLjYApTck6acBOeshoYm3ZBT4wcaciJmBm89oqepYi1S8naQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/q3VYBJzfd7KKMEeJHRSdYBNjf2jCJkZzR3CCCu9lN8=;
 b=SiR7+lzDahI3raiGykLBDRUpVCMP9UxNe9AudNsZzcUB8cvBZL44RXmECjlqGfOZsi2Ttp1Az3JYomsGw2AoepnR+LLVG57UxTfzJbwJZrDFV9nCF/EBIAPUPmkjdi2li92bJspEpuJdS76Wz7IAiQLutlkf3iFukSkl88hPSu4=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by VI2PR04MB10979.eurprd04.prod.outlook.com (2603:10a6:800:277::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 11:21:21 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 11:21:19 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 04 Mar 2026 12:21:15 +0100
Subject: [PATCH v3 3/5] arm64: dts: fsl-lx2160a-cex7: add rtc alias
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-lx2160-sd-cd-v3-3-dee4523600ef@solid-run.com>
References: <20260304-lx2160-sd-cd-v3-0-dee4523600ef@solid-run.com>
In-Reply-To: <20260304-lx2160-sd-cd-v3-0-dee4523600ef@solid-run.com>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Carlos Song <carlos.song@nxp.com>
Cc: Frank Li <frank.li@nxp.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: FR4P281CA0019.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::16) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	PAXPR04MB8749:EE_|VI2PR04MB10979:EE_|DB5PEPF00014B8F:EE_|DU4PR04MB11984:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b23c078-d142-4801-bd87-08de79e03150
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 CjYSt0+XJP2c6gq/x+W8gSbGu1BeINn6A9JzcM1KzBl6x9mOS8hNOP6daDlJS7FJS+D4NgajfltVAqv6Hs25gggWScuy2IexH7gIDqJZ6vT23Ng1XFYml+P92fkz2fUAnCP/wq1XrqBTHyCfVbftcwmzPYU2aL4sf+L0Xtx1MWD7hzUO6tysOEnScAcJVT7yflpHwMLOHdRx/EYflheCfu0GKUw9oZ/mFoNSCDkFdt4+OJICM4raNwY95NIY9fCEmvf8RBpndIXTzUtqg5ERqVyLDf6+FYCG58rlxMUvGaEndD8OIgWoe6Mot6324P+gR/JTC/owbWzlYqeoWAsSitnW9rtsQoQjwWod37CxBzjAplYSyjJ/1ffBtQqQccxxv9BiciGmYIsaOYw17dJHjngnti0Fc9p5OGY6dXxHD1hOSv8X6OMPL9eB+vfYbsvKt2lEY5SVBV4mWSXoKDRVYvr1pE9R1lw0Tp5U1co2L/EgzFMlPTxosIdM2Dw1VQ8dmI3RdJX+dwshytRpgZsAZB9Cg34XSN5MTDMrmKj8fq1RqDtqaCqPKFu9Ds1EtfJ0osUAyqtEyWmDW4fiF1a2MNQXGCIamtnKV37HeU9k62W+knNdjhhFhUbv4PEGBv6HuYd2cG3STn0spQ55uJsJG+em2y3TKciCkEJzl4GQ0gbSXhE75VuMAsTR/O0tFw6P8k6ZhQHg1pw1m6nyffrRmX0zFAbZoHSPW/QgUk3iailUxGQJCy3JGauOeHNGQs7RChCzKyxlkg6BeETNsschca37wt3jbnXmv31Vt3Z4IWc=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10979
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 5af6cd55a45a411d9178373856b57101:solidrun,office365_emails,sent,inline:24fbdaf47b4eead4bec4b5d78012f82e
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB5PEPF00014B8F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	f765700c-b066-40e3-ae0b-08de79e028d3
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|35042699022|1800799024|376014|14060799003|36860700016;
X-Microsoft-Antispam-Message-Info:
	yB/ZXn1MyhSFHIY2iPBfEF7Eah+e27z78iy5gHi2WxEbEeaTAHKoPYEiM3S+uWMyVTNT83UzJOpKXCv5vvOJKg5EhDmDA23Tj3vWtLknd7J+CN62OqhjlYLIzXFLu/YWqaGwwF5nmH2YXuSNvCR67KJfyULj92djy4xynzJDp/BFN4H1Ckm9z1hyZc092htTEKZllFiv0n5Yr46E8tQxqxXylcLNmZmNSUnOR5E7CU9VvfXIMnoC8tNXyDz6YOPHFTVK4oaVlPaimlweEfDxjxXC2yyILz0qYLNiXNoxdtCpwQy7d1FQNL60PmYx7PBqdJJuqCge+cKuS6q0M16THtl95FY5JJB9gq2LHYTzWoALgjgd1TTyTFdp+hRHIkhWKHthjE6ILrSASamzCG2exGJT5PPTYyt3iiO8BKmm1wDIPGWro5BQiuzM8BPMANTj1b2N8ypWc9gcnxSpijF6yyEVCkmHp2Go+IiqnBjz5XhlVrov/JKFhtu+d2H28Zlwm8PRgwgNlsITt+W7TR5kE/S7dGxnXux/rvJ6NR9Ld9M53UdndWWm6a2BZyZDBboSXDHx3Qe83boGKNN6DCS6j5AvKBN9nIKYNZr5b5IpwqK2EtdlKbQoEv55EoeaWUxTDu8+rvvAOxEN3362x/kOjsaMNcsvVDV8irZQYqo/w3s7px0tKd0YbfU2XHVBpbXgF/LwwPx7RJADE2qciws91IJ7dV1IaksF7ljMJgyhz7omtCdgq5RRRTWCWOScSqKDCju1zirBt2wSYY/YDV3m8w==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(1800799024)(376014)(14060799003)(36860700016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	ZjvMqPkeWyOAej7lSMIY+xdsX0MRE+uYq2Ko3HuhPUgkVaoAIhEZRzdw6KnVl4YrT50Ve5+692rAFHMl2WS3Mjt6JcTbfZd41HGvSY2kFhJMK19ql+Z7I623ikDeug4vW+43nAQiO273Q7uWXJGw7CwE1NklCN2vz20FC/9qNY1RN0/l4Tbzj3jIWeIf0ES3mnO0w3c+12rIPh8nqzKyUYNQTSucMyWU6rVKTWLPmZesGshruLIf50B5H96jkQowsVbgnkIEmP8AqMrMKgvOQn0+Z9rUpOKAICqhjTuoWR1SsfCgr8QUsBCp4qsIy2JSImTpo5WTMJHzFJZw21UqCMFBXuCIAS3G55T5HcrqbTTpRAoCk7XwEztK1AnssoULPldJahgjjdDUIYwflanyvVFDIMCnpyYpFGWlA5Mi9fbfRgxNDg5bnkkI9qxJSSzn
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:21:33.9780
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b23c078-d142-4801-bd87-08de79e03150
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5PEPF00014B8F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB11984
X-Rspamd-Queue-Id: 96E2E1FEE5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270989-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:mid,solid-run.com:email,0.0.0.51:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,solidrn.onmicrosoft.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Add aliase for rtc ensuring that on-com rtc is assigned first index.

Note that fsl-lx2160a.dtsi already defines an alias for rtc1 which
implicitly achieved the same result.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index 7f6e39e27ce5c..90956ffb8ea9a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -14,6 +14,7 @@ / {
 
 	aliases {
 		crypto = &crypto;
+		rtc0 = &com_rtc;
 	};
 
 	sb_3v3: regulator-sb3v3 {
@@ -154,7 +155,7 @@ &i2c2 {
 &i2c4 {
 	status = "okay";
 
-	rtc@51 {
+	com_rtc: rtc@51 {
 		compatible = "nxp,pcf2129";
 		reg = <0x51>;
 		interrupts-extended = <&gpio2 8 IRQ_TYPE_LEVEL_LOW>;

-- 
2.51.0


