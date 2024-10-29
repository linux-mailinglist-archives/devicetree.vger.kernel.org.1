Return-Path: <devicetree+bounces-116804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F969B41DB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 06:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0D211C21AC1
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 05:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4F6F200C81;
	Tue, 29 Oct 2024 05:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b="bzmlYbyM"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2087.outbound.protection.outlook.com [40.107.247.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDDB194096
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.247.87
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730180470; cv=fail; b=rmpHw+w8DZmGJOZthKv3l4im05ylW2UHPw+1DZIvie8qOWc4oG6Ng2O8zezeMtx0JlqIGLsxftHgzjBf0b1hT0aijsJ9C/llZ3/I180rujK3lyz06+J6rmpxbjUnQk7PHTAahKvUBrC/LJSRT9pQEHnIqkPS7nyV92lnfLwOAss=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730180470; c=relaxed/simple;
	bh=y2fGsdIlc0DkrT5Og85SnF05zcgWY0X7XSrDA73cSl4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Lv+Vm5+iHfeYBTA4dDMIHpSSQORs6V+zFzbEcIlwEqCsPOd90pLdiJnuKQks/Cn1NUhR1qEPyADH1bfnultj0TxrPnLM/35XfBoJs1Q57gNY4O9LUCnQBTavgSpf0i4Z39VOLGR4cplxv53sSdwttqclA80YDdnobpdzPS54OUw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com; spf=pass smtp.mailfrom=de.bosch.com; dkim=pass (2048-bit key) header.d=de.bosch.com header.i=@de.bosch.com header.b=bzmlYbyM; arc=fail smtp.client-ip=40.107.247.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=de.bosch.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=de.bosch.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ps4O2LlfLdL/QSYfvzDOK1b0BAjs2P1t4PpBB+q3mvuMiwJTKed8m6aDA2bJ/uGNEot5hZbhcao8oYc+GYzNt6frc5Y8CtG2tNCQJw+MFLWQ2AqbzRU/F5C6ux5TCzp9zypWjwrBlO3CwVtWZhJKpmYAWnWxdM8tKMC4KVyJhFSc6H8h1xed8q8zYES8eWDR5BI4uEOQwvaIZk65d9/ZFVG1G6eqqk0aoDfqLdhmGkQ6SceoxVDJn3v/Gr/nvTpBtD0Lm27P1PaRRpeAtdIj6KYTL8VwAz+rnExPqQjmb/N6fOhhIsmQAfnztBohz8taP05LecUFNY7gYzOjYTUUHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GrQWtz0RTwSAK2Ng4GRR227Zw6oOmgrnoYxXJ4ehTTs=;
 b=RJ68SMBmgR/sTLjML5kppCObo28mUjZTvvH+56UJm+B/y4P6ZLQBPy/bsNJ2JKe2fUqcQzJcWOGqLp4pf3a4IHeduIiPtnEazOqwHfR9qvYr6hq8V9On6N0v2oitiMdVpXOrPVC0CdXtn4yRFRLfQ/VkTOTCsaFpPh3sbMBfbjRouutxLIWEIwwOUQykciL+HthG7FGCBxGTSni2q5XMRAXFVpgMCx1Tmxhj5anVDViKz0A6mShRBLoEBRCiAa6W9EV5LNQdrsHQGv+0LjKo6vFiL/cu++TvIL7aDjI9D3mQfYHVP0rpbp7oSGU9MMV69+7XHAKfrVsaSmK4n1SCvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 139.15.153.205) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=de.bosch.com;
 dmarc=pass (p=reject sp=none pct=100) action=none header.from=de.bosch.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=de.bosch.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrQWtz0RTwSAK2Ng4GRR227Zw6oOmgrnoYxXJ4ehTTs=;
 b=bzmlYbyM6SYaFxJX4fVHIwSUbC5dhI10Wchb+cIZWrT4Wmsn1Uu0cgwaDDrYnKusZXKn1zjru6GcRRGc9tj5bvI8QfPBe5OOe7AOi2trO8teiL24AqX+VmxzrUJUhY8y4Dx/EAm/ZZL4/0ACmvWyB8ApwPlCkHNSbtkeC/nrKeFNWsgknkGhIYQ49nGy68aeBbb4vyBkpEEKLNv6icC5o25IY+baqELRcCWEIfVJsKZmFKX7fWeZfgZcIOXcIB+Zap97MamYVO0k+6zc7aC/mqIrl+TYswi4f+JXku3d31NEYURo5zRBXX+skwbA3JiiLoX4GoJGXK873x6bqrTo8A==
