Return-Path: <devicetree+bounces-257431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHbnID+EcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:46:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B15152FF7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C48A06A86F8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE56436345;
	Tue, 20 Jan 2026 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="ivfvU8VY"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012040.outbound.protection.outlook.com [40.107.209.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CAC42DFEB;
	Tue, 20 Jan 2026 13:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.40
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917303; cv=fail; b=JYa/Hbbj1ztcBBF+ITKaL/aD67E5zrQQoAhExtHSVVAIsM2KKZikD7ittrf6BRaYYBrFZqs1VzuFo8nGaS1HW+No3ALfqNjWmQIdgFyR5wdk9BZ8hrB+MIsNvEI21pBJ5Wnm6Fo5mwdljUqxP1ym23iSJ0Jk824HasOiABnk+nM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917303; c=relaxed/simple;
	bh=6P0IIpaSPXW1uTxTzItysWDdVvIAG/nFTxy1ZwXr3Lo=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=j2o0CmNPPYaIjBqANnc+i7jN6lZjqvZCuTf7vBVro223tARTyTUG5G4itBHTuT+1GipvZ8qdaFOrNYdCcK1lp/ldrtwSH7fk2wstdR1hTiDqe0PCC3nHzcycNx6BPGPnRnE2aCn2eNxw6gwoq6PJOppDCTUat9ZiLLbptbDSmVI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=ivfvU8VY; arc=fail smtp.client-ip=40.107.209.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VpBEVtG/VWNq7anjP/7WT42aTPzBu0P3q6if6Vj+yYNjlObGbIeiv5343TNJevgnvCQZ7ACms/lHDp5RWRXU28vIomxsJSZk1GPeCooxwBRIiOYQYDRpgjpbeWNEZqPj/u0lTdYrUMri2PCUjIyLbh9B2llUo6sFLLmxlQdEpX/4qlWEleuH7JWBIuGd/4WiW99a0/0rQpl6YNUw1DxXKSE+VRKCIHJoJl3TyA1LohocBP/2et7GKAIlNXCBgoPpGoXvU0zKPfZamk8qXM58CYDC0GOYi7YZOQR1MSzv6OnsheX6mUXgnV0NJUaKZeMXebGyQDBcX582U0ljUU/UkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zg7nocsflWpPM+Mf04cwRGDYLTyhMhNiMmRTcJmqVHc=;
 b=LQbTM3qiPz4MRmRgPbdjX2XD2K8HcqPyRhVvPob3yO82C/msAPUeGE9uuCfILOCKORjbVtF6wZ2dprOLOzgCS48NiLvuTw38Jg1oIJBbSAoAk6H11CfrfxKghfPr+ccgeuoEQ6PfYdD4rnvgDicrQFxYZn+QuVaUrRgb3y76n3lbtYhgFdf7tPEU/tS+Fr89MhLjFRghYv885dbpvaT/EGBlcxYh27NzRduLkXt9zMOZnc1hCNQSVMupo89aFJmST99j0TYSagslAlZ4Ocdv+6Tm3/Vg+rg3OD6P6KGAcvmmNgeK4JpkZEZDbwacx//Fy+Q2V2tJMRSMXXrR9HOUtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zg7nocsflWpPM+Mf04cwRGDYLTyhMhNiMmRTcJmqVHc=;
 b=ivfvU8VYFGaJ44ui0B2ttR0JAbiGqjAEobju0MmQxCbi4jAh1X9M0wzu6js69VdvJiLk6Henz/SPQY8idb1Y2Nrkp2ASm6aiiX/cCF9/Mm9BEQWej6VuyK9jGJ4XLBA4YMnlOz5Nmnnx0tBa1DzRtQrPp6DflBNzLHYQsrS5Wr+zF32JWfTdaM2ubLvsuSd1v650QCcOJCDWR14LVOCOlDcjC5dLS+RCuzD69fI+Yyu1oJsNmBt9gnIXepjnYgeMlxygXrAXfTkzqstEg2A9REWkfPNsLZi0TNTdF2/JVoi1dvYlIut0mPODlNE8RH52+mGhxOslP2mZh64MofwIyA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by MW5PR03MB6957.namprd03.prod.outlook.com (2603:10b6:303:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 13:54:48 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9520.005; Tue, 20 Jan 2026
 13:54:48 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Tue, 20 Jan 2026 05:54:44 -0800
Message-ID: <cover.1768916730.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR20CA0005.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::18) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|MW5PR03MB6957:EE_
X-MS-Office365-Filtering-Correlation-Id: 72a4fc5e-ed5d-4d94-5a20-08de582b7967
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?e8QivLPxdb5gA8g4PTzoBe6xsn/CGjfX9iTONpRjvZptgpb/al14ctn75l8S?=
 =?us-ascii?Q?uR8+FeZGX3E45/BAsTe1GGfZcQ2lcQgBmOxt4ILPJliOsbCgQDBBdA13YB1Q?=
 =?us-ascii?Q?Ga6FtdsWzaoL1gcEBrkMCZzvy/2RXqWseA1taVel0dt8EJFRchWkcFIG8W+R?=
 =?us-ascii?Q?Tp7PlK7hCCV/SZYYQrbh5qiLf2zUUwfcN5KcJIEWFNEJ0x3bMs0cUguF9ApY?=
 =?us-ascii?Q?ADop2a4qwWI/sFhdA+OaucmGI88VNHWuEf6ABG5V7tNHgjRHF6V0PQY8r7WF?=
 =?us-ascii?Q?KH0nuRnoY8AWQxgGGY0tITDXV6SxPUxZ16tb3XbjyJQi4IHdKRarg8Io7wOl?=
 =?us-ascii?Q?QZPE1DE+CAJzvfDjnpt06ItKB4bjJLxpE6O6OowB6lvKgGfFR/1lBA5nlupD?=
 =?us-ascii?Q?swhPsuibv0xkT+d+6aJDMWmwYAWsJ9k4HzFm5O7qcLuL7GaHGbPBHbNfoJkB?=
 =?us-ascii?Q?uUteCe+1XHZE6OSYPZ7HDH7uevpyAslDGzHsMGfByWNdEWxTJa1+RSVI828l?=
 =?us-ascii?Q?+6dErAF4MMYGci1fwmTV9Fx2e2+HUzGSAwPbOgEA2iXSg6dNrQDx2tGmtrx0?=
 =?us-ascii?Q?TlwTIxVDg9jwe/4PMMjThEzg7a0eXo3yo781O2WFhPMHnCQ6yvxD6j1l45Ti?=
 =?us-ascii?Q?yUFyuN0poK7qsJa16J7J4xjmW9ltK6QU/7RaQkaJRdUqToTVXDARYDZ+9WEP?=
 =?us-ascii?Q?xHI/OHRYLiOzPTgOMlImxjCIMUHc/eHn0+6L/a3I9egT/rUI97KjWZqMzlCQ?=
 =?us-ascii?Q?3ngDs8naMNfiXZ4TuVSHijDKlMNMEmQuN4nQZ+80/TOmnzMN/0LbmuRRvn+f?=
 =?us-ascii?Q?dWiHQRZBoyXUxS6c0tjOakUWFv0SsmpywhHkd1BEp/T54I6GREQ09UO099O0?=
 =?us-ascii?Q?CA2Fd7eKY9axLIrErtzj7eDf/MOzMVdsJglSdL/TKodB5X+xTPKADG035ISn?=
 =?us-ascii?Q?eh4ZnXcYQjRwgihREOh25txC6Ie9jQteQg0nJ2E4+sUPlixvnBhuBBEUcXgJ?=
 =?us-ascii?Q?KtOfIITRrLFs5BoSbaLQTPqWHLaptJSMe3ZQvK+YukprHt7ltO0po1ah1QxD?=
 =?us-ascii?Q?KiZgz5L82CV4D9CZ7z8TKECZcxqh8BteA1gIfwBzpfuMV87pH9JPRM8MZm8d?=
 =?us-ascii?Q?E+u1c3d+9uKSP2G4NsdCVp2wEKzUg5+AHfqUWK5K5ax/ZSV4lCYAq1pHzFTW?=
 =?us-ascii?Q?nAYi972RDFBTuepeOIHLtibbbzLciD70btin+Q4Xbh/a95YQsUjQZ5mV1OsP?=
 =?us-ascii?Q?HNusvGg3+3z8FYtEjR8lHI+j58ocsGj6LsRlkCAp+GPgC9cdrZCe8cQS2pBm?=
 =?us-ascii?Q?e+5vZ5NYJgmNXUsO6fkgDmLySoOqqwKsw8LxOM7214gIWhOGyzMmXNM7xcKD?=
 =?us-ascii?Q?I7hvZ/W31TGGEBmG4aVtNcu/mfAjYNI4FtdzWGMxjLZbccbwJUf1EnxyC/9Z?=
 =?us-ascii?Q?P3FYRwj+nE4TynpFuWfRvWi+bq8q++g0albnpLlzq/BnfIfgUHe3SdPVOw42?=
 =?us-ascii?Q?EVyp/I/Y6TWiXvcCa5atrKNYEfNjPjUwOOtkqY6NMW6KsD63WF0h7gyeVGrO?=
 =?us-ascii?Q?UB8+x6c/7oG4b8ubPmU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?R2tQ6oYzBn3IdJqbiZZhJN8PigIW/lH04WT/mHipsIDLYalrYy/tHTWKTbUn?=
 =?us-ascii?Q?nYYJmhn8oIqwzNDiP2TbrtCNyBz1Q5ShJO9SIsFiArnB4V+tLoghTiacRpo8?=
 =?us-ascii?Q?Wk8ppxHEZE5yXje2ZTFffKTOkZo8CgUBueyvr03aAJIZp0Gj/z7IHo/COrnw?=
 =?us-ascii?Q?hB6/ou1x4zbybdZweZnhXHOT83pMUCXt8aFwATEtQUPoA55xopjJgCUkz2Cc?=
 =?us-ascii?Q?gZdX1G05boEZVXx8W+0nGROOFlHVG9MNQb9wfvYkhrs22aO29VRLhagb5Qcw?=
 =?us-ascii?Q?dxpihUrVYaWDylQzTqO1OynsLrqBWdg4YtiXvyYH99YxLtspNLCehLwJWmYn?=
 =?us-ascii?Q?EPZQALMAjrRso0Rz4seP/xjmyei0gXiXsB/k02LmX/dia7BV93oAyydmyEqo?=
 =?us-ascii?Q?00ggfSFe5zZKagLIqoGvJ4J/nUoQ95E35Y6H/ViDQQ7aJwiBuVLy8DMlVW7a?=
 =?us-ascii?Q?wNOC5vm1iLfqsTaB90YqLWKBQITnK6plsq+/jSQsleclXI7N3UMnqPiNv1UW?=
 =?us-ascii?Q?15MqXTWouLmBGJZjL/KIzutcRDAnkvPPbr1qlLxUH8X7EBVRcUjg7XzwDFzf?=
 =?us-ascii?Q?FcGXWtmJyTfCK1DJHtWnMqjfNOZlmpvswR8QFwxgwXlZEY9OY3Us0XelC/33?=
 =?us-ascii?Q?s+tn7oBDt9KrIxKCr+9/e3TqiHJofVs3GkocKl9rpmpQFp1V5NiYzbFvIuUh?=
 =?us-ascii?Q?3cBU7V4tSPrzMnAhNFQtJup0X/Cj8mM9GGMWm+6RTW1XftthEc4UFwvOHTjI?=
 =?us-ascii?Q?tsmuogl0cLvyV7OdY7YKMb4IpFJ3ao5ctgONR2FnLyQ8C+9crjC1v4OatUE7?=
 =?us-ascii?Q?/WVUoAxuiW4jZ7LZ/19Ii2c2fFJoaJB/FJNbvLTPKPpONgVF7yBaHmIi/Fym?=
 =?us-ascii?Q?Jffhtmd+BtHoAmyhqUdsKbXymLT0uOqV/x4whscV46tNiBg5AL2hJUEUhjWA?=
 =?us-ascii?Q?OlW3AlbArk+q8+YsfZmvTeuZcA6+cR3s84B4EcgcSltqGLr8KWIC0QbJzy3f?=
 =?us-ascii?Q?lCzU5Oj7HD03a9y3w2qyUK6wATUZAONQRh2BbjQQ04UV0YJJP3AaWp7Y1wde?=
 =?us-ascii?Q?Fuoh8TD+tQjsWI/nn/823+mFok6qqnIJJmOZyjiIaCWI1FuFgd2al/93wf84?=
 =?us-ascii?Q?IMXU0vB7vfTKVcdAqn0Nk7UE043Gx7l+qEwQy33zggbSSqXZVtfa7PKJ6CJM?=
 =?us-ascii?Q?DtYyi8ZQ33wg0CAA/6GMfG/VRcWJ6nSvxBbw4PuOiDrMNtBWYSRdUthnosdF?=
 =?us-ascii?Q?9hSNQEtljo1y7U29OjYwm6oA+26Dm+hPI9n9pB7h8RgUuAskrZ/vFHhTzSyN?=
 =?us-ascii?Q?mYsiBdHBVy7heYUbRgMKP2R2pcO6/xnZwh4AhcZENE6BKrMdJWuF57d4M26Z?=
 =?us-ascii?Q?eFbTTMgBMzSUjMEZqfc6wV8N+Wfb25PfJEETgP2TA19umizR2TrGtcqDH4Pc?=
 =?us-ascii?Q?Do9TdA6sjfBUnWX1rB2LmLyNumxepnw1p4he4GMuWZ7OP2vVcSH84t1FR6I8?=
 =?us-ascii?Q?udxeZH1eAkOchBuiaMUJHhGy4BpSaBVZpxN1jJf1HV38nyvqc32sgo+I4vXX?=
 =?us-ascii?Q?n6Zn/tIkph1vODpLqubto+Q2ozbdpmPiQ+DH/M8Q22yBmDqmqoV24SCEYP6G?=
 =?us-ascii?Q?UuRy5rLpAWk0pyVUR94gDEfLtUwmDEgI0BV9bTSw8d3epTyGQd8X1qAvLSGC?=
 =?us-ascii?Q?glixtvHIPNOwhXGwttYavLD1s3rlJTMXGuX5m68jkf7SVA+1VXfCRGegxZOV?=
 =?us-ascii?Q?BO5CFmWO0A=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a4fc5e-ed5d-4d94-5a20-08de582b7967
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 13:54:48.0946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ojMioyLi2sjCyATzK/9M2HA1+0eVnsvxA6kKaA9vnT1MeHcOQWceMkqzsLpjmLpHl2/sPKkSg87tMCsm9Q2+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR03MB6957
X-Spamd-Result: default: False [1.54 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257431-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[altera.com,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4B15152FF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ng Tze Yee <tzeyee.ng@altera.com>

The first patch adds the device tree binding documentation for the new
board compatible string. The second patch introduces the device tree
file for the eMMC configuration along with necessary build system
changes.

Ng Tze Yee (2):
  dt-bindings: altera: document Stratix 10 eMMC compatible
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |   1 +
 arch/arm64/boot/dts/altera/Makefile           |   1 +
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 155 ++++++++++++++++++
 3 files changed, 157 insertions(+)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


