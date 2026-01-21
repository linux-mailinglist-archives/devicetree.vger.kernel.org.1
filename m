Return-Path: <devicetree+bounces-257688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD14F5tNcWkahAAAu9opvQ
	(envelope-from <devicetree+bounces-257688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:05:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C62DD5E773
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:05:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 98B2E88E910
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3823101A5;
	Wed, 21 Jan 2026 01:47:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022103.outbound.protection.outlook.com [52.101.126.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1071030F53F;
	Wed, 21 Jan 2026 01:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.103
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768960071; cv=fail; b=OyKrTzblrCYjFDNZaQqdoRa5bAsVdj3ykqtbVtSqxH5mtCnYPxDzoITgNakaoPBJgsmucb0LzTavNiiBBQ5/93E2rG77ykABUrAwdEhm8wfry5R/JvleujTQSu8UqRVpvTemRs50gzlsKn9r1UaYZbyFrLl2hHp8qwyQmweRyos=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768960071; c=relaxed/simple;
	bh=yaEWB/MIjdh5LVhEqbKTJTyvzQjXT7XiWUUurnJZk8w=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=VO33bIKdqKljH8r+0gT1z8kLZsuTp208R1MbtXEc8U0RkkZSh1nTOkJAyoA4LBSkFs1Rej1/sd9Jv8yYp5Jg3sPb+nSC1QOk1/W0qKYEhGPjn+1dOirNpJD5mV7HqV7J9gMFLjAJ+WeHoDbPWEwpDW1LZWgPnqVclu47hIh+yEM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=52.101.126.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fFZ1EiNQKtNEvGkYdqWLK3zIQFNA2ZfbvOBaGTZJfnsQqhPEe3yhhnMvR64R388qwiWzcf95LCiFHcbytHqtIRbmvaVQgBtv0ZrCpsakT/BonGQp6puK82d6niXaEt5upFcj47/iEJabN8TbuE8h+ZQJIJM0tuGlPbFj+rjvTevB+qMQp0Q87Z1hYkXn45mV5kLSfJ6UoZHW7fkFMq7PNlMiSawrIKm9eanSy+Vm62VkrkiuER0JCE6VCTOGg9zIinDVs/JHn51CQOJTFfQQraVQ+McsI+mFaxX7hCyI4xs4A7h1Klp6IL3euZzDTQxp0ZiKcnzvU4w3trZk7hu1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d2zOLBHfrVC8ou9WOBlArJwZ3mjvYW/7+dkBJs5oNHI=;
 b=RtM0zPZ70HbTNVCHhY9DoA5qTkI/UA5UTjNDXH781mroxEfVkeiQXoiJ8QJh0vv0FEMnG7VPnbiHjKS5jSEojp9Y0Bk3GifcW0IxGhFnIJAEqoUf5Qjqlh+flC0QI/lDP/+pzeX2i+DbI4lWxgJN15wHKCpeTE2+WkqQO0gZfDtogoQfp/7wRrgFlwSqF3NnFG6UuJdW3pGIQR73zJIrhli2d4M0kfhp0vvsj7CVr+VW3YcwLPMwNDOmZKpdoHo5ZSqVQsN/REj8mXCWx1G3P/G3CFwWmbtFt9a7cEHm7VUvDmAhs1hghBx7h8hAbzvmPWI5h0hVO3OOKYb80r4G4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SEZPR03MB7513.apcprd03.prod.outlook.com (2603:1096:101:130::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 01:47:38 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec%8]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 01:47:38 +0000
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
Subject: [PATCH v2] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: enable SDIO interface
Date: Wed, 21 Jan 2026 09:47:25 +0800
Message-Id: <20260121014725.122722-1-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR06CA0010.apcprd06.prod.outlook.com
 (2603:1096:4:186::6) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SEZPR03MB7513:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ab0cfa4-f451-45c4-0b30-08de588f0ed5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|52116014|366016|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?PLoCpvV2ZT+zNPYNsLR7P/wr+sFmRzuJCpZH2gojv0nt9K3xghHE6SBLeFYD?=
 =?us-ascii?Q?mIeChaJ0oMqmBK1bcHE05cN6oJLulHfuCo03hfXKzSmGUtyGFciWRz1hhrHN?=
 =?us-ascii?Q?FY5T5oAcmI08gl8n+lvWhcNLO8yLbOwyXUvLFafi9jxhsMcdte7gPoWWGQ+W?=
 =?us-ascii?Q?PXvsmQJXrTaoG3uWpct6xk1I6Kj+WNuHrGZBrIE9SGyNoZ4zUmnFlXPcbVeQ?=
 =?us-ascii?Q?/513pQ0F0kinvCyi3X44J7jp/AKkXz4OpraecKx1l95XrDOEQys/H8qt+usT?=
 =?us-ascii?Q?weOGBSdUjoItByf3orChj6uCR0ifHeFYT58gw0derFuVNUVTD/kRjudEKVW3?=
 =?us-ascii?Q?AeWbULkX+vxQhSggpVnMABc+nC1KTJ9bXLohUTK78Qq4ssszVwfZPImapco9?=
 =?us-ascii?Q?1nTYI1LXuq47T/a0njvTI6FNnmJRRKq2vKNLptiOZOEMGnvw51z/1Q5IOGE+?=
 =?us-ascii?Q?HXPgSXr9X8d7asGDYkFiCXgqGI5a33ytm7DKa86IF8wP/6YsKnmiJdJXlRJm?=
 =?us-ascii?Q?npgS0TUe5WmXSyJqVyqSoOWT1QFIA7Di8vE8Z+mrErLsUpKSugSQZp/LrWQs?=
 =?us-ascii?Q?WF+NQLcha5KSsqs7WVW9TYL5LWH8t/VaRhVBU0l/8q7wVdNq4LW1LiB3FO+P?=
 =?us-ascii?Q?bzw51byjkDWFcXZkVqGj6k0Uy191OMWOjZ5dVsycty33Dm67rvXbIfBHjw11?=
 =?us-ascii?Q?6V9jFDhYpeRApp7oV0QPXb1SKEfwvBIxpesE/n/XDqhmvUoc9AJCYG8cMWUK?=
 =?us-ascii?Q?MbKmPpi2TIV0SC0T1Csv0bn7mCEhaFrQ2zJ6lDhmu7TsBtC1q+OXX6FjybFz?=
 =?us-ascii?Q?Bt6DJB+f+z0H8ze/h35YDUZwBrlnJj5mAv7IabpwBYtoK1YlYJ3yRboYm6VH?=
 =?us-ascii?Q?B0P1EuWjb14Bm4mtYZpD6wbLMIF7vu0IffFAZ2tz1QKVH12M5859vdjX1RRA?=
 =?us-ascii?Q?Nj4KKU6FSWJgvyrZdsCgaY80mnmnszZnSBRHSGrfZxMvmLyD5lsbjGIiMSa3?=
 =?us-ascii?Q?rC5dSthBVAQodPGwHtPk2HkjBJ2dnGKgbgp5xDZ1dfuWf9sJbDWaZIMgII+K?=
 =?us-ascii?Q?fXUdo5Mq9Hk14xrM0y4Ec+JuxNOBirEg8nzebbslCixjOqXWU3lR76h/Xzzr?=
 =?us-ascii?Q?0t+QU+nD48lIZ6yjPFBY4/8BlfFgjQczzuRxkwtoLp5UYhVV1IeZz7WXzb6m?=
 =?us-ascii?Q?n0HbaX9yvFYqK/wfpyGs7CY4MwYMUkqV8MR+3hxDi0Ku4ZDjWZel1AJHo2nz?=
 =?us-ascii?Q?JvSJ5SNfDuAnBp1ndchKX1Y/58ImcSk35puPnFg45Zc+xJr6hSiyPyxly0Pc?=
 =?us-ascii?Q?bREc2w3yjq4JxpblWs3/skoLwXqdAvCiB3Kicdxr6o/7m+Urn4AwJZ640Rdf?=
 =?us-ascii?Q?XZA5dkA10HBkcRrZ3JWMSQAfYBk8gDuiwC6H6hTcdeFQ86Inya0GqxB6xELU?=
 =?us-ascii?Q?quRigIcvW5c1z599/McSeA+nAsO8a67IjgFSizoqk6XIelOMuaBQ8DQfBgDX?=
 =?us-ascii?Q?e6VecVfT4iaFa3ni8Y/TdnjwU6cLmoH5XrOlRBfkea8zro31C1txH7LEruTG?=
 =?us-ascii?Q?1gbr3Fy/37mwY1f9dTpu8SU9ehhs3KmqH/SLShMHugOVWV8SvxQj1IcMNq/+?=
 =?us-ascii?Q?HEYWRUfhseHXwjf9RhSZ5/Q=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(366016)(7416014)(376014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rTE76nvwAHO/VpFL5cO+Ajw4oQQgSvKhKJhDqOg6NrDbHoxnJkSgM0rTwbeX?=
 =?us-ascii?Q?D3CSkKzhyXsr8HSTtzigoFPvpAdQcq5UdsWMjEUmYJu6qzI9aV3F21qTLWoI?=
 =?us-ascii?Q?UUE080s5baEGo4PkY0Gd8dB4M8FfEPXkvPxqr93a4F8uLizSncxTQOUCA4bg?=
 =?us-ascii?Q?xTVvcqr3R0t8PMsuNt2kAk9mKjdXYN3Eo2mQlfgqbaiXqcsfSgtQSJxyBtbK?=
 =?us-ascii?Q?JbrwFPosVxeoipmqN96qjyGsPRPPTtLYAJCIHdCpVI8QYRu1cSDGRxg76vnb?=
 =?us-ascii?Q?cPJCmB//8X74NWpWg5VlVGMIlPb4XS3JbjsU9AGukVSgZ8XUbeXc8CXQZ1Ga?=
 =?us-ascii?Q?zT0d9Eq3EK5TW5oRjSPmKiz2b/cw9eVPf4G4vN3GDNW7qJmkeqvYR2BcJW8O?=
 =?us-ascii?Q?FTy+JSwg/4uYVduoopAurkRsiCdmknfVMMeF6PnYNCE2o+rYRcLhOd0bRuvS?=
 =?us-ascii?Q?DkFqoAsI5DllPgs2RWJv51sZChxbs/JcviSCoC+PcXk8T3VdS7EhnX3woQFw?=
 =?us-ascii?Q?6NYu7YjXOZJWy88HW148xaqIo/bLq30ZrqUolrXhleFMjdlijfikUBF8Hwzl?=
 =?us-ascii?Q?h9+zQb8f8+acIg5FAcb9TQ5LyTd9YBEF/Sh106VQ5EhEOYnOFaw5Z3kmW1Ou?=
 =?us-ascii?Q?crITT+9LGogqdEvNMRHI38/2TS+k1UOktQ+u51hXpNWG+G2EuOmwbb8IzEIo?=
 =?us-ascii?Q?EVRxfsqo91JKhO0lMNnYzxB0oCVQZ75WZI6qIAPMxc4xXO6ySam5hLZm5BGF?=
 =?us-ascii?Q?H6J+udQ0fFUiExeNNkXYnYvpiqgRizSFtw+aWdop/JVPYZ57PNbATGqo67XC?=
 =?us-ascii?Q?k5Yd1h6w+HH285P7zBeOQHShU8zNvc1S3EN/F/PYwUal0zOuiMQzshgiKH/7?=
 =?us-ascii?Q?G22cMPHHqmjC4HoPRw+cLR9AB3XdrQWmTkyhYJHTZNs/g23aF6HGHqIvKxnx?=
 =?us-ascii?Q?oENYq2pdIUIgqFBg3j5HhcM/HLYYQWrJU3vsIrhBfLYdzJQdWSF4OXvJBpTz?=
 =?us-ascii?Q?7G4LLAJYqUbTN0AUgomrk7arAJRKuB5HV8Ox/rUezoVuVllW5B98QPTv/xVV?=
 =?us-ascii?Q?xGowT+hIQnAFXBS8xLUcOLlOr0RTf4YgfgvaWYC7ykj7besdTUXlKjhjx4hI?=
 =?us-ascii?Q?xhRbPMS+co+wjheG3hlLkUI6CjqruHtpmN93TpbXM/etIYmfaYuuyGJsMyqs?=
 =?us-ascii?Q?F0k71kxkKlHBPYyUdZJ84+vKxwUy1hsWDQlmaM3aemOqBkL1F1H/KB3TenGS?=
 =?us-ascii?Q?Td1p52Hv1IhNq5Ji/XXODTEuRrKNzjlc1vsUC57xMvUbtztNBmPKNIAz9NkJ?=
 =?us-ascii?Q?cVNnWwxMlcBFgKAUvEAM+PO/B0dOcXF+jcGZKgVw/VsxuM9FB7GothNhZYAI?=
 =?us-ascii?Q?2YKDGl3XzHdP97JtVLSjE8aVtNeDUPPx3CASI1QaksOe0pqo8tPXPkAQvroU?=
 =?us-ascii?Q?fgctszUPK6vbRM0vc0b9CrBGRIonv6fCEuc7j7TyAOxH/amPyHfow3OXI+yI?=
 =?us-ascii?Q?IyjNFbtHkyFup1XCHQietcd8ybKDv3MutSrKL03uD3XoOhB7DgFvuis/oa5T?=
 =?us-ascii?Q?BzoI7cG3YTN8fBs7sWZNBjDd7ejD9ijtjtsbni70JMykfUg6BbtgH6cCv8kU?=
 =?us-ascii?Q?lxvnUkR2VbFArG9Bq0jTDAdOkLLdIgvwoisCJVoMOsWSVwH1WQ91fce6AkQs?=
 =?us-ascii?Q?xsmW4Qb62jwNzyrgd/XOaT0qs+0BFmLB+BufKdCuGFHMK9jb?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ab0cfa4-f451-45c4-0b30-08de588f0ed5
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 01:47:38.7798
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KaVQ96R23cdCWUZHTGRB7ZyJ82Wy8b0WwBfo+nbVh2DmIdzJtGYav6Z6DKACo5mK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7513
X-Spamd-Result: default: False [5.24 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : No valid SPF, No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257688-lists,devicetree=lfdr.de];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,khadas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Queue-Id: C62DD5E773
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the SDIO controller interface connected to the on-board
AP6256 WiFi/BT module.

Signed-off-by: Nick Xie <nick@khadas.com>
---
Changes in v2:
- Dropped 'amlogic,dram-access-quirk' property as it is not required for S905Y4.
- Updated compatible string to specific "brcm,bcm43456-fmac".
- Link to v1: https://lore.kernel.org/all/20260116023900.2036657-1-nick@khadas.com/

 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
index 4a66c1bec965e..27d0f6134ea9d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -220,6 +220,33 @@ &sd {
 	vqmmc-supply = <&vddio_sd>;
 };
 
+&sdio {
+	status = "okay";
+	pinctrl-0 = <&sdio_pins>;
+	pinctrl-1 = <&sdio_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <50000000>;
+	non-removable;
+	disable-wp;
+
+	no-sd;
+	no-mmc;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddio_ao1v8>;
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
+	};
+};
+
 &spicc0 {
 	status = "okay";
 	pinctrl-names = "default";
-- 
2.34.1


