Return-Path: <devicetree+bounces-277528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL7yNcJiu2kbjgIAu9opvQ
	(envelope-from <devicetree+bounces-277528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:43:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9CD2C5153
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C1A5302E421
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 02:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0A23859CF;
	Thu, 19 Mar 2026 02:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023121.outbound.protection.outlook.com [40.107.44.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1EA36BCD2;
	Thu, 19 Mar 2026 02:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.121
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773887704; cv=fail; b=h7u9t21cgpcWpBycBHRNafElDMcYPkD3wwEfD0+E+M/XO9rdh7NIvEs6No2IBrOUGU7rpVXzHBvuIh3MLlHDpz4ba6aAfpX5YYuVl2VppsJYROuotKXHv+9WIKklOggJ4VYtyaLr5+vAnSecbGcZRLTLia1quasnjoyhkZx4VVs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773887704; c=relaxed/simple;
	bh=jHr4Jn9tw+N3awtHyet5UqzQ/3/9JYgAObIxhYu++Hc=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=eXvLJxV//EO/amZ+otRWTDDpHDGyNg88gUiptEfMiDEu18vj2aFJNZUNuJDdH8v+suUixXVo1n0McMAw8NhDS5pGg5y7oCacmhi8okHCyBmA2mLq4A4RB6fk2YXgwmYfvQEHoh4/TA9FmMpXHRX2wu4HPAvPqtwLfTugCb8JddM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=40.107.44.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQJwWl0op0KztuBvLRkilkTydfOsO3utAP2hrzhwOsNz/zv3y/EbyMqgO0BwGxljPC4yMfB5VIBN+RnZ+SjhwM4+ag/DP75aGmVORGwge1RBJ5APXaM9HlKFCutRiCHcPfwHazc2eV1DpNoHWvv8m/V7NkAykaItTiykaHh/K2Ap+PHsU849cueu1Et0HsLkMtobnQGeYVYXop6NhOweRywtq4eMGk57rbWPxYJUp6yrAifYUl0au+lgUC3S2kkk0BLrEiututHGOAP5VG1/tXOFjj5JS/4MirfzzT2XL11uhzRswzz3z1BX5lys2gQx1exNJfMLOJMp+MMHGj+tVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/DRdLcmCa9Um5mwo3EDlzflBo9jnUnjU0zG4/g5NOTk=;
 b=DxXB/wqc1FkEejdkpiGxEIGhRmpTRqLu0uMqKp6lrVLPs9K+95dY/uIc1Xn244OOWvbhOZhZWNK3/Y6Ac1YgXxOZvWLWzKV926Bi451+bXA3efgAonWUotnnjIr6jXj6CfFCSqzNL/XL9c5VtjipTCiSnrNpiKAyMfSkGTugI0kQx0cpp4w1+rQtcSgZCpaBEhzFKWRLOwh90w22xaIaCAGB5Tx0TXnyJaj1i3EvzC9DUWZTvyFEnnGKbCjC5GTwpA4hwrM2b4CqBrHpMqhOM4KyfcBlPMCqSWjchinn8u8KMub81Fa82tRV7FjIBGsATjb2mCyOjRs/8M//h7ZMuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SEZPR03MB6490.apcprd03.prod.outlook.com (2603:1096:101:46::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 02:34:59 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549%4]) with mapi id 15.20.9723.018; Thu, 19 Mar 2026
 02:34:59 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Xie <nick@khadas.com>,
	Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: [PATCH v2] arm64: dts: amlogic: t7: khadas-vim4: fix memory layout for 8GB RAM
Date: Thu, 19 Mar 2026 10:34:46 +0800
Message-Id: <20260319023446.3422695-1-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYWPR01CA0010.jpnprd01.prod.outlook.com
 (2603:1096:400:a9::15) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SEZPR03MB6490:EE_
X-MS-Office365-Filtering-Correlation-Id: 99246c07-4219-4546-8309-08de85601d64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|52116014|376014|366016|1800799024|38350700014|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	TGVoQE216J329Uf8mrfKfhZNitvzanjnqiOC/t1eXHMxtWG3h8dnhum747KS3/bI9HH+u2vt1VNITlw7lv1ZYO6Jzp0Hmb295y0zrkpMSRSKjvVifnbkMQZCnJU4DV1z+HmxVO2hfiui7foYQKxLhV5jAxNcaktnJsr7tbTwH8Cn+odrlsbgdytl4kLjXb2na9SGyKSe2tTAX6/hXI9o1462BQaFLF39w8Wg/EfeCnenb6xpEoCUzKf1y7ozWQXfIeFzMZFNJXUsqvGhC8TkhL0Y2tc3eldoG2EpngBDNFjfR+hsWpA1XaYgV0lXOkdywiGDFAhodVvNZhF1sCGXnc+PnhKc06FUhYbWh8pVyDDFVtRBL30mx9/nzZ538JbHbjjvWOPI/ceDVVcYOVdZ+ga8Bw+lYFBpweaMG73riWgK95sSFPm+tvsdO5Ogq6hZoc44tmMbw9WmD3LZj31C/Hye1sO9OCHXBSxcfyTqf7z2JWeBlSoXAx1xOGD0exDqv8Vz93yh9R71pI5/+0FXRVE9OpBLxSYmb3W9lHIhAxrubEoAZE68StEgWxtFLBcpSDapA5pc9wA5A5ZBHD9ODckb6IglBrrycCAiTLUdSZP9C5aTwg+AIgHY8hQyrpKEJKbPYV73m5OXdv35CxjwehHRb91BLUcW268gLADGfT9Z57rY85T2/u1oNwsCRsV+Gv/xggRGGMG5ZLtH9PJDbscu+2F4Lbnn9nzGvm23ePBZy2ZMsmR4zr3enNfcSt66xlRycfB1V3Hbeqb5Rg/UmeshgWXrvY/SIkM+mJHslmk=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(376014)(366016)(1800799024)(38350700014)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?OzAumfGlXahlBBnkoJBWy4VU7JwJ3jZEQM8N9didPlUiueKCBUDEqPWcKWqJ?=
 =?us-ascii?Q?55gkwOhNDvHAS6CBdI53fyU7BAJolL0RwioeBiwVLrdkGnkg0Vidoq0Otnf4?=
 =?us-ascii?Q?MeMcDMEgCGitq45XWfWWuN5ahSsFjdBPNZ5iZ0wbr3RqI1MMsCNDLQu1yq05?=
 =?us-ascii?Q?Qc6t92BA4e5ciHsm099kaiziOsZlMN+JxkQF6R1pu64TmWPxkh3a0GkGCKOG?=
 =?us-ascii?Q?igVn9VCvH/8qza9c4iDv0gpwlBPBPG6CkQPvs5aNuC9l+w5AN3eChU3jqkEP?=
 =?us-ascii?Q?loyx4Ik4QlLgxlgWaawiOdAqRDoTSF1Qylane6GgAg7n9RqD0Ssme/dZ3t0U?=
 =?us-ascii?Q?0iCHdD3uCfLwbs1sLxav48MrTJvG6jYNEOpZ0QmqVEqF8hrOvqZvYNjP7KFM?=
 =?us-ascii?Q?pwAe5lPM+EOfFZD6fbNUidqCanIjmIsPR8vgRl4+psONFgJ6I0PMlqhGa9Ci?=
 =?us-ascii?Q?Z9r53HlS2+wKcZEoAeXO/8dx5V3ffIj93ZxeObqopcO2vQh/ibdyB2v5RGGR?=
 =?us-ascii?Q?6i0ka3RKvIjnxpK/Nc4pgsbjhstIfTcNNrpZpAeZCOZx6QXjEPsv1Am4aaI8?=
 =?us-ascii?Q?KitV+GmYwbBtPHUFU8pyul9GUwdBJ81hnd6nekbrpToN6raD0AneEuH2l/K2?=
 =?us-ascii?Q?PtKHkP+VwP5MJDmZjmhee/hSbzr/pt03Re8lxu8OgYkIbZ+wjibajYAQHvyj?=
 =?us-ascii?Q?Jvufm15oVgh8hGdFoPLc4GedLQnKELJOPzWwdSt/kuimNWbB6c02X4OMVJx7?=
 =?us-ascii?Q?+BcP9mxAKU+Zfig5qFwKP69u5UxiQYDmrLR7OkokAZ++KMNr3n/yenONVch7?=
 =?us-ascii?Q?PLOpRJ0ieBGm9YO4zyTHyrPOYfHckVEngjE17a2EhoLyBUmu90pvF5CA6f8R?=
 =?us-ascii?Q?nr1TgXCD8jng09FYvWaqcrkxhot+Wlai02VsBjhTazHR3pszya09jic2+46y?=
 =?us-ascii?Q?skwKFBUx4ybNs/4FB1856Tlt1ecEnIR7phRmcwY7Adx37xJZ3gVvvhoFkv4q?=
 =?us-ascii?Q?LIFXBJ65qegh0QFrjOFNXc0lGEmA53bhTTMcf8c3u5cCmAhVznnxr3x7pPEG?=
 =?us-ascii?Q?GUZEVTBFUuM/bcmc/yjDLzSlR8b71SZzwO+X4CA240G9bqL0b7xWxpB0gaFx?=
 =?us-ascii?Q?a86JytrgyHSdTxauCc/Nu7xETeBQT95Kj7p2Z88HrfZREI52E2hLTXpbMLYK?=
 =?us-ascii?Q?bjs+NSrHw7JB6ofXWOKQK98Kgn/Tq+NuKr7/iLnH7HbIuY+5gayeHyJ3uANf?=
 =?us-ascii?Q?VprsPqkmggCGjVJmkT7NCO8bilsK5IhnR6/sZ3UEaag9BW/gD751B0tBszSp?=
 =?us-ascii?Q?ladDX7EAeBNpVr4bGpzUvkGslrU31+JyKMIeeeOVKKbCg/ctadgBx2+sf/hZ?=
 =?us-ascii?Q?j+VZJ0IUKVOH3fLyfRzj2tdMTxVvq0GvYiQoPLSXySFzZhvbbDC3IDPIW3QZ?=
 =?us-ascii?Q?F1Vvlmfz8FYVA/KGwtHaVNOoUkvOtqPnFWrCHc9PMWLnh3znSDwtOte8jd77?=
 =?us-ascii?Q?FpyBSPPEtolEQAL140MA03JcZiYzYTjW/yP9dZPPyjk+WbOR3ivCI0RujY1C?=
 =?us-ascii?Q?M6UNfB2sGytUitvvX2qRBat6tS+Qdx0UgTPvZCKG7FrykHwS49ODulZekkAE?=
 =?us-ascii?Q?sLe2uTfaeNePXayv1tLQBVHI3JfxizuAWH2Etv0snVryNjlHHQipGeyRVWDD?=
 =?us-ascii?Q?cjtiTprJNBoYVcszLuCXTMG2WBIJs026CJrYWEdib1wVLQ8c?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99246c07-4219-4546-8309-08de85601d64
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 02:34:59.2307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XJDzt7sJvr99VyE948XSfs+FAJTYa2B5taTUOjKVhh1UJ8wapIrqIXR1wA8NjYro
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6490
X-Spamd-Result: default: False [5.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277528-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com];
	GREYLIST(0.00)[pass,body];
	NEURAL_SPAM(0.00)[0.395];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 3A9CD2C5153
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Khadas VIM4 features 8GB of LPDDR4X RAM. The previous memory node
mapped a single incorrect region. This caused the kernel to map MMIO
and secure firmware (ATF/TrustZone) memory holes as standard RAM,
leading to an Asynchronous SError Interrupt during early boot
(paging_init) when the kernel attempted to clear those pages.

Fix this by splitting the 8GB memory layout into three separate
regions to properly avoid the memory holes (e.g., 0xe0000000 -
0xffffffff):
- 3.5GB @ 0x000000000
- 3.5GB @ 0x100000000
- 1.0GB @ 0x200000000

Signed-off-by: Nick Xie <nick@khadas.com>
Suggested-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
Changes in v2:
- Removed leading zeroes in the memory node reg property.

Link to v1: https://lore.kernel.org/all/20260306031014.2421875-1-nick@khadas.com/

 arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
index 25b478e106451..f4c953034be39 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
@@ -17,7 +17,9 @@ aliases {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x0 0x0 0x2 0x0>; /* 8 GB */
+		reg = <0x0 0x0 0x0 0xE0000000
+			0x1 0x0 0x0 0xE0000000
+			0x2 0x0 0x0 0x40000000>; /* 8 GB */
 	};
 
 	reserved-memory {
-- 
2.34.1


