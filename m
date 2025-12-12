Return-Path: <devicetree+bounces-246118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9736ACB8BA1
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 081EC309D431
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6891A31DD98;
	Fri, 12 Dec 2025 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="ZLJiIG0E"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B839731D72D;
	Fri, 12 Dec 2025 11:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539333; cv=fail; b=coCZf1KTSEpT3CIaNJ+F4kxh+s0M257X+DsvFZTsOc1aWOceIen2FJiP5O6sFrMAcL83GBRbJ4ILy5Xj9aheu+sWwY63npQ7kzTg6sCYg6U+L3uuBRDlmENaFpi2zrv5bSPIrdf/DCoGaGUUdt/ATHr4/BcOQVJIg+zt6Pnu4Eo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539333; c=relaxed/simple;
	bh=sAN+BlR+XBsAy6d79NSroWzkahg0pMf4Pm/UrkpCKow=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=uBwFD/zM64v8o8St2/0rsUaWI2Rjy7BokOjsBbH7ss4lPLWYt2uA8NO6IpzkKQFxZpnFd/P1aQOEtwon4S+hhJkoN4ANDoIgundzivoEEzF/M5xAOzb7c4+GBCQdXd9XqgI4NSiHLQm1GIVayy+RvtHPwMMID0KWJSz8/6yvcpQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=ZLJiIG0E; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNWy2kp2C1b7czGgBuwLAENw7wxDcBXPneKlBXkNuBH2p8ofNhPb9Rs71aClOS2RRBUyIHEwNHNo3VM8AchbPgVu1ws777yugKN3RbdFhAEj95QCcK+g9zx9wUl480lveF4f+36ZzJhtnSBMfwC+cMcCsPDoGVnh8wIeO1EeN1xvK5+kLvGTNh2Nu6QB/ui1zviXFCB+olFnurhMQU9BAvUxf/XyBNGp7ai2JGnSWPWZEOWb3AiAzEkB1oFHiNylmtaxwbpNTlYRXap+gg8Uq9mIrgG3VXqaSw/DesAvkl0UXGKZpTmjLH0NaW9hQ3yzC8iRVPmvxMeE92rTDxS5tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZp+Wt8kKlLOgcCS3AQT/3Z2N40Ud7BwYvA7TWLp1ME=;
 b=kzuT1yBhXMsF6rDtK8LFGALwKnrKedAoPVbFNMMqN7w4BxMlRaZ0KSvEJi4y5MHfCNjnJ272XLPMwqKE3XW47aw9E6mhIGHnfbIxIcbPP8k5qxdHZMUuV/mPC+8CXUG8a7bSqOVMMSjgAxJJJiTCFWqTr67WZIjPglIk7JG53NoCcn+Zc+WIvyMwtQBL87kQbK5MYrdyEQnZN3w5GYwAJemtKE8QjE25fFOhNBYIt+GVnkXICObPHmKyzXrvgZlmmK78wkHge+fBKboEAy5l/19Y3QJjIsmpxdeRyXR7odsVuoBzRsFn3zJ3WyJWDoVXK+McnhUoVBp//IV7ajQCfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UZp+Wt8kKlLOgcCS3AQT/3Z2N40Ud7BwYvA7TWLp1ME=;
 b=ZLJiIG0E6eMwaQyv1YTIXwKy+C06IgJsaXLprrsZA6UMXVRx7zxtReFNbbkM+uJg8QCQ5lpl00IvcOHi5pvE7MOp5TpElJut8eFLuU/2gNJo+MD9tOOHkP/1ybytgdzD3oa2/+sd6XxmRU7n9KsVOXUKabh2s5YTLnlYijB/wDLRlDVVSYN+tvON/5edGn+HTYVMAbKjhHIZv0/MPIzAyrGXIHOHumYdJa/s2i0whTlC4gaP0TXyESS13mM/arBS7iwRQhJVeL/5ayk8zVmR7IPnRM+fCGT0ToEkokLQJjU4DqimpPq4iyw5orr9xla8w8NKc9GSRbPp+nH33AoSOQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by SJ2PR03MB7473.namprd03.prod.outlook.com (2603:10b6:a03:554::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 11:35:28 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:35:28 +0000
From: hangsuan.wang@altera.com
To: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Lee Jones <lee@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: [PATCH 3/4] arm64: dts: socfpga: agilex5: add fcs node
Date: Fri, 12 Dec 2025 03:35:21 -0800
Message-ID: <e47defe7ba2a9616541287006a870859019d5791.1765534135.git.hang.suan.wang@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|SJ2PR03MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: 24704846-6b53-44c5-72ba-08de39728c8b
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?tfQcBbRc31TlJqlUxQkvTH9XnJIGoQweEzo5RfyqZtCuH15NaspE8B2T0mLJ?=
 =?us-ascii?Q?OofM0p0gDSXM6ccgZTwQkuqQXh+uyJBR+Zma8hRvHXtlVkJ8+dXbpajteWbf?=
 =?us-ascii?Q?VkGD8MOlR1yKQf6zoP1vC/3MhlWISTeR0t9RM7DA2h5WOGmlVq+EunCjy9zY?=
 =?us-ascii?Q?lWLfWijq8sOWg0S8+nLt+tpCddlgprgbiFepHwR7BC0ZRaPVAs57DR9zGys3?=
 =?us-ascii?Q?yLlBlMfn68seTgdyQbz5Woml7hT0JinI5GnEU4rsUCUpd7P7ZXVKytjphYy1?=
 =?us-ascii?Q?yZ+FgxS8A4rxCLPWToazXU4/jX4xZn0nSK4nHC4jXJ1x6WMiLBxvcXRDZcNJ?=
 =?us-ascii?Q?QIW3IKPHnr/Ibt5/gVHENsxiCCXxLopecOJG+jaWGUGVD4/cpe41E1oslzwM?=
 =?us-ascii?Q?Dg9kCd2mHgDZuCGlb13r1rSWTwid2yV4fWZsHvulJhJfHZgPl7PlWxYIfmAJ?=
 =?us-ascii?Q?azLTlfUYsEZQnzrmeCnbV9WpLOdelCE7GxPhJEK35StLXNABODTMkO0Ufj6e?=
 =?us-ascii?Q?mkIx3OEVQYgsuhWfXc7/Rn4fJGmHEpDBJ+DUAqrk3joryYNgqcp3gnOIiZZI?=
 =?us-ascii?Q?rhCRB45mOqYngLx7PP0wQSP4vr2UjnUhQ7sYxiYJ1L7GvKiZOr6DqTt210z1?=
 =?us-ascii?Q?rxl9A38sgAvO5ctO2xOzcqjgIhu/QGzLou6dpnF+b2xv04d98Ku1UxSxgacG?=
 =?us-ascii?Q?93bw4pD5lknfDdNPjaAFU4VoExoLvVAUSXXQHS4ZNXftc5dywGdgO8AxY8Kc?=
 =?us-ascii?Q?WaLTZk+v9J3lxXtwEXorkmGXcVFyyNhGQW7E7l/A1NdAcmXFs/KO+i2+LywA?=
 =?us-ascii?Q?6oaCkp8Pwy1BBXrViNMZ1pOcpuXWpdwgqG6jpZ8i086gxF3JGP5KNt9xuTKj?=
 =?us-ascii?Q?BZOEJw9C1y49hZDL2FNpuDbfWpfHd/kuoxIfMp4xrchUihYbvMXtTxcI7aYG?=
 =?us-ascii?Q?WvhLTKKJuq205C1HFrG13fgwA2Q/+Rr8LF+KwB4AudEXQ61U6gVP23POy7/g?=
 =?us-ascii?Q?8Xmz/POOKw2AEUqSZLJFte9VEWmTmdoMCWTni1HaTf7wkO7z/DeTe+T/S+3L?=
 =?us-ascii?Q?28fj5H1M1HMpGA5GFovS3fg4H0g0YFoS90wl7waQAnsK/NxxgF/lvqKaq52X?=
 =?us-ascii?Q?QQ8yrA5sZUsrj11ZbcuOy1hf2lo9dVA1aQwC2R/JV/IibHJIbaXsH2pQbA45?=
 =?us-ascii?Q?zjkVXMtoznCNQOqSBJzTw31YIVcMI1Paxbmpr1B8SEW2zU7dmkQmrb4DKv3X?=
 =?us-ascii?Q?hfZbS/PoUd7GvsbSbw1US2+gwvnbQTTkendnlGMROHQHaY3RGbB15M+3mwbI?=
 =?us-ascii?Q?NycFxbLb2IJU73rcZ6YF/6NqV5TZn7tGFDyn3gmQ8PbPPX1SOgXdHbh2rJDb?=
 =?us-ascii?Q?OjtCb5cXL19B1Fg0Yj4rXWcVlfbgCWxkKXclR0AWDP+7pRDTZ2Hi+bV6k2/1?=
 =?us-ascii?Q?4YO9Omz3aN/wfzjprCAtf9IcfeK59khx7PuI+dD5xIYly/mpXWunDeMetNfW?=
 =?us-ascii?Q?ff/xoXJh/eLDBUc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?wT6tQv2awUiug39IkeRVlH9QUowPmm27gd+SxaAKzTJke/pCekzk8rgLVYTD?=
 =?us-ascii?Q?wXm5KMnYyREUbLGaZ1b+TtKL8iaLLoXAkTkZM4/Mq8lhPlM5vZW5eDp0f4DF?=
 =?us-ascii?Q?0IG8tFEP89s2JYDBhEuYPQn+YTr4ChgomGGlv3Yt7evwvnzXBjUX6ekfaLse?=
 =?us-ascii?Q?EkLJ/C024GiMaJ7yxXmqVnLjc63OYwLHaSn4KDn8Vrda3GFjI5H2awiW8dyr?=
 =?us-ascii?Q?JIIODrhpBPNULJOR12ea+ZUBwmnffG93MsRVLcDCdjG0wNytmQAM6xrcjV49?=
 =?us-ascii?Q?JmECzn6oecZLWepALiOzHHdhBmMXPF0mEYPAlzS9jaru8TxwUtSkN65wCp7r?=
 =?us-ascii?Q?Irzvvgqj2iEARw7OqWSoDaUiRRGk5uHuFXCcbTCbNDv4vYoCW9ssWnpQC3xd?=
 =?us-ascii?Q?kldTy462cpIkIUNA/FcKQhaBQhZkPCyVM8dszZ3pFmwaA13rgr8AClhclq30?=
 =?us-ascii?Q?A2n5FX2ofBTdJ5z9xMtiLJKLPnVa/i563XxQg5d//S25+AgtI0jW9+L9dev4?=
 =?us-ascii?Q?OHmZiED4GxI3sV+f58lybUYNDHWkX8O86ERYSahak3qqQI+FnyYPZ2EnMTkp?=
 =?us-ascii?Q?peuIMFnQao2K3AWkgo7FuC4fpVlmVtc8MMBeKuAnu53DPkaoGHicQ7ypQZSy?=
 =?us-ascii?Q?JXk5rTlxl+Pwsg/MF1sGgYAJ62uDJ+/GVumBt6Gitfggk3Cxp7Yob5yNJRQ7?=
 =?us-ascii?Q?ntHnBHmytrk7EADS7NMU5CTR/3yVGpRbn62VWQ64Q0HsS1pC0WwxXhtu4Ega?=
 =?us-ascii?Q?7wrWaFXK/fsuZYI9is6M5PiPUI8rcG3XHEwoFK+eP1/wIMNiymUcpMNl+eiQ?=
 =?us-ascii?Q?vvRT0iuR0L65MUVqOQPu3Xq/sWsWPs9qat5MN9vrxvQnEJinoBZLDZMr7yfF?=
 =?us-ascii?Q?O14Z/BxsB5XHPfIlEPRFdz682KfbxmJekQ4CmE5HdujrDgpbYqY6VCmgrl2Q?=
 =?us-ascii?Q?SGuoqczGbIdkVRXQEPGb2dVwckjKyPG4OtIAUNVZnqInbkNaJQpk2fRc9K6M?=
 =?us-ascii?Q?iVwaZ20R3XqpLrXyAgsHVGE3i0CVEE35nyNvbvnlnn8+eDuyh4+uhhSYiaM2?=
 =?us-ascii?Q?ESEOsL4YB/peK8s2lCDUrxb7xyAQgkQkg0O4qjl1bRoX23RUZKpA020i2AM5?=
 =?us-ascii?Q?2K79aIrgspMydrT2pkWVeq9/w+CqFelbuR4u1AB3ulPlMHdKIOLo/xdq+0rq?=
 =?us-ascii?Q?UYAECaFBBuB0XQ28qMk+V5+xXuflea78txGGLdkKgkA0Vt98js9mBEmqqzfF?=
 =?us-ascii?Q?xJbXSX91px+zgI5DcZPQGJcYam+6ViZZ21shns5w2VBWfaqmZgEn5MndPoxo?=
 =?us-ascii?Q?RqqA4QMID+3Lc88yoeMVEKalkQbaYJ1ERU7bfiKUCofyDWsStlwnuETYHAXc?=
 =?us-ascii?Q?Tfn6Y/s/tIhEuK2td2biYO8Qt5IEP1BvyNYX/tJ9eXpcRg5Xa473UqtfuFzR?=
 =?us-ascii?Q?H4z/9b10AzusOUc+biJwX05PZRqNkQcm0Gk4od8nMP7NHmFsp5zAYxvuua5s?=
 =?us-ascii?Q?7ViNU4+XBhLFLAvurKwQTFvGrRulusplQ68wsFMSMFWh5oChxNPwlc0PKyZ7?=
 =?us-ascii?Q?ggShi4Iih6BKX54F0tnVlP4g1uFAvxKtpkdqMu9ZD4YeJnOrDcr56eBEnRa2?=
 =?us-ascii?Q?Vg=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24704846-6b53-44c5-72ba-08de39728c8b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:35:28.2543
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DLdKSOC/2KrmuPNSR0Nfi8jOST4p6q2zEgPcGMs7TvQL8by0ptPJewp+cdW9kRTwUNuboJui5zoEzHKbwtSdmDKOeq7Pzen5TDE8D563Adk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR03MB7473

From: "Wang, Hang Suan" <hangsuan.wang@altera.com>

Altera new SoC/Hardware FPGA Crypto Service (fcs) provide
hardware crypto features through mailbox. Hence, enable
fcs driver inside the firmware node for agilex devices.

Signed-off-by: Balsundar Ponnusamy <balsundar.ponnusamy@altera.com>
Signed-off-by: Wang, Hang Suan <hangsuan.wang@altera.com>
---
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 1f5d560f97b2..05520f819ea8 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -90,6 +90,11 @@ fpga_mgr: fpga-mgr {
 				compatible = "intel,agilex5-soc-fpga-mgr",
 					     "intel,agilex-soc-fpga-mgr";
 			};
+
+			fcs_config: fcs-config {
+				compatible = "intel,agilex5-soc-fcs-config";
+			};
+
 		};
 	};
 
-- 
2.43.7


