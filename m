Return-Path: <devicetree+bounces-74421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF799032FA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 08:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954FA1C22790
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 06:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D967171E49;
	Tue, 11 Jun 2024 06:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="qBz6VWwU";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="VR+VJpba"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F48B171095;
	Tue, 11 Jun 2024 06:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718088529; cv=fail; b=Q2LL97FLBncHttf7AudE7p0mAlj0LRwXBP7fjo5j/xSWBjFRxe6kWGuBDenB4Cp3u6P7IImdWoiK/CF05fPhBi7jaH00f+ETzLb0jIyKhco6ugD8RyK0lgnPwgRAs+G7O/oEuLyZ0iJGacKg+VgmChELN0yC2NwJUW2/v3R7eqQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718088529; c=relaxed/simple;
	bh=nMXGbYWUOs2DhFnZW/KVqeoZpn1pXWKMnJM+XjBepmM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=JDxpIpmdmJangwDeHZquJiwUcdTI7sSdZNwIyD9YNql5ssESaACKZRFEyIwRncLStFbyvGe1Et0+6ZjUajxy16aJuJvPGesCXnnJvPgmDLdSCdrQiBZRvKHZ6IIlHHYutkCKIcNuH+meFyB1VnMlfIZLnfhWvp9BqWOnNYjaHyc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=qBz6VWwU; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=VR+VJpba; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 9f31c43427be11efa54bbfbb386b949c-20240611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=nMXGbYWUOs2DhFnZW/KVqeoZpn1pXWKMnJM+XjBepmM=;
	b=qBz6VWwU09cSJfJQCkufKPRw+2yovlkiRE7Ax+Kov5EAiyIk4rqv1THE7qEoTvPmFv1vmLC3FCEwMkF3XRjSNm2PFSIk/nshTqYyiTA42P4pKrvZIG92N2DyFRQsAEuOdQp0nFvgO6AQLtoonyZHyMbCDj4/tiZH3SfhpFuZ1D8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.39,REQID:f17b7f52-1ce1-403e-bf85-9012b888f046,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:393d96e,CLOUDID:f931f184-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 9f31c43427be11efa54bbfbb386b949c-20240611
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1628718075; Tue, 11 Jun 2024 14:48:33 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 11 Jun 2024 14:48:32 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 11 Jun 2024 14:48:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrTCEc3c0O3LEP0l8D2adGApA/12RwSq9Q/YuIsLenvao+emvZ3M195rXuuIhDSmax1DSlN80rETxU1VPD6MR94Uhs8WRx0xkh/7MWyptEFbQCOufIxkPlC0A/yBqP9MTjxDSlXXjCsvqPNPWt6pqgICqX7OPmyOmHbGAP4HL5PxavD4rEgD6PBYKTX7yaOyeBV+UKl9q6BDi/yj3bDRnNzUCPLAF0lcVFxsqRS5Z4dL0Af7R+tIG8o4SAaZGBMX6wtOFUhiwhoN3g7b1KiuARqPRIv9DfxLKcmPH+PDE/DtRwFGEt3oNb6QOW/FpV1qxHKmKtmujTKmWSmkjimR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMXGbYWUOs2DhFnZW/KVqeoZpn1pXWKMnJM+XjBepmM=;
 b=f8tercWqd6f7v2srzmf2k4vv7hb/kUVLDppuAVrjAhRYPoO5MMgcwvw8Sm4rc6pdhepERu2lZqmQyPLTyLvE2rMdpNdcsNxTZUnl4MZr/dvom7C0oXxp5VnVJo97cihiTEftiJHaijTPjpm/nNjijwYK7d/3PGjBE+IIi/AmhEm3DJRhXlxk491lDHh1XSo0HI8GYJbwevSjihsJvye6cwh5lfHKW1Hv8TA35e8XSpmGjO3on43j4zC0Tc8Z69L0DyjIZ8/Nkzoue06cgEFObOpsNPsip2U1UtbkC6QIWQYgjGKqCG+XqLDHHUftwKPsGC3rGjMnX70p/lKQGEvFeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMXGbYWUOs2DhFnZW/KVqeoZpn1pXWKMnJM+XjBepmM=;
 b=VR+VJpba2VNng9aoCLy4OHIH09d+2WCVE43AXJCt0aCpXOh0jahmNctxXbu0E0v6VogHCRbeadbJNbNZhy1P5fuWhGLpNHUEayRs9h441uEaYkGSuH8LsfObEB+QYbMFMPfo2ejmwdgX0KLK56xkNzxAZgeCYxJGzOwQXcPp0lo=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYSPR03MB8629.apcprd03.prod.outlook.com (2603:1096:405:84::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.16; Tue, 11 Jun
 2024 06:48:30 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%6]) with mapi id 15.20.7677.014; Tue, 11 Jun 2024
 06:48:30 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"wenst@chromium.org" <wenst@chromium.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	=?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	"robh@kernel.org" <robh@kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "airlied@gmail.com" <airlied@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"kernel@collabora.com" <kernel@collabora.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, =?utf-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?=
	<Yu-chang.Lee@mediatek.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "amergnat@baylibre.com"
	<amergnat@baylibre.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
