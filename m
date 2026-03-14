Return-Path: <devicetree+bounces-275686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH4PFSFPtWm8zAAAu9opvQ
	(envelope-from <devicetree+bounces-275686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:05:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 571BC28CFDF
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BEEBA3013709
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E01030EF8F;
	Sat, 14 Mar 2026 12:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="j2HVlM0a";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="j2HVlM0a"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11022088.outbound.protection.outlook.com [52.101.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589FF2F5468;
	Sat, 14 Mar 2026 12:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.88
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773489940; cv=fail; b=d9jS/8jxbgdzU2zBBYpltHKruX8UjhVmeoL7/U48ryVtlFyE3Lst7pNC1xKHqGg+H/KgH24qNrkZAbhm4okE9pCZ+OlInHgreutn8gfPLvTv5OQkHH7oXPpxljw5j201eCaJeR9a50Ck+DHZkbrGbZCLfPaDC9G5XLNUvxpDkos=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773489940; c=relaxed/simple;
	bh=MgT16xBPUwIiWFdg1S9Q2eCTP37QSsCjozXFcomuxdM=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=QMh5bEkiBB6z47ROI/pbxfhAGjZPskrouPBGU8yginfAqjzUhdWllhcEaxjRbdEosxaD9XHnXG86jJcZbIZtEo0O7YzyL4xgv2/4r2sQxHXR0JBbXKzoxwpKDIdq7YVN3mJcIT5tXWeFlKZdpEDWnyngJg4DAzSU35GHFT/N4QI=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=j2HVlM0a; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=j2HVlM0a; arc=fail smtp.client-ip=52.101.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=JGCSFgpJV9dziNnmGhbe2dtDy3x3hOGv89meTFHm7E1LPCGdb4MOFW1/le+Olj/edWllq3Yxx61eSakAKCz+Rqt3n3hsriqxexEMs1LanQWB4VltrDtCdnchpQ7ULeLNyzH33/mbWEytNHZ2JY+kB45AD1L+0n3nQYSQqychVp3Q0uzqb5SbknH9mT1bjXW25GZV0sIYl/VHApxF7qysjDHIcmrZWxx24+etc92z8aEZmc2CF3sRgIGoyB43DYYDCYBpQ9WvSgNSSHaHgjcW/3AImAV6GGwVNdNSgiYZy3RZqro2TlV2F94Kp87McfdbJNpy33xPIbbqtd0S9V/amw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2fdB4tcrcTDH2TZskAzKYMDJmAqLtq4qdykh7rZfRQ=;
 b=WoqMTxxDbi3lp6jRZRj3opJJutdEyARkIJXjRqpGibrDXp+fcNh2LwqCYRrExwEAC9DIacJ0AuInVGxzE/rS2lqg0nqaJw9V+dyS/rYjlMcCVkUx2uJxmBHfpWpbKsJtYkf01aJq+8bkNgMGzHjPZjoIN2Tr+zBHru6vcEssvz8uaw7f4DEy8RRHFmkVDvOuMjrElOtlXBWf47UXErpYK7L39+YQlneGKKRQOtAbxwNEMYMSUdVeEFOGG3HYQJZrVC96pskqgNkgPH8MZ9IkpJCZV55YmjhHko4o/4SFypzWrrzAVMWd5QkxV/UqaPOXhRBAX2S6rqaxbBH7XnQnAg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2fdB4tcrcTDH2TZskAzKYMDJmAqLtq4qdykh7rZfRQ=;
 b=j2HVlM0auzivbDxNI75Z0nGXz9s15pWvptjojMae+Ah2gjD40rcgTjOcDXDo28QFnQll+JSFeHhppO16ofnOAcfxDc3XAiNas+AQ6lrI4e/xTKUHUBWwh2TFnNEuqN6GBd39s/2HgmtpwjvZX+TuZ32BJRKBCkomIU1qwqfUOvA=
Received: from DB8PR04CA0012.eurprd04.prod.outlook.com (2603:10a6:10:110::22)
 by AM9PR04MB8258.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.19; Sat, 14 Mar
 2026 12:05:17 +0000
Received: from DB3PEPF0000885A.eurprd02.prod.outlook.com
 (2603:10a6:10:110:cafe::8b) by DB8PR04CA0012.outlook.office365.com
 (2603:10a6:10:110::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17 via Frontend Transport; Sat,
 14 Mar 2026 12:05:32 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB3PEPF0000885A.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Sat, 14 Mar 2026 12:05:34 +0000
Received: from emails-1700357-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-6-17.eu-west-1.compute.internal [10.20.6.17])
	by mta-outgoing-dlp-467-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id CA11780141;
	Sat, 14 Mar 2026 12:05:34 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Sat Mar 14 12:05:26 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KQAA1gEWundoSEtxoIJTUMmLEHfWUQFHkn+QVSXfAx1QguJFJERAwPUChbr15IAV34sW91anVhIqQNAIpPeojlyk24rv5eK2oXaKsWyJUldfr23bMrSxKGYU33u++9XFExErfmbYTU5zHjNbHxCmA3vMxw9zm02aE8fNUynE2ICPD9UwCreJF2WsuqxEfWHS1+VZ2AOrO4YT+7LKHiuPdFK866+ez8s4Z1DEZ/qFTBlBI+x1QacLn5jX4F/Z42eJGayWKBv2pld8pwziS03Qif3oaYIfHgkG8zVKCe9efinF701+Joce7w/Bt7n/j9HOnYuh9ugsH6G8jHDGsnKa4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2fdB4tcrcTDH2TZskAzKYMDJmAqLtq4qdykh7rZfRQ=;
 b=BCdkauhm27th9RYcIHlf0tvzTbm8X1yczz+e4D/xMaUwN4p13rF1yQKu0qrlPfJBracbxu3Oqa70QMDl62WRerev9LOGwOqhT4XlJILHX8CRD3JFefJVHYadJPnTJiTL17RJH5dIwKfj2vkLioFYsK0u7mLEVTrLMXTOF//Ccx0ByXD9bqGJ8UQJhCrxkQzCM5OlsmW6bWWHXlkokuFkX8B8zY8DJgmI6nI7Koi4RKV7102/UsXP1+xwE3/FORTs/HCMGdJlqV1dS2bMos8yzCcdvRXOmQCgUvZKK2QAIFhNN6zemCduLUeQTNEhCLXidOQ1GVSB41jmZ+x9+5DZYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2fdB4tcrcTDH2TZskAzKYMDJmAqLtq4qdykh7rZfRQ=;
 b=j2HVlM0auzivbDxNI75Z0nGXz9s15pWvptjojMae+Ah2gjD40rcgTjOcDXDo28QFnQll+JSFeHhppO16ofnOAcfxDc3XAiNas+AQ6lrI4e/xTKUHUBWwh2TFnNEuqN6GBd39s/2HgmtpwjvZX+TuZ32BJRKBCkomIU1qwqfUOvA=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM7PR04MB6805.eurprd04.prod.outlook.com (2603:10a6:20b:dc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.18; Sat, 14 Mar
 2026 12:05:02 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9700.015; Sat, 14 Mar 2026
 12:05:02 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Sat, 14 Mar 2026 13:05:14 +0100
Subject: [PATCH v5 04/10] arm64: dts: lx2160a: rename pinmux nodes for
 readability
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-lx2160-sd-cd-v5-4-83de721585e3@solid-run.com>
References: <20260314-lx2160-sd-cd-v5-0-83de721585e3@solid-run.com>
In-Reply-To: <20260314-lx2160-sd-cd-v5-0-83de721585e3@solid-run.com>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Carlos Song <carlos.song@nxp.com>
Cc: Mikhail Anikin <mikhail.anikin@solid-run.com>, 
 Yazan Shhady <yazan.shhady@solid-run.com>, 
 Rabeeh Khoury <rabeeh@solid-run.com>, Frank Li <frank.li@nxp.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: FR4P281CA0184.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::19) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	PAXPR04MB8749:EE_|AM7PR04MB6805:EE_|DB3PEPF0000885A:EE_|AM9PR04MB8258:EE_
X-MS-Office365-Filtering-Correlation-Id: eb395f2f-8cb4-488b-00ed-08de81c1ff8f
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|366016|1800799024|376014|52116014|22082099003|18002099003|56012099003|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 +psupA/ajvZCSfAYa9KWutsGIUuDkl4f+VouLqe3VvRyn8ZaRTSD6+6vkxDPUbsGmajhCq+CxZLpAXe+CpQlHZUNn+NYCU7VBwhctXfwdB/Brg3iaLhFFcksVxCBfWA4yKg0DeLo6KJAcZ2EllhEcaL8qT5i/WdA9IKkCQ6/CIC3pFVcRgetWF8j6e6KuAKcDwYiTqXIp8rrJtupdIx1G/oiCI8WDBFnYfn1+MYfADuooUdov+8u/dP2EflhxcNqcGcxii+b0sfwiUEsqHcXkzFEETqS6Idilmat+wGQB2RcQYN7iGgpmLugQdhamQ8Gki0vNU7IGKOMVQLgG73tV/qs27ETpz2jMbc+AoGdQ4WOsjAu3wcwg01Y5Jz3+WDdHJSWpWNgsYLNslKi+awszqJXGZiIrU10qkziZhcuRpZZfwVYc9N/wCV5QvFNrC6jiV+GfJ6al9V2vz34AtDEg9peFfTfjKA78mO9Lq5PxQmkSa4owqreuiIof51NqNBsKPEj+L7z+QDsCqnAyWpdU7OXODXQBhxf96E61FgF9ttN4b72vdLUpyhsqgaVxJXLIbWQfXKvKrdhN3lLTpe1g/WtMcR8FhWYt9z7Yu2wsE9xbp2HzcO+J8z8OAJEVyaq6AqOqM/liCtRnMZjUfymu74xJASV54N+i4jK33FTI4DUsRJ3oVTboSI2AysN5QaemNEd/Tm4SX9FYTaJbJqFYowgNKkARQkAy/+kaWIWMsnMF42NN6M3bJrswUV2z45BJscWp3PVORiiWh+t8v2Egsq7qwGynEbRcRS6ZQOvMvs=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(52116014)(22082099003)(18002099003)(56012099003)(38350700014);DIR:OUT;SFP:1102;
X-Exchange-RoutingPolicyChecked:
 nWLZbL9Cs/6MKR7Rc3uO0GZWULs60NwqHUesxrOy+3O4Glzt+KQjdyM8GodguJ8m0vQKRWjx0YcrTc2RTcywgyjvHHZmyR8zNumtqAOugnhakCTD1p12aQvB2m7w/zyJn/sqljQDr4SOWTCgMzRSWIwMblVTLTiGkWguVIIVed3V8lgeNkjg3rlEdH4aCfnltoWZXWYhhtsFfDur6gtu4lOBcAi9X6YNLcpHMMxUBkhWuiIcU8bSe9lCBUMWMTxdyBqeYnKgz94fzmXX8dZ40qRsN/yo6ZzlkMVANy50jWTJHRrP6jhNb0twqsY6SCrOQBq04dJHInvktQ8Sb66T1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6805
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 7a3303f9c91848a88071b795e4580f3d:solidrun,office365_emails,sent,inline:e8a71b8ecf121745cfe4398c998083a7
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB3PEPF0000885A.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	74de6ecf-a132-48b7-28e8-08de81c1ec4a
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|14060799003|1800799024|36860700016|35042699022|82310400026|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	7xs4c/JL+l7JLamvslZ1wQKfG5Af0P6qSGk3fGugReeMBfUgm0hBZJ9DofDQGp4epOqV3rS8b15JI3stWg3Z9vZ12eTR2amLgmvM+xUBeo1ghPul+BAfqN29BmAYa7v1m43yWdgElx44Tl5Ky9nA35z3ikoqfmqvhLP71goNJbDJ7nObtrmtAAA0FpV1WY3klZ8XuKNJesNOl/HlndW56BUgClWMFuo5Xxr3a9eNu7fsTLylPYuwqzmCirgL5zcV0t/oCOD0s6lcj1b/MVy7AxbkUYRH6+kfI3Xvo6fBaan69t+EOYjXLdl1w0+WN5b5D0v7niEyGj8KjL5MfFUo7nJupkowKRrHf9y9MMWK59uUj+8BJihngSN8S7JQQGv8REhyogIqdt/SsEA4qPQtY4K4Uv0ldYsyo8Vrp/F2sVG61yQK2nTDY/w5B76XDuWjR9E/6bbA0k7tzQyxjwWXX81w6KbjZeY8GVZ5sRET26sqrvwEYYn7P+yM35/h91tF8827RygYX4xqNokuUv71/EI/LN7XljEfRxyRshZMLN+f5VX/e6FwkK1zKpO05XT4vTegiKSDW7HTsCtSUoZN9ebi9pzZQzgVOjMs2JR2rIvsOaI9FrjBB495TdbRATgcy1JKOFGZ/XKoh9GiJzKtYog+9/A2SW5/lB1rVvAg/pUopXX3S/pMuOIAdfdDR5yAQuw0AnJufn0F5WwpWa1A270F7KtiJhr8UaLDg2KlJRJXWQlYyNPA/n7XW97wrLAvarSPsW2socV+tEnG9trdvQ==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(36860700016)(35042699022)(82310400026)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	4B7xX/3c/iKDn+8kdiJ1+6gss4GV7hecROVxyNCy1Fvs2W2TCZZQ6m3VGqxPX28Kcj15mAjURFon2XDJJjvFUFDhX8Pcle2fcYwZq1SE66mx1w07SGwLPJ207/cHqbgoq0KSbRIIfbIQ7oNd7V3PoCsgjCY9bbeiUxnbcEPUDkEDTWDhpdO+qCwrFNvNcNNhtU7nghReyVrgYRwwdOuQTZtvfKfUBeAx9cXNUCzWck8Ql7pHpqk49zIGCrVkP+I5hxL2qaCIodu1mxNUlo+aDkR0D3LprVst9ktxZFjXV105D5/ZbRq80NItgBjyobtSO8XQahnNVr8L49tggsRYWx+A6ZhmhgeKuNrSHQ81LynIpAXFDSBIKkTaaIeIEWjfxDtwY9kwmcqtPpZDuHk4V4tfCakmJo+5PT09PJsd46A9CFVOFONMicT4R1XxiYB+
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2026 12:05:34.9019
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb395f2f-8cb4-488b-00ed-08de81c1ff8f
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885A.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8258
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275686-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.31.149.240:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 571BC28CFDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LX2160A pinmux is done in groups by various length bitfields within
configuration registers.

Each group of pins is named in the reference manual after a primary
function using soc-specific naming, e.g. IIC1 (for i2c0).

Hardware block numbering starts from zero in device-tree but one in the
reference manual.

Rename the already defined pinmux nodes originally added for changing
i2c pins between i2c and gpio functions reflecting the reference manual
name (IIC) in the node name, and the device-tree name (i2c, gpio) in the
label.

This makes it more clear to future developers that these nodes do in
fact configure a group of pins, and helps with cross-referencing
documentation.

No functional change intended.

Fixes: 8a1365c7bbc1 ("arm64: dts: lx2160a: add pinmux and i2c gpio to support bus recovery")
Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 64 +++++++++++++-------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 41c9b4253f4a5..28500e8873909 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -750,8 +750,8 @@ i2c0: i2c@2000000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c0_scl>;
-			pinctrl-1 = <&i2c0_scl_gpio>;
+			pinctrl-0 = <&i2c0_pins>;
+			pinctrl-1 = <&gpio0_3_2_pins>;
 			scl-gpios = <&gpio0 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -766,8 +766,8 @@ i2c1: i2c@2010000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c1_scl>;
-			pinctrl-1 = <&i2c1_scl_gpio>;
+			pinctrl-0 = <&i2c1_pins>;
+			pinctrl-1 = <&gpio0_31_30_pins>;
 			scl-gpios = <&gpio0 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -782,8 +782,8 @@ i2c2: i2c@2020000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c2_scl>;
-			pinctrl-1 = <&i2c2_scl_gpio>;
+			pinctrl-0 = <&i2c2_pins>;
+			pinctrl-1 = <&gpio0_29_28_pins>;
 			scl-gpios = <&gpio0 29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -798,8 +798,8 @@ i2c3: i2c@2030000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c3_scl>;
-			pinctrl-1 = <&i2c3_scl_gpio>;
+			pinctrl-0 = <&i2c3_pins>;
+			pinctrl-1 = <&gpio0_27_26_pins>;
 			scl-gpios = <&gpio0 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -814,8 +814,8 @@ i2c4: i2c@2040000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c4_scl>;
-			pinctrl-1 = <&i2c4_scl_gpio>;
+			pinctrl-0 = <&i2c4_pins>;
+			pinctrl-1 = <&gpio0_25_24_pins>;
 			scl-gpios = <&gpio0 25 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -830,8 +830,8 @@ i2c5: i2c@2050000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c5_scl>;
-			pinctrl-1 = <&i2c5_scl_gpio>;
+			pinctrl-0 = <&i2c5_pins>;
+			pinctrl-1 = <&gpio0_23_22_pins>;
 			scl-gpios = <&gpio0 23 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -846,8 +846,8 @@ i2c6: i2c@2060000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c6_scl>;
-			pinctrl-1 = <&i2c6_scl_gpio>;
+			pinctrl-0 = <&i2c6_i2c7_pins>;
+			pinctrl-1 = <&gpio1_18_15_pins>;
 			scl-gpios = <&gpio1 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -862,8 +862,8 @@ i2c7: i2c@2070000 {
 			clocks = <&clockgen QORIQ_CLK_PLATFORM_PLL
 					    QORIQ_CLK_PLL_DIV(16)>;
 			pinctrl-names = "default", "gpio";
-			pinctrl-0 = <&i2c6_scl>;
-			pinctrl-1 = <&i2c6_scl_gpio>;
+			pinctrl-0 = <&i2c6_i2c7_pins>;
+			pinctrl-1 = <&gpio1_18_15_pins>;
 			scl-gpios = <&gpio1 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
@@ -1713,11 +1713,11 @@ pinmux_i2crv: pinmux@70010012c {
 			pinctrl-single,register-width = <32>;
 			pinctrl-single,function-mask = <0x7>;
 
-			i2c1_scl: i2c1-scl-pins {
+			i2c1_pins: iic2-i2c-pins {
 				pinctrl-single,bits = <0x0 0 0x7>;
 			};
 
-			i2c1_scl_gpio: i2c1-scl-gpio-pins {
+			gpio0_31_30_pins: iic2-gpio-pins {
 				pinctrl-single,bits = <0x0 0x1 0x7>;
 			};
 
@@ -1725,35 +1725,35 @@ esdhc0_cd_wp_pins: iic2-sdhc-pins {
 				pinctrl-single,bits = <0x0 0x6 0x7>;
 			};
 
-			i2c2_scl: i2c2-scl-pins {
+			i2c2_pins: iic3-i2c-pins {
 				pinctrl-single,bits = <0x0 0 (0x7 << 3)>;
 			};
 
-			i2c2_scl_gpio: i2c2-scl-gpio-pins {
+			gpio0_29_28_pins: iic3-gpio-pins {
 				pinctrl-single,bits = <0x0 (0x1 << 3) (0x7 << 3)>;
 			};
 
-			i2c3_scl: i2c3-scl-pins {
+			i2c3_pins: iic4-i2c-pins {
 				pinctrl-single,bits = <0x0 0 (0x7 << 6)>;
 			};
 
-			i2c3_scl_gpio: i2c3-scl-gpio-pins {
+			gpio0_27_26_pins: iic4-gpio-pins {
 				pinctrl-single,bits = <0x0 (0x1 << 6) (0x7 << 6)>;
 			};
 
-			i2c4_scl: i2c4-scl-pins {
+			i2c4_pins: iic5-i2c-pins {
 				pinctrl-single,bits = <0x0 0 (0x7 << 9)>;
 			};
 
-			i2c4_scl_gpio: i2c4-scl-gpio-pins {
+			gpio0_25_24_pins: iic5-gpio-pins {
 				pinctrl-single,bits = <0x0 (0x1 << 9) (0x7 << 9)>;
 			};
 
-			i2c5_scl: i2c5-scl-pins {
+			i2c5_pins: iic6-i2c-pins {
 				pinctrl-single,bits = <0x0 0 (0x7 << 12)>;
 			};
 
-			i2c5_scl_gpio: i2c5-scl-gpio-pins {
+			gpio0_23_22_pins: iic6-gpio-pins {
 				pinctrl-single,bits = <0x0 (0x1 << 12) (0x7 << 12)>;
 			};
 
@@ -1777,19 +1777,19 @@ gpio0_14_12_pins: sdhc1-dir-gpio-pins {
 				pinctrl-single,bits = <0x0 (0x1 << 27) (0x7 << 27)>;
 			};
 
-			i2c6_scl: i2c6-scl-pins {
-				pinctrl-single,bits = <0x4 0x2 0x7>;
+			gpio1_18_15_pins: iic8-iic7-gpio-pins {
+				pinctrl-single,bits = <0x4 0x1 0x7>;
 			};
 
-			i2c6_scl_gpio: i2c6-scl-gpio-pins {
-				pinctrl-single,bits = <0x4 0x1 0x7>;
+			i2c6_i2c7_pins: iic8-iic7-i2c-pins {
+				pinctrl-single,bits = <0x4 0x2 0x7>;
 			};
 
-			i2c0_scl: i2c0-scl-pins {
+			i2c0_pins: iic1-i2c-pins {
 				pinctrl-single,bits = <0x8 0x0 (0x1 << 10)>;
 			};
 
-			i2c0_scl_gpio: i2c0-scl-gpio-pins {
+			gpio0_3_2_pins: iic1-gpio-pins {
 				pinctrl-single,bits = <0x8 (0x1 << 10) (0x1 << 10)>;
 			};
 		};

-- 
2.51.0


