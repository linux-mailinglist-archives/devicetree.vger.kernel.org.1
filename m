Return-Path: <devicetree+bounces-256633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D448D39D40
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7811D3000DE1
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E931A32E128;
	Mon, 19 Jan 2026 03:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="fmnS0AFn"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011009.outbound.protection.outlook.com [40.107.130.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794CC285404;
	Mon, 19 Jan 2026 03:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768794550; cv=fail; b=JahOP02RHunKNbdoXTK4jj8sXmhgz96Hii2Gk18ZUKBhmlqsZGUGaRK0AXTotbPSdjfznwCrt/H5tiqjIXn6xVM1TBcoGTGvAgpBi2d+qLg6w7NNk0/6+jgkjj+3S07a8aE3GgrXfjV7U1B/n6LzjHnTTrYzYhgHDYaoSwH8Xoc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768794550; c=relaxed/simple;
	bh=G9MNaHwwJegeMlnNXIGCwoXk8AnHVW/KKr2rRsSTYyQ=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=IFMz7Y4Dji9cy5ekk4NzTqKRt0T2aBQXtdiXOulTXHldVeVS4kJt8WlRqnuYcXUQmB/NGWazcmQcDI9H9t4k4b4EmVam9Q9hI1suvWAMt0ewOCEknaSwk4r88q5sUGduys3bP20ECC6up0JJs6XK9RbjZcxxQy2LG4yHrg9VNbs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=fmnS0AFn; arc=fail smtp.client-ip=40.107.130.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MXDzHOwCNTo9jtgLblRv0UvtblCJvudLN9e9XeorwUUf+Th2LVPum3W6B9AzdY9zjhqUxCv0y2arsrTStBDpQnODXyKjSxFNyKgi6HvuFKL9aSGJYtVGvKe07ig1WSSg7kWKVlHN3sAhXTeeh/jibrDO4XgWs1YvoTYxCXL+T97wj9mZlAP9sj0ZApdappCtqsQ5NFbNtvqq3oOM6vyfBrz987bUd57NXKUiKjMw/c6k8UBSoOxs8fe1HDrB3nVUXCvzfoQlXqxxJth9DJ+lciOrFZwyXrWEX/pEI/yPoIMiTc2zLJ9yDOsghjFq2G0KJHkUSU2UV3dRotMXTF7Xmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EIP4jK4/uBqcuc+21HiiyuMHplGAW92RjqMqtcfTcO8=;
 b=B0yiAmQ6kd5JDjKEWo7O4Fn0dbYDRXB3SEu7UQ6ojQNXuYFAbr3MS0on7UdMBZJqWv4+nMGdrgbHzBwvCUQIaBfIMp/c6CGciMkdeJfYGDgJkAhinXD6gre3wB3BnDsfkI44U3KMvZV31U2yWHxwpou0NJtYVdskrKRfcmw1lVbQeHNYXNpY792mNRkGH4FabGeTOsyIBClGPfa3atxdxYfwADv1CpHZNDiWlSxiZisUZdEuTcE53ofJs/ME/Ls5IdlMQx7tlkpqTvayhytmG8NSuAiYSa0yR/s8BrZlQ+wGIC31nZfstXprEUctudOPk96AvYit3OtmCp6jt1FEgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EIP4jK4/uBqcuc+21HiiyuMHplGAW92RjqMqtcfTcO8=;
 b=fmnS0AFn0FkVhgqJxnRi346UllDKen1C6ccz4Jxeq20Bu2op4hrF5q8OxV65H2xSEDannkqNLvj4DX7K38szqoB0tE/0p5YwYXAcAWKun0qc1jIRQTSe/Wy71N14dTI5MYmMIwZsUrkwJtaMzdjcM1Md/sGAMec7Xpqd2vybkXHb6uZ4iUOgFFbI7zuPacnPB3vuu2ETqlKhcDnJ9z0CdB9NPqTefYLJqGJ7JOdUdZe5cE+fDUZb6+pEZN7/moizXi9XMN8WemzV1hBsB+4SUfYk9J+FfDOCD7RJlnqyKtWKCa+oqrEtyWI3MPA3OsJIO7VqBfcgEeCIp+TGN7DuYQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DB8PR04MB6890.eurprd04.prod.outlook.com (2603:10a6:10:117::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 03:49:06 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 03:49:06 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 11:48:49 +0800
Subject: [PATCH] dt-bindings: regulator: mark regulator-suspend-microvolt
 as deprecated
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-regulator-binding-v1-1-e55d33b4c3e3@nxp.com>
X-B4-Tracking: v=1; b=H4sIAKCpbWkC/x3MTQqAIBBA4avIrBO06Pcq0UJzsoHQGCuC6O5Jy
 2/x3gMJmTDBIB5gvChRDBm6EDCvJniU5LKhVGWjtO4loz83c0SWloKj4GXV1sq5pTPYWcjdzrj
 Q/T/H6X0/8m4NSGMAAAA=
X-Change-ID: 20260119-regulator-binding-3750ddf8ae8b
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG3P274CA0012.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::24)
 To PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DB8PR04MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e8bf340-1f9f-4c08-12b1-08de570db199
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|19092799006|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?b2xoUmhvT2dnSjF6aGVuWjAweDlrL0xDMFZaTm5RUmtzUHBmWEI2bWJaMDZ1?=
 =?utf-8?B?Q3R6QXFkaUhsMGFEQnArNEVEREVwOWt4dXMvdmRsdkUvR2JlZW0rRWxlSldV?=
 =?utf-8?B?ZGJYZlJGYk11bGlZd25nUDFmRktpTkpYeHRaQmZyVjhVSTBhVzNGVStnMWkr?=
 =?utf-8?B?a0JkOGxNSCtmR1BnWi9CbWlKTUtZaTduS3NWQy9meG1iaEM5Mis3NVlGSUVB?=
 =?utf-8?B?U2N1Y0JDQkZwWGtEeWJQRUV0aTNGMVVKVHNnd3FwR3hGd3hJUTF6VVM0YlFk?=
 =?utf-8?B?cTVPUm9qWEhBS0oxWWlpT1o5U1RYYysyN2pLWHRyU3pQVWZ3WHVtaERxVWRr?=
 =?utf-8?B?ZHZ4WTVGakdHVDhiYWQrNVRISHdoNEg5ZlY5cWU3L1dqbVJnNUg3azl0ZHdW?=
 =?utf-8?B?dU1jTWlhc0k3NlRxanZGUS9MaXpDb21PV01zVjI1U0FjclhFM1VJejF1OXV5?=
 =?utf-8?B?UUllT1UzekpQR1JHSHFVUzZGRWlTU0NicDJVU0NMNHV5K0Z3bmhqVHljbkhK?=
 =?utf-8?B?c0xEamZGSmVLZjFHbUZIaWVyeDV2VG9tYVlvOUJETE5QWUxuVWI1Q2tVcjZk?=
 =?utf-8?B?QWhmUWJrMENkQVpDOGNmYkhoODZMcmlSK2lzN1Q4azVGNmFKUzAwTS91aFI1?=
 =?utf-8?B?T1hGY1M0V1hyZWE1UWZKek84WFl5R2l5N0JGb2tMRjV4bXhQV2hKYTR1QzBV?=
 =?utf-8?B?RlhYcXltNGNmMEd1aU9BenhGbmd1d1gyV2RRS0pTNEYzODhQVEdEalljK2ZQ?=
 =?utf-8?B?Njl4VWh5UGVBYmhlNTZ3U2l6VDVCUTNXOHRCR0I1WHhaTkxHN3ViU010K0I2?=
 =?utf-8?B?ejlmVWFEWDNNT0pISGRGOUxWb0l2TXBrd3ZjbXlZSWo5ZGp6eXVzdFZRNUE4?=
 =?utf-8?B?WHEvSTR5bmg4Mjc2dmFhdDlqNmJRT1ljUVVEVytMQUVFTFhKOFVUUHpIZWgr?=
 =?utf-8?B?N3hJQnducHJwLzVpTlZReVdJM2x3WXFJYjlGd2UrUEgzT05yTUg0SFkwZFJo?=
 =?utf-8?B?TElYTEVvSVd5ZkVhek5IZGZPbkVUSnI1MVlqVkFhYjZoNDJldjMzYVB4Y2lH?=
 =?utf-8?B?V2VhOXBQcTZmUGw2UXdidWFIU2tEcWdRZFRXbjNCMDNDem84bFJZalByeWFo?=
 =?utf-8?B?eVBmVFlQWXIxRmY0bG9hSGwwV3JmWGhId01RbS9mMzl6MDNrSmxQSFdNVk9L?=
 =?utf-8?B?QW1nOXY1RXhUTk5rTXBpamJVTk51WEh6R1NQUlFDS2NoVkFocGY4aTI2aTZ2?=
 =?utf-8?B?NXFLa2FTbDV0Z1VnNXM3WUFRenQ4R0loc21mY0ZORHl0NUZsVXVDRCs3dzIv?=
 =?utf-8?B?SDZlZ3ZCaVgyM2k1bjJ3OTFEdTJQejBZdFIrcHVjUmhsaURkL0xNRU15Tk5V?=
 =?utf-8?B?RUFSUXEyWG9oMFdOdlBMTWtOMHFBYm9SVXQzUC9veWxHMGI4YkNmRzhBMm5i?=
 =?utf-8?B?am5XZ3pmWmRORFlSS1VyK3kvSFpvRU5pblZQNmZ5SUtSbUZWSlZCOWQ4WmND?=
 =?utf-8?B?aEcvM0FKQnpRMGJyb01DRVFqQjFRaDhSZE5YdnhDMm5oSTBrbW9pVDBhRk5J?=
 =?utf-8?B?aUt0S2lrL2EweCtuZkxnM1MweHJNb2wxSVBzRjBLNkZPY2JJN216TUdENFpq?=
 =?utf-8?B?cXlKSEZVK2JFYkFLeFo5b2N3eGdoNDFCZ1NvMzZoOWpaOEoxOTFBVVRCNk9Y?=
 =?utf-8?B?Y3ZOVzlxb0FETGplRC9jbTZCb20rWm5md0tsa0E1RWhnRFZEdVRVbHR6WFBU?=
 =?utf-8?B?b0ZBbDJiencvWHYyc1dIbUdPZzFzNHFtNU9sNFplL3dwV3F3RmdOSnVqOEg5?=
 =?utf-8?B?ZHpOQ0xmTWgxNGd5bStUQW9ZVWgwa0Q5R1VXVVFVbXlTSGJJb0FWajh1Z0li?=
 =?utf-8?B?dE51b3JBV1ZpWlg1TUJJemdMU1RNMjY0QTFBdHJSTXJBOUpVWUJIUHJ4OTMz?=
 =?utf-8?B?eWF6MDB6TS9xQXl6R0hwcldxVWpncGFtc3ArQmxrQnA5T1FTYmlHVk1ZMEpk?=
 =?utf-8?B?L0pGL3Y0QVdOdDJXdWNLWHpsMkR6eURsYjVuZTVnQWFyTVVKbzhPVWI1VzlX?=
 =?utf-8?B?OWFySStZU0JDeFJENlhrRXQ5R2pjejhLajhtVGttZjBJT0REMEtIWFJSa0F1?=
 =?utf-8?B?b1YwcGFIS0ZQOGZ5QXhFVlo1VDN2dTRnYkU3dWZacFlSWXZhMTErTUI3cUdQ?=
 =?utf-8?Q?pSR4oK2LfVCck8J+BD7hZAs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VllnWlg3NmFzUDQ1RUdNRVNwTnl3TVlRNzg3ZXBhOUkzNnZJSEtiMXdNcFNJ?=
 =?utf-8?B?L3ZIVHN1NEdISURYbCtDYVR6TDE4eGR3SGN2TVd0aWpsSkN0eFlUWHF4T3l5?=
 =?utf-8?B?NjFUeUxjRWFWeCtDY3JMbzVoYmljQ2poV3RhNWpxZGdTY2x5cFZXbU5wSmQ0?=
 =?utf-8?B?R3Jna0dFMU04Nno4S0xrOGIrTUJ0cTZqUW9wcWZTVkgzTlIybzg0UnUwTk8v?=
 =?utf-8?B?c3d1K0k0M2IxUWNVb0dpbEc1aWxPNWU0RCt4S2dHL0ZrN1BPemtud2hLZ290?=
 =?utf-8?B?UTdRcUhuc3ZTeFhURWxxQ2srRE9EREprd09tK21aN0tWWGU2YWtETjh1UXor?=
 =?utf-8?B?TnBrMjJzeXd1dzdhV3l1MlR5bGVic0N0bXZWVFpRT3NHZ3g5aVVPc0docDBw?=
 =?utf-8?B?amxoODk1ajZhck1CWTRqUkd5VVR0c0tBSjBIeUZBa1lmN2V1M3NSZURGMHR5?=
 =?utf-8?B?bzBDZTB5ZlVsUmh2cGU3Smc0aGhUNjB3Y3JIdXVYT2VubVdzWTBIMml2UFlM?=
 =?utf-8?B?SW5zMzdJdXdNYTJweHl0Z0E5ZGwwOVZrVTgrYnVnaFJWOGI3cDdtd0N2SHBs?=
 =?utf-8?B?ek03MHdoQ1NtYzg4bmFaRUhuSXliSjU5RiswV2F3djhURG1WMk9aSkxtcmZT?=
 =?utf-8?B?WmdVcGtvdTJhUzZkU1dQRGwvS0hhdGxYT2o2eVBPdncrY3VsN0VCVlJQOFpt?=
 =?utf-8?B?MnlqeGpEQ1BBOWs1cmZRcDVTSmxrZmUvcFd0QU9UVEdwa1FWUk5DQjVGNDNn?=
 =?utf-8?B?eGlER1ViTytCUjN3allXa0ZBdzQrUE9aOGVQb0h5T2VnVFNTVWZScitLZkwy?=
 =?utf-8?B?Mlk4dGcrWmc1NWdVd2RicFBzMUhFU0QvcGpRMjlhOTRmNGxFS3F2YzVnVkhI?=
 =?utf-8?B?clp1dGtSbXM3MDdNNnl6VDZuTk9EM2twZjFYNVM4c2pzZHlvZlBXYWZ3MHFv?=
 =?utf-8?B?d2oxSHdDOE1kNXQ1R3hoY1hDSUpTM0JRWXZZY1B2VlhWTEdOZFk1Wm5oU3RH?=
 =?utf-8?B?S3hnTE9oOUVnK0w1Z1pEbHd5aC9DbXM3VCtzRWpuZisrUWhOUHFyUEk0Z25Q?=
 =?utf-8?B?K29qSll1Rlh4Tk9tV0hBWGU2WnhXaU50N0srWFdvVk9OVnRZTzVYTnF2QTRS?=
 =?utf-8?B?aXhKZkhEQ05SVmhCdlIzc2NFcS9iTklRZHJBeEVzbUswVklFZ3pRTWxrM0dl?=
 =?utf-8?B?b3JUdWwrN0tzNUw3clhoTEYxaEttNUUyMGlNQndLd1RhTjZRTlp3N1ZOMGRD?=
 =?utf-8?B?a1BPZzNmN0thaXgxcTE3SXNaVi9ldERUWFUwWVczNU15cUw3a3UxQXVzUitu?=
 =?utf-8?B?eXk1V2VobElSMkRtcVFDdkhzUENNeUUrbHFXWGU4ekZpc2F3bGdxOGs3akpv?=
 =?utf-8?B?MnNaQkpvMm1qdGh2QWxIbEIxM1RUaW11VWF5RTJ4dHFwVFJ6VStmK2RRelFE?=
 =?utf-8?B?YnNPMjFOYUdQM0hLY0hCVGxoREtyQVZ0MUxwY1BOaWZ2dEo3dklDemFvQWhJ?=
 =?utf-8?B?a00rbEw4cS9LQ004RGI3ejZBeGNnbU5LT3QrMTBiam8wOUI5a3Rsd1ZYQzFG?=
 =?utf-8?B?K3VHaEpnVjVNU1d4enRWWHN0TURFUGw1SW8wOUZtRFVNY3FhdGpjNVFTc1pS?=
 =?utf-8?B?ZG1BU3dmYXpaU0tIb2ptU1RMSGVER0NNSFZucWxLMk12QWtHYlVhRzVxOERi?=
 =?utf-8?B?U2NYTlFtWDlBOC9SQmhPcTBsYUlGK0JYeWlYM1BwYi82UUUxY252MW55dFNk?=
 =?utf-8?B?aDBtcEVKVWZBenZkaUpsS281V290SlU4Y3ZVTjZqWUkwQmtFREkvWW4rOXM1?=
 =?utf-8?B?WXFMSitXWGZzQmVsRHcvRzlkdUxJTjY3a0xlRDNXSDAwWkhMdHlvbmNmNE5L?=
 =?utf-8?B?VUJ6Q2laM0l6UzgxWUg4S3pJQ1FBYVpKZlZ1eVJuUjVxeEU1cTczNldXT3V0?=
 =?utf-8?B?QkNuMzJ4cXI5YVJxclBIbWhrVGtGaGVNQ0hoWldNclBwb1Q4NGlXaklyYmNP?=
 =?utf-8?B?QXZiTzNLYjdjS2xiMCtOY3AxSTlvZnh6Zmxnd3NJdnVMcGVCTGx2ODlRTVRy?=
 =?utf-8?B?bzY4eDd3OXVraFZiVWNLWnpVTGdac291VzVnQ3ZmdG8vL2FzTHRTSGFhamJF?=
 =?utf-8?B?UzFNKzlNUEMrRkplZk41Zi9EeDFWd2dsL2VrQ29Pb2k0T2x5dFlCR1FIQVF6?=
 =?utf-8?B?Y3ZsaWJ5M1RKUkNOdWZOVUwwRnJuYk5HMnBkci9wUXZCcUY3VjJhOUpRdllW?=
 =?utf-8?B?LzJPc2VGZmNLRXFSZ2ZGNDdxTnk2S3dXYTZmNWJhWHdGTndHN2dTTnJVRVQv?=
 =?utf-8?B?RFQwTGs2V3VsanBEN3UxTFhNOXB4cHNCTUxqZWFiODNpdkQ4Y1p2dz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8bf340-1f9f-4c08-12b1-08de570db199
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 03:49:06.0426
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jRvAq+zlefRSsfq+cp9QbpgSEy5AZickTia/6Wg58aS7VBppltZeEdmIH9vOs4yn07knTsjZg2fyQnFIYli0RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6890

From: Peng Fan <peng.fan@nxp.com>

The Documentation/devicetree/bindings/regulator/regulator.yaml
already states in its description that regulator-suspend-microvolt
is deprecated, but the schema did not formally mark it as such.

Add the `deprecated: true` annotation to regulator-suspend-microvolt
so that this is enforced at the schema level.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/regulator/regulator.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 77573bcb6b791e4f90837d70309d1f32331f098a..042e56396399f9aa92f72c891729837f92538fb5 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -274,6 +274,7 @@ patternProperties:
           suspend. This property is now deprecated, instead setting voltage
           for suspend mode via the API which regulator driver provides is
           recommended.
+        deprecated: true
 
       regulator-changeable-in-suspend:
         description: whether the default voltage and the regulator on/off

---
base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
change-id: 20260119-regulator-binding-3750ddf8ae8b

Best regards,
-- 
Peng Fan <peng.fan@nxp.com>


