Return-Path: <devicetree+bounces-256610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B46D5D39C3C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01CD03006A8C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26BB21C173;
	Mon, 19 Jan 2026 02:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="qPzpHmxG"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6B220F38;
	Mon, 19 Jan 2026 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788214; cv=fail; b=qGGo1sjAAJV/DOOfRd+m7vDYCJmX1UuUnDp6BB7uIwas4d126bLBwriWklrH5DGWh5+UgqVivfE70J823MQ5pNeSbGIQZaDFPiQUE2m4cFUimRjgplW/C/yecV6B4y1chak6hSvaktXwau2Myno/70HOhslP+Sd4MHDjmHuvb+s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788214; c=relaxed/simple;
	bh=lJiK+lpSPsd08yjhHjHguGc+iKpmPPE1AwgKL5I3W6k=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=LNvTRkv9fj5a4+4LSvhXFIIHa2RCAxrUxP0aoU7YSI1AfqqMa1gQ0SgLKwlMFnW4DUaQs476EnuhcXFnG4WeSHtswB9XG9V1J3O9z7BqnDsKDZnWKaQHHBX87+LJKgUKTqblT5zo3o4moOW5Moq40fPwyYjuwHSKk9y/4aARppQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=qPzpHmxG; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N88zaUtOdFn4wi7nkFcLl1X/3uZFmWZJA3y8PgWWq3cNzhynkiT7e73KhXTUBAbEFk1n5A1JVHnJnU443hoNeHZQ66h8S0P5vyPDbjOaOQ7u24K6L+lENEqx24CS9reNu+dB2TBHv/7Riq3HoOygl3PmGN6HAAMw09FrGzyPOrS6xpBsYzjRkgZ8wPwytbRhxPeOCMxqsL4qBQtWDgU1+QqQDTZQImRbG529v82jeT78x1pq3pdmmbBoQqEUtW8AxNplT1hFNYc+9xa+RPvQC+78ylfTF6VtUk+Jf77yvl8ppBLhT0ce825R5iU1jF/7QFC0FuYiIlhECEfQ7ibElQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOmm+rkp5dMOzeHC+li/IsWSAmC85gL5pqXrNnEJmSM=;
 b=vgZiCqEzF86OJSmd6O37CN/WGJmTwjkL/zoFwTUX7A/P6/Au1MeR1I+siJjRw3X3PzB3uwNiG/ezocvQQ3AkkA1Q+46zDscB83j6SGE21SnPgfkCFsF58yIHCa0H5GP01giiql6ZVY7UeC0+e4a8KH/GZnYX2VqHnYmlY0EioSYmkQKaI30pAwjy05IdMVHlMzMmK6U2L0caf49529aNz5NdDtM5c9JOQSFlv4k1agq/Oz05zMbWVghXzraafQge1sw+W2jQS/BzBKqJ5TpthxwHknlXW/MhTEX5b9VzNIdXYeNkzbL89S/icKuZ8oE1tmnue+ByNJQzAA88MYvSfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MOmm+rkp5dMOzeHC+li/IsWSAmC85gL5pqXrNnEJmSM=;
 b=qPzpHmxGHu7jU6rCOa0QezAHRaPnF9UagM+jC6a2qFClBvEsOnx1UI0OO6PQCN9MvDWLIbpKvMmHoPcw3bOVVf3TQj3cje7n4BtvKo9/s0a8cAUni7G5zpIPazZ5/71FCusXEgVQ/Hu2UE2ILYR0g6QqkODMRMQe1yOKLotlkSMEXK5sem31QrDkt5fmTBMkm0tYkCZ9HWqLtXchVLAC5FXPOMRKDqerDJKS2HZYbp2xGSOSoeKxcs0BiE5oQDVQVBTeOzU2Do8/iHv8M7UymJ3TPcxtBjtszwG6t75UmgHrzsa8erB2PjkcXUyU6V6VLnBYA1GNH7lQBMER1QgoIA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:20 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:20 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 10:02:55 +0800
