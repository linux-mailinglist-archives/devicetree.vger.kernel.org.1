Return-Path: <devicetree+bounces-100244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA8596CF60
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CD751F221D7
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 06:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3508D3612D;
	Thu,  5 Sep 2024 06:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="oNPVfvmR"
X-Original-To: devicetree@vger.kernel.org
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11020074.outbound.protection.outlook.com [52.101.56.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8287B18BC02;
	Thu,  5 Sep 2024 06:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.56.74
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725518159; cv=fail; b=AgVnme1EPWsxKa3not21BJc5KyLCv9VVNEgh4vXWJcfanDBz5XUzkADNw3OtDTXmdxZX77Nh97Hys7ZaxkpIwdklyGjZiiQYAyIUFtVRzhbZmJo7S586yUeXOwmAmLLAOlq73gD/63LaufjbleRkSwH4RmKJFP4nKhUPuHDaiJo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725518159; c=relaxed/simple;
	bh=55CHQoxsp4P5nRQx4e2BztVP14aGJTGpF6W7YEgvHVo=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=fHiEp7P5A0rpyxKdjFZMT7HVK+G0dxn4PhbzYeAr1ZidO1g2bE8eK6zPv+1QhUr5XSPMUoWGP+5Hkb0xuFfrhjygTuOf0yb4gYWlscsXr8HCaLWEO2I1qWOy2vJCM1KtgzyLqbTBMzLND268nfbBK5xCydIwgRlrmM8iXMbuC/o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=os.amperecomputing.com; spf=pass smtp.mailfrom=os.amperecomputing.com; dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b=oNPVfvmR; arc=fail smtp.client-ip=52.101.56.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=os.amperecomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=os.amperecomputing.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kdoAx2Sw9MMDj6vusOb1NCxqa5XBc0qTYsG4pBct/mS6sbkXyGwGJGF4EzC/7vr81ktqBbAghlGAReQQo3zWEjZJ+lsSm0N2JyofUzJMAF5fZqeHqtV6t+8UGb3nM4WyIdHGJeZWgBidpjk1fbK39XgvNuvw4gKCmk/v/f9u/36ky16R9ytmPvedLhUHdJHAWXQXWUsYbldsfRRnHbYTeHYqW8pcysbNeZM/PATr3yVsUAHzDGQYilq/G+pCFx+FBTszeHGMg8K+glvAm/Sddh2qNNh5C4HpVvxRWUJC2a1abQ/rhLwcR0VjfHBnKUOjhLSnh+VKJv/9BCRMepsaOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/d5mPlv//L8PZP4sUaoW+OaqJ2wvF2I6zMTiuLDHMQ=;
 b=Yx8co2D2nKM7DBNul5yQmT7UQ8YqWXNLvaYWrNA7IhrmNPWoy2G3HPwE2Of4RpDhs/bvVEsR5VQIbLMDXiAV8V0uaaeayCixrQ+JtRjzs6liDm+I/WRQ4RdE3AWGEm6kggOvf1qH4aQ2qfSF/xOKHCqGB4nTYYDAfabEA8Eag/Q6Styy+lMRszwS7UgA91UF5b9KBEI1nyseZLsw4X5d7ZSPM/2nITELw4u3VQ2gt4ifAMDeMyEfMlPIiaZbdk6MQSlyJHC84/kcF8l1ZWAEcXjL31JxlY8SQWfNzDCWsgTLyVAbj40XvPlLhRPrOrWUmIs6Ge+NZouZzWe3r7+okA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/d5mPlv//L8PZP4sUaoW+OaqJ2wvF2I6zMTiuLDHMQ=;
 b=oNPVfvmREjCSoHypawkteue0TV0L4rsBOF8X1Jh5o5qrmm9GLtTNQQFNC5MGQtjcAeDIkiGPQUET45L+fnjWJj4JiNDR5UJBfhP5GtwJDmFoh9PK4bbGN+8eHMkKCJOaCoH7+Ezt+UrHwZ1tNC38o2wSk9fXBrsHuDdIMKRyr9s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from BL3PR01MB7057.prod.exchangelabs.com (2603:10b6:208:35c::16) by
 BY3PR01MB6754.prod.exchangelabs.com (2603:10b6:a03:365::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.28; Thu, 5 Sep 2024 06:35:53 +0000
Received: from BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09]) by BL3PR01MB7057.prod.exchangelabs.com
 ([fe80::b69e:5684:ed7c:4d09%4]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 06:35:53 +0000
From: Chanh Nguyen <chanh@os.amperecomputing.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	Open Source Submission <patches@amperecomputing.com>
Cc: Phong Vo <phong@os.amperecomputing.com>,
	Thang Nguyen <thang@os.amperecomputing.com>,
	Quan Nguyen <quan@os.amperecomputing.com>,
	Khanh Pham <khpham@amperecomputing.com>,
	Chanh Nguyen <chanh@os.amperecomputing.com>
Subject: [PATCH 0/2] Update the device tree for Mt.Mitchell's BMC platform
Date: Thu,  5 Sep 2024 06:35:19 +0000
Message-ID: <20240905063521.319416-1-chanh@os.amperecomputing.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR01CA0129.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::33) To BL3PR01MB7057.prod.exchangelabs.com
 (2603:10b6:208:35c::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR01MB7057:EE_|BY3PR01MB6754:EE_
X-MS-Office365-Filtering-Correlation-Id: 608d78c8-cd86-49f3-2c82-08dccd74fcd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/fCQ8XFxJLHBk22NEsGhUjMYW+iqvST6xybqKcF9UWecJfkw30zmRKvsfhGr?=
 =?us-ascii?Q?FJQWWRctvy7i5IJQIOO625ljNd492QORfA6trXiLfIJ85n9BAV4HNb1HNZzI?=
 =?us-ascii?Q?UQmA05UgO3FfHkdWUCHmic9rZbKW4K3kUfwIU/pZ01LWgNtIYhWoubBF4vG9?=
 =?us-ascii?Q?EFZ/SWPT6DSP9DDlYg4fluXqxk49KDOELJlpPsUWRJ+NlsU38jf4IdS0JAN6?=
 =?us-ascii?Q?XG1hOoAUchn1JFea1r+8vrSDL8e4HSx9Jv2kLv2NBl2tlZ3IXM3B8q25C2ob?=
 =?us-ascii?Q?CbTnFezPciAsjyOUCXRlSWWaohmNmXqrQ/Tx0FwqPEAkDM2ZtCRjLsDQeTi+?=
 =?us-ascii?Q?eb2g/voaAicjft94RoIcVUka0GomR5nwTATFyD1Byw43lby37kopUDV+Wk+M?=
 =?us-ascii?Q?zT+z0qYB8hNCWwFvbirf+Oy7P3vZi6LGBFSsjaligvRzWOesYHUevcOYnXbi?=
 =?us-ascii?Q?1Hofak2AxraEMBX0yQct4wS1APiIxf+yxeDF4OHK6xZb7z3uSWJ4kY02P6gs?=
 =?us-ascii?Q?xkQL5tWKs231eNMkWWeiaTTZ0745S1qvm6Wj2PAXEMq2s9EY5JzqbHQN7pVC?=
 =?us-ascii?Q?DWco1ygwZsr2BJjwEm31ab2Pf2LWfHXoOqKv1yJPRrTazF9aRNr1t25xfiLc?=
 =?us-ascii?Q?416g4kKlLHJmj9Ulo9l36VU4uLv9++OkC3cAqdIYW3ZAqtzQNS3eWGYLgqea?=
 =?us-ascii?Q?JMEw+4I18EoTmjAMheBbt5Gj7HwqG1Mry4PfzYewhIHZGJQMkHseecI85rPr?=
 =?us-ascii?Q?cCD69BS3ZAQTVq74gKbQIlvmxgRxtPfCTo6dvEfSspEn58GDnluz2EBqaQ+R?=
 =?us-ascii?Q?pBf+EfN/RL5m7GCKarOZEj6sbrKQ9mFEEQwr+yxL0kU0Dzk2GkKV9hMxEQt7?=
 =?us-ascii?Q?NuDjS0/DaBI2EuSzYq3R7WCf3wvVdHIg9lI7eIM/rcjEWiFgk7h+bktJKLwN?=
 =?us-ascii?Q?JHthHNZrTtWTdKSk9wAST9vTeKFnwxxu0vg3w3z7U1z/9BCgj/BrTDDEK8qy?=
 =?us-ascii?Q?o9gZnaaktqWJsJyPSiHTOWjPPp2lbRJMDtBYUl6XQKrt5kLrxpzY0fgbnAKC?=
 =?us-ascii?Q?2PbzVNWCa2V9NN/dkRt6gQdTLe/ryN37TVnFIFQE74Kh31pbSZb7HXVTAd0J?=
 =?us-ascii?Q?N2Re9DEAgW9VVV+xPzBC73SuuuUXS33osCwMKT9nYujHVJxyyHsWByRi6LAt?=
 =?us-ascii?Q?QlKkUOqwA7P/CN7kJCDZUrIOFDw3XRti/WDwXDo45OD8WhzsIk2DySzNuX9R?=
 =?us-ascii?Q?iijJijJJzpAUPg5Vo5+1fIAymMJS19sHhNxR4V7pC0YD6mcnjzcD6AJQsgYU?=
 =?us-ascii?Q?1IZzownh3gCV7+P2bg5IqNDTJRLjEf5gX1wCEFe0RluFHuXd9GC3CweQj6pK?=
 =?us-ascii?Q?IJGQxyghOD/7xMW4oyLZVau4GCTdDk054paWJYY2AMRrHvyZOEDWKZxSe6Bw?=
 =?us-ascii?Q?l7kImfM0sF8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR01MB7057.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?VdA00dgjRbn6L/v8hvZK3xsBl7rYAK3HMtdPpVuolodPufw/Bdo8U6tZXRK9?=
 =?us-ascii?Q?lsjmO0Ihg4fZYD/VMzpcArWX4+q90iGni2LnXK4ePfybBGAYW7sM4qvShRFb?=
 =?us-ascii?Q?zfBa63clm0VxJqN9qJjMvH49i8DcFWWGhwPjnPer05Cmen5Bztu4GgXxqCfd?=
 =?us-ascii?Q?Aw1hCBAVEKrppqn/H2ufrF9sRlniEbGlrdpvEGgcLBAr3RziHeFFBXdI1NIO?=
 =?us-ascii?Q?KRvVQ1JlCo46iFGLNIV1uLri6Ck7F42JtmHQes9dlE5nvlJvdQKLH0ZZVhfr?=
 =?us-ascii?Q?pHLba5xmrL6piBavs5ZitIt3UMckmG8bP4QTphOGOmWP6FzYJjYYlZNouXeo?=
 =?us-ascii?Q?z1jjnFhTx4VJwp3zXTJ8ckrViHH3WbRPqifzeFRq8YY5LtUTE62rA+g6cRG6?=
 =?us-ascii?Q?ILpDGC+5bbqoqGYJwY/yAzi8X5eAgnsajIfY4z4brC6XQrO0ZnFZCpXPSwj7?=
 =?us-ascii?Q?gfavcTixuiQ+KhBYPCFyeb7tf2sPt4YcQ0+bG/JBxTnikopw+w2ZpYzM81re?=
 =?us-ascii?Q?vh/mzoeb0VktiuJF+hr7jam29Ut0tpLIkzyjbJ4xvrgZhlIBqC6zGKmDD+US?=
 =?us-ascii?Q?vRijggAkHmJXr8pmiKiySrntmQ52/PV/ncS6TcSq8B8Q7Ry2Zu295e49LUoc?=
 =?us-ascii?Q?eV1ygVj1QdqH5LGwn5HJns0Puz4htVEdteI5knGoO3pj9pkWqG85NBwdllr5?=
 =?us-ascii?Q?yCXPw+QM/HtAthiZqgH4j04PZaal1XeNblEI30QE+9zUOzj8jlVvKcD97X+2?=
 =?us-ascii?Q?MnwmYjcy/WyZRu3RzB3eOVU72OdiffKYtVQWDwlNhNHEDdHlf5HeflOxKWgI?=
 =?us-ascii?Q?c021oLG+EO7XirN7FrF6eHa2GbMl+FDdkaw+m1CW54V5xkv+x2f8XKmxzVDk?=
 =?us-ascii?Q?hZmj28kJRvAEI5Ghpy7GZDkvZChEfmyirwAUiTVk6UE0zfDvXbJ26KBWy7ca?=
 =?us-ascii?Q?a+MgYTzDQpEKc6RsrZEfORfNAAtKgPalKDsvWVbXa0421FR6z7BGRjzlMSRp?=
 =?us-ascii?Q?pAt1hnhdswJ+KwWDQUn+mdEbscubFReigtwH4CqqmuJ31sFBe9rKJmsWBA1g?=
 =?us-ascii?Q?i1s1FpXLcq2j5DgRRLzutjNyJkbalmx6lO3PDPGcmx0R2GMIr9yE/XbB61GD?=
 =?us-ascii?Q?fyI9codl525yLeqMGEicG600o57L+J7nC9s60rP0kVQeOeZaCUQ8l9tH8nGR?=
 =?us-ascii?Q?GXtzKiVwUJcsHDGsNqGdpqHYjWG+QpwK7Noe9H/KJctI2+LMSD9I87wrxLmQ?=
 =?us-ascii?Q?JecmSeZNjIi9Z9NgD8i6L3r2iCdYxnuP8TwHjLV3r+U9r1xY0CND6AoMO4uN?=
 =?us-ascii?Q?diMzJMN38H47ubGEuqIwjAuq0xO6weiPY6czsWnlEJft6Y5pKTqr477rvg1v?=
 =?us-ascii?Q?KT6onvh6pPB6CxuXTokjJkwyBSBQCD3alTVczr8GeBqojBRWv8xMA1zCr7eN?=
 =?us-ascii?Q?AdSXNRBLQnYp+v/auX6MkL4awWolCJGY3pzvlKUksQy7FS0qPt4z+lxGPZDi?=
 =?us-ascii?Q?KevI8igyY7o2I4KYa5Tw6OoiNL9d/PQ7l/TGkPO42ZXUpYmfoGPX9fybHjAO?=
 =?us-ascii?Q?tGIeb7yXuz+/x2+GY0SbijOiCd06EufxzlqnEIt5JXiLaqBhzHFNOyQcOG9K?=
 =?us-ascii?Q?gAx7Qg/MMzEiGXFSZJII6WM=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 608d78c8-cd86-49f3-2c82-08dccd74fcd6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR01MB7057.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 06:35:52.9584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 70Dq82+jiBHx/KCv+fDUWG4Ohw24Ecuv7HuF5mJMxtimtl/SbKJEbsoSIpQCwobYmUYJbz+D/rFBD/7oLczlPx9V8huoYifPF0kbmgT86AvG87COlHr5ayqlsmg9ij8E
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR01MB6754

Updates the device tree to support some features on Ampere's
Mt.Mitchell BMC.

Chanh Nguyen (2):
  ARM: dts: aspeed: mtmitchell: Add I2C FAN controllers
  ARM: dts: aspeed: mtmitchell: Add gpio line names for io expanders

 .../aspeed/aspeed-bmc-ampere-mtmitchell.dts    | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

-- 
2.43.0


