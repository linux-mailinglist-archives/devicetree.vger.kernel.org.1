Return-Path: <devicetree+bounces-241673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE91C80DB0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 764CF34223B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B93530B52E;
	Mon, 24 Nov 2025 13:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="fISjMhKK"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021111.outbound.protection.outlook.com [52.101.70.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B4630B539;
	Mon, 24 Nov 2025 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.111
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992411; cv=fail; b=M3cR7yWcjS/vSo0SgC+guYcUhj3lrWkrlPTtc2fTCoY5KjdTqfd6/M/4bB3Dnntr69p3CklrNF40tPGaigL0I5/PbQMNrQFj3USUYKGRG6L0FiODLhQAkGqPa7aTiv74jUmwvGzpnw3b8h3wflVkhiCCXQaGKjnqBYTHNt7JIfI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992411; c=relaxed/simple;
	bh=iuXwBl9iVbXq1uA5xWBn8WSlKFgFGSxG1Dpkx08FVqo=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=eLrLjNsBZDcwu1b36qZIZm1mmP8uyfZGsU+G6L8cgaX9FSFumZtz2/bCArQxw6GEWqTGWFD+fNfBqN1Jt/TszsMLguSzNoHLJg87TSaiP/+tyP5r+uRcyks/Nq4w/QLsDPEwAlly0Ld4n02NWB9inh57rkxfL3IfAj+y12o1rXQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=fISjMhKK; arc=fail smtp.client-ip=52.101.70.111
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SyGckkGt2oJUx74K1Pg8RXK6Il86HtH2rv4wE6NZpXqgQzwSVRlRP0Pn3KHeo5id1DCfXrn3TgmSXM+G4pDexbjM16Eh62N7JOOJWwfuFYN0vUQ2ZUL834p9dLzsNPwEb5Kg21BZXRjRGTi0PYjL2iOnl9f/57YwIUWmVVcZyIgqVhIO/+GVc7eZDcRCSRFIVS8hF3wbhnf53WKQk/1yxehyrjPu8sn9e+rtWdAlS0XVQaCwBJsNhiIXiiW04Rwgeo22GV1zhFGsjxwOjSKt659uy0MQgGh1+n+Gu+RaJnBfW/lkX7oQ7+ERRMjGgjCoh5v7Lja8sE7VPisa3uhxWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pha3D0NL1I0s4/g39R4LRQQdwIegOSw+fG2QqS761mQ=;
 b=nQCB7LJ4og/Y7fkCQ1JTyj0RK4Dr7r9rY54SRLUCiHTPqOZ0auQqrQjl13/mQrv3utfQVr9Tk84CuMhnRESZTEe6+wnUZQVR6Y/35dkHqumo75ubQL4sQQPspPczrRO3Eie1XFpbLrzlEm0uPp5uG8dPJbF6R2vUz794VoN5VsaVtYf/cKMDNZ+/MCpw44407WYCzVgRXe45mUTlPlFarRFPX4O6526hkAYwIW15SdCP7TFTFd+fSYP5zHhAYua0jVniDvWjnLPW3J1Aj+RbLi3mt/oI3vOuKxwsWH8wg1KlkQpBIaNMYx3kZ5qnoR8NEZ0xSm8i+o6LjVoeIbTzcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pha3D0NL1I0s4/g39R4LRQQdwIegOSw+fG2QqS761mQ=;
 b=fISjMhKKXJ7gwQnbW+IVFB/royzaRoGIR76eRC1PH7BHMBhCCdYsWhpVYy3P34TVaLF9iNJoPFq9lLbpQm3WPROzFJgBD76NWlzSr5uDtTMZdy0Kb5R/A1kkr9ZvlnvHVjhI+hnsLM3aa88zs2+pd9YUpghi30/YadZMBdKbBeB9brANAuvF5dgPGNLSVN4NLCqUaFikrNuoZsYL1nsZqgIaTK9+IHrUqf94KbWPNckYjWwiRLfwcOX8L2eQjNTbbx8iSpS/2VB+oUo6FQ8mv1H2Lct3jQyExRAGdofzKe7qe8Y4PdwFP+4upuekGjMvZws7WTRdTy9haV/e74q4Kw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from VI0P195MB2484.EURP195.PROD.OUTLOOK.COM (2603:10a6:800:248::6)
 by GVXP195MB2670.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:1ff::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 13:53:23 +0000
Received: from VI0P195MB2484.EURP195.PROD.OUTLOOK.COM
 ([fe80::24f:8371:2871:5981]) by VI0P195MB2484.EURP195.PROD.OUTLOOK.COM
 ([fe80::24f:8371:2871:5981%5]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 13:53:23 +0000
Message-ID: <4989e0fa-7251-4f2b-b1b1-0bd534a585b1@phytec.de>
Date: Mon, 24 Nov 2025 14:53:10 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/panel: panel-simple: Add Sharp LQ070Y3LG05
To: Maxime Ripard <mripard@kernel.org>
Cc: neil.armstrong@linaro.org, jessica.zhang@oss.qualcomm.com,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 thierry.reding@gmail.com, sam@ravnborg.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 upstream@lists.phytec.de
References: <20251124123938.936521-1-d.schultz@phytec.de>
 <ehhdijawntxsaguhygczk5vrb2quqg3ep5eer25auh7rrq5f3x@pvcaxa7n5ybm>
Content-Language: en-US
From: Daniel Schultz <d.schultz@phytec.de>
In-Reply-To: <ehhdijawntxsaguhygczk5vrb2quqg3ep5eer25auh7rrq5f3x@pvcaxa7n5ybm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0142.namprd04.prod.outlook.com
 (2603:10b6:303:84::27) To VI0P195MB2484.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:800:248::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI0P195MB2484:EE_|GVXP195MB2670:EE_
X-MS-Office365-Filtering-Correlation-Id: 3eb08784-846b-41d9-de6a-08de2b60d505
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|10070799003|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TDlUdUJ2aFl2TGN3b0h6NGhxZEFLSFNXTVBGS2hjQXVvcHF0eFp1YkhZLzUx?=
 =?utf-8?B?Sk9PbDg2ME9GWFduaU5lajdwNEJwOXRkNzdWMC8wRmgzeHAyMWJKVFhOUHE2?=
 =?utf-8?B?Y1Ywa3pxZ1RNRmM4OUg1cjE4RjJoRW9GT1MvcGFHVDlvQURUWUw3MHdUS3RX?=
 =?utf-8?B?cmw5MzZqd2hiN2t5YThTKzh4bG9nMnZBNWZmQmZDQU9uMzlUaEZxV29EY3o4?=
 =?utf-8?B?V0VJSUtCaktMZzlQMHJlekQ4RzZMR2dqS0VFV0R5R3h3VUs0dWZhN1JqRCtj?=
 =?utf-8?B?Z29pM09IY2pnQmVqR1lwbk52QXhZLzVkVDBHMzdBc1kyMmhmbEpncUlDUmxH?=
 =?utf-8?B?TnRvTEt0eG9jUkVZR3JKbTByWlBSRlhBczE1LzVVYjQzYU81MVBLUnVYczho?=
 =?utf-8?B?ZHZwMzRxaDNTZ0l0OFVJWnFGdkZBY1RYcjNaa05JRFBhNGdSdWp1aXc1dUJJ?=
 =?utf-8?B?VTRnSE1YRU1zaEM0UWUrcmlFZnczbkRFT2YvOWlkOHIxVUtUQ0MvUklhM1Bw?=
 =?utf-8?B?ak5nWGY4WnI4NkRMS1psUlU3Zkx5Rm5VUGtrdVp0UjdOOUNzMG1YckNSOENU?=
 =?utf-8?B?Q1lXNjZmaHZxcXo5enk1QTdFenZQYmo4SStKdzk0bmI5ZkJzMUV2UWh2YXFx?=
 =?utf-8?B?dVJIa2pLTktMMlBJeDU0aXMwcm4rUVZKQUxJdGZQWXNyYzZjMk5xVHVWbE5q?=
 =?utf-8?B?KzVtVmhyL0lCT3NNb1l5T0ZIaXBVMkIrWTB0WElWc21lNUdieDlsVWNxemFU?=
 =?utf-8?B?QldHMVRwMWV6SG9lOVR2OFhUV0RFTzJ4MzhVbzJhNUJyVE8zaHg4MlhEeWQ3?=
 =?utf-8?B?ZTJTc0hDbHU4aElxZEJKTlhGTzZQTjk4V3ZtdUhJbDNHU0xucDVKdmorM3U2?=
 =?utf-8?B?bkI0QkdvU2xiWHdDMzdsTTJZakFnaGRUQmRINUU4c1licWpKQWpibWowbktQ?=
 =?utf-8?B?RVJkSytRRE44cGN5L2xEc3V0NVFjcWdob1ZyY1pVYzJORktUUW1NSm00ck03?=
 =?utf-8?B?NzMwdVFDNnkzaDVFNnhuZWZBL3pNTDJYbnVRdStpdjlMbSsyUlkwWUpHWG02?=
 =?utf-8?B?aUhRa3A2Rmh3VUVUSWNtYUZtLytuTHV2VzJBV2hoKzU3V3QzK1BLVHpaaWNX?=
 =?utf-8?B?QTE2YzBQenFzUCtiK0R4SVhYcjVuKzc3Y0pIZHA5bjhNVjRubzRTV3RYQjMv?=
 =?utf-8?B?U3RwcmRwcDl2VTlXcEZYZEx3QUkyR21OdTVjYTFkSzVzV3FpeHBXdmpXdWQ0?=
 =?utf-8?B?TTR3QlNIc3ZQK293OHdOTHBWWjFkZXozajIzMmVwMnN4cVVFZVpBV0NYQ2hx?=
 =?utf-8?B?UWNibjI2VXlzd1VLUWVIVW5jTzZETS9CK2Nsbms1bUR2aVZsR3Z5SlZ2VWhB?=
 =?utf-8?B?VzZKS1d4SGFrTzFkT0JBUktrWTVBcjJpa1p4bi90ZlBNUys4VXJYdUlpekJD?=
 =?utf-8?B?clNpM2RxTGtLYUpMZVgxNi8rUkoyYys5QlYzQ2pxTEs0cFNPOTBCcENyT2x0?=
 =?utf-8?B?UnhpM3ZaMVFWalNTYUJjWVhUZmdMZHROZXZvY25UOXFhUmw3VmlvbS9oN291?=
 =?utf-8?B?em8va3NRZzVkSVIrbWV1ekhHdEtlZWRQMjZOV0lxWlZKazQ0cjZEVVhZeFQ3?=
 =?utf-8?B?K0crTWc2N2Z2Tmpid2psaUpCaU02WnExME9vcUVrUUFTZGF1c01KaEJLV0R5?=
 =?utf-8?B?azl6QkhNbDJ3MkUybXI4T1pKdnU3dWcrTjZlcUtmTWt1NU5GN0FxdzY1MVhQ?=
 =?utf-8?B?TXBjZ0UrcHFNYTFMSS9IdmVpa2VXaUhWQURnaHl0U2k1RWxKd1BIVGRrVXIw?=
 =?utf-8?B?MmFqTDZvUGJHYzVFSmUrblp1c2NpeHRpNVUyNWRtZXhtZStLMEg3NlRodU53?=
 =?utf-8?B?VEpwRVdpbHpoOWJNRWZtNzUva1BsNTNUYXo4UlNNeXlRNWZGWlFJNlRhS2pU?=
 =?utf-8?Q?FpT1dTkUP/6Xo0D5vGWFpLaAlJ46o8mk?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0P195MB2484.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(7416014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dWY4Z2VTb0xKTTlmS0JXM1ArK2srNXdaWnRMMjV4R29jS1dHNWUrT1JYY3RZ?=
 =?utf-8?B?ZzVmaDRZQWdZUWt0QlJoS0h6U0pBaFlPQkdETXNKaFFuK0dKZjBudG0zY0Ft?=
 =?utf-8?B?aUV1aEtEbTRIMUFNWEFwZzZ2S1dDRWVNZTQ2WUFWTTR0UFUzUWx0U1pNeThL?=
 =?utf-8?B?aEp5dUNJdWxMTElqMWluaTBWSXIrSkdCZWdxcFVGNk92NjhYSGE0NjhJc1pi?=
 =?utf-8?B?VUVad2doQ3pQT0oxejJ0OEFlWjVRZitPZm1NOFVGeENhRGxibTZMZzZJSVdC?=
 =?utf-8?B?VUVMQTJybUpZT2pzUHhkN21CVjNvT014VUpLcmN0MC9xU3lSWFh4bnk3UjFw?=
 =?utf-8?B?NzhVclRBd2puRUtLdHgrRGtWdEttUldiNExQVU53cE9kYW00U2FyU2ZzZmo5?=
 =?utf-8?B?TXh3Mk9Bd2FVS3REd2MyeExkTHdocEpISWRTZE80eTVOOEx0SlM5ay9RUk9O?=
 =?utf-8?B?djBOTjhYQ3JUUTJDZ0tVTEg4SVh5ZUtmeDdQK0VmYmhtT2pPSmc2dnJYUmZh?=
 =?utf-8?B?WU4zSVB0QXJoN1h2TDBzYy9lNlI4RGs3WWlwZGVyb2UrMlJUUnBZZUhJbDhE?=
 =?utf-8?B?R1JqVTBGeHhKdHNJUWpobDFlNjZXQzVaRDFSQTBpMGIvUy9FUXJyMTE2eHZ2?=
 =?utf-8?B?R0tCVitDUk12UXVsSUdYWHIxTjlQbkVtUmJPclFwZThyaWJRaUdrYjM2eUJr?=
 =?utf-8?B?RStZYi92b0tadzNIaDlYQ0QrYjFGQ1UxR3JBWTY5ZkNsQjU0TlhTejNEZlRj?=
 =?utf-8?B?ZW9xNGZnMDhxL05YNFUwMXQ5cll3NGVQTk5qN3ZMdUcyZHBZc0EvMi9abTQ1?=
 =?utf-8?B?Sk5YSHl4UDRhWGljY3BVM21aS3o1aEk0NElyUTZHVGdzZkUyMkhIcWZuYmZD?=
 =?utf-8?B?dXZuQzFZNHhwTFY5cm8rSm5TVGdpci9rNy9HcVJkc3djL1BrdTNlZk9GQVA2?=
 =?utf-8?B?MElteHJmNDJNVEtTbGZzMzBRak9wSWtOTk9ZTXpWMHV5dW91NmVITlRtRjV5?=
 =?utf-8?B?QlBFdUJTZ2tENWFkMHhvOWtuc2tDOE03ZDMxeURzNmQzeWZsbFVJaDJadHpO?=
 =?utf-8?B?VTBXTTNvSXJDbTZ5RHdRa1lEbUswc1hIbEVlZ0xpQWF3OVVNTmYvdk5DNnN1?=
 =?utf-8?B?T3RsZFVaeWRaRjZPM1FHK3d2bDh5djF2VysraTREdFRHZ2FzbDkweHBFeTM1?=
 =?utf-8?B?bzFnR1FqcWlZZit0WVEzcVd3TGpETVdvUmxQQzdLaVpIdUtjaHQxTyszc0RQ?=
 =?utf-8?B?WWxmOVp2dHZtQ2ZFUWxMd0lteGtBcjJVekd1c2NCWkJ6QWZ5T0FNaGNQVmpa?=
 =?utf-8?B?RnpxVUdGS0N4Mytob2NySjRTS0NOY1BIQW04TzFtaXhUYVloY2FNNnFJcUpz?=
 =?utf-8?B?Mm9qckVRVzMwQWNhbi9pVDlQdHUrRHhyb0VtNTlKdzRqME5CMjR5dzBDc0Zv?=
 =?utf-8?B?eDlPT1JtdStjbVUzMytmNFM1VjI0SkpRWHNpc0FBL05oYTJ3amdCcVU1YnRt?=
 =?utf-8?B?aFRqcEd5cTNFUStHa0gzaDFOVVlaUVkyd1JqYllZZy9HTGZ1THovS0dwQjgr?=
 =?utf-8?B?NGtKdTVZdEhLdlFyKzA3U1FQTFV1cjNIcGlkc2lIZGN2M3c3UmdaQ09LN0tT?=
 =?utf-8?B?b0pyN2xBZ29FeTBNYjNORnV3QXZOMnBEdzIrRm43ZFBmUlVEcnJjb1dlc1Y2?=
 =?utf-8?B?UDRMOWtFR0xodytWc25icUJNbW5tcmk2S2ZFWnpGZitLcTRoUnpaOUJlVGtk?=
 =?utf-8?B?OWdkZXRYQjUxUVIzSnhwZVBjZW1EWTFLOStuOThxRGdzODlnMEVvamtMSk1I?=
 =?utf-8?B?b3RnUzRQZUlOMFZZKzBGTmc4cFdRbWtYcGo4KzRrNFl2V1Z1MEdqd29UdGl2?=
 =?utf-8?B?ZXBRMEx6SEkxclJseTM3S2RBVU1hdmlra2JMcUM0TlJGRWxrbGdXOEhrWDJa?=
 =?utf-8?B?dFFFbUpCSHR2YXBOSjU3OE5hRFo0cTNoSXFyYlc0Q0tRYmRoYnRYTkpKM3Mx?=
 =?utf-8?B?SDE4WEN1MnVpTDhmTWRuUERsLy8yMzFnSUt2WGxMajVOb080ZHFqSzRIc3J4?=
 =?utf-8?B?ZHJHM21OR3paKzlJaHp2QXJnT0E3K1JiemhjeUJGcXVJRTBwK05vcWxIZ0lo?=
 =?utf-8?B?WVhJWi9sZWZhaVVJVzFNVkZXYWRmVDBLTXJWTHdoSDR5akZCSVVjRkZjMURH?=
 =?utf-8?Q?Rjq5sJlO4oXbcAwwvGlYmXikf4OqanjMsGq9BdQBBKwH?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb08784-846b-41d9-de6a-08de2b60d505
X-MS-Exchange-CrossTenant-AuthSource: VI0P195MB2484.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 13:53:22.7463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AuXUf/QCOfxcUYr8/Plq+JArgvBajn8o2XKEFcg3w0qVQ0TSent89HwqUigMLNxh85pdEiNn0LkCfe16CHp23Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP195MB2670

On 11/24/25 13:51, Maxime Ripard wrote:
> On Mon, Nov 24, 2025 at 04:39:37AM -0800, Daniel Schultz wrote:
>> Add the Sharp LQ070Y3LG05 7" WVGA lanscape LVDS RGB TFT-LCD panel.
>>
>> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
>> ---
>>   drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>>   1 file changed, 28 insertions(+)
> Any reason to use panel-simple over panel-lvds?

I didn't know panel-lvds exist. I just convert these timings to 
panel-lvds and works fine, too. Thanks!

I don't plan to send my device-tree with the new timings included in the 
near future. Should or can I already add this panel as compatible to 
panel-simple.yaml?

- Daniel

>
> Maxime

