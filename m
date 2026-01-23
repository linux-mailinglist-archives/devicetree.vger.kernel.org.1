Return-Path: <devicetree+bounces-258681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJADMKzecmmNqgAAu9opvQ
	(envelope-from <devicetree+bounces-258681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:36:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4966FB11
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 724563014F69
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670CA38553D;
	Fri, 23 Jan 2026 02:23:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023115.outbound.protection.outlook.com [52.101.127.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E2237F0EB;
	Fri, 23 Jan 2026 02:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769135038; cv=fail; b=d9VxdONIeOJt5kYKRlQwifULDa9MDA03XhigRoPEG0Uy8EAps0fzpoSsGLHQIGytpOq0w18hJyM+HJA0Q3Wa9JBSXDAyLE3G7NEfgNdL1l/BkxLL6qlhLpwjEKQDArRoW3SHN06GsYi30fTfXE48h2TeXlDLb3J++Djk8rNj4XE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769135038; c=relaxed/simple;
	bh=agUSbnFeigMvSe4gq/RIzJ9BrAH2d9fzAg+/64IqyLo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OVscvWB3+AWkwkPSEbObMX34NggYAAcVSQYq1emRatbouCLoN1Al1nDgRXoUoIjoq72mubz8UgMdJ9sG27RaB6PKK20Mfa9S1S1UNklYP3h877i2odm7NPru/BjJtNlQ/oDlhFEXKlCfpRrMTPxoSPFoDW1zItjDerjfKdbdZvs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=52.101.127.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o7/ly9LSn0eWsqKx92xe48Qwg9h/jcdzmMQqUvsgOzjn+aYWyTP4dSNgQVoOIGqAWxdC/0HpjnA3eWug06OkNMytouvNkVoyceoij9hJb/KDi5084Ibbzw33qnRsIar3+TJddLmggVlbj9C/gJPMthl/hCP8d4YgsRyrVGDwXzUqy1rL2rzKK+F8vvaeyPN+lYz9lD8bciP6Y1uJ3oavEAWF8qu+Dk47TpMRXUjCvD8/YJcivzS6pscNJ8jUNoFS5/hp1bawxVl3igN+je+183Rda2VeNsdRNQf+5utEp1kgyXwQ7Shv5l4bHE2CywsDLwmTtYShvnxSeel6IJnfYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nyUCQ+oZWnMfjmugvFrjPRiXd9IUcCD612Vl90c7uk=;
 b=OaGF/stPKm0I4anuGTiMMf4zNq0J6gcKpf4SThzhqr23Kn3lq+WPuGURHLBIkeOgx9cKCn9UDQRbSyfvfuznWSrGi83UP/aV1rsA6ajYgunXfkdickF4nwX6YX0/U7yqgkr1Bi239hDnGIcFWA+ZN4JUlAaJ4yq5fuj6KyLuQig7wSm5aL4imtZp2ydQrxy5NmHXqBcFee87nlisR8zvHWoQ8HtuvNjJ+XbxOrLJppzYq11anbRQdO4icOTlP8Om0YeEmYK667n8Rm5rU+YNtIp0oiimYRkucZemkjvhNfQutOHT3rthSgJpCQluzmnEFxF7XIF8GOveSA0vnBJ/ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SI2PR03MB6590.apcprd03.prod.outlook.com (2603:1096:4:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 02:23:26 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec%8]) with mapi id 15.20.9542.008; Fri, 23 Jan 2026
 02:23:26 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	xieqinick@gmail.com,
	Nick Xie <nick@khadas.com>
Subject: [PATCH 4/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: add POWER key support
Date: Fri, 23 Jan 2026 10:22:56 +0800
Message-Id: <20260123022258.136448-5-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260123022258.136448-1-nick@khadas.com>
References: <20260123022258.136448-1-nick@khadas.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0024.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::13) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SI2PR03MB6590:EE_
X-MS-Office365-Filtering-Correlation-Id: 117445b1-09f1-433f-2f30-08de5a2663b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?hR3Xd+iejVoUxGnrSto3DAwUeiiaaW1TWMc1zhuEi92HHZdLWVAlGdwyyF5G?=
 =?us-ascii?Q?ion2jWMDxWEhd4XzI0DipT1HBlso6z9tbD7qfrE/GcD49wK1FjpZsr+2auXU?=
 =?us-ascii?Q?Mbq9HfST2xrp+9ONKZiHGofWgn2WLHmsrBVKQrvYh6fURWGRd/bkfg5dW5B8?=
 =?us-ascii?Q?Mk9fOZiu7wC0PVuiuDdE7WVYcE93wE8WUM0Y5K1tk7Lwg1sFQSYOjCCj2J9k?=
 =?us-ascii?Q?tqrp2A09dDbOqpZvSqmNqGx5sbl6haKR6rS+qXwhfeinpbPaq1+uw+gnDIE5?=
 =?us-ascii?Q?f6wTOa37MFb7rMmCJUz+m0ONYuyj2nfrmyep9RnCLNcMrf7stH8xL1e6jr4q?=
 =?us-ascii?Q?bJC+KDsodaXVDRbH6bl+0ppsUuWx7jZgvh9Kj4wii2cxfQ/o3NmvE60lNgrE?=
 =?us-ascii?Q?1HIscQQrSPpJdW0+pMxT2FWMlePihWA8si8nczM1hhg/dkbvJTn6KQzUg4Ea?=
 =?us-ascii?Q?vCuSjD6x5VMKfwrZs2txChJVJ0W8bK8KIxDGic6BjjJRzOJffURxDoEHxph3?=
 =?us-ascii?Q?zstKvxSehAleIj+tI248kEuvGnplj7Dtm3pfrj3W2fwryH6OQqw6rBowE/H+?=
 =?us-ascii?Q?xIVBDe0OKFZ4qs6PMeSN9jnh/FK5zEV2Deo84C82xwali2nZcv38Jg8u8ZnK?=
 =?us-ascii?Q?hrYzJDvvvN5EFSfjzzf2yQfIT7YC3v+z6uZokBYgmKsO1yNUcsLmBaSqPB6r?=
 =?us-ascii?Q?TNYZipLCgeZL2EfBPGFrLrww5bD9V2DTe+7X/bsl3ZgQl6ZJtnq3vxnIdnZ5?=
 =?us-ascii?Q?FRsxpBYoqX50fmBceWZ1/eVRbs1wxTcEcTSBYYuOwU1mEVDG/uLZyxyvj5RW?=
 =?us-ascii?Q?OHcmZbZx7dIlJFARJ5Trx3Wpg/CU1V1qobdZJfVKjLTQpcpCTskr1l/fJ3PE?=
 =?us-ascii?Q?UqfZYvj6i7oV5cqRaJg5tuN6GVmtJfAQc6x3+uBDdUzhf2mKZF/fEoDC8wzu?=
 =?us-ascii?Q?RWIDx39EU6FiuixLH3JnMX4al86z0rzPL2zqcGKcV2Q4NvvLQ8/lvSSYcJpf?=
 =?us-ascii?Q?yuhFbEij2sWwhYJ4b1tr+GJeD2krS8WfvzqMoMMTirPRqTCMAOqAVKaqKZFw?=
 =?us-ascii?Q?RDh15eaRSQEg311YH6znSHHwwMI6cEHuIZE6rVZ1pCOYKbgWvXg/vxgZcQ+e?=
 =?us-ascii?Q?AXVFGfY7imJAEk1Oe/6IyvTi/ODZliVKdg2V3NFejAS8BphKeyw6SwSOOEn/?=
 =?us-ascii?Q?DQc1slvH8av282BiQwvva4CWmRz71bdWm69FEKH/GUFGl0UA+onp5RO62u9B?=
 =?us-ascii?Q?UT+JFGDMBzBwqgmDRLTa741XGsWyVOsuNb+QbMFGKqhPfE11dVqyDgxk8krB?=
 =?us-ascii?Q?ULX0DVT8XxFavviqxLHtwFG3P0U67JljN1eaZOgOYgiytFZGmQHJT4Pvmspb?=
 =?us-ascii?Q?/KaR7u4alR76VgzCuj0/8PH1Tj1QXZSsvArh0MrywF0Y5ZJwrumdNuTeHPsS?=
 =?us-ascii?Q?bKNkc8Gb7UM0PUHaeB9Kj5HFoznV3VYrp3xgXHpTTslxP5uVNrtKakoaIQoQ?=
 =?us-ascii?Q?GfRSrXizqj14J9f8K8nqNwxW2fUZ3jejePcAZvgdzWxf8WxyplbhzyVGz8Yp?=
 =?us-ascii?Q?97FpCRUMUe/vluO8/uCqFCP1Re/VKFS0u+VuOXiD5Up2UQAzLGpAXKxl3FBz?=
 =?us-ascii?Q?HldOzXqjOg/hA3kbyd5s5Fw=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?AXQuUNYL5PLjBXzc3gBvQG9+bZhT8canPlPdp734bbno5P+qydcioFzGK9H0?=
 =?us-ascii?Q?5590IErLVqi3ytbEbeyIP/5zgt7R4xdLNKSbxCGrga+vHvnGPc1UJyd7GKKs?=
 =?us-ascii?Q?AjBbcwxA3v82kdzbPlbej9cCffflcFtGDc8XGsrSjX3DdLNELyr5rSdlTMUt?=
 =?us-ascii?Q?ffm38aIW6YXixoM20rqca0MwQSfAFO+RiIhUK1PANVfDBtpq1id5BodSt0EQ?=
 =?us-ascii?Q?2QM9ixLyiTF4mEanapILznA3Z2iYdbD9P21B8yOGWyBO35ivqFqLWL5rSZ4h?=
 =?us-ascii?Q?mH9m1zC2Dlph2WB+FsqsdFsQ0NMkeN0qksgwikoLdwT5T52n/iaRcJ4Q0gPE?=
 =?us-ascii?Q?5CF4e26owIWmoYR3QrIpjngn43xvka9J0WTq3xPVmCI/zTz+bB1c8aWlf3oP?=
 =?us-ascii?Q?tmjKRSjGvsh3PAzOfdu7r8+Y6iCTWKGUyIUyc9c/COD7gnMvXMscYWL+aukN?=
 =?us-ascii?Q?qUdigzZMdhV266Bbfs9VApW6yEL4hBiAA2RjjW1z2OVvDFW+1XIjdxjs4h83?=
 =?us-ascii?Q?ozdqBQz3mdsi+eJsMTpWDKopUDRg6q8Cnsts4hBn5aNC3PaE1mPDCl8CMt+F?=
 =?us-ascii?Q?13dy+/wv47CAc791dogl+uWoVtOGrVK45n4r55ICsLDvRSuWo9QGR4f0/FJf?=
 =?us-ascii?Q?U78zStu+jvEcN+MS7cesOXW/c3Z57/eorxEWJvv6lp/5MmTOPDZoPcc2OrQY?=
 =?us-ascii?Q?+DFads/K7dt4CaT0eVHdZTKn1kPFsXFRy2FcusnNBhWPLgPgqRox1savhClU?=
 =?us-ascii?Q?zdE8vRmCWXsJttI+3VTprvlimYurxDLIanNW0eXmrzXmRJFjGaaxZs+JM4am?=
 =?us-ascii?Q?yUpPVaQvapcFg5raIgE5MZKneo3uFp6B9d8dp+2O5A6niQ5JeHl+oufFHYN9?=
 =?us-ascii?Q?qlHFn4GitQDbGmgwuAnS9xdotSod5E5eDyNIEBzBH5Seq8FZBfropNLQxUhc?=
 =?us-ascii?Q?+RP2MVvSK+lLyYh+iKZCQgjgvMSXgh7/yjz5LJqYzFxnJHkJlipKpK5lXQLQ?=
 =?us-ascii?Q?f/xp18qmEeAWsplA5iCm0oevdFmDqZTXOkrIrXHeNbnQERqfHAL5EO+jgvNl?=
 =?us-ascii?Q?BMMcD2xt9iZNmkpKSbykdROkEnJoANQ43CBE4UaH4f4YWfXQGcEyafUk02DC?=
 =?us-ascii?Q?rCxSw76n52cBcO3sgB+IG4phu7bm2w/BquwQzCnbpwyjpZhNrUjb8jpolLnx?=
 =?us-ascii?Q?lQoAlw7C4Ujg/vGqIv3yUn2Yk/gzmipJXjgI3P9WxgIrWAPP1qAGvlrr1G9r?=
 =?us-ascii?Q?x0ttjMUUwSbJLoSyipbKqOP215HV4J42IwTPd2XnI1S9Mzf0gMhz78HE/yxR?=
 =?us-ascii?Q?zJlc1UV+Uiu50FMOXd31bMVo33G9X3b2RAog722rjwFPMN9fMcZFkUd/QvL5?=
 =?us-ascii?Q?tOYPGwiVUdbiOLrJWrfd/YBCh+xdVQNqyUH4D0LaEZa9zAsXQN3of/BDlLGm?=
 =?us-ascii?Q?IXCKzCEtPluPObVNGv239vmkxPBjAHbBlsmLYiWze215WE5UmIyH1qq7FaMj?=
 =?us-ascii?Q?Ap8Cgw1rGTzwayW6H9FgNVXT1KtntqUm49nsmRTdlvKqnsF0RXU7muwYzufb?=
 =?us-ascii?Q?Y/8l0ByNZwpTu9B8qm8PunqcQIB973Ed8jb9xdGHs25g1hv5KFGgOV7KCc8D?=
 =?us-ascii?Q?C6r1CMPd9N09tCz8Wha9rS/gDKNZNR78EwF3BJ7uxR/l0C/z/+LUycOKrZpI?=
 =?us-ascii?Q?9fY7+/wvynqtJ0OUY1p4GbQlIbQCT1+qMBL0w1sPg8owdIFp?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 117445b1-09f1-433f-2f30-08de5a2663b3
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 02:23:26.3465
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TCDpTsy0UYVmHv7qkIUj2jbtRwjFBH+nN0PlU05q+bLTVcIuiu7Cgevph3kvvOQk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB6590
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258681-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,khadas.com];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,khadas.com:mid,khadas.com:email]
X-Rspamd-Queue-Id: AB4966FB11
X-Rspamd-Action: no action

Add the gpio-keys-polled node to support the Power button found on the
Khadas VIM1S board. The button is connected to the GPIOD_8 pin.

Use polled mode instead of gpio-keys because the GPIO interrupt
controller support for Meson S4 SoC is not yet available upstream.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 .../dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts     | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
index 4bae6d46defb5..cf65c079e675a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "meson-s4.dtsi"
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
 
 / {
@@ -44,6 +45,17 @@ emmc_pwrseq: emmc-pwrseq {
 		reset-gpios = <&gpio GPIOB_9 GPIO_ACTIVE_LOW>;
 	};
 
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		power-button {
+			label = "power";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio GPIOD_8 GPIO_ACTIVE_LOW>;
+		};
+	};
+
 	pwm-leds {
 		compatible = "pwm-leds";
 
-- 
2.34.1


