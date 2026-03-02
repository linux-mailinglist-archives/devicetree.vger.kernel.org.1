Return-Path: <devicetree+bounces-270239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJGeCvEVpmnZKAAAu9opvQ
	(envelope-from <devicetree+bounces-270239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 23:57:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDF11E603B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 23:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 620103091FB6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 22:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D926F282F16;
	Mon,  2 Mar 2026 22:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="SJ9lp3qm"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11022117.outbound.protection.outlook.com [40.107.200.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF81390987;
	Mon,  2 Mar 2026 22:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772488863; cv=fail; b=IDrQl6ezHlwq4x4dvLwaHs6UhS56koitCuQMqQY250PLjQxAVd4mSDOrx9lzs+33toVavD3uftYqR0iquQm+lbHPrWTeJ256YpYxItDdqP+ZLzyeqmwtz0ENIwfW83kION14Dxv3ae/ymLGq2iCDd74/c0SQs8odQkv8Usp0ws4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772488863; c=relaxed/simple;
	bh=bfrtnb/pIOmhmPy7kWbWr0RIm3WxIDQp6YRc3xaK4Ew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cqc1eZPtz/pliiQyvYrvZRe5UuemciwQuPzhJoNoUqUwHmgiaFH1yZhTo18NGVJLv7SboUpcYabm+sag5d9f53UL4tDZNBUARSqTTdamGog0ijBQAvz/wjyyw7quVATHU1hbJYc6+2L2+TNVAFMqhYWgcEylqFlpNCs6OE4jQf4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=SJ9lp3qm; arc=fail smtp.client-ip=40.107.200.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oU3gIHUYmgQxcNe6aWgHX1nNhABSsm2voqoHCuiWVOQzE02JUXAE2YkmSr+S/kWuZQA97HunuWSIQYZVP++aTZUhX+AVWqw4XTk2lPKTyHASNRXg5x3vclmjvqRdC3Bg8lZIS8MlHR0Ttk1FnuABVyUsClnlocePwZ9vQlQ6bgC5TaPruiBYxZ5i/dqKpDJRyi9hyrkAoST3OFmIEX8976hOf75DPzoTAIpkBvsUmuYry/kuw9I1EFKqvoW2pjtczwxfCYanIMLhezT4Qke/drvPGxD2nSHG+7JQ5k9HKX2CTJAW4Z3GO2PM2BFTT5OBiHAkiIjmkq8mUf3UWaQrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNcCn6YcHDsdw9n4c2zD46zCJdF3z6AbHB0REpNNUnU=;
 b=jb7QeK57i04PavYvgHK2VHa5uMJViKsNGKTczN4MJmz7t2nMA0aW3SEXHtsrPw1C75d47ZiSDM7uBCHDmBz9DAXlzZwMNySj7GATiiyQrFNo7Vr8xjK+08B20fqIVHLNISsggwBww1XdWtz87NVhHIHbbfjxQr59ihFWQQ8auSgYJKR1ZH/5RoGN72No9rdZf9LRjtg4HoQublNS7xT7eJlDEnS9PGdnMb3eVvhv8qNgeLPVRw5ZurwsOg0fdvC121i7e9DwfI+I6sfKZP3bP9/+sKKNuYP0CAOwnfB98z9W+5KpS3d8d7zNhGEJddpJh6fQZZfiQfhluE0X8mZp4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNcCn6YcHDsdw9n4c2zD46zCJdF3z6AbHB0REpNNUnU=;
 b=SJ9lp3qmtMUzrbIR3STTQ/L8JMTHx1xSFqAY+c61sGnot+7hslWUhxJAq7Jxj40Cxzp9z7EQyDLKuIxSb5NLFQrIYw52GITDPEbZEGRH7+zjqLKQX/1zvdJDyR6im9BgJad9Kt0FMVMv8JPhKZFkifl4ISqlrLlSnCSPNWbQz1sL3JW2ZvlhRGKljzT05kBiPVaFG4IPJY/u8R/oVTjolhCiMjDHXFWM88RoYteGoBOpkK6oDw9CYkuTPFlckbdsBCavINTkCv1D7y6y2OglteNGbUXPxQTZsEaL//wr1Oo/4vonTyuN+1aRnDVgTofJhpOdHG4SJyCVxBAsMVSX9Q==
Received: from BL1P221CA0041.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:5b5::19)
 by DS4PR18MB927491.namprd18.prod.outlook.com (2603:10b6:8:31c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.10; Mon, 2 Mar
 2026 22:00:59 +0000
Received: from BL6PEPF00020E65.namprd04.prod.outlook.com
 (2603:10b6:208:5b5:cafe::d5) by BL1P221CA0041.outlook.office365.com
 (2603:10b6:208:5b5::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.20 via Frontend Transport; Mon,
 2 Mar 2026 22:01:09 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 BL6PEPF00020E65.mail.protection.outlook.com (10.167.249.26) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Mon, 2 Mar 2026 22:00:59 +0000
Received: from vm-swbuild02.AxiadoRD (unknown [10.4.1.182])
	by smtp.corp.axiado.com (Postfix) with ESMTP id 8968D4186B5A;
	Mon,  2 Mar 2026 14:00:57 -0800 (PST)
From: Karthikeyan Mitran <kmitran@axiado.com>
Date: Mon, 02 Mar 2026 14:00:40 -0800
Subject: [PATCH v4 2/2] MAINTAINERS: Update Axiado reviewer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-maintainers-addition-and-axiado-ax3000_dtsi-update-v4-2-84a5c9df6689@axiado.com>
References: <20260302-maintainers-addition-and-axiado-ax3000_dtsi-update-v4-0-84a5c9df6689@axiado.com>
In-Reply-To: <20260302-maintainers-addition-and-axiado-ax3000_dtsi-update-v4-0-84a5c9df6689@axiado.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Tzu-Hao Wei <twei@axiado.com>, 
 Axiado Reviewers <linux-maintainer@axiado.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Drew Fustini <fustini@kernel.org>, 
 Karthikeyan Mitran <kmitran@axiado.com>, Harshit Shah <hshah@axiado.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1039; i=kmitran@axiado.com;
 h=from:subject:message-id; bh=nAZItiP1XYriDI4padcnM9Rq2NsI91O5+qv87ARzTJE=;
 b=owEBbQKS/ZANAwAKAfykr3bAxbrPAcsmYgBppgiaYJ8TZk9wKhreFTer/ljBlsme2s4zcolja
 359qTh2m4eJAjMEAAEKAB0WIQQykBiJeI5kfMQLrdj8pK92wMW6zwUCaaYImgAKCRD8pK92wMW6
 z9MxD/9JEONK35G1XXKA2ObswEM8CYODO8trOifseAN4WkucIoy3wxtsNp08ZxDnANrRLRt/yS4
 s8U2wcXvk0dY6SHGSFeGgSsG68Cru2Sww/yEP8cAUA6SUMtgdWfK6sW0OgimQla/1XQ7Tz1G68I
 QvxkCbUUdktatjgU6grhheHPu8DDnCn3rfS/G3ItKoBb0/NtVQbkoH/OSfCN4A1dkljmx5vsMwD
 4somh+knbeovAXbfReyca28Fpcg2LJTj33B0P++eDzBLQRuX6txD6VL54uKuM+gZt+38wZpfuQQ
 YpL6Qyt7ST2LhQV/px0t1biDKEgSiPgkb01tGLdSznT5xEz4TomdCszS0yUHljjcxC5j78vhu3D
 tvD9mc5da3gkYTFtWI9KwcK7UhuXCiUCwzeid9+B+mvtGPUx18Bv6HsChzQEH83+ahebACqEYxz
 5/CybSGIksykSU3eIkfhwAD9CKG9M+GgzI0Fjk7l/KWchhplnVPbA1UthWYBDC34zX/hCgEQ/WH
 XmQuD4WfE9s02/+zx3GXPeGd9k17isjW11UENwDOaAZn1ICcNEnL1pFj0iAyb0dXJwJ2nb7xEh4
 wduLzpvMyHMqTqLe3cttbiKo8W7fd2HYY2QX3M9sMoK458fN5N8uLYkwjexgvlYVA63JKXll8ZW
 MowT9euhBtbl5mg==
X-Developer-Key: i=kmitran@axiado.com; a=openpgp;
 fpr=32901889788E647CC40BADD8FCA4AF76C0C5BACF
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E65:EE_|DS4PR18MB927491:EE_
X-MS-Office365-Filtering-Correlation-Id: bc31befd-9728-4c92-751f-08de78a7303e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	gKCm9LN2azgKrDK834uOnWqMwtdozFTyZR2ZmB6ZYg88LCGMzSX8tHfET/hNiNVP+5jyLUKtiuhoZHuedfZ9q3qU7kSnYugNRbKWUaH6NO6Y3tSwPiuSNq6R8zQ+Yvmn/0yidu7Huf2VskfnnTWkKOpCHvFTa9IbjkTY7o7kB16NuFV8WeNHgz7D33PedlDZXIyLu8fBJ6R5qvkpH6sAj39o2gRaeLbfGtuTMDLXs8E8VsK0+SYGsZXzhL76a0Lh6YNFYg0NcttkoYWlunEsSPbP/2c03xfTzYKOpKFRsHcUJgqFox1UMs6z0JSpPSLRAcdiYIslhZvEWvqzxowF+K4yUi6iMVWJmugIAjRefVPTeP9Am/EauqyaTxx/38iqxU3jHFPZCywEdpgFl8/xjsz/6pVFw70K8OKMd0SIg5lUmXWymTMj8T5Mc2jL5jKhmJr2aqvVIOwfzrRNwxDsQNle0ENZ/WJeYwOxdU3qMoPz7h/ZgCymHKKOcbScGun19GhdDZSwEMhcT7TYBH6I5Wm+z9Nl/oqVvUs0hQV0xyr7Ij1BwN578VWxwyuy0G78fHY0rg75AXqlFplXhHMaCEMPhvxKe7lyrT3CCiQLS3cX0sIMlYUMR4ZxI7hMoTPO3y2chTMg1S7kN9brvvZL/JdZekvyQq7CsgMb2zdKAisVPciLUfzlKk9H/+D+0keaSMz3pCBkVGTI19qfA9GiOPbKxmcMDt2moZwNFHCG8tWy/7a8bDA2qK9ykgQ+PBw6Nl0xM5S+KpJG95MSX6Ivfg3BvxGur6/ea2W4AYExrSDLvE8TDYxb+ZtpiBMp5vrdbfZEXtyzAllW3SZCUYzD8A==
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	E/fJRSZGsZAMMlEBpmEGCA3mP1Hl48jIv0JmkeDUYvlVehzS7Xe0F8hOZ7IOrc5eTUYPNeKxVTBVLmgYUFeY9TgELkyaT3c/XfVZS4uNMULNabnRRxRkodP3PUIbY8WTc7bIsE8e2MZAllsb1lQXNAPjXo9Tcs8LUcKr36e6hDHHVwVlMiIzI8wguMTvyd5QGFcQnl1+h5ck5V6dTAKWhMCnyAoCa9uo87PwPBjGaXe2z3Mn8+KaYIgaK2ddEtl7XHVpyERrN4YnpU52WR15W81lwE+SsMQFaV3Oed4dOc1gh17FhlCDFzuwvteqKP+2aK0+MA51uW2fFCny5HVhd0FHF1LPuub0dPZfQyk3qV3JqNO0J4i7dMPTpRMQULVuvxbKVPhEhAJ/xjpxkEqJ243xPRF9ZhoCOpGyGRr/kxrIinKVVXWqoAH0M1iSdFp7
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 22:00:59.2503
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bc31befd-9728-4c92-751f-08de78a7303e
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E65.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR18MB927491
X-Rspamd-Queue-Id: 8CDF11E603B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270239-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axiado.com:dkim,axiado.com:email,axiado.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Prasad Bolisetty <pbolisetty@axiado.com>

Adding 3 new maintainers Prasad,Tzu-Hao, and Karthikeyan
also adding a group reviewer entry for review coverage,
as the previous maintainer moved on from this project.

Signed-off-by: Prasad Bolisetty <pbolisetty@axiado.com>
Acked-by: Harshit Shah <hshah@axiado.com>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
---
 MAINTAINERS | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..52f1228bf137 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2554,7 +2554,10 @@ F:	arch/arm/mach-aspeed/
 N:	aspeed
 
 ARM/AXIADO ARCHITECTURE
-M:	Harshit Shah <hshah@axiado.com>
+M:	Prasad Bolisetty <pbolisetty@axiado.com>
+M:	Tzu-Hao Wei <twei@axiado.com>
+M:	Karthikeyan Mitran <kmitran@axiado.com>
+R:	Axiado Reviewers <linux-maintainer@axiado.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/axiado.yaml

-- 
2.34.1


