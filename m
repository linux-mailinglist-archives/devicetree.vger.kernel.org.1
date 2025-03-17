Return-Path: <devicetree+bounces-158134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEBAA64C5C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 705E3188D608
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2AAD23814F;
	Mon, 17 Mar 2025 11:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="rwPNUXH7"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2071.outbound.protection.outlook.com [40.107.93.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE976237193
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742210586; cv=fail; b=XfMr51RfnLMwAopPyvrE+oLKEU1XUt5TJnUpEkshLJHf2BFxvn3LrzZxrNbsXhwwrI4e1kL1utqn3MAiR/hL++WRSQwpDM8aISlIa9lbG1kySINC0ILC993lm/2l/+lWnzc6BemhOfjTLK2Ah0rq/4P+R9IG8lNn4HSLtYCOtBw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742210586; c=relaxed/simple;
	bh=itstSRvABEtqWCyoBi/pDzxUVuIvR+MBz6+JU5aqXLY=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=D7XbQdhkl+eILr7C2rZbLc8jDIgb320yRpI2gIsCYWR7Fq8uorquvNglEHTQMNRnooT+RUEq8kQXPX20054dLWHWLDLdAp3a4HfSS9PwOf7Th6uf6HEMLEj1h4o8X8rCaKgeRo4rYVExtTtlmiOUdMcpIAk7n7s2hTwbvTWWSx4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=rwPNUXH7; arc=fail smtp.client-ip=40.107.93.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qaCDibVy8bQr0GtOZI6sTZkxjsMdJPFAt5IZQ/GICmTcJk+hcxUw2f3gaoA+trrz+wwcad+RU0cJvDMW+dAGLGLQ/E8t8oqZRRur5rpvedYr6E4OGcrlI7R4Zb+w5gmoelhufRzbuwzbiAEk2D3vADQmJHRLwEE/FSiwq1xHPDg23mFZE+wg1jgSw4edR37kSPboSwATCUZIVL3BgSLsYfYIxM2a4NzAdGVyTlsSaBK69B0lbx+rD1mN+n20LHUqlnNPDUgBca+4YzM/1E/UWlLB/lQWDeqxksjub22E2JQ/8+IOTjfGuQN7PRYhFfdWm8gPKlS2J8gktWCUinPKZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=itstSRvABEtqWCyoBi/pDzxUVuIvR+MBz6+JU5aqXLY=;
 b=U9un+L/Q5zU/ZodHiqxcN/CgU47cl0k0A6hdiwzLHQr5bP78HFlOSKOYhfhkvofNAib42AD8fDOAJxm1HJq4LrUGA/FD/WcrzXBxViDOL+SQMkU+ShXXsehK1bGAhkHu5SJO4BfCPgpBQ+7SNHkVXIkzdBUAxKpfueBxaoDIQDgTSDXsMbML02qc1F1VqEdAZF6VDCLzN3jYvpM3I9uPoiFWHauUqPapMaXlKAmbxIyY/ytOnwAsrIB1985NiPqIN1Zdgb9mtKP1WH/AIzWIe+l4IrjrpGaLPZ7HErg+PfHeC7XNCMwD89/YNCG2Ln/0bU+7Y2XE0tO/+Br+Khh4xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=itstSRvABEtqWCyoBi/pDzxUVuIvR+MBz6+JU5aqXLY=;
 b=rwPNUXH7PvsZdtHZlExJSKviotLX8uWnBDfascpdQ4iHFUPsvhCsNsXbfRbBXwYicJaXdG1967aIIZK88HjVANCIYBWhQ1MhpSdXxrnhQas8jaqw8GsurZWdzzB8POjX4Hg4YySLexK9W1kdqp47FbSMiDhIRvpAJpj7Nut7seUul5G93VXYcBeE9dkFiWzYWmzmFajlz5UeziF0qB3kRAHFiPpa59LOkfxdQXI8QBpRhFhj+2H33zcyx3mc4fGnp6rKWYVFiKVtOUjHbQ/IgmvLWnlqPqHXTzLAH5eKzwxvBWm6TWnIneKNxH/Svm70KlFLNdmzu3YCCkyuYAAE6A==
Received: from SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 by CY8PR11MB7686.namprd11.prod.outlook.com (2603:10b6:930:70::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 11:23:01 +0000
Received: from SJ0PR11MB5582.namprd11.prod.outlook.com
 ([fe80::a534:22db:5d37:f389]) by SJ0PR11MB5582.namprd11.prod.outlook.com
 ([fe80::a534:22db:5d37:f389%4]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 11:23:01 +0000
From: <Conor.Dooley@microchip.com>
To: <Nayabbasha.Sayed@microchip.com>, <miquel.raynal@bootlin.com>,
	<richard@nod.at>, <vigneshr@ti.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: atmel,dataflash: convert txt to yaml
Thread-Topic: [PATCH] dt-bindings: mtd: atmel,dataflash: convert txt to yaml
Thread-Index: AQHbly3EEg3KqFKT5EiA/u7cHms15bN3L4SA
Date: Mon, 17 Mar 2025 11:23:00 +0000
Message-ID: <df80f224-5363-4639-a675-3a5918ee8be0@microchip.com>
References: <20250317-atmel-dataflash-v1-1-b5f13083f67c@microchip.com>
In-Reply-To: <20250317-atmel-dataflash-v1-1-b5f13083f67c@microchip.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5582:EE_|CY8PR11MB7686:EE_
x-ms-office365-filtering-correlation-id: 3b8480f8-98fa-48ec-c151-08dd654613b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|10070799003|1800799024|366016|38070700018|921020;
x-microsoft-antispam-message-info:
 =?utf-8?B?UkhOdkdPWDJ5MHV1QlBENFU1TGl0b0ZIZThXVjBTbnFjK2hGckowT0UyYWhL?=
 =?utf-8?B?dVJyVU5TVUFNOVJsa202WCtETWhFZ1dhRk9WNDBaamRIbEw1b0E2aVNLekNJ?=
 =?utf-8?B?Yk84NXF1QUpJMXpZVGdTODgzTzBodFlJOTFCbVJ1K3lLS3JEcERxTkRBZy9P?=
 =?utf-8?B?N3ZleGN6akNJeGk0cmJQTy9aQ2J4K3B4WGl1OUlXMFVLdDJOZkh5VjlWeHV6?=
 =?utf-8?B?UzFZb043N09rUXdnT1FvdGZvaFgvRWV6ODBvZkhIWEpKamdpRGxPMmZLN25Z?=
 =?utf-8?B?M0VZTGd2eDNEaTk4V1BTZ1p4cTR4MTVjVkNXTzdiai9iZ05PSVRyeWJLMmxI?=
 =?utf-8?B?WVFUSklPbHJnNmVlaWNIeVZQU1JxNmRCUHNnK1g5ZEl3bVcyeVJDRWh6cGdR?=
 =?utf-8?B?eUhOMEtYamVxS09FNmhnTmlxZ1hnc3IxNC9QbENaTHBZamQ5dWxFOEVKNDBi?=
 =?utf-8?B?Rmc2cWYrT2NFMkJhTjN3akpOSkwydUN0N2lJVVJCTmNoUlE4RWFVWThDcWhw?=
 =?utf-8?B?YjJYMTF4NzZXQmh2bWxVUE5pZ0ozVDA1SzZSTEpXMWJZbGl5ZWhJb2t2Z1g5?=
 =?utf-8?B?OWxPNnFQN3pxWklxUU5CYWtMdjJqUGw3NGhIYVNEVnBrc2Y2N3JHT0dGQ3Rt?=
 =?utf-8?B?WURlV3IrY09LbU1yMWxFSkhNS0tnM0lMMHpFd2ZMWStyeUpLMUVHcS8vTld6?=
 =?utf-8?B?YUxSa1d5UVlLSFh4amRnOEZ2aDhDam84UzhIamtVZU5hRDUxeUJGNEJyT3A3?=
 =?utf-8?B?eFdPVHA3TVI2OHRoaU9TT2NDY21pVUppUEFmMVltTTNXWEVxb1JRanZBZytn?=
 =?utf-8?B?RUZwV3hCRW5LM0RCL09QRnhhZVhzSTB3QThDa1F1UElMei9WU2s4TDZ6ZXl3?=
 =?utf-8?B?eXRFVC9FbnBabnVKWVZJL1V4QkxpL1BzS01OMmY1VjgvQVZQVWVYd1Q5UzBV?=
 =?utf-8?B?YTJjZWRDaTJ1UzlZMU5oWTl0N2tmaVJvWlFEWnpFMkpJa3BKMGFxblpoOHZO?=
 =?utf-8?B?ZXMza3owbW50WG1mYm5HN1ZOQW8wUWE5cVhrTlh5NnZFeFUvK2hETWpaY2J3?=
 =?utf-8?B?MjJWU2xxMG5KU1JNZXJySVlGcEQ3OXY4eTlGMmNleHp3OHFlVUZIWEdUaGsy?=
 =?utf-8?B?OW1ZYzdZSGpibWh6WU9Tdnl6TWxhR1B6SHIvNFFxZU53NjlFaWhCU3ZaNWFY?=
 =?utf-8?B?OWhORkF6ekZYelB0YnJCOVJIaDIyQjZkK2swVkRMREVtL2J4cmd6Z1A1Mzcx?=
 =?utf-8?B?cDV0bUQ0R0swelU5WjhHSDRsVDhUQzl0UTZ6bENORnNhL0dSaUhNYndGS2dW?=
 =?utf-8?B?TFh0Z3FoQmRqdFBDSEhTV0NSNmhjQXlnaWIrU1hMZm9JdkJZazJpNGhkR0dv?=
 =?utf-8?B?SmtxZDVMMTN3OEtUQTM0cDBlOXJGOVdVcXFFQ0ZuZittakp1V0t1RThDdFE0?=
 =?utf-8?B?ZzltUUo2MEFDUmY1S1BFRzdsZjR6Q0lua3JyTnYyMWZBcEVQOVhVVXc5YnZH?=
 =?utf-8?B?NHczTWxPNU1BT2FjaTQ4dXRQL1RmUDFseVZncURzak1hcEVjcSsrZHMwLzdu?=
 =?utf-8?B?UFpDeFM0a1FSUXNGZFZwMk4rRC9QUUlMbzI4SWgwVDJPWi9WbVl6UHBhSEo0?=
 =?utf-8?B?bXdiVFhvMm5kTDBaaTBiYk54SHhIS1dnRUIzSDFJdGY3Wjd1MEF0aVNpUGlZ?=
 =?utf-8?B?bzZkMlh0NWNFMFF3TTZMZTJ3RUVQVmx1TC8xcTV5ZjdFZUluS3ZvUWtIK1d3?=
 =?utf-8?B?NE9OdS9OaXpyRElrK3F5S3EvYjQwdThYV2UwMDBKTGVZZkxqQUtLRFFQVnk0?=
 =?utf-8?B?Q2wxajllWTRWa3dWU093QjVEWmJIVTFrc0lCM0pQeGl4TzhYdTlvbVhPL2pV?=
 =?utf-8?B?VU40bTNsNDFzWHAzWktQMUt4NXBQWHRCSUpOVWtRS3BwbFdYcUpyZG9XVDVQ?=
 =?utf-8?Q?w0AL5zAUko4=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5582.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?WHNzSnMxVjVmTVNRQjdBYkJJcWN0NXFqSGZvaHdKN0dobGpjYWk0UGR0Kzlr?=
 =?utf-8?B?UlNSWjVxckt6SisyYVpVaTNtdlRKaFhXQnpZQ09Gdk9zS3hYWTVQZm5sTk5j?=
 =?utf-8?B?SGREenBrVk52bzNBa004aDN3VmtmOFBXQnRwU3Y2OWVKQUdRUHE2RXBLQVFm?=
 =?utf-8?B?RTQvYkxRTGhkb3B5K1dJdkJndWU1NTUzRFhmWncvL1kvWml2S3hJa2xZalU4?=
 =?utf-8?B?QVJwRXEzMDFVQUtPZjNFcGNyT0pxektmaWsyL2ZKNXZQVmo3MEhROE9qSHlo?=
 =?utf-8?B?Qys4blJxU2VhQ1lXZUVlMGFEQ2xOTnhUcUtlbVNNUlVxYmUrRnR1YVdqVkJi?=
 =?utf-8?B?SHpXQ3hVRi9iWStLaTl0cG1KdHhiQWphbExPaHF4dnBUMGZQQnM4TWpaakFR?=
 =?utf-8?B?ZUJzWnVqRnluZG5hZHVWWDY2VFhhRG9vQUN6YjNIWjNqTVJLN0ZUMGI1NkxS?=
 =?utf-8?B?UEMzVkhoZHF4UW01cFVxNTJtRnNTeDJieHFFOGxqUjZxamR1amF0M295Z2RS?=
 =?utf-8?B?cHJ3SlBxUFpUMlg3RSs3eUp4UVRtc0hYWTN0OFRVUmFSeS9xSlE1VVVVZmVG?=
 =?utf-8?B?TlUxNWgzUm5mYmxxclF3WmowVUdnOGxpVlJKeFNYT0R0b3BVbGFlYWRTUUFq?=
 =?utf-8?B?OE11M1dZVzNxVk5RS3Z5OC9tbXQ3TEVOTlRnWko1Y3B5ZTVWSDlzbCtKckor?=
 =?utf-8?B?VjRVSjMxaUIzdUt6eTJwTld6d1ZvVEhXbnlCV0ZRT0ZlekhuYXkzR045eVhP?=
 =?utf-8?B?TzRSQjlEejI3NkgxUWR1NCsvdVp0eHpUS2JsUVhCRS8rWDVTeHhmb0Z2V3ZQ?=
 =?utf-8?B?YmJkd2NEUUE3Vm4wNmxXTEk2d21HOG9jSDR6Z2lBU0w3aklHREFwdUtuRyt2?=
 =?utf-8?B?SUJPa2FkRGNzL3V1VDhRM3R2UkNYb2R1czVaU3QzbmltbkQzYUZ0K0UvZFJM?=
 =?utf-8?B?aTFnVjY1cTMvVHNrWW1Ddm43UExSbnJ3d0hSd0FzVmNRVjAvWlJkYnFwVWdP?=
 =?utf-8?B?YkpYbnlLTDd2azNuSTJNQTNvdHI0bG9iNHE1bFZYdmdMZHk1NU0vNGxxUjI3?=
 =?utf-8?B?QUR1b3NoMytkaTZuS25nVUdOY0syZjNMTlk4eHkzcmFEQUE4aDF1K3ZnTmt5?=
 =?utf-8?B?enFBUWpra3YrMGJidngvWExxQk5XTkNhTXJlbFNJNnFYWlQ5Y3Rkc0l6bUUv?=
 =?utf-8?B?eHVKK0doVEZSa0VQQ21DRzYxTVRMd3NZanlmNmlvbWZSQVFxaitZL1psRFRw?=
 =?utf-8?B?Qm9QR3BnZG9ZSHFqMi9kK1FNRTI1dFJUbnZiRGZ0WEI4T2NzWmZBYmwycThm?=
 =?utf-8?B?SVhua1EwT0xKTGFlcnZyN0xVa0RJbllaMGlwODdRcVBaRFhnNU9uVzZOaER1?=
 =?utf-8?B?ODhiUHJOSzZFWXZZWHBZK3dOMmhPSWh0cXhBMXVuNmkwcXNxYW9wajJLSUFk?=
 =?utf-8?B?dGE0eGo4Z2dUZjdDVGpOWFBTY1Z3TnMvaGlMbmFobXIxMitVcFZNYVRNcmhM?=
 =?utf-8?B?TGRNckg5RjNxYjdUNkp6bjEvbTJPQTJzcU9UUWUwbjBCTkd0ay9TZGFwOEFl?=
 =?utf-8?B?czBqMUdqaVh0RGNtNDBRdGV2cSt3d1J4OXYzRkk5eWcwdWZPdkFWaTJqYk5y?=
 =?utf-8?B?RXFwaEFGYjNONlNsQ0dPNmZXVjV4dkpMZm5Wc0l2VTR2RDdOMWd5bFNhYTd2?=
 =?utf-8?B?bURHWk9pbksxOHhEWmh3RzZ3U2luZDFFU0JUR3dpUWpROG41ZDhXZWU3ZlBs?=
 =?utf-8?B?UGZ0SmYwTDJMNGFQcyt6Sjc4MjlRc3JlT3lnU3hCeXJ1RjJRSW9UVXJwcksw?=
 =?utf-8?B?ZFFCbVpHUVpjYi9EVDRNRzFTYmF3bDVDSGFsTXlsTUJONEhPMWZPU1ZzTFNN?=
 =?utf-8?B?MDA4elYzU084MWY1Y3Y2SWNtZzAwSlNTRHpMTmV3TmRvM2hNWDBCR0ZTMnpa?=
 =?utf-8?B?ZWtyS0Q2Zmo3MEE4bVRUZU51SjBsZ2c2SnY4SFF0dGx5SmFzYVZWZGV5eGU1?=
 =?utf-8?B?MEUvQ3lqMThXTlNXT1VyWXhsTHBZWWptWVVqMm9PNExYNDdHUWVSOTBXdWlG?=
 =?utf-8?B?Mlc4cXJIUlhTbUJOeDRVVE1veE4wcU5BQXNiRFNBWXdYUXlHc1ZIdFhIZU1Q?=
 =?utf-8?B?dlpaZjBRenpCbDVvdk04d1IwZll3dGROUnNkLzVZNFAyNEQvbTFxMFAvaXRV?=
 =?utf-8?B?RlNmRXdYMVRKQjVvMmpUMVUxOWZXaVJRV2s4MEZTTnFkUlg3ZitMY1c1MUFJ?=
 =?utf-8?B?Z252WXd0T1JldXdXbjhOYkpUZUdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C84E50342C1E3B4B87FF83DD1CA6E720@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5582.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b8480f8-98fa-48ec-c151-08dd654613b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 11:23:00.8863
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s5TKeEvH7eKu4JqX2thmgcQfomOYb1UZ0Vt2J9ybnJZPAYua8HJ51sJTFSNONcaWBv6miOYlqGihg+c/pqTMXWInG+pAiC8PwqngfLko76c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7686

T24gMTcvMDMvMjAyNSAxMToxNCwgTmF5YWIgU2F5ZWQgdmlhIEI0IFJlbGF5IHdyb3RlOg0KPiBF
WFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5s
ZXNzIHlvdSBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IEZyb206IE5heWFiIFNheWVk
IDxuYXlhYmJhc2hhLnNheWVkQG1pY3JvY2hpcC5jb20+DQo+IA0KPiBDb252ZXJ0IGF0bWVsLWRh
dGFmbGFzaC50eHQgaW50byBhdG1lbCxkYXRhZmxhc2gueWFtbA0KPiANCj4gU2lnbmVkLW9mZi1i
eTogTmF5YWIgU2F5ZWQgPG5heWFiYmFzaGEuc2F5ZWRAbWljcm9jaGlwLmNvbT4NCg0KUGxlYXNl
IENDIHRoZSBkdCBsaXN0IG9uIGJpbmRpbmcgcGFjaGVzLg0KQ2hlZXJzLA0KQ29ub3IuDQoNCj4g
LS0tDQo+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLGRhdGFmbGFzaC55YW1s
ICAgfCA1NSArKysrKysrKysrKysrKysrKysrKysrDQo+ICAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvbXRkL2F0bWVsLWRhdGFmbGFzaC50eHQgICAgfCAxNyAtLS0tLS0tDQo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLGRhdGFmbGFz
aC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbCxkYXRh
Zmxhc2gueWFtbA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi44YzcyZmEzNDZlMzYzMTI4NGQyMjI4MzdhNjIx
ZmVkNDcxMDNjODg5DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbCxkYXRhZmxhc2gueWFtbA0KPiBAQCAtMCwwICsxLDU1
IEBADQo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0y
LUNsYXVzZSkNCj4gKyVZQU1MIDEuMg0KPiArLS0tDQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL210ZC9hdG1lbCxkYXRhZmxhc2gueWFtbCMNCj4gKyRzY2hlbWE6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPiArDQo+ICt0aXRsZTog
QXRtZWwgRGF0YUZsYXNoDQo+ICsNCj4gK21haW50YWluZXJzOg0KPiArICAtIE5heWFiIFNheWVk
IDxuYXlhYmJhc2hhLnNheWVkQG1pY3JvY2hpcC5jb20+DQo+ICsNCj4gK2Rlc2NyaXB0aW9uOg0K
PiArICBUaGUgQXRtZWwgRGF0YUZsYXNoIGlzIGEgbG93IHBpbi1jb3VudCBzZXJpYWwgaW50ZXJm
YWNlIHNlcXVlbnRpYWwgYWNjZXNzDQo+ICsgIEZsYXNoIG1lbW9yeSwgY29tcGF0aWJsZSB3aXRo
IFNQSSBzdGFuZGFyZC4gVGhlIGRldmljZSB0cmVlIG1heSBvcHRpb25hbGx5DQo+ICsgIGNvbnRh
aW4gc3ViLW5vZGVzIGRlc2NyaWJpbmcgcGFydGl0aW9ucyBvZiB0aGUgYWRkcmVzcyBzcGFjZS4N
Cj4gKw0KPiArcHJvcGVydGllczoNCj4gKyAgY29tcGF0aWJsZToNCj4gKyAgICBvbmVPZjoNCj4g
KyAgICAgIC0gaXRlbXM6DQo+ICsgICAgICAgICAgLSBlbnVtOg0KPiArICAgICAgICAgICAgICAt
IGF0bWVsLGF0NDVkYjMyMWQNCj4gKyAgICAgICAgICAgICAgLSBhdG1lbCxhdDQ1ZGIwNDFlDQo+
ICsgICAgICAgICAgICAgIC0gYXRtZWwsYXQ0NWRiNjQyZA0KPiArICAgICAgICAgICAgICAtIGF0
bWVsLGF0NDVkYjAyMWQNCj4gKyAgICAgICAgICAtIGNvbnN0OiBhdG1lbCxhdDQ1DQo+ICsgICAg
ICAgICAgLSBjb25zdDogYXRtZWwsZGF0YWZsYXNoDQo+ICsgICAgICAtIGl0ZW1zOg0KPiArICAg
ICAgICAgIC0gY29uc3Q6IGF0bWVsLGF0NDUNCj4gKyAgICAgICAgICAtIGNvbnN0OiBhdG1lbCxk
YXRhZmxhc2gNCj4gKw0KPiArICByZWc6DQo+ICsgICAgbWF4SXRlbXM6IDENCj4gKw0KPiArcmVx
dWlyZWQ6DQo+ICsgIC0gY29tcGF0aWJsZQ0KPiArICAtIHJlZw0KPiArDQo+ICthbGxPZjoNCj4g
KyAgLSAkcmVmOiBtdGQueWFtbCMNCj4gKyAgLSAkcmVmOiAvc2NoZW1hcy9zcGkvc3BpLXBlcmlw
aGVyYWwtcHJvcHMueWFtbCMNCj4gKw0KPiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQ0K
PiArDQo+ICtleGFtcGxlczoNCj4gKyAgLSB8DQo+ICsgICAgc3BpIHsNCj4gKyAgICAgICAgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDA+Ow0KPiArDQo+
ICsgICAgICAgIGZsYXNoQDEgew0KPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhdG1lbCxh
dDQ1ZGIzMjFkIiwgImF0bWVsLGF0NDUiLCAiYXRtZWwsZGF0YWZsYXNoIjsNCj4gKyAgICAgICAg
ICAgIHJlZyA9IDwxPjsNCj4gKyAgICAgICAgfTsNCj4gKyAgICB9Ow0KPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1kYXRhZmxhc2gudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1kYXRhZmxhc2gu
dHh0DQo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAxODg5YTRkYjViN2M0N2Vk
MWY0OTA4ZGM3ODVhMmM4N2FiZmY5YzU3Li4wMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwDQo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQv
YXRtZWwtZGF0YWZsYXNoLnR4dA0KPiArKysgL2Rldi9udWxsDQo+IEBAIC0xLDE3ICswLDAgQEAN
Cj4gLSogQXRtZWwgRGF0YSBGbGFzaA0KPiAtDQo+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPiAt
LSBjb21wYXRpYmxlIDogImF0bWVsLDxtb2RlbD4iLCAiYXRtZWwsPHNlcmllcz4iLCAiYXRtZWws
ZGF0YWZsYXNoIi4NCj4gLQ0KPiAtVGhlIGRldmljZSB0cmVlIG1heSBvcHRpb25hbGx5IGNvbnRh
aW4gc3ViLW5vZGVzIGRlc2NyaWJpbmcgcGFydGl0aW9ucyBvZiB0aGUNCj4gLWFkZHJlc3Mgc3Bh
Y2UuIFNlZSBwYXJ0aXRpb24udHh0IGZvciBtb3JlIGRldGFpbC4NCj4gLQ0KPiAtRXhhbXBsZToN
Cj4gLQ0KPiAtZmxhc2hAMSB7DQo+IC0gICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+IC0g
ICAgICAgI3NpemUtY2VsbHMgPSA8MT47DQo+IC0gICAgICAgY29tcGF0aWJsZSA9ICJhdG1lbCxh
dDQ1ZGIzMjFkIiwgImF0bWVsLGF0NDUiLCAiYXRtZWwsZGF0YWZsYXNoIjsNCj4gLSAgICAgICBz
cGktbWF4LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47DQo+IC0gICAgICAgcmVnID0gPDE+Ow0KPiAt
fTsNCj4gDQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogNDcwMWYzM2ExMDcwMmQ1ZmM1NzdjMzI0MzRl
YjYyYWRkZTBhMWFlMQ0KPiBjaGFuZ2UtaWQ6IDIwMjUwMzE3LWF0bWVsLWRhdGFmbGFzaC00MDVl
OTRlZDhmNmYNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gTmF5YWIgU2F5ZWQgPG5heWFi
YmFzaGEuc2F5ZWRAbWljcm9jaGlwLmNvbT4NCj4gDQo+IA0KDQo=

