Return-Path: <devicetree+bounces-256612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4960D39C37
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D3C13001828
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796F91EB1AA;
	Mon, 19 Jan 2026 02:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="t0XWileU"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0858A1E531;
	Mon, 19 Jan 2026 02:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788222; cv=fail; b=K1i9+TOPnG6gRKL45bzNoZMAiziGVOvUcy0oDUhPWAIyj4v6HZv8Wd2SUPdPip5H88Xf0YjN7kPuzVhhpC+x4rbepTKxOg8FZ+HcX3jQLpadf1CQrvUy/6IWyT5EJD3s3cXd/FK3x78S2dneP4r3oNe5lnF0hMYYGb3PBcDJSH8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788222; c=relaxed/simple;
	bh=xgxeolqVft9bnsqVyij9mj1kbkeC5dvgLToByVDsM60=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=o8afvVT1tiJnI5ZRs5GQPYbv6wcfYjhks9bbNpuE9A6+u7t6yC/tbYd/t688ChgyFzDo5SjlwaYp83jZrd7xRv9bnJGroFXs2KH8YiJU0XFWqI3qFTgXqLtmBDXA7rQE6VgSfF/C2VuxgFgKCVaNS13r7m0IupWiuQ8C5amDjgM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=t0XWileU; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m+dmVTfvyDyP++8LpTMKqW+CU4D7BMaw1137rMt6+jHld/CdPycEF4GfAm0ISOOV+KsoP2RNKpGTVWfkVNY24HmMDccq5DMGGgHzQIQGB0zo5cC8eG/fxLrj1tzIKFdlngHbuN55Z9dHaHBfuDiox/KWemdCgj7q8Gyi+bQGnu3Q2IjORO4GGb1ooFm7+AtVKzC2AzbYfxZvDt2iTpbXleWk8/OteOeaeIJJbViRS1Q5LE+ud2BURWpqjKuINi4oCxForFPvgecRza/4xOeUoYgge2iMWMhTd9vx+sqkULWvIe3HAh8EQXiN34rdSNhoTZMcuOwPe/+y/NIYvo4WIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RmjF0hM9SRfpNpd9Af16W3Khu5Ijvh5ngv0ahs0yO1A=;
 b=JoQzf++p70WXwNnU7degp0gUzb/A+mGiSKrll30dvG3W4CfvXfhQXA/bS6bnhZpH32UIeFGIHxPLzZ75h/bc9DRwF6DREBK5NhldsHB0sQb0HJVRFFcDxOC4p0A1sCXOamSH/avBtz08CK8rBfNGTEsaFcBB3Pvcsta8b2844fpiCEE5gMDiZtbh8OkxA6lPvoxLDZyFVmaTAG0m46GadKoJQPBg6q+84g90eXavJOFVLfdGWdPCuX8rLp/kyXwYBYes6qKtbtHBXXyOG3mfGkO4+oxMPFjY6M4HIkRImigDkMJCU+8rAB2OJUHUVclLAnZ/EtmZnG3SFJdxQCufnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RmjF0hM9SRfpNpd9Af16W3Khu5Ijvh5ngv0ahs0yO1A=;
 b=t0XWileU8fjNmAl9MbjHsd8GMLof6fgauakC8CwMQZS8vHGDuHMm83iBqBFIOrD+Hnn23CsH6UutvfPCs8agjajJHO+mzpxa77GXX9oCDzPogkXdjlV4X1X+MBBZfXwQn//c3pdCX+HIJBKtzyclNSb+sOpBIEwXUYFy4jsKvkTcEkacp4xKrTXwYTbY/HQ8YqVLwozgV3yLTcHLlU5YoKi7P3ZFZYGBMxN4YvYZsBqDWXf/7U5Eoyz50/HTO/hh28ZD/Tv25Cl0xm3npmEz/b4lD2QUtSMnWxyRcTX6pd336Xe2mUanv7847QFZ2QVjuavP3SeVlS4heK4a/USNyQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:26 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:26 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 10:02:57 +0800
