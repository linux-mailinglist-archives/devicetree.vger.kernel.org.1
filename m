Return-Path: <devicetree+bounces-264284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hheRJTb4imk/PAAAu9opvQ
	(envelope-from <devicetree+bounces-264284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:19:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AC118CAF
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4158A3004CB1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37C54340260;
	Tue, 10 Feb 2026 09:19:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023072.outbound.protection.outlook.com [40.107.44.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27DD3242B2;
	Tue, 10 Feb 2026 09:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.72
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770715185; cv=fail; b=eN+/WQa411ZM1S93PpsapwXLlFpM3LHPEDhJWTbPuU44+ukDA1qEzPy+H8or7VfQKTs+Pwj61mromdGEUWfUMe1qHwnA0+d7PAi00gpz0+y2t/kNbpMuVRdslc2n7hOLU6515CJVkp9eXYZyLVnzwu31706ad4qkzlNeZAPX/uE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770715185; c=relaxed/simple;
	bh=dEKGSSkB+XsvHkabvKYOvrql4AQH5lQBEb6sGG9ATys=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=GYOxdhru/04CCBON9BprGgDaHSwUhQj8RgSuZ3OWa0V2po9PeOj/INVS2YaEbmPf0WfC2VfqJSmy630Ma7paEksxWlKPeBilCDNJYdh/ft83Z2xO9oJesZAmu1dOhln60YQGilM1OSZ982Q0oDSEItl8vC1cgLtTJjrqKu+AZ9o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yKZb+uHQiUnbeKhVKU+6yRoDcxkZbkcovRWSPPIBmzA3oOdf5Cx461rL9TZbpjXTaUNNdr8cpkxJJYEe3093vmQpccRN4SVNleUVJ42DqzaysROPjEpvymu6N6NUSRlJu3z/jORyRVxi8OqA7Qw2LCSPKFYbgbqCQcghD9DrXrmOqWjv4Fj9VS2HFTwz7mJ1ZgExRSoudG5aht0v7Pmo/L2lymVpvtxpzKO9yDJpKgzIeObCmaBN8S2uWfPtcs1gx1+H09T3RGFaOWnP5EU8EaVHheJckZ9qwigmJ9E2ZcP8zlE80aTgxRz5o+fVanUcNCq4c9vPdOVZDvxLZ2R74g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEKGSSkB+XsvHkabvKYOvrql4AQH5lQBEb6sGG9ATys=;
 b=kdLIwBbeT/1wry86qFzTMWzO8jUV80JOd3O9KX18B6tPpzDhW76NuEh2o+gDl0VNjeGpkuUEG04f9T0Paz/zDLHh2eFsWFeTJ5Z9Fm455M0/s/fysh3hk4FcH4gHNDOuqwn2D6KSuMBuO+tWhICsMePr9/1l8FYtinKR+Rh/456d3YPVTosUdUR5LR/NpyamnAGkmhElTWXaqwnzx0kUyqaCt4pA6ic1TObeX6Ty32QEew0gDeSb708ZrTGv96gTDG/FGC0Q7S0DCfiTOGac0U6aWyYGVftDyjsHNwNPyDL/45VzjIXwCf1QumUel5x9nUQbzhfm0vm2Y91+mpRtxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com (2603:1096:301:117::13)
 by SG2PR06MB5288.apcprd06.prod.outlook.com (2603:1096:4:1dc::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 09:19:38 +0000
Received: from PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908]) by PUZPR06MB5887.apcprd06.prod.outlook.com
 ([fe80::f320:58f6:4dc6:b908%4]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 09:19:38 +0000
From: Gary Yang <gary.yang@cixtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, Peter Chen <peter.chen@cixtech.com>,
	"unicorn_wang@outlook.com" <unicorn_wang@outlook.com>, "inochiama@gmail.com"
	<inochiama@gmail.com>, "alchark@gmail.com" <alchark@gmail.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject:
 =?utf-8?B?5Zue5aSNOiBbUEFUQ0ggdjggMi8zXSByZXNldDogYWRkIFNreTEgc29jIHJl?=
 =?utf-8?Q?set_support?=
Thread-Topic: [PATCH v8 2/3] reset: add Sky1 soc reset support
Thread-Index: AQHcmacxi91bC/zAGE6o56iTabJV0LV6PRAAgAFnk1A=
Date: Tue, 10 Feb 2026 09:19:38 +0000
Message-ID:
 <PUZPR06MB588773AE71DBFADA6FCE2A0AEF62A@PUZPR06MB5887.apcprd06.prod.outlook.com>
References: <20260209093344.2013693-1-gary.yang@cixtech.com>
 <20260209093344.2013693-3-gary.yang@cixtech.com>
 <656acb84-ed6d-4251-8f0d-ef5602d3bf19@kernel.org>
In-Reply-To: <656acb84-ed6d-4251-8f0d-ef5602d3bf19@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUZPR06MB5887:EE_|SG2PR06MB5288:EE_
x-ms-office365-filtering-correlation-id: a8ac6a5a-0d9a-4955-2273-08de688583e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?VnhYekM1MjdHRjZMYnowbFJNcERzdEZ2YWVWdFNBZGZsVld1KzB2bzNJWmdT?=
 =?utf-8?B?cTQram1lSFI1bnh5NVR3dFFBeFRRR1pVRnozeTlkazZEeGJDRlZVZ1k0ZkRM?=
 =?utf-8?B?ZlVyOVhDeXZ1UHZ4Q3ZQRjY1RGpDL0pLNk0vaTduNDlRWmU4VTlIU2RmOTNP?=
 =?utf-8?B?cnVYSFN4UjVZUG41TFJocWs2Z3ZtTWtxb3V4d2dXRXNCOG1qUVovRGxudkNS?=
 =?utf-8?B?MHJBS2o1aUtwZHFKbmtTTUZhMVpyQUM4UjZPMnNNQmM4TG92UlI4Ulk3dTZU?=
 =?utf-8?B?cVk2enc5bWRtU3Y2MEFLanFjZ0hYUTJaclhJQmJ0Y2ZyU01SQ2ZjYldEVDV3?=
 =?utf-8?B?cWw1OXZJcVpXalp6Zy9DQU5NbWNOVHVsajNsZnlxdWJNMS9vcGJhNVVIM3Y4?=
 =?utf-8?B?eEtuZVpjdkxZUFZCbzdpMU4xRm1rVzFHNDExNnRlRm1oTEtCdEp4eEduSnZB?=
 =?utf-8?B?SVJDYXkvMFdRaGw5ZUdPU2Y4V0oram9QaUY5cGtEQjBBRUtadE5ST0lhMlhs?=
 =?utf-8?B?L3pKWjBrdHZQd2k0VG96ZmpJeFh4QUo5QXZCRzJVWHIybEt5aHlWWTcvTXRB?=
 =?utf-8?B?Q29YSTRKaDc5YWpGRmh4VGRSWGdUTm9la0RhcHBHYWpoU08zZi9OSUtVcHY4?=
 =?utf-8?B?TlBsenYyOUlrN3dPYUJKVGZhZXY2ZytLZHVXdDk0NGM3WDR2SW1iNzlONlQ4?=
 =?utf-8?B?V2lsR0U3UHpCelRUL0wrOUsvVlRXWmtwQngydTlWaVV5STg4bmk2bTJkUGEw?=
 =?utf-8?B?UHBNeXdhMUZpODJSWU12UG9iMllncnlUckRjZGtUekxCdXlXRXp1dURCK3VB?=
 =?utf-8?B?K1U1SDQ0ZUlIVFc2bjlzSWxVTGtNNGhweHZBaElmcWovOXFPcEk0L0VuY0My?=
 =?utf-8?B?eWhPcy9aWE9iZkFiUTB6Rzc3d29hbURTZWJTQmF2VXZ4OXB6bnZhM0VQY1BR?=
 =?utf-8?B?d1cwSktCRU9wcmpxRngrOTlOOVRTRGx5N0NnTFJPTXpydVloYk14S2VDMlhy?=
 =?utf-8?B?WEsxL2pSWC9QSGp0S1pQblF2VVY3Y3pkZzdRNUh4NjhOaEFuOXBHNWdvNkZD?=
 =?utf-8?B?NmdZcklLMEg0VEZQK05aTUFiU2kyZS96em9jUnE0TDUxM0w5WlhJOW5JZElP?=
 =?utf-8?B?UXN1M1RWL3RuOFFEeDVrallsSGkrTVhHZGsxek5KcW5Ta0ZCSEh6djB0YnlX?=
 =?utf-8?B?amxTeUpSQ01qS05EVElOdGl3T0hkblZLVytmYm9BYURlTjE3UmhrcEhSdG51?=
 =?utf-8?B?STNUOEk1YUVKaXlxNUh2aG9NeWZMa1c1QmtOdW1LZ1c4Y2dUUUJBQTF3dUYr?=
 =?utf-8?B?UXRzM3ZsVFRMVFBYYUp5Y0lneDdxSFdUZzlybWZmeWYxdHRROG5xTDhXZ0Zp?=
 =?utf-8?B?M3pSWFRVNEx6ZnRGYTRpSHVYRG91VGdGT3E1bEN0THBkQWtFakhiam9idnFB?=
 =?utf-8?B?RHhoNnNRaEVUc2UzekNNaG8vTnNRU2lMMFh6d2FWeElUSkpOY3kvMktuaThY?=
 =?utf-8?B?RGhONy9ieEdtUmtyRmpUN25aVFIwUHN0blJVRndJWGxEUmxIeVRBZDhoa3VX?=
 =?utf-8?B?TzBUc2VpUmpTT3pJL3NERFpvSFlManA5SDBMdmw4dXhKeGFKSm9mM2ROZGxM?=
 =?utf-8?B?V1duS2NsMzVYeklFRjQ0OEtLUnp2a1QrMnduZmpzUXEzaVBweDhkV2lTK29j?=
 =?utf-8?B?TDkvcmlzRWNDdzZ2VGM3TEVvb1hYblFrdjF0QVdZOEJid0tVZEIzdFdZbzl5?=
 =?utf-8?B?MjlUZUdHalpNS1VEM3d3eXBKazk4MFE1TW8zbzQ0cmhIbkQzN2F4VlBpdEF6?=
 =?utf-8?B?ZnU0THBSaHFIeWllV1NEZ1A5bThOUVJFMTZyQzNSSml1dkN5cUpRTHcyaThI?=
 =?utf-8?B?c01uREYzSTMzVWRaSkZLR1MxTkRweW1CYm5QQndGRURUKzVQb3MxdU1kSWo2?=
 =?utf-8?B?VXViZ3AvcCtMUGNIYklZWFl4ZUluMEtZVmRBYlVzN1Q2WWhRNzZtUHVCaHhT?=
 =?utf-8?B?eHVWSlVjUFNiQVNIR2pwRVRhWVF4dUhENUFkSWZKTTVPaUtTOXk4NHlOL0lj?=
 =?utf-8?B?cFBBTU5MKzZlZE9Wdng4eGtuZTBEd0RWMFF2UVY1ekprVTdvYTFRRnRTbGRl?=
 =?utf-8?B?WXJkekthNnlGUnZTTVZ4a1BEbjd4Y0kzVmROMjlKdXc4ZjZ0SGRENHhmSzNQ?=
 =?utf-8?Q?b3+H+uvJ93NQKAtSs3gNHn4=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PUZPR06MB5887.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?QXZmLzZvRFJYeVFXUXl3OHVOZzVRT3ZUeG1zYmUvZlF1aFZ0dVc4OGtxUVU1?=
 =?utf-8?B?dzh1ZUJNeDBNdnVTeW5kNFdsSVc5eitlQkwzMlplMWtZZTVsN1puUHJ1K0d5?=
 =?utf-8?B?RFE4dzE0SVVXdGx4OTBWaFlCT2N2bkVKTldFOXlkQmF3Q05vTm1sZ0NoWk9T?=
 =?utf-8?B?emRhamV0bkpJTFNwaVJGRlNVaTZNL0JCekVvalNMUExxeVRDYzlXaHRwTW1i?=
 =?utf-8?B?YXFuS2dxdWtaWTNwNG9XUFcxdTc4RmJxU1JmenVLSHVyV1U2UE1pYmU2N3dY?=
 =?utf-8?B?QkNvK1huNHlReFlDcWF5aDJrVHYvR3Q4VU90Q0VIdXE1NW91ZVhiSlYxeUQ4?=
 =?utf-8?B?aEF4R3ZmWVpXS3pkU3hhbGltQ1BXNzd4RFBBTVhaeGRUNDFNdHZDb3JyV0xL?=
 =?utf-8?B?Zmo5NGFBWlMxenMxTlNuVGhmL2o4aVdmUkdKdzJEdlAvRTRsaG54MXJGa2dw?=
 =?utf-8?B?VGExK0ltTHMzYTRsNGRYTjF5RUJXc1dLZWhmeDRSemgrRGRyTHpVWU1pekww?=
 =?utf-8?B?Z1NuYUpIdUNvSDhIMHI2YmRLYmxIaG9XQWpuZlRaNHhYSmFwUGhoNm1NKzIr?=
 =?utf-8?B?WGlKOUM5WFp1Tk1zdFk5cVBJS0JtaUU2ZWcyejFVYUFvUGJyK3VvczhXZlBI?=
 =?utf-8?B?UkRyYmVSQkZpTkFwRVp2cDc4UXJic2orZEhvam44U0FTUnBIZzhQNmErc09r?=
 =?utf-8?B?R1d1b05FZHVpYmNPK1JwNElMckRGZEpHaUtVeWZxYXBmNWd3RFhwQ1pXSTVx?=
 =?utf-8?B?NWFYMzJjdWx1WDR5a2ZIZEhESVB0RHEzL21NZERCZVZEcVo2T1JrL2lwMmI5?=
 =?utf-8?B?VVdGYWNEZVdnR1BpNVVmM2lWSFNDWDdpWEhabXQxY2ZRWlBHSVVYUnU4QVFU?=
 =?utf-8?B?Smh4Qk5QWHJrVVc4T0RrMVc2Tm9pK1hZdm95UExQbENLYzJqSWFYSTZwU2RF?=
 =?utf-8?B?cS9UNDNoQWRCQjN2SzVsWENNSDU3eFZYQUZ5bkZlUlFOeVVkRVE2aTlIMmJj?=
 =?utf-8?B?amU1Z2h4b1d2OFVqeG5HN2Z2YmFCMjhaT09PeE1rWDZ3UUZMR0lyOVVkQUNp?=
 =?utf-8?B?aE9hWk0rOVRsbThyVEJSa2dEazZKVlh6K1BlREwvOStQK2pFM2psR0lDQUF4?=
 =?utf-8?B?Mnhtbk5FZ1RsR2xab1dYbTNvQ1ExSjVLTStpa084MjgyR2Z5RHdaZUJkNU9h?=
 =?utf-8?B?OGtrWVVvd3dFaTVQdHhrWGdLa2JuUEhkWnFRQ0JybmNRMktpOWNRcUFadWpr?=
 =?utf-8?B?MFFhaUtyQ29WQmRtWElBLzFOM0tmMUJ2ajQ4aCtpc1NMMDIvU3dSRzN1d0Ir?=
 =?utf-8?B?MytUNDJzWXN5cVh3UlZmcCs1S1djY0JXd2NvenhSdkpYeE9ISkdCeDZoUUI5?=
 =?utf-8?B?RjNTL3RFbTZpSFpEZC9HWDJvaGpHTEs2eGdkcm00MmIwNnI0SitRbVFWMXUr?=
 =?utf-8?B?MUs0aUx2Q2xheVp4Z0tIM2c1djhwMkoxajBBdFlzNjA1QUQxb2lKWFNSQ2lS?=
 =?utf-8?B?WVhqZ2lNMjVXTzhQTUpXbFFRNmZ5d2N0L1VmRDhuUUhZcGprNDYxR0tMRG56?=
 =?utf-8?B?STd6alpYa2RTRnIyY29RKzFZZTVmN2YwUjlYVGZjYytQUEE1MVFINkhNMUVm?=
 =?utf-8?B?SGxYTDBDT1A5eXJxeFZKRG5YMUV1OXFDeG9qeWlYS1hZYi9Oa0RlalhVMlcz?=
 =?utf-8?B?RjBGd3lHY0FIZ00yUjR0NTA4dVlMRjYzN0lJT05DSUFZR0ZqOW8xa1FLMy96?=
 =?utf-8?B?OWlXRjl1TWVLR1BFMGNnWVJ6L2lnVUs2cXlvdlFYbWF0bGMrOXRFZmVNSFZL?=
 =?utf-8?B?b2JsVDJMcGVIcEt2ZXk4MG9UZzRQRTJ2ejNCSjRHNDVyZ3p2WThIb3cyVkFk?=
 =?utf-8?B?bXE3NnpLUmZCY3FSQk1oLy9OQXdpTWxRMU1kQytaaU8ydVErZXNueDgvMnRY?=
 =?utf-8?B?azFTbWU4N1dDdDR1MGZHZnZUb1RQM3EvTUszOGRsU2p0SWNWSXZvcjdHNEhG?=
 =?utf-8?B?VGRUcEN4RTlUQ3RMMUhReGppRXZ0aGIwdm1vOHptWVNJRXNJMzZqSkJhbW8y?=
 =?utf-8?B?MTduOWd5Zi9JRlF5NTk0OXcvaWF4aXhWL3UrYjhyKzBnMlpLU29tbDR5N1Bl?=
 =?utf-8?B?dTRyR0xXdFpoNEd4V3VnaGx0aTJ0Q0tOREUwejJJSXBYYmNiU2lLSHhsS2xD?=
 =?utf-8?B?QnNrb01SR1loSjNyR0lkRmdjQ3hnWVVmc05GQm5Ma0tDWldmaWtORXJ1UURU?=
 =?utf-8?B?N09tS3IzSkJFSDhKQVFJZWlBNzRKeGRON01PbzRYR1JBTUljWnllY3NCZDFK?=
 =?utf-8?B?VUg4WHpMVDhXYUVpYkhXWmZZeDBjV1dmbkVsN2lTWFBSRlNndTU1dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PUZPR06MB5887.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ac6a5a-0d9a-4955-2273-08de688583e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2026 09:19:38.5795
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljHjD70tTdZBtPTtfts8pfJk84rkgEpGRa9iGq52t4ExFJipoyvNnMhoJlopd5NWVfUuhcKlyl+w7BfEqkSpjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB5288
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264284-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[cixtech.com];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,PUZPR06MB5887.apcprd06.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AD8AC118CAF
X-Rspamd-Action: no action

SGkgS3J6eXN6dG9mOg0KDQpUaGFua3MgZm9yIHlvdXIgY29tbWVudHMNCg0KPiBFWFRFUk5BTCBF
TUFJTA0KPiANCj4gT24gMDkvMDIvMjAyNiAxMDozMywgR2FyeSBZYW5nIHdyb3RlOg0KPiA+ICtz
dGF0aWMgaW50IHNreTFfc3lzdGVtX2NvbnRyb2xfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikgew0KPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7DQo+
ID4gKyAgICAgY29uc3Qgc3RydWN0IG1mZF9jZWxsICpjZWxsID0NCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgKHN0cnVjdCBtZmRfY2VsbA0KPiA+ICsqKW9mX2RldmljZV9nZXRfbWF0Y2hfZGF0
YShkZXYpOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gbWZkX2FkZF9kZXZpY2VzKGRldiwgUExB
VEZPUk1fREVWSURfTk9ORSwgY2VsbCwgMSwgTlVMTCwNCj4gPiArMCwgTlVMTCk7IH0NCj4gPiAr
DQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNreTFfc3lzdGVtX2NvbnRy
b2xfb2ZfbWF0Y2hbXSA9IHsNCj4gPiArICAgICB7IC5jb21wYXRpYmxlID0gImNpeCxza3kxLXN5
c3RlbS1jb250cm9sIiwNCj4gPiArICAgICAgIC5kYXRhID0gc2t5MV9zeXN0ZW1fY29udHJvbF9k
ZXZzfSwNCj4gPiArICAgICB7IC5jb21wYXRpYmxlID0gImNpeCxza3kxLXM1LXN5c3RlbS1jb250
cm9sIiwNCj4gPiArICAgICAgIC5kYXRhID0gc2t5MV9zNV9zeXN0ZW1fY29udHJvbF9kZXZzfSwN
Cj4gPiArICAgICB7fSwNCj4gPiArfTsNCj4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc2t5
MV9zeXN0ZW1fY29udHJvbF9vZl9tYXRjaCk7DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX2RyaXZlciBza3kxX3N5c3RlbV9jb250cm9sX2RyaXZlciA9IHsNCj4gPiArICAgICAu
ZHJpdmVyID0gew0KPiA+ICsgICAgICAgICAgICAgLm5hbWUgPSAic2t5MS1zeXN0ZW0tY29udHJv
bCIsDQo+ID4gKyAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUgPSBza3kxX3N5c3RlbV9jb250
cm9sX29mX21hdGNoLA0KPiA+ICsgICAgIH0sDQo+ID4gKyAgICAgLnByb2JlID0gc2t5MV9zeXN0
ZW1fY29udHJvbF9wcm9iZSwNCj4gDQo+IEkgZG8gbm90IHVuZGVyc3RhbmQgd2h5IGRvIHlvdSBu
ZWVkIHRoaXNoIGRyaXZlciBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+IEl0J3MgY29tcGxldGVseSBl
bXB0eSAtIGp1c3Qgc3Bhd25zIHJlc2V0IGRyaXZlciwgc28geW91IG9ubHkgbmVlZCBhIHJlc2V0
IGRyaXZlci4NCj4gDQo+IExheWVycyBvZiBpbmRpcmVjdGlvbiBhcmUgbmV2ZXIgaGVscGZ1bC4N
Cj4gDQoNCk9LLCB3ZSB3aWxsIHJlbW92ZSB0aGlzIGZpbGUgbmV4dCB2ZXJzaW9uLiBUaGFua3Mg
Zm9yIHlvdXIgYWR2aWNlcw0KDQpCZXN0IFJlZ2FyZHMNCkdhcnkNCg0KPiBCZXN0IHJlZ2FyZHMs
DQo+IEtyenlzenRvZg0K

