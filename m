Return-Path: <devicetree+bounces-276855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO1iESKyuWmDMQIAu9opvQ
	(envelope-from <devicetree+bounces-276855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B14252B1D9C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91ECF319B977
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753B5344046;
	Tue, 17 Mar 2026 19:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="XUQsvmsw"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11022126.outbound.protection.outlook.com [40.107.200.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870A3254BD;
	Tue, 17 Mar 2026 19:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.126
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777137; cv=fail; b=aTHDAtN0XJbWo630lTq6lsN071Uc6b/oVdfrnLnf+ivSOOXkKcrftPK5u9UDeI3MwX00xUJ9svdde8GWlvISzNpMDTqOfWWFm6cohIM8VDYXapEeyKWcaMlw1lURzbhaJRvw6Yxg0UUbIakJZd3K2CwpVTZXqg8l2011ei4m18s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777137; c=relaxed/simple;
	bh=eD+vXBLVffC9hFC4PQp9NtXrpaMuelTcmAAcoMnrir0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RJ035u7J3d8Gd0wy1qRo4oOWc+7MV3drd0BWd3PtpMwfiLJ2SA82trrIbaaAmVBm4PH1EzSXQgirNelS7RkcIk7tvEebFZPzNiU3vmQs4MQYLuVsyYd+Z176mpMfUb9P6xLarUIjqdYlrtuuo3v84Vc+5oMFN4yKd05q3iYq8WM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=XUQsvmsw; arc=fail smtp.client-ip=40.107.200.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zTyvY6NPHpkMAtm5m+q+VRm7yVgpleS6O+jK+dP4IHw7+NLjizFHnoCRB7UK04UAHdsq6JyHyMVssYrsDR/kZO7/QJWMFA20pJQHbdvmrAVJTqIi37am1xMXBb4Tjn90r+kRnlkOzt7Xd5yQ4gpHKHG0hqIFRgifecfX4QDi6CvN8YkE9IzdBlX/SD99Ml0AsqBt7W5votoap9YVMJssQGLKLE9ZKH0KjLQgOVmLLc/kGMJ4DNS21ypmYeRKSybUcnSe9SbaDcu6sjpYuuHwqZV1saG24crY0oKVc257LLklYASu/kz4q6lctrPHhotX0i98fuVPfvCzYgoCdcPhwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=icU09Ylr2KD8jDaQLMVoxNtMKihmqYjkbmjl8x7/O0I=;
 b=TtetDd/euBZwp2c4+TptHQt8qyzQKKQlHgXzmKCkSjVQyKXAzZXm4BTJaVuV1kfpPRqmPaX2wduXY+7Uq66ts4/bqEopYZ8vnW3QeQ64/iEO2Wq1Ghl1dMeSL4y6FXiewNdukI/vlQ/pDPfYeiQjhuL9mgRhk4q73RkSyUKOgEMgiUayTsh9icROFtvDqPlWQ9sOza//WO3/1VRcYpJgOYzH4pcfguIV1RE/Ib4cP5JaKXLb9I6892+fq3M5bcq1SawolyeiBNHaCJj7ZMZOPFz6ZUybCBKOWyb+CTStcJT4r3AoAaZ0cngJuYnE1Enf9eZ54jcaO4DI497cbJ7kcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=icU09Ylr2KD8jDaQLMVoxNtMKihmqYjkbmjl8x7/O0I=;
 b=XUQsvmswP106geq/yLD92q4nd16Z6mniaOEE/AtHNNJcuxUdViRE5/RerjMM/FFOOjgd3u4Gmlrk3BCN11QR+p5lnhqeK9bhGiAzgp1jt7LRZQtXfnV8RCfChDmMnV+SfhKKo+b/1LP1ovJIujZ+ogaIrwNG3HhqN6jB7mJPuiWkTX47Ii55rcqM7ygusSVqkyWnJ5+rivRscP4t/NgG2LXNCmqSt7i1LEh0/+VboJFhNLZAZ5xaEyFVfqWrUyEWV92S6O+ijA2dSlvGpgFdCCogvbjEd/SpoVzPlhRDpve2kjTe0OtrGkhJHTlWU465bA0wB9/yVfUDGTKLhhASew==
Received: from SJ0PR05CA0087.namprd05.prod.outlook.com (2603:10b6:a03:332::32)
 by LV5PR18MB927632.namprd18.prod.outlook.com (2603:10b6:408:35b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Tue, 17 Mar
 2026 19:52:12 +0000
Received: from SJ5PEPF000001F3.namprd05.prod.outlook.com
 (2603:10b6:a03:332:cafe::1e) by SJ0PR05CA0087.outlook.office365.com
 (2603:10b6:a03:332::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.22 via Frontend Transport; Tue,
 17 Mar 2026 19:52:11 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ5PEPF000001F3.mail.protection.outlook.com (10.167.242.71) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Tue, 17 Mar 2026 19:52:11 +0000
Received: from axz-uw1-build-vm02.corp.axiado.com (unknown [10.14.1.22])
	by smtp.corp.axiado.com (Postfix) with ESMTPS id 678484157BE5;
	Tue, 17 Mar 2026 12:52:10 -0700 (PDT)
From: Tzu-Hao Wei <twei@axiado.com>
Date: Tue, 17 Mar 2026 12:52:08 -0700
Subject: [PATCH v3 1/4] dt-bindings: phy: axiado,ax3000-emmc-phy: add
 Axiado eMMC PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-1-fbf790f3f711@axiado.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1544; i=twei@axiado.com;
 h=from:subject:message-id; bh=dmL4+JZi1AdhbhPqTCa4lhbBe/FaZIli85fBevKnbj8=;
 b=owEB7QES/pANAwAKAXgQMF3EWvHXAcsmYgBpubDqpXO8aBQuApYM0CZljQXkyFil0QITpywgE
 V9b5OVTfniJAbMEAAEKAB0WIQSZyWINOowtFmDvdYF4EDBdxFrx1wUCabmw6gAKCRB4EDBdxFrx
 11KIDACh+SSXsun2k1z+niGJiHhIQWlx0ssCE7XNdlUXLp3fxHYV3xZW16HiA383ezLXyqXl2Ut
 0uxqrAtRPn7PGQqMESXWMF09ly/ROTq1kssalzF6BBCEslQVePtWjakDpV+hKbs2BcaHS1Z9fRs
 wcI29oyeSTVRQbgipQ1sMCumEVcg+CCf33zIGRh5PrjeJwKr+90nVMtRZ70HIICqB1eL8tqlJPY
 9kxHI7HtLLYwDKAAqM8jzGDSCYJXU2gASxMKDoiCePheV/NTs+fqwro2SQHzhiYqLw5z+jGqYtN
 1SwsKIrBneAdoiIsDOKw2A4XyHlQGMfpKsd9gpgNE6pcxaWsHs20howKSbneOwS1fT1oRhFAoJY
 JHFTuzrWA6/OVXQcHKe0W8pOiNe7MStFTOEv58wGH0RSC/UZU7dCYCwQ20lqPyJzDr31Zbkq1xC
 gTnGncWftu/FNoST1fyY6/Bkjyh+0Y6AzXKB8AOhZq1Y4T7VNpiDS5uGphA8pH7PYtqsc=
X-Developer-Key: i=twei@axiado.com; a=openpgp;
 fpr=99C9620D3A8C2D1660EF75817810305DC45AF1D7
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F3:EE_|LV5PR18MB927632:EE_
X-MS-Office365-Filtering-Correlation-Id: f7eb3591-524c-4de4-60cd-08de845eae22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|82310400026|42112799006|7416014|376014|18002099003|22082099003|56012099003|13003099007;
X-Microsoft-Antispam-Message-Info:
	DEoKrSOoasz8EDq123yuurF0Z9YrNGlmoiH1IVFJJDZh372npyuQYMh2dfuYIGdOj4qH5lC1fZkU2aChnrfcDVXZAHaC9BYGJS53rty6Hn65j9LIBMbPheMqie9HPu2Bhd5oEUO2q5/hjsqYPBfdjugCdw+YqOlnFBg/5v/t5wkUnzXC36Pw0ok/Wlu2/Bo1sj69qKjpt5qTLDmGAqnek71xwBJtBZRiDxXMaubyOEet+TM642oC3pNX6O00uOET/fETkjnWEC5+CiIDHHyw4L49WjKPL577hmifWOExUC1nhPgkv3k7sw0fjiKMB9ypsFCS0mweUgqRFe7WHJ36x3f4GxXo0LmVO4yrWRafau9/B9flim3SjVHJvizh4UyLPFkGP3SnJsCObP1Np9CR0EFfJgrtumh80/+ATU0hJFQub49J7LIby6Y1H+9sCRLY+ZddBd4T74Aicf74f4DXTkCS5xYgGmFDR9X7+pRYvToyjYMy0KhYvT5FzcFb/mIiP/YlPRy/eBKB6UWggkMl0BdquVuaV2daD0gG+R4urroTNidwADBYUWylkXJNWu/sR284XrvA8hMD8te9w7y2RpW3TtxPX9h8nUZo3Wozus6q/5eLwSkO6nye3++ed7Bgm642mjQgiRl4kYY9yc3hk5akP1G4SXwz8EA71DX0r9LSYqjea0Gl6zfBqtWu2Pm/p3i9faB2OgBLQg1bnaR3NGHo2XwCm8vrZlyK/o64f/0=
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(42112799006)(7416014)(376014)(18002099003)(22082099003)(56012099003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	WCs632pEqGFRN2kLXirjGeqv4wqHIuMcfY9E2tZlRYT5nFgjAFfCaL8YEag+wlZQYuz4Nhg1bThUnIXhfRa6KVlch+Ywy2dPcdBKDGszvgRLYn0mCLaDeZtNa1lRbt51WpwpU2Ncw1C+i7f3zUlZfD2t9IB7UX6TQdiOFsuDfSwNHsXt8z/nyljC0qNK03x6ekpd0fGYbPjuF1L92Z9Oo5C/OTkmHsxSCR+AgXC8Zihccu70xIdD3XuP5dVNv8cMemb56Kr7NzTNImLKu9Tzf53GOuLQHTg8W09wxyoRtPfZzn174bEW3uXbPNdHD52aIFlIifClvnVHaHJrba3WbU85R2kM168PTfOboNT3q/wmzgeyyqnJUtWi4yuLdoTJgvTnQ0pjSifDceTt2SkdaSX7p7X3T89U+X4E9X3V7oBIAqRMaIN/GzLIUsfhzktU
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 19:52:11.5981
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f7eb3591-524c-4de4-60cd-08de845eae22
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F3.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV5PR18MB927632
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276855-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,80801c00:email,axiado.com:dkim,axiado.com:email,axiado.com:mid];
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
X-Rspamd-Queue-Id: B14252B1D9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: SriNavmani A <srinavmani@axiado.com>

Axiado AX3000 SoC contains Arasan PHY which provides the interface to the
HS200 eMMC host controller.

Signed-off-by: SriNavmani A <srinavmani@axiado.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
---
 .../bindings/phy/axiado,ax3000-emmc-phy.yaml       | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/axiado,ax3000-emmc-phy.yaml b/Documentation/devicetree/bindings/phy/axiado,ax3000-emmc-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..61700b80e93f7185e16ca9eab0922fe6bb29fe86
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/axiado,ax3000-emmc-phy.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/axiado,ax3000-emmc-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Axiado AX3000 Arasan eMMC PHY
+
+maintainers:
+  - SriNavmani A <srinavmani@axiado.com>
+  - Tzu-Hao Wei <twei@axiado.com>
+  - Prasad Bolisetty <pbolisetty@axiado.com>
+
+properties:
+  compatible:
+    const: axiado,ax3000-emmc-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@80801c00 {
+        compatible = "axiado,ax3000-emmc-phy";
+        reg = <0x80801c00 0x1000>;
+        #phy-cells = <0>;
+    };

-- 
2.34.1