Received: from AS9PR05CA0036.eurprd05.prod.outlook.com (2603:10a6:20b:489::20)
 by PAXPR10MB5614.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:244::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.19; Tue, 29 Oct
 2024 05:41:03 +0000
Received: from AMS0EPF00000191.eurprd05.prod.outlook.com
 (2603:10a6:20b:489:cafe::fb) by AS9PR05CA0036.outlook.office365.com
 (2603:10a6:20b:489::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.29 via Frontend
 Transport; Tue, 29 Oct 2024 05:41:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 139.15.153.205)
 smtp.mailfrom=de.bosch.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=de.bosch.com;
Received-SPF: Pass (protection.outlook.com: domain of de.bosch.com designates
 139.15.153.205 as permitted sender) receiver=protection.outlook.com;
 client-ip=139.15.153.205; helo=eop.bosch-org.com; pr=C
Received: from eop.bosch-org.com (139.15.153.205) by
 AMS0EPF00000191.mail.protection.outlook.com (10.167.16.216) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.16 via Frontend Transport; Tue, 29 Oct 2024 05:41:03 +0000
Received: from SI-EXCAS2000.de.bosch.com (10.139.217.201) by eop.bosch-org.com
 (139.15.153.205) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 29 Oct
 2024 06:40:49 +0100
Received: from HI7-C-0001H.de.bosch.com (10.139.217.196) by
 SI-EXCAS2000.de.bosch.com (10.139.217.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 06:40:49 +0100
From: Dirk Behme <dirk.behme@de.bosch.com>
To: <devicetree@vger.kernel.org>
CC: Dirk Behme <dirk.behme@de.bosch.com>, Yanteng Si <siyanteng@loongson.cn>,
	Alex Shi <alexs@kernel.org>, Gaurav Minocha <gaurav.minocha.os@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH] docs: dt: unittest: Correct SELFTEST to UNITTEST
