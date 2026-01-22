Return-Path: <devicetree+bounces-258429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ6rH4EucmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:04:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA2F67AD0
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:04:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0A2DB7A726C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54428330B22;
	Thu, 22 Jan 2026 13:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="eVZ+UHXb"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010062.outbound.protection.outlook.com [52.101.46.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D75317715;
	Thu, 22 Jan 2026 13:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.62
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089673; cv=fail; b=o1tBSagDS9Vzuw0i2YfgaN4kI125LcteqbSlo8Pyp7CeB52fGTJUYy1nAOGMNl2F57NOLXfJoXRYq1z39uobTsNbRvdfheaAiI9C8R0ZVv/v8gvZkuGGXDjZ6MY2dMGSzxzCmgGt3Qf7SQJvxNAmXuBzqdUeEICV6m0X4jWpgf4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089673; c=relaxed/simple;
	bh=xPE3UNNupcGfe1O2M8k6n0/1QhYSlDreU59Em1gQND8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=o7KWLClVpVgTiL5ESXa6zqhvJ/k6ifXCjOBXhvEzx6lJZF05q5BAZyG6ral7y+xdvdmTKyjsp0S24ZYXatU1lKnknR1r391m2HpG1jFDrOKGq6XqlIlN3aEFq/dKdYe4k941bRDpZOuejDSU5tUYDXS2FX7DmGML32ahwyTRTZA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=eVZ+UHXb; arc=fail smtp.client-ip=52.101.46.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uR+KwuQ4yl1urxY0fOtB+Xx344gBUBF4XCdiyOGqxLsyIXZpaoCR8N9FroX8/CHmJsIu4NILlI6W5L7yaVyqYzWsx4v1DbG3qXqIbpQilhuX5gFD3FAfSSeJkuqYtWDMCnkvLWwlOxnLHQx2JOem5fQz5lb0Q0V6YSEoQt77E/RNBb9CdLcA9OC6WY3GejfwlwTRdhKGtWjzVLL7LIKuSuqeQ3WokE0dckK+Z7X0ncWF66xr7C0eAsqZd+nKdXpstSLQVVnOGR0HTsbxzXKH/JUNq1cWiDYx6hcd5oxLm+qd8GpL4XuvafKYLj/ffMZtcTgxUtT+VU+xG1MeRA/v9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ll8P9V+fqCD/80oYRazMKpBIFX5x7p+wTBNp/jW7wRg=;
 b=ELv5dvGUrtaw1nJTzPwBUPCnCvxg6aXElEOvqPNTf87GqqzQOfMaKpGdJ9fakY4ERmb+dZP4ocn5VyIUiIpZbB+fbAfBRCQM1arYhHmfKB5HDwDmjWBUI+1nR3nUmsicgj8Q0mYmMg5AVFs8pyT/yYD4oD12U/Xgu8VhxrQHKaWcboRoHdhuatEEsqI9GOnB0KGm04x/U9HzBvz0+8zETDkvX18WFszYu3B8eeVFESSoq/u7JkQ2P+VbX2NDtxZxux5XJBittCdZs5nd7uuZB6oVdVwHkChxjx6Ml+kAPI5J541SZBnfH7gP/y6NT64hlRgDPyJq0l+Cnbf9eQQ20A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll8P9V+fqCD/80oYRazMKpBIFX5x7p+wTBNp/jW7wRg=;
 b=eVZ+UHXbf/kaEHMRVxHyn6ESoZng37vRbtEaQ9XIL3b1aRvMUSYkwyBp50K8D3Q4kCunRBN+jFWnjLkh2PNESSerIVv+AM8VLR9fS8Y3LAhUbKge0daucnpCKUu/Zgie26nx4CWGpX66iRDlcPgAo6h2S7ejZKqYWN/BR1sg9eNEv4S41qSPRs8Sx+mLenm7nfLp15dlZkBGQiV+F+iHRolhidNSpEOe2IYQAR4GX83GaS+bpjV3P+QgGqstbj50emIttPBWD37cE0VwhbY37H4j8GJvK27r12CvAh/WY+Ea+bINn0X1voYaVklpYQNkTLxCBxQ65Dootd2nHNQvtw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by SA0PR03MB5402.namprd03.prod.outlook.com (2603:10b6:806:b7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 13:47:48 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 13:47:47 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC variant
Date: Thu, 22 Jan 2026 05:47:42 -0800
Message-ID: <66f1d82240123ca71ef4850ee745747effa0042e.1769089199.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1769089199.git.tzeyee.ng@altera.com>
References: <cover.1769089199.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0209.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::34) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|SA0PR03MB5402:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d23a11f-5e3f-4afe-361d-08de59bcd32b
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?iAJxXDZGPE4rXOPFpYFbptEo5p05jxE4l7DDQZHqD7n4mSw431Y6Y7+4AVOC?=
 =?us-ascii?Q?ndzY4RzdhACxfiF3QlG4McXyiqz+13MGTITj9WSKpjrSQyTxqO/KtNAFH+A6?=
 =?us-ascii?Q?uO/7L8szv3NyX0ifTz3JMOB361ouAuwSB5XarfOpVLEMbT14sinDgHwPL0+n?=
 =?us-ascii?Q?PEe59J4waPOHCILFz+vqbZEhBFEKtTLngABbXd3P+GvoG1qo5e0blaoHH3jI?=
 =?us-ascii?Q?/zyEwGdLjZ7RgwwCCoLsedMEgisAsx1GhdijNP0VDlLfkpH8lsyQsaWIwHJZ?=
 =?us-ascii?Q?xoWMMzdxzNUDoTEgppHk3GAS1tIRLk9iQgxE6Z35WIDQoj/ztsKXSLBjI5PS?=
 =?us-ascii?Q?+maFH9QZPBhb0Ae1pK+ZJs+MC3uZnt8FRzIsi22rZAeF9txkNStSfdJoDVJI?=
 =?us-ascii?Q?Hoa7//NpDy3stpwofFxe0rNorb5Gl4C6KygWk5KiBVUqapUjx9bTRw1YIGSO?=
 =?us-ascii?Q?gj064gw5YdExGWFESVUN4jA8kcyxNxuyqpQOqxgf+KHg1K2keK5W6i/daXr6?=
 =?us-ascii?Q?79DxoUvwBqhnzdfJOVDsqQs5b6/7fHwkLyM4cX4gpRyOldodfQdwl5HeAIbk?=
 =?us-ascii?Q?Fp09Nj2I3tQ+cN0GWdx5kkjqEuXWzr0NyCPRLplJKZx60/nI9z0T2nHiRHTq?=
 =?us-ascii?Q?7JlW/16svhdNWTTGJJNm5NhTPJD6zosND2EuM8PtVqqHLnNZoBrIg4l4IACx?=
 =?us-ascii?Q?e5uutKBOkDW6kjWVduadMgeyZC4BNWq6pI3xU40c8+F/n6UIekJ3gP7oFJsI?=
 =?us-ascii?Q?qFVF/QQRvIzeyYU/9yMTT0e7fJAlrZFjgoE8f0YAU8Uzdr8OOiSa45wVQlXu?=
 =?us-ascii?Q?QGxEcWAYZuvSRHJj2GgxkLk/UPmx54ymXQmmTi/DMmeuDlGBXpIned1rR4E9?=
 =?us-ascii?Q?zu1ToqW7aIknlMQvDTvUkFryklJtEzdqN9LAC49zw2pGzzwvajMdryOoDAh8?=
 =?us-ascii?Q?0auo9HZchU72+6Yp7hHrQptOBPgPFDgU3o+1Sk+2v3AxZCcvNxub4Si+6P8W?=
 =?us-ascii?Q?ktGvIasTqalGPPaE1PJ8tGg+ABJZ0dgnlCd6ocn005PVrdHsk8I3zZthm+Td?=
 =?us-ascii?Q?AIRDu8iarQFHiLfsg0AWFhZpDlX5dpCl9WgH7L2z4iGwduyrv415ad5CtZA8?=
 =?us-ascii?Q?rpOSE0fr0nat5Qx/tcjviJ8jim0Az4ezTJ0yeszNEtldLrzsffWpcV/c3xgC?=
 =?us-ascii?Q?3d39CUhMkIjbm/Ikxvyhq9W22h9D3YM+NHhYZES7yIwas+lCj/E+rQT/4OWG?=
 =?us-ascii?Q?Awnmcp8eukWhYNGUMqbk5fJKt2xjn/VRlNSKDzpuPqs5u7EP9znMYlgNy11/?=
 =?us-ascii?Q?xHmPXiegMPYJFsx8+w0HlGR+Gth6Xu1vNFCvgGl1mh5bPwOF7hQ5Z85gPM4o?=
 =?us-ascii?Q?qyVPREYnWZiKe+b9ZIYxdn1kEa+SXGjK/BL/EdmJiq1YUAjlPfPnCPmt+7eN?=
 =?us-ascii?Q?Q7AIrsH3XVYlsP5OhW9PTQHzuJbJ6HHL63dXaLMgi0HKxIvicD0/F17Ro/yn?=
 =?us-ascii?Q?CvQNNcAUQ9pwhAwOGT5eW4iuDXOraafqM2HjwmDCAlyJCmhrCMxSVMMzhOiJ?=
 =?us-ascii?Q?FITN5KUotDPFlZobHZM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?l0xxU57ZTjrNmVsdr3ubOoPeEPRyrymCjAUOpLed7ejDUF4eekXaBD3wC/tp?=
 =?us-ascii?Q?Bkmv32wLJke1WBorfnxBd7akMAy7Q8u8m4SPeElseAmHnfLHVy8yDEfKyJBK?=
 =?us-ascii?Q?M2DGg0RmjiNDWGyB3aF8PDehry0/EO1edljxdIqDJKjyAjaPUF3R3EGELKYR?=
 =?us-ascii?Q?e1hICiokVX4ojQSCo2KkSatH8hfVF3daHkd/90thVX5HriMATqC/KirQOdoW?=
 =?us-ascii?Q?qo8gD41BwORdNEq5AtRO0oooG7jGrKGTiKmDKdyoI0TisF0flCfH8X8yPsGh?=
 =?us-ascii?Q?bZmvqynmAn659ecShOVCMq+9HtAYlx9XUi1M0pCpN3ruV+fir7I9RDrdsDk/?=
 =?us-ascii?Q?vjPVff65n3Acte2dzM/vyzfj82427NcCHfk+Ua24kD+sGC6ej0aiVovFAEtz?=
 =?us-ascii?Q?RIoz4zxg6PTLvGQGmhjA4FPnq5lRBo7UtQc+8G2Kj5nQhI1XuphZ9Un+M7Ex?=
 =?us-ascii?Q?6CwcrS2zk/wBLTJkfcIaeJRofIYnf/4I/CoStTZM/OZH2v+vwsaANhT8zAfa?=
 =?us-ascii?Q?zR4qLbR3X09qkasRv46CEUZAWb38evsq9UFYaxnpQ5QFu4kL03ylrCqkQcCt?=
 =?us-ascii?Q?gLJlWq7PnkHg6aAvmyuVKAy8mrZmZn3XLbj53TLVxvX71s3rHjpJWvjTIPR0?=
 =?us-ascii?Q?wZia2PSmaj6VZzuANELPJElPHpVQTA89U/VXO0Tb/cLXUpgVlVmryt/pawQg?=
 =?us-ascii?Q?i3ObarMV2b2d0rqnKbboJbOgKQehsXLkc2z3ye6Dqhl7L92VWWwhAXyNOt0B?=
 =?us-ascii?Q?cDvgu30CoWFCV+vx1Wy+2jnxKJ0oUxhLnx/1JHk2vy4dTj/qwQdHWRawHZXA?=
 =?us-ascii?Q?YL9sn5lR1XLHm7UGKqGp7vyXnpHdP6C5b40GTlxmFTThupzyJmHy2a9V4PqH?=
 =?us-ascii?Q?5YoTZKj0hnGte8Bmz1vbsjXGbAKPs5FgjFotUS8V5sV7h//eav/jTc5mUeyR?=
 =?us-ascii?Q?D+ziMY/ZXJgNkDCNbzACmBaM83lDOysyYBEaVe/FyRGuzhyHPLyH5py8Wr3u?=
 =?us-ascii?Q?y2viy/wwymNYmpTHUb71B6oP0L0oA4ZNC64XzZR1g6h6F1seqwk7YFX+zWT8?=
 =?us-ascii?Q?L7H6VtyW1Ux+RXTBjiJ0CnaGqQC53VxHxJLmbUZbAYiz1+wvm87ps+sDfrRl?=
 =?us-ascii?Q?BNlwTCAgt2ofCvN8xpLNN3s/MUIJEMqm4pOVZKz5t9aY6bqtNToR82U65boO?=
 =?us-ascii?Q?Q9u2JpVUX2XQwE1ngxEumS1AfZBBJMu+QeE4KB5ju+bJfTQq3+RT+x8WsNnG?=
 =?us-ascii?Q?sgKCuvVIox/1+aLihZdsjiZPLF5nfRDu9Bo0FZFqY8yL9wlvcR74Uej6eL3e?=
 =?us-ascii?Q?AC93YjsXAdDJbplh0hqE0uzWrwVXk3DiakUufRfyvgzqCZYoszsi/DAvh3uJ?=
 =?us-ascii?Q?Wn27/XpsU3heA6w9a6ybFEdoQHlyiyzNfJRsWFCW+Yb+G5jThiJFe3lKJHhM?=
 =?us-ascii?Q?zgx+WkBrrUM6O04SCVldjh3FLjyuHPH1Kvnq9obEv2Ztw4s+A/mWCpXoySA7?=
 =?us-ascii?Q?E47iEdq6y6bwtTGuSTxcpVcOgZI6d6NMlyyF4Dex27s0aucpuLfOGjCHGkBM?=
 =?us-ascii?Q?heUc3xe4AY3hhk/2bZnGi5AQt/XqQfbRArDFbMP8s5er8yaMD6wjePMn6NRR?=
 =?us-ascii?Q?TZ2QEUzW3YQIQTX10YaiUrxZGUVJj+EBRx6wgOHWuuQx2LgObT0aq8UVSvQI?=
 =?us-ascii?Q?ExsgXVi34m9lumVB1ixYkIHFyIV3FUOinwoToIo6xQSsgY+ff/Q7Ft150HAr?=
 =?us-ascii?Q?BVKAvyJuSA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d23a11f-5e3f-4afe-361d-08de59bcd32b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 13:47:46.8472
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IG7Gr2KrLZIU8Ycwhd6FGFe7qEHVmqFoJH7CY8AsRv/KkeJL6nJlxYWP8Y6xyRY7tYiko1uk+d2DAD/eUbBnyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR03MB5402
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-258429-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[altera.com,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org]
X-Rspamd-Queue-Id: 2AA2F67AD0
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

Stratix 10 devkit support a separate eMMC daughter card. Add compatible
string for the Stratix 10 SoCDK eMMC daughter board with
"altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
on the standard SoCDK board.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v2:
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in the
  binding documentation for broader compatibility
---
 Documentation/devicetree/bindings/arm/altera.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index db61537b7115..2097f6a524c8 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -81,6 +81,12 @@ properties:
               - altr,socfpga-stratix10-swvp
           - const: altr,socfpga-stratix10
 
+      - description: Stratix 10 SoCDK eMMC variant
+        items:
+          - const: altr,socfpga-stratix10-socdk-emmc
+          - const: altr,socfpga-stratix10-socdk
+          - const: altr,socfpga-stratix10
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
-- 
2.25.1


