Return-Path: <devicetree+bounces-69312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE18CF899
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 459292810E1
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E335D8828;
	Mon, 27 May 2024 05:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="QGGJS8ho";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="E9qst7o7"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CE34C8B;
	Mon, 27 May 2024 05:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716786268; cv=fail; b=QlDB+gFd4X0DqG3a66SqjsEE+tCTCljZ4Av6waBbbVb4TMXr51u+zw73vTAr7QLSY2PHZlIsQwBok94bXbPxFYjl0/oWVyyQjGiEbda+dw06s9VX8f9veoxhqruAufhiSdKrr8WeWUIrO883C94ESCZ98If5DY/yGw7zO8kJm9Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716786268; c=relaxed/simple;
	bh=UWUcbXrKEyShC8hNI5G1E+gA6SRyvP9hSQk+dWSzOJA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=D3WhyQraNbpgGC6JbaaGrMJL37B7cIbDWAojuEBdej2jgabszGmJIUrGOWO0u+Vm3yAJjFCa+necPJkSYNkT7GPBFwz3jJJ7kTYXZU35k8/AFQOccFvQamh0G0MMGkzoNTE1WnkCUbJAUN4KsnlIgEHIN4ifrh+aMBrMt94++3s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=QGGJS8ho; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=E9qst7o7; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 90fed8721be611ef8c37dd7afa272265-20240527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=UWUcbXrKEyShC8hNI5G1E+gA6SRyvP9hSQk+dWSzOJA=;
	b=QGGJS8hocPsXLbeNhHzP8zyGEZ/9GiUXivBPFcq6bDyWeCfmMoYpL/NnqJT8T/7ZrlcGWgLjO7pcyHfjiWvWhy5oyD9iDfUFHFQUnsDaTIPZpK4EwqtAN8tgd5nhgflO+zXFwYc0yi0Munt+ZJNJW19XhXpxa+uob8iPqOfXQaY=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.39,REQID:c1ba5f0c-eede-45d7-a0a5-edd8430818e8,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:393d96e,CLOUDID:a4e25984-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 90fed8721be611ef8c37dd7afa272265-20240527
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 247708136; Mon, 27 May 2024 13:04:16 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 27 May 2024 13:04:15 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 27 May 2024 13:04:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMQHxgT7ZYq5DZIc4sdyBRIGCgrhfRvfXhAi+k6++IsqYRNKnYD8s8RxeNiw3B0zAVUS0r6DXDs87EO5doPvH4vqQ4Dw1tY29uAsTHKMDsNOR4uktqVReiNU8beNUNndXw0UXhJy6uXoLvX9D9kvb1PYISEBdDaq+uwYl29HGdLgWmSDzfurUvlPBYqkSMua+2ov/2PTFDcAbFJsTXYXD9MXkk45do9fgCHEIqeSaRrGLEGxn5c5dcx43JSQn5qMjvt0s/gqxNB/o9s5etaYvaTmcHEbf04oX+OCD+ZuymxXGpOgxu70I6FYmR3OBbYewwPPGV+My90fjkVhNfqbDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UWUcbXrKEyShC8hNI5G1E+gA6SRyvP9hSQk+dWSzOJA=;
 b=T0axF3vHQ0krTvATZ+a5rwseXrKoE7h3h2M6h+R9UQI0GYC9T0iL6oDArd/NOFwTUNkw14i06uqkqvqnLBU5WU5Rm8EkJOxynTlxmkV7I285DPkpDX7O5eAXQ8MfUjQmoAKAkvEIJDv+fftESNzRYo0IbSJ79sUgkC5xkrtNbDbt7u6whskxwkJxfrCFjxQXELErhpRcBbH57/uVc7qNj85ZaHJoLdLoSTV0BZf5P95pH/dq1/0vWa4Jyy6k+vbCb3cuVS+y6zm9sOvudx3GZ2ZhfnCG7oOJzlodVqz4eHDVSSl3kKxfgy2/Mu+AnleBhNzjVPyCDJoLov0xFU2X6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWUcbXrKEyShC8hNI5G1E+gA6SRyvP9hSQk+dWSzOJA=;
 b=E9qst7o7K3yypdVwasYO54GYCJgU3jWwUsN8hIPm6r8aBSzd/Su2kbjHYhWnU0bIUYNcLQDBnBJXyrNWKCA0eYlb3FrxT+ef58XjaE69xeHOQDuwlXOlvaQaUJ5RFHI5s56+UfDJoBwQsIPcqPlrX96qz95FPL7fDRakkf1kbEk=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by KL1PR03MB8376.apcprd03.prod.outlook.com (2603:1096:820:12c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.16; Mon, 27 May
 2024 05:04:12 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::c6cc:cbf7:59cf:62b6%7]) with mapi id 15.20.7633.001; Mon, 27 May 2024
 05:04:11 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH RESEND, v6 6/8] mailbox: mediatek: Add CMDQ secure mailbox
 driver
