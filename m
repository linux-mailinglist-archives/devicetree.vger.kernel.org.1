Return-Path: <devicetree+bounces-242945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 987ACC919AA
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D91A8349BBD
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF6F30AACD;
	Fri, 28 Nov 2025 10:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="Gk0lWmuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011059.outbound.protection.outlook.com [52.101.65.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94743054DE
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.59
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325503; cv=fail; b=Sa9HJspUIj28UXfRVs+ydDoVcS3hplrMUYmti+pqH+Sjwe9dLdzt33xkudBuDx9hNOKmtX7+BLDBrOfH257RSsxI3R3+V95nSGEiO6lWoJqPlBmjCs1gE9MxQwdztwln8BvT4M9rCBUSI/Fno1RVGRLYFnt4S//4GuCrKfw+KAI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325503; c=relaxed/simple;
	bh=3G9/rHj9vaR6MV4yz11D6Koijx4UKH44inpmqwMQgG4=;
	h=Message-ID:Date:Subject:From:To:Cc:References:In-Reply-To:
	 Content-Type:MIME-Version; b=gFM6OTGx2/+ETU1Id3UEbLBNdCqqvTA1pofjZjVLFtPCXCQxnmR/pemB1jQKET86m3AhpSZl5UFYFJWGEsNNQW4Eq3ifAb/zH8CpJZ35frgB+AOFNz2Q12kfmNfMlBwUzXNjQryIP1PhQMypL/+bZsu5th9ozKp00kd2eQ8NmVY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=Gk0lWmuQ; arc=fail smtp.client-ip=52.101.65.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b6hmuKhhGV33y5EEc5HGRlgFT2gKdb1OiaPTZPJ8WpZLM5NaPm2+iT5niMDHNpTVE/a/eqDWHgh5shxvYJaJKFRtKU8FgieasRraAPY7vKYnIKUzMTE5xLWAZ+ZAj2Vgv23MvoJDE+BFUfeJhTwdSqCd/KkuyeTbWjsC1YczDY6pa1spGDcXBzv1UtFSdlLC5ZIZ8C7uIyHso4xRyi60XKveYTKQmsLg98SybTJAVxvhxgX3uyRzhwW6j3ioJFDUc7aIm3a513cBpao+9MnaB/4a1ZKc/AbVDV80gt3SlhPIBY/mtrks7a4N9cKWgU9Z0+g11oMngY387sUSABOU5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqiI/DSODNW3edtgmI2C8ROPplmY1haUEGC2COb+vAs=;
 b=KrGS/UQLAJ0iRn4LTkFv6AmNO6lYh4bDi1qFRyBTx6RKqSiKQR86hef/Acjvg+DbF45tuRHW65hB5Zys00FEO/1e4bfb4Y/GitzH0D0b6oqhTG8M6947H9MVsGsxvrIk5rTZFOtQUGhBcG5uvih0jk8yWweotyzGkw34BPrEO+smqtzyUBn71bbRCQ4WeKKRPASgCBzUUMV3sWoZL2mo1KcUF8/rQnWErPNtgWxscleN3LTnXwApdqhI1ncF7w3T3thKdoRVUfqD/mrnkxkPg3DOBhGnK76cqeE9FswLNIwILpSNctQi3poXVmnIWpPr61Oq49SJ0wBof5UXfV18aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uqiI/DSODNW3edtgmI2C8ROPplmY1haUEGC2COb+vAs=;
 b=Gk0lWmuQvqsdToNmWQMiBF6KrAhYQ0ectyhHyyd8WWuxKHMMS8DbfcW2y0OMDacuM0lWP5+y0iOgFxXknhaBGNhYaO3/Z2vq5b20S8iMiJDoQd0kFUF2aq0ZoKOw1QZnEtvULPoq0C2i2ftdVh/Oo5etzV7KNBWvee9npSQZqIU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Fri, 28 Nov
 2025 10:24:54 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 10:24:54 +0000
