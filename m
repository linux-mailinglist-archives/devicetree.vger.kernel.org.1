Return-Path: <devicetree+bounces-69962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DD78D2095
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 17:40:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D39D1F22BF4
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22BD17109C;
	Tue, 28 May 2024 15:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="sBDzV5eS"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2045.outbound.protection.outlook.com [40.107.21.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2B4171063;
	Tue, 28 May 2024 15:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716910828; cv=fail; b=a/hxy0V9gZjezhA1BEfacJp5zKPFCetRFPNSxe/fE0AFo8DxHSTebXNpogzoJhpKVXTvtyeZYO/HtGDeGF1FVxd7l2E6hLI/M7ftf4nf4nzHOARTXzqat4xhVAVswyG2ENHC7HKn8kjR9/5/eF8lZHIEHVkDFYiKbu+YUU7y0Ak=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716910828; c=relaxed/simple;
	bh=q+32/m8o/QUaEDfJR7fhVeeFTKR1DQgc0+kDighUkQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=IHGPV83XRDgs0nc+No/IoCgQizmGkvnAyNjIr6UYbtUaCiD3bFIo/g0TJntWhrpGpNrWVV5kjc26SxJXyqLt8jdGGkwZRe290tmYHxUEcwFsp0GdSsoCyPAicFJl2pdtoLe39umhST1TScoINkNOqkRQZI4x6JAJMqFPt6I04tg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=sBDzV5eS; arc=fail smtp.client-ip=40.107.21.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AiG9uduLD2tELkCfmjNqWDk/3jIzRREBPnc54lao0WA8ToiC3MCb1EsXjVNcDIkiGnjyKIIUtBBM1vo5suwoltmq6Ct8EOjGb5lENr1TCWeJTI2mf0Sv+54qIFzjeTkVH9tPPHpOO0foFWAEKQC+4oAOFJbYxv+sHzS4Jmu4MWJ2dG0jJkN4SynbQSdn28h496eSRNITvZhMUVrC8bQ8EQV+P915H9M8Z9GBfM2070/3t28BZpnCAwsUltaKcdbTsJFtb/7Q8PlGy2q91cCZ/Ouzj0PfC5UPcjnTSdICdIm8wIBEf7xHn2BgIYnLCbaIHV2Qk70DHcj7IyHB/ZqWmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdBF0ZSysBFDqAr0TDWAYa2141cBiFA205YfnWGMPtk=;
 b=Vk2HVP4wR5nb0Mvsts1PLu3tBzZkUzt/x8YixioRp+roisoTeyyGCBLYmJU4+Gg2vMAlynPNjJTTjxKk+cW6ZNAtKhjORraDTqMUNVnOEQ2bKRDZHJHFrY2RBdK1xV3ZeEuMNE/gSwR6TQ8oVRjzuompUczJWw4eY5Oyr6kHE6huPMQhKPdoAzIoCGmPzwDuVwxRLjX+rbTSL0Mow2NK7kYdwtdXcqaKF0GCccVZooil24gfSmNg4ErJUuIouix76hyhgfUbKx6TRtnZbNDzsmkcYEoJiKsigk6I06VIcmd/6367MPm781+JAd2zybgFURHPU++hIFnVVYAp8xe3ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=alsa-project.org smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pdBF0ZSysBFDqAr0TDWAYa2141cBiFA205YfnWGMPtk=;
 b=sBDzV5eSTbojK7Q2Zpv1vjyK5FW8DsYYTeVf54QxvetHvnnhrotsXDYVgsyjqPQstaK33A/sPMZyDqsvovTObDFu+AROgPK/MhVPFuzsOJTwNt/aG5atw3ZtkxnaStiefu2JorMxtAKj2UtqsH3mZJ1vnvpbhseoQ9CIiAiqPK4=
Received: from DB9PR06CA0012.eurprd06.prod.outlook.com (2603:10a6:10:1db::17)
 by DB9PR02MB6617.eurprd02.prod.outlook.com (2603:10a6:10:212::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.27; Tue, 28 May
 2024 15:40:23 +0000
Received: from DB1PEPF000509FF.eurprd03.prod.outlook.com
 (2603:10a6:10:1db:cafe::7b) by DB9PR06CA0012.outlook.office365.com
 (2603:10a6:10:1db::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29 via Frontend
 Transport; Tue, 28 May 2024 15:40:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DB1PEPF000509FF.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7611.14 via Frontend Transport; Tue, 28 May 2024 15:40:22 +0000
Received: from SE-MAILARCH01W.axis.com (10.20.40.15) by se-mail01w.axis.com
 (10.20.40.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 28 May
 2024 17:40:12 +0200
Received: from se-mail01w.axis.com (10.20.40.7) by SE-MAILARCH01W.axis.com
 (10.20.40.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 28 May
 2024 17:40:12 +0200
Received: from se-intmail01x.se.axis.com (10.0.5.60) by se-mail01w.axis.com
 (10.20.40.7) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 28 May 2024 17:40:12 +0200
Received: from pc49102-2217.se.axis.com (pc49102-2217.se.axis.com [10.88.7.5])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 4A685A15;
	Tue, 28 May 2024 17:40:12 +0200 (CEST)
Received: by pc49102-2217.se.axis.com (Postfix, from userid 9470)
	id 45453666EA08; Tue, 28 May 2024 17:40:12 +0200 (CEST)
From: Ricard Wanderlof <ricard.wanderlof@axis.com>
Date: Tue, 28 May 2024 17:40:04 +0200
Subject: [PATCH] dt-bindings: sound: tlv320adc3xxx: Fix incorrect GPIO
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240528-tlv320adc3xxx-dt-gpio-fix-v1-1-209fb2c2f86f@axis.com>
X-B4-Tracking: v=1; b=H4sIANP6VWYC/x2MQQqAIBAAvxJ7bkFdA+kr0UFyq4Uo0QhB+nvSc
 QZmKmROwhnGrkLiR7JcZwPdd7Ds/twYJTQGo4xVg3F4Hw8Z5cNCpRQMN25RLlyloCdyli0N2jp
 ofUzc9P+e5vf9AKE2L3lrAAAA
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, "Baojun
 Xu" <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <alsa-devel@alsa-project.org>, <linux-sound@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<kernel@axis.com>, Ricard Wanderlof <ricard.wanderlof@axis.com>
X-Mailer: b4 0.13.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF000509FF:EE_|DB9PR02MB6617:EE_
X-MS-Office365-Filtering-Correlation-Id: 04b25538-6cf9-42b1-9253-08dc7f2c7ca0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|7416005|376005|1800799015|82310400017|36860700004;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V1BKUHFaTFRFQmRTV1BXalN5cUs2SGZvSm44MmRsQlozR2Q4ckZuR01CWTNj?=
 =?utf-8?B?enM0YUhQaUNFRUtoVXQ5SnRxRG9EZG9iWjRxOHBNay8zd29XLzFlYzByd09s?=
 =?utf-8?B?L2tLd1BYSGFOUXZ4Tk5CNDFNUFJrMlVqWUU1TFZuODJTVjJEemczVDRPUHhC?=
 =?utf-8?B?QU1vTlgrRldWTDlXbkE4WDd4OXNGOFBQV1RhREk2WWZlazFBazEwOGZRSitZ?=
 =?utf-8?B?dmw1SUllSytUUm8rbStzYXBMOVZZZElXQXBWelJZSHRzNkN4QStRZkdWckI4?=
 =?utf-8?B?ckFncHNLQlZCOGhkclVGdFhSWjh2U0lwdjdvMWkvRG4wYXhmRExQL3M0aXc0?=
 =?utf-8?B?bmI5K0ZCUGsxNG1DNm1VVWFoQmZ1QTlmRnExcEZEWEZ4YnowVzhiczArYitj?=
 =?utf-8?B?MmpaZW9FY1Vhb2RrMFlpeFhmNUxMREdWT1ZvZnNxRStITEsyNVpzRXMvbWht?=
 =?utf-8?B?NmkyeURKL2lTV25MMnphOUhickRGM000TVJnNG85M1FsMTVXTFE5VHMzY2Rn?=
 =?utf-8?B?MkNTaGZQOXFhTlFBalN3dTR4YkdOL0pRMC9tVWVJT3ZXRitnRlRaQ0FxTEFT?=
 =?utf-8?B?alNaME40K0tlaTljeUNNNDlZaW9La2VkUkxVUXViOU1IWVkvb0Nndjg5STlw?=
 =?utf-8?B?ZzNmdDQyZWxRMW9lY2JHeFJPbWEzaVEvNGVjckJkUHBYRUs4TW9qanBYRjF2?=
 =?utf-8?B?Q2Y1OVA3TW5NSWh6bjJ0TEl2UEtiaVV4QzFJTG9uOThxS3NxMUt4UXZYK1BQ?=
 =?utf-8?B?SzhEaW5aSDBRYlA3T3FybUZVRi9VVEc1WlNvL05BYW96VWRBNDI5bFFUUzdS?=
 =?utf-8?B?VmNzQ00xQlM1R2tLVTlzU25FRU5HVDN4ZVM0T21abzhLYkdmS2dGZ0dFYUsz?=
 =?utf-8?B?RGxPZXN0eVJDby9OK2xDcTcxZzE2SWVFNDlwNGNxZ2VkalNQZGZlNlk3QXY3?=
 =?utf-8?B?N0hMSVFBV1liU0s5bnM4aVl2aEtoVlNNT0lkSFlUVHBER2NiR0FBMUdTaWVQ?=
 =?utf-8?B?VC9yTkdJYWNuL2lTdUJ0S0loRENkdGlRd1QzRUNWanZBMGhlbW9iaUhtQzlV?=
 =?utf-8?B?Syt4UGNYQ2VXSC9hc0JCeUZHWWNJbnRKa2dpeGVOSHJwTk5seUZKVnNrUVZC?=
 =?utf-8?B?QkdtcHp1c2ZxVmlLNW15ZDhvem4xekFHRHRoaG4rSGdabE9USVZ5OFdQZzhJ?=
 =?utf-8?B?dmR6bTdUVUMrSXhhSHNBenlMaHlzd3gwRGowcFJJb0ZTVU9WMnlORkRyOWU0?=
 =?utf-8?B?eklydGU0dEEyWkluaW12V0VxOGMwWXA3ZFRuVWl2cTZ0aWFKcEZvdm9CaEIv?=
 =?utf-8?B?RFdwczJmS01ocXhQelJUMWo3MjIvZW42ZHJ3V3V1YUV1QXp0Q3ZGV2dxUUpX?=
 =?utf-8?B?SzZxWUkrQVhtNHd0RnpESnVscmdtaXhNaExVK3p0NFBzQ3JuakJRdWJGN093?=
 =?utf-8?B?Nzh2S1pYVDR5R1cyNW9Sc3ZUczJnVFRsaHdpMldtSk1qdHFrZEtyZVhQN1lT?=
 =?utf-8?B?dEtPWWJ4WTBuOGlTMllJWEdHNUFnRWJqU1VGTFljbks2WnkxOFZtUjNNK1VU?=
 =?utf-8?B?NGhySzVkOVRjZzFBcHpTNS90Zk5rdGEwcmIrd0V2ak1mTE1jNmI5WGxNM2Na?=
 =?utf-8?B?a1R3bEE5OTJQb1N6MForM21HZVVaYlJaeDY1M25mWHJIcFhXNnR6K0hGbDJv?=
 =?utf-8?B?N3EwclVZakNaNHdBQ0krRDhDQWRmUXdSN0RkV2FwVExIUWtwanVhclQxc0Ft?=
 =?utf-8?Q?h/wmxsdwcEFJa5vfPTinrOx7bKAoqhsweGM5Z0R?=
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(7416005)(376005)(1800799015)(82310400017)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 15:40:22.5173
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04b25538-6cf9-42b1-9253-08dc7f2c7ca0
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB1PEPF000509FF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB6617

Fix the description for the ti,dmdin-gpio1 and ti,dmclk-gpio2
properties to correctly describe that when configured as general
purpose outputs (ADC3XXX_GPIO_GPO), the pins are available via
the GPIO framework.

Signed-off-by: Ricard Wanderlof <ricard.wanderlof@axis.com>
---
 Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
index ede14ca2c07a..8ac741f4cd56 100644
--- a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
@@ -58,8 +58,8 @@ properties:
     description: |
       Configuration for DMDIN/GPIO1 pin.
 
-      When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
-      ALSA control "GPIOx Output" to appear, as a switch control.
+      When ADC3XXX_GPIO_GPO is selected, the pin may be controlled via the
+      GPIO framework, as pin number 0 on the device.
 
   ti,dmclk-gpio2:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -76,8 +76,8 @@ properties:
     description: |
       Configuration for DMCLK/GPIO2 pin.
 
-      When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
-      ALSA control "GPIOx Output" to appear, as a switch control.
+      When ADC3XXX_GPIO_GPO is selected, the pin may be controlled via the
+      GPIO framework, as pin number 1 on the device.
 
       Note that there is currently no support for reading the GPIO pins as
       inputs.

---
base-commit: 47d09270d7776e46858a161f94b735640b2fb056
change-id: 20240528-tlv320adc3xxx-dt-gpio-fix-a3384e435148

Best regards,
-- 
-- 
Ricard Wolf Wanderlof                           ricardw(at)axis.com
Axis Communications AB, Lund, Sweden            www.axis.com
Phone +46 46 272 2016                           Fax +46 46 13 61 30