Thread-Topic: [PATCH RESEND, v6 6/8] mailbox: mediatek: Add CMDQ secure
 mailbox driver
Thread-Index: AQHar+gjtzG0IJxzQk6c2a9EmpAEYrGqhs0A
Date: Mon, 27 May 2024 05:04:11 +0000
Message-ID: <5044a7d296340099b2f6233f79da99ce34f3124d.camel@mediatek.com>
References: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
	 <20240526144443.14345-7-jason-jh.lin@mediatek.com>
	 <74574f799ae2fc0674301a30d42b85698cb988be.camel@mediatek.com>
In-Reply-To: <74574f799ae2fc0674301a30d42b85698cb988be.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|KL1PR03MB8376:EE_
x-ms-office365-filtering-correlation-id: a3434099-969e-4f23-8ed7-08dc7e0a7277
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|7416005|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Szd4NnlJcUU2Qno0ZkUzZkJsYjZ1UUwrYWJNcDBmYmZQVG9INVpsRjdIYi9Z?=
 =?utf-8?B?bWpBM0JyR082UnRBQ1dvUURuR3NGSGM3S3FkT3NVbkFJS3ZVWDlFSk9QQXFo?=
 =?utf-8?B?L1d6ak5RSVdWVjlINUdhVVNWUkUxWG15ZkdYZDFJaXRKSWxLalVQb09oVU1P?=
 =?utf-8?B?WW9nY1cxOS9oeEZJV0Z5WERybGFDYzFMdlBROUgrNERKOFRqTUNJNGt2VGYv?=
 =?utf-8?B?aEhMcHY3aW9KRHRIWm84TUwycTBLaEwyNTQxYUcrZTdlV0ZSa1NnVVdBSjRI?=
 =?utf-8?B?SEZKWUlPMmFGcXl4MTEzSG1UM244VkRsbXpoUXc2UnlydFVZTHVnVGloTTlT?=
 =?utf-8?B?cUVNKzBiSXZteUMrUEI0TDJJc0tXekpqMXQ2bmNZejZOUUZ5SkxoWEtiRWI0?=
 =?utf-8?B?V1FYYmhpbGV4MEd5NGMvajJZV3hKUWorWGtWYit3UEFITjZ4cWR3Y3pyZW9p?=
 =?utf-8?B?THA1clFqbGdzd1didzFaaUZPNlpJcGZtRGpFb1dhRXUwQjE3WjlFR2xGdlNL?=
 =?utf-8?B?ZlpUc3g1c1NnUFYvMDlqd1VGcGo3YVIyanRDK0lyUXNXUUVRMVlNZFcrWXZ6?=
 =?utf-8?B?MG9kWlRobldBVXEzcUF3SC9Ha0xXV0FlRWVGRmJObVpXK2NHeVhFd002R3JX?=
 =?utf-8?B?UGxoNzNad3RPdHI4MTc4d0tFbUcwcFJMZ0svYTZxYTl3ZEtwZXJXUnJ4cSsx?=
 =?utf-8?B?MlBRVG8zcjVaOXNPa2k0ZU4zWGtxVjFTeS9KaE9YdW9QRmpNNStPd3BSM09s?=
 =?utf-8?B?ZnlPT3MrcGJKZkc0cXI0akRCdVZQSmt6eXBsVVVmNGVsRFpvNHNnQS9NQlZE?=
 =?utf-8?B?SHJzZ2VQTkorbit4bWtZckI2UmdIUStnZEY2NndkazJqRE9Vbzc5T3dsT0VC?=
 =?utf-8?B?SWxhN0Rtb2RGRS9IREorTThvVlk3Q0k2bE9XUTJUdVYyU29EeVhYK0lzWEtB?=
 =?utf-8?B?QnJyNU04akhLbGx0dis3U0liMFZFaXRETlk2ZHpuZzM5SUM3Y1VIbW5zQjE3?=
 =?utf-8?B?VmQ5VTVhWW0wTit4azg5QmtZWFZrbW9kdGNPU2Z6dnlHSzVIMGVaclVCWGZ2?=
 =?utf-8?B?QWdZWWtkdEdIUDJQL2tBNVhGaHFqMGpYend5WjQvR1ZaSkI0bURKT2tsVHU1?=
 =?utf-8?B?Q3VRSXhNNytRbDRFVWxId3ZNQjVOVTdHbTNyblBPS1VDZzI5NUFXRWhUcFZ3?=
 =?utf-8?B?S1V4NDliV1N4aWlROFVHWEc4dHNtR2N5MlFpS09WdFNpQUJtWUphNm1neEFQ?=
 =?utf-8?B?QXlSaHN1L3dYbXdFVnkyQVJuR3hjQzRpZXJOL3BnZ01JbkprM3BTSHNOWlVC?=
 =?utf-8?B?cllkbE8wV2Qrdm1JMFJ5YnYrMzYxN3dzcmlaOUo5SXAyYm04SGx6RXI4WHkx?=
 =?utf-8?B?bzBWQ25jSmJ1T0o5bURlcWhyS1JnQ003Zm04RFR5U2dyc0JuQVNPd3AzQ1Rn?=
 =?utf-8?B?MC9nYkdSbVM5NTBKZ0VsQlZBb3lKYldkQmIrMU5UWFdNblU3QkJkZS8rTGFm?=
 =?utf-8?B?cVZlMnlyOE95RWQ4bkY2dlBTSkwxZTNpbHRsR29oSzAyY05aNUtocGpQQkJz?=
 =?utf-8?B?MW9PSzYzcERIU2dJbmwzRDNNM1VlSS9sbGxFMndseUIra01uL0xpNU5rYXg1?=
 =?utf-8?B?VUtFMFpwdi85TDVKN2RSM0o3Z1RPcTgxQlJ0NnBubWVKZEdDMWF2cktieUtX?=
 =?utf-8?B?SUJVMzVCMjFMUmdEN3VNNURYeHlyUnZqN1daTkJkUDRXNElDWlBQVzBvMGpV?=
 =?utf-8?B?a0xFZWE4ZERBUktqWEZDbHoyNzMzTnJPdVlxa2R5NEtpdlg2Y1ltQlIvMm1U?=
 =?utf-8?B?L29tS1RwSjVlOGhJMjI4UT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkpqK0VnWThxYmh0K0pUdlgvR0IrczVEclNVK3pQV1NMcDJsZ3J2RGlFSURI?=
 =?utf-8?B?bnowdkNQL0ZKb0JSc2V0WnNVc2N6QTMyd3NQalpUOE1uWTgrMityb2RkOUdY?=
 =?utf-8?B?V1JYVWNTRkdLRUdrZUpMK1VqV0t5ZUY2d1Nxc3c3b0FzZ3ZYL1Q5dHVlVURk?=
 =?utf-8?B?MVNpd1AzZkQ3VCtmaGE5MWpRMmE2b3c4Q0ZMQlZMOWhTWktmMThrMTdUNmpu?=
 =?utf-8?B?dWtBNFBtMzhVTzZ0ZVNIMjM2Y2cyMkh0aGcxNjRKSlRIdHRtamowSzcyTG1n?=
 =?utf-8?B?SmV5N1A4Q3JPUW1acysrUmo4eGFBMFh3LzkzNm5vakNlbHAvYVNIbzIzc0hS?=
 =?utf-8?B?Ykxqbk9vT3pzYTQ0bkVsTHhZRjZBZjRodFZvKzhESHpZSzY5Z2ZGMHFOZnF0?=
 =?utf-8?B?L1o0SW8xRFRTQWVYQnpWVDhpdXJxbXcvQ1owWW5rNUlpdFl0bXUzQzd1ank0?=
 =?utf-8?B?MmlDdVc2QXZPYjI5N1NqR0wwZnM3RHlUU091K05BL0daems2SUwwZTZQaDVv?=
 =?utf-8?B?a08weW9QSTZrSXljTlRaRGozblVQOUtYdXNrOENzNUEwcUJwVmJ6Rk44Um5U?=
 =?utf-8?B?NWovUlRTVzA5VS9PU2NDUlZVaUJZUksxV1RCQzNTVk4vUWpybGtTaWtHckZO?=
 =?utf-8?B?UW01R3lROU0rRzdiUEJxRnBDRlFIa0x6SGZwMmlwaURGcUJ6cXdjVWJnT2ky?=
 =?utf-8?B?d2F6ZmszYkEwWUhCWFBWbnlQZldkUlNPWStsSjRUeDZqZ1JRZTk4TXFLUFJM?=
 =?utf-8?B?WnR6aFc1SGoxN2hFR25KSi8rQjBnblJvUGVuZlFMaVZNU05yblNvcUo2eUFL?=
 =?utf-8?B?Q0RHRzlxSFdJOEViTndzVkFxYjZYTG9pbGpDYmFtdHZOV1lyTTJaaXkzZTg1?=
 =?utf-8?B?WWFMZGRrTHJXUW9TalU4Vk5HUUV0NCtDRzRwMDN1SExnZTB4SFFqUXpGMVkz?=
 =?utf-8?B?dzJDQkI3M0MxbkNQMHp4SisyUzRYbWN6M3AvY0piZjF6cGZyQm51VE80MmFU?=
 =?utf-8?B?OGZ0bjBQTVpxSUVucW1ZNzJvWUFpY1VsdU1WdGhlTWJVQ3k2azdDQUxsbkd6?=
 =?utf-8?B?RDk2NEV1Wi9kTDhHS0pZZURiQ3VYaThaR09qUGhHSnZoUE9CWmV1cURyMktp?=
 =?utf-8?B?aGQ0eXkwdElXaFphbVE1U1pCdTNOTGJmd2RUOTdVQTdqdzh5cUpUN2Z0N0JG?=
 =?utf-8?B?MjQzOHkzREV6eG92a2F5QVltNEJkaHkvTm9IWWdqbGozK2RjRVVSeENQWWdQ?=
 =?utf-8?B?K1pvZ3BRUEhhN3A5ZS9sWHpOdFhqY1hDYk1DTTJWZmJYVmlmNi8xbzNYdXht?=
 =?utf-8?B?MmZ0MmJXTTRxWUJOTU4vRXVZbWZ1VHNtOTBuNjNIaWo2VlJzZGkzMWdldi84?=
 =?utf-8?B?MExWTlVKQWZvL2dRYjFKcG96Y2JPc2FISGpNLzZ6MmJnbFIxMjU1dDFCYWVr?=
 =?utf-8?B?ZDVJditFS01pSTRHT0kxMVh4Vm9tWmFML0JCS0NRajNPRTlWUSthNDRla3gv?=
 =?utf-8?B?UmJJOHBIYzRxV0MwTEN4VS9HRTFHTmNJNnc5WjU0a3dwQ3BIQmNMdDg5OGxj?=
 =?utf-8?B?aFFtMWx4T1pkSEJRYno5THhKbW1GS1RZMXFkeVNRRlZZS3ZiWFhxUnlKNDlR?=
 =?utf-8?B?dnRwNkFUTCt4T05QTXIzU1FRU0dBN1JaTXlOZ0lnWGhMeTJtU3Q4UWp3NGRu?=
 =?utf-8?B?M2xBWHl6RDBYeVEvM0c2SUZjeTlueEwvRkFFNisrVFIyanE0QnJycFVoZzh4?=
 =?utf-8?B?Y3I2Qkt0c3I1blZHUHB2R253QzZLMGpMUGNZQ29vK2JaajJRVU5tQ0JiVXFr?=
 =?utf-8?B?VTRCc29YNlptQk44bTVmMWNueUpTalZyaG1tY2dOY2t0RjVUTmovY3Z5a3BR?=
 =?utf-8?B?eWRPclJ5N3lnaythNzJKNVhJY3ZoTjIwcm1ZbjI3MVYxdEpUMVFRYm5YVURJ?=
 =?utf-8?B?Z0JPOVRZeXZjc29WOVA4eVFhNU9TUGtrRnlHU1VKakFhdDJNY2xobHR5R1dP?=
 =?utf-8?B?TlBpMjhpcDN2TXhpRGo1WFZndkdRLy85VUQ4M1YwanY5dUFRUkxPdlRpcHZv?=
 =?utf-8?B?bkZCdkNjd0lHa09odXJRcnl3eEgydUJXZzc1cDI0aldjVHlib1B5eTEvV3Nw?=
 =?utf-8?B?NXh2ZDRWYnE2Nm9ENnFQOUpzUUM5YVBiRTA5UjdkeURtVHZzZWhFU0locC9K?=
 =?utf-8?B?R2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DBC6B0BD2D56D5408924AFB3DC5BD3E9@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3434099-969e-4f23-8ed7-08dc7e0a7277
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 05:04:11.4342
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UKevsQ7K5OgFyO06JBB7fb71Bn78LFpll62xQH0UGOfbi4oMTRoWLII4wVJcYjJpGXTE0d8gzaWa78O4RToKvR01IRaJW41ObQ8ybiyAAmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB8376