Message-ID: <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
Date: Fri, 28 Nov 2025 11:24:49 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
From: Quentin Schulz <quentin.schulz@cherry.de>
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
Content-Language: en-US
In-Reply-To: <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::17) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|DU2PR04MB8536:EE_
X-MS-Office365-Filtering-Correlation-Id: 9baf9d38-348b-45ec-c969-08de2e685f4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?azVwUkZ5MjRmZ3l0alErTjMvd1k5QXpWMFIybm1VT1gvZjNwUG5TWjBuVU05?=
 =?utf-8?B?djJXU1k1N0lWdEkxeXBLUml1c3ljSURZWXNTNnQ4bjZYM3ZMMFNYalBDQzAw?=
 =?utf-8?B?Q09NR2JsaTRlcDUrUVFBdkdSYzBKWWdyS0txUS9JZHVKMWZJQXE3WEJyc1RL?=
 =?utf-8?B?bDNPRU9sQWNXbkZydmhWRy8xZUNqbDU1UkRqdk03d2R0ZzNGKzRkU1pYMk1N?=
 =?utf-8?B?VzRLNS9Ec3orbmNFaG5ZU1dNU0d0dWZQN1FKeDdBZmd1YXkvaGtnWHoxVGRh?=
 =?utf-8?B?K2JKS3NhVzNwV3VtcWVEK1ZqUEhhendCQWJkY3l6QWxQOWtyeVEvU2FkTXlp?=
 =?utf-8?B?OVJvZGVSQUNQZjJGcjRwWnkrOFpPQ1o1UXBhMGhReG83em4zSXl2ZzZ0M0dj?=
 =?utf-8?B?emdwaE8wMXEzVC8raStIcmpaQ21Xa1NOWWtjazVmeFNJMTdwK3IzR2xHOXFj?=
 =?utf-8?B?TWtFaDg5Q0V6c2IvdWF0eWFEbkZqdUxja1hOWjhJZndkRkx0SG11S1BRQXRl?=
 =?utf-8?B?SjcxdmtGNmtsTHJmT25ncWVZMUVvTXI0N0hDNks1cXVjdk9QODhGY0FvZHk2?=
 =?utf-8?B?UktiWDNwZ3c2N3pDVERmM1E3cGJ4anZTMXZSZmdHTlIvREt2TVpJTi9OdlI2?=
 =?utf-8?B?djFOTXcyV0VqZkhKZFZRSGJCcDhSSFpwK1N4Tk51aGp0N3JVc2NTcHdPenRO?=
 =?utf-8?B?WlA1RGd0b3FHd0lmN2hMQllNd2VwY3B4a0RUR0lQR2ZmZm43SndkQ1lNMmxG?=
 =?utf-8?B?am5DOThLM1FyVWlOWC81bHVBUkR3Nml0NnhaUWQvbE4zOTVyWkg2S3QxSzhx?=
 =?utf-8?B?VC9peGlxSng3bmNkWWJabzlhTXlVQlVZc2Uxa1R4eGQxVUM5TngvejA3MFBa?=
 =?utf-8?B?YWxkc0IvMFcyeXhINngwWGduVlpPdGZSNjVneG5JM3lzaElab2lKQUNoMW5Q?=
 =?utf-8?B?S05XUlVTL3FNaUpUdXpjdllabG9Pdk42Smw1RFVaZm9zanYxaVFJTDhVSW90?=
 =?utf-8?B?ejZHZmlKNk9ZdEY2bE1KbGN5T2VjaHNubTkrdVJqRnRlUkZsOVZmd0N5c0tI?=
 =?utf-8?B?WVZFcEtLTnM1U1REU3NTMkQxZ2phWHZuRXVyWnN2ek4xZU80MUxxYlpoNDVu?=
 =?utf-8?B?R1p3MFJJRzM3NWhHLzhXYVExRFlpUnM4dzlENlJXcUdwaWk5bEZRN0pjUjY5?=
 =?utf-8?B?bFdHWG1ZYWdFZENSRlM3WUNKNjB6bnF1Uy9JZnFITDl4QWJoU1BwRWxsb2F3?=
 =?utf-8?B?MUlnUW92M3FHdWkvT2tEdk1FMDJ2Z1lWR3BFNHN2d0ZuLzQ1T2hUNGFwOGlG?=
 =?utf-8?B?cmtLNHhrS3BJOEJXb0lUOGtMUHFxTFRJR2QwV0hFYnNjVVJmWS9mVW0rREVR?=
 =?utf-8?B?VThPVkVMRGpZN2t1VXBJY1VzZlQzSm1JRUdPV3hxUkVybi9TSjRqdmh1MDUx?=
 =?utf-8?B?QlN3UVBMOFpLZ21LeXZkRURjbnlTTFB0SXBCcDd3SmphT2l5ZzY1dnlkU0wx?=
 =?utf-8?B?VTFKck1LWDcwdGhDalBLNnFjUWllR2J4Qnp0SzVrV3U2cFlyUnE1OXF0cU80?=
 =?utf-8?B?V3k0aGhwbzR1TmlaY0NydW5iOWNDZFErSTZDeGJjR0V3dEcwUVFTdWdmbDdI?=
 =?utf-8?B?UHdxNTcvMjVNUE1LRjd6Njk5cTN5QnFqWFVWSlQ1L0ZPNnVTaVRiZU02QTVM?=
 =?utf-8?B?ajNML2M5NXZoMmNCN01yQlk1ZkFDVjN1S0d0Y0psRUpVQzAyYm9CN2tqaWpE?=
 =?utf-8?B?UkFydVMwM1M1enJhNWx1cmZqMk94VzNtTmJkVVRUL3dQT0hRM1FmbFhJd01m?=
 =?utf-8?B?aGtwdU80SjQ4dG9uZWl3NVdPanFHNHRBNzZvWi96S0lNdUZodjYwWkhxUCt6?=
 =?utf-8?B?cTBwNGRiWU5QQytBYU9TaHhEVFpWYi9Od0lnY2czZ0tNUmdkU0pQdTZiNDZ6?=
 =?utf-8?Q?biAFvSCAvRWfZ5xoHR0gjPT6YKV+J72h?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N2MyTFcxUVVFUjNqOFNUYUhROFlaUzNNNnNSYWwvV0x1dkFOUG4yV29TcXMx?=
 =?utf-8?B?aG5Fb29Jdk5lZUk1a0hySkZ6N1FxU043Mzd4eG1zSUZPc01wOU54anBkRGxY?=
 =?utf-8?B?cFBSb3haRW9COGxPYTRQSzJOekNTNjA5MDJMdDhpVkpDOU0xK3dtVEdleFZp?=
 =?utf-8?B?QTNhS25ZR1ZaVmlmbW1aT1h4eHNhSmJvako1cmpHN0p2bzRxd2xLaVRjWUIv?=
 =?utf-8?B?bVhydHAyWDY4NkxPN0FXaHJ2cm5pelJHWGxISWFhbDJ5bnZmR2tkUEVsZGpH?=
 =?utf-8?B?R2cxZ1BlaHltTk82N2o2VTNqYXBicHl0UXV1KzV4eCtZcFUyaTVRU1BySFZ1?=
 =?utf-8?B?eWdTZnArcmtTSXdJa0pVbnBkdCtnaFlITzRFbzBGSjN2SnQrR28rc1RBT0RZ?=
 =?utf-8?B?WlR2US83SkhzN0xNdkxiSUFmSTMvTWhldTYvaUN2UG0xTGpiRkRDNkFqT3hi?=
 =?utf-8?B?bDFMdW83eUk2SUVFaTVwaFQ2dXo0c1AwY2FHSnZvZHZzOUpkaWV2WmswQlM2?=
 =?utf-8?B?L1MydGt6eTd2NGdBYU5iN09ZSkpNeE1JcXNLSGZlR3hkUk8zMWZaZlIxTVBD?=
 =?utf-8?B?U3dXMnNtc2lPUUJTemRMeUZIMmFoZzNzdWFydEtvak5scy9HZko3RGUwejFF?=
 =?utf-8?B?OTFSdURtS0htWlM1b3JxU0N1U2JKa3JIQW44Z245OXdCYXRZRWEzSE15SEs2?=
 =?utf-8?B?RjJtZXNMZ3d3QTBuUTl5VWdUSlYxYll1Smh0WHltVHFiMlhNZmRvaDZZOTFT?=
 =?utf-8?B?VFpCZ2ZHMEJSdlJ0K3hwVFcwdGFYb1NHQllObHlSUTBuajZDSTNJd3FsdXJR?=
 =?utf-8?B?bUhQbVJvVVFPbFVLU0VRa3hiYm1xL0oxTDBjb2FtMXgvd3g1YlVoRkRuaWZ5?=
 =?utf-8?B?RWY2VVpyeElWWk0wRWlOUEdRclc4T0VsOXF2d0txRXBoZ0RTQmVRVmRuMmtZ?=
 =?utf-8?B?R24rZVptSGtoT1pBR1NQNHRacmZCbFZkRnNzZDNSTjEwWmlmaHZRcCs1SThh?=
 =?utf-8?B?K0RZWmlTNlBOdVJjODlyRHB6c2toMUxqU2JwK2Q1U2dRSVVqWTB0cy9yeHhF?=
 =?utf-8?B?YUhqZFVXcVZBT2lhVTVybUhYREMyczV5NWQvbFk2REVCWTdKLzBlRWZBRXQy?=
 =?utf-8?B?ZWlTNW1JNVY0TFMra1luQVk2dkRqekZXS1lOK3p0ZmthSGU4RzhQS2txSnhs?=
 =?utf-8?B?YmttK1F1aGdxaDBzdUhMQm05UFM0eCtsYlE2WG1KamVhVElaK1VLcUFNN2RN?=
 =?utf-8?B?MHpwT3FqMlRQSUpZVUJMMnVDS0NmUXlHa3BGUmt4MU9EdG4xK3crWjYrMmdw?=
 =?utf-8?B?UmpXV0taVWltMzhHendsS0x6NHc2ejRTQUNPTkwvQnpaKzZocVdybVRJc3FK?=
 =?utf-8?B?MWkrYWErNkVtT283d0RLRk9RVnNSRkRub2x4Rjdzd3R6cXpqWmFqMFU5TTEy?=
 =?utf-8?B?bnltNEtGc1Y3QzFJN3IzMDd2clVrOWNTZUxDRmRNdGR1czRhbW43UWh0Zzcx?=
 =?utf-8?B?T05LaFV6NURxeTNIenYvdTA1RFNIaGFsUWhNdXhvMU5SZXRGRVVOQ0J5ZTJX?=
 =?utf-8?B?WmFxem5DUllIR1l4RTB5WndXQk5jbkhDQVVQSVFWYnRqVE4wWFZ3UWJDOFdy?=
 =?utf-8?B?dUJzWkF1Y01DL3BJTnVJTjRTSlpWa3Z1N0xjYi9lZWpLalRPRFpWd1BzT1ht?=
 =?utf-8?B?RzFVWjlNRDcwWHZPWjJWc1FSdXJybkwvTFhYWUpESUlhV01jd2RZRnpmbEtp?=
 =?utf-8?B?L05rdi95QStCdDlMWVc1UmJsREtBWkRJT2kwOHdZaEVMdWM3czduckRXYXJi?=
 =?utf-8?B?MGkvWDd5MVg0RVdINUc3WmhJNm1URFJIcys3WDk4MWRRV2tFOEpJWHNEN095?=
 =?utf-8?B?alNjR3k1eVlyWWk5NTFZNU4vbXE2OXozdHpzTXNDT3BGb0lIaFZtWkdTOHly?=
 =?utf-8?B?Q1JpcUg5QXNUZVQ3SkhmVmtTRUtHUWF5VXUvTEl6enp3U2FpR3QxelRuMEdJ?=
 =?utf-8?B?N204SnBsVnpoZDlTTi9zaXFiZktQSk9aRnB3YUl2dXVINkgxdlYrTFJSM3Z4?=
 =?utf-8?B?aldCSjZWSjJtNEFURWlKSE9nSjdtUUhaWlE2eU5HWjIwOVNMQVY3andiM0ZJ?=
 =?utf-8?B?VGZJNDByVE1Cc0RoSE0yU1JTaCtsaFJIYVJWUFVxOUNwRWJ4dFFDWEhEMk9X?=
 =?utf-8?Q?6dZobX9RIDJd+fc7qoZ/mTw=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9baf9d38-348b-45ec-c969-08de2e685f4d
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 10:24:54.4711
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c8pt7o0BfpwaOtn4KlyhxUMsC0V2i7cQIDh/nBHPg+Lo7FijUgz5jJCPEdvz0KSPmDg5IOcYoudiIwFUXZP3H9M6Gwou9NYU/1oyDquTBbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8536

Hi Naoki,

On 11/27/25 4:20 PM, Quentin Schulz wrote:
> Hi Naoki,
> 
> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>> audio-supply for Rock Pi 4").
>>
>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>> [3][4][5].
>>
>> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
>> and the garbled serial console output on Linux.
>>
>> The ES8316 headphone and microphone are confirmed to work correctly
>> after this fix.
>>

Please test the ES8316 works when booting Linux from a U-Boot where 
ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.

Having the IO domain properly configured from U-Boot may make you think 
that the ES8316 always work in the Linux kernel but that may not be the 
case depending on probe order e.g. between the IO domain driver in Linux 
and the ES8316 (if the original issue is indeed related to IO domain).

Cheers,
Quentin

