Return-Path: <devicetree+bounces-258427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAWYNJ1AcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:22:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7682168A52
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EA8AF420721
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D540322753;
	Thu, 22 Jan 2026 13:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="fCJ/rmMA"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010062.outbound.protection.outlook.com [52.101.46.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7039F3090CC;
	Thu, 22 Jan 2026 13:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.62
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089671; cv=fail; b=KhA4vNE914hJu3gh/zFQf0CFcBUhpqbXuAMrNLCi/sOvFkKFzQIgIdwBhEAAYjR1gV5YfZbglIJEBMJYi6+fi3lDMOk8cpqogOp4hzI+KADgGR5FoCYnnOFcZGrnEVGM7vco1BQYYchpQ+UVVppP7UapcqbB/s53OrRbiTRl4mI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089671; c=relaxed/simple;
	bh=w3IfThMFKI5ixOsOK8Grb0w/DwF9uySSg2TAeQtaG/A=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=PcZ+p4m06yFTiRZYU2qOt2P/5FgeOZrp51grdcrIUQNB9cW+2PY20VCehxG8NzCg0zWnG+K5TnSOvcuwloKTtGn6HZBFqRWlg8KfHZobSCYz3txouFVwAObMLEGW4a1z07IvDYOj7xk0BZvBPYHK9JmqdNWpY0z64HIsYf0zEu4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=fCJ/rmMA; arc=fail smtp.client-ip=52.101.46.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wh4KR+ab+zA+L/Q8j1DEU2T+Ni8RTuh5nx2xfc5Pufu/HVvXXmoazRCYZXq/M9PZiOi9lCRpV0dPFGQBUWxggJA1DzKzs6EkAGnh9ZhcQ3cgHMLJ92tXKEqP1F+cpelEgclc8rjsE8KZ77lC6UokBhcMN+Sd4SxU8PIOdx+3aISfcF0ZamcqhiSbvX7SAgnMZspOp2ll6KoZBGeYy+bbSCUqiKvPHD1WJbjaVsjDA2s/6dE5/2oF+5+rvKtLokaBuCQ9aYVkeCTXuPza+hy0NHywJg++6f9ItV7l1xemucPaWzoWo0RGcO5VbWoSyxvewuP/nFDAcrOCVNb7vCwaag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nbKyincQN3pW+Q26I8BgWeqRRm+MhkDL3PrWxDtT+ew=;
 b=y9RFi5ZHMr3EYSeIzXluG4OZ7yPf2PweHAFhNZYWKvC+ni+xpIdaM83hMkJIEvRbinIV+NLs+SIy3oCj8dHgp7qswuyqHr5QU96XFdliDBwRM3EsOVi/QODV2WZRwZKrpob8pIttc9kzQee/SASWKyJlqX/gWC2zhaaDzFmG8S1KRw8VDJ2tLbH39E+0F2N7ugsRmD2ypebDn3PZNJagr6AEEYL98oJZIuS7YTyQkTR6M/HstY0TYtkUByDy+EPriZ15zKDJhlUtNJ9EvREQJd1S57NuwB/cwXg2R7Z4/5KZP2MD3FdQ76RmjIg3dgmwT6ie73GiKrGtWGgPWNgJiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nbKyincQN3pW+Q26I8BgWeqRRm+MhkDL3PrWxDtT+ew=;
 b=fCJ/rmMAMCx0/zEo68zP0APSlDr66kd6iuHtF1o0JDzJj5RHCMsxHjyVOC/Pweej+4byljdUd69LpJ8UNKTT5E/hQU8Yt7EejqS6UbCJjQIE6dRwg3Byl0RyA5j1O/qZXNkkWinhPWTHnusdsLAqiYZorybBa6fa1yV8Njmf+zTw2w865XJqFGYAwYtbT8uL8OijjXaRU3gWCpsz8+s3AEBoSmTYD1iJPiSWhHeW/nbhcW2+FvVQZtCclJ43KR8v6Gv1h99iUwciAI5D9zxyjw+R7lyjGcsIMLuJwtX8l8SghPYjzIL8NJ3elSaraOtmXix/tthJkPMH8YIvide1LQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by SA0PR03MB5402.namprd03.prod.outlook.com (2603:10b6:806:b7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 13:47:46 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 13:47:46 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add eMMC support for Stratix 10 SoCDK
Date: Thu, 22 Jan 2026 05:47:41 -0800
Message-ID: <cover.1769089199.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
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
X-MS-Office365-Filtering-Correlation-Id: f9c316a5-6547-49bf-b7d4-08de59bcd2bf
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?N5mjg8pxbMS0fanjl0SJa42yd7HreI9+/UdOfTVLKUV9zz88/RW9+QQyrJvN?=
 =?us-ascii?Q?hNzaDH8DARupjBklSCWoYSTBo1qDDI06GCN5JHeXG5MbvbkeZzOCWE9cGoip?=
 =?us-ascii?Q?lmRuxScqRDXE/508PnjND4BpoQOjpnAw/Zu2OWNFIHk8GLFHwQTMQJkkO/VO?=
 =?us-ascii?Q?m1ggmBIYH0wkuoOMePL5W7HzYs8GP/6ac/xzBl/y1LBUeDzOwH0LKwq8TOrW?=
 =?us-ascii?Q?DuZRFN+XgzPEVRe6xiMRLgV1q43bMJhX3yvOmRcPcTgIFgiqFvWls0qZ3/9K?=
 =?us-ascii?Q?bqXQu5IEUaxBklryR7ZFUSChu98i8lgz+jJMrmMGVZZlcbc19FLwmIR70/gs?=
 =?us-ascii?Q?iq75YN8zaQ4FJca8JELd4YdYITyD4+nUGul9Qv1XEXg2n3bF4xmxsFC9aceP?=
 =?us-ascii?Q?5/B6oG87gYfAsvduK2hGNl/PzBBO1nnY8n7yz85PlzxOHnUNiqbzfHQ1hA+y?=
 =?us-ascii?Q?AiGDSLzNPagAkYeV9aXkyx+svLgMVKlmmYnZLWpe/E9d5/irwmlN27oY02UD?=
 =?us-ascii?Q?urxT1mUABDvXbe7qU0/NK/CT1Nk6cTE8qkl9Jo8adVYSXOqJo5GQbzy+xH1Q?=
 =?us-ascii?Q?P3Vgg4xYGMRq7/XWObhzSkJkuBhpdXRIf2PovLmdrwyt+E6uA2WaDHBquN7R?=
 =?us-ascii?Q?AV72ysTxu5pF7kEXAYH5wD/KflePVj4g1IzfUtAilSyE8oYt3t4MizaCWBTx?=
 =?us-ascii?Q?zvqmCeGNCXYazqmOTwZIJYavIg2MMal+uk5hKZkGosXl+DOgLrO5rCmb6unn?=
 =?us-ascii?Q?4INbKt5AQGVAcNHWQJkiQvZvJZalCchdZjt43t8X78h/qAWDUZW73C2oor7B?=
 =?us-ascii?Q?g60AKDcq+JGnI6imWl2zJtKtVtYkaB1D4sUoPWla+Ock1PKWM8ZoYKqsTCEA?=
 =?us-ascii?Q?NCU1QeJv/PdyQFt2pxCdhwN8pBtAiAlbUMUWVdhxZhOVy3mSLy607gx6CHtz?=
 =?us-ascii?Q?QntYeue59SduI3/l7WVp+KexBZHaVCcdMx237lkkl0b0rrfqL9P2YRk/grFI?=
 =?us-ascii?Q?AGgsW3AkBCFKihO6ehlqXAO2sRuWRxfkNnmav6mU5+/Q3GehKwoKLwBo4nFo?=
 =?us-ascii?Q?NAAWX7HbvvtUzRUFm5zu7+InWXvCsOBjDO0gHDTR//iN5bJuhfOrA8Wk+HyM?=
 =?us-ascii?Q?0UHcD3Hq7xbUNlStpUnMgoo3RV6/PRLEYQWnm+KEJq8hH2FRxd9w4u3o8UvW?=
 =?us-ascii?Q?KyEyT5EbK07qe9aT5ZXrQAV2M4t58QRO4rAcNzfuv911nCl8Vy1OYqb9tJj8?=
 =?us-ascii?Q?2m/8qWA3UWVJhW+zSPU+mBcR1Q1THixGJhm1O8vg+7VM+xq77IX+Qg1WssGC?=
 =?us-ascii?Q?8NGH6wP8QYE026XbAJ/aasqVqD3rhlHTE1Pnzn3q+xWIQWNvLmXt37BZ61Sk?=
 =?us-ascii?Q?PbTY8h4GbnskmmyR/3gnS3zb2txjlDJPjM5TGE7AfVgBwrqZZTuQAfAlNF8B?=
 =?us-ascii?Q?i8J8huS3ypLHSKbdVPDHvNHNKxAuX8qUagVN/wxImXJvwkEoUca6HDDgwtyr?=
 =?us-ascii?Q?o6PBdgyCi00lvXT5rJ1oySNOtTl+zbxADtMoPtaOCkZ3vkTkdmQGo1Iy8qwd?=
 =?us-ascii?Q?H4gxXnwQIEle5hPFXys=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?jHNpKQp5mzA+1q9Yrf4n//AwYeH1MtkBrOm+C13FBurSEQSV5pepWW10uIBu?=
 =?us-ascii?Q?Z5bGMYiGLeNipmus7LwFYkoJabs1sJOmzQb3C650JOAXdqBjrCVjm3p80AST?=
 =?us-ascii?Q?rj1NVSDMob/XVpqFESnkZG82jslyk1pLCRBYDPhVpV/o413TV2uIM2PGxn61?=
 =?us-ascii?Q?J+M5/Kdthz8rpTQ+SZAQftJmQ3rMTqsXlt3RhBYSE2/Vm3Dv59qr0AahId6E?=
 =?us-ascii?Q?JjF1XUiwYHJrS1coIYGBVusZhgNFe4w1ORUTVR1C/Q2iuPlF2AT+KkFZdzEH?=
 =?us-ascii?Q?0cdOwdudmYanWLl0+muup6OrtzcQtqYcBVssEVybXUoXEtiNaRxgEE8xfDQ1?=
 =?us-ascii?Q?dqx5ipOI0F5xW2fQMw4lIZK4WQXaOcS4/hDAUh6TR8kGpcLeBwvsEFdhAC45?=
 =?us-ascii?Q?WUbdxUQmdSa5aU3kZ3liCVpaCJq7mivORfOfsAaAuL9aUbBeUaz8gY0a3VgD?=
 =?us-ascii?Q?bZC431hrnd5hEt4O89AQLwMpHGA4qU25hb2Aaa8TALhnauau9Z6FkcXcKNm2?=
 =?us-ascii?Q?zDqRfOqkrtXWwE/3WKjuNkcYtvltQTVrPYNepMDn3OmgCIwyEsJde9NNiVTg?=
 =?us-ascii?Q?9Ly3T2jXU4ddXN7kIjRJ+ILyTsg5iGWzc/Pvc8o4/ya2kjq3U+y6CsCpPjNl?=
 =?us-ascii?Q?iKnIs8pWLdiRFRQgizCvHvLhRVwFoQ1r1NiRms/3XDFwzcLEAf1I/UOksMy4?=
 =?us-ascii?Q?7dwOWA6yj6vxYHNm+GU3cvuPowyeLe0LJxlGSynj1xpmy5mbvOECaByhk6t3?=
 =?us-ascii?Q?+76BpL3RD2JB0HpiacWNWcGvCJDuAdjp87E+EnDgIirVNF5SYfq2OrNkv1wK?=
 =?us-ascii?Q?xiUWzxRRHCuW6/+GmvRIN0cJM+4N4N92yf2I6MT4/+ZIK2GnrCN3R28FkVwk?=
 =?us-ascii?Q?1338VRIYkZz5whiHNUfI4+6RoWrShNg3BFV5WecskbDu196O8bTUGrZhbVlK?=
 =?us-ascii?Q?tabEzTemNK7c+Aj4umAw87oXW6H+tNYTP9JLX2NcvycbjsvHvszQdBC5YY77?=
 =?us-ascii?Q?hxlymvRbp5klqq7m/rqgjtT1QNO+LLYWUlJyUiT9DkxYE9HNVv4VRmrLcbzJ?=
 =?us-ascii?Q?jE9wLHwTSMlvUdMW9BmrN1x4fS0FF23b7khFXHGPVpT8kLiCDFqzz+9FWFsX?=
 =?us-ascii?Q?8wI9OfpPyofEwq6mV7QZbG04lhUeFohzz9qOET0JkERle5AqnQzy5hBA04xE?=
 =?us-ascii?Q?Di0Y50qM3LelFdds4RFgkxQKtC+BeBTfa/V9Fw2eeBomV48jOyh89UVVbaQC?=
 =?us-ascii?Q?lxefZuvzIbZIbw/tq16c016p5NKNMMzSwdg3hAEaQ+VWSkhRx2Jta5XU/hey?=
 =?us-ascii?Q?82ZyyFGNRXAWMWEnO8IPKTBE2ZUsfU80vGSQUauSTuqVXoyjCL7LwA8hxHk/?=
 =?us-ascii?Q?dWUgj7vRUcuFm2vgfHF97i3l0DbVtN+RhDH68ywJR1pHlF0vbj6iK+ShemxY?=
 =?us-ascii?Q?UR29T6j/luaDOTKo7eSG4GAI/QOm4q9W/NTwT07ZTkbpDTm2EIumnpzOMRh1?=
 =?us-ascii?Q?dOr4WjI8lQrxfapXyeUO+r44maD12LcTTFjHHtwoZ43LA77gfLSOT0T50U+Y?=
 =?us-ascii?Q?YAhabPxYQBrmBQ4lrqkelpoY/7psv7CCiTYAv6NYJLy7ST/CYXzxPPbsQ4re?=
 =?us-ascii?Q?XqAS/NvJ3Up20kO8sgrp+0FeTlqLxSSKDlYsfAaU1L73BZfPsiB6FOK1+ZEc?=
 =?us-ascii?Q?SEwr1quspRKyg0dzrCUilSr2MJYwldqsMnB2yzjC3SY2e+xo7eNTEZfY6Wim?=
 =?us-ascii?Q?nkduOzXWIQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9c316a5-6547-49bf-b7d4-08de59bcd2bf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 13:47:46.1361
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vv/Rb61OaYzU4bkHAlqxNMNmECiEd4P6+axVQUplHTrKGqpNyn417gbjn7IoHOgTRja9ZVdwgGYuS5uop9rltA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR03MB5402
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-258427-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,altera.com:dkim,altera.com:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 7682168A52
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

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the binding documentation for broader compatibility

Ng Tze Yee (2):
  dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
    variant
  arm64: dts: socfpga: stratix10: Add emmc support

 .../devicetree/bindings/arm/altera.yaml       |   6 +
 arch/arm64/boot/dts/altera/Makefile           |   1 +
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 131 ++++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   |  21 +++
 4 files changed, 159 insertions(+)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

-- 
2.25.1