Subject: [PATCH 2/5] regulator: of: Use of_property_read_u32_default()
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add_dt_default-v1-2-db4787ea7a9e@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: 03772305-b9e1-48b4-8fb0-08de56feeb68
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SFRaYmRpZ0NCSURwR3JtUCtYak1oK1VwejhleThveEtWeWRFY3FXcGlPdVli?=
 =?utf-8?B?QytWRXliVzF3bWtJVUtubytYVk1RVGJRT0lkV3RTZ2l0a3ZCUzJYQWMyR051?=
 =?utf-8?B?UG5jR3RiaWdNRm5qa1lmWmFDMUVua3hoKzcvOTRlVldiU3lnMC9QcmxXdlVW?=
 =?utf-8?B?Y2IwUFc3N2NOUklBUjNzU0RDZlFYQUdJYUQ0aE1nWWNWaWFaMEFuZG1MMTJw?=
 =?utf-8?B?Nm16THNkUzBkd0tjTjg3SS9FcUlVSWgwYW5OaUhiUkpMYURCSzljU29kcURs?=
 =?utf-8?B?TFlXNUN4SjJ2NXphL2FwZytCWjIzcWxDaGJIdDNvaFZ4VnhtZ2J0VjR6bDRv?=
 =?utf-8?B?Wkg3OXJlcWFhZ1RNZ295WnZpVzFCa2xVejR3bTBsRkpVVVRjVEdjWTlpQUoz?=
 =?utf-8?B?SkFIUVlDMmFGTXMxOXd0NUhnZ2MzTkFaVzd6dHprV0srMkdrUXR0c0dUWk03?=
 =?utf-8?B?SmMwVHZvbXRRaWtaV0dNbE1nNXZkZ0xBa3NoTmYwTWFTMDhHazgyQ2xyLzlV?=
 =?utf-8?B?N3JqYWlxSUFqUlFzaXpMNDU0RFhRL1E4d0ZtOXJsN3lnNFFQM2xzSXB3ZHpG?=
 =?utf-8?B?YVVFbVNNWG1wZjBaN29lNStaRXNDZjFrS3lEdEdZZmNSZmplNmhYNjZDcHIv?=
 =?utf-8?B?RTc0NlB1K0t6ZEdxd3VPdm8vN3dscmN3c1hoNkQ1MW9oNUc3MjRIYzJnNnhl?=
 =?utf-8?B?eHFacFhBVXVkVGFZc20zOWp2cWNBaS9heWN1RmtNaTdnS3NETGNjdzZUcTRV?=
 =?utf-8?B?d2xkSitZbnAvN3BLN3JtM1Yvb2djbkVzc2x3N3ZKM0gwVDNZUVdlZkJyQlBL?=
 =?utf-8?B?T3c0VnNyeFI1YTlUZFR3SnZmTXgvWlZMZWsxZG5IUlV4QUcyd1hjMjFWdmJs?=
 =?utf-8?B?SmdZc2t1SjA2YzkvV1lnT29vdmsrRTFTYzNvOFgrK0l1bm1PWXIyWjVMRzNG?=
 =?utf-8?B?TkZiUW9mdnhNWlFidm9OOVpYZ3FRMUt5bEt5azBIUnJXK2dWUG9waXROUEgz?=
 =?utf-8?B?bVZ3NGtwVU4vOTJDN0tNSEJGOFJvMndZTEEzUExmN2NNdWIzckhjcDgrMlpM?=
 =?utf-8?B?MzcraVJ2RDQ1ZDFkdy9QV1ducHEzdGM2QnZtVTVnczV4M3Uza0k4bWsrcE52?=
 =?utf-8?B?WG1wa1l0V0xoL0pjcE1GeEQzeGgxWWprWFBoZnFCTnlYTUZBZ3laMW9UV2tq?=
 =?utf-8?B?eDIrQTZ0S1FlU045ZlJIbTJiTUM3Y3VxYm1SZkpzRzFWZHd2Q2FwRjd5UHAx?=
 =?utf-8?B?NXhNRXdpNGRDRmNUSXlLRGlJcmhLN1NqemJtYmtySGFadnRILzl3TnBxTDBV?=
 =?utf-8?B?OG8wT2hLK0JFb3VYRmdyM3NrMGpRZ01ZT2hXODRVeFgwRlc4TzNxNU1tRnV2?=
 =?utf-8?B?NDN6MzVOaGJVL0xqUXdsYmFGaDdSd0pTalBieVdSYTlBQmVYdHNUS0tBMDZB?=
 =?utf-8?B?UU5FOWlJRlZ3L0ljWGlwMG1pZGRtZTlwcVYyT0JMZGJ1RzdQYUZFalpGNDdv?=
 =?utf-8?B?czdDaElnSzBwMWNXQ1E1OE9aajVlS3NEb1dpNGduZ0M5OGlqeVQ5Y2lEZnZN?=
 =?utf-8?B?NEpleGdZU2xXVExmYkxEMEtpcDRCdERIQmFDWXpJSjE0RHV3YkJIRnJWQlJM?=
 =?utf-8?B?MDdhR3lwV1dtUGZjYzhKWWt5MW8rb2V3b2hJWlcvdXBpQUo1azJGTC9qbGdm?=
 =?utf-8?B?bHBiR3EwcTRBbVR4VHBwMmc3QUV1VG1ZbFBXdXFpRGRkVmhTbWVBOWFucXRj?=
 =?utf-8?B?bEdLTmJjZUhpKzRnRjVCNnBON1VPcEFzUDA2TFdjT09OVVFuOTR2ZUlDWUJV?=
 =?utf-8?B?b3RDQzl1YlFWcUdmb3BmUXlwcG4ydFNndm9CVzdiWDkvMGZxemZuZzJCZTZP?=
 =?utf-8?B?VDcxWGk5SkdFY2lHbUJtVkJ3WXNscG95ZWlRcVFBL3duOGtqZ3hYY1hVZHFa?=
 =?utf-8?B?V25WVW10bW1NNUNGMDllMlJjQVZQek5uc2N6UFdJaFN3NzZiUm5TdmN3R3Yx?=
 =?utf-8?B?RDZzMUlnWFY5RkJFbjRGbjJmWkl6d1ZucjlYSEphZUR5TFgrRDA5UHNpRklN?=
 =?utf-8?B?Lyt6djdqcnVTQThUUmFkY2FrTVlobi9LU2wvK0JocG5kQlYyTVhFd0tLbGtG?=
 =?utf-8?B?NTFTd0lTWVUxTTM3aXZHWTVDL2JFSklmeU5sWW9pMW1OcTVFbyt1RjlSUFkr?=
 =?utf-8?Q?rbs7RbzXXObdSyqZl4+zbo4=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eDJYREZSaTZLM0dLVzdnOFRBeUFHTFpOSnYrTmU5cHZEMkg5TGkzVjljUzFu?=
 =?utf-8?B?MGZTZmY3SENTVFB1RGQxbHBEYjdGZU9DQ1FhNEVKNU9jSlJ6R1NZelo5TGov?=
 =?utf-8?B?RCtyMkZjZVMvZDUxS2R4OHRZeE5HZGtlbk85L3JGYVU5MitabmxWdEt5QlB1?=
 =?utf-8?B?RGVmV3A2ZEdnZDd3blllMk0xNTloY2NaVVc2MnJLYVJDVXRIcWp4U3Bia0Jn?=
 =?utf-8?B?cStVei9WOVBMcU5uK21pNUsvR01lYnRNTk5nV2gvZ1NMTWdxSllaNlVMQ0dL?=
 =?utf-8?B?N3hFQkt2UG9OWkpDaE9pK1YrU29OZHJNY2NRbEZ5d0Y4bUpyNHRWNTMybFhu?=
 =?utf-8?B?WDJvbW5XbnNrY3IxMTd1eFdhbXVqdWNyQmtaaGlYVnlwMVNIUjVIeE5DZkJm?=
 =?utf-8?B?Z0Rtbi8rTVZURU8rVDRvNVQ3U1ZUNm54M0tsbW9XNVFEaFd5U25NNzlPdkZZ?=
 =?utf-8?B?SXdNdGdyUG03aGpFK1FVU0FKRnljbFFxcjZtcUJlNEpyZ2xBU2d0RVg0ME1C?=
 =?utf-8?B?TU9HRlBJbUxjTTdiSDdEZU9YOEVpdTRMVTJlZ2dmWTNJei92UG5SZjYrQ3k1?=
 =?utf-8?B?VkVoVDVCUDBzQk4vemtGQUVybGNobWExZCtlek9KUnB6SDlISk9wUDBJaXRw?=
 =?utf-8?B?REdmb041ZjNteVlabDFXT3F0bmsyQkcrRVZuV0cwL1RaZVFNSGRMR1JPY0Nr?=
 =?utf-8?B?T1pvMEszQWxENkh3eFByVEVTeEJmVXlyQ0VHNUJHY0twRkliWnI0bldnbkVV?=
 =?utf-8?B?WFFxVlZOQ3kwVDNaRGc4c3lnT2ZkRGtXalRYQy9ReEM2K1A5T0JmNVorRk0v?=
 =?utf-8?B?N3IzaW1URWZLWEJ2aXJleUVBUW1OdmdRamNobEliQS9ibm83YkhFbDBRYnhS?=
 =?utf-8?B?UjBaa2RJQWNXbUhGMUZ4Q3RBQ1dZaGxLeHBDbFRDMjRwcXJLYXp3cG5Cb2sv?=
 =?utf-8?B?djViZ2l3OW10bUd0ZEVjV0JKY0pZdmZKbnoxV2JHYzlWYm1PMlNHZ2RHVkZV?=
 =?utf-8?B?bmM1d0JxdUxPRStDa0crQWJ3NVprWk8yMm1NSW5Bc0hRMUVYUzFNQmdTQnp0?=
 =?utf-8?B?bklXWU1STEIvYW0rcWlUYzh3M2JGOUdvNUIzVDlMb0R5VkhNcmpjUWlUaHl0?=
 =?utf-8?B?NUNVZFQ0ckwydmhjcWpXcFhseW5CaFFUbzhJbGc0czh6U2lCNzdUVlJxL0Q5?=
 =?utf-8?B?WjV2WHJiTVVrbjhxNENVaVFYZ3N3bWNYTktlTDB1Zm1aR1VHUW5ORzd2ZHpE?=
 =?utf-8?B?L05qNUNRVHpmQW8xYjV2bW5wTVpKWXd5aDhzQmRubEo5VmgyZEdYK0hmTGFP?=
 =?utf-8?B?ZUx4bU8wNGtiSS9NU3Z0c2RVeUhWZmdwcCtlODdadjBpdlgxajVQc29ZMy9n?=
 =?utf-8?B?ZXhTL2VzTlZianpQNFN6UENzVnBYMnBUdHErZWhSeGdzWFZlUGJnalFSQ0du?=
 =?utf-8?B?TGI0d3RzTi85dVJxd0ovRnVBMTRHS2Z3NFBBeGdSYlN3eGNlTGhCcnlwSUR1?=
 =?utf-8?B?TGxJYW8rZDlKek1Rb3Q2Wm1IR245Tnp1V1pPbGEwdkJxSVZYcE5jRVpVaEh2?=
 =?utf-8?B?V3NJS21YRWt1QmRGd0NtVWN2ZDhmZDdHbjBOc2F6OVR5WVRMelNQMG9tcGI4?=
 =?utf-8?B?QUFIMmp5M2hORm9LazhZRnc3dTE0V2JrbUJMb2lQMmw0ZDF2dTcwakh4bmFR?=
 =?utf-8?B?QzFiSVNoUXByQTBqVXNMUnBpQzViSHl1Nm5jejVWU2hBcGtnNE83dkdGK2xU?=
 =?utf-8?B?Vjd1WnBHT3c3ZUsvWU1TWDFXc0NYdVo5VnRHMGlHUzlWdGNSYVhRUSs0QjBF?=
 =?utf-8?B?T3gzTEU4UGJVZEZia2JaUkxYTjdxRVBNSmZNWkh3VjAzSm5TUHhaUXZ1T3ll?=
 =?utf-8?B?VkJQb0tSTStXNlRBSFZPKzJmZ2kwY1VUbENDK0ZsaDI0MjJxSzVJcDZYWHVC?=
 =?utf-8?B?dTJFUmJubzZ2SXBONjBlcmlNYW9WODFnS1VSc1VQS0U5OVQvQm1OZmFsWnhq?=
 =?utf-8?B?aTNqUXFqRDNEUkNib25oOFQwWlAwbVlBb2NmQlhyajgrRmxTZmVwWGVJK0pE?=
 =?utf-8?B?NEtGRUFDWVFJUDh3cDJJOHhld3ovUlMwc2prMS9MMVdqV2dvalMzU3R3cmhT?=
 =?utf-8?B?TE9ZajdmRmNpbVlhMUlnbG9jbHcvekJiQ1VHbjRsYW01YXFPeVpmRE5aenlu?=
 =?utf-8?B?TWhkckRPMWlkTjFUa2QwcVhueGk4YzE1dU1FNlJFY0NVdmh1cWt0UEVPcGpU?=
 =?utf-8?B?TnNLZEprZk9LUG9SWFVWUWFOODFGbTZROXQ1cUdZVUxSOWR4UWxNbjRjOE9X?=
 =?utf-8?B?WjdsNkpRd3F3RmlMYUFublZyWE4xcmI4TndyemdHZGcwR3dRQ1l4QT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03772305-b9e1-48b4-8fb0-08de56feeb68
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:20.5858
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PEnuqKpMTv8FneOaN9cmwN6KDDayr3w8OhyEjtrDZ0Bl4nBJP/uENwHluMmzaswbXcvijHe7G7n81awuZ8EiRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

