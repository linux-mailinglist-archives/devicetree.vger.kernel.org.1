Return-Path: <devicetree+bounces-276854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBwoNByyuWmDMQIAu9opvQ
	(envelope-from <devicetree+bounces-276854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA362B1D85
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09E67319854C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4F4342C8B;
	Tue, 17 Mar 2026 19:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="s//xkQB8"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11020136.outbound.protection.outlook.com [52.101.201.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8341A1A9FAF;
	Tue, 17 Mar 2026 19:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.136
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777136; cv=fail; b=bq69NE36KWkoGZQcSKQ4j9YfxKDf5SHzGFvp/jG5HZWHdCg8TsypotNKcmSvFnPAwR+RJO96mZ7FrrC24PH0IDSXFHyboCOFL0yIqWA2jqFB22MIxA9jsR/44hEKlYHi0FlTJI8AhfGKAV/f0pA6cjNnywZxtwdmYUgPQfHGBYY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777136; c=relaxed/simple;
	bh=ObP8N1UtvWKp2CtmzxJN3VKa1vOSFezLpJd8KJulKic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LT2xMeTjyineNHw4upb35pm13SI3FBqDRONbhE0CdHZFFKg29FZ0iFNCize3rswvr2EwagK7+GtrU6TclXbb7zIQ50NjA5cAXANo87/TvdbCkT4m54XbGDlRUKtBSiyJzhB4dPO0z2l0nhPPYt3Gmqnzh/QG1iU17XMzHvUw5YA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=s//xkQB8; arc=fail smtp.client-ip=52.101.201.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OH+kc95gGktTWK1kFO27bAw3YPQjJubdiQ8xnNuWzzmvrP0OBH2WdQRv/zwTEIk2GWgRXxnQziF6iMn7yEEbEE3SF5DPHhfHfw1eiVjy7DtMn55/XO4W2Jpvnr/Upt4qnM9uW0uZGPFcUQ4SBJvpq+vSUVEKoFDqeUDGCGsjVzUqMEZQE82ldP9x+06rP2cLizfptvFb9GrLbsZP5W5Tn5QPiCzITaznSLfj2zatmPgtEL6VjcSOnc0W+2G3zst2obaELhlcBdSop+cx/NPzvIYy6PHZf+rksTrIM/0isedcL1XW72Fkg4jFRwDWus2aTrGTqYqMJTihR4a7SCZoAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=HwjqrAbEQOSb1vMbhlg5CDTi0Pq1EFTNOUpMH4gsyKEo1KsVwGK0ih2+zZgrBCdl/fK6LmjOwwXRBf/vZQ1wfdSqQW1+MxeMpjMDEW/xvs6DlH3Qi1G5TUAZymZT1ULTnH5FzwjQjYYVyo46i+I9z9vnIaVGesOJ5KLIintXvDTDUKhmEnyBahTJsacdbvsh5PZqQBPzQgWUejFVPphY0WRyaKwZOfbXHoKyvYbU3BpTUk08RTNOwCBwxXc+ZG993OsbX0jMZPM4gOe2HtSINGGkFjwL1QWmUE6/Eqrjj8m7LWntvN3LMMoHi8Y9jpoNGF838Lf0pOu2jOl9YJIZcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYcdBHIqFgEvILxmZRBX4ED3Al8Q+GCzZear3xHG+wc=;
 b=s//xkQB8fU2kIKADvcGrxuwxv+BCPlGNNTLxL3oRNsv+PEIFDIsOSpuC8eYlctmLJB0/WI/j960McP6c7di5TvPBQOPo4ujGDb2RsS3oi15prxOn4OmfygLns4tEfaG4Y6kOoC10+o1XjCTndC6v1WgrzXU1XB/qJQ76XlYfiud5f/aQ5Jci1pywiQDejhHnQbUqdLAU2IxgeDT2S7SI0EJwm3d1ajKlr0Qn6PjRI5ZqhZDbWh0+EnnneVoSTbxSm9pCV1QiIYpdIp9vfaVzAxycx+Hi/gk3pQjqO4+BYDM4V790sg5bP6NUWtuDx88MzFdy5kPQ8GYVdCKxJFt38g==
Received: from SJ0PR05CA0045.namprd05.prod.outlook.com (2603:10b6:a03:33f::20)
 by MN2PR18MB3591.namprd18.prod.outlook.com (2603:10b6:208:264::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Tue, 17 Mar
 2026 19:52:12 +0000
Received: from SJ1PEPF00001CDD.namprd05.prod.outlook.com
 (2603:10b6:a03:33f:cafe::a8) by SJ0PR05CA0045.outlook.office365.com
 (2603:10b6:a03:33f::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9723.19 via Frontend Transport; Tue,
 17 Mar 2026 19:52:08 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ1PEPF00001CDD.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Tue, 17 Mar 2026 19:52:11 +0000
Received: from axz-uw1-build-vm02.corp.axiado.com (unknown [10.14.1.22])
	by smtp.corp.axiado.com (Postfix) with ESMTPS id 8FE524186B5B;
	Tue, 17 Mar 2026 12:52:10 -0700 (PDT)
From: Tzu-Hao Wei <twei@axiado.com>
Date: Tue, 17 Mar 2026 12:52:10 -0700
Subject: [PATCH v3 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-3-fbf790f3f711@axiado.com>
References: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-0-fbf790f3f711@axiado.com>
In-Reply-To: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-0-fbf790f3f711@axiado.com>
To: SriNavmani A <srinavmani@axiado.com>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 openbmc@lists.ozlabs.org, Tzu-Hao Wei <twei@axiado.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110; i=twei@axiado.com;
 h=from:subject:message-id; bh=ObP8N1UtvWKp2CtmzxJN3VKa1vOSFezLpJd8KJulKic=;
 b=owEB7QES/pANAwAKAXgQMF3EWvHXAcsmYgBpubDrb1NM2w7EhoDbqiS83WaFUAYmj1y+5kcQN
 EHMtwLX4n+JAbMEAAEKAB0WIQSZyWINOowtFmDvdYF4EDBdxFrx1wUCabmw6wAKCRB4EDBdxFrx
 16skC/0RprPmiwcCS2bL8Mh0rYwUstnXldyM/hHJiZYaOLyEW8nAvYMNDPTek48CfT6IHFYunPW
 LoIdxswwHU7Fm+Be76+mwyRDuD7ur4q29IPQjj5Cv16Q0A6QI8lJSWD8O4Sk4/feJim/0OdB1iU
 hjqn7ZfBWuhiz+Mh6XSv3FLiv5a5h+UGv6qTDUCdvPRFzjaX/yLD+dgTso0UrnW6Z3Ru2La8nSJ
 j9VI43BWYUKTACRgwzXjpZWieeQWGWJNgbHavBOxMBPBoT6rbLSsGBKQVv4XeccfarwZvaOus/7
 j0T2VxOkGv2WuSvpdKq/pYzjLwdrdjGkavNyNe2l9N/FYBVR7jIFr1OD6OpYqnc8K+cImh22GmG
 PxeDHlpcXjbaPURyG652bu3Za5zP5UgRGTO2A8tmPew61fxvpCps5pOdI+VHrziXIf+8YjeHBPO
 7+rvs07XYMe92nTr5oKmfRxWoxqoaw8m9ClkttuGg8t8Ruu/Y2jkVdK6mFyhw1lCq98rY=
X-Developer-Key: i=twei@axiado.com; a=openpgp;
 fpr=99C9620D3A8C2D1660EF75817810305DC45AF1D7
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDD:EE_|MN2PR18MB3591:EE_
X-MS-Office365-Filtering-Correlation-Id: 87108a5e-88d5-4586-69ad-08de845eae40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|42112799006|82310400026|376014|7416014|1800799024|36860700016|22082099003|56012099003|18002099003|13003099007;
X-Microsoft-Antispam-Message-Info:
	nKqhlNenAiXIMD3pICwNNEZH1eiQ6mMbOlkttW/I2zKlAF5KvJI+PbDWLO+knF3Ld365pssmYhMofkiiO82QyMx4HF8p/e3hx0Vp6r8hT7OWxxrT0xZ8n0dsFmZei5Pv696mQySZAjKi//Pu7XFD1d9G29YPK2lNIJP3XYcWw4X1Zbu2A7gfXDYo2uLuWz8ENbxTnNm1RBmPPRLg/VXRr+AQlOGxi9P3i2Usr39CoFZ0MO7WIzCXSsMZb68JKxJfc4G1IAVOKVjApjZy6Yzn3T22RbltAlLh1+bro/jFEenEE1cLXQ+gH29LqKvuj/+CaflUuUi0pug7oXWR9iHAwkF0ihsYsA2DALaHsLMrkyLKzBwuZa02+P9sB5y8R3e6he5IoytZZcIoQlzlZQ+LpDDF1GFkAjkkjHnyYITOR6UhKYXG9IXVWa2X+Iwe1Gkm+wDZIYo0Q/4BtTxzuiHAjv+tcst8pflBpmsmPQZKjNdmMEl2ZXFLBA5IbWF3pjqS83lE4nxIwQVqTwEYI6+IwcJwXl2vxarrHaxYNWBhR8WlZwYuMF2GDGff1UoPcyQC3rm4xGoSmeniHCgFzHi1ui4OYe5a5zVLW06WJG9E0+nAqp8vP2hcXih/igwyPHEvylGcfJnA3RI1sbc2hAc1Zxq0n3bGso0KjEYIwar+rkjKqOGeXgTNLNvhH8B+00TYc41L4mSUziUZWDnP0AocYtAvauzACLO55r+BwHihoQiMF8Hg4tLUK2jzlEEjEcpiE22AAFxSBXydsvzR2fE+uQ==
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(42112799006)(82310400026)(376014)(7416014)(1800799024)(36860700016)(22082099003)(56012099003)(18002099003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8NnNlaCbU8nlaHc8Nbw7RX93JqV6HuX3Pw097U8DaOg8W7FDxNtBom+0P01BSFFKfgFVwmpnUcvOU8zWlMxxCVu9i2znOzpL/FvKZ6XmcKCPVWTcQU//xV/QRSXflvxv6x/BIQc/dLSOoKlU6EMbm2501zqHYsgTK5Etdzb2EonTzKFrcwzaMezm46irUR0HcvMdBnLKVcofuyRmhCF7iE30UjfixVBgVBJLgpazGVSg3VhhDwfKN9P12vX3ORUXUvMXR8Fog51ARsvsuyoCGwAqkZ7PpngngKC9Mo83HoTSoWSZXWEuKl2Zl7A8lMyu3WtLxZ0PIijgf7Ek1wl5NwAEMjs5SjkZbZ9pobzN0cFjP8TwHqbMh6TPfQLk35lnyLeM2xRX+WmPmRNNFfOy3mxutO3WoiF2JnTRLO0ca2a1Pw1yFZspIBbqSo/4008r
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 19:52:11.7923
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87108a5e-88d5-4586-69ad-08de845eae40
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CDD.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3591
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email,analog.com:email,analog.com:url,axiado.com:dkim,axiado.com:email,axiado.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[twei@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BA362B1D85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add SriNavmani, Prasad and me as maintainers for Axiado AX3000 eMMC PHY
driver

Acked-by: Prasad Bolisetty <pbolisetty@axiado.com>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 67db88b04537b431c927b73624993233eef43e3f..c33b0aa94de81c89b674e44d4813c4e3b95b7b2d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4254,6 +4254,16 @@ W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
 F:	drivers/hwmon/axi-fan-control.c
 
+AXIADO EMMC PHY DRIVER
+M:	SriNavmani A <srinavmani@axiado.com>
+M:	Tzu-Hao Wei <twei@axiado.com>
+M:	Prasad Bolisetty <pbolisetty@axiado.com>
+L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/axiado,ax3000-emmc-phy.yaml
+F:	drivers/phy/axiado/Kconfig
+F:	drivers/phy/axiado/phy-axiado-emmc.c
+
 AXI SPI ENGINE
 M:	Michael Hennerich <michael.hennerich@analog.com>
 M:	Nuno Sá <nuno.sa@analog.com>

-- 
2.34.1


