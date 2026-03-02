Return-Path: <devicetree+bounces-270124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIzcDyq4pWmDFQAAu9opvQ
	(envelope-from <devicetree+bounces-270124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:17:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C451DC93C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32A30301BDF9
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1555B2F690F;
	Mon,  2 Mar 2026 16:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="VgxaBtZA"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013011.outbound.protection.outlook.com [52.101.72.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C7E2D063E;
	Mon,  2 Mar 2026 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468263; cv=fail; b=T1YwO3t0eUfhFFep8rY/6B1FiEN1kgQf6VldfCG3XcWM/nZ8TWkCBMwjekYJoQzC2hS1x+7r1iJX30ga5l5klVbeQJ2KV4vi0XurBsmi8sD8N17OpmRTQyIug33HnS3/l9roq9iRLewYW8bn6wWptwBoJU3iSGPllHU15ACAckg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468263; c=relaxed/simple;
	bh=NXYwvZpZ+wo9S9F1F9pajZYS9s/A8nUkdZu7jOxrxok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GzR/fRTymRSNoSpeobvAh9VXL2aJIxlOoIhbFQXMeoc12I697GStfV0QQpkkr7tg1pMx5+pQ2ieP06hcchqJwo0gqKWr8BNKSvm7fTrYMiWU7Pq5am7lLc8mhA1ZSDEpYgVkmI6w9RTCGQsiqHTHNLdR31qFjKOr2wzqlfhbKa0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=VgxaBtZA; arc=fail smtp.client-ip=52.101.72.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J4pOoWtFzEMScbQn449DX8aHI8P42zPKaf3y8jOhvGlJHjjbGjpKiStDIE9INcDPK3G6UHGgIYUKwuAmYdMyoXLwCHPaYkR/mLvWx9SBNX6hBRpajA2UXtCCqZARNbKX63b1p5RvSoSpLe9zK3ZQ7gAhEYQ6SQVpItVzYHw7wjk8cYUPiIkDxA/XhIy/TbhmuuCe5Jj8inydQuDuut0irLijoOZQ7nuqfNHvmou6ChbPSeAfufX40Rq2cNhkBJxOAAcUVVZjfJzvib3ZwYrhb+DyHUBIXyVMqF60G7YHh0XLlD1XiC3gNGlinRZU90HqgYu3nLxwtRdp4XTrL8bj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8MdGrXtiWos6mAdJuGLkf9HRJuxCdgWxsC/yx3w3TlE=;
 b=DTvfQ3gjQEdTMQxLgxyLlVJuFn1B2TjSKFSt2QDlVuQ1vqCq5vif5GHF82ZXdbtRn9VQEisHBeb+G3/HCbiuvjezWXjWRCTzsQAgWGI/ERCkbMlCWPqihWMBz1ILVfYqd9hrAb3kE/2GP7fuhbq5sAkzfXVT04NKKmE/rxxhWg6su3kQajzYVty3/ZYCzc5017FWWiPrRhVb7VhITCvUok5xBVfg+91EFDsMKZqjmJ8wKj9qlV+1ZluSeDjitcZar0irDFgxccluphilxgurmyJEnLvVHrtyLd9D9S8DQOiCdiTeaskGq27ITcMYvY2H21MPAX3UYt6DoluAmtokHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8MdGrXtiWos6mAdJuGLkf9HRJuxCdgWxsC/yx3w3TlE=;
 b=VgxaBtZA0C1XzH5wJ47tkMpkSzyuMu3wi14rcdLJ+ymL2v/dlf3KE+cnwcr+A7TA8Z/caSeb7QjJmbpKfw4/ad2M1N9DJRunbK6nbjzM0/BhCFNOmt9NJdMYe/NDC2RSOUxESe3P+QZDj9rLO8uOuUR93t4AfbEvH4zHSMQUGb7GoMJaXv+4/IMwWSeUJh2hEfD3b42A7KDwcZNhcX0gEC/DYNOYpQlCry6Gp3sTEGWunH/fln45dIg1eDSEbdw0uMngMuRxQHTe+nB5KrF86u+V51gy00FMsMr/ft8bYsb3a0uBpz0o5aNyL1QNasp0u5Gvhcj0ecL5PLqXG6RSRA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AS1PR04MB9700.eurprd04.prod.outlook.com (2603:10a6:20b:473::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 16:17:36 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 16:17:36 +0000
From: Frank Li <Frank.Li@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	Sherry Sun <sherry.sun@nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 0/2] arm64: dts: imx8mp-evk: Add usdhc1 for SDIO WiFi support
Date: Mon,  2 Mar 2026 11:17:18 -0500
Message-ID: <177246823148.2061109.13064548977487642609.b4-ty@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260205073454.3709673-1-sherry.sun@nxp.com>
References: <20260205073454.3709673-1-sherry.sun@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SA9PR10CA0001.namprd10.prod.outlook.com
 (2603:10b6:806:a7::6) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AS1PR04MB9700:EE_
X-MS-Office365-Filtering-Correlation-Id: 14029c64-1760-4feb-c47b-08de78773791
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|19092799006|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	AJY+6J9R5t6aav+El2/Xaej7gSLkcVafVj/xTMcj3hJRDo72kXSmZkG01GmDeSXO5iQHOiF9JPqCQDxaufoRmXZJkMMHpt0SO24wXQh41YDQogOHdkVuIeweaeCqRTWrxLyxK/YKunFL1ViNsWOgQ5ohRoydmOI9h7rqzBJxeNNvqmh8msui0TRylFf1tlmmJ414xfcSJZxspIowq/6M/0ZNQvPmaZupG1vapbmAekkl4fw44uHac/jHIFB2l09ywSDVLK2VQO9/7L9ZrLcvLUX7cfDRfJkywSe6R055ZOHOEoD84v/v9sd3JpVLZ1VZ2pHe4iMdn9BK4lIN7qCI9x7xecTlY6qS+WyiBWLaBHAJbUl/BNZHEaq3zVjN6+7URz0vSVeZWi3jWnYirDhWoto+kMQSTagYHz/JIPj8sREBnYQ2q5WLB6zADlzknsD9vo+Z6UwRPdT2Ho3mhHezzFTyP+T4+/iGE9q4/wy2FQQwUxGp9C/cLDIv2iHuQUz4ehZ7/S+VzrASOTsOoFvA6jxwtDNHKWbQTm2xOMoeLPCndHa/GEhnBn+IeBG+Vwjapq/kxRMN9wlBduNo4WpA1qy2mYZFmWjvKRR4L6FX8abnTg6AhIlcer6YEUoHp6UTsDPZFQGTemocBYIq/c9U+xGbolGzce5jUGV60RCjlBQbIe2NalU6ZmoBhVYFG/IX6EYzsiiEkbkecXfCLfGTip02ZrZ6BMOcpa4dsvEJNuD3CZvTm4/pYwHzEn63/MY1H1eULsS81+Mf1Be+h+Xz5a0nLgWTZuX7/WMMzqAe+Bg=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(19092799006)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YjB3c2tkNmdNYjArMnBoTFpSbk14Z2ZGRGJpeHE1OEtHUHdNMVpqK3lQMENH?=
 =?utf-8?B?eW8xQnVGaitqd3dPZWt2Kzh1bmRBZ0xoeURwODBaVWkxUkxIU1ZtOW1WeEFa?=
 =?utf-8?B?SkZjKzZZNG9rTTk4NmVXVEg4QkJzZytwM3Z0Z0FmWkMvVnZsZG1kQ2dPaVJj?=
 =?utf-8?B?SWJZSVBFQyt5cHcvMTZMZGgrcmt1WmpTUjNjNGZDT3AyYm5qdkVKNlFCUzhI?=
 =?utf-8?B?S2ZTbzlvcGdYUVROekJTUUtYY1dva2taZTc2UjVrTWNIT0RxdTk2SzNWVUd6?=
 =?utf-8?B?NUVOSlFCRDVkenVPM1ppdWhzZWNmMGNhQ2FnQW4vOXhERkYrczR2Y243NUpm?=
 =?utf-8?B?WDJDbEh3MW1uQko0NlFSbGhXNUtzNko2RmlZRUl0b01NMmJGWnpQRHg5RXEx?=
 =?utf-8?B?aFhHalVXL3d5ajlDTDRMOVduYzQrTGtxRlhpSU5TSm1RUmhjenV3Z1ZxV1JR?=
 =?utf-8?B?YkQ5SVQzRm11QVZOWDljVUt0NU5ZYWRBaTZTbmROUVhGWjhpYlJyWG9CdUpV?=
 =?utf-8?B?NUYvOVZwam9HVmlBYjR2QUVhODBWbHZQME85VkNVYVoxendadGkzbXl4YXhS?=
 =?utf-8?B?bU1odFFZQlRrclhGdUcybEdFOXRZWWtXUVRJaXpyQTViekxEbllmUFo4bWh2?=
 =?utf-8?B?eHhPamwreXFjenJWREJkWFVQTVc5WVFTMjIwdGd3RktsdGovcG5lc3dTMnQ3?=
 =?utf-8?B?dlRhQ2IxYWs2YU03cGQxYUxLZEZVRGMzYmFwN2p1Q1BvVUY2QjZCN0NvZE50?=
 =?utf-8?B?Q0x2a0JISlZ3RTdYYklwMmpuUmdDdjdOSjE4NUtZYjgraGlNTnQvVGZaRXRq?=
 =?utf-8?B?cWVxWHhPWEMzWTZSWjVZNTM1SmZ4aUxBc3d0bTFhYy9NbkFuQnRMVzFwR3BK?=
 =?utf-8?B?TExjQmRzbkFjaUdxODRabGg1TS9TUVhRUWd3WWdBSWtvdlBSdmxFblNoejdY?=
 =?utf-8?B?ZmMwS2J5NENUZXc0eWlTRDc4bEw3b1FQNEFUVXM1T3A1SGJhSGZNQzIwUlZv?=
 =?utf-8?B?R0x2OUQ3KzFTZkdzMXNCWVdwYmkwQld2b2dDZmJCYTQ0VWowRlhCUFJWTita?=
 =?utf-8?B?VmgzeC82c0JDV1BNNUlTRlFZcUpzVGhldU5RMFlzMkppelE3azk5QWdSdTU4?=
 =?utf-8?B?ci8wSlNZVnk5Smt6QnNZWTRVSjFINFB6cFA2YmRuNkR2Zml1VTZOZjk0WG42?=
 =?utf-8?B?UlpLUjRBZzVQbW1PcHcwRFNtbDRwQWRLMmp6MkVldUxITzFwY3J1NFhWeC96?=
 =?utf-8?B?N1hRSHVTVnVGYjloeUlQb081Sjc5UFlSQXlFaGx3TUdwcFNDdXpGTmhQVVM1?=
 =?utf-8?B?bzZ3L0N4UW8wVFd0T0FhQ1FVdEhyeUU4K3FaN2xrRlRMS3NnVCtGZ2ZOcHAz?=
 =?utf-8?B?YVV1a3N2SWsybVUwWG9JbDlLSTVScmEwdloxd3IrdjhrK3FndGE1RlFoUUlC?=
 =?utf-8?B?L2FoWFdIaEVlUEJkODRJVEpIdCtUaXp6blJIOGtIY242QkEzVkFaaG53eDVU?=
 =?utf-8?B?Y21ONWxUS3VYbjNQaWxBcWxtNmJhSjNJSEdIK2tqL1gzR21ZalVVeVZsa09R?=
 =?utf-8?B?R2h4YWd2VDB2THhzN0wxcS82V0xSaFBhTkNEWm1QbHNEZkhMemFWMVJPSXhr?=
 =?utf-8?B?YkNuWXAzUm1idkxkU2d4Y24xNVpZajhuV0lJUytJcktDSk1EZkRScXFsM3gz?=
 =?utf-8?B?U0RVWHorNHM1SGsxZFRQU0F3Q1JiYnBUclE5eVdFZmNMVHltbDRXS2xlc2lY?=
 =?utf-8?B?UEJ6VnNucGF6VVFlZ0NwdDg0OHVVVzZzT0pIK1p3U2Fzayt1SWU5Z1hEWHFY?=
 =?utf-8?B?NHVpbVpEbmo5QzhrMEFNMFRLZHNTcERoT1RGSkZDbzZTTVVkaEEzamxTZjRi?=
 =?utf-8?B?ZjU4TVZnZUpJRlBaWlJleHZUSnpKR0QyblpOVWJDeks1bzdWcnY2MTVQRkNh?=
 =?utf-8?B?OTNwSE9iN2k5d0ErT1M3SUhhQXVPam9wOW4zekZlelVwdTM2S1FjVHErRWJs?=
 =?utf-8?B?ckFOWnZMc1d0Wks3aGJRdUNJU1pZbVhXSlQ1dzU1WGV5YlBOcklCcXBrOU9o?=
 =?utf-8?B?R3VwcGtoT2JOcm54VUJ0NzRzNERtVXJ3b0M5cWlyb0EwMkNCR0ZwSzdiYmhP?=
 =?utf-8?B?RSszODdzc015Y2UzVmhueGpYZVV2czl4c2tDbXV0NVQ2VExLd2ZuUERlb2lM?=
 =?utf-8?B?TmNSdE1VdVlvNE5ocnpXa2hSNGowNmJhd1BlOXRVdExEUkRyVy84c3ZPWWda?=
 =?utf-8?B?S3NZMEF5UytZVW93cXpxSTBqM2JRbEJCam52L1lKSFQ5TXFMRGxZdXl2SFd6?=
 =?utf-8?B?QUc3eVFCUWVPOHpPS3VhSWxpWE94OWlGQ29zRXpLYWdPQkxZbSs3QT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14029c64-1760-4feb-c47b-08de78773791
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 16:17:36.4945
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W2CXxR3PxM7Va9phGub7FtZRYI+hY0trYPATG5kQd9nmsiRqBPzSozuYqrJu/IiDAO+qR/xo/n/3uMVZ8ff/PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9700
X-Rspamd-Queue-Id: D8C451DC93C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270124-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nxp.com:dkim,nxp.com:email,nxp.com:mid]
X-Rspamd-Action: no action


On Thu, 05 Feb 2026 15:34:52 +0800, Sherry Sun wrote:
> This patch set adds usdhc1 support to enable M.2 SDIO WiFi on the
> i.MX8MP EVK. The M.2 connector on this board can operate in both PCIe
> and SDIO modes, and SDIO-based WLAN modules require proper power control
> through the same M.2 WLAN enable line (W_DISABLE1 on pin 56).
> 
> Patch 1 corrects the IOMUX configuration by enabling the pull-select bit
> for the M.2 regulator GPIO, ensuring that the weak pull-up is actually
> applied.
> Patch 2 enables usdhc1 and associated pinctrl settings needed for SDIO
> WiFi operation on the M.2 connector.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: imx8mp-evk: Enable pull select bit for PCIe regulator GPIO (M.2 W_DISABLE1)
      (no commit info)
[2/2] arm64: dts: imx8mp-evk: Add usdhc1 for SDIO WiFi support
      (no commit info)

Best regards,
--
Frank Li <Frank.Li@nxp.com>

