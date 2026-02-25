Return-Path: <devicetree+bounces-268151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJCbBNianmkZWgQAu9opvQ
	(envelope-from <devicetree+bounces-268151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:46:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1D21927D4
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81E64304FA49
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CA12C08D0;
	Wed, 25 Feb 2026 06:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="hq+FaG4o"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013006.outbound.protection.outlook.com [52.101.83.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157812C11CF;
	Wed, 25 Feb 2026 06:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001976; cv=fail; b=sRnfzHASr36zw09WzBgYIFG7+nD9UVZ/ZAJGk5XWggm6vLqdsZCJN4j7LJSiFPjrMD0QMWuHV8bZNd7nS8WYpqVg3jH2W58co+sXyPQsF4AtDKjnAAatacZK84oUfym1YTjOk/71DinSvCzs+NZwCs4LlULRCtCI4iXNjTUB7BI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001976; c=relaxed/simple;
	bh=GnWMSrPWWShJy0nbNC0r7rA6bwkgC1xKjXXfTjQkHWI=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=XETMQF30WnSXipW8D8yW5tQJm+7403/S9Mphac8Ya35QROIepOEJMsEAnC+h3ujti/q6zb023wwYGwEwtOwWHMQMAvtrk3AsrSKIwnoD1uRoXcud2s674ejH2OJfOTOYeEGE+egu/Yv6GdI63vaDgxMGyPliol7njjAkWvtdbW4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=hq+FaG4o; arc=fail smtp.client-ip=52.101.83.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=opI69Wwa0BxjEhZTJP15KQc0cyyB3IeD7R1ghbhCAwOvv4aorNqgKRY+kL4DA/BSw4EdkVrY2I+8+/IZLjqUiMxf5eMsodJyf2kthIbTpOelnw2OzkbRO4LWSDSIJgtnlMe0D5FPCP9jje17jdCWS0EvkyE3vWkNgiIWCABRvuB9x8LT/hPBSey+p5XYo8Kas3BdYwuFbJE/nHZkPahniKso+aZfhsHYQERmg+7MpQh3yN0DquBFHhx7zJ6QxAw5dw8KfG6ZDwxwr2iwhYtKZTIElNxvu3hH1h6q0P+14Y922SfzrDMTc87QFkxhi71pL14rye9+7NHPKTk67PotJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E2/2Xa2Qta4hckHHAaRC7oAj0qEhyhqynWQUwY3GgTo=;
 b=sZrJIw/CoCm0O6xFvTIKqogeWlElkGQSrqzoyO/XyuoitGdlk0kxSvkmB5kepRb8ETpxd7ygSSLixna1fsQOrGd9Fj7Qc70SUinPfFX5hEICyOeVdS4j+nHIjEdIG9pi7otsCU4ZeVN6fvIXtVPqxbf0wkCqoxZKeJAqRiWG7t6YTdVowUN+zUrM4IZFLhuwyO/N0pyrj+TsJxsZ0ekGtW2EiNkKlgBOAhGdnG7K2qm7T9YeXpr4Ftnue6aiq8qp9uvY2uqpENIhmfJ5qJwVS5Det8XNKzGgoRXG1KEcBsjG8C4Hhljp5fmGJ5z+N8sQcP6fkf3KL6HtClppGr3sFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E2/2Xa2Qta4hckHHAaRC7oAj0qEhyhqynWQUwY3GgTo=;
 b=hq+FaG4oHtEXhZzH4NrCUQ3Jj2rrmrSg0GwXOmspaQh+EB6XMWsmpQKvbx4t5xVF1FNi7uPkMy/5XQRAy8XVrn6IbFN3PyGQYuw189qapDgAVkPu4bE6DNUR9s37tM7ZQ79wnAmuUyyMQ2Be1l5pHHXTgRxmThxmEeq6Mvl9uL9AFs4GGVNlKaeuaw3J51Xx3qZkJCz6C17xRwrlqeklH17Z0oJ2KPy061aZdMi7jc04TgV0PoVjdl3ep0on1WNQfvGHrd5WNogS6HG38ktGIKdfeJW5OvR8iEKyLW/UUho/1c7u/HIjwEUjAD7fvtIU2kMeuDNugBVIUeO8oaZkXA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV2PR04MB12272.eurprd04.prod.outlook.com
 (2603:10a6:150:328::18) by PA4PR04MB8063.eurprd04.prod.outlook.com
 (2603:10a6:102:ba::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 06:46:10 +0000
Received: from GV2PR04MB12272.eurprd04.prod.outlook.com
 ([fe80::3c9e:6f28:93b5:b908]) by GV2PR04MB12272.eurprd04.prod.outlook.com
 ([fe80::3c9e:6f28:93b5:b908%7]) with mapi id 15.20.9654.007; Wed, 25 Feb 2026
 06:46:10 +0000
From: Haibo Chen <haibo.chen@nxp.com>
Date: Wed, 25 Feb 2026 14:47:26 +0800
Subject: [PATCH v2 2/2] arm64: dts: imx952-evk: add MT35XU01G spi nor flash
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-dts-imx952-xspi-v2-2-c9ca27de356a@nxp.com>
References: <20260225-dts-imx952-xspi-v2-0-c9ca27de356a@nxp.com>
In-Reply-To: <20260225-dts-imx952-xspi-v2-0-c9ca27de356a@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Haibo Chen <haibo.chen@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772002081; l=2056;
 i=haibo.chen@nxp.com; s=20250421; h=from:subject:message-id;
 bh=GnWMSrPWWShJy0nbNC0r7rA6bwkgC1xKjXXfTjQkHWI=;
 b=xGKV3OUtIchGZBw+QGmkOPeaEwAZPi6I7JVRvnuBNZ3ipi6IANSv9sMEqUDv2nCcpXdp6STVa
 Inb7sZpg8l0D3Mxwz/GlZIdpqUzZauHxMn5Zdup05f/XWueUhpkgTS6
X-Developer-Key: i=haibo.chen@nxp.com; a=ed25519;
 pk=HR9LLTuVOg3BUNeAf4/FNOIkMaZvuwVJdNrGpvKDKaI=
X-ClientProxiedBy: SI2PR01CA0042.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::23) To GV2PR04MB12272.eurprd04.prod.outlook.com
 (2603:10a6:150:328::18)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR04MB12272:EE_|PA4PR04MB8063:EE_
X-MS-Office365-Filtering-Correlation-Id: 82aed4e4-194a-4e7a-4b4c-08de74398f64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|52116014|376014|7416014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?R3ppa2REYXkvZmxUUDcxbDVEcDZ1Ym5kL21GMTFhRFNHaTU1M2hKWSt6SHBx?=
 =?utf-8?B?d1hwblJDVHJWa0JFYjhwaUxUZG5zY0VqcGRGdnRjTURtc1Zaa0d3YnJpQlh2?=
 =?utf-8?B?azh4aHQ0VDh6U1lwalJ0ZFhQbXVNQlRHYkR5WVZMcW9WR1J3dDNROEtrcXlJ?=
 =?utf-8?B?emlnY0gzSUhRV3VpcnhNL1djTU14VjdveW9iQlJlSnROWWRHTWJaS283WVN2?=
 =?utf-8?B?S3FhNk03T0lGdTZUOHZodXp3YXBOejVXaHpKNWhqZGloaEJNVUpCWHF3VWcw?=
 =?utf-8?B?ZmhOTTdDUHZWcDdpcmxFNVpHVHRXSUFteWFmcUFJL2lBUEJNdWw3ZThZNlRO?=
 =?utf-8?B?UEFtWklCZUJVc1NyVEQrY1ZSUEdBMHhvc0I5ZW52bTl5TGREOVF3UFU4MEtv?=
 =?utf-8?B?UVplc3BZdFVXdllxUlJJRTBQd1A5QWx3VGQ0Rnc5RGozbURwWkVIRy8zVjNM?=
 =?utf-8?B?NWNGSHZYbmVDVW1LbXk0dkFnL2xuWndSVVFaV1pxcVlQck96VnhPZUdTZlFs?=
 =?utf-8?B?S0VEZEFwem9HTEdrZm5tV21pWVhMV2ZMOEVPN0JwSlFxbGIwTEhhbS9ieEhr?=
 =?utf-8?B?YzF6UDRJcWtjMjZXejRWZkFkYUY4bmpLdVJTY2NIbksrWGFUd1BuNWoxQmkz?=
 =?utf-8?B?eWR2VmwrM1BNTGNxRDVEcCtQT09oZ1B6cnFjcVhkdjBqS1FxUHFWMzgrVTlX?=
 =?utf-8?B?RzkxZGROR1pzeFlyY09FRlFCZG0xZ3Y2bXJJcVViV3NCZFQveTlMeUZMZ2pP?=
 =?utf-8?B?cTNkRS9pUlJMNjdtTzlIdnhJMWovWldmaGV6VW5OR1dqQkNUOWY1WWM2RXA0?=
 =?utf-8?B?MzM5TDFjNk1ITDZ4K2FRL3Nibmw3Y3cvWG1oMi9objR0QktjcXZWTnRVZXky?=
 =?utf-8?B?YU5LMGtMam1rUkV4aXVBcEMxSk9CWWx3UjhsOHgwTERaOWRub0xLS2lJdnYy?=
 =?utf-8?B?amVrYmp1WCtvSUdsS0FqZC9jQVI4ekozSVlidUkzMHMzZDcwTjJnb1VGSTh2?=
 =?utf-8?B?RUtIMWE2TnRDdjVHOWF2NkJuUzUyQWIzL0tKbXNXWFhUSWI0SGhRN2RIQW5p?=
 =?utf-8?B?Y3BVdzB2aG5xQjBzKzBiY001SktBWXR6RDVrNlNNdlRFMFlYOFpMMHo0WEcr?=
 =?utf-8?B?NytVTUZzWjRIRUhnM0ppcktxZVU2cVRVU0FnWC9Cc0JPdnUzUGF0YWhxWVY0?=
 =?utf-8?B?cWY1NldGVDJmWmFrM2w2NS9aYXZzcWRxb0FwUjlubTcyQkk0bjkvUW9hMGh1?=
 =?utf-8?B?MjZmNnRpWWczQjhJR2puWktsWDdxYWErK3JWaHhjT3Y3d3RZUzdUcEJDdGpD?=
 =?utf-8?B?K0dCcWREMFUwVGMvdHJqYlhwWHIvMHZwZnpiQW0zVFVEREQ4clBITTdMUVlq?=
 =?utf-8?B?WUtwcTI5aEdNV0RVSHBXclF1dHRtaUZ6M2dSTWZFSWNBR00zdG1IL2tYTHEv?=
 =?utf-8?B?K3JvVVFNdlV6TWJBMEp0cUo1WlVJY2U3Y1FKQk9jTmVnM2szZ2lMUEM3Ukdq?=
 =?utf-8?B?OVdpdlJmTTE2WDhxcEZqYmszSEZQanB6cE1aRjJ0Rit5bjRzNjR2WUpNQ2dq?=
 =?utf-8?B?OVQ2cUJtMjJvQm5vMzZuSjJVbFk5N1pCcW9EcXpaNzFOaFg5K1hYMU5ERGZF?=
 =?utf-8?B?UEFucWc0V1BadWh4b2hZZUhpNkhITHNWYm8vSys5MFYvTkUxRVh4MHZ0RWtj?=
 =?utf-8?B?U1NPdnJyd3oxMnpGeVd4NWJpdC9rbXRQb0VtRTNRMjRxdkVxU1FYZHNqL3lp?=
 =?utf-8?B?UVpnS2J6d3lDS3JDY0Q3WU1oeGdCR2UrRFlMV1pINUl3RkUvMWxWUmNjcU9C?=
 =?utf-8?B?NXhVdk1RbzNOSkZvcEFEYW10ZGk3L1cxbVdLWXRZeHE3ZXpTaDBtSW5ZeHpl?=
 =?utf-8?B?aE41c1FDbUE2bFZuRkRZb3JFYjFwRHV2TWE3SXc5amxQdnFZak96aTJ0aTFi?=
 =?utf-8?B?Yyt4MnJLU0ZCYk1kVDRsNzFvNU1KWUNMN0M0S3EyaWlWcDdUc2xpRlV2WVpL?=
 =?utf-8?B?Y3A1NVE5SlNIUTRNZnNuaURvcThEZ3JmdWh2dnhzRWdsK3QvSlFSSnE4dk9C?=
 =?utf-8?B?c3E5ODNhNHl0U3JCOUx0S3NGSUVDeEVEK1c3MHAvRlV0OUdWcWRvWnRGNk9l?=
 =?utf-8?B?MXJNdkZ5QVJ3bzI0SWduNVJwTDJkdXhjdEJIdlRJcS9FWkkxeE5yS25QNndN?=
 =?utf-8?Q?D0EhCpmcM7CS4+H5T4+xJCQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR04MB12272.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(52116014)(376014)(7416014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WTBWQXNhazducUpyeEFqOHZJdHNPNmJWUjdnaUtXWEZxTmQ5cm5OMkZwbWxs?=
 =?utf-8?B?dUQ1ODdQRFJmN3cwbmtWK2NHUUZMcHpiUXA2ZWlhdDM0aG96bVRHUWFiekJC?=
 =?utf-8?B?cGR6YnJpUFd3aklramx0NkRnUnlycElZM0xWSmYzYkpRSHlQdmQ0TldXZzhh?=
 =?utf-8?B?dkRGL1EycExjb05pd2kraHN3U0R1bGwwUDZqK3ZaK001STRsM0RKWmxIRlJH?=
 =?utf-8?B?R1JqZlBsRTc5RFFGRXh2QWpLblY5Q0ZwU0htWEFCc2RTY2l1WjMzb0JqaVJW?=
 =?utf-8?B?V29MOW40TmJpeG1pQVRoaW1hVTJNWm9LNk9qZGlxWmZ2c3NUeUNPT1kvVmpJ?=
 =?utf-8?B?R1VMS0xKUVhiZ0tyYTVITlNDVitKUTMzLzk0MjhsQXpBUFQ3MSttWHVkbmN5?=
 =?utf-8?B?NENhcDZteUpjYjU2bG8yY1YvUDFPZzB0UWhKNVcrK1QrM3lwalgxQ2tzczY4?=
 =?utf-8?B?cHFtc1BQVWl0TjJNZm81U0l4S3dmVDdReXdLSWxOV3Zia0xsc0R0NTJScURI?=
 =?utf-8?B?U0hvSHVRT2txa1BlZ3F1R3NadGQyaFgzc0RKUS9GNE45YVZOQUlpeE1PYVJ3?=
 =?utf-8?B?Zm1Ha25oRDdHYWtvbGNlRzcwY2hJbG5VRTFuV3lEL3NiTWN2QnRJREFtN3VI?=
 =?utf-8?B?d2FxTUE1T21MTEhwcUR5cGtwbWFYOTVPUWI2WnJDVGZpVXdOVExleG1IZUdw?=
 =?utf-8?B?dUdtQiszc2lUWTRHMmFUdWFFeVhkRHNud2thVXZVbTFMaElyNDg5MnNkQWl6?=
 =?utf-8?B?QTQ4Z0c5Y1orUDg4d3ROYlYzejVoZDhtNEJkYUJUQzN6SWlxRTNWVGEwRWFk?=
 =?utf-8?B?TnhMMTAvQng4YkpocjFyNTBWdk5qYlFQTWF2R05aZld2RTA3MmFEbklzWnNU?=
 =?utf-8?B?UlRKNEZxdjYxTkovYXloQVJkYTB5WHhzL3FtSmxFZjZHRTBBdHdoNzBYWnlM?=
 =?utf-8?B?SHprUGZ4UUNLQW9qa3hxZUVtdnY1Y0Erc0cwNlhMQ1VWUHV4MFAwWHJGbFIz?=
 =?utf-8?B?WmEvUUpjS2g1aE9LTW94TkRIUzNhYm5HUm1YYlVlcHhieGVhdVdjMFEybVh3?=
 =?utf-8?B?VWRGdjBmSCtSYTdBL3krNEZCVXBVUHVnWXJJbFF2ZlJDd3VSTGZWR2ZRL3NB?=
 =?utf-8?B?SHpQaGZZUG5wMVlqVTVFWWNwMmxvSlFCcGFSYWg3NFAvakZwcXQya3JXVUsv?=
 =?utf-8?B?bjd1OWNnTXkycTBjdkdCMG40aXRQbElJbFA0Q3d1YWE3cGJRVzFKdWlZOHBK?=
 =?utf-8?B?MGd6a1hWQXZocU5yaDN2VUMzcXltQkhMblhHaElMZVhjdG9kMHVNZHVaazNx?=
 =?utf-8?B?VE1ocG1lSnlIeDZGdmM5S2QwVGZ1K3ByTTlSUWdWVk9tQUw3VER2ekYwSFd3?=
 =?utf-8?B?ZVFPWjNqa1JEV3d4aTZlWEJNUnFFeUk0NmNTd2QvanIySHV5ZFRPQlA4ckNW?=
 =?utf-8?B?SHlPNDZlbHhUQjRJalZhZnp2bHhwSjJ5ZGh1dHNlV1ZHUkpKQWt4WVYrL0Z6?=
 =?utf-8?B?NWNSd3IzRU1xRnNnVElnTXJSZlhKK2hLcVplUUpDMlBxRGNWb2phZWpWdXBV?=
 =?utf-8?B?QUZvMTEycHV4WTY2WDJXT1ZjMVlWUGtwZGRESGYvUE1vWWxmZlZOVktYd1ha?=
 =?utf-8?B?czNyTnRlbjhqWnlTZHlmb2pTUlRWSHhTQWMrbm02ai9BVlA4YjJ0eG9GY1VN?=
 =?utf-8?B?V3p3Nkg0OGRhMExab25DbDBoSGdpSDY0NVhHTkF5N3lxN1pxQWVZcG45djgx?=
 =?utf-8?B?cDhXcnl1NTBLSXBqb1dLV2V1Rk9PNmUxNDV1eG5uaWJBOWI1dGRDRk15eEM3?=
 =?utf-8?B?VUgyT1F2YlQvdjlqdUlaVnA1UXkraXM5YWNGMFJSRytIK2ZCd2k5NTEyWWp3?=
 =?utf-8?B?WlArdFNSMkZndlJtODlmWlkvQTdZaktGeFJYcWI5ckw1Z3RMMHdmYnQ0MXly?=
 =?utf-8?B?K2xSWUZqakw3RWFkejN6N2hRZXJrSXZNRG5RM0I0M2x4M2dMYW9uZlIydHkw?=
 =?utf-8?B?dVllem4ySWZYZ0dQTXNDSGhFaEJvVUUyVGVoeGJuSEo2WjU4OExweWxtdHp0?=
 =?utf-8?B?QXBJN1MvTW1PVVYrakZlUXI1T3lsWEVHSyswTmV5OWtIWE1TR2dMYW56NG5m?=
 =?utf-8?B?NnFkeXhLV3dNeXBvTzJRb3VwL3pJVitSRzdJVnN4YW1aVUo3YlNKQ2c4L004?=
 =?utf-8?B?Qlp0MFRKaTRtMlozY095a2k0b3VhTS9mU2s1Q0IvaGtzYnNmNHU0Wmo0bFdp?=
 =?utf-8?B?VWRxMjZOQ2xGZWo3YWp5ZDhOazQ0MW9nY25GSzk2SnBrWS9mMHg3eDNINEZz?=
 =?utf-8?B?K1JORFRNaEVFbm9Td3ZTU0xMRVVTc3dOM1RjeTFCL0txRmhodGhzQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82aed4e4-194a-4e7a-4b4c-08de74398f64
X-MS-Exchange-CrossTenant-AuthSource: GV2PR04MB12272.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 06:46:10.1575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJdC3LTuFlb2kuS+5p13hY2ajeSsJXE1auiHGBq9eEgKtJMJutmlDPkRktKIsEf9sfuPWw5nkIXqXokI6mZ5HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB8063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268151-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haibo.chen@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:dkim,nxp.com:email,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7E1D21927D4
X-Rspamd-Action: no action

Add spi nor flash MT35XU01G support, it support OCT DTR mode
at 200MHz.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx952-evk.dts | 41 ++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx952-evk.dts b/arch/arm64/boot/dts/freescale/imx952-evk.dts
index b838323468d4109fa1cec8cff53baf432408ba9d..509704c23e89d0c95fecd1601a54c872d55ce9fa 100644
--- a/arch/arm64/boot/dts/freescale/imx952-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx952-evk.dts
@@ -593,4 +593,45 @@ pinctrl_usdhc2_gpio: usdhc2gpiogrp {
 			IMX952_PAD_SD2_CD_B__WAKEUPMIX_TOP_GPIO3_IO_0		0x31e
 		>;
 	};
+
+	pinctrl_xspi1: xspi1grp {
+		fsl,pins = <
+			IMX952_PAD_XSPI1_DATA0__WAKEUPMIX_TOP_XSPI1_A_DATA_0		0x39e
+			IMX952_PAD_XSPI1_DATA1__WAKEUPMIX_TOP_XSPI1_A_DATA_1		0x39e
+			IMX952_PAD_XSPI1_DATA2__WAKEUPMIX_TOP_XSPI1_A_DATA_2		0x39e
+			IMX952_PAD_XSPI1_DATA3__WAKEUPMIX_TOP_XSPI1_A_DATA_3		0x39e
+			IMX952_PAD_XSPI1_DATA4__WAKEUPMIX_TOP_XSPI1_A_DATA_4		0x39e
+			IMX952_PAD_XSPI1_DATA5__WAKEUPMIX_TOP_XSPI1_A_DATA_5		0x39e
+			IMX952_PAD_XSPI1_DATA6__WAKEUPMIX_TOP_XSPI1_A_DATA_6		0x39e
+			IMX952_PAD_XSPI1_DATA7__WAKEUPMIX_TOP_XSPI1_A_DATA_7		0x39e
+			IMX952_PAD_XSPI1_DQS__WAKEUPMIX_TOP_XSPI1_A_DQS			0x39e
+			IMX952_PAD_XSPI1_SCLK__WAKEUPMIX_TOP_XSPI1_A_SCLK		0x39e
+			IMX952_PAD_XSPI1_SS0_B__WAKEUPMIX_TOP_XSPI1_A_SS0_B		0x39e
+		>;
+	};
+
+	pinctrl_xspi1_reset: xspi1-reset-grp {
+		fsl,pins = <
+			IMX952_PAD_XSPI1_SS1_B__WAKEUPMIX_TOP_GPIO5_IO_11	0x39e
+		>;
+	};
+};
+
+&xspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_xspi1>;
+	status = "okay";
+
+	mt35xu01gbba: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_xspi1_reset>;
+		reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <200000000>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+	};
 };

-- 
2.34.1