From: Peng Fan <peng.fan@nxp.com>

Convert open-coded patterns that read optional DT properties and fallback
to defaults into the new of_property_read_u32_default() helper. Keep the
existing behaviour while reducing boilerplate code.

No functional changes.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/regulator/of_regulator.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 33463926a2a6c10ccfd9aa59d31c0b0c3635833e..83b8a1db8f99c1eefee73ad1e7f234b2280076dc 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -178,12 +178,9 @@ static int of_get_regulation_constraints(struct device *dev,
 	if (!ret)
 		constraints->enable_time = pval;
 
-	ret = of_property_read_u32(np, "regulator-uv-less-critical-window-ms", &pval);
-	if (!ret)
-		constraints->uv_less_critical_window_ms = pval;
-	else
-		constraints->uv_less_critical_window_ms =
-				REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS;
+	constraints->uv_less_critical_window_ms =
+		of_property_read_u32_default(np, "regulator-uv-less-critical-window-ms",
+					     REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS);
 
 	constraints->soft_start = of_property_read_bool(np,
 					"regulator-soft-start");
@@ -313,11 +310,10 @@ static int of_get_regulation_constraints(struct device *dev,
 				"regulator-suspend-max-microvolt", &pval))
 			suspend_state->max_uV = pval;
 
-		if (!of_property_read_u32(suspend_np,
-					"regulator-suspend-microvolt", &pval))
-			suspend_state->uV = pval;
-		else /* otherwise use min_uV as default suspend voltage */
-			suspend_state->uV = suspend_state->min_uV;
+		/* Use min_uV as default suspend voltage if fail to get property */
+		suspend_state->uV =
+			of_property_read_u32_default(suspend_np, "regulator-suspend-microvolt",
+						     suspend_state->min_uV);
 
 		if (of_property_read_bool(suspend_np,
 					"regulator-changeable-in-suspend"))

-- 
2.37.1