Subject: [PATCH 4/5] regulator: max77620: Use
 of_property_read_u32_default() for DT parsing
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add_dt_default-v1-4-db4787ea7a9e@nxp.com>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
In-Reply-To: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG2PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:4:91::20) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DBBPR04MB7658:EE_
X-MS-Office365-Filtering-Correlation-Id: f8dd1b4f-f954-428a-d139-08de56feeeba
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Q0V6OHRCbVFpYUlwSmIwa3NFR1IyYmJDQ0tSb0xtQzBFL2gvWHFENVdnbWlK?=
 =?utf-8?B?ZE80M3JPdW5lQXptWnp4RnplVmQwdlQ1Y3RnUEROeS8yZFRvQVNsQW9ybFhB?=
 =?utf-8?B?ZG8vZTBCK09haGplNnRDVmNLWnRCZVAraTRSb0JNMW13NGtFcS9iWXJkdEdL?=
 =?utf-8?B?Z1JhekZ1VHZaWE50RDFXa0pObjgrZUJTZlFudGtaWjZyY0xOeFNQY3ZDV1Fz?=
 =?utf-8?B?cDNlYlAwWmpZWFdFcnpkc0R1RUwvNHRUTjkxbnB5cThqcW5sZ25FZjJwOEI1?=
 =?utf-8?B?aFl1c0xBU2YrVWVSbzNsTmYwdWg5YzBHOWdMeTNxbHo5Q3BBWmRsZXVTRW5i?=
 =?utf-8?B?c0MreTNnTkNWV3pvRjQ2Rm9teEdYQ1Bua1p6V29VeCtsMUZIWHlacnFJalpB?=
 =?utf-8?B?cmZXYk1MS0h0TS9kL2JjcE9oZ29FQ2Q0YVpqc0RtWm1XdVBEbjJSSFlMb2Zo?=
 =?utf-8?B?dHc1SDB5S1didG5JNVBJQTFQNXNLZTlxbllrUmtxMkJXTjdzMkhiZTZkQ0tt?=
 =?utf-8?B?Zi9SZGZLQVNINzdOWWd4OVJNTUVtMkU1eTlHT2didm4xRVZSWUdHUW50RDRp?=
 =?utf-8?B?NUN0dnFZQmVKdnhyeXZYM2s1RG9vSzJYVXlzQmxvMHlCRjdXZjU5S0lmWlFa?=
 =?utf-8?B?OEZndHJMbUpHS2JXb1FzVVlBWTBtRzBhTmdKMWNOVHp2bEE4ZTB3NXJ1dGlW?=
 =?utf-8?B?TzgwZ0xyM29zOFlyWmJLLzk3OFlxb1VOQkw1VmtrNGpVNW4ybGJrZFFjWENF?=
 =?utf-8?B?WHFyMVpFU0Y4UW9tWWU0YVNCeWlYQVFPVU9SMUpwTDVnSGRYUEJLbXY4dDZz?=
 =?utf-8?B?QnhPS1lFVStIazkxaDh2cGREa1JCYk54VTllbkZEaVlRdE9nREtpVm5PNWo2?=
 =?utf-8?B?MkVTSzNTL2FHOHo0N0JHV1JLTGczQVdjbEdjMGZmRkE3dzBBbUswYXZYaEhw?=
 =?utf-8?B?bnZlOWdsUnRaaXdQZ24vQ2tyUndvbDF6RG0xdkpQSlhzV2dkeTVLbXJVZ2VC?=
 =?utf-8?B?QVBvWlJrb2ZFL29OcWZ1T2JWaXlhbkdnS0gvVzZvQzdzSVlPRjlEZTJUNDRt?=
 =?utf-8?B?SjJvazFhRlpCNWhPeUhSMm1VdWdteUdUV3ZZLzZlUUw0aVpYTElrWTl0aDlk?=
 =?utf-8?B?M1NBRHU4TWNTU2NNcmdCdEdQcjBlSld5Tzd2L1RjSVE4OWYxVFFJYURqTFlK?=
 =?utf-8?B?Sk1VUmVzcHlreTJjdmZCU0xGdUhLcWZRdDE5TjkxOVQ2alZLbUsxNXgyWVd5?=
 =?utf-8?B?MEhGMXlYNTNoQnRrbUlQSlpWS1VHaEFUQ3JjVGJBOUkvU01QaWc3c2lWQitW?=
 =?utf-8?B?OVpPaEhQVldjQU11RW81SlBwb0sxVXVPY1V0a0dFWlBrOVhJOWtkQnh3d3J0?=
 =?utf-8?B?bjdOL0s1eW5Mbm9wRVU3aXU4SlovRzZBU21KVkJMMmZ3ZVVHNEMwVG53RFNm?=
 =?utf-8?B?andrSzJuVWlQN1ZHbmZwQnluM0F0aUtsSTdNamZlWEVScmViNUZCVi94RWlG?=
 =?utf-8?B?V3E2MFV4dzRxQ1Y5ZUZrOU94WG5FQmgxMnZmeW5GK0Z5NDVCZDdLeW5QUkFx?=
 =?utf-8?B?SkZQZm5IcCszZkErREUxNzVPQkRub1FSb2YycDdqb25GdFArbDg3YU9QZXRj?=
 =?utf-8?B?Z25Yb2NGTFFDYmhrbXgraUtjWXRTWklLbTZ1UEJrS3BVTkhEdWJSRXpncWFX?=
 =?utf-8?B?TlNaNEJDZkJsam83RWo2Q3dUcDBuY1BRRUZrWlI5NU45d2crNmZ3SmlWVU9w?=
 =?utf-8?B?QWJ1eWpheXN5emp2eG1CZVJoVDE1by9ueFFkeEhBeE9LVmVTVXlQNERQdHdm?=
 =?utf-8?B?WXFic2RiVjAvVzdkZVFqZXd2ZGM5SGxVMlB2YzEwMDBGYlIrV21EQThWUzBh?=
 =?utf-8?B?NDgwbzgrQTRXT2M2TGM2N3BvVUhWbHhnaEp1cEsxMVhmbVFTOS9iOXlLeU02?=
 =?utf-8?B?Yy94ZkNWRVErV0ZHM0RpYnFxSVM0WDRDNDNxUVZjYys4VHFzM3JadnRnSnNs?=
 =?utf-8?B?TkY3ZTJiK1NDWWdlSXRTZXJNUzNFL2NFZ0swRFFUaEdSemNwZVIzSGRpTU91?=
 =?utf-8?B?dkhuYkpXVTRNd09BbEpFOE9iUkl3c3I4OVBJQUU5ck1aclhPNFpCY3FGYld6?=
 =?utf-8?B?MHFTNHluVEdmU3F5aXFRYlYzSXQzM1I1VDV6VmdZRXJuSXVZaVZYeWpJTGhw?=
 =?utf-8?Q?5EYQMxrf5U7BdbI2PD7h8dY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?U2VyQzRoOEQwZkQyVUZLbWVKNnpTUDRJTm5RK0NqUzRrNzZZN0lMSUF4S3J5?=
 =?utf-8?B?RVhhcnNJUzdZM0w5Yk9oNHNVOEZKYS84QXBxc1RQSk9HK1p3eDNGNnFrMlZ2?=
 =?utf-8?B?d2l1R2dvUWNZSEQvUW05YnZCWmc2SGlrMm5yVlhlbGRLTTVFQVJqMit1WVJW?=
 =?utf-8?B?K0ZwN0ovTUVqbVFaVndHc3RaR1pyZ0R3aGlOZUtrUCtDQUgvT0k0d1V5ZEFY?=
 =?utf-8?B?SEdoZldKNURaV3RtclBDYmh4dTZOd0JTZnFRMWtORm5GTGp6eWVmanhERFd2?=
 =?utf-8?B?NHE0S0llRHluZlo2N25OWXF4QWk1MnVtWFhsaVRvSlBhdUdsME9NdzBXbGc3?=
 =?utf-8?B?QzRVWVBONUdyUjFKT0tZSWJYNEZaY1YwckZMOFdwSzlmLzJJODBiTkRDQ3JH?=
 =?utf-8?B?UklrYUUvNjU0UzF2MktqdTg4NnV6MHhnaWdidHBoMGFMTStQUzQrMTNycjVY?=
 =?utf-8?B?RUFQTjc0UEszSUNyNjNuaUF4bXVCUCtRRm1uTlh1ZmNDaVE4Q1RYZFNMOUJs?=
 =?utf-8?B?ckg5ZkJwc2tUOFJzNnRlOHNLbk9vVlRINS9lcHBIZVNTYjdXS295WWlRbWg5?=
 =?utf-8?B?YS9zOUJlQ3dYaEd6UDFPM04vUkpBalc2YVRWNlJvZ24zbEhYb2xQS1pqTStS?=
 =?utf-8?B?b21tcE1yd0hoMGxvam9aL1JTdEtGYTJydHhCVzBiWk93eVpJdCtXT0cyUld2?=
 =?utf-8?B?Z3VndmVtdlNBZHBDK0o0OFZuMFo3WFlrTEdlc3RqekRmbXorRjdGSk50Z0E1?=
 =?utf-8?B?eUVSbGc5Si9kZ2Z3UkZkcFhaU1c4U2F6SU11Wmk5YVpsNEN4dzF1WjBzazlm?=
 =?utf-8?B?dUZOVkVWdW1hUXlUOFkzUEwrWURzbFZuRlZBVnZqelJGYnBxUkNRREhVTm1T?=
 =?utf-8?B?ckxZVUYzUDlESnM5UEpzVUpXbUR2TzNGWmNZa0p6ak1TemJwQVo4VTFPNEto?=
 =?utf-8?B?Z3dzTFIwZUtFOGFyQkhKZXptWkRwcTBXSGlmQnFRM1FFK3JIRVhDaTZBRlhn?=
 =?utf-8?B?KzhPZ2NZNEdJN2tKZ3plcld5dlVCV2Vack4xRCtBTGl0SVdYSjhyOU9xdXNO?=
 =?utf-8?B?OEphcXZUcFFITm0wTmZXWEEvZlorbTVYT0oxdlNURmJ4OFVCbUVnZXk3U0Fi?=
 =?utf-8?B?UU5OMWNWdTBpc1hyV0FOdzRVbm5EMVpzRXVCMUdBem9YekZNaFdjNmlEOW43?=
 =?utf-8?B?MTZWOThuUldHaGtMTGNiaWw5cDVwU1d6NUh2NFVqUXNZNzFMZjNHV1JldG1v?=
 =?utf-8?B?eG9wTjRjNUpTN3grR2huMUFPWkYxZDhGS1YrSGJYNUJmTEtsZENJRGF2aGlC?=
 =?utf-8?B?RS81aWkxd3ptLzh4d01qUzVRR2NERE51TWVBYW1EUllPSTJsRzhacFNzZ3Jm?=
 =?utf-8?B?RUkwSDlJR3JEd1pzdEwwcERiSkVpcm1iRU5raFJvZXUxRFNGdHpRSjFnVzh3?=
 =?utf-8?B?bW4zWHovT21CZXQwdUNLOXltM0lvZjBONjQ2L1lack5QbnpETis3VURNUDRP?=
 =?utf-8?B?UWZQbno0K1o5UEFwUmRQUWsreFFlL3EyY1hDWWJMVzRucHV4K2RheUpxaUhH?=
 =?utf-8?B?OUwyRWpRdFV0dkUzMWFlZCtRMDh2U05oVFpNT0tCa0ZMM010T3ZudFllRkI0?=
 =?utf-8?B?ODYxUER3YkgxTXNLa2djMkR5NXVyRUFSOFk3WkFpbGdWWlBqZWNtRytmU2Fi?=
 =?utf-8?B?ZDN0RHFIUWVPVjNZdXVBY09jTmluT2dlVWQ2TFBGZDhSYUQvSnR4RkdpVG1J?=
 =?utf-8?B?TElBOWE0MjhPZVdkWHM4MXVEK29PZ0JSS3FuSGZpSWgxZjVhNmgybEtwU1ZS?=
 =?utf-8?B?b3B3MXdEV0N3dXdFVG1keG1FZnNpRE16YWp3Ti94Vlk4UmRHeWtETGNIbkNn?=
 =?utf-8?B?c1JKdWNiSE1IUjFaQU96VGhkQnZ1dUZvMEw2NS95UkdrMktNbkNkUEtPVUFX?=
 =?utf-8?B?WDJCbUdwcW5HdFEvMVBBUzdkNXlxcVN4elMvU1I5UEpjZUYySHBFNk5tZ2Q0?=
 =?utf-8?B?YzFRSkdDUEtnQnR5WlM3VGc4SVhGOHN5MFBjQ05QMUVlS1k3WUtiSFBIZ0RW?=
 =?utf-8?B?TUhRMjlTdmtKT2VLUjlFVC94WG05RjBIMzBTcmsydjRyU1FFRWhFWUJBUkF3?=
 =?utf-8?B?YkVKN2NmN3B6WWNzbDJLR3ZPQXpIbHNxaHAvOXdwdGNBam1hZEVjZHc4MWIz?=
 =?utf-8?B?Y3lKSUNyVGJKQ2U1QVFFemZsZGVqdTB2SjhvRG16bTJXckFmNzg5NFo3R2J4?=
 =?utf-8?B?T0JzengxU05SZnFHZVY3bFRUckgwTnY4emZLRy9GRDZwVm9iRlRhNy80Tzk1?=
 =?utf-8?B?aHNKLzl2TlJjMkgzaml0YVdzYXg2OVdhcjdoQTFYT0RxWU9xenBMUT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8dd1b4f-f954-428a-d139-08de56feeeba
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:26.1064
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zlv+AF4VmqEoEqbmb9TM5B7BJeLd+f0nZBNn3D2Ff/jyvKjatznt0n2L1sy23Ig5ese32Rux8EpRSlAHYd7ZhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

