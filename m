Return-Path: <devicetree+bounces-260531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kD2CI8E/emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:56:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D14DA65F6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A0B030CC4D6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D8E129D288;
	Wed, 28 Jan 2026 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="KJk6lVyP";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="KJk6lVyP"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023078.outbound.protection.outlook.com [40.107.159.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786A030FC3D;
	Wed, 28 Jan 2026 16:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.78
ARC-Seal:i=4; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769617313; cv=fail; b=k4q97qvNNC50nC168k3HaSFa63FEEslNP+M8fcyi873ovqyXlNFk8bMdPFAKZQV4De5nvHw0/JMz1LP3qCHAu1Km8BFS7jUhXcKVHtzT2MF/9UA1SVjmmstJ8itju8mBAAsrPCXciyK7kf3h2grayT176DN+KPshpbZQLSwyw3Q=
ARC-Message-Signature:i=4; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769617313; c=relaxed/simple;
	bh=KB3mXdcy1WI0cxl+aJP+b/PmEQiYwGOcJbDa+4EyiUk=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=OXxqGB71mogT+mlvuV0DaJkMbIGVvkmLcpFFEQEKfsEvltjsqbWryAM+WzK95/eushla4QRreTChcv89/WlkD//iT5Qkl7fjUt7dxAgBJekR1tPsGpkwxuWieb8l9SgRJg4iEEJnRqLki2IPV6bWDzLHRWboMioQ02X15I5eI2g=
ARC-Authentication-Results:i=4; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=KJk6lVyP; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=KJk6lVyP; arc=fail smtp.client-ip=40.107.159.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=3; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=tkvJWjbM0fdTiuiTpt3EYSNWCL/EgFY1J0hZOLZyV+dn7ud9DL1RsAGTgoC9dYuNnHK5ijHmevo19BQB1WUOFPdBnf7jyNpLWuCCf6k/4xu/4WBkObyAKsK7wibhgcFbeauoO520MKB1GF3unBLaltazOD7MXNCwz5DlXgA3hYPXAFDbjnVD19Zjnw9kcD/AyU6uKJmkI4x4p9D4dh/afU8Z2GUywR+7zFCjDV5SnoInZxY7nqGUkDalEQhdt/MkG3cUySAcsiG1T0nCGxTBujQ6nB1ZSQJcsxcCrrsJtBZ/Y9i3zmreCd69Uzhlh2Vuq3ciqQhL+XSS3Tjbqb/ywg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWxuApA6n/kQA22eOutzJH1djx3W/K7NWvtprDoBtn8=;
 b=NTtHamaWsveq6rWZFfIo+/H0gnPT2ms+pqhDuv8yv3kqFiHcsDfp1lcscON7h1uzYQKBsaHuAWOjJgs85omslY0hH4qOLy2Fwas3wTpfLl3XtAJeZWEG4cGJ0qOt8doxuWV+gmTeUXZ3bLGmA3+WlvxAja8YYvEQhrjmye5zAaT9+HPT+RGUno7fHDiuG2qO9ZmlkX2VBlmPasdfe8Y1F+iObdPP+JjyV2azNealXnlFHgKa7/c7y1Uwrb/lhZ58cBXWaxWOS0+Z+QhYskyg80cKkJ27IyFIFIWWFtoABHxC2oTx8CV8Ns0tn+YuXRLvUYdKIrP3KDilJ2KTIsaxlw==
ARC-Authentication-Results: i=3; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=gmail.com smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iWxuApA6n/kQA22eOutzJH1djx3W/K7NWvtprDoBtn8=;
 b=KJk6lVyPkY32zLYnuUdVHilDlyBrqK/cYKebBS1qIqy1Rj2cPyM0uB5ZQb9UHAoAQBuWO41LYD5DnmPKZQ8lbVY92L9uKay+Nhz0+lIr7tfkq4m4WWoMyAE2+rk4H7M6eU/eD971q2Kf9KGtkYZNW+xiy6JP109D0AL3BaF9YUA=
Received: from CWLP123CA0058.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:59::22)
 by VI2PR04MB10268.eurprd04.prod.outlook.com (2603:10a6:800:21f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 16:21:46 +0000
Received: from AM1PEPF000252DD.eurprd07.prod.outlook.com
 (2603:10a6:401:59:cafe::44) by CWLP123CA0058.outlook.office365.com
 (2603:10a6:401:59::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.8 via Frontend Transport; Wed,
 28 Jan 2026 16:21:45 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 AM1PEPF000252DD.mail.protection.outlook.com (10.167.16.55) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3
 via Frontend Transport; Wed, 28 Jan 2026 16:21:45 +0000
Received: from emails-2547891-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-155.eu-west-1.compute.internal [10.20.5.155])
	by mta-outgoing-dlp-431-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 9ED357FF34;
	Wed, 28 Jan 2026 16:21:45 +0000 (UTC)
ARC-Authentication-Results: i=2; mx.checkpointcloudsec.com;
 arc=pass;
 dkim=none header.d=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=checkpointcloudsec.com; s=arcselector01; t=1769617305; h=from : to :
 subject : date : message-id : content-type : mime-version;
 bh=iWxuApA6n/kQA22eOutzJH1djx3W/K7NWvtprDoBtn8=;
 b=oW5z+Rh6mgHOG5s1fLKeE4hBik7CqYCul3gMKApKZASFGKg4XNYXh8r59rNUZeOGdGk76
 StCTYhTCv6NHTgnFNS6mj1Cht8PynkzIHCOsO5VWSNzlW6eTc2ovEjjidTTCLKQXAu2Suuy
 M7Lqfa0DraeJbgSr/yA/M/BhNOYeY/A=
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=checkpointcloudsec.com;
 s=arcselector01; t=1769617305;
 b=lP4jIqO1DYdIjEPmlJ37k2iUzITn22P/g13eSFJodGcxAeTlXrSwJkgDUIAmvag6FWYNl
 UJ74RPo6QRr/qt8rAmjxl3Cn1c2niAONE7RcECJBL9JtetBXDw20bHDRCwJTjI5XQIbT+GE
 jYp/5YX+k9MjbSYoZVLbG/bnaILD2Lk=
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=exchdiG+YWnQkYDBXX4L5nRUakVaarMuLtSAyA3v+moblg2qswSt5Y442jw34z8B8be5gieaLhmfa8YvP9lhQXpgW3oAiVVllv0BLtI6oVkr4WZ66/qPUNNoou+sEuHrg6A4jiIy2lMY94q3nQauzyQmEQgCDyNj+tecpGbRZzxPL0GZSI2DZFtjGrNuC5KDGr5G7NkyW/T0oQZ2IR/YGNwK2BHYkh4ieWs3MgoHJLnVa72w6SVpqHeZWF7yKtK3WXm+BJn/1voCPFZ5efJXvMkBmONy/ns1Gg1eTnpClODgiKgQumnkCoKco8KBYOPKR1Ed/aACeqLf+MkRTQyhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWxuApA6n/kQA22eOutzJH1djx3W/K7NWvtprDoBtn8=;
 b=rytDYrLq/ZwoJkMOZ/f1pz2o9wyBvkjTrjavDO+9Cghb5dHGK/188Cr05qQBAu/4mJtFD/bS/Ldol0TKNCYel+PZ6164KwrmBdxC48rjj+jZlbGf2GmSjcdt3WeVnM8Z8pk8g1d6y9UBP0E9eL8kp8LmPSzyPmlLZhdRTDqt9jmW24G0LYeUeGn+/AQvO4Lc0Bfnlt0KHyzIrGxGIYaKcqF2yiBfOEsIfFRZnQJcWscODNw0LjsoYUw20baUaOY+58vOBAdAGGhwXBETR5yE+DaJDDNrw/XZ9j0eRKdoQtB/w587OflzRWMM7D/0P1py0aAhrd24SoiGWKZswC57IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iWxuApA6n/kQA22eOutzJH1djx3W/K7NWvtprDoBtn8=;
 b=KJk6lVyPkY32zLYnuUdVHilDlyBrqK/cYKebBS1qIqy1Rj2cPyM0uB5ZQb9UHAoAQBuWO41LYD5DnmPKZQ8lbVY92L9uKay+Nhz0+lIr7tfkq4m4WWoMyAE2+rk4H7M6eU/eD971q2Kf9KGtkYZNW+xiy6JP109D0AL3BaF9YUA=
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM9PR04MB7522.eurprd04.prod.outlook.com (2603:10a6:20b:282::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 16:21:36 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9564.007; Wed, 28 Jan 2026
 16:21:36 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Wed, 28 Jan 2026 18:21:28 +0200
Subject: [PATCH v8 4/8] arm64: dts: imx8mp-sr-som: build dtbs with symbols
 for overlay support
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-imx8mp-hb-iiot-v8-4-9646a3025cf4@solid-run.com>
References: <20260128-imx8mp-hb-iiot-v8-0-9646a3025cf4@solid-run.com>
In-Reply-To: <20260128-imx8mp-hb-iiot-v8-0-9646a3025cf4@solid-run.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: Mikhail Anikin <mikhail.anikin@solid-run.com>,
 Yazan Shhady <yazan.shhady@solid-run.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Josua Mayer <josua@solid-run.com>
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
	PAXPR04MB8749:EE_|AM9PR04MB7522:EE_|AM1PEPF000252DD:EE_|VI2PR04MB10268:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ca49af7-7d6d-40a8-7386-08de5e8954d8
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 =?utf-8?B?MklQd1V3S3pSUXJZR2hYRGpGYTZzZ0NtZXpCaE9Kd3dVbzVPSEdBRVZIc29y?=
 =?utf-8?B?Uy9zaGV4dnphem1oOGhuZDljd0lBdXpoS21zaXB2clBZZWN1UUNiY0s5Tm5w?=
 =?utf-8?B?SWttOHBpZVFHVG96NVlmV0NLVjlpaHVWK1JkZmdBQndkelNtZ0pFWFowUDll?=
 =?utf-8?B?bnBpbTBPWG5SQis2SmdLUmx5S3NTU05HUlpDMENkRGk2UkhpNWFqQlNXUzJm?=
 =?utf-8?B?MXUyQ0FFK2NwRTFkWStFU05jd3dYYkJxSTZvU1BEcUMwL09KZ3dCdTdtSEEv?=
 =?utf-8?B?N0tUTTIvam1JRjBGR3FrKzFGaWFZZFZXN0FtdFJ3SGZncmRLQkJtZXYyc1pJ?=
 =?utf-8?B?V3NZVEtlaEhUNzRMdWlqdXlrZlh5dFdkb0dzWGc0N3lOaWlVNnI1TmJvQVFm?=
 =?utf-8?B?SWFXczNWUmFBNWtKQ29MRVRHT3hCcDE4b1FrOU5jRXRKODBncVZEN1FQRHJ4?=
 =?utf-8?B?SCt0VDVTZ2ladWZkeTlnb2hFNllQejRiTXRLZmxTbmNrdy9XaUpiYk9vVlpp?=
 =?utf-8?B?QUc4SS9tcGVPVkNsMHJ5RE1UYkNtS0l0Q3RaL0xsUzU3RVZGcGw3N1NVcWo3?=
 =?utf-8?B?U1dRbVNGeEZ5V1dKM0drc0tFbGRLUFRUVEk2cWt2K2hJT1N3ZHpTazN0dGNz?=
 =?utf-8?B?eU1hZHNySXBrNWpsanV3WnMwM0YvSCtNOHRtZWFER0hxRVltSjE4Z2toUzhV?=
 =?utf-8?B?MFVEZVV3YjBUQzluNURiVXk2WGUwUDFBbTZESHE3T2VZRE5oOTdHb1J1dkU0?=
 =?utf-8?B?VHJWeWoxd0NRYTEyendoT2FxYUQvbUhQaW5SUFdLVzVNYURhV2dsUmxBeWp5?=
 =?utf-8?B?UEZRS2VoeCt5ZmNudy9yODN6NlhpbzRNaTdnb0pXS0k5K1lxUFZGZDV1ZGlI?=
 =?utf-8?B?Y0FwUldWMGhqVHREbjFJa0dzNE1oeUVicnQxZzk1MEZTMVpCODJIS3NLM1Mr?=
 =?utf-8?B?MlFoYWg5UUtUTWJqbWtvYVNkU2pRZDZUanVTM3ZTREM1T0J5TzFHUGtnSUhH?=
 =?utf-8?B?MWFrQXRrd3ZKMVZzTFR1RWI4YVFnTVo4M3JmQ3dlYnZIZnlMNHVCVVY0NzY0?=
 =?utf-8?B?akJIWGQveWpiSDZqaVNTcjZ5QjdOeEFHbXd4UEpPUlFwTnRvU1NhV2cvMVZw?=
 =?utf-8?B?Y0xXR1lrOGNya3AraGFJUWdOVnBpaXZ4N2t2bS9uaGYzM1UvT2VqTmtMdkFJ?=
 =?utf-8?B?TDJGcGNrYnNoNVpSbXdGb2ZBcVNBL0taMmxVdXFIb1JnKzhFZW1HVFEyZmp0?=
 =?utf-8?B?M3RTQ0Qzb3hVbE9lQmNhYkxFdHBVQXhKeENTY3g5ekd3VWloR0grRUVxL2pZ?=
 =?utf-8?B?eGtOSHZsQm05a0JOaFFtRStwa04yVC9PM1J6d29uMkJSRHBjK3RINFRGWFhx?=
 =?utf-8?B?QzZ3YTBCUnMycUR3am1WK3lBNTRqUURKcDBsRUxsU08yVGJtS25rM1QzR1NT?=
 =?utf-8?B?S0ZteEthRXptRDZIN010bzNrcDVIa0xRTklQL0NETVd4OEUwYUxpWW92M3NB?=
 =?utf-8?B?K3ZSbUV0ZUpzNy9ma3FUeTJ1cStuQmhadkRjWjRhSDVrUlZONWVEaTBmOUdF?=
 =?utf-8?B?M0k2S2ZzaXpGc0hlQVdFcFZ5dWZibTlDbXhKUFpxejk2aDJBSXE4cDl3MmRO?=
 =?utf-8?B?VmFkbjl4c0lLSVlobkwrQWVENGp2WTRKclRxT3YwYlVSaU44QktjaU9yRVd0?=
 =?utf-8?B?bFNLMG9sQWtkRFpwQzRzQUZZWkR4TWRmZkhHZzEwYnI5TTJuSktydkpmMGRS?=
 =?utf-8?B?S1B2SjdxcXlqWVdRNTYvSHBYUHVQaERFaE5lTlh6NGsxRVY1ZjJyZ1lFdkN3?=
 =?utf-8?B?b3dxNUlrUVhBNnI0aWRpVDNMMWtWMkFtc2VzYWpJUzF3cXkxZEFvckpFUlNB?=
 =?utf-8?B?TCs3ZHZ3d25mSFdhYzN2cXF0RVUxdCs2ZXlHQmpvM1duVTJBQWlYRXRvTGM0?=
 =?utf-8?B?OEdQZnd2eXp0aHhNek1pWVpHQzB4SFlza3ZyMTVyNTBJSFZ3a3pVaHlWcmZC?=
 =?utf-8?B?NmJmR1FEYnkvL2kvTkZycTNMcjNqcVlHQ24xTmZKRWtjNURhZzViU3p3ZDVH?=
 =?utf-8?B?dWY4R1o4Y1ZaM0twT1ltWVdQQ0tLUGNIL2xMcjBXR21RcjNrbkpzSzhQK2tk?=
 =?utf-8?B?RGliSnFjSjVNYU1NYkM1aEFnbkx4di83Uml1cGx6UzVncDVnRmp5alZKM3pw?=
 =?utf-8?Q?Tzv0eOBOW/BgFHTjhlOYGUA=3D?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7522
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: 05126b4eb2f142b683fd6caeb8227b09:solidrun,office365_emails,sent,inline:32bee9989c3005f395d4e7f8822551d9
Authentication-Results-Original: mx.checkpointcloudsec.com; arc=pass;
 dkim=none header.d=none
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	c1b8423e-e55e-4f2b-1ae4-08de5e894f01
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|14060799003|7416014|36860700013|1800799024|35042699022;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ekZDRjlHRTFMZTFZd3V3cjR5Yk0rb3kxWFRIUFl4RHpsdDV5MVZMODIySHAw?=
 =?utf-8?B?djhQSlA2LzdkQmhFYWxtQk56QnBFNFV6VTdER1FLNEVrc1kzN1drdVZyWlpE?=
 =?utf-8?B?WnhROGJ3b3dOaDU0M3pkNXl5eklWc0I0b3NnbVBlby94RWt3RndLcEZTOWNr?=
 =?utf-8?B?WjRKT1ZUU0JXNklTbU9UR0lGYzYvNkQxYkdMcHhFeTNuaUVyZis0MGJDNldH?=
 =?utf-8?B?UWRnZmY5VkkwazUxOTVOeHdLUjN6THh2ekRvM2VGNEYxNUxIdjhjMEZmWExK?=
 =?utf-8?B?YlVna2hjYWNvTjFuZnYyZldmSkdVWVpta0VkREU5RTFxUW1EaExuOWMyNEU2?=
 =?utf-8?B?T0kvbjg1anNJUHh1WFg2YU9jQjZMd01pM2RPa3BvZWV6bWFrd2Juby9pdURT?=
 =?utf-8?B?RFVaVDhLYkxneHNMTzJ5eVdWV1g3T1huN0dhdXNYbkVnWDI4cUJGMnRQRGl3?=
 =?utf-8?B?UWxxejlDamdTTnBlYTB0dThwVTc0L2RMbHJvU0hiL0k4T2pwdkZkK01wZ2N4?=
 =?utf-8?B?RmJqdXg4YW13dFZBUHZzbkRSMG1OQXgyeUErVytkUGFtUit2TnZ0clh4QVg1?=
 =?utf-8?B?aVNWSUM2TkVXSVQ0SnJ2a2ljU0JORFg1eTFEZDU2N3VVUlI5SGMxcEwwa0ho?=
 =?utf-8?B?Q1p0QzYrS2UxNHlSMmk1Y25rVW1vUzNHdGtuYkVyOWJsRHpHeTRCd1FRNlhx?=
 =?utf-8?B?bCtUVnZsM1hsRU84anY3RHpRNjdFZVpNUW0xaHh2TW83VHdtNTlObkxidEU1?=
 =?utf-8?B?dTRpaVI3eXByaEFTMzFKbXc3NFczcUFuUG9acllOUzB3elN3SWNWOTBMMDZX?=
 =?utf-8?B?WFIrbXRXaGhQQWN1L2RYQStCdndPTHNFVTRMVWp5SU0rTDFoVDZhT3hramFJ?=
 =?utf-8?B?cXpBb3dRZFVCOFR0MURUYjNkNGc4TG1ta3FCRjFHYzR5QStGcnhKTEJpTDM0?=
 =?utf-8?B?OWtyWFMrZVlJNjVWTCt4NDdROWtxVjIxYVBmZUtFbE5mRElYOVpmVVZyaWQy?=
 =?utf-8?B?QXdJcEMwOVgwN2NMNFNJeVI2SDNtZ2pzSWNNMEo1V0tJUDN0MlZGcGlxZ2I1?=
 =?utf-8?B?K1JNTzJmQ21pMi9CcFRaSkh5Q0NINHlIcDZjbVJRdG1UUVllQUFBK2ErSS8v?=
 =?utf-8?B?dk44WU1tMTRsQS9oL081ZGhMUWQzVitGOGl3ODhKWFBRS0lNdHJKVDQ3b29Z?=
 =?utf-8?B?cDV6ZnlaeXBobi9qQ3p2dThYanRjcU9neWR2Q3FldEZpZFFlbFlQYzBkTDM2?=
 =?utf-8?B?MTRwakdWbVN6dUVjbVZ3ZUtESWVnRTdqWmREMGUwV2NnVnpZVW5lZFJ1Y0I5?=
 =?utf-8?B?Z2tpYTArbFBSM1dRS1M2WGR1ckl3NjhGdDRsc3hWT3J2VStXVCtMNkNVMFVK?=
 =?utf-8?B?YVJBdHErWVJsT2VnTExCbXR4K2tGdTJyM1BvYVY3VHFocVhGemRUTk9FQWZD?=
 =?utf-8?B?c1MrbHp4TndBUG1RVVVyRzhKS3dYc1hGV3NtMGdSZFdMZm1JTS9oejVEZVRG?=
 =?utf-8?B?dGFEREh6NWhlZXNRN1kwWFVsVDFUVEt2dmVUNmFUcUhqeXVvTHYrSjhpVVJ4?=
 =?utf-8?B?RFlSaU9yMnh1ejFJY2QvRGFuNDJjVjFsY1JySDc4SS9mc2pDM3FYV2lsSkZS?=
 =?utf-8?B?bGc3OWdIQjdUZkh6bG0xdnNNelpBbVFkeVJmZVFhNDVVWUErTUVFNWhrQTlB?=
 =?utf-8?B?dWN3VFoxZWluNHRNcWhPeGh4dzgxZm45RUN6SVByenN5OENwYUp4Y0tueFVO?=
 =?utf-8?B?NFJYVFBCQVdONGVVVkNzRTVrNFozeGlGSnRWUDNmMFNEU09VZjRwOWVjblo0?=
 =?utf-8?B?QjhOdDl5QWVYZ3Rmd2RDY2ZPVEdmSC9pem8raWFOem9janBvcE9YQ0U0czhM?=
 =?utf-8?B?eGxiVUhDd244QkZLNFBtNjBRZVp5cjVLOEsxMlI5MVRURWNaRjRKeDhERW4v?=
 =?utf-8?B?dk91cEtsc2taa24rcEMrUUtlYUpkMUQ0OTQ3VVgzK2FBbGllTnZOWk1xSlVZ?=
 =?utf-8?B?NkF1RWtCYmkxQ1k0bGpBWHNIdnA1Y0Q2RnVTcXhGSHpiYTlGVFRHUVRwT3hj?=
 =?utf-8?B?eWFYckhZcTdYanFRRk40RE9ucGl5V0hOUFNuaGJSYzk5dWcveFJFTUdDQm1X?=
 =?utf-8?B?YnlUUjdEVVU0QThYOUQ3OG5RT1JSWkNqMStTSEl0THBkanNPYkd3SUx1V3BP?=
 =?utf-8?B?c2F2WDExcE81Y2s1WVdiOTJIQTdrT0RjcFNvQnpsVmJZaVNXYlRpdjFjNURv?=
 =?utf-8?B?dDNXVm5zTUx2U2xJRHZCUEZPZkJRPT0=?=
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(14060799003)(7416014)(36860700013)(1800799024)(35042699022);DIR:OUT;SFP:1102;
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 16:21:45.9185
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca49af7-7d6d-40a8-7386-08de5e8954d8
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10268
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=4];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260531-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:mid,solid-run.com:email,solidrn.onmicrosoft.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D14DA65F6
X-Rspamd-Action: no action

Build all dtbs based on SolidRun i.MX8MP SoM with symbols (adding -@ to
dtc flags) to allow applying of device-tree overlays e.g. by the
bootloader.

The SoM has a basler camera connector that can be configured for a
particular camera by device-tree overlay. By extension all boards based
on this SoM have this connector and should support device-tree overlays.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index f30d3fd724d0..f99a24ad115a 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -202,6 +202,7 @@ imx8mp-aristainetos3-helios-lvds-dtbs += imx8mp-aristainetos3-helios.dtb imx8mp-
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-aristainetos3-helios-lvds.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-aristainetos3-proton2s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-beacon-kit.dtb
+DTC_FLAGS_imx8mp-cubox-m := -@
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-cubox-m.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-data-modul-edm-sbc.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
@@ -212,9 +213,13 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-picoitx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-edm-g-wb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
+DTC_FLAGS_imx8mp-hummingboard-mate := -@
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-mate.dtb
+DTC_FLAGS_imx8mp-hummingboard-pro := -@
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-pro.dtb
+DTC_FLAGS_imx8mp-hummingboard-pulse := -@
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-pulse.dtb
+DTC_FLAGS_imx8mp-hummingboard-ripple := -@
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-ripple.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-iota2-lumpy.dtb

-- 
2.43.0



