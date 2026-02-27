Return-Path: <devicetree+bounces-269051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM9LJM4doWnJqQQAu9opvQ
	(envelope-from <devicetree+bounces-269051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:30:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E66D41B2B5E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16C4F31525DF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45ECC2E8DE3;
	Fri, 27 Feb 2026 04:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="xZpPz61i"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11023083.outbound.protection.outlook.com [52.101.83.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4162BE7BE;
	Fri, 27 Feb 2026 04:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772166411; cv=fail; b=IqVsQyC73p+ajpaOgYoyeMVUOs2rCaQvMi6UjlwWHGJ3dokETk02ASPKrI7GrjJgFlLBVDlcqiu4MHCvnyRJGyMH9yjWkecB6feGelrMLfmVcUuwhV60QBBUGNS5eAspksFa7A2GcCv7Ku/QvhDhxxDqDAT65DOUdePApyqN/lg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772166411; c=relaxed/simple;
	bh=sP1gda/BqqdDl7EmyZe8gu9cN2WZE6ss+1uFtYmBSQ0=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=WilV586nmoCYKJZ27D9LhMR9OypLJ5EYrC3bbpYhjn1y00SrtiAe94NX4l7x1QHn1fxnbwdr62icZUfXttdc4dDB6GzUGT3DiTFys/WbL0jERll9zFlFKn6nCwcuFUYRjEtmeAiHiZwm2hC8XV/b/RD3Vb/5vu38zfMhvCQ89fM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=xZpPz61i; arc=fail smtp.client-ip=52.101.83.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wzheo4T0GU5OaBef+tg6E2ASp5+ORu4E3Dk68JS3ff8VkU9niwhhA0x5AX1PNA0zcpkSb+mRVeTyoRkl8U8rQwqmt+ucAaInia2RYwAHf2nikLvFcxigjbADLb/kP6MChzxyyAnBLch5Qh4hxAfA2KCe4DISSTP1QivCqclqHeEej1qE25F2t9Bp5uHacmwQ/sropy78s70SOpIvXu7DmsNBTUh85ihuGccGP/1SljS1zgHq3eETTL70nYvKzzrEQUI4fKgxUrqJMuiROsYBdhf5QuVB74WWNHhP+fANZVpMfS5dqt3/ZZUlqeXzyHo0nlDtOesgaw2caiYIM69c/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DGmQwLSDQh5AKA3MfIMr50p1abOB7ni5nR9+b1yrVAM=;
 b=PcHaPXUq/683ZOWJHW6onvQ5w1E3RDPQW6wN3C36BS5Qv18vLgj3RfJPnWYOYI/e0uaKn9W6Y1IYsI6rqSh4pt8O9Avj+SyUYyeBaIOj5zAN0ohhoyThSXOpW616Wgkym/Es2JLZGmLS3NhbM3aVVJGoXBalBLQ7opN2ubG5xNX/U6cOY4mrUCSwfYWGo8Exd+492m2kZ+r8VdBKe5+NEsK+e/1ZSk53ZGDiQh0C+zWHsW/b1dtEJwOg8IScFNyiwdSriIChmwIABAhyVNP99CJy2MU2TGZtzN/lcBtvCEOcHSH5snPwc2QVjdoCj0hrAzXTMVEpM6hv9kCTpkvaIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DGmQwLSDQh5AKA3MfIMr50p1abOB7ni5nR9+b1yrVAM=;
 b=xZpPz61it1XqmGYVIFf5ZtOIfR9HNEPNQ1oNZzfpXqWs7hRZ8R6fO56p7qGQ4JPLjGDOkCaZkvoAi/sQqzvQx+W/e9+JsabfMJXtG75y40jVJzIpO10tyMdyVCELIrKHxHPSFaTE+wNVer0JrpkbqTKm7iS9yr3JnVagQoJa3ULeteUNHeoXtFp7T9ewCcdJt/LiUXkmpKz97iuC+ZFtTJBmOAjO7pKxszG6U5dld3yCQnOh5TaD3Q6kEAAt+bby+yepCaUHlsBmLtK1FJrIffLBAMBFplsxNZ2WPxXgOy19QOMfWSYmPE6E/EO4WXwCo4feQGc9EFewyZXfpI6EHg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by AS2PR08MB8574.eurprd08.prod.outlook.com (2603:10a6:20b:55d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 04:26:45 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 04:26:45 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v3 0/2] ARM: dts: airoha: en7523: update dts
Date: Fri, 27 Feb 2026 07:26:28 +0300
Message-ID: <20260227042630.3090808-1-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR0P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::13) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|AS2PR08MB8574:EE_
X-MS-Office365-Filtering-Correlation-Id: b5b8e7b5-ac93-49ec-3b46-08de75b86a80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	J/lYxInTRJwntrYgMMENJToVKPfd6a/86qZbzwUXT1lHopoyyMn8OgRDODC4CcLlQr302Ikut4uhUFMW6e8L7q6ID/t3fVfqYrw1ozp7zM/J6EUaSgYX+QGGZWftLhZgf0CEBEHt69tgiWJJN4ib4TbXkdza6MZ67p4zqtCvTruQirxQGiUFHyto54/6g4b/bRfoChfM1B/yVyqgFG/HpBDAnnZKU+nB5GHL8QRhdcf0AVqyGBhUKxxGNUvfK7xOXJK/rLKLwkaE5U2/9kORZUwi7lluv10fDkmqK44oepiGzEPe3Oqz6v2yUrf9PhXC9YiDbuT/VTTxOhwwvlzYCBtYE9AipEJyJUwc4pI1VVOh8rtZOV7PeFh/gdOeGF2ZtqnVVY97+hRizDM/ATphFobLhplctZuC7F+xm9ngbIxv78G59WaqPyoBhkxsdrFY9nt7q9/QOpEbNGaYGcXCLMgCtxItc/kGPqVWNhdr3QgLv0J8gprxT9hykbrX0N/XgVnLMMfyvTIWl7iEKFb8rJk3ED75WiCk6KD0rXlJ0QfQV+Rws4kaqaB9hMU9iTFAKpZEefIMavFhGqdI48zYulkY+sk7WetMqVA7AgD6qy94MJuFBG5O7G6e1kt4Me3z/W6hxkMZ0bz9vtMh4SF+r9ljSsSW8XOLe46nDMC3cDjd9Mo/ZQHPvX7v33LXXceiRUSUSJuBIUxiJd54G1WzzFbhdnSn9+sX2UUiJXit6Se3tIV0nI3L/i8w/7whK0uVu58+oKDQsS7ovlUJslXtOdkSB0MumYBBRHAcR/au4Bc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?e9ljPF2X3XdZo7+ajSIXQ7Veuvc2/397ECvvmGMXtY9tjjPJ73dqLhpR6Zs5?=
 =?us-ascii?Q?L6OYlQp43GFr4aioJ42QVDxKZTz7NFXUekYQ+5kxm10lhiTZvb12eFyPqRbp?=
 =?us-ascii?Q?KOsejOfLGJryzIw+fUuRnBPkbdiStbrxZYzpp5tCJnO7jBib9XyiErbw3ena?=
 =?us-ascii?Q?vc6+SVntJ+aEIIJPSNTGhk1TNlUXcdH05zy3ago6DpiQBYAgAW7DVVSAKP0f?=
 =?us-ascii?Q?CrK5fowG97jMHnnNvVh+9lfdb+zmxWrSt5FmrInNYT4o4pDVXxCXPN1AimRA?=
 =?us-ascii?Q?iyyg+Z+Tx+9BasOn1HjthocM5MoOo7sZ+dMG1K56SBfbUJQK3AYoakGJSydP?=
 =?us-ascii?Q?uPM5EleRwIPv9zZ7oTq3lu/6P+8kgHQBQQfQ8x9JbNxaW2rTfRlcQYHADNVC?=
 =?us-ascii?Q?YbCddaEPBt7PqqRge1LsHm1EwhMOnKHZNNZCSNFupiAuFRpcuNl0whuLLaya?=
 =?us-ascii?Q?4EEkzdut0UyNB5E/3jJlOlObxUxaMBDgVsLgaufYotmy8pWnd8xgrA78beDx?=
 =?us-ascii?Q?RK7So+omovsU0Od7SrnM54fLdBB8k4xkq43pKbvrY1R04bMFlEdteV4Ac8y5?=
 =?us-ascii?Q?BCdlxXi+Uzl1H0WbjqJeWx1KgkB53DhVcrxyhmTxEIloZU1tis2jvc2sOjkj?=
 =?us-ascii?Q?bBMPg5TEkzScNW3t97+1sGGTXYDCgD9kZi//dhgL/jPjbJmp+pTke/st43/H?=
 =?us-ascii?Q?M8wrH97LvIw1LPtIJlW+jn0WFzkLTUQdXkCgKZ+XezOgnknKbAdUCIyvwFgf?=
 =?us-ascii?Q?YTctAg4vS7CLHPz9blvqBEMUpUPxVMZFXO1bw+3iKRxZqpahaQ/q7fMKKArw?=
 =?us-ascii?Q?bel/1+FngkSQ+PA71ah2Osig9mwf7RdDJhN9l0Z1QX8hYd1aQL3AcE3f++2O?=
 =?us-ascii?Q?pcPrmXVq8eH+111q52nuLyJHcnCpOgf8JaDKsim2irT5Jzv3n/FLYhL5rmZY?=
 =?us-ascii?Q?ui+vRiHeFwN7jikCNyxMMYy/gdaB778hnwlqfREzioP73thjwMHCn2YeJ4pW?=
 =?us-ascii?Q?qZMvMVyB9CsrdxEpBAxAcXvIttR1QRcQV4GUO5rz1yWwNIeADM45+CHj1fUh?=
 =?us-ascii?Q?dygcT/Ab1Yu2reb58r/7gaz0HMxz2Ldq09N6HYk8ZknvtWmD+kUvubg81qeC?=
 =?us-ascii?Q?RzLDJVzsbU8SsqxSNnuv2fJsiO3/E+Wy0YZOH7BC+vxFhANLZb5QL91vGryj?=
 =?us-ascii?Q?BtjaTLazFDF5tWJuZOp8giJTEpgHWpdBQ1g/SdQpLiLklHO7lq9Tk1z6pOIA?=
 =?us-ascii?Q?sqPETnccMyAzzl15vOHho2SZIp/JrTL9CX5Fx5+rZJ/gLcYUH88k7rhPj0xY?=
 =?us-ascii?Q?31mdabllBD7GmFh6g2OG2qO//EvGzqhm5z31a+vldSvxb8oDURfmt3/rlxfo?=
 =?us-ascii?Q?0uwJKbZiM/OPQok4dvFSBaX1hQCTqajsCbVtFT+Pt74FcWXYuMulNnCK5Psk?=
 =?us-ascii?Q?bTmn3/vIHkzbpuz6PuUy7EFMYhO0J40mt9/5plWACL7kqfzCSReiFaQ5ZKyb?=
 =?us-ascii?Q?uWVbaSC1ptMtHE8YljzWWHmx/+sVMnVQ0E2zbNamkEoGLNcp6nwdcIVEd919?=
 =?us-ascii?Q?hixYR1UhrPULu/7ffRTzeVNi9Htx+P92/f5HrdcKdvNRXlPEWfY6Tiiy10bb?=
 =?us-ascii?Q?0Cm3mJkJCPEUJnuOV+kS1I3YNWwtlUOe0oAZ+wYJPVx1sdfArHNSiJcuL0gW?=
 =?us-ascii?Q?O8EbubV179vYR6dlq2xyxj4ot4kaL3e0YwYPaWUNrID6OUdFW6rAJiUFYG4h?=
 =?us-ascii?Q?B7uqB/g/hClCz7G+8WTWbbLMPq+WaVs=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: b5b8e7b5-ac93-49ec-3b46-08de75b86a80
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 04:26:45.7985
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eIUUOIOYQe+X8lwVFLpu+TystN97Iyg1soQISERXxUpBNKY+o/UJIZIj1dMstRq88aSIZXM5kzuBQ7vRCY9u+I5mK2yTfjHf+q9PpD4yhok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8574
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269051-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,iopsys.eu:mid,iopsys.eu:dkim]
X-Rspamd-Queue-Id: E66D41B2B5E
X-Rspamd-Action: no action

Resend reason: no any replies/comments starting from November 2025.

These two patches adds en7523 support for:
 * spinand flashes support
 * reset controller support

Changes v2:
 * update cover letter
 * update patches description a bit

Changes v3:
 * update cover letter

Mikhail Kshevetskiy (2):
  ARM: dts: airoha: en7523: add node to support spinand flashes
  ARM: dts: airoha: en7523: add reset-controller support

 arch/arm/boot/dts/airoha/en7523.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

-- 
2.51.0


