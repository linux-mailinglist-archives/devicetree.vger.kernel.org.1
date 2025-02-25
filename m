Return-Path: <devicetree+bounces-151107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B87FBA44725
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D584016CC3F
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC69718DB38;
	Tue, 25 Feb 2025 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="qfVd0Shb";
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="qfVd0Shb"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2058.outbound.protection.outlook.com [40.107.21.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF32F50
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.58
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740502493; cv=fail; b=KG4lahNW08SwQYOp0AS+yPzv6A27Jghs1tWwYSRNFqsUo2dKZIMMKtaEQs37DFwKtG3rE5p7sHWCeu4D5EPP0W8qqEgATet6C18UwJ2TEvDM4cl7ADFNVwRyCFVHHrdBU6MQCZhpdRIs91SI6Zetm7gbMzZO6H2D/ygh2XqEThA=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740502493; c=relaxed/simple;
	bh=8jws9EvKZKTDN1y/3DsSOn1grECoLyNYqbNv1gDrLqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AiRFeUI9POTFHfFXZ6XnxqRGha/rKfAfzLtrm3D8F+XQMBIgiI0DmuHhCpOD4usn5DT3tbDUb3oSc+tFaFoh5a5ZiQL6yuGQD9Yowfy8MJiIps/brgDZ3QYCsjiDRJvmQ9+i9Zo2POG7AzHyUPG1GgERjFhK+MITd71g4FANFkc=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=qfVd0Shb; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=qfVd0Shb; arc=fail smtp.client-ip=40.107.21.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=wYVsKXVn8ApA6oYdMA9QCYhJZd4hoQH1esbLNtDX4O2y40MjGreZY080YEpg3ZyfqCXPuVBzxbx/LK0MZvsZmCcCw6qWrLokDWAXd6CdBInICmfXpqIsFh1ZypAI7F8dkYENaALsFJmvUvXdgRDpXWPC3eNwdr4g1l8nDSZHV4x0bNCR0SqpSk02GMRhGq/ynWkB+WRe2LHh18AwandFQBGEw0cFhogl349e7yBKyud/c+tnKh2D3kWp8Zp1dArl9fAwPYhaXqbA8PR+55mwfy3+VFzDy+wIjo18R2jWrSXy1F+CAggYksGRaIqPa2j7Bx/w1PWcLVo1+dfpQzx/Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ZB5pDFatsKOQWOznAwDvwUSufnHI7vSoAyBJI9VFIc=;
 b=HYJq5AiAvwIDXnYxwRhWQ/LRTQb6ZXeRrtNVLHK35ECemlwgW51ZmV4KkebZkGgDA6qC6/mEbACegxOtUoHmKq7GVqtpi2TTVQ0hmVsoVh9Ah/B/e2l9wuZ85+JHfql9JBtYqT6vi/0Zm5f54Hv104yJLZWRUBSFBOE4sRLw5BXcTmQi+ZzpaVdQjnTyKg0od+cem99neVHIGxwhAbuFnt46yUHF3tpkjLHeyRgkbqC7cYKSsR77b+VSPB+wVAyu4VCVgMRPRnXJ33gw/RUd5RV0I3Uv6TCDuk8n/gbOvweU+ocSYFFglbk3NEVjARsCyCTI4y/YjYkQ4/LYbNzXfg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ZB5pDFatsKOQWOznAwDvwUSufnHI7vSoAyBJI9VFIc=;
 b=qfVd0Shb6Mk6NaC4kaO4p/zITvQ5ythgcpwu3XmRqwNA9/7ck7eqYHwNrSDIthK10bfNxxDnI0OYYw2TQPLzW+ygdPMtMq6hC8+IIA2qs3yFByRAD0D/Y82g+CXuKJrBMPE2QzUBFe22kLxIq2VXIVXBUNZCAdGhsiPFOb/sUxA=
Received: from PA7P264CA0021.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:2df::13)
 by DB9PR08MB8459.eurprd08.prod.outlook.com (2603:10a6:10:3d5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 16:54:45 +0000
Received: from AM2PEPF0001C717.eurprd05.prod.outlook.com
 (2603:10a6:102:2df:cafe::25) by PA7P264CA0021.outlook.office365.com
 (2603:10a6:102:2df::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8489.18 via Frontend Transport; Tue,
 25 Feb 2025 16:54:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C717.mail.protection.outlook.com (10.167.16.187) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8489.16
 via Frontend Transport; Tue, 25 Feb 2025 16:54:43 +0000
Received: ("Tessian outbound 93a06e49d4fd:v585"); Tue, 25 Feb 2025 16:54:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8e01c1bf24950067
X-TessianGatewayMetadata: 43OHMBN9iuTKAcy75Lv77N+8xoBE5AnYHZaTu2h/xjBRNAk4845SwJT+2NSL+XLExLPNLJpfAtpXb3wniNqE5Lq+mssq2gUbDvg4wKSqlytTDjEZAxQzVj7HSTN1cNcC/PYSAaoJRJdJussl1o1TRcb50hDLN5pm3thb6kNChlY=
X-CR-MTA-TID: 64aa7808
Received: from L06cc359b1343.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9B01B736-F482-44E9-A100-5A630741DD84.1;
	Tue, 25 Feb 2025 16:54:35 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L06cc359b1343.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 25 Feb 2025 16:54:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQZXhkHV0cgq+jRhr8Mu4Eze7TFxZAavgzJgC1V7wGwqPSJ/MgqYlInSulBa2NgbvrSDmvDk91jjk2n1wRHLntoABjlnY/m0zFmgYSS25DXp50gAD64y/IfjU/ATsnR4fXD2GPrWFzCq3sIqvveIVAHzvT/UgInuTixhEwJGdqE+j+YjPSh+yEanzSemLFct4vY/YK3n+QirVPhoOD6/8LgfX7OvjvyIOMBMC/ABXPHgZdoKoLNMpNF8rrZt4od+2IAXLAl1dt/bipPqVSvVatkUWj7w77/a8DCrYVJO+jOH7aUolWD4byoC00h2GjvNHMnyznMbYHGK72OQri+IDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ZB5pDFatsKOQWOznAwDvwUSufnHI7vSoAyBJI9VFIc=;
 b=b9DaCfBWeQ9OOsjhNS26jnASlyxCMf3ziNJje8w4aCAKP4JjgSELBZJzSgNdQwKSp7hebG3f0Amhb4F7CihPivv62diFNbJb2Ow7HIKBEVFcZxkaYcq1n9rpN2KYtQ9vZBIm0zhhztx2EHWQlPKoKWmi6CoUM+NxZdsP/FKcdaShJ+WcJ0+Ah2gkrQUtNH5KZLb98+n5FymFFo0DwUESEvQgUldv0wbCBd2s6MwEK8RkcF5qCgKC2gAs3TuBj6r1afdIE/pGr3TcihrhV/3UTqHqm68XQpJGLQW8OEneOnncnV0D24mL8fA6c+skXYyUY9BAQo9pPoItsyqoKGUKbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ZB5pDFatsKOQWOznAwDvwUSufnHI7vSoAyBJI9VFIc=;
 b=qfVd0Shb6Mk6NaC4kaO4p/zITvQ5ythgcpwu3XmRqwNA9/7ck7eqYHwNrSDIthK10bfNxxDnI0OYYw2TQPLzW+ygdPMtMq6hC8+IIA2qs3yFByRAD0D/Y82g+CXuKJrBMPE2QzUBFe22kLxIq2VXIVXBUNZCAdGhsiPFOb/sUxA=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Received: from AM8PR08MB6372.eurprd08.prod.outlook.com (2603:10a6:20b:369::5)
 by DU4PR08MB10960.eurprd08.prod.outlook.com (2603:10a6:10:56f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 16:54:33 +0000
Received: from AM8PR08MB6372.eurprd08.prod.outlook.com
 ([fe80::bc26:1950:c684:41d3]) by AM8PR08MB6372.eurprd08.prod.outlook.com
 ([fe80::bc26:1950:c684:41d3%5]) with mapi id 15.20.8466.020; Tue, 25 Feb 2025
 16:54:33 +0000
Date: Tue, 25 Feb 2025 16:54:30 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>,
 <linux-sunxi@lists.linux.dev>, Chris Morgan <macroalpha82@gmail.com>,
 <devicetree@vger.kernel.org>, <samuel@sholland.org>, <wens@csie.org>,
 <conor+dt@kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>
Subject: Re: [PATCH 1/4] arm64: dts: allwinner: h700: Add MMC2 for Anbernic
 RG35XX
Message-ID: <20250225165430.1b4e7580@donnerap.manchester.arm.com>
In-Reply-To: <DM6PR19MB3722684AEFDAC7C57927F58EA5C02@DM6PR19MB3722.namprd19.prod.outlook.com>
References: <20241018160617.157083-1-macroalpha82@gmail.com>
	<20241018160617.157083-2-macroalpha82@gmail.com>
	<1884930.atdPhlSkOF@jernej-laptop>
	<DM6PR19MB3722684AEFDAC7C57927F58EA5C02@DM6PR19MB3722.namprd19.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO4P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::16) To AM8PR08MB6372.eurprd08.prod.outlook.com
 (2603:10a6:20b:369::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	AM8PR08MB6372:EE_|DU4PR08MB10960:EE_|AM2PEPF0001C717:EE_|DB9PR08MB8459:EE_
X-MS-Office365-Filtering-Correlation-Id: 135e9581-b4ac-488e-41b5-08dd55bd1a18
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|7416014|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info-Original:
 =?utf-8?B?S1JHOVVaUXV2NS9QVmtSYjdhS3hDdkVHbkRNYU01L0ZrQjQ2SjlGa3pLY1h0?=
 =?utf-8?B?YlQ3dTVPUXlteGU1OFFEK3MwMjNzYlp6RVhxaDh2OThsZVFaVDBzc1l4NkFB?=
 =?utf-8?B?eU9XclFzME9PckNBWmF2aHFPYUZuYk5jbmRZbkNXMlNadk0yQkJ0K3VRL3Ez?=
 =?utf-8?B?UW4zM3FnT1Rpem5KM3VWSlpqZUNmS2M2YklKci9ncGM0YXU3MkRyemRzRXpW?=
 =?utf-8?B?Y0o1VlZleEVOL0dCMVRZRFJnOG9SdlNETHJzYVNWZ2k5OGl5bHJ2cEtsaE96?=
 =?utf-8?B?Q3p3aW5iUDRJRUlaYlkvblRMR3FXVFpVOC9JcDJhc3BhYzB6ekFLYStMZEc2?=
 =?utf-8?B?bkNiS1BYQVkvVFhHS1llSlZDenpjQTMxbTN1RytVT3ZJTm42T0trOW9nSElK?=
 =?utf-8?B?WnBjNExlM3M4RElGVW9JUVBaSStHZExqcnJtdXRQbnBKelp5YnArUFZDSmhT?=
 =?utf-8?B?bjFZK1VXd3c1YlJ4c2o0T0FlZml0WmlWZzA5Tm9xNFY3Zk90bGtrTElmdSto?=
 =?utf-8?B?OUlRZU84bUNTNGJIQkZLd1hVSWpOOGtISFRYWm41MGRpdWpvOFQvaTN3Zng2?=
 =?utf-8?B?UUVoSVFwZ0dvT1M2WXZadVJvWlN1ZTlTeHUxbms5bFY1enlHNlhXTytlbFFi?=
 =?utf-8?B?SEJkRjBWUFl2dGJ3ckJlNXVYSCtGRWQ0cldsb2NOVVhyRjdqeXBUakpnZWdR?=
 =?utf-8?B?UURsR2xxcjRwd2Q0RTVOb2xvZGl2dkx6eFd6MGgxdlRuWFV3SlFDbTZuY3BW?=
 =?utf-8?B?NGFlYzZSZ3VKS0JYUmwxUmsrVjBCYWlWejNjTURUbndqUWtMQmI2aG5EVVNm?=
 =?utf-8?B?bVJudzc2U08raGFwbEZqSjBESDZwWjZGR2hWb3RzcC9hRjhCTkw1ZVBXMWRt?=
 =?utf-8?B?MXo5RmEyTkFyNVdROVZ4WnI1OERqeGRMb1FGTmdheGpCWXcxd0M4UE9kS0I1?=
 =?utf-8?B?VENYczhnd051OXljTERaNWhka21Wbm5PV1ZGcWh1bVZOcnpwSWpKUmNKNzZZ?=
 =?utf-8?B?cmJXOFZEUlNTTGJhWUVkcFNTei9ZSVY5WHNicmo3V3M4U0o5NndaTWpRakVs?=
 =?utf-8?B?T2tEY2ZGc1FBc3JFMUdua2hRYWhZeElNQTA4MmJ6cUpXUUNFYi9heUxBV1RW?=
 =?utf-8?B?cUMvNnYyOXkxRDU2bjd2MHBmZ1RxMkFnbFRvcmtSU1VNNnpwNkxPR2hIbm96?=
 =?utf-8?B?RGF3SldtQjkza3ZNb0hqUTNlY1ZmbjAwcVVhVmMrT1hrRGlaMEZNSVBodmcy?=
 =?utf-8?B?MDkwZmlmeEozZVlPYjNqUG5CQnFXbHBWTnVNc2Nnc1ZySUd1NHMzdFMzM0pY?=
 =?utf-8?B?enBWNEVBSG9Bc3pLTHMxcUtVMWtiNXpxRnc2Y1BOcjlUYnlYUHhuNGJBeHhZ?=
 =?utf-8?B?bmFNcG56dU1OU3FmVTZ6dTdHRnFERmhsT3R3OERaYVJ2QlM2c0ZEc21wRHhn?=
 =?utf-8?B?V29WT1RvN0JTSlFhQkZyZm9qVlZYMkVNek1iZ1hXemVhTVZOTGI4aE10VCs2?=
 =?utf-8?B?ZVhSZUxmRFBXb0tIU3JnWk5oOWgwallDOElGNmo1bEZMdHlWRFRNblJZNlJy?=
 =?utf-8?B?TFB6bGZTVGhFdVVxTUh0OVQ5SStRdHVxdW0ybi9Sa3FGVFRLYlhST1haekFT?=
 =?utf-8?B?ZE12cFlUNzdSdlp6d3BNSmh6bjVrV3lvbTVTR01ac0RIRVNqVGw4dVRGL0g3?=
 =?utf-8?B?emxUaFB5blhVRXByT2hNYWtxblRxRlZnaFIxQ0tkYkE3a2w4cFJEcGpoUWx6?=
 =?utf-8?B?T3hTdlMwVzNGa1E4TGdxK1plS3JmOFM3a2Q5Q2dTeDNFQ2xLRVVMR2pPZHhU?=
 =?utf-8?B?YXdsMWhqdHhhdmQ4VjRTa25SMVRsbUhvRGNHdmFQNElLbXV3SFIrVDBFWi9C?=
 =?utf-8?Q?fjHD5iAlZuoze?=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR08MB6372.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR08MB10960
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender:
 ip=[2603:10a6:20b:369::5];domain=AM8PR08MB6372.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 AM2PEPF0001C717.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	5e187185-6acf-494c-6065-08dd55bd1414
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|35042699022|14060799003|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R1E1T2c0djBuN21NVDFHTkFFVzRidDBjaUp6Mk92MUtSd1ZlbGxTM3NDc1JC?=
 =?utf-8?B?d0VsSGZsYWNFaHp3bDZiTFRObmtjb0xKYjlLTlY1TFg2UXd2cnhWNjgxOWs4?=
 =?utf-8?B?RkFGRkFaeitaZmVLSWIrYy9HLzh1dlRGSldXdnpxWjdyT1pKaGhSS0c2UGtt?=
 =?utf-8?B?c3pVK25wVUt3b1Rva3BFY0RzS096TlZOUXlkYTlJakQ1UEk5d3FWeHdYeWtz?=
 =?utf-8?B?N244ZUp6Nnpqb2FQVXVhcmROQ0hxaFovT2pJODVwUnlMSjJtUXZyYitudTZ3?=
 =?utf-8?B?ejJ0bTUyV1l4WjVDanozSFNUTFlpSXoycXR3SXNmWW1vaW1HcEJwSWJxZ0cr?=
 =?utf-8?B?MEkvejI1Smc5cmd2L1JlbFFES0xFb1AwejdFSURENHNaZmhYcjRyQjZyNkh0?=
 =?utf-8?B?RHlWVDdZdmxXaVZiK3VpZHdDaDNWa3lyV2hReGxxVVlqYTQ3MTY4S3JhaFFX?=
 =?utf-8?B?RFh0bHBrb0FPY0dqVDE1Q2VsRjBFQUdGTUdBb2xRRzZ2MGN5M2NmRnFDMDIx?=
 =?utf-8?B?R0dDZnlBWUgrdk5qaFVGbnZUM2hra0twNXI3ZGIxMUNYWi9WL1pGQjBoc0tW?=
 =?utf-8?B?emNUUU9MUFZSc1RZc0hUdjBsRnlGTGhVVnlIZjVON2RTeG5wQlFqdlFGYkpn?=
 =?utf-8?B?dkt4TVJVaCtLR0diZ1NjSXpJa25VSlVtWXdGcDg5RXU0OW51V0pMNVVWaEUy?=
 =?utf-8?B?bk9LOGI4SGdhdHFzRmFyWU1QcVZCak84QjVyaUNGaldveUcvZFdsZXVtbXd5?=
 =?utf-8?B?d25Pakc2V244WGlBSk1wdjdobkkwS3Z2bUZHVlE1RHlOZGYwd1JYajhLeEU5?=
 =?utf-8?B?M1ZGOGVFSUNTQm90VmY0M3JYRmZiUW5IWGFLb0pJRVpienBucFNkbm1yZDhs?=
 =?utf-8?B?MDJ6dnJlZElacElzZW0ybUtDK3VWU1NqWVJkVlFMbGVTdDF4NldqbmQrUkZu?=
 =?utf-8?B?bzZmdWxNU2VncDdBN2RCbnBJUEY5bXdjbm1EY3V0b1pFS2YzK3AvT3ZKWVBn?=
 =?utf-8?B?ZmlhRWFEUWlieUIrNWU4a3ZQM0c0UTBwa1QxK1RvcXRKc3A5VEp5YkE4SFI0?=
 =?utf-8?B?TWRxOFp4R1VoZXdVbmE4Lyt4WEZuRkRRcUx4c3BSQzBrVXlZV1JQenRFZFZW?=
 =?utf-8?B?MjI0aXJaU3RNR0dIMkZtR3lsaUh0TEZnVzZEMkc4b2ZKdGxnbmZkUnM5VE5Q?=
 =?utf-8?B?S0JzODl6cEYycWdkQmdQZFdhRldWUEdBNERqTEF1ajNOcHVOM3FvQWJ3RlZK?=
 =?utf-8?B?Q2pRaHdRR3ZjeXE5OEFNbUJ2RUNiaFY2ZWZVL1pZZGg2aE5kV24xZVFFVlpa?=
 =?utf-8?B?VmNUaHIrYS9SVE4wLzRSS3JSS2ttUS9zMWpTVWMzUkE3THpIL01uVEZWVkZR?=
 =?utf-8?B?R0RET0tOeGp4K3U0M2pRSmNxVDBhcjN4WGNKaitQaG4wUzYzcG1yc3FxQ3lF?=
 =?utf-8?B?b1FtaThsMXI2MTFYdlFONFlqQUtwdVR5cTBJQnA1eENVRWtPOXpKT2dZSWpS?=
 =?utf-8?B?M0FyRm0xNEZ5Nm5wMGpsMExTc0xLUjZNOTdvZmIzTllsemlhQmpVRWZhSXlD?=
 =?utf-8?B?Zy9nOCt5N0VrQy80VTFnWUt4VktjRktRMUpEQU5LaTl4OTVZZlE1aEpMdW1t?=
 =?utf-8?B?VEhiQnZPZitySExLVmgwSFFHZjRVeW0xeS9iaEx6YkIyQ2M1elRsOXgxT3Ur?=
 =?utf-8?B?NXpLc3lkMzlZcVBXVzZVSGMxdmhmUUlDRzdSMEFpSDVySnBYb1BEK0xKdFM5?=
 =?utf-8?B?UWtQYTh2L1kxdVhBMDZINjFIWDJLb2dIWHB5MklLTEJLVWVFVVBwK2VONmZX?=
 =?utf-8?B?Q0xpekxoRlBRMWt1QTVRZWMyRU5CMTcrcmlRbnNldjZNNzQ3bngyUHc1QnZr?=
 =?utf-8?B?SFVxazN4M2NVLysvV1dwRlN4c3UwaU4rakZkMVMxNkpBYXV2ejNkbXJlY21m?=
 =?utf-8?B?ZE5YbHpkaFBjMmdBcDc3aS9XTGdLeGI4bndveGg3ZXJSbHhZTm9BRjdwRkJH?=
 =?utf-8?Q?NSSQqTGOTDZ0MllN9uwQ+8GpGxesG0=3D?=
X-Forefront-Antispam-Report:
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(35042699022)(14060799003)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 16:54:43.0830
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 135e9581-b4ac-488e-41b5-08dd55bd1a18
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM2PEPF0001C717.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8459

On Mon, 24 Feb 2025 12:17:42 -0600
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sat, Feb 22, 2025 at 11:44:39AM +0100, Jernej =C5=A0krabec wrote:
> > Hi Chris,
> >
> > sorry it took so long.
> >
> > Dne petek, 18. oktober 2024 ob 18:06:14 Srednjeevropski standardni =C4=
=8Das je Chris Morgan napisal(a):
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >
> > > Add support for the second MMC slot on the Anbernic RG35XX series.
> > > The second MMC card is connected to MMC2 (WiFi if present is MMC1).
> > > The MMC logic is powered by cldo3 via the power domain to which
> > > it is connected, and also has an external 3.3v GPIO controlled
> > > regulator required for functionality.
> > >
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 27 +++++++++++++++++=
--
> > >  1 file changed, 25 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35x=
x-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024=
.dts
> > > index 80ccab7b5ba7..e2039fd76b3d 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.=
dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.=
dts
> > > @@ -18,6 +18,9 @@ / {
> > >   compatible =3D "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
> > >
> > >   aliases {
> > > +         mmc0 =3D &mmc0;
> > > +         mmc1 =3D &mmc2;
> > > +         mmc2 =3D &mmc1;
> >
> > Please drop those. As a rule, we don't have it in any DT, since there a=
re more
> > universal to identify root partition than a relying on device order.
>
> Would it be okay at least to keep the mmc2 alias mapped to physical
> device mmc1?
> Confusingly enough, this device is such that mmc0 is the
> first mmc card, mmc1 is the SDIO wifi card (not always present depending
> on device), and mmc2 is the second mmc card.

As Jernej mentioned, this is due to subtle hardware limitations in the
Allwinner SoC. I think SDIO and/or the SDIO IRQs only work on MMC1, and
MMC2 is typically the only one with 8 data lines.
So this order is actually expected.

> That way the WiFi at least
> when present is always predictably at the mmc2 alias.

Why would you want that, exactly? I do understand the desire to have fixed
names for the storage devices, but for the WiFi? Doesn't the networking
device get named independently from the MMC device number?

And, FYI: if you really want the aliases, just pull this DT into U-Boot,
and use U-Boot's DT copy when booting the kernel, as U-Boot's build system
adds those MMC aliases automatically (since it's somewhat required for U-Bo=
ot's own operation):

> >
> > >           serial0 =3D &uart0;
> > >   };
> > >
> > > @@ -175,6 +178,15 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power inpu=
t */
> > >           regulator-min-microvolt =3D <5000000>;
> > >           regulator-max-microvolt =3D <5000000>;
> > >   };
> > > +
> > > + reg_vcc3v3_mmc2: regulator-vcc3v3-mmc2 {
> > > +         compatible =3D "regulator-fixed";
> > > +         enable-active-high;
> > > +         gpio =3D <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
> > > +         regulator-min-microvolt =3D <3300000>;
> > > +         regulator-max-microvolt =3D <3300000>;
> > > +         regulator-name =3D "vcc3v3-mmc2";
> > > + };
> > >  };
> > >
> > >  &cpu0 {
> > > @@ -186,10 +198,21 @@ &ehci0 {
> > >  };
> > >
> > >  &mmc0 {
> > > - vmmc-supply =3D <&reg_cldo3>;
> > > - disable-wp;
> > > + bus-width =3D <4>;
> > >   cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> > > + disable-wp;
> > > + no-1-8-v;
> >
> > Please leave properties in same order to minimize patch size. From
> > what I can see, only above property is added, which is not needed anywa=
y.
> >
>
> Acknowledged. I just figured I'd alphabetize them, but you're right
> it's a bit anal.
>
> > > + vmmc-supply =3D <&reg_cldo3>;
> > > + status =3D "okay";
> > > +};
> > > +
> > > +&mmc2 {
> > >   bus-width =3D <4>;
> > > + cd-gpios =3D <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
> > > + disable-wp;
> > > + no-1-8-v;
> > > + vmmc-supply =3D <&reg_vcc3v3_mmc2>;
> > > + vqmmc-supply =3D <&reg_cldo3>;
> >
> > Is this another SD card slot or eMMC? You configured it as it would be =
SD card,
> > but mmc2 slots are usually used for eMMC, which needs different configu=
ration.
> >
>
> Physical bus mmc0 is the TF1 slot, physical bus mmc2 is the TF2 slot,
> and physical bus mmc1 is the SDIO wifi card (which is present on most
> but not all devices in the 35xx series).
>
> > Best regards,
> > Jernej
> >
> > >   status =3D "okay";
> > >  };
> > >
> > >
> >
> >
> >
> >
>
> Please let me know about setting alias mmc2, thank you.
> Chris
>

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

