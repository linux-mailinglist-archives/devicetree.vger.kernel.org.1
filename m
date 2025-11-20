Return-Path: <devicetree+bounces-240587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A3AC73022
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B14CB348BE9
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D7430277D;
	Thu, 20 Nov 2025 09:04:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2112.outbound.protection.partner.outlook.cn [139.219.146.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA253093C7;
	Thu, 20 Nov 2025 09:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763629479; cv=fail; b=agPriqwMQa0KQLxd2nirntFOjNP/NfM2e4/4pYwqOIxiN1h04V7tf2KR3u9jnf8lJERIXlvKFxC24LHNPqlBbhFeQOVKDWhstEl+058XYmHWle6YGF2GKQ2fIbuQHmkDd10X1agAKl1imFv2cF6qf/mghTCkXp9EWF/lFhzmQIg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763629479; c=relaxed/simple;
	bh=dZvdAOKsKn4xUz6m9MEOpO0j6/uJ8VN0HQy5nJL/ABo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DB9Jro78cXIqm6wHkCfS7ekuCz3fsF1yy6r8E8ssalFaGMERsYrcmH4ZknZol81KzTgDYU/bLLlYOEEhdpTcYzPunMIi2ak+TJsR+DbWEdk2ZiJryP4N39AGl19tPYouP2orXkMCyzq7sgd7GcdDzN0/DgelRRH/qBIWj4JztlM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V2re21ABz1l6Sgu8RBvQDl0lNDDSGn2Zw/kc0Oz8ha129hYqfLWgiT8EMIy/FdoX5hJtsvhYcz778uy0pwNu3LSEdRkiuiusg5N6mnqsZLiC2+69LVDPWed1Vg09poL63ovgcYvcd6CyNz/SciDwVe43+9NduACoY7lq72SMtiozt0VR0+rXt0BSBxZxdpDIjBOGglyDWiXzxwCP5yjx5TNfaGM9493C7z+xI1OqglgvC1m7lie33IPlujFcXhGJrwcv50t6E38FsTWU8eFuMuWUspTPXISHDXYjSPbp5bvf+RQRSNL0IypSU9M5cQDiv2O3ZGlEQdlcTNKZoN3kWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RopYT9nzxjAG1AgJJOfzvjsouzhfjUNUpcWgGKqJh5Q=;
 b=K7vxPF7KL8ferR6a+u39Z0QwyDOXeuahUKjM07upKMomoK9xHdWVXnogIr5hb5CGMnDRW6Nyk2JJwHsFN2B8J8NBJ0tLgth7Xs88NxO7KskbPDVnzC6yxRvJPlBPRmZ/cvU+x2/owJgrMOwFEdYZdcq3qDR71Mjthe+x7+zDbBGEDV+mG+gFFrn69CULLPmcefytRF/+76ph7wf4ZUjhPJjVXd/FnlDbI8fX3IE6zDCDXxqhnp9hjy5/mPEo5l38zVBd3LOFTFTJqxkqSm3x4fzMwMSEFrVzKl5kxwb5emp7mf1aXZOgAU9qScE39C1MB0G6RVvgCPwnMa0MZHen7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1275.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:10::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.24; Thu, 20 Nov
 2025 08:29:56 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 08:29:56 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	E Shattow <e@freeshell.de>
Cc: Hal Feng <hal.feng@starfivetech.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] dt-bindings: PCI: starfive,jh7110-pcie: Add enable-gpios property
Date: Thu, 20 Nov 2025 16:29:42 +0800
Message-ID: <20251120082946.109378-2-hal.feng@starfivetech.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20251120082946.109378-1-hal.feng@starfivetech.com>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SH0PR01CA0008.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:5::20) To ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1275:EE_
X-MS-Office365-Filtering-Correlation-Id: 3614872b-c60d-47a3-0ea5-08de280efc29
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|7416014|52116014|366016|41320700013|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	8p217r3wq24O6GZuSe8S9HqmCMfIAABNZvcaHGkos4zZkd+yfzKLHs1hWccMMCNnBI8CWpqvkIkLHtJ38pBvrU2YMI03TIHfejp8B52JkNXxWxsN+fsdwlQUwfnXGOwaRmF8rHANbkIMG9pnn6T85qTJ0XOwnMnAJzg4LobETCMRa93XZfaBXTAOPADxrnnouhtqd6jsWNZ3RPg1dHQ6LCbOT78cKnxbE1cy2nElwP6xAJABUUaCcN6IocgB8DK577NLXgqZEPfrKbl4fn0CYC3+tEGJnwe6yxZTJSqlCEKOkEecdUvLGPRXnQjwN34DeTa2+w5DKnNKbOdwsLvZviqsOCPdLy/dPxPNB7Mi9G8whDt6IbWXloSacZGxlR0+6OU5rayeopRvNReUcpaJXJNgprSVuMBD2KCgOKMm2oYmlSzzremqNxtfLrzf3uvEV2o23V0aIoiRQshDRSPP6OXDa0S6q4Cezc91D1pjdKXONVJWL4/RhOqKmHSCNvSARuCoR8C7b0rnT4ftccv6qfbabz0s6Rk41dRXGmRP4k4EtjVYk6jRTOFmvBHRrPAn0l4msW0yNmbU6nUytZ5rN/ECx1uakEm7+y3pxD50JLQ=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(52116014)(366016)(41320700013)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?97YgDcTwDm4eqMuxOeWJbG2W3Mr5L9b6gAdGv370CXslMpN3sWgBW79z1dUL?=
 =?us-ascii?Q?DYFTrpLZ1Tg7A1JzdYKDSGXL6uAB4yc6DdWjQpriVDV+mJsemkdCrcwtHQCG?=
 =?us-ascii?Q?7YOqRTCsb0ymUBoSyxSOmolSN1+OR2KGbKtVZY/No2fsEhd2x1PJ0kFkI31Z?=
 =?us-ascii?Q?BEOn7Z80QhdqYjk9bD4y690VxfPM9pkv6cdrbrVWD0QHI08bp2DOA2o5nxon?=
 =?us-ascii?Q?DGSBUegHIc98S1uhTd5W3HIpoU2owQsy1rxd5g/XbXrGsuhmQZFBjjS7labS?=
 =?us-ascii?Q?Wp2vZg5Ili60/syRfGH1z/BXGj68wCHPz7i8eh7kTsOXRm3bFH6lKaDOeSD7?=
 =?us-ascii?Q?dngtLWpsI9QC91s+k6N62mLHK0+uFbfo6UbEAef9pOgAr3Oww4m3Cd2r8TUT?=
 =?us-ascii?Q?sw6lpq0rmMdNriOwPuuIyjDDZtSCrl66QYsv/lsoWL6YEgRzYUGXy+ar0fHh?=
 =?us-ascii?Q?OgBO2cI8zyv+aEQ/AHPDAyjW94M9xgidRmuL8s5dm8B592egpsp7nFfd+cOd?=
 =?us-ascii?Q?HzASIUOO2zXZMoxmAlIEKy5ZxwZaSAvoHDC6+csDVFyREOG2sIsN2Zfs+Tya?=
 =?us-ascii?Q?QmkA04XQvH2RKomcQI/Gsq8vtvBPLzaGmBlNUj0PiQr+Cz340JoNl5fPwi3s?=
 =?us-ascii?Q?TURRNoEzAxAZ0ENaZUGq8pIIa++BDxLMb1mut51k9q0T26bARG7qMblaqlwF?=
 =?us-ascii?Q?sXb9M9KuwXBNbB5TgHKaFLyxm1cuOSy9lkFBnvlZFESekKCk4BC3bC1tP14z?=
 =?us-ascii?Q?g9NRezGn9MPxvYzTyi2xjQrUmxz8QZVLdCPpXzY9pwRB5XgUwnhScqlWRmKW?=
 =?us-ascii?Q?TfUt1dG40a4D4DK5+z6kseSGzlTWnvN5jjknD0oGWiNFDrJvU+ZYP/VBGv0N?=
 =?us-ascii?Q?jsyMYJbbE6G8rgQt+dTKDD1sITJaPRhQt6eUv0hK53vMtBfWIDgk8B0TRStb?=
 =?us-ascii?Q?3Q37VoY+OWpi3PQRzRdaLI06jdIfBYF20h2lUzKEqH6OmNotwwWos+CEERmD?=
 =?us-ascii?Q?k7eGh1XFXhgcyAV9gosRxnKDrOH3BtvfvVBIYqYRVvrOOBJcAPpc4d4y8xjf?=
 =?us-ascii?Q?u3dTV2vlLL5+uKr6AhgKPUJN3jaQGBpfCLq9jpc5nDg8yhtr4GaZbRKvMfyf?=
 =?us-ascii?Q?GVmC+8dQmS7iKcs7E+hn/netI+Gvth8hT9IQ4s9yWwXP2w5g06ajfJDfa+OX?=
 =?us-ascii?Q?mlt6W7+hj9N1AUbAGWyMCeuK2s/AlbIz4plL4X7oEMPhQxov5p1RGJ6sfFaz?=
 =?us-ascii?Q?8cJZlrePjwJh+P1JI416au87xKROe32bTPBlQ7wFhqQ3ZYe8AJRe3mt0CJX7?=
 =?us-ascii?Q?x5KwSYE7egfU8E2jGyW/I7WpPhSG2OwoK2HzWcge2HsC4axbJjHXfMlgaZ9f?=
 =?us-ascii?Q?o0BvzKK3MDzgXQFogQnaiXkJl9ez8JzugmfQ3aVcZUJU0zU1tBbZvmEr8bUO?=
 =?us-ascii?Q?6tiILXQ0LijLITNTaDzdb3ujUpvIyr1ysgX5UHyXzb+LZaJOLbjAc4EDBWmG?=
 =?us-ascii?Q?U2KRVbN0Fn1n1/gCXB/Vu3c4uXBGqeJkF3TfFsB3LlcIpXWzQ6JcC3pqvV3Z?=
 =?us-ascii?Q?thaMv5zwJlUegZ1SjFwpMV4RtJlMsixl4FSgF4Xz/RpLqb5d5vFld7IcKgUm?=
 =?us-ascii?Q?EA=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3614872b-c60d-47a3-0ea5-08de280efc29
X-MS-Exchange-CrossTenant-AuthSource: ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 08:29:55.9700
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AFSTvzg5d6mOViG6N+DvxQoZ2bO1GCj1n3paSUHsGcgNjYptJT4JSFG/DFBUz7/SHDKbT7QuVFxUO52UhgiukUGyYIoAV1I1u1qDB0G9xlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1275

Add enable-gpios property for controlling the PCI bus device power.
This property had been supported in the driver but not added in the
dt-bindings.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Fixes: 22fe32239770 ("dt-bindings: PCI: Add StarFive JH7110 PCIe controller")
Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
---
 .../devicetree/bindings/pci/starfive,jh7110-pcie.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
index 33c80626e8ec..1e36f92ec852 100644
--- a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
@@ -59,6 +59,10 @@ properties:
     description:
       The phandle to System Register Controller syscon node.
 
+  enable-gpios:
+    description: GPIO used to enable the PCI bus device power
+    maxItems: 1
+
   perst-gpios:
     description: GPIO controlled connection to PERST# signal
     maxItems: 1
-- 
2.43.2


