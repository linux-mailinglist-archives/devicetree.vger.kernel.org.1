Return-Path: <devicetree+bounces-275429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHbpMkk6tGk4jQAAu9opvQ
	(envelope-from <devicetree+bounces-275429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F0E286F50
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4337F3002D11
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC9F39D6FA;
	Fri, 13 Mar 2026 16:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="LpSC+XI7"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013016.outbound.protection.outlook.com [52.101.83.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C37937F019;
	Fri, 13 Mar 2026 16:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.16
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419032; cv=fail; b=IV+OcpnwjFJRNLzsXr+d4cKI/KLOyBmDwTeCkhl/9kyHaLpjMRs55MXj3muomq2LI8e3Gfi4sSwlnsME6dNLkgMr7VX31JFwgfWkKWP6gch1/+9YBk/FLj31IYAqo+1eXgjFB1vQmedsmVduQIQO4E/RWnRj0ZtecRJHGVWT41M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419032; c=relaxed/simple;
	bh=Q90nZzuqBubA28wbD12o3QTLqOQK2oTjNE3RBdFrMig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Lz/MfO9RPj0+hSODSECJfJ/XxP/Dz/IOYec1XIM0Et+6a51H2EgpDj6IDwcAZurhtVfAbMe3JV3lbXadQHKQaQDz19kwfCyC3bgOLsGrZh+KCN0bY9iv25ipqgz9/jpWoIYz4Ba2538vhV8MmZFOviJesE+gyeqZ7ohghdkQedE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=LpSC+XI7; arc=fail smtp.client-ip=52.101.83.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tW7p7Tw1csqEmBtk13HM9JCzUKBfJFT5w0vB8x2Rm5PCy8nTCqBLSFkzQ+bVgqf9GdkOovjq1R2e8dd0B10dGKhRfXp7WAAm7Em4t8DM/noQ1UpgdGfE6xrMVgZLKNxVRM5GDDsbVY5NISD32FBF4j8mu0sY9Pj+9ICl1TDVX704BzdetmFcYL12zEWleeJFmKRxlKTBqQ8nuX9WfovqY8nCYZ5lWU2kCtrZFQhomW3b3bgk/K66JHFq6G8orrBjPtM5XyhZ88amNbYw5VrTPCKjrAl3b6v6S8k8ddvvdcOaz14wFTFukUGcbCR8Tp9ixEcLVXIdID09HYb06k6EAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lfu1P72zyVwGaM+f25X+nX8LNJ/2cVjYo4FiPGIzNc8=;
 b=v5Q/60aKMTt513Q5gHkzYjaNKTy4RIYv3RJr6I3xTkOwyOOltklCNDcR83d21xTi5zl5/b81+ruicjNAB7k0SPZ7DC5VkwTMobP3gZvVd7/CDn1LOGnRwA+JiZS/YCAzgZjamEDoAltG/FVl3i5dfGkrFai2LmJcPLHxMVxDViW2mLpPdJmQmJ1TKLLTvUHiLokgfI5Zhqrv6IAv2ud0Zw2HSbBNMK9KFrFgUSlQFsTxt6PhcJdSmFBuRIV9Ut99Wsexgee88sxCg73BH8J2s0/5f3uURCtVbFhQFUcZaw/z/XopBnynqZjPTw2YkyFIX6yjSxn5iBplct514bixOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lfu1P72zyVwGaM+f25X+nX8LNJ/2cVjYo4FiPGIzNc8=;
 b=LpSC+XI7jp5JFgQjt/lXIzY1qBbH/DBa7C0m7449Fu89B+wNH0U+cS9ngBcs3SZIOJVSWL/+DUUQe9EfdP+0Cmuxm5Vxg1SCy6VGPYkYNcGLwBbYMJ4IBECutmaM3z5AsiUSfJJiJVdHxcjVH7e0aQur3K2debCTqUnJ5TPX1e1lVkkDDdv+OOvl7IqcbJzIjagq0bofXKAd/0u5ExlpiRl90mXmzoxnNlQZnk/UnmX7NKEZSddwL+FQ7sQrD7Ab7p9eZE0THNaClKM5cmvdQaoN7u2cXEz2PmpssToxmDggkcEcdHwM/y/6ldCytQBwHkBD2w6OlNYl2bp5SQBwHA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DB9PR04MB10036.eurprd04.prod.outlook.com (2603:10a6:10:4c8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Fri, 13 Mar
 2026 16:23:45 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 16:23:44 +0000
From: Frank Li <Frank.Li@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	Xu Yang <xu.yang_2@nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH v3 1/2] arm64: dts: imx94: add USB nodes
Date: Fri, 13 Mar 2026 12:23:28 -0400
Message-ID: <177341888317.113602.5751555114928894300.b4-ty@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260309100807.2844925-1-xu.yang_2@nxp.com>
References: <20260309100807.2844925-1-xu.yang_2@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SN7PR04CA0231.namprd04.prod.outlook.com
 (2603:10b6:806:127::26) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DB9PR04MB10036:EE_
X-MS-Office365-Filtering-Correlation-Id: d481b349-ed6c-4c7e-bdec-08de811ce597
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|7416014|52116014|38350700014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	1yqOJs9aLT4GGBIJkg787EirS18NCxwGJwRJFZV+nWRcF019yAzGIvp4SkH7H2e8ktdhDmdAZrpii6IVDqttD3VXdWMh+FossyzLN3AL8uUouJeL/GP8oll3+qd7eLYcV7ch9rK+iplNy/YvqxPumFJgZQDTGKSaNTvV4PWsmYweja+Bfiu5EpAPHpe7HMtwbNHHNDPB+1tTjTUL3G3Oy2KiO2Y00OHu27+AXk404z+ZeiiMfjExbma+7oBHEombJMEavmhU+cZWw30/9VWHRlPSj68C6Rj2z/A28O4jGcQ1BEn+CIhFry7LBi1gJXuDNm7K/joaLQ7eLFYg/mo9x/I4IIDE5n8cPPUMbOkeK10gEqDDU5FrvtD2z+HTPRE62YQj/zC6mGv1DOW3JFwoITdgWBoqgkrRXEHHyW0vmpdzgkBlnN+u4D6gJ+QAbsBu7EWzaPZBJukl7exgeKwz2Vptww6rlhjWOPhYDhMg9kKedcbsFfeT5gWwIQhYFdTFKFvQql9XjWCjBnXJmNhIwU3rrmr20hQqB26p4+CoNdW7/Lg2kFiknXJ+7rIUlQUmuoNQpEv7MIKSqNgDiGfSEz7KYlRoO03uu8KtaenLflhJppMrBorKen+Y5FbPMCz0BDHHnzcshjt7ynClJ9SNIhdP0wIDBnICR/PGT7IsulFwqBHRtimxzThMX6PuU1b2qsGtbYDNmOLIHGdrB/O/wLt6irVXLCq6h41KyBsrZnMuuUj1/Rd1Ujb2LddatUvhItr/4DwUOk/zyP9yjB6FLGip+UMNEyC9dK0S3sR7OP0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OVE0d0NQL080M0NucDhDZ3hSWjRrVGp0U0ZnU2JKWjc5eW1UcDI3SE5qWFhi?=
 =?utf-8?B?WERoaldibC8rL3Z2UzBMQ0lmakpVWjVrYkY4SDNrRE1xa0N6V2w0K3FHZEpR?=
 =?utf-8?B?b3lnRlNGNkRyUmE3K0w0M3NtQVRoajMzeWRtNjNMeTFxaVIxWFBuSkFJWEtz?=
 =?utf-8?B?V1NtZkVaamJZTVo1M2pQOUxqbjFLR1VtVy9la0RWc2FsNk5IdEtpMm1rcGp0?=
 =?utf-8?B?dFFYdVd2UTVadWN1bktZZndOb1ZZNXQrd0RLaXZDc3JhSnNHbmRhRzJxeFhZ?=
 =?utf-8?B?Nyt5bVkrR1U0RTZhZktnV1hvTTRoTDQwdXhhcHhXcFowVVJlaXl5MHR0RWRI?=
 =?utf-8?B?cE1jZHd3Wm9tVXJBb3VVTnN3M3MyTGVsdURDeG9mbEJqSWdNQUlIRHRjMW9m?=
 =?utf-8?B?SVJmVjJMZDlEQ1AyMUJ4eDBEZ21iZWsrWFBIODFpVTdXQUpRM09mVWJ5NjFO?=
 =?utf-8?B?NVJUSkZyajdISk13UGVTMmsxcUwwamg2K0tmcFdId21QVGdyKzB1OFJjUUFk?=
 =?utf-8?B?NTFPdUhGUFQ0YnBaRHl4SmNvZkxaQWZXcmhURVRTVkRwMFV0QXZSeUNYeFFL?=
 =?utf-8?B?UjVITHZiRkp2T1pGRDBrOTlzT2lLd2N5Szd4SUJBSEtuZ3JPdUtNWjVmTmdr?=
 =?utf-8?B?enBpcjJYUmtXUGw5dXM3ODVvNzNpNm51Y3oxVkkralRGY1VSTnpuZURpNXlN?=
 =?utf-8?B?YzhrblNpZis5a3oxclVBSFBpancyQlhVMFJxYU9TZHdQdXR0QlhqcWowRWRQ?=
 =?utf-8?B?cXFSSG1RWXRSRmJvOHErVWw1TEt4L0gzbUVQRDhFMnlMTE53VmtYaTJQVnFY?=
 =?utf-8?B?ZkRnT0VxSUlGZjdOZFQ0TWFZOXEvNy9lNTAvTklUUzZDMk9WWEhSUlVJREJv?=
 =?utf-8?B?YlRVdDFHdnpTSXJSYmdVYkxsZzE4NWhIMTRkemJ2bXp0dEZldWJBemw3RlN3?=
 =?utf-8?B?d0k0VEZ2ODBrVkYzcTR5N3lQa2M1NFUxNTl6YWFqdmdSR2dGbjU4Z0dUM08x?=
 =?utf-8?B?YzY0U25mYnFYUEJ3OUZJT3lTb1ExNWI5YnZsTGJNVlY2RG1UalYyVGlHNlUz?=
 =?utf-8?B?QzdNTGgyblhyL2VhZk50Ylo4UkF6SzBPQ3g2SHN0Z3hGQjZEbWZuSmpxRHcx?=
 =?utf-8?B?Vitma1dMdWdyR3hRbE55Z1N1Rm52anZEanJBUXRKNk43Vm1wRnp6K3VMeHRj?=
 =?utf-8?B?ZWYxbnJLcmRqQWNoZzlkcGlCenBIZzNwNXNrWHhEV0FER1cvQWlnT0ZHbWVV?=
 =?utf-8?B?TXkyZUJ4eE5RZVdhcWwvZEk0UmZuRVhKcU5Kem85UG5NSGVtTzZoSllURkwv?=
 =?utf-8?B?eGE4dkhsenpIWjN3RS91NUNGV3N3MFpVNXEwSlU4Z0s4c1M1ckcwRnVVUEpU?=
 =?utf-8?B?YzNGcTlQZnRmcHE5eUNkdkFBS1NkL24wL0ozR0RCWjkwSmVFaTZaNkRHdU80?=
 =?utf-8?B?VXpDaFhPMk5TdW5vS2lNTU1iZ2EzWGlUcTBEWGFxNFBIeTY3eDZzZ3QwNjZz?=
 =?utf-8?B?YUhnYmdtaFl3MlFhSmdST3UvNmtySkd6Mk1JbWNySk5mUUJtcldENzNEVWls?=
 =?utf-8?B?UEVBcURyajRSWXZtNGtQSzN1bXdZL01BOW5JZmlyUHdEendwMHF1Mk44bitU?=
 =?utf-8?B?Ulh4K2RsQm1WUXk3cVpqQnNBUHBieHRoQlBsQTVGNDdweklLWElRTGh5V2tK?=
 =?utf-8?B?RjBpa2Mwc3NwN0Qvb05IOGVLSitHbTBMUm9qNHpEcUlGS2RsdGJBVDdsM3hR?=
 =?utf-8?B?TGI1Z1gvaGNuOElEVXJVUEhHb2ExVjdQOHBWZEREUmpLUi9GcGQ0SzY3azNw?=
 =?utf-8?B?Q0YzaXg5VmprbVg0M1VqK280R1RrQ1FNbFVicDFqbFYraVI0cXdjeFoyRmRu?=
 =?utf-8?B?UkRyYTFxN1VsV3J4ak4xSmQwTUZueHMyenRYeDdRRmFsdHluWmxlVVEzMUhi?=
 =?utf-8?B?TUNMdHlrZUVaWndidkFsdUtQZW5Ud1FUVVhYdXVTc2FadFhxTXVkV1lPQVYv?=
 =?utf-8?B?ZXROMkQwZXpZT3VRRFIyLzVmM1VraEhOT2F5TkUzaWp3eUtCeW5NTzdzMHhZ?=
 =?utf-8?B?S1J5dU5QTHBLdjVvN3FHYzRXSm84RUVSQWNVMURROHYvOWkwcXFpN0xqZjRu?=
 =?utf-8?B?OEtaeVZvTWtiMVU0MDJGK2FXUDBYb3M2OGUxQXl3Q0R3ZG4wd2hveXQxSStR?=
 =?utf-8?B?SXJwTTE0c3hjMFVQZHlwblMrZGtnT1lDSENJU0lWbHhDbUVXTjBYMTJvTEhX?=
 =?utf-8?B?am1TdVJJK3B0cGY2RjNQUWF2N2M4QVpkKzJ2U0FyNUFCQkFFeURYUi9RMjFO?=
 =?utf-8?Q?OLZ+G8c1v+UdKqKcnt?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d481b349-ed6c-4c7e-bdec-08de811ce597
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 16:23:44.6666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OIraIEYSOeGm4s144S1ee/VycPrjdsVtcSiXY7l17nsbtey4mW+Trh+QjkpkQ/RAv5Owh1uxT0EpPBjRbPJU/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB10036
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275429-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,nxp.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6F0E286F50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 09 Mar 2026 18:08:06 +0800, Xu Yang wrote:
> add USB2.0, USB3.0 controller and USB phy nodes.
>
>

Applied, thanks!

[1/2] arm64: dts: imx94: add USB nodes
      commit: fa65387eb60afc58f2566e71bf4aa60785157e95
[2/2] arm64: dts: imx943-evk: add Type-C and USB related nodes
      commit: 7f8e49b258acea68c5c31e41a44682eb9cb403d2

Move property orientation-switch before fsl,* in &usb3_phy

Best regards,
--
Frank Li <Frank.Li@nxp.com>