Thread-Topic: [PATCH v5 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
Thread-Index: AQHaq1SdB3VktOcCqkqfEslqsj0mTLG4e18AgAChMYCAATHigIAGeyMAgAF2fYA=
Date: Tue, 11 Jun 2024 06:48:30 +0000
Message-ID: <ee0209dac731b36ffe2ee20a2ff537ce7758b01f.camel@mediatek.com>
References: <20240521075717.50330-1-angelogioacchino.delregno@collabora.com>
	 <20240521075717.50330-3-angelogioacchino.delregno@collabora.com>
	 <e7845300fa822413f6308cb6297222cde89c39e0.camel@mediatek.com>
	 <0e0fe86c-92da-43f5-89d7-8084274a908a@collabora.com>
	 <0f20214ab3a86f68669ad1392398b16228e699ee.camel@mediatek.com>
	 <47f05439-815e-4ca1-b20d-8e427fef0a2a@collabora.com>
In-Reply-To: <47f05439-815e-4ca1-b20d-8e427fef0a2a@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYSPR03MB8629:EE_
x-ms-office365-filtering-correlation-id: 254eb249-2885-4ef4-2eb6-08dc89e28153
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|7416005|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Wk9wQXdOZ2ZGdlpEQ1k5S1dZVEpWamNqeTJWTkh1aEEvWDYrWjM2NFhQTFV5?=
 =?utf-8?B?WTk4QnE4TDV4M1FZR0dLWTNicExDVmNDNW9kV01kdnF4MTFqUGRaUG1jd2dw?=
 =?utf-8?B?TkdwUXJ4ZG9tdi9xOXBxNW8wSGUxYlpuWXNLN3BkOW5tM3JJVDVTMTlDVklv?=
 =?utf-8?B?Z1dtSy9LWUxaL2JlR0xWQkdvZDluNXk1WnpEZG9keEZoT0w2RE5vT1pZTjdn?=
 =?utf-8?B?cmZNSTRIQTMzNnlIeE8rK2FvbG4zdURYVUV0UzFIRG85RUxQQ1J6WmNJVmpC?=
 =?utf-8?B?YmtrMWlNWTREaGJyWWJtakdBZzZOYWNrUmxXQTdxWFYrVHJaTlhBTGU3akVt?=
 =?utf-8?B?NGRValNPVnpFVHVzY2xJRU5OaVNZb0RiVlcxeC84NEE2WHdYRU1JYTA4TWZn?=
 =?utf-8?B?dUcyOUI0NzNELy93Q2IrcDFEMlhyc3dhbk9zdmN0NVVydGVjTk1lWmRPbzFO?=
 =?utf-8?B?eGhFOTFwSjhzbGFjRFc1S01iZTJnOEhuK0o0Q3NkTmJVSUhWSW9lQnM0ZTF5?=
 =?utf-8?B?NFp5MGViQkxvYmQzdCtRV0tvd2pvTzZUOWh6bExVTnA0eEV6dnJVVUF5T3hM?=
 =?utf-8?B?ditqQ3pyVjVkVnFWYWpBYld1QXRUUVVaUTB1cGc3MDZzTW03anY3eFk0MGlI?=
 =?utf-8?B?SXhhMjBrOUhMSk1HR2lxL3RXWkg3ZzFSOUV4dnVmVTFIVmNYNE1jUTlLWE45?=
 =?utf-8?B?YUxNWjljWTgxd0FKQXZ6azNkRzBSL1NSYzcyWE9aQnczbGg5WW5hd2VKaExw?=
 =?utf-8?B?V3JYS3lSdXVha1UyckphUmZob0dJb1V0T1c0RFQ2TkpDV1Q5d2E4L1dXRlQx?=
 =?utf-8?B?WjBKSnNab2tua2hPNG0xdWV2dVJOUFQvWGpiTzNlQzZNRzdGVFVIcEgzU3lJ?=
 =?utf-8?B?M1F2WEJnRFNrTFNacEhlZldTTk5PVzltK3B5S2srb21jVmVNbGlyNmtRUzYz?=
 =?utf-8?B?VTBxazZGQTZWcVNHdzBFekZJZHlHS2JxdEQrZXRRUkhHeWpNazFDQWFGR2U5?=
 =?utf-8?B?WUVKeFhnaFpUanc3RExLSENoSUUyK0ZCUkdFSUk5a2w5SEtZc0MvdFBnY2Vk?=
 =?utf-8?B?eExTaVorVUdCUDdWcHRTM25zRlJ4cFhUNzFad28rcTYvRVhIWERuWjR6Y0Uz?=
 =?utf-8?B?RWQ2SHNJWTdXV1hrOXZndUkxUTJoVW1hQVlDZ2QrZEs2ZFd1a3RsSmwvU0tn?=
 =?utf-8?B?VGhWb3JqQzh6dFh1MW1EN0xvNFFOZHRQb29CVWxLNVBHL2xWeVNxNlFWYkMr?=
 =?utf-8?B?eWVKVVQ3SlIxaVNSMHAyMG9jUHlCdWJzYW5JY1Q5eVk5bmRIbmk4RmViZVlR?=
 =?utf-8?B?SVJ2SWdDSldSYmhqeWlkQzhyeFJQZEFMdWFiWTgxUnB1S3dnRkpSN3F4TnRk?=
 =?utf-8?B?RXdUYk13RTgreFNabEo4Mi9HekRsRC9ESDdxVVAzZ0VCU1hKaTgwVkFqa3FF?=
 =?utf-8?B?UHVpWEZxTk5XMmVwdGkrY0k4dkl2T2lYNXhITEx2NE1ZQUxGeWN4djVpTCtF?=
 =?utf-8?B?bGJPTTBUc0dwTzF3NllsYlMxdnA5d0VERlRwNVZRNjJERHgzQTNPbmwzcndD?=
 =?utf-8?B?Tm92OFV5VWRIRnUxekxBWVZvSTBmK0U3VStKZDU3NzdYVmFKRFArQ2RvMFZP?=
 =?utf-8?B?Z25HZGt1WWhoU3RGaXJDdS95RSt0ZjVhNVVVUys1UGxUZVF4ZmpBZllmMU9Y?=
 =?utf-8?B?USt6WVVOOFFtSkoyMCtrWTNkS2RoWmFWQ3FwMGZ6dzZlUDh0VVRKQy9iUm9t?=
 =?utf-8?B?S0hoeksvdWdIdnhHTSthc3FVMnlyNER0MUhsWUxtTGRXeDllMEU4RGZCc0kw?=
 =?utf-8?Q?N0EOYMGX/rCG60pnUX7w3GA9pEdqnKh3oHtg0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SCtFY1VRcjU4aTA3WmdCdGNQMGFVZ0xrU3VMT0ZDdXZHY1BKUTdJL2F3bTJC?=
 =?utf-8?B?MW9WOG5wYXlKaStndzNpTVNFSjgzaGMzdnhmUGo3SjZRNmNEQkRkRktGSlVv?=
 =?utf-8?B?MHFUMHhQeUdRYXdSeEJnVDVaUmRTNHNMNDQvdjNPam93SXY5Qmw5SlBIWlpz?=
 =?utf-8?B?UDFPTmh6KzlCTEVZWWducnQ4dGV1bG9qTjJtT0NkMTZBRkxFdmtteDV0c0tV?=
 =?utf-8?B?eU9XLy9YSnRJSXRvcXJrZnNnY0l5SlNHYUxIRHpnVjA0cVhVRTUyc3QrQWpp?=
 =?utf-8?B?Y3JRLzBCSlF1OFRqV1Fja0wzaEwrbEVCSnhhVWRncGZicjJqc0UvbjJlK2Yz?=
 =?utf-8?B?N1JQbWpORTFxcmlsL2J4VEhkYTVNcVYzZGlFTWNMT0dlSENTR1o5QkpQUVNm?=
 =?utf-8?B?NVplZG83azd1S1ZhZ2JzNU9vTmlmRkllOGZOMDNNNTFwQUR4UTBhWWVKZ1pm?=
 =?utf-8?B?MEFXTkVpaExKNG5haEJ3OFk1R3Brc21QejJLb3Iyb29mVERjaWkxVHJHOEli?=
 =?utf-8?B?TWdENnFTR1dlR0VPd2llM2hHVTZhRHJNY1Zwblh1U09MbzFXZEFQd1YrZ3Yv?=
 =?utf-8?B?TklRMVlxSGM2NUloc0dyUXRtUnMrcDlYb0Vzckw0d1I2aytvYVo4UGkzQUUy?=
 =?utf-8?B?SEZMcnFNajVFVXluUUxvZlNsSFdObkN2MXlqSmYzak1ETk9WS3lyZ0lUajJi?=
 =?utf-8?B?b2V2T0lPQ1dGOHFwS1gvcjJFSEMzOGNuR045dWVnRG82a3pURGkxNHZ1b053?=
 =?utf-8?B?M09SZm1NcG9JS0Vuc2ZpR0FKSmxMTHpVUlBTMmowMmM5NXBSM1dyU203WUFk?=
 =?utf-8?B?aUF2dVhsRWlHWUdDQnhEMEZiUXZwWC9VOS8va3hXR1RyWWtVek50MmlHZVp2?=
 =?utf-8?B?WWNBRkE5UnJLWnpvNlZMTklraVg3MUJGdDV4d1FBd2dESHAzcm9qS21JT0lY?=
 =?utf-8?B?WTlKWXNwYmZ0VUh1NnhwclRnM09tdEtHTC9Lc2ZmYTdsS3pWVWowYUVaUUx5?=
 =?utf-8?B?Z0pLd1dCTVhacmRrYXJveWdQUWgzV2dibm0vaUNaSXB1NGRyQjZiMi9vS2V1?=
 =?utf-8?B?M0Q2cVREMFl2Nk1CbGMvbUtvcVNBQUwxcThiNzNVVnVtTFNkVGhydWNVUHRX?=
 =?utf-8?B?ZHpBRmV1dWJsaU42QTZzQmh5ZUZuWmVDbHJDSEs5L2FwcS9Md00yOU12RVd1?=
 =?utf-8?B?cUZFdXlzV3cvdXlHaG9vYTlFR2s5Y2hiYnY4Rng0Um9ZK0k0NDEyZ2VrVHZj?=
 =?utf-8?B?OUpUUkhNb3pOanhrR0V0QS9GS3pPdVQwaTNIYUE1cTNjRHZua2NhOW1ocHVw?=
 =?utf-8?B?WkNSMDJPK09Eb1pxNm1yNlVFclBqWEU4V0EyMHMyenFaZVpZemtFNVlqZU5L?=
 =?utf-8?B?L2VoUFU4M05XSWdsYVJsUXYxa1UzV3oram1ZNEh1K2pCM1J5UlNST0kySERr?=
 =?utf-8?B?eWFSa3Y4WnArRFNzL0N0QTVKNWhFVmJEVGp3NjRmMndtWVEwcFdpWVhrQWJT?=
 =?utf-8?B?NWF4WXdzcFZ3a2ZTdVd5Ny9JQ3R1elpoNjI3bFdpa2VMMXFaTGFobXlpbTBj?=
 =?utf-8?B?VHIwQjZseVJmSkduNGFRYm5aMTRzRXRHUmVETmJ3V0NkSG1UcGFUS2JLaEdi?=
 =?utf-8?B?Mmw2QXJnbks3Z0NhNzJ0TXNzd0FyTFk4cmpTdGtteHVNV1RnNktES2hVUUh6?=
 =?utf-8?B?TUVtTjlnRW1LKzFrSXFKS0E0VU1KR1VDdnkwV09HUkNKSVAva2xnN2d3N0dG?=
 =?utf-8?B?dFFCMjJDWGUvK2Z6eVBnTDdEWHhlT1NDc0NwdGxlREljZ2ViUGJ1eFV0Y0ZJ?=
 =?utf-8?B?cm9ML3dYOEk3U214RWlpb2F5UVRQT3ZXQytJaVVKREEwSzBGMytFbVIrSDRV?=
 =?utf-8?B?MXhCeUgvY3hpVGpaYjlMMWIwVWFpVmZTT2xsNHVaRjNNbEV6NzkrUGxack1R?=
 =?utf-8?B?SXc0eDQwMk9PbERwTk1UV0ZFMmJoV2kva1JDVHlJV1ZDelEzb1BHMmtsem9x?=
 =?utf-8?B?SzBpL1laeXB2aWNldllXTithSENKamhBaHV3bEoxVnRDaXptMzFWY0ZXcVZj?=
 =?utf-8?B?bDFmakJYT1FQU05XZU94K2VudXE4WXBpR1NZY1llVTNqYmRqZGxxV3M5dTZP?=
 =?utf-8?Q?XZh2yVVMjl8nyCK0nBj+ojuOg?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B4D8E8744BAECB46B3458B452DF7DA58@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 254eb249-2885-4ef4-2eb6-08dc89e28153
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 06:48:30.4588
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ChZYtoBSthiLvOlu7P0HkmC/88ff/rfW2RrInvAYaW3sMO+4OaleodINWHK6boGVnojHTQprZgVOAUBqfgVHeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB8629
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--27.348600-8.000000
X-TMASE-MatchedRID: Kx0w2sAofbv4OiVTWoD8RED6z8N1m1ALjLOy13Cgb49qSjxROy+AU2yd
	bY7xfgXYJMbYAalnkPwHOdvowRYwKA+9QmShUWvCY1bQMCMvmn4wCmrLlx+Sdd9RlPzeVuQQl0B
	rH8BQUYVul7/bdpACHmxKxpQo2DDFXtBWIrlQ/3CUa50su1E7W8nlJe2gk8vIWltirZ/iPP4C8g
	kDxMuSmc4ZqNSq2iE6tNJKMhNbpDYItCgNwNY8YYDqq/69Hfgs0i/hFXziUdNtEzN0mAVDNgJjL
	DMzzZnzQbROmirHzn6Xr8R8eISeabG8dzu2wTUiHcQQBuf4ZFskKs3LoBtQlVLFyalIP3pyZgt5
	gnSc7QeRJ1uPRlLfN+kAXE+8HEbEhT738bImf5ttzb3s8Aa1ZpxfK35V7okVMBIR1uSlQM97PlV
	pTaVSO8ugQSrxb8MEitqmw2mRWTPlW1X3S7HG14bBPrt55wnwgdhI7ndNtOAfwQ5+r4+IN5xcqy
	imK04xu2hBKIBuS12Pms/RExaSr0+sh1YjwC0xhrs6JAEL1u7fSJ1kqMcqwUmDyxNPdHMXjE73F
	yAYPU3u/3d7UhW5JZGTpe1iiCJq0u+wqOGzSV1WdFebWIc3VsRB0bsfrpPI6T/LTDsmJmg=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--27.348600-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	937149BAF5369C419FB5A9F2684F9E6B2F0A9A981A41E898D5A27AB9288E7A8A2000:8

T24gTW9uLCAyMDI0LTA2LTEwIGF0IDEwOjI4ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gSWwgMDYvMDYvMjQgMDc6MjksIENLIEh1ICjog6Hkv4rlhYkpIGhhIHNj
cml0dG86DQo+ID4gSGksIEFuZ2VsbzoNCj4gPiANCj4gPiBPbiBXZWQsIDIwMjQtMDYtMDUgYXQg
MTM6MTUgKzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOg0KPiA+ID4gSWwg
MDUvMDYvMjQgMDM6MzgsIENLIEh1ICjog6Hkv4rlhYkpIGhhIHNjcml0dG86DQo+ID4gPiA+IEhp
LCBBbmdlbG86DQo+ID4gPiA+IA0KPiA+ID4gPiBPbiBUdWUsIDIwMjQtMDUtMjEgYXQgMDk6NTcg
KzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOg0KPiA+ID4gPiA+IERvY3Vt
ZW50IE9GIGdyYXBoIG9uIE1NU1lTL1ZET1NZUzogdGhpcyBzdXBwb3J0cyB1cCB0byB0aHJlZSBE
RFAgcGF0aHMNCj4gPiA+ID4gPiBwZXIgSFcgaW5zdGFuY2UgKHNvIHBvdGVudGlhbGx5IHVwIHRv
IHNpeCBkaXNwbGF5cyBmb3IgbXVsdGktdmRvIFNvQ3MpLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IFRoZSBNTVNZUyBvciBWRE9TWVMgaXMgYWx3YXlzIHRoZSBmaXJzdCBjb21wb25lbnQgaW4gdGhl
IEREUCBwaXBlbGluZSwNCj4gPiA+ID4gPiBzbyBpdCBvbmx5IHN1cHBvcnRzIGFuIG91dHB1dCBw
b3J0IHdpdGggbXVsdGlwbGUgZW5kcG9pbnRzIC0gd2hlcmUgZWFjaA0KPiA+ID4gPiA+IGVuZHBv
aW50IGRlZmluZXMgdGhlIHN0YXJ0aW5nIHBvaW50IGZvciBvbmUgb2YgdGhlIChjdXJyZW50bHkg
dGhyZWUpDQo+ID4gPiA+ID4gcG9zc2libGUgaGFyZHdhcmUgcGF0aHMuDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+
DQo+ID4gPiA+ID4gUmV2aWV3ZWQtYnk6IEFsZXhhbmRyZSBNZXJnbmF0IDxhbWVyZ25hdEBiYXls
aWJyZS5jb20+DQo+ID4gPiA+ID4gVGVzdGVkLWJ5OiBBbGV4YW5kcmUgTWVyZ25hdCA8YW1lcmdu
YXRAYmF5bGlicmUuY29tPg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hp
bm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+DQo+
ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gICAgLi4uL2JpbmRpbmdzL2FybS9tZWRpYXRlay9tZWRp
YXRlayxtbXN5cy55YW1sIHwgMjggKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsv
bWVkaWF0ZWssbW1zeXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vbWVkaWF0ZWsvbWVkaWF0ZWssbW1zeXMueWFtbA0KPiA+ID4gPiA+IGluZGV4IGIzYzY4ODhj
MTQ1Ny4uMGVmNjdjYTQxMjJiIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWssbW1zeXMueWFtbA0KPiA+
ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0
ZWsvbWVkaWF0ZWssbW1zeXMueWFtbA0KPiA+ID4gPiA+IEBAIC05Myw2ICs5MywzNCBAQCBwcm9w
ZXJ0aWVzOg0KPiA+ID4gPiA+ICAgICAgJyNyZXNldC1jZWxscyc6DQo+ID4gPiA+ID4gICAgICAg
IGNvbnN0OiAxDQo+ID4gPiA+ID4gICAgDQo+ID4gPiA+ID4gKyAgcG9ydDoNCj4gPiA+ID4gPiAr
ICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydA0KPiA+ID4gPiA+
ICsgICAgZGVzY3JpcHRpb246DQo+ID4gPiA+ID4gKyAgICAgIE91dHB1dCBwb3J0IG5vZGUuIFRo
aXMgcG9ydCBjb25uZWN0cyB0aGUgTU1TWVMvVkRPU1lTIG91dHB1dCB0bw0KPiA+ID4gPiA+ICsg
ICAgICB0aGUgZmlyc3QgY29tcG9uZW50IG9mIG9uZSBkaXNwbGF5IHBpcGVsaW5lLCBmb3IgZXhh
bXBsZSBvbmUgb2YNCj4gPiA+ID4gPiArICAgICAgdGhlIGF2YWlsYWJsZSBPVkwgb3IgUkRNQSBi
bG9ja3MuDQo+ID4gPiA+ID4gKyAgICAgIFNvbWUgTWVkaWFUZWsgU29DcyBzdXBwb3J0IG11bHRp
cGxlIGRpc3BsYXkgb3V0cHV0cyBwZXIgTU1TWVMuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIHBh
dGNoIGxvb2tzIGdvb2QgdG8gbWUuIEp1c3Qgd2FudCB0byBzaGFyZSBhbm90aGVyIGluZm9ybWF0
aW9uIGZvciB5b3UuDQo+ID4gPiA+IEhlcmUgaXMgYW4gZXhhbXBsZSB0aGF0IG1tc3lzL3Zkb3N5
cyBjb3VsZCBwb2ludCB0byB0aGUgZGlzcGxheSBpbnRlcmZhY2Ugbm9kZS4NCj4gPiA+ID4gDQo+
ID4gPiA+IHZkb3N5czA6IHN5c2NvbkAxYzAxYTAwMCB7DQo+ID4gPiA+ICAgICAgICAgICAgIG1t
c3lzLWRpc3BsYXktaW50ZXJmYWNlID0gPCZkc2kwPiwgPCZkc2kxPiwgPCZkcF9pbnRmMD47DQo+
ID4gPiA+IH07DQo+ID4gPiA+ICAgIA0KPiA+ID4gPiB2ZG9zeXMxOiBzeXNjb25AMWMxMDAwMDAg
ew0KPiA+ID4gPiAgICAgICAgICAgICBtbXN5cy1kaXNwbGF5LWludGVyZmFjZSA9IDwmZHBfaW50
ZjE+Ow0KPiA+ID4gPiB9Ow0KPiA+ID4gPiANCj4gPiA+ID4gVGhlcmUgaXMgbm8gY29uZmxpY3Qg
dGhhdCBtbXN5cy92ZG9zeXMgcG9pbnQgdG8gZmlyc3QgY29tcG9uZW50IG9mIG9uZSBkaXNwbGF5
IHBpcGVsaW5lIG9yIHBvaW50IHRvIGRpc3BsYXkgaW50ZXJmYWNlLg0KPiA+ID4gPiBCb3RoIGNv
dWxkIGNvLWV4aXN0Lg0KPiA+ID4gPiANCj4gPiA+IA0KPiA+ID4gSGV5IENLLA0KPiA+ID4gDQo+
ID4gPiB5ZXMsIHRoaXMgY291bGQgYmUgYW4gYWx0ZXJuYXRpdmUgdG8gdGhlIE9GIGdyYXBocywg
YW5kIEknbSBzdXJlIHRoYXQgaXQnZCB3b3JrLA0KPiA+ID4gZXZlbiB0aG91Z2ggdGhpcyBraW5k
IG9mIHNvbHV0aW9uIHdvdWxkIHN0aWxsIHJlcXVpcmUgcGFydGlhbCBoYXJkY29kaW5nIG9mIHRo
ZQ0KPiA+ID4gZGlzcGxheSBwYXRocyB1cCB1bnRpbCBtbXN5cy1kaXNwbGF5LWludGVyZmFjZSAo
c28sIHVwIHVudGlsIERTSTAsIG9yIERTSTEsIGV0YykuDQo+ID4gPiANCj4gPiA+IFRoZSBwcm9i
bGVtIHdpdGggYSBzb2x1dGlvbiBsaWtlIHRoaXMgaXMgdGhhdCwgd2VsbCwgZXZlbiB0aG91Z2gg
aXQgd291bGQgd29yaywNCj4gPiA+IGV2ZW4gaWYgd2UgaWdub3JlIHRoZSBzdWJvcHRpbWFsIHBh
cnRpYWwgaGFyZGNvZGluZywgT0YgZ3JhcGhzIGFyZSBzb21ldGhpbmcNCj4gPiA+IGdlbmVyaWMs
IHdoaWxlIHRoZSBtbXN5cy1kaXNwbGF5LWludGVyZmFjZSB3b3VsZCBiZSBhIE1lZGlhVGVrIHNw
ZWNpZmljL2N1c3RvbQ0KPiA+ID4gcHJvcGVydHkuDQo+ID4gPiANCj4gPiA+IEluIHRoZSBlbmQs
IHJldXNpbmcgZ2VuZXJpYyBrZXJuZWwgYXBpcy9pbnRlcmZhY2VzL2V0YyBpcyBhbHdheXMgcHJl
ZmVycmVkDQo+ID4gPiBjb21wYXJlZCB0byBjdXN0b20gc29sdXRpb25zLCBlc3BlY2lhbGx5IGlu
IHRoaXMgY2FzZSwgaW4gd2hpY2ggdGhlIGdlbmVyaWMNCj4gPiA+IHN0dWZmIGlzIG9uLXBhciAo
b3IgYWN0dWFsbHksIGRlcGVuZGluZyBwdXJlbHkgb24gcGVyc29uYWwgb3BpbmlvbnMsIHN1cGVy
aW9yKS4NCj4gPiA+IA0KPiA+ID4gQXMgZm9yIHRoZSB0d28gdG8gY28tZXhpc3QsIEknbSBub3Qg
c3VyZSB0aGF0IHRoaXMgaXMgYWN0dWFsbHkgbmVlZGVkLCBhcyB0aGUNCj4gPiA+IE9GIGdyYXBo
cyBhcmUgYWxyZWFkeSAoYXQgdGhlIGVuZCBvZiB0aGUgZ3JhcGgpIHBvaW50aW5nIHRvIHRoZSBk
aXNwbGF5IGludGVyZmFjZS4NCj4gPiA+IA0KPiA+ID4gSW4gYW55IGNhc2UsIGp1c3QgYXMgYSBy
ZW1pbmRlcjogaWYgdGhlcmUgd2lsbCBiZSBhbnkgbmVlZCB0byBhZGQgYW55IGN1c3RvbQ0KPiA+
ID4gTWVkaWFUZWsgc3BlY2lmaWMgcHJvcGVydGllcyBsYXRlciwgaXQncyBvayBhbmQgd2UgY2Fu
IGRvIHRoYXQgYXQgYW55IHRpbWUuDQo+ID4gDQo+ID4gVGhlIGFsdGVybmF0aXZlIHNvbHV0aW9u
IGlzIHVzaW5nIE9GIGdyYXBocyB0byBwb2ludCBkaXNwbGF5IGludGVyZmFjZSBhbmQgdXNlIE1l
ZGlhVGVrIHNwZWNpZmljIHByb3BlcnR5IHRvIGZpcnN0IGNvbXBvbmVudDoNCj4gPiANCj4gPiB2
ZG9zeXMwOiBzeXNjb25AMWMwMWEwMDAgew0KPiA+ICAgICAgICAgICAgcG9ydHMgew0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgcG9ydEAwIHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBlbmRwb2ludCB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkc2kwX2VuZHBvaW50PjsNCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAgfTsNCj4gPiAgIA0K
PiA+ICAgICAgICAgICAgICAgICAgICAgcG9ydEAxIHsNCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBlbmRwb2ludCB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkc2kxX2VuZHBvaW50PjsNCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB9Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAgfTsNCj4g
PiAgIA0KPiA+ICAgICAgICAgICAgICAgICAgICAgcG9ydEAyIHsNCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBlbmRwb2ludCB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkcF9pbnRmMF9lbmRwb2ludD47DQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsNCj4gPiAgICAgICAgICAgICAgICAg
ICAgIH07DQo+ID4gICAgICAgICAgICB9Ow0KPiA+ICAgDQo+ID4gICAgICAgICAgICBkaXNwbGF5
LWZpcnN0LWNvbXBvbmVudCA9IDwmb3ZsMD47DQo+ID4gfTsNCj4gPiANCj4gPiBBbmQgSSBhZ3Jl
ZSB0byBpdCdzIGJldHRlciB0byBrZWVwIG9ubHkgT0YgZ3JhcGhzIHByb3BlcnR5LCBzbyBpdCB3
b3VsZCBiZQ0KPiA+IA0KPiA+IHZkb3N5czA6IHN5c2NvbkAxYzAxYTAwMCB7DQo+ID4gICAgICAg
ICAgICBwb3J0cyB7DQo+ID4gICAgICAgICAgICAgICAgICAgICBwb3J0QDAgew0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGVuZHBvaW50IHsNCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmRzaTBfZW5kcG9pbnQ+
Ow0KPiA+ICAgICAgICAgICAgICAgICAgICANCj4gPiAgICAgICAgICAgICB9Ow0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgfTsNCj4gPiAgIA0KPiA+ICAgICAgICAgICAgICAgICAgICAgcG9ydEAx
IHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmRwb2ludCB7DQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZk
c2kxX2VuZHBvaW50PjsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICANCj4gPiAgICAg
fTsNCj4gPiAgICAgICAgICAgICAgICAgICAgIH07DQo+ID4gICANCj4gPiAgICAgICAgICAgICAg
ICAgICAgIHBvcnRAMiB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5kcG9p
bnQgew0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1l
bmRwb2ludCA9IDwmZHBfaW50ZjBfZW5kcG9pbnQ+Ow0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH0NCj4gPiA7DQo+ID4gICAgICAgICAgICAgICAgICAgICB9Ow0KPiA+ICAgICAg
ICAgICAgfTsNCj4gPiB9Ow0KPiA+IA0KPiA+IE1heWJlIHdlIGNvdWxkIHVzZSBPRiBncmFwaHMg
Zm9yIGJvdGggZmlyc3QgY29tcG9uZW50IGFuZCBkaXNwbGF5IGludGVyZmFjZSBhbmQgZHJvcCB1
c2luZyBNZWRpYVRlayBzcGVjaWZpYyBwcm9wZXJ0eS4NCj4gPiANCj4gDQo+IFdlIGNvdWxkLCBv
ciB3ZSBjYW4gc2ltcGx5IHdhbGsgdGhyb3VnaCB0aGUgT0YgR3JhcGggaW4gdGhlIGRyaXZlciBh
bmQgZ2V0IHRoZQ0KPiBkaXNwbGF5IGludGVyZmFjZSBsaWtlIHRoYXQsIGFzIGl0J3MgYm9hcmQt
c3BlY2lmaWMgOy0pDQo+IA0KPiAuLi5idXQgYW55d2F5LCBsZXQncyBzZWUgdGhhdCBsYXRlcjog
YWZ0ZXIgZ2V0dGluZyB0aGlzIHNlcmllcyB1cHN0cmVhbWVkLCBJIHdpbGwNCj4gY29udmVydCBh
bGwgTWVkaWFUZWsgYm9hcmRzIChpbmNsdWRpbmcgQ2hyb21lYm9va3MpIHRvIHVzZSB0aGUgZ3Jh
cGhzIGluc3RlYWQsIGFuZA0KPiB5b3UnbGwgc2VlIHRoYXQsIGF0IGxlYXN0IGZvciB0aGUgY3Vy
cmVudGx5IHN1cHBvcnRlZCBib2FyZHMsIHRoZXJlJ3Mgbm8gbmVlZCBmb3INCj4gYW55IGN1c3Rv
bSBwcm9wZXJ0eS4NCj4gDQo+IEFsc28sIHNldHRpbmcgdGhlIERTSTAvMS9kcGludGYgZW5kcG9p
bnQgdG8gVkRPMCBpcyB0ZWNobmljYWxseSB3cm9uZywgYXMgdGhhdCBpcw0KPiBzdXBwb3NlZCB0
byBiZSB0aGUgbGFzdCBvbmUsIGFuZCBhIGdyYXBoIGlzIGNvbmNlcHR1YWxseSBzdXBwb3NlZCB0
byBnbyBmcm9tIHRoZQ0KPiBmaXJzdCB0byB0aGUgbGFzdCBpbiBzZXF1ZW5jZS4NCj4gDQo+ICpp
Ziogd2Ugd2lsbCBldmVyIG5lZWQgKHByb2JhYmx5IG5vdCkgdG8gZ2V0IHRoZSBWRE8wIG5vZGUg
dG8gcG9pbnQgZGlyZWN0bHkgdG8NCj4gdGhlIGxhc3Qgbm9kZSBmb3Igd2hhdGV2ZXIgcmVhc29u
LCB0aGUgcmlnaHQgd2F5IHdvdWxkIGJlIHRoZSBmaXJzdCBvbmUgeW91IHNhaWQsDQo+IHNvLCBt
ZWRpYXRlayxtbXN5cy1kaXNwbGF5LWludGVyZmFjZSA9IDwmZHNpMD4sIDwmZHNpMT4sIGV0YyBl
dGMNCj4gDQo+IC4uLm9yIG1lZGlhdGVrLG1tc3lzLXBvc3NpYmxlLWRpc3BsYXlzID0gPCAuLi4g
cGhhbmRsZXMgPg0KPiANCj4gLi4ub3IgYW55d2F5LCBtYW55IG90aGVyIHNvbHV0aW9ucyBhcmUg
cG9zc2libGUgLSBidXQgYWdhaW4sIEkgdGhpbmsgdGhpcyBpcyBub3QNCj4gdGhlIHJpZ2h0IHRp
bWUgdG8gdGhpbmsgYWJvdXQgdGhhdC4gS25vd2luZyB0aGF0IHRoZXJlIGFyZSBldmVudHVhbCBz
b2x1dGlvbnMgZm9yDQo+IGFueSBuZWVkIHRoYXQgbWlnaHQgYXJpc2UgaW4gdGhlIGZ1dHVyZSBp
cyBlbm91Z2gsIElNTyA6LSkNCg0KVGhpcyBpcyBvbmUgcm91dGluZyBvZiBkaXNwbGF5IHBpcGVs
aW5lIGFuZCB0aGUgcmVsYXRpb24gb2YgVkRPU1lTMCB3aXRoIGRpc3BsYXkgcGlwZWxpbmUuDQoN
CiAgICAgICAgICAgICAgICstLSBWRE9TWVMwIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsNCiAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCiAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCkRS
QU0gLT4gSU9NTVUgLS0tPiBPVkwwIC0+IFJETUEwIC0+IC4uLiAtPiBEU0MwIC0+IE1FUkdFMCAt
PiBEUF9JTlRGMCAtLS0tPg0KICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KICAg
ICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tKw0KDQpWaWRlbyBkYXRhIGlzIHJlYWQgYnkgSU9NTVUgZnJvbSBEUkFNIGFu
ZCBzZW5kIHRvIGRpc3BsYXkgcGlwZWxpbmUuIFRoZW4gdmlkZW8gZGF0YSB0cmF2ZWwgdGhyb3Vn
aCBmaXJzdCBjb21wb25lbnQgdG8gZGlzcGxheSBpbnRlcmZhY2UuDQpWRE9TWVMwIG1hbmFnZSBl
YWNoIGNvbXBvbmVudCBpbiB0aGUgcGlwZWxpbmUgaW5jbHVkZSBmaXJzdCBjb21wb25lbnQgYW5k
IGRpc3BsYXkgaW50ZXJmYWNlLg0KVGhlIG1hbmFnZW1lbnQgaW5jbHVkZSBjbG9jayBnYXRpbmcs
IHJlc2V0LCB2aWRlbyBkYXRhIGlucHV0L291dHB1dCByb3V0aW5nLg0KVGhlIHJlbGF0aW9uc2hp
cCBvZiBWRE9TWVRTMCB3aXRoIGZpcnN0IGNvbXBvbmVudCBpcyB0aGUgc2FtZSBhcyB0aGUgcmVs
YXRpb25zaGlwIG9mIFZET1NZUzAgd2l0aCBkaXNwbGF5IGludGVyZmFjZS4NCklmIFZET1NZUzAg
aXMgbm90IHN1aXRhYmxlIHVzaW5nIE9GIGdyYXBoIHBvaW50IHRvIGRpc3BsYXkgaW50ZXJmYWNl
LCBWRE9TWVMwIGlzIGFsc28gbm90IHN1aXRhYmxlIHVzaW5nIE9GIGdyYXBoIHBvaW50IHRvIGZp
cnN0IGNvbXBvbmVudC4NClRoZSBqb2Igb2YgdGhlIGNvbXBvbmVudCBpbiBkaXNwbGF5IHBpcGVs
aW5lIGlzIHRvIHByb2Nlc3MgdGhlIHZpZGVvIGRhdGEsDQpidXQgdGhlIGpvYiBvZiBWRE9TWVMw
IGlzIHRvIG1hbmFnZSAoY2xvY2sgZ2F0aW5nLCByZXNldCwgcm91dGluZykgdGhlIHBpcGVsaW5l
Lg0KSWYgdGhlIE9GIGdyYXBoIGlzIHRvIHNob3cgdGhlIHZpZGVvIGRhdGEgdHJhdmVsIHBhdGgs
IFZET1NZUzAgc2hvdWxkIG5vdCBleGlzdCBpbiB0aGUgT0YgZ3JhcGguDQoNClJlZ2FyZHMsDQpD
Sw0KDQo+IA0KPiBDaGVlcnMsDQo+IEFuZ2Vsbw0KPiANCj4gPiBSZWdhcmRzLA0KPiA+IENLDQo+
ID4gDQo+ID4gPiANCj4gPiA+IENoZWVycyENCj4gPiA+IEFuZ2Vsbw0KPiA+ID4gDQo+ID4gPiA+
IFJlZ2FyZHMsDQo+ID4gPiA+IENLDQo+ID4gPiA+IA0KPiA+ID4gPiA+ICsgICAgcHJvcGVydGll
czoNCj4gPiA+ID4gPiArICAgICAgZW5kcG9pbnRAMDoNCj4gPiA+ID4gPiArICAgICAgICAkcmVm
OiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL2VuZHBvaW50DQo+ID4gPiA+ID4gKyAg
ICAgICAgZGVzY3JpcHRpb246IE91dHB1dCB0byB0aGUgcHJpbWFyeSBkaXNwbGF5IHBpcGVsaW5l
DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsgICAgICBlbmRwb2ludEAxOg0KPiA+ID4gPiA+ICsg
ICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvZW5kcG9pbnQNCj4g
PiA+ID4gPiArICAgICAgICBkZXNjcmlwdGlvbjogT3V0cHV0IHRvIHRoZSBzZWNvbmRhcnkgZGlz
cGxheSBwaXBlbGluZQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArICAgICAgZW5kcG9pbnRAMjoN
Cj4gPiA+ID4gPiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVz
L2VuZHBvaW50DQo+ID4gPiA+ID4gKyAgICAgICAgZGVzY3JpcHRpb246IE91dHB1dCB0byB0aGUg
dGVydGlhcnkgZGlzcGxheSBwaXBlbGluZQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArICAgIGFu
eU9mOg0KPiA+ID4gPiA+ICsgICAgICAtIHJlcXVpcmVkOg0KPiA+ID4gPiA+ICsgICAgICAgICAg
LSBlbmRwb2ludEAwDQo+ID4gPiA+ID4gKyAgICAgIC0gcmVxdWlyZWQ6DQo+ID4gPiA+ID4gKyAg
ICAgICAgICAtIGVuZHBvaW50QDENCj4gPiA+ID4gPiArICAgICAgLSByZXF1aXJlZDoNCj4gPiA+
ID4gPiArICAgICAgICAgIC0gZW5kcG9pbnRAMg0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAgICBy
ZXF1aXJlZDoNCj4gPiA+ID4gPiAgICAgIC0gY29tcGF0aWJsZQ0KPiA+ID4gPiA+ICAgICAgLSBy
ZWcNCj4gPiA+IA0KPiA+ID4gDQo+IA0KPiANCg==

