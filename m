Return-Path: <devicetree+bounces-267716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKLKE+A+nWlUNwQAu9opvQ
	(envelope-from <devicetree+bounces-267716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E35182420
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AD78D3002F68
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FA026FA77;
	Tue, 24 Feb 2026 06:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="RNKDSJcn"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010025.outbound.protection.outlook.com [52.101.193.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A489213C8E8;
	Tue, 24 Feb 2026 06:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771912922; cv=fail; b=BQDtQBL5ZL0c+J5SyYduhhUA+wsghdmaWyOxzizny7CKvHZGSmHtTwXMGOhDocJIFb3A9MZRHitvmY8PGYNS/Cjnr8ITVbBE7FF0wmqOPcc4OePJCsAXxcRCV8b1SQzgaBs0JtJF+RjXoSQEI7L5Q9vNJjKeSL9DCTEtWdLzDas=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771912922; c=relaxed/simple;
	bh=+Qm4QS2TU0vreSkrZzwDG/0AbtezrmwPqog0VjsvGNk=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=ZI4tC2zwR2kajOyiV/QCXNW18T+Dmy8H/zyysGQtDpUX60FRPenM6MAQdFg3W5MzRCVVeX0NKWSHLsJkKkdphrBv1Tpnw/8tCiy8EMwlaJa51k1eilXiDSkHNdxoiyZLnB0EM+vj6EE9HDf1Rm/A1aPOMvGJbBR9TZoAjoG2RgE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=RNKDSJcn; arc=fail smtp.client-ip=52.101.193.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3XWLWMJFuNwDy+B47CPmwkjp1Mc1YASBBbeGueliq8JHSnhk3qSt2Ku/z2wux5cA6cgwCBkx6LPnW0CZFficvdAO2ZxZ9vfc2KKUXDsFOdHXt/rkybpcDf5sASlfOODKtZKgKOq+4R6/JUrBNq/A7qDsmiv+mUafUZnPXc0nQPhCVNxWFbi4AwaPdOBAJfS6cv8VETLWmDjCs4vexQ5oDXQr14ioIeEVn04QlnXXhsyIwhzXkL1Zf9WkW4L9Xbw89e022GB5G9/qvncsUhrG3WIYyryTCo65eIr9a091n9LLmGBYgvvMqp9HJIJDrMorLOVEf/IEWnXo9H6s50b8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SiRb71pSum25LiNYtDXB0qbd4F/tGZ2/x2DU+3dMbtQ=;
 b=hBOq7YtJvJdS2WoXhS6RQnwD0Rk2LjwlAj18J1MH5br1g+sK0ldBiZeDnCRXt+S8DQd82KIi98wQpP4mozomBYYFpLA6a97K0rHKxAYJHW/El0Vk1K7Qi3BqwBxenLKnxO8Dx/0f84tf3oEH9YsJF5E7a/9BbyXXQHhUmx7yeDlQozFeJ97c1O2N2w+KkrhOLBHHNp616tazxiZZOu5Wd6adLyFNGSFOyI3C7MA04mWRRWHUCsF2unRfTsoypkBZaPFC/uO/Z5goZFlEMtb2G2f9ouF6vQPEJ/zDV5FOL4qApXmDWkBCQ23SKE1zM/vqOYLyK7wQWzWYIfNLvHnEfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SiRb71pSum25LiNYtDXB0qbd4F/tGZ2/x2DU+3dMbtQ=;
 b=RNKDSJcnyn/e4kI6nPsaNHsQoYij4XrcRLg6IcM99dQ3e3nfj47NS+jcb/U7AbNsQpVjyiylZmqAfIc2ah3i3mGAT6wzQlzq3vL941uhI1RbRWhczmW68QrXse27ToUwZHRqWJCFPHlgVgqwqn3hw2IelBWH9liRUeE7wtz1XZ4BlojRVZ+WQOwnXHGIF9BZFz9beKNfzUK6nSdDgG8oD+MOwEIRd72Y5+5LNvQmVNlD+bTW7j+NmNb7mc1QIrWqav9Ev8aQaT4yPZIFqgcSgv6ajO19kIL040yOsrxeR3o9qe8YvqHdtku7z/t9GwphWPCA6B7tB6JI6A9Rcg9Npw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DM6PR03MB5113.namprd03.prod.outlook.com (2603:10b6:5:1f0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 06:01:58 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 06:01:57 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Mon, 23 Feb 2026 22:01:53 -0800
Message-ID: <cover.1771911773.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::34) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|DM6PR03MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: ef992cd2-991b-4cdc-7adb-08de736a3806
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?uR2h4H/dyCS1br6c2PSUep+F6ruG3MCG1tjCDnA5nNWhdopZp7oxTBCZouYp?=
 =?us-ascii?Q?X4ChqL3zbqFYVV6WXD/fMpOcQiHkib6pDkBa9L4Fvbv2KA1denpSeVStU8nA?=
 =?us-ascii?Q?Uc4tUaUzhXvThnf0LnrxQGDML5hYN671/YXg/KLoiYT4EwrOfEKT0pyD96Dh?=
 =?us-ascii?Q?FsRbnZc4ZYV81kqWj+wD6BRkQKhKMqoK0WlPiLGVxHUca61Bym+f01VVfkFC?=
 =?us-ascii?Q?VcwPLhk2e1l0wrLXPyCZ/g0uRhqHwqgpwgJ0ugtUXjpdXQZB8a7dwO477Nwm?=
 =?us-ascii?Q?9OdbrHsF/1GxpDu36Iq7tt7NeCLFDe3CzBJ5QO6/Go4uBzpQGPfj+FijQEEo?=
 =?us-ascii?Q?Ix7PdROpPMKxMO6+nJzpGzJH/rvKkyG/NCafedV9JzFBdGUzyLpGXWE2gUOp?=
 =?us-ascii?Q?MqWc33SOd/dlWLghQKWnGjusCFEPO7f/aj+EMCVEBx+LC5/7wvqMl+Jho52o?=
 =?us-ascii?Q?gFSXlJytCtc0m2jTafqUZgY0nMvoy8C8eiY97qfe/+o/1ydPwII1FrOkz9f8?=
 =?us-ascii?Q?dX/uA35y+sUNbiDj1/b6LdBK9kPnnRVIZ/B5oqzKJUszfpTONgLsr9haQYlS?=
 =?us-ascii?Q?M68wJpOED+kxZXbo0sSL1T7IPlo17lx2ucfFvaTZZ2Ihb1XiCvZCIzA3bV9N?=
 =?us-ascii?Q?fDU4VDJzH080ya5Fpx001i8+/vQEJg0JYD8UtN+IHVLmZS//bqsCeOhDEw7Q?=
 =?us-ascii?Q?37uP++9IyH58XelDhf1eB+2+DXCn+ONJmI12TbuDG3di7Epp7uDmfpxq73qx?=
 =?us-ascii?Q?I66S6TEvhSDQpZKuA5w2e38hErRrs3retE92eDZMfyESHAuzrAYZBQrXNq0d?=
 =?us-ascii?Q?ZNFNRQtK2o3lIDFYCtEsToQGjlNGCKOiQKnxGq2QfZHO1DOOPUWsUtOkS6YG?=
 =?us-ascii?Q?LMHaGAndk7E8KFYcizuj9Qa2YRgevDkqvBUUe8/I9ltM3SkNd5kgXQ2k+ArO?=
 =?us-ascii?Q?rhMZseT9CxmxGsW7yrx0phfFKIYmWgRNQkR4PNtX3twkxqeK4HP4OjMU+jZ0?=
 =?us-ascii?Q?hLooxjJOrk0/3GAIO1ScG1q09G788Koa0GDuzWjd0iI65KTJxkk33KUV7ZEz?=
 =?us-ascii?Q?TN7nAVbw62Ee717zMGomhO6fZh/83MFJC0Q3r5q7sUsCff9oooxCsM+xYYfa?=
 =?us-ascii?Q?ywXLKx1sbT/Tf1dckwvR0ObIYT6Losa78XuLrZA+TlwXUU2UbYCZbYEZDUFO?=
 =?us-ascii?Q?UDdP4C3GdO+88zF0qejHdVwMjsmKt8RXOyxAUcg0kzp7KVcZpzaz0V3Khdxs?=
 =?us-ascii?Q?WEglzPRFQet8RxSlubmkHokQ8VWF6QY+za3ZPCFqEHKsdi4nzGZchrvZM+QR?=
 =?us-ascii?Q?Ly+HZ2kRo0weU1PFAx/u+3e6ECP7CprmI97u5b+lpQamKeBm1x1TAxkcQ7Qu?=
 =?us-ascii?Q?yxGPjYLuWtuvjzQfz19O2LbWWAznzUbH1dMsRx68/cmdusjh6/ietauR685s?=
 =?us-ascii?Q?whsk9DBtqUbO2+BIa+Y7GYBbc5eRc7EyrpuhVhw96fKZVMPsYZuD6xH+S49O?=
 =?us-ascii?Q?ZsrpktTb0ER7WMzXL/gKxcD9uc7doYbp+m6fKZfmBqP5JaJrbR5b/8hXxyMB?=
 =?us-ascii?Q?KESEwY9KIB8UgIk/2vc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?dgdX/JACZxFYq8Hj4ffUWHZeXccYU4SlkI1HHJJicua+FjfKT40wMBJN6mHT?=
 =?us-ascii?Q?BlpwySHtnCGLxln2/TTJpLB+Jr3KoJEUpgywlqSpJlEkU1qY/wMJOdSMhzco?=
 =?us-ascii?Q?pttLdlAmXJl81xL+pmjcSrWYl4vepbyCQJLg49FEGF8wWPEfMflpM3k5OU5M?=
 =?us-ascii?Q?Zd4Ndupw5OT/IqBzc0UCcQgLwUuInZ2FCxtIec49wpZnXxdUZLidZKCPGu7b?=
 =?us-ascii?Q?yPXuX8jeXsRtS8112HJz88+dknYersTjjK1YU+ZKm+vRKvllZbDguPfK095u?=
 =?us-ascii?Q?2+6tdAgPkbhr6wBhk55/Z/16OEf4JMJwW8wryZOPtVx7oWf8Dghhe4WUv1rI?=
 =?us-ascii?Q?MBx9l782M+lEnGrt+RQOtu+QFF0NzjFUM7VKyErjvoNvVuo34SK1TiRbG1/+?=
 =?us-ascii?Q?WubwNP1fUSsS37wSD2ucagBJ7Hh+tVxRvjFItTovZBe+cOJmzz8U09oIB4Bg?=
 =?us-ascii?Q?rjjdyr3D6zkQc6YRSULFQWHD+cHm3PL4FFOuJfIRXIwQGREUQARGQfWk8yiB?=
 =?us-ascii?Q?o1j29++F/r/5zhga7FFf/WCEfEO3ZL7VNedL29sme297GW+0xRKUYyBBsMSM?=
 =?us-ascii?Q?70WMABdkCuvbL6Ff8ZmPbujwh3wvENiNEFh0r1OcrgRtmoR3GcY4mrg+pa8u?=
 =?us-ascii?Q?ljJWBNd5Ll+Xkycm5RFoCnusiQSAnN803GP1Ew2XAY+8Q9VqSRIZ14GZdNqe?=
 =?us-ascii?Q?HBg/GcHt9IhchrnwIQG2VNnpTcPLMs4Z0FvNx+J36h2GZJjQ/CYMe2BiNULS?=
 =?us-ascii?Q?qsp0eT8K2H1Fi+fGmJl9fhXWeyslM+P910qQuKmY5P4Ba5X4dFuO8EcvTmuB?=
 =?us-ascii?Q?slcsV0ocB9qSu6VlSzFwo7j+MvxOsCuJ9YPy4Wh2ApQdY1i/nVb+rZJuvsKA?=
 =?us-ascii?Q?2cjn5RBZpApSysWmAiQBm186SkVFROPJ61jupb5CZN4tdpNhHQzRLAUu1Im0?=
 =?us-ascii?Q?xsyvajFFB+eqvmKKvRaoQESXDgLTOdc3YKRryVBFehgczAoRGeFkHhei1Ajo?=
 =?us-ascii?Q?rf0eJ+UN+t0VgSV7pWpHx805htajgX3tZVzd+oi6IXmvuiZokBHu9G2WZugm?=
 =?us-ascii?Q?fAnuYntFQZ6yZBoUnvdkSRKkcs2x5xCLYc0/04yurWUAx0u6zhHecBofwaEW?=
 =?us-ascii?Q?CTJ6l2o2zhrtUCtwvt6sFKaFSHnMz/kY1LpIw/rgSIyPWKjpGYZ+ILEUdTuz?=
 =?us-ascii?Q?NFS/T5t332dUV87AiJ7DLKg1PnQvbbbbr4dYLgqvhSAOQxrhBVl8SJcfOkFS?=
 =?us-ascii?Q?V8Jct4t6h06IAIPFuBCkA/SiC0489HhI/2JBT1yjd2f+VrEWm+w5qD2UMkTW?=
 =?us-ascii?Q?u0JrTiLCpJNlyu9MpdYUG1o749c/XGoGl23UVWhmbbNpR7JpesTN+UeWGTLG?=
 =?us-ascii?Q?ROUTECQG6kSLMC/XeonKSIhK3M+r3+n2hb5D4VtHlBLF45eKSZHdEGF4boIe?=
 =?us-ascii?Q?JfcbV3c6tlbNpRtvOYZflgMClGJfld0u2LUCwTiz9XvqaFVdv973nlJ3o8fX?=
 =?us-ascii?Q?Vcjb1FcSpv6bwwKT3xFNO8YHmi9vn5+GwKhm0qdljnDm10UO2NVq6V75NQ/I?=
 =?us-ascii?Q?YlQUJwcroyYR7ch5czY5ztVpyZze/8LQgXNz28gomWZOYkyJ1kMOq9G55EOy?=
 =?us-ascii?Q?zmZ5CoouOlxYJbY5qMFytZjN0Pxbn/QbAx1XmG3ByjpOyey6RoIU0xncTbm6?=
 =?us-ascii?Q?ZIaAZPEFEvQwSFE+IoTYehGP7KBAP7IbgIwN3mcPQQtXNehIiSrBIL94enn3?=
 =?us-ascii?Q?OAWo1uXNfg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef992cd2-991b-4cdc-7adb-08de736a3806
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 06:01:57.8936
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zClLFSYZm/AmPDpBerA1SOE31FfSS4R9JCpcJ+lH1I6/Z9mnolJeL6KhjprZ7npdGZXkRzs/I6yLP/gax/X8CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-267716-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,altera.com:mid,altera.com:dkim,altera.com:email]
X-Rspamd-Queue-Id: 71E35182420
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The first patch adds the device tree binding documentation for the new
board compatible string. The second patch introduces a new base device
tree include file (socfpga_stratix10_socdk.dtsi) containing common board
configurations, and the eMMC-specific device tree file
(socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
with eMMC controller configuration.

This follows a hierarchical structure:
- socfpga_stratix10.dtsi: SoC-level definitions
- socfpga_stratix10_socdk.dtsi: Board-level common configurations
- socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics

Changes in v6:
- Rebased to v7.0-rc1
- No code change

Changes in v5:
- Move Acked-by's above the Signed-off-by: and remove the empty
line between them.
- No code change

Changes in v4:
- Included Acked-by from Rob Herring and Krzysztof Kozlowski in the second
  patch commit message
- No code change

Changes in v3:
- Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
  eliminating code duplication
- Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant
- Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the binding documentation for broader compatibility

Ng Tze Yee (2):
  dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
    variant
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |  6 ++
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 5 files changed, 161 insertions(+), 65 deletions(-)
 create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


