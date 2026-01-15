Return-Path: <devicetree+bounces-255706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 112D8D2612E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D417B30060E2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9A3D3A0E94;
	Thu, 15 Jan 2026 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="RSqBJ5zj"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013035.outbound.protection.outlook.com [40.107.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAB13BF306;
	Thu, 15 Jan 2026 17:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.35
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768496753; cv=fail; b=aB6QFbak+KE08qJX32SU0bpvlkjR4b8GfNLpeWHLA4iQUzqOJ6aMxJWp9WTMMYK5bpuaShpF9+ybLHxplDxZgYi+ri+33aIdIzcUKc85SdOWalgnlhV+sMMZN1D0i9yYizJ2as2WH7CH992h8CNb2kHbEKgnnP9aX2v1LI9ljIc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768496753; c=relaxed/simple;
	bh=JvkkevPfwM0fgUb7ySVsUboVXWDdvCbWjqFX6MjEmg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Ez/HIWfZmSmuQAstvtFInyxrtMA8OvcTvyEdufsAltjRfdbexLYUyfH+G3B97kgFOtU5XnK8pR5wGho1mm7c7Vb3pB4RHSYtBL+Kff+M/O3mIRYwjmrRkOoiXgAd1v5sgbDQmE0H+UxbB0Qt81LFNLxvyjJVycNpTVSEQ+5y5yc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=RSqBJ5zj; arc=fail smtp.client-ip=40.107.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltH2ex6JxclY0a5BWVqNG0OOEXf5KRjioC3Jyf05fAsQwlFhmapGdHZ3zPmOqUmfbmorougO0oNmUCafuMB0iSjgI27YUA1tH/OWyWVdg/I1VQlKnLR4EcBl22m2e41jx0K+K1SdcZ7Cs3TdRSAmjbDPEPJ8pdlR3mMyV98BDfTFlk7pRQijYVdAgrmHNBJk+iqOSlYHR7ZBFS/bOqt7qOIaJlKK1zOTRfoj3g8QmzwmlGBoWgc9qLcRICl1gPW5ge9cMzHYbIWr3P0kFZvvs/jlB58GgiJLTpawSJmu5Yk3QpeUFtz6ctqLGtblWBTY04JJ7RqiGVK7B9mOPP951Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5YCwfZohHPh/C2X7M71eu6pUOWQnXVPvOBvhGfWd+us=;
 b=PrGfGZQZmrmaCe8nZvQWxepU+fOT3ylL0ZsSTsxucAfcOToy2RHdTQMep6ahwzYp8KSjVVZDKNJ4s1ggLmGGWhZJxTPmQd1z1DTTM1w20c6sQ3vD4qHWvEcUT+MdlfuupfjWH24Fd64aYb3hH8VSpqszD2qk3MltMuW9yPWYUxTlqBAac/nbM3xQjr/s4MmMlfwrBiwCqqnRFVD9xzr0h/egHH/41JA9M1KPN98GJ9WB22E0vIwR0mPKT0+lB1LU6DQsR6sPYoSuRiPxe4ZPowcfikxv77M42lErCqFJ1H6EHzF0ujTTiEG+3B+I8OfiJxW/e0Jn0jAsl7MTLFliPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5YCwfZohHPh/C2X7M71eu6pUOWQnXVPvOBvhGfWd+us=;
 b=RSqBJ5zjt/HuXUelq93jfQJw7pfuA9D5IHHsAv9Lf+SCXPUF0Ch8LwiUm3cNWoL5kPC2FimsABLdhP9rZuOTc6EONHYXJ4L6gu2L2Zbg3ciLXvYte8b7GguvrSunvk57YOIl8/aLOKv7udOIY9SDB7bko16BEpGxKIArBbOTR8A=
Received: from SJ0PR13CA0173.namprd13.prod.outlook.com (2603:10b6:a03:2c7::28)
 by MW4PR10MB6297.namprd10.prod.outlook.com (2603:10b6:303:1e1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Thu, 15 Jan
 2026 17:05:49 +0000
Received: from CO1PEPF000066E6.namprd05.prod.outlook.com
 (2603:10b6:a03:2c7:cafe::61) by SJ0PR13CA0173.outlook.office365.com
 (2603:10b6:a03:2c7::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.5 via Frontend Transport; Thu,
 15 Jan 2026 17:05:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CO1PEPF000066E6.mail.protection.outlook.com (10.167.249.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Thu, 15 Jan 2026 17:05:48 +0000
Received: from DLEE206.ent.ti.com (157.170.170.90) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 11:05:46 -0600
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 15 Jan
 2026 11:05:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 15 Jan 2026 11:05:46 -0600
Received: from [128.247.81.19] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60FH5kcd1888943;
	Thu, 15 Jan 2026 11:05:46 -0600
Message-ID: <6c645e8b-8606-4fe6-8e88-0873e0a18d7f@ti.com>
Date: Thu, 15 Jan 2026 11:05:46 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] arm64: dts: ti: k3-am62: Support Main UART wakeup
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<d-gole@ti.com>, <msp@baylibre.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <khilman@baylibre.com>,
	<a-kaur@ti.com>, <s-kochidanadu@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20260106-b4-uart-daisy-chain-dts-v3-0-398a66258f2c@ti.com>
Content-Language: en-US
From: Kendall Willis <k-willis@ti.com>
In-Reply-To: <20260106-b4-uart-daisy-chain-dts-v3-0-398a66258f2c@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000066E6:EE_|MW4PR10MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: f5c04057-5bad-4a6a-b36e-08de545854d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|34020700016|82310400026|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WFo4Yzh6M2lEbzQ3RklXMXhOeVBQZWFVVThPTFRlVjN2MHdLQnA3TjVmejFk?=
 =?utf-8?B?UXVnS2hiSkprNEt1SjNUMWxXeGVKRUZnbW5WcG1La2ZXc08yYkQyc0ZJeTR5?=
 =?utf-8?B?eEpuODJ6ZkZpZ0lHbWcwRkVHOVByUysrNGFYTGhLeGFmL0FYNU9IUHF6YmRL?=
 =?utf-8?B?U041YmpJQmhkb0d1ZWtyYTV4VEJwRzZyVWM1US96VFQyRDJzMzFCU1Y2ZEov?=
 =?utf-8?B?UEpxKzdiNnFXa0tvS2wzUDV6QWRoblpYL1JFd0IyNlFGKzU1SGszdUM0WFBq?=
 =?utf-8?B?eDN3TXlXcEFteGEvOXVwWkREZnhIZ3BkenVvRS95eHVaRlM1M2svR2NPbDli?=
 =?utf-8?B?NWFoNnNDVjkzSThSUjIrVDdnVzNCMnFOK2lsbldOYnk5Q2xib1pqT1ZCTkda?=
 =?utf-8?B?Z21kazFTOXlTYmRXM1duVndxbDZRY25wenRpeU5kUFhOSWJnaTNMK05DWFow?=
 =?utf-8?B?YXNDSis2ajludXdDRXFjT0hISXpDVVNmTTN0QjAweVUvZlV1WTNaTnAyN3FL?=
 =?utf-8?B?T1BEQ1pBZERocFpRZmt5eEI4L25uL1IxRVVmdFl6c2Q1d0lEbXBvV0lBY1Jy?=
 =?utf-8?B?d3BoSVMza0FHSnROVXVaVFBrWnA0NUlZMlFhdW1xK2VZSThGS3dtSmhjWUJK?=
 =?utf-8?B?RTJLR0pDdUxGU0RPZkpvSU1jNkJLLzBVdjBuaEVFWkpSaDlzcStpMVVlK2tZ?=
 =?utf-8?B?RnZncDdjYlRRbHROMUJvQkpUQ014cjNwZ0ZFU0lYaHpxcDkvMmI0UThRL2Rr?=
 =?utf-8?B?dWU3RUtuY3NHYU5SR1lqdDBMVTdOZEYzVFJ5M0d4VGs2SkFadm1BQWJkWEhG?=
 =?utf-8?B?ZVlZOGZNcW5yUGt1anRYb0ZDKzY2dzU2bHgxblZKTVJTRmk3S2tSclgwWEMr?=
 =?utf-8?B?c0J5dDhCbHhiN0gzVUdtbnR5NTVqUnMyQmlLWmZQekJBeHdFUlM4UkFoUXFK?=
 =?utf-8?B?bDZsWGZuQVZwSVdkWkpyNkoxbVh1TmFsVVcrQzVFQVVLUHN3ZE81SE81T2Yx?=
 =?utf-8?B?TTd5Yi9JaENlVkFSUjRnSW9QUERYeXF4UjdnMmhIWUNNK0tEL2hVODBZVFhh?=
 =?utf-8?B?ZkFaTjQxWEZxWmdweTRkTjkvaEJTNGpWYU5RRFl1VkVPRnR5VjkrcWlBTE1H?=
 =?utf-8?B?K21ud3NyWWlOL05ta0xzU25zL3YwR2x3cHB2TVdJQXYyVFlsbnptZTN0RDBo?=
 =?utf-8?B?UE5DWlJhT0UrUVZnTVloS25QQ1NvOWtlUG5ZOXBmeWFndE9hMXM1d0I2R0NW?=
 =?utf-8?B?dWduVm1xRUgvaFppa3FNWmFxUnZYRkIxS3JKK1JZRFpaQm1oejYvUFhNQkJ3?=
 =?utf-8?B?NVFlLytCZ1VMWE9nT3JkNUV0RUpWSURRUkt5cFYyOEY0d2VzZis0U1NTQ204?=
 =?utf-8?B?M1NEYjJLT3RPbVpod0R2VmFzNytUSm95NkFwcVkwZmwvWk5TTmpLYlhYRy82?=
 =?utf-8?B?RTVGcXFCdEdWTTFRbkFSRDhEL2h5eFZJcFVINk02d0pPYXJhOWNGaXA2eGN1?=
 =?utf-8?B?V09lSmhIT0pNZXVsc0JEVXdPek1IdFg2Y3lFbUhnWWxZVVpyWVlCbnJNYUcy?=
 =?utf-8?B?YnVDYjNWRU93SkRQQ2hvcFhEdEN5SWtsTzRqNFpsRmVmMnpLQ3VvZExpaHdl?=
 =?utf-8?B?Q0NDUy9tRUZvQXNlQTV5WTBtY0E4aDZrdFNHaHhTNHBTNlZ0elBPaG0xdE9l?=
 =?utf-8?B?Mk5kaHNmbTVLWnNNQVp1OUlMYnphK2IyMHZJVERFZlJvS3BROTNsZm1QYlhP?=
 =?utf-8?B?VHRsbElrYUxJWXRnTFluTlZSVHR4MG16UklXUVdXNzFBRmgySDQzWUY0V1l5?=
 =?utf-8?B?eDJyVkNzTEZMWjllbHd1R1gwUnBhcUlnYXFDWE05OGcrVm5hci9RU1p6Rmhm?=
 =?utf-8?B?RGw5ZjIraDFJdHYvQ1pjSUVXcVliVlZTdVZlK3lxR3huTHI4L0YvKzN4TlRp?=
 =?utf-8?B?ejNuN2FFSURxUTFLZGkzMU1ra2k0R3lJZjEraWhyTFBjUk12cjJWMVpETzhR?=
 =?utf-8?B?K0pyaWx4R1hMaitHbnJBYnRldExwWEpRWXBGU0VrTXRUSXoxblUwVkVmOS9p?=
 =?utf-8?B?elFpcnpBd3M0K1hUZlB6alN0V2I3NFVoa0lSZklaK3p2TjJrVW95STBRWkdH?=
 =?utf-8?B?TmhUSjZ3NHJvclRXeDFLM0IvQzBtbmpkZ0FoV3FvZzAyNm8wY2lLclBhMEE2?=
 =?utf-8?B?WWNqVEtBTWpvTFFqRHF6bGpqRURQS1ZqSWtFRittejdtNGVTSmw5Tk1XWExJ?=
 =?utf-8?Q?GZniBFbwHpmOqDdePxOPyCv9ENV3HRyjpY0qgQo0jM=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(34020700016)(82310400026)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 17:05:48.8941
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f5c04057-5bad-4a6a-b36e-08de545854d5
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000066E6.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6297

On 1/6/26 18:42, Kendall Willis wrote:
> This series adds wakeup support for the Main UART in the device tree of
> the TI AM62 family of devices. It defines the specific pins and pinctrl
> states needed to wakeup the system from the Main UART via I/O
> daisy-chaining. The wakeup-source property is configured to describe the
> low power modes the system can wakeup from using the Main UART.
> 
> Implementation
> --------------
> This series is intended to be implemented along with the following
> series:
> 
> 1. [MERGED] "pmdomain: ti_sci: handle wakeup constraint for out-of-band
>     wakeup" [1]: Skips setting constraints for wakeup sources that have
>     out-of-band wakeup capability.
> 
> 2. "serial: 8250: omap: set out-of-band wakeup if wakeup pinctrl exists"
>     [2]: Implements out-of-band wakeup from the UARTs for TI K3 SoCs.
> 
> 3. "arm64: dts: ti: k3-am62: Support Main UART wakeup": (this series)
>     implements the functionality to wakeup the system from the Main UART.
> 
> Testing
> -------
> Tested on a AM62P SK EVM board and a AM62L EVM board with all the above
> mentioned series implemented. Suspend/resume verified with the Main UART
> wakeup source by entering a keypress on the console.
> 
> This github branch has all the necessary patches to test the series
> using v6.19-rc1:
> https://github.com/kwillis01/linux/tree/v6.19/uart-daisy-chain/all
> 
> [1] https://lore.kernel.org/all/20251230-pmdomain-v1-1-3a009d1ff72e@ti.com/
> [2] https://lore.kernel.org/all/20251230-uart-wakeup-v1-1-13f1bb905f14@ti.com/
> 
> ---
> Changes in v3:
> - Reword commits to include the logic of how the "default" and "wakeup"
>    pinctrl states are used.
> - Revert pin logic so that main_uart0_pins_default and uart0_pins_default
>    are untouched.
> - Remove main_uart0_rx_pins_default and uart0_rx_pins_default.
> - Combine main_uart0 RX wakeup pin and main_uart0 TX pin into one group of
>    pins called main_uart0_pins_wakeup or uart0_pins_wakeup.
> - Revert pinctrl-0 to only include main_uart0_pins_wakeup or
>    uart0_pins_wakeup.
> - Change pinctrl-1 to only include main_uart0_pins_wakeup or
>    uart0_pins_wakeup.
> - Link to v2: https://lore.kernel.org/r/20251230-b4-uart-daisy-chain-dts-v2-0-fa5257ec54bb@ti.com
> 
> Changes in v2:
> - Define AM62L system idle states
> - Enable Main UART wakeup for AM62L SoC
> - Rebase to v6.19-rc3
> - Link to v1: https://lore.kernel.org/all/20250904212827.3730314-1-k-willis@ti.com/
> 
> ---
> Kendall Willis (5):
>        arm64: dts: ti: k3-am62l: Define possible system states
>        arm64: dts: ti: k3-am62x-sk-common: Enable Main UART wakeup
>        arm64: dts: ti: k3-am62a7-sk: Enable Main UART wakeup
>        arm64: dts: ti: k3-am62p5-sk: Enable Main UART wakeup
>        arm64: dts: ti: k3-am62l3-evm: Enable Main UART wakeup
> 
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 13 ++++++++++++-
>   arch/arm64/boot/dts/ti/k3-am62l.dtsi           | 12 ++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62l3-evm.dts       | 11 ++++++++++-
>   arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 13 ++++++++++++-
>   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 13 ++++++++++++-
>   5 files changed, 58 insertions(+), 4 deletions(-)
> ---
> base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
> change-id: 20251230-b4-uart-daisy-chain-dts-d01aa40560b2
> 
> Best regards,

This series depends on the patch "serial: 8250: omap: set out-of-band 
wakeup if wakeup pinctrl exists" [1].

[1] 
https://lore.kernel.org/all/20251230-uart-wakeup-v1-1-13f1bb905f14@ti.com/

Best,
Kendall Willis