SGkgQ0ssDQoNClRoYW5rcyBmb3IgdGhlIHJldmlld3MuDQoNCk9uIE1vbiwgMjAyNC0wNS0yNyBh
dCAwMzo0NCArMDAwMCwgQ0sgSHUgKOiDoeS/iuWFiSkgd3JvdGU6DQo+IEhpLCBKYXNvbjoNCj4g
DQo+IE9uIFN1biwgMjAyNC0wNS0yNiBhdCAyMjo0NCArMDgwMCwgSmFzb24tSkguTGluIHdyb3Rl
Og0KPiA+IFRvIHN1cHBvcnQgc2VjdXJlIHZpZGVvIHBhdGggZmVhdHVyZSwgR0NFIGhhdmUgdG8g
cmVhZC93cml0ZQ0KPiA+IHJlZ2lzdGdlcnMNCj4gPiBpbiB0aGUgc2VjdXJlIHdvcmxkLiBHQ0Ug
d2lsbCBlbmFibGUgdGhlIHNlY3VyZSBhY2Nlc3MgcGVybWlzc2lvbg0KPiA+IHRvIHRoZQ0KPiA+
IEhXIHdobyB3YW50cyB0byBhY2Nlc3MgdGhlIHNlY3VyZSBjb250ZW50IGJ1ZmZlci4NCj4gPiAN
Cj4gPiBBZGQgQ01EUSBzZWN1cmUgbWFpbGJveCBkcml2ZXIgdG8gbWFrZSBDTURRIGNsaWVudCB1
c2VyIGlzIGFibGUgdG8NCj4gPiBzZW5kaW5nIHRoZWlyIEhXIHNldHRpbmdzIHRvIHRoZSBzZWN1
cmUgd29ybGQuIFNvIHRoYXQgR0NFIGNhbg0KPiA+IGV4ZWN1dGUNCj4gPiBhbGwgaW5zdHJ1Y3Rp
b25zIHRvIGNvbmZpZ3VyZSBIVyBpbiB0aGUgc2VjdXJlIHdvcmxkLg0KPiA+IA0KPiA+IFRPRE86
DQo+ID4gMS4gU3F1YXNoIGNtZHFfc2VjX3Rhc2tfZXhlY193b3JrKCkgaW50byBjbWRxX3NlY19t
Ym94X3NlbmRfZGF0YSgpLg0KPiA+IDIuIENhbGwgaW50byBURUUgdG8gcXVlcnkgY29va2llIGlu
c3RlYWQgb2YgdXNpbmcgc2hhcmVkIG1lbW9yeSBpbg0KPiA+ICAgIGNtZHFfc2VjX2dldF9jb29r
aWUoKS4NCj4gPiAzLiBSZWdpc3RlciBzaGFyZWQgbWVtb3J5IGFzIGNvbW1hbmQgYnVmZmVyIGlu
c3RlYWQgb2YgY29weWluZw0KPiA+IG5vcm1hbA0KPiA+ICAgIGNvbW1hbmQgYnVmZmVyIHRvIElX
QyBzaGFyZWQgbWVtb3J5Lg0KPiA+IDQuIFVzZSBTT0ZUREVQIHRvIG1ha2UgY21kcV9zZWNfcHJv
YmUgbGF0ZXIgdGhhbiBPUFRFRSBsb2FkZWQgYW5kDQo+ID4gdGhlbg0KPiA+ICAgIG1vdmUgY21k
cV9zZWNfc2Vzc2lvbl9pbml0IGludG8gY21kcV9zZWNfcHJvYmUoKS4NCj4gPiA1LiBSZW1vdmUg
dGltZW91dCBkZXRlY3Rpb24gaW4gY21kcV9zZWNfc2Vzc2lvbl9zZW5kKCkuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogSmFzb24tSkguTGluIDxqYXNvbi1qaC5saW5AbWVkaWF0ZWsuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEhzaWFvIENoaWVuIFN1bmcgPHNoYXduLnN1bmdAbWVkaWF0ZWsu
Y29tPg0KPiA+IC0tLQ0KPiANCj4gW3NuaXBdDQo+IA0KPiA+ICsvKg0KPiA+ICsgKiBlbnVtIGNt
ZHFfc2VjX2VuZ2luZV9lbnVtIC0gdGhlIGZsYWcgZm9yIEhXIGVuZ2luZXMgbmVlZCB0byBiZQ0K
PiA+IHByb3RlY2VkIGluIHNlY3VyZSB3b3JsZC4NCj4gPiArICogRWFjaCBlbnVtIGlzIGEgYml0
IGluIGEgdTY0IGVuZ2luZSBmbGFnIHZhcmlhYmxlLg0KPiA+ICsgKi8NCj4gPiArZW51bSBjbWRx
X3NlY19lbmdpbmVfZW51bSB7DQo+ID4gKwkvKiBNRFAgKi8NCj4gPiArCUNNRFFfU0VDX01EUF9S
RE1BMAkJPSAwLA0KPiA+ICsJQ01EUV9TRUNfTURQX1JETUExCQk9IDEsDQo+ID4gKwlDTURRX1NF
Q19NRFBfV0RNQQkJPSAyLA0KPiA+ICsJQ01EUV9TRUNfTURQX1JETUEyCQk9IDMsDQo+ID4gKwlD
TURRX1NFQ19NRFBfUkRNQTMJCT0gNCwNCj4gPiArCUNNRFFfU0VDX01EUF9XUk9UMAkJPSA1LA0K
PiA+ICsJQ01EUV9TRUNfTURQX1dST1QxCQk9IDYsDQo+ID4gKwlDTURRX1NFQ19NRFBfV1JPVDIJ
CT0gNywNCj4gPiArCUNNRFFfU0VDX01EUF9XUk9UMwkJPSA4LA0KPiA+ICsJQ01EUV9TRUNfTURQ
X0hEUjAJCT0gOSwNCj4gPiArCUNNRFFfU0VDX01EUF9IRFIxCQk9IDEwLA0KPiA+ICsJQ01EUV9T
RUNfTURQX0hEUjIJCT0gMTEsDQo+ID4gKwlDTURRX1NFQ19NRFBfSERSMwkJPSAxMiwNCj4gPiAr
CUNNRFFfU0VDX01EUF9BQUwwCQk9IDEzLA0KPiA+ICsJQ01EUV9TRUNfTURQX0FBTDEJCT0gMTQs
DQo+ID4gKwlDTURRX1NFQ19NRFBfQUFMMgkJPSAxNSwNCj4gPiArCUNNRFFfU0VDX01EUF9BQUwz
CQk9IDE2LA0KPiA+ICsNCj4gPiArCS8qIERJU1AgKFZET1NZUzApICovDQo+ID4gKwlDTURRX1NF
Q19ESVNQX1JETUEwCQk9IDE3LA0KPiA+ICsJQ01EUV9TRUNfRElTUF9SRE1BMQkJPSAxOCwNCj4g
PiArCUNNRFFfU0VDX0RJU1BfV0RNQTAJCT0gMTksDQo+ID4gKwlDTURRX1NFQ19ESVNQX1dETUEx
CQk9IDIwLA0KPiA+ICsJQ01EUV9TRUNfRElTUF9PVkwwCQk9IDIxLA0KPiA+ICsJQ01EUV9TRUNf
RElTUF9PVkwxCQk9IDIyLA0KPiA+ICsJQ01EUV9TRUNfRElTUF9PVkwyCQk9IDIzLA0KPiA+ICsJ
Q01EUV9TRUNfRElTUF8yTF9PVkwwCQk9IDI0LA0KPiA+ICsJQ01EUV9TRUNfRElTUF8yTF9PVkwx
CQk9IDI1LA0KPiA+ICsJQ01EUV9TRUNfRElTUF8yTF9PVkwyCQk9IDI2LA0KPiA+ICsNCj4gPiAr
CS8qIERTSVAgKFZET1NZUzEpICovDQo+ID4gKwlDTURRX1NFQ19WRE8xX0RJU1BfUkRNQV9MMAk9
IDI3LA0KPiA+ICsJQ01EUV9TRUNfVkRPMV9ESVNQX1JETUFfTDEJPSAyOCwNCj4gPiArCUNNRFFf
U0VDX1ZETzFfRElTUF9SRE1BX0wyCT0gMjksDQo+ID4gKwlDTURRX1NFQ19WRE8xX0RJU1BfUkRN
QV9MMwk9IDMwLA0KPiA+ICsNCj4gPiArCS8qIFZFTkMgKi8NCj4gPiArCUNNRFFfU0VDX1ZFTkNf
QlNETUEJCT0gMzEsDQo+ID4gKwlDTURRX1NFQ19WRU5DX0NVUl9MVU1BCQk9IDMyLA0KPiA+ICsJ
Q01EUV9TRUNfVkVOQ19DVVJfQ0hST01BCT0gMzMsDQo+ID4gKwlDTURRX1NFQ19WRU5DX1JFRl9M
VU1BCQk9IDM0LA0KPiA+ICsJQ01EUV9TRUNfVkVOQ19SRUZfQ0hST01BCT0gMzUsDQo+ID4gKwlD
TURRX1NFQ19WRU5DX1JFQwkJPSAzNiwNCj4gPiArCUNNRFFfU0VDX1ZFTkNfU1VCX1JfTFVNQQk9
IDM3LA0KPiA+ICsJQ01EUV9TRUNfVkVOQ19TVUJfV19MVU1BCT0gMzgsDQo+ID4gKwlDTURRX1NF
Q19WRU5DX1NWX0NPTVYJCT0gMzksDQo+ID4gKwlDTURRX1NFQ19WRU5DX1JEX0NPTVYJCT0gNDAs
DQo+ID4gKwlDTURRX1NFQ19WRU5DX05CTV9SRE1BCQk9IDQxLA0KPiA+ICsJQ01EUV9TRUNfVkVO
Q19OQk1fV0RNQQkJPSA0MiwNCj4gPiArCUNNRFFfU0VDX1ZFTkNfTkJNX1JETUFfTElURQk9IDQz
LA0KPiA+ICsJQ01EUV9TRUNfVkVOQ19OQk1fV0RNQV9MSVRFCT0gNDQsDQo+ID4gKwlDTURRX1NF
Q19WRU5DX0ZDU19OQk1fUkRNQQk9IDQ1LA0KPiA+ICsJQ01EUV9TRUNfVkVOQ19GQ1NfTkJNX1dE
TUEJPSA0NiwNCj4gPiArDQo+ID4gKwlDTURRX1NFQ19NQVhfRU5HX0NPVU5UDQo+ID4gK307DQo+
IA0KPiBVc2VsZXNzLCBzbyBkcm9wIHRoZXNlLg0KPiANCk9LLCBJJ2xsIGRyb3AgdGhpcy4NCg0K
UmVnYXJkcywNCkphc29uLUpILkxpbg0KDQo+IFJlZ2FyZHMsDQo+IENLDQo+IA0KPiA+ICsNCg==