Date: Tue, 29 Oct 2024 06:40:41 +0100
Message-ID: <20241029054042.958775-1-dirk.behme@de.bosch.com>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000191:EE_|PAXPR10MB5614:EE_
X-MS-Office365-Filtering-Correlation-Id: 70e28e74-a12e-406c-3dfa-08dcf7dc46c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L3NVS1hPYkxNSDdkM3pDN2VEM2pPaGtiL0lFbS9sUzNMWEhTOVh6TnN2QVRp?=
 =?utf-8?B?MXhXTjgxQkpCcHlGMnlHTU1sOTdQRDdZRTFURFNaTUtoUWJnOHhJYWxHNlE0?=
 =?utf-8?B?L3VjeVVQUkQyZjFNaWtCTFdkdzZ1M2t5QlQ1NUJ1dktPVTFrQTdkY3lFUDdi?=
 =?utf-8?B?UVQ3RVBwcHVHNUl3WTQ5MndGdE9KRStQeksxN2tZcDA4WGttbFk3MTRmc1JM?=
 =?utf-8?B?VmREaGMzbS8xS3dDdVNSb09MbFpVNWxJNGlWZWlpNklQN2M2Zzh2QXVHbVVH?=
 =?utf-8?B?Rm1pUXRNZkR0NHlWYkE4WDFDdUREd0pTeXhjSURiTnBaZVhsQ3dRRWR3dStK?=
 =?utf-8?B?SWRMSStwQWtDMk1aeTlhUWNoSk9ja0RMTmEzdWlSK2d0ai9xZWhQQlh3T0h5?=
 =?utf-8?B?bHVvTUxqdWw1MnByU2VTZGpoMWU4VE1JVzB6NitvRi9HdTA5Y1dnT2NPRnNj?=
 =?utf-8?B?LzJOYm02T21oSTQrZDdqSEhhMTJxdjk5aklQeWxOaFl4TEwrS3pxQjVJQndp?=
 =?utf-8?B?N2Q4cHltbmRPTVQzaVljSmtoemgxQzk4bGtpcVJ5MUY3d3plN3NNMjdmeDZq?=
 =?utf-8?B?UmU2akJxWHZVNW1OSno5WnBTOXJBNmNBYy9hSVBsNHVlc0ViVEVxbVowbjNN?=
 =?utf-8?B?cDdDVksyZWk3cUpqVTVhSndJVkxHY05LelBLWXdLR0F0bFR6WklyUmVLK0NC?=
 =?utf-8?B?M3FWc3h1MTlkVlBza3JxeFdKSUVZVXVRTGZZODlKVlRvVkYzZ1JNT2gxSGRa?=
 =?utf-8?B?WVpSZ1U5M1hXbEpHTE1ncmNWbmlGSisyNTEyclM0U0prYVJDSTBMeGc1dzRq?=
 =?utf-8?B?eGUwR00yMlpuM3ZmZ0Y0dGF0My9kUVJ5NlRQWWZvemxHYjQ2dGxhZ1pBamYr?=
 =?utf-8?B?Tm5GUEwzQlc2Z3JLUUJqdmM3QlJ6QW9JV3hQQkkxSk9YMXZ5OW5nZCt0QjA5?=
 =?utf-8?B?NkJJc3pRb052OWltQ2hNZEg3Ni9FK3lzVVlMTWdiZExjRjdUdzlWVUgrMjJs?=
 =?utf-8?B?ZFZ1MmpjWW13bVZIRzBxN3JWOGltMjUrYXowTUh2QklLeVF6dFN3eUtpM2xh?=
 =?utf-8?B?RWxnMlIwUllzUW9FYitWR29VMHRqWm9PV3hnZFhTVkJPSC9NaUxkaERNNkJa?=
 =?utf-8?B?Uk50K05qeitKclhGT1B0TWhqWFllNG1sNTFRMVhmVXNPdDRVS05HRTNHM3dK?=
 =?utf-8?B?bk1PQlhMNWJITDVRMmxCSklUYkNLNklwd0w1YWh5YkxnT3VMTHQ5Y203Mmsy?=
 =?utf-8?B?MmFITG1mL01UOEpHREN5dkF2ZDB0OUxnUnNaUlRBaHgyelhyVkpmMzVKQnRF?=
 =?utf-8?B?UG5qT3F0WE0rQ2dZTzQ4TTVlMzBaeXM2a254Z0drZ2ppSllMd2tLN0N5QWRU?=
 =?utf-8?B?bHNiOFl2Vm10K1ozVFp5c2lHdDZ4TFlGenlSdStnY29DdmpJU1Q3dmIxVzBu?=
 =?utf-8?B?STh3SGU5dVozMFJCeG83RFlTN3VSOS9BLzdLSDhpZTBYOGpxa014L0tjYmdn?=
 =?utf-8?B?aVZBNzF4MHRlUi9BMFR4WUprUDFXeDFqQy9keXloZGVGandUUzg1eklqT0FP?=
 =?utf-8?B?djdXYnQ0cnpRTkducWlXVFNrV29QUnBWazZ3Skl3bFkwNFZCUnc1NWErVTZ4?=
 =?utf-8?B?dkZxSU54c3NlREdYbTF2UEZLNTZVbEdQekVqNHV4N2prMENidTR1enVTbDIr?=
 =?utf-8?B?Vm9YOU4zTkRvcnlJb2NPSzEwZnZsZWczeVg2QXBLOVF3ZjZ4Zy9aRVZCenpn?=
 =?utf-8?B?TVlENi9MdjBtZjFyVHgvT1B0QUNCMTlyUk1KNmRiM1YxTTVacE5lVUhYbWJz?=
 =?utf-8?B?bXBVeVY3R1FKRlk3QnhpcTdFMkpveFYvaXNVNW5jNVArYm5zVE1ZbG9LT1dD?=
 =?utf-8?B?dkdUUGIzMy9JY0tkRWp3V1FBMHBNZTNXRXhVUDFTeTZaNHc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:139.15.153.205;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:eop.bosch-org.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: de.bosch.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 05:41:03.0921
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e28e74-a12e-406c-3dfa-08dcf7dc46c1
X-MS-Exchange-CrossTenant-Id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0ae51e19-07c8-4e4b-bb6d-648ee58410f4;Ip=[139.15.153.205];Helo=[eop.bosch-org.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF00000191.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5614

The Kconfig switch is CONFIG_OF_UNITTEST. Not OF_SELFTEST.
Correct this.

While at it replace the outdated file list with a link to the
directory as proposed by Rob Herring.

Cc: Gaurav Minocha <gaurav.minocha.os@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>
---

Note: I'm unclear how to handle the translation of the file. I can
      correct the OF_SELFTEST like done in this patch. But not the
      description.

 Documentation/devicetree/of_unittest.rst             | 12 +++++-------
 .../translations/zh_CN/devicetree/of_unittest.rst    |  2 +-
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/of_unittest.rst b/Documentation/devicetree/of_unittest.rst
index 8864b52d1195..a6c05962add3 100644
--- a/Documentation/devicetree/of_unittest.rst
+++ b/Documentation/devicetree/of_unittest.rst
@@ -50,15 +50,13 @@ from 'scripts/dtc/of_unittest_expect --help'.
 
 The Device Tree Source file (drivers/of/unittest-data/testcases.dts) contains
 the test data required for executing the unit tests automated in
-drivers/of/unittest.c. Currently, following Device Tree Source Include files
-(.dtsi) are included in testcases.dts::
+drivers/of/unittest.c. See the content of the folder::
 
-    drivers/of/unittest-data/tests-interrupts.dtsi
-    drivers/of/unittest-data/tests-platform.dtsi
-    drivers/of/unittest-data/tests-phandle.dtsi
-    drivers/of/unittest-data/tests-match.dtsi
+    drivers/of/unittest-data/tests-*.dtsi
 
-When the kernel is build with OF_SELFTEST enabled, then the following make
+for the Device Tree Source Include files (.dtsi) included in testcases.dts.
+
+When the kernel is build with CONFIG_OF_UNITTEST enabled, then the following make
 rule::
 
     $(obj)/%.dtb: $(src)/%.dts FORCE
diff --git a/Documentation/translations/zh_CN/devicetree/of_unittest.rst b/Documentation/translations/zh_CN/devicetree/of_unittest.rst
index 11eb08ca8866..5c1a8e0cfd16 100644
--- a/Documentation/translations/zh_CN/devicetree/of_unittest.rst
+++ b/Documentation/translations/zh_CN/devicetree/of_unittest.rst
@@ -40,7 +40,7 @@ OF Selftest被设计用来测试提供给设备驱动开发者的接口（includ
     drivers/of/unittest-data/tests-phandle.dtsi
     drivers/of/unittest-data/tests-match.dtsi
 
-当内核在启用OF_SELFTEST的情况下被构建时，那么下面的make规则::
+当内核在启用CONFIG_OF_UNITTEST的情况下被构建时，那么下面的make规则::
 
     $(obj)/%.dtb: $(src)/%.dts FORCE
 	    $(call if_changed_dep, dtc)
-- 
2.46.2


