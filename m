Return-Path: <devicetree+bounces-118571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43BA9BAD2F
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 08:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02258B20E5C
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 07:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B09419CC02;
	Mon,  4 Nov 2024 07:33:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SE2P216CU007.outbound.protection.outlook.com (mail-koreacentralazon11021089.outbound.protection.outlook.com [40.107.42.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EA719645C;
	Mon,  4 Nov 2024 07:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.42.89
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730705631; cv=fail; b=MNlSBvxJ5fqgB1NkkKnCWNUvZZxYaJxZNP9g8wau1BLORqDZM/1oLng1Zduh5YgkWxSLvDsnOgmeBSIpe3jxyJIbzZQkC+nQt9YOc6WtPA0IQquKEarx/tgpQl9+1GUSZBLR8cXnPRmcnnqU1P6DJMyr4gSTcAbydWxd1WAOAGg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730705631; c=relaxed/simple;
	bh=jSZV3ionNDKdq52qz3Ji7k5UiaTFjjEpDcBbEV3hT9Y=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=gUOUx8nt5dkn+kuV/nsNl3rm8nO+L5gPyDJcRrfbeO7vkCXrXuInnJtZkJowNFvbg0iMcdVZqdDZXa0qCXLO0EEqujbbtKnd21odPUeFKmLVMZ2jx3GtdCUujLxdPVEOuo86tR+pDD5DwL9Xl4LEiox2v/5RL0LUYRfusnO/I+w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.42.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6x5e7oEGiGaFVI/9cwTSOJ6gmqnArIHYoJ6RtKSPABL0azc6+CHBYveu6XlAnvOdSZKm74XWnjsJx7MZK8EdUzlwMmRNNHmxTuNeiTLXwj4Mf/AoXWNhkt+ckIFMLFwN8BJdqnfwNJ89SN1+OckILIiWO4xnErThWOoscxXfByhh+Dh65HRRW0j4ylHtb5VkhrZXWuZHmH2nQjbSCcKljsu9uFMiG/x6hdfEeamox3M7H5HSNlzk8csS5N+1a2Omyb/9TKZgqi3nHaEZC8W3wJK0QBKRBZlvN3Rd4OzL8F16VuHsasLDZOoNvVsq2/fpnBglw6XBao7FXd+0P7bnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jSZV3ionNDKdq52qz3Ji7k5UiaTFjjEpDcBbEV3hT9Y=;
 b=hV2OtcuwqnLTKNolV3XWfr9zB8f+sPOt61kvA31gdxUMwaxyt+ANG4WOq4c49rqvOasUH2myv7kh2mg3i12tefz+2FBWRmYeRlEgoMgcph2dRYAFjpKaosr4+iNE9A7CkNh/9MIK9XiAOoUrBHov4WmhAB+69Y5xXL9cshA/sj+x5JTiV8Ibw+/8XoiN/txifNQFZRTNoDSacypTuzVJSOcJo95BtPJDfaVBLFxqIt4UHS3RdNBTlisWlsJgBYHj14LrUz7yj8xl0bPPq1i/I/KzbI82zDzJ9/XQdcxTfQm9WedLhnEYE0HcLwI2E7FSxC1yrMwZtOcfmg6vLN5BJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE2P216MB3133.KORP216.PROD.OUTLOOK.COM (2603:1096:101:28d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 07:33:47 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%4]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 07:33:47 +0000
From: Ki-Seok Jo <kiseok.jo@irondevice.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
	<tiwai@suse.com>
CC: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/2] ASoC: dt-bindings: irondevice,sma1307: Add initial DT
 binding
Thread-Topic: [PATCH v3 1/2] ASoC: dt-bindings: irondevice,sma1307: Add
 initial DT binding
Thread-Index: AQHbLouKiZhyQxp3QEaHiHHnHEZlXrKmujyg
Date: Mon, 4 Nov 2024 07:33:47 +0000
Message-ID:
 <SL2P216MB23377A60BEC4396ADFA78A6A8C512@SL2P216MB2337.KORP216.PROD.OUTLOOK.COM>
References: <20241104-irondevice-sma1307-v3-0-4bbe79895f54@irondevice.com>
 <20241104-irondevice-sma1307-v3-1-4bbe79895f54@irondevice.com>
In-Reply-To: <20241104-irondevice-sma1307-v3-1-4bbe79895f54@irondevice.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SL2P216MB2337:EE_|SE2P216MB3133:EE_
x-ms-office365-filtering-correlation-id: a7a086aa-324d-4cd2-2f8d-08dcfca30520
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|7416014|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?QWNqZVoyYUwwVG1qNXlROFdqRVJ6c0xUNG9rd1A0WE1nR1Bya2NsZGp0UWZx?=
 =?utf-8?B?ZUJpZ3RhN2hPODEyNHd0TnUzamx4L3cva01mc0Z4cVNYRENEOVN5TGZvbllU?=
 =?utf-8?B?KzRwbHVyRnoxNEZCMFJmM3VuK3BBWnp0cWh6aWV2Ly9LYXRXaVpZMFhqU3pZ?=
 =?utf-8?B?dmNJUDQrZFJWdEVla2NOMXRIbkhyYWczT1luVzZtZFBnMTE1alA5eVI4MHFz?=
 =?utf-8?B?MVJQbmp3SzRCM3lsYlZRQkdta2xlUi8rcDZzdlNmaHhJcnd3ejFGdG1QblE5?=
 =?utf-8?B?MUt3R2NhUCtrUWlwM1dGandQNzlTOTNBbzVPNS9KL2R6bGo0VjF0U3Fmcisx?=
 =?utf-8?B?NUFiRzBtZXhPV2lVb25jSldaeEc4RXBGYTBHc3hud2RLbzRGVW1KdGdqZzFp?=
 =?utf-8?B?dzU3eDBBRlpYbW9ZQjcyZFlnUTAyeUJ2T0QvU01hSnlpOVV4dThmd1FFYXRJ?=
 =?utf-8?B?UktDcGJFd2pxUUxZeWJ6WEc0dlpYOXN2QVE0Zkw4bHdOZGQvaDZWZitVQlJL?=
 =?utf-8?B?OHNicjhucEVRbk14dW9SRHdNcTgwUTR1YkFabXM0NnNaN0ZSZ0VUejRpS0Jz?=
 =?utf-8?B?Rzh5UmZlVkkyQWQ3N2dkaWN2bmxzQWhmZTBxbkFldEV2QndlWTM5VTlnR2Z0?=
 =?utf-8?B?SGQ3cnp2QUNZaDVQUjdhQVlZdkZQQUhvcGcwRlBnc2xCNmtKNUczOEdaeStC?=
 =?utf-8?B?YVk2QXBKNW9rSmxlY0cxbWZTM0toTjNkeHRGUDNTQWdyWXNzbHlOcU0rMUxp?=
 =?utf-8?B?RmpPbjQvY2JLb2tZVmlQeStlcWdPV1NHVVJCY3Q1YklxdTlGdm9CZ1plMDdD?=
 =?utf-8?B?RjdnOUpkZ0ltUHNLSnI1SFI0bnVqaWI5dTdMV2lMK25TczdHZ1hGZUZIdmZp?=
 =?utf-8?B?b2oxaVRIbm9GdnhDNVZMODVKQnFiVndPNHhZakUrSkJVcGJDRzRrZkU1SWlD?=
 =?utf-8?B?NTE4cE5ZOHBxQUtQcWZ4SkZsMy91bnoxN1BqSC9NOGgyWDVPby9IME0zNEZn?=
 =?utf-8?B?Zy9BSlRKeWhvSHlzSkwyNXA1eXVoeThhVlREeTd1ZGVTYnJlQ3I2UnZkd3kx?=
 =?utf-8?B?UjVNdDZuVkdxenRiblFZbUdrUVN3NjArckJSc3oyVndRUStUanNSNW9oeXhn?=
 =?utf-8?B?VlNNQUpFWWZIemVRV1J0aWVWYmlOM2dwWTBYalAvb3ZSTVdoNmtxWHYyN0Yx?=
 =?utf-8?B?OXRKU3R0RERtSzJTb2lHTmpSbjNFTS9rYUkxSWVRMmFweWFBd0w2MXRzbkZi?=
 =?utf-8?B?dVY4KzhLdVYyT0ROMGxNcXJjR2RVLzBTVmJ2QTA4cUhmVWtxWEJoYWNTRnFi?=
 =?utf-8?B?bjkvWjlWbEJjUmNGYVpBK2VPTWN3S0dvNjNpR0tXS0xhVnp4Y0pBcWFaRndP?=
 =?utf-8?B?WUZxZWptaDYwTXlKc1pwSDlkZjdVcTV1a1BXQ011SGd1N2ZnaXZ3R3RVV3BW?=
 =?utf-8?B?YnpRenlVMi9BWWZHd2NZL01CUkZHdHY5NkFHSUZZMk5xUjlhMFpRU2NiMSt3?=
 =?utf-8?B?bVI1N2ZDakUrdzIrdTkrMEVURWM1RGtRV052Q0lJZTJMZDJrMzBlNmJQOWFF?=
 =?utf-8?B?TFQrYmZ6WkJjanBPZDIwa2xLSkVKMCtIREV2NEd1NU9GUGc1OVhYZHB1dmlV?=
 =?utf-8?B?UzFwQ1lXbGdOTXFqZG9oenYxVXF2OFlKdFlQOFhJZVhDUE1wdEM3ZzBnM2Qy?=
 =?utf-8?B?a3lCZlB4SkMyL2JwVHlobWFhdXFlK0tQdzhESVNKeTI1ZDV3TFpBQmJvZzQ5?=
 =?utf-8?Q?6XSu+cMN2HXfWdDy6ubD1nsmSDP6vzOIe5zrE9N?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:ko;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?SUd4S0h2NlVXaHBKSHRXUTRoMzB3Y3B1dEk2dVhpdk5xVjFaYy9lUmZtWTl6?=
 =?utf-8?B?TFhRVWIvU3l6N09Cc3F4dmYrOUQvd09hRUsxc3NEbTVjUzFqbzFyNGhWaWFa?=
 =?utf-8?B?SmVXR3V0Vk9pemI3cmd5TnhyWTUvOVk1T1Q5V3RvYm5DM3k4enBoSC9veDBQ?=
 =?utf-8?B?clpVWEdjNnlWcnk4WGNkNHRxKytiL1d4dFJxMCtFd09mQW5NV1JkYWYxSG96?=
 =?utf-8?B?MjhGbytlSkxrSEdsMHR3bzlkMWU5bjdvNE9JTnEzd0RrcTBlQjhhZC9HZnpP?=
 =?utf-8?B?d2VSRWxFbzAwVy9YQ01NUkFIaWdXY01SQ3FoL0o4MWlnL3gyUUhRQWNHKy9j?=
 =?utf-8?B?YkhkaElaU3lTQ3M5Ky9RU1ZRM2FhUnRtZkUyNWN1am4rYnkxZ1lNZmpyQ01z?=
 =?utf-8?B?VWFTblgvbmlIVzVSOGltWjFvRDA3NUtTeXVEQUhmaWVLVXR4eUt1L3RTbU52?=
 =?utf-8?B?UXdtbi9ka3A4bDVHN1hiWVpmYllwSEoxdHZRZTVzWUE3bGlvOXpPVXI3QUsz?=
 =?utf-8?B?ZThRUXhGeENYTDNNNUVUZEN2dVdrdVJSSURYOSszSW9OM3NHb2pORVQ5R3ZL?=
 =?utf-8?B?T2hNVVZUSmtjMDNFeTFNaDFHQ3lSS0p5YVhOMm4zSkpBMnJXTDRaWFdvZ1R0?=
 =?utf-8?B?Szh3ZDZ3QTROVFpWRTQvQ09ZM1lvMnU2UWJLdmdUZ3MyTWNUbGhyNU5MNXk0?=
 =?utf-8?B?VDZ1WEV0WHV5eG9TYktmOGpSd3YvNEVKQ2xheTJlcFRzQ3lXL0pCaXp6TmdD?=
 =?utf-8?B?bEJDZUdEenhsOFA3SGxWTTRibTJWZW5vMjJrcjFLbDRlZE5Kb05rUHNHdlpV?=
 =?utf-8?B?S1lQN3NScGp1ZForRzNsL0Zabk5EN0s5bm9uSTlYakZmOEZ5RjZGOWJxVWc4?=
 =?utf-8?B?c1c4aU14WFU0SGVrUElOUVdsaG5OSVk2MXRJdEROeERtVm1yamJycjVjRGRP?=
 =?utf-8?B?YlVZZ2FFeW5wN09la3VoK214eUlpUTQ3bU5MTm8zeE1sT2dwSk9NU3hkWXBk?=
 =?utf-8?B?blYrOWJKSW9vR1puZGpLcUtjd2tiYlNXTUd3aVdycklTVlcvK2xKRHpYUDVu?=
 =?utf-8?B?SUtjUFZIUkdsRk4wTkVrVDU4aVJhM2dzQ0lLVVdqaU93MTN0aDhXaWYrSkdv?=
 =?utf-8?B?UTBMM2RkRjFvV0w4WTdFcGc2cGlIbjlVWUF5eDcyYnAwYXRJeGMwNXQrd2hK?=
 =?utf-8?B?SUVmeXJXYVlsdEFuT2o4djlBYnFlbzl3bmNzdUttNnNZUXhTa3AzRTlab3RE?=
 =?utf-8?B?SEFYai9wWmE1U28vWWQ2ZnZ6L3Z4T3U1OFV4YkhKRFpiOGlDYVhvL3RWVVR4?=
 =?utf-8?B?S2I5OEtkNHFIT01ZaHB1bDFpbE92VDBRSEN4K3hUQkphcDZWWW4vMGFFSXUr?=
 =?utf-8?B?OGsxZ0hucjZkTmIwdmJtNFFJMi9nTjN3L1B1V2FEY2ZtNkFERjFtVTlab2Nu?=
 =?utf-8?B?Slg1Mzk5THlZZ0RVSDJ6aldqTk1Pamd4TVFYdTEwRjAxcFRPWjFnQVpIbFNu?=
 =?utf-8?B?VEE2bVBGNnZZUXc0b0t2Zm5GMGlQaVViU3p5aTd3VllKd3ZBeHBWZlg2NWtZ?=
 =?utf-8?B?R2pvLzJnYVNsT21wYWc1ZExhcFRRZ1IreG1LUDVEbVpDM2pkMFFYODlwbjM0?=
 =?utf-8?B?RURENExJMDNOc2IxQ081KzVRNU92OE5lb0sxUE41cStWSVIwS0lLOUVDenk0?=
 =?utf-8?B?MHFTQldEcVRXbnkvQWxRNVRtVUJhbGc0YjhUeG1XdTU3c2lXL3NXRGVLTFV4?=
 =?utf-8?B?bGJTcy9LL21WcWVmeHRYcFJVNlZQMGpOeHJKL1lWOGxOUWNlS2V2M1JqQk1x?=
 =?utf-8?B?NUtNaUxLWjRqYnRTT1NKR2g5L0Z5UUo4UXBaQjZ6dWE5ZWRHVnNWYy9KUHlI?=
 =?utf-8?B?dTQwU3BQREYxZWhTeFFORkRvYmpSTFJrUkxiZ1pGVTV5cTllay82SzNHSjZY?=
 =?utf-8?B?YStCdjZldks3bEFDY1dGNzl0WE9iYW5LcmhkRy9lOFZnZzQxUEZ0aWZrYWlp?=
 =?utf-8?B?N0NkRGVUSVFuekVsQjdmTGhLaS8xVExjc3ZySW5xUW1jMm16My9wV1ZNUXh5?=
 =?utf-8?B?ZlhSU21qcWNEK0xCcUNETEZsS1BHYmxsbmF4dkgvc0p3d2dRTXZic0orcVFv?=
 =?utf-8?Q?Z3V48/jiyX0+GIT01pv0f+9Ds?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a7a086aa-324d-4cd2-2f8d-08dcfca30520
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 07:33:47.5224
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dwvIvL0qw7mFcK17UpmzGDfUToUN1+EEs66m0yDFNrjiHqr2pYvWf+tXhfAFl7Td4nSPyhgb4nEUdgtJTtkRBNWMgi8bu5v3qh9DgriiAtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE2P216MB3133

DQpUaGlzIGFkZHMgdGhlIHNjaGVtYSBiaW5kaW5nIGZvciB0aGUgSXJvbiBEZXZpY2UgU01BMTMw
NyBBbXANCg0KU2lnbmVkLW9mZi1ieTogS2lzZW9rIEpvIDxraXNlb2suam9AaXJvbmRldmljZS5j
b20+DQotLS0NCiAuLi4vYmluZGluZ3Mvc291bmQvaXJvbmRldmljZSxzbWExMzA3LnlhbWwgICAg
ICAgICB8IDU0ICsrKysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNTQgaW5z
ZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3NvdW5kL2lyb25kZXZpY2Usc21hMTMwNy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NvdW5kL2lyb25kZXZpY2Usc21hMTMwNy55YW1sDQpuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KaW5kZXggMDAwMDAwMDAwLi4wYmI0ZWU2NjQNCi0tLSAvZGV2L251bGwNCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9pcm9uZGV2aWNlLHNtYTEz
MDcueWFtbA0KQEAgLTAsMCArMSw1NCBAQA0KKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChH
UEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKSAlWUFNTCAxLjINCistLS0NCiskaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3NvdW5kL2lyb25kZXZpY2Usc21hMTMwNy55YW1sIw0K
KyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0K
Kw0KK3RpdGxlOiBJcm9uIERldmljZSBTTUExMzA3IEF1ZGlvIEFtcGxpZmllcg0KKw0KK21haW50
YWluZXJzOg0KKyAgLSBLaXNlb2sgSm8gPGtpc2Vvay5qb0Bpcm9uZGV2aWNlLmNvbT4NCisNCitk
ZXNjcmlwdGlvbjoNCisgIFNNQTEzMDcgYm9vc3RlZCBkaWdpdGFsIHNwZWFrZXIgYW1wbGlmaWVy
DQorICB3aXRoIGZlZWRiYWNrLWxvb3AuDQorDQorYWxsT2Y6DQorICAtICRyZWY6IGRhaS1jb21t
b24ueWFtbCMNCisNCitwcm9wZXJ0aWVzOg0KKyAgY29tcGF0aWJsZToNCisgICAgZW51bToNCisg
ICAgICAtIGlyb25kZXZpY2Usc21hMTMwN2ENCisgICAgICAtIGlyb25kZXZpY2Usc21hMTMwN2Fx
DQorICAgIGRlc2NyaXB0aW9uOg0KKyAgICAgIElmIGEgJ3EnIGlzIGFkZGVkLCBpdCBpbmRpY2F0
ZWQgdGhlIHByb2R1Y3QgaXMgQUVDLVExMDANCisgICAgICBxdWFsaWZpZWQgZm9yIGF1dG9tb3Rp
dmUgYXBwbGljYXRpb25zLiBTTUExMzA3QSBzdXBwb3J0cw0KKyAgICAgIGJvdGggV0xDU1AgYW5k
IFFGTiBwYWNrYWdlcy4gSG93ZXZlciwgU01BMTMwN0FRIG9ubHkNCisgICAgICBzdXBwb3J0cyB0
aGUgUUZOIHBhY2thZ2UuDQorDQorICByZWc6DQorICAgIG1heEl0ZW1zOiAxDQorDQorICAnI3Nv
dW5kLWRhaS1jZWxscyc6DQorICAgIGNvbnN0OiAxDQorDQorcmVxdWlyZWQ6DQorICAtIGNvbXBh
dGlibGUNCisgIC0gcmVnDQorICAtICcjc291bmQtZGFpLWNlbGxzJw0KKw0KK2FkZGl0aW9uYWxQ
cm9wZXJ0aWVzOiBmYWxzZQ0KKw0KK2V4YW1wbGVzOg0KKyAgLSB8DQorICAgIGkyYyB7DQorICAg
ICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCisgICAgICAgICNzaXplLWNlbGxzID0gPDA+Ow0K
Kw0KKyAgICAgICAgYW1wbGlmaWVyQDFlIHsNCisgICAgICAgICAgICBjb21wYXRpYmxlID0gImly
b25kZXZpY2Usc21hMTMwN2EiOw0KKyAgICAgICAgICAgIHJlZyA9IDwweDFlPjsNCisgICAgICAg
ICAgICAjc291bmQtZGFpLWNlbGxzID0gPDE+Ow0KKyAgICAgICAgfTsNCisgICAgfTsNCg0KLS0N
CjIuMzkuMg0KDQo=

