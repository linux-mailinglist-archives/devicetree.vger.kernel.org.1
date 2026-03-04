Return-Path: <devicetree+bounces-270990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPq8JtAVqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:21:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 758DF1FEE38
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 131AA301DD59
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B699A3AE1A5;
	Wed,  4 Mar 2026 11:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="i6k1fYh6";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="i6k1fYh6"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11020104.outbound.protection.outlook.com [52.101.69.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9AF3ACA5D;
	Wed,  4 Mar 2026 11:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.104
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623299; cv=fail; b=VO+NAj21NwaUtN9ZVfx2yjeBVC8FMwX/OvxA8gBgQrFc9NzjmJN4zUfYvU7Pm4Q2EhCbjLNKPjMpkHzY5TW3nSCFw2CKsDRNAWEnn8/kAqLqW0R2zlYkfAcIzSfKEOg9QkFRswCo+5FtOQhjgDVkTHkexJKy3SsQW3w7AvoVqPo=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623299; c=relaxed/simple;
	bh=boUVEgGiIZD12xslgG6zyjkfWy7St8ZfNuBk95qGL/o=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=LZzsOJviGMu2ayWUpKMeDoFP+FiH7W+U54acTCnldaBmpAUKXCD0VSZDRrrVvHY+FY0lzjBqGlizYvFUQtKwNzG+TBjy9rghRqJ/Tq86ZXig567Fk1pi9PAMDk0mpkzU/I2Y8WEPp8ysA4LXWsNAH2r2Xc6S4pg3fMDxXYu3ll8=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=i6k1fYh6; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=i6k1fYh6; arc=fail smtp.client-ip=52.101.69.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=zORK6i5LiJkVB451fCH7kqSqAtNlOihBDU2L6gAn+q3Sk4ixLDdE/xpi8gKS/RibXhCk4UusGqajW5rULU5YN7zI+Vz/XbuPFi/C2YeROHnXcm9NJnRA1BoGV24wYSaesTTDCJMmK/PlN2itP+cRVStmpVDtDOiNjRWDVc2ETgq4wOoUXMJQtyUlGU1BLo72gbqV/rSEgroy073HQF981WdY/ZB0CaIXPo0LCh4ddxNI3Fu2sEf2kiclZc23VcFir3C8Y9gwxaZCRHPSPQgYuFHuQfp1ajwoR4zztLUffqck1CI3l5nua6Fwz+zSnJ3Dd1QSfurCjWlwlNZTXiBgVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TV3Bp7ypsj5/5LFVVMLalB6K+UQpGjbjOiVYswysFRM=;
 b=rLpTPaUj0LfRX6dsxFMGqkOB/CUi3s136l/Vi6N7y1INBfcWy40ZfxDEQRfa+2mSAsmdzqVO4X4vBTYmmLUOHiL0c5a+rdmS917JzoKdH+wKj/Yf59bV0Ezj6gMhfzTBNudjeUB85/2KKrGl2BL3C8RNDrags2iASOMY9+KxppNQaghPW3QrqJHnBDtMAz89sGJgpOrzrLa33bU8iPfcjU3/k5/80VbKmJz1HhEmCIZsEhQquPGDSPQRbNhtj7M/CfOGrAcy7FM/EieyWR3Ry4uq90UbhGJ0JI0UV9ZY72GfKHR5mxZ6P6kelD099U8nm/SsvuJCZmFHtaUy/UvBSg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TV3Bp7ypsj5/5LFVVMLalB6K+UQpGjbjOiVYswysFRM=;
 b=i6k1fYh6QcZkCwyu+WLvAya9P88brwAuD/S51CwfXmusw71Pan1R+mOJQ0LglW5HzpeyV8klYwi3xuY8VS9QQBmlTq8iBOAcUMWC43dkwkAWT3e2ZmbudJr2VxEPdANOTJK8rWjWDKlDZHpN196S1kK8gl2gHSPzKGeYXXw0hBo=
Received: from DUZPR01CA0084.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::11) by PA2PR04MB10124.eurprd04.prod.outlook.com
 (2603:10a6:102:407::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 11:21:35 +0000
Received: from DU6PEPF0000A7E0.eurprd02.prod.outlook.com
 (2603:10a6:10:46a:cafe::d7) by DUZPR01CA0084.outlook.office365.com
 (2603:10a6:10:46a::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 11:21:34 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU6PEPF0000A7E0.mail.protection.outlook.com (10.167.8.39) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.18 via
 Frontend Transport; Wed, 4 Mar 2026 11:21:34 +0000
Received: from emails-6154127-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-166.eu-west-1.compute.internal [10.20.5.166])
	by mta-outgoing-dlp-431-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id BC3D980645;
	Wed,  4 Mar 2026 11:21:34 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Wed Mar  4 11:21:28 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c6xLdVnyd3tSNQM7Xmeu7oUrNFszpkppsrDM+ax9FNY69Ez5ut35HeXrvXyPrg62s17XrDg+aG9g1U4P0jJiJekjxYQmgvZKd9v2qZ8+EKz6HIbia3e2NfbfsMdsutsKPhe7Ms4UsVuw4Wg68iwWP3WI5zepAxrd3BRyASfE3ROF6hV1Nl83b0cSAKHg1j0ISVLk8UN9ytNcogNUmV8SdakdCBK+87fXva9wxSB1uMLwOpg4r2o+TFxWki2PZ06oy3Lv4ho9Lklo5wps1P7/crcoSHNT5X7ZtcNnMMSkldIFzJpxOe36Cp3mWakviKDELnDRRNaWW6c0MG5ozuez9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TV3Bp7ypsj5/5LFVVMLalB6K+UQpGjbjOiVYswysFRM=;
 b=pYQQbm4u5T50uOK7cHIgtiUXvHsTADX5WQTl6tWZMhhMjeFjmghC5zvHi7+WW2RqiCHMC+02uoY8eBKjc1D/BjovdW+ynlaeNdUNtugjKronPBpOsdRnoqrp/g1ngsQnEcI83DsiXziTrfOu02ImBORHxzagBDFxmSIqgVYCwc1y8BhbAeSN+etZI6jNoyPog0Oa188AJWEAYBFXO5mCzeIzHnKhIfxAl2L41NjaIAgn60z+Jsh/JFB0qnn6WKvEYM37UPVCBO1kf5PADaB5eZf7sHbmLdNWQUu2Fl7MIr6H/NI1F8/gtwrFEhwG563v1bUh/SA3QvMgvW20/p1ibA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TV3Bp7ypsj5/5LFVVMLalB6K+UQpGjbjOiVYswysFRM=;
 b=i6k1fYh6QcZkCwyu+WLvAya9P88brwAuD/S51CwfXmusw71Pan1R+mOJQ0LglW5HzpeyV8klYwi3xuY8VS9QQBmlTq8iBOAcUMWC43dkwkAWT3e2ZmbudJr2VxEPdANOTJK8rWjWDKlDZHpN196S1kK8gl2gHSPzKGeYXXw0hBo=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by VI2PR04MB10979.eurprd04.prod.outlook.com (2603:10a6:800:277::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 11:21:22 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 11:21:22 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 04 Mar 2026 12:21:17 +0100
Subject: [PATCH v3 5/5] arm64: dts: lx2162a-clearfog: set sfp connector
 leds function and source
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-lx2160-sd-cd-v3-5-dee4523600ef@solid-run.com>
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
	PAXPR04MB8749:EE_|VI2PR04MB10979:EE_|DU6PEPF0000A7E0:EE_|PA2PR04MB10124:EE_
X-MS-Office365-Filtering-Correlation-Id: c7b02cd7-d08a-4387-f78a-08de79e031d2
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 /+JLFIkQtyJj4KqKylHYUhkVP1yU2Udpz8PhWs+gIv65Ug9fGVt9LlvIgd634HfxqS284mXYyvp7A1xH06l/L4z935EVx6tLk1IioTDpHllpRaW5ZdzwKWCVvaEOzMp7dV2MXc5IEhTpeGAY6MuZ2EPUzwmNQ5E6k7C/bzouN9zZLNCFh9x7SCX84Xa75BNkFZeYwV0Sa2K0hdZhp5V/BR1mxJdXJcWbLQ6HBZKHvqdU81JK/eCx2TEU/VCG9q9GgfrZdfVORKS7UYJgsPUExNaYDJPyZreyRgHPa4pdpE/VFoS0CXKyswrblxKqaLNYo8FVJ6dmtCP1KxupgrqR+U1J9CQd6QAYwVVOa27ofySjIUUv45uNp4iNxWNBSlSyZJZqU6iCsQWodJRPFL94/oIk3F4QZIaAwP02Ahyv+QzN43h6yEjNr9wFhKh47hdchdeLBqOic1EChayF2ZZz14yfRrKqXKCy5IBAaVDQi1TUVM/clPOIqCsXPmiVdqY+pI/Ru8txojZHuCCFtX0dviOBXwvVnmMEy8tiNT53lQKHns9hhTSsZX9yUPVsVS0UoBR5k3PKoC4lJLi4KvnVUYgCInRVoOsDCS0Ueo8XB2lrnMPCYAKIqQ0tt3gf+epQ6yuGQ5ORojn+BAw4ThOUAmpkfjoaYhxEyAJJBl2kmQT5xGJwtTR40RO5tD42lTJ3hjvMhkwJlbDJcy3yh0WHZddX3WfClz1wllYYPvcqStKfbLr7Zyt4X3QY8MSsOHlHIWpTmVRuiUAU5uEhW7eGds4ueJOMYZDzrySSo7bw20o=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10979
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 54fe2691756f47ccb4f60a55b4df73e7:solidrun,office365_emails,sent,inline:24fbdaf47b4eead4bec4b5d78012f82e
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DU6PEPF0000A7E0.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	a9b97948-dcc9-4e08-79e4-08de79e02989
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|36860700016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	gTRecWqBcGqB8wXMYI/Sk6LGjEGiW549YqWyI3nrdOzGIT48rjZ0x0ESPGwzy1mSlSyZF64IAxwyHt63TAxZXCpXy8FneJ1vVgMnJZxCRsw7CZ8xVLJ6AH06gasYY7QlijG6SOAZdW6cplPM58bN9rSfEsejC9rRAE8eEi0msAZo3IBBPG8rJBqpsruRdSgjHV/nwXdUBa5OfHOgihOvIr2fSF5kvJnZbO5lluE8QWg+LOs3r6qiSWPPyV6yKgyTJv4bOYMTPokE59HXorRRqX2D5a7MxJDzT6X1/160dHJ/JOhIybZ+r0zVhGu3W19QbuuvM+f0bh9pBm0oAe4kiK/avPDyW3jq4gOO26r/X/i9gWn4+RQXrZLsokJTsPwheGSFtY7UB23tUzytKmtdYVDVjISoedjVl9mnfl8s1kVvnb9M/7lpGvdHEMyoWM6dB0iz97VwrA2BN6kSJjztsEeci2znEwmRZlOPNMeXMA8d9f1U0YqBu8fLneRO+sXS+Xt9tsSzZNyjOnYORX44Qk73zEhrnk4LfmBWEQeCZiy+OMKjNbnEFw9wDyyZsurTY0SO+nlOxifhZMEijj2lw/3nwDUzKmcWymP+s9vfkbSEeXD3WItq0WBhKjsWWqDTAFGBXlO99r9w44rr5Tb/BFzPvKix/jATdb6tRONjAbvGVKCahdAfMcvMip+jO9hbqAs4kT5dinKXGV0QExPmTUFQ1l8jtcK9iEMsVxLCywzFTzAhgc9u0QY/jwD39VZjMVxlpGH1IwbPoA/5W4knZA==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(36860700016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	ofWcbvGS2rgui03ErWjl0YMi0PhSkCK1oaWseuEgLDFoMotwuMZuh1f8P+L6LyqAghpvnHR6eOPfenPAooNCGLeoEOF9ouSjKMi38iC8AkAlMnxK4iZR4EwYF52re+wqzTMKktkABoxS2z9T4j8tZJF+c/2a2jVSXnwHhzQMkmQax6ZtFgcirBq3Te4mmr3zGJ3Gq7nTyIGfbjzFtMLDEAeP5lmhmBem1d1V0zevdJV+3pI+AfFOTspgXocJ75ajd9DG0zBueRp95v/T+UHLX806TKmbFmH+sKAF8Eg1TWD4+3D7G3NcLoy/vBmvFVNGSUN8hjXdgYWh9Hv1mK0UsKtPgyVPFJpuPcUvJFyjkn4s/+MsA2I1dO/WGE3DgxcjATJ8ULPU1aH2aVw/kpgnJDeu5aGXy6HYygf0Uewgv7mfrjh/C1g8iZKy3/cLUAQ6
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:21:34.8317
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c7b02cd7-d08a-4387-f78a-08de79e031d2
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU6PEPF0000A7E0.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10124
X-Rspamd-Queue-Id: 758DF1FEE38
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270990-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,solid-run.com:mid,solid-run.com:email,solidrn.onmicrosoft.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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

LX2162A Clearfog has four LEDs attached physically to the 4-port SFP
connector. They are intended to show information relating to network
interface status.

Select "netdev" as default trigger for each LED, and link each one to
the respective dpmac instance as trigger-source.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2162a-clearfog.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a-clearfog.dts b/arch/arm64/boot/dts/freescale/fsl-lx2162a-clearfog.dts
index 8920326a06735..9d50d3e2761da 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2162a-clearfog.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a-clearfog.dts
@@ -41,21 +41,29 @@ leds {
 		led_sfp_at: led-sfp-at {
 			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>; /* PROC_IRQ5 */
 			default-state = "off";
+			linux,default-trigger = "netdev";
+			trigger-sources = <&dpmac3>;
 		};
 
 		led_sfp_ab: led-sfp-ab {
 			gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>; /* PROC_IRQ11 */
 			default-state = "off";
+			linux,default-trigger = "netdev";
+			trigger-sources = <&dpmac4>;
 		};
 
 		led_sfp_bt: led-sfp-bt {
 			gpios = <&gpio2 13 GPIO_ACTIVE_HIGH>; /* EVT1_B */
 			default-state = "off";
+			linux,default-trigger = "netdev";
+			trigger-sources = <&dpmac5>;
 		};
 
 		led_sfp_bb: led-sfp-bb {
 			gpios = <&gpio2 14 GPIO_ACTIVE_HIGH>; /* EVT2_B */
 			default-state = "off";
+			linux,default-trigger = "netdev";
+			trigger-sources = <&dpmac6>;
 		};
 	};
 

-- 
2.51.0