From: Peng Fan <peng.fan@nxp.com>

Switch max77620_of_parse_cb() to of_property_read_u32_default() to simplify
device tree property parsing and remove duplicated error handling.

Properties that previously defaulted to -1 now explicitly use -1U,
preserving the original semantics.

No functional changes.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/regulator/max77620-regulator.c | 40 ++++++++++++++--------------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/drivers/regulator/max77620-regulator.c b/drivers/regulator/max77620-regulator.c
index 7bc87d8e9f686651067b443c06d0791557e1d1e6..6ba3c2a995198234c0aef5dfe445ef291e8be2dd 100644
--- a/drivers/regulator/max77620-regulator.c
+++ b/drivers/regulator/max77620-regulator.c
@@ -605,38 +605,30 @@ static int max77620_of_parse_cb(struct device_node *np,
 {
 	struct max77620_regulator *pmic = config->driver_data;
 	struct max77620_regulator_pdata *rpdata = &pmic->reg_pdata[desc->id];
-	u32 pval;
-	int ret;
 
-	ret = of_property_read_u32(np, "maxim,active-fps-source", &pval);
-	rpdata->active_fps_src = (!ret) ? pval : MAX77620_FPS_SRC_DEF;
+	rpdata->active_fps_src =
+		of_property_read_u32_default(np, "maxim,active-fps-source", MAX77620_FPS_SRC_DEF);
 
-	ret = of_property_read_u32(np, "maxim,active-fps-power-up-slot", &pval);
-	rpdata->active_fps_pu_slot = (!ret) ? pval : -1;
+	rpdata->active_fps_pu_slot =
+		of_property_read_u32_default(np, "maxim,active-fps-power-up-slot", -1U);
 
-	ret = of_property_read_u32(
-			np, "maxim,active-fps-power-down-slot", &pval);
-	rpdata->active_fps_pd_slot = (!ret) ? pval : -1;
+	rpdata->active_fps_pd_slot =
+		of_property_read_u32_default(np, "maxim,active-fps-power-down-slot", -1U);
 
-	ret = of_property_read_u32(np, "maxim,suspend-fps-source", &pval);
-	rpdata->suspend_fps_src = (!ret) ? pval : -1;
+	rpdata->suspend_fps_src =
+		of_property_read_u32_default(np, "maxim,suspend-fps-source", -1U);
 
-	ret = of_property_read_u32(
-			np, "maxim,suspend-fps-power-up-slot", &pval);
-	rpdata->suspend_fps_pu_slot = (!ret) ? pval : -1;
+	rpdata->suspend_fps_pu_slot =
+		of_property_read_u32_default(np, "maxim,suspend-fps-power-up-slot", -1U);
 
-	ret = of_property_read_u32(
-			np, "maxim,suspend-fps-power-down-slot", &pval);
-	rpdata->suspend_fps_pd_slot = (!ret) ? pval : -1;
+	rpdata->suspend_fps_pd_slot =
+		of_property_read_u32_default(np, "maxim,suspend-fps-power-down-slot", -1U);
 
-	ret = of_property_read_u32(np, "maxim,power-ok-control", &pval);
-	if (!ret)
-		rpdata->power_ok = pval;
-	else
-		rpdata->power_ok = -1;
+	rpdata->power_ok =
+		of_property_read_u32_default(np, "maxim,power-ok-control", -1U);
 
-	ret = of_property_read_u32(np, "maxim,ramp-rate-setting", &pval);
-	rpdata->ramp_rate_setting = (!ret) ? pval : 0;
+	rpdata->ramp_rate_setting =
+		of_property_read_u32_default(np, "maxim,ramp-rate-setting", 0);
 
 	return max77620_init_pmic(pmic, desc->id);
 }

-- 
2.37.1


