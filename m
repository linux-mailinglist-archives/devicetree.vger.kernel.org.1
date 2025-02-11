Return-Path: <devicetree+bounces-145026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571DA30161
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 03:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42BA518894AA
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 02:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F4926BDB3;
	Tue, 11 Feb 2025 02:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hrsHRyci";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="kt6hu7sE"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18026BDA2;
	Tue, 11 Feb 2025 02:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739240205; cv=fail; b=NZQ6jwoq6glXYmDNF+8jtoBSf8b7fPSnlzPMK+3ZZaNksmwoAoJcauYOusBpQtVMh0ikhHKx4mcdjoajl3lAYst4ZqYnM/EIkSrAG4h4dgOESUfwrJM0BkRX2UNWKgHSZcJxPJ6raI20MvGrfl3Ab1yGrwFV82axR0ICeaWKwiQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739240205; c=relaxed/simple;
	bh=19EuDsHqiYJEpao5C9pMJFV8pc7rkQKmZmtzEhDDmJY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=rjCXIttn9w08Nq7O98oPPscM9m9fGKZ5U5bQnPOMYHUqDhhiDHDh+LB63QX2+GQM00pT7J8O55xH4RcKuYbxNHSUrPYvyIknYqImEdBv5a6OBPkTvAwLv4wkoksp4nTsNuZhn5bOs6acpf704J0ajhfRIuF6WhoQfAEfNoQWOLs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=hrsHRyci; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=kt6hu7sE; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 391f57a8e81e11efb8f9918b5fc74e19-20250211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=19EuDsHqiYJEpao5C9pMJFV8pc7rkQKmZmtzEhDDmJY=;
	b=hrsHRycisc1CS2CjSN8X4RQu3oEdK8KoJKySsdMfo5EnjfdLNCv6gspK2tmY4NH8a5JscqDSM58vB4W70gnWMqhw7WF55acSNGLWHJXP1plXnDoIC1yxeTeQu5eOjTcdoJPeutS4VOH9I8Gc4NNuW08q+jzzUx8TtEnuzhqw0Sk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:4be5c3bd-17e1-4dc3-9550-a1754a35b964,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:cfb8249c-f55b-41e7-a712-ffbe7a973280,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|50,
	EDM:-3,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 391f57a8e81e11efb8f9918b5fc74e19-20250211
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 805600740; Tue, 11 Feb 2025 10:16:37 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Tue, 11 Feb 2025 10:16:36 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Tue, 11 Feb 2025 10:16:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ouZhHVhAt8ZxpwCArBXEKYW3INodJnZ6MgMGiYijCyOt3d/UMiNS4o3kTF5e4r0xLw/IOtq/3pNuSNKfVIb80Jp1xnYnLWohrzyFef5Xrt/L+SlPDv6CZWVL+xN2mLdj0UsbSxdOm9OoIzEPPK6kDEQsTl6ccxWj8a81RMT5Rqcp41BWVzYeoLm7P5UP6h6AsepAKjfsQfpmzpvI96sgeVxt05WaKJmTE4PB2r0bB01gn8F4j8YZ2eGiVuR/C9l5r7aLnJln9mruGfkUNsnhmpMpXwkz5dl0/eK5AW9VJVqqfti7PGL8vXW4kLSeeLDThE+HWxX4FHlDkfLRzDpqMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=19EuDsHqiYJEpao5C9pMJFV8pc7rkQKmZmtzEhDDmJY=;
 b=x+pAqiYHL2H53j1WSMSgQ2tlAakbxK5zLQFi8AsaqW+dd1gBDUuhP/xP9IRZJpyVOdShR4q/cC5V4itGQgrc74tLyBXWXDFNl/1WjC5R37qFQAhS1nn8bq8KYvjNaEjevoHnySltnN3en9T+06xhC20tYbyvnVu8NwXxKYz6mlp9bhUQS+oInzP1YCaFIYTiGoabPcROfxhYOqN3Ks5l8R/3PPa0AUstcOGOdJlv5ZVL2Zxq9Qja0Z9PV/buXAmgi7aXulDdc5Ope97eCuZ/Pnj8vXLveqWqJRj+xp8UnHeBPyANOPI1/xLiZqtRKZTI+d15HKXLodPR4zMTg5+oDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=19EuDsHqiYJEpao5C9pMJFV8pc7rkQKmZmtzEhDDmJY=;
 b=kt6hu7sETaRV6eYlKiZkcxNIhqb3deVHBR6gCuPE465721NIDKvIJqkU4pN5w1WZ4BJ9YolxjVMNb1pVTywk4xST1qYFCnOnGi/U5B6OWiwHyHQvJNiBPUsM90AcBcSP89h6B2HNFr10RF53tZfrUwrDEoRzt3RD4qUVGWD0+AM=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYSPR03MB7474.apcprd03.prod.outlook.com (2603:1096:400:410::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.15; Tue, 11 Feb
 2025 02:16:34 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 02:16:34 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>
CC: "robh@kernel.org" <robh@kernel.org>, "jie.qiu@mediatek.com"
	<jie.qiu@mediatek.com>, "kernel@collabora.com" <kernel@collabora.com>,
	"simona@ffwll.ch" <simona@ffwll.ch>, "mripard@kernel.org"
	<mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	"dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
	=?utf-8?B?TGV3aXMgTGlhbyAo5buW5p+P6YieKQ==?= <Lewis.Liao@mediatek.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, =?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?=
	<jitao.shi@mediatek.com>, =?utf-8?B?VG9tbXlZTCBDaGVuICjpmbPlvaXoia8p?=
	<TommyYL.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "airlied@gmail.com" <airlied@gmail.com>,
	=?utf-8?B?SXZlcyBDaGVuamggKOmZs+S/iuW8mCk=?= <Ives.Chenjh@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "junzhi.zhao@mediatek.com"
	<junzhi.zhao@mediatek.com>
Subject: Re: [PATCH v5 25/34] drm/mediatek: mtk_hdmi: Remove ifdef for
 CONFIG_PM_SLEEP
Thread-Topic: [PATCH v5 25/34] drm/mediatek: mtk_hdmi: Remove ifdef for
 CONFIG_PM_SLEEP
Thread-Index: AQHbZcr8TeMcDpKuBEW0+iDLSDitE7M7gn+AgAUT6wCAAPPwgA==
Date: Tue, 11 Feb 2025 02:16:33 +0000
Message-ID: <226a2b712dfb082e94bd0b26026264362f69ea60.camel@mediatek.com>
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
	 <20250113145232.227674-26-angelogioacchino.delregno@collabora.com>
	 <a9c0027b1d02365389624c5cb9b42b5bf39dac85.camel@mediatek.com>
	 <dabbf4a7-1856-458a-b88d-2a16bc80bff0@collabora.com>
In-Reply-To: <dabbf4a7-1856-458a-b88d-2a16bc80bff0@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYSPR03MB7474:EE_
x-ms-office365-filtering-correlation-id: 7201d378-8bb3-4c99-adfb-08dd4a421b18
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SHdUZmkrTWdMQ2tEYmNoN2p2ZE0zaU9nTmFxZC9WMlhPZU52RWNHL1RzS3NU?=
 =?utf-8?B?bXdiRWF4WkY0STJRYWZ1cmErU2lRakYrMVlDWDVXcExXdmdEMmh2U1Yva0JO?=
 =?utf-8?B?dEZFbE1SdWNWY3lkUDc3cHQyZlNSRnVTUi83RnBWSDVlREQrL2JyQXNmeENY?=
 =?utf-8?B?dy9CVFpmV2tsMDFaV3o4UVdHV3VDdnppRmhYVEkzY04vaVRXelNWdGpTR01C?=
 =?utf-8?B?Vi9ROVdMcFcwa0VabitxdHRsTnZsekgrVkpyb1RxWnFHbUIzVzY0OGlWZXhz?=
 =?utf-8?B?OEhRVFJwM3VrOExaZW5FRU1BLzNOUFljTmtsRXpwK3dVS01JdG5WYVRuUUNC?=
 =?utf-8?B?akdtOGI4QWxaU3pHRW5FeUJUVEhaZ20rZUg0LzJrLzBDMGdsdmxCVFBwR2U0?=
 =?utf-8?B?U2FsTjZnSXpWMXRKbjVvclNPTGVtL2tINnMvcFlBaXNzSmZoYTVnU1BKNExv?=
 =?utf-8?B?Z2toazlKY2NlTzBRTG4xaUJxckhlTitPditJZnVYSHNRYlF3b3lySlJnRU90?=
 =?utf-8?B?d0pGOEpBbldST24vL3F6UElpcDZkSlBIWjVuQmxWaHNZWE1IbjFneXBjRlVz?=
 =?utf-8?B?N2t0ZEtVUGRUYThUTXVKaEV3VnVOSVl6UzRQKy9kQjFqTmxadlJBbEszeDNy?=
 =?utf-8?B?aDZyMnNMUW5MOUxud0txZUtETnVJWk81QnY1ck5uY3pZUU1MWmFlcFV0R2tR?=
 =?utf-8?B?WnBTYWRJaWc5SmpCeFh4Ui9adWI4cG9GcFNOWXNUQVB5ZC8yMCtPYW5uSU1S?=
 =?utf-8?B?NVUrMUdQd04xRFBTRktUb1dmKy9hUXF4d01qZjZDTENETnUrM1RSRHRqcEtD?=
 =?utf-8?B?SWw1allic2tkM1c4NFlBWXRmdjJmVlpvUjhRMS9hdVBwM2dHZ0l3cTRrZUdm?=
 =?utf-8?B?WVJJNDFob01ZaG9zOC9vQnhnMWRVN2lhRm9pNW1FTWhIL0NmMklsZHpjQTJq?=
 =?utf-8?B?ZTIvaHJrZU5JWXZ2Yzd2dDZUczdCZCsreWV3UGxjZ1Jub21JWnU0eGZVZ2dH?=
 =?utf-8?B?dXVFQUptYnBXY0tXZ0NnWk45RXZWTjhjRU1RMkQ1dmlKNkdoSFRPaVdNcy8z?=
 =?utf-8?B?UmtEdWNNSDIwU25SeG05TmpXSWJTMGlwcmlBZVBpaHhDSjZTLzZhNG5hak1z?=
 =?utf-8?B?ejU0N2RDZjh5UW8xcVhINDlEdUxmUmgwQytDM0MxQ1RWc3Bsd3Z2YTJpMjBS?=
 =?utf-8?B?cHFVRkVtMldPYWtCY0psZkpIMHczL29LcWdJLzJ2Zkx0QytVZldQMHd3VGl4?=
 =?utf-8?B?WGVrQzF6cGNqaFhjTXYxd1dwUzBlRnUxU0dRZHEzRzRvY2psaEt3d1RCNEdX?=
 =?utf-8?B?Z2xHUmppdytCejNWY05WWEpwRzNJMTZ4RWF3VVpxTHAxSE1UMEhpdHhiemp5?=
 =?utf-8?B?emVNZTg4ZGthbXk1dk03OVpya0padzhYWks2S2NxVldVUGRNOGNaWTBUZmVW?=
 =?utf-8?B?aFdCTE4zQS9aUlZhYS9sV20rL3JjS0dlZFEwQStQN3Bkcy91YUVWV3hlODFN?=
 =?utf-8?B?bVA2RXpRZTYxUS9aTDYrcHpsT2RnQjFBQlIvWGFETUlLQk5QZ0Z6dWUvRzdG?=
 =?utf-8?B?cEJPUkl0SStFMWNrcW90MHFlUnVsWlFMZjRmNzZUUXZZbnVXblZybGFZcXlW?=
 =?utf-8?B?L1dnT1FLSHRjYXpCV1U3QVE1SGE5WDRIOVJ5c25yWngwYWVGcWd6QlU3ejJT?=
 =?utf-8?B?VEh2alhGMXNJUmVodDFmMlRONnN5NWI1cVU0TndtaUNUWVJSTXVaZFpZRjFE?=
 =?utf-8?B?dzRqM1hOa1Z5NWZySXRnRzIzZHdHdDNXc3VkcDhvMW1Sb3lnL0E0cjYzS2Qz?=
 =?utf-8?B?dVZqNlJlL0hFbFozMGtST1pnZlZWSTB5dWZTb2RyWGc4WThsRnZBV2l2akg3?=
 =?utf-8?B?Wm1WcTlBZWJmVmJsSzQ1R2VBMC9qSDVKRTJpcE5VOUI5R0xxTENSdkd4UHFV?=
 =?utf-8?Q?tbcH3yc28GncILTUQ/Ir/TT0iHwKvOm5?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1BkZUlHbGlBSTQ5aEl4dFpSbE0wandoR3VibVZUaE9zMXpQQXpSRmZHUlVH?=
 =?utf-8?B?SzROQUJNbWpWU01UcldaTDVnanBKTzBhOVAvWnJLM1ZtOXlJMGF0TVcxM0lh?=
 =?utf-8?B?ZUpFS0RMamFxMml1WDZyZjNVRHR0MnlNYW9qWTNzZEV3RWtHY2l4VnFnYWIz?=
 =?utf-8?B?QkkyMDM2YkNRZm5iRTNqNWwrcS9yTFZXYXE3M20xN3Y0TWw4TGpsS2x4c1dx?=
 =?utf-8?B?aVJ0Y3pnQitSZU9zS3VrbEtLeXpkT2hSTGV3Q2lqbnd0cGZWaFkxWGE2YTR6?=
 =?utf-8?B?MHI3U0U5OHFKOVFBWTBpTjQySmFrcVYyVzBwZFN2Yy94SDRMQnpEVTZsTHBX?=
 =?utf-8?B?ZVl5azc2U2hEU0FiaUE4bitISzVXUGsreFQwN0xPdjhtTzJSbDNOTE5ZeUtn?=
 =?utf-8?B?ZlBaU1JMdDNDMERhcy85NVNNZVBaa29EZ2lGV2twUTc2YW80TjhtbW1CcDY5?=
 =?utf-8?B?anVUNlcreURRY3ZxbnpneGFlc201STNxSzJTVm9zT0Fyc2FVN0EzWG51cW1i?=
 =?utf-8?B?cGFBQUU1dmdpdEZWVDY3WnlWU3pKaGpvMGFWSlNROXRqVStNWndpZVZMNFlH?=
 =?utf-8?B?cjBmalF0SUVvTWtzanhsOThveTVKcm9zbkd5dnNGWWhBMlRFdEJDRmZVcFdK?=
 =?utf-8?B?Yjd0TDNVQzBNbmlWZnBoR1F4ZG81ZHZEV01zR1VETzVSWmp1cWVxSkdUbFAv?=
 =?utf-8?B?M2dMUjlzK3FMT04xYjFmWmhJMUw3STgyOXdUVlhFU3pvbzE3Z1Jta0hpNFVP?=
 =?utf-8?B?N0N2b21rcUpFdkZ1aVd5Zy9LaFZNVFBQcDY5SFlRMi91N3RhR1NvMVJpODN1?=
 =?utf-8?B?Nnl5ODBSbi8wTTE1TWJ0aFN0QW1kRjh1OXZUeitocHpNVld4a2tQdTZkdjJQ?=
 =?utf-8?B?Z3h4VGZCVXdnMnJySjJzWTFON1k1WHcyMHNDVTQweHE1TUtnTDlkdzdDOENv?=
 =?utf-8?B?RFp2cWRMVUNZRVRkRm5tbDFYZFRqNm1vWG1wRG5xZHlGcVkzNVJyd0xNcms1?=
 =?utf-8?B?Q2NLazVzV2tiUnZRT2txdWc5eVp0NWVqOG94ZUJYNGhIQm5nSEFtbnZlMWgr?=
 =?utf-8?B?Ny9kaVlrV3gxUXBnanRpK09WektvbkFMSG1JUmtiOWc4NXhuWjREM2Nua0xn?=
 =?utf-8?B?ZUhXVi93cFNPVnM1YnlJZFlvbzJRQ0YrKzhmdlRLMGRqWDJicjBiN2RTMkpQ?=
 =?utf-8?B?MTV5eTNSc3JhcVRYRXc1eVNHdjFCZXhYalc0OUlHcTFCemlMTGdEKzl6U2FI?=
 =?utf-8?B?UlorRmY5TEpadGtTbTFWSG9WNk5la3FzQjNibVBlYUFOa1J6cWlQOFZGYllY?=
 =?utf-8?B?R3RXVUJpQmRoM0ttWFVsNWN1L01JTENxLzlheFNmRkN2WHRpQWY3cmpyNUhp?=
 =?utf-8?B?cERVdlhtZXdlNmNKNmlTNCtibXhjRGcrU0hYNG1SV05oUk5BMG81ZzB1Wlc0?=
 =?utf-8?B?RHdJQlFhdzE1VFFqZnc5aTJFM2xBS0ZPMEZ6WHhXakZ3UmRCSXFyWXBacXpV?=
 =?utf-8?B?RW9KdDNyL1JSN2M5OEg1WEZnZlZyRThTMkJ1MnNielpqQkR4RFRaalpMT0tq?=
 =?utf-8?B?K3hEbFlKNzJhVjluT1U4NkVmRnhQd3ZwMUV2d042R1VEN3pPM0lYRTVRYmIx?=
 =?utf-8?B?QkNPYmdTNzNmemMzMi9Fb0pCdi9ZdHFWVXhHa0tycmNDZmZLTUJsczVob3Rq?=
 =?utf-8?B?eGVrWlZpTEJsV00relN2MkRSRklEVEh4bnF0SXpESzdSVStXc0xTTTE3bVpr?=
 =?utf-8?B?cHF4UDUxeThtWDlVNG9xZmEzL2s3aURHeW1XZHY3ZVU4N3h0alFyN0VPR1Vm?=
 =?utf-8?B?L1NEZ0J5bDU1TE1LT3FSa3pCdC92MVVTbkF2T0d4MEdSY1ZUN3MvK3J3aU1W?=
 =?utf-8?B?Wmk1NGEzVnNCWkVnYlM3L3dDQytrS2duZzVxaTcvUFljQTNJWUhmcnNacGRU?=
 =?utf-8?B?NHpTMHZEbE9PSTAvNTRQalJUSDdpNkhZb09zVmRwVEsrS3NzT3JHOHFEYk11?=
 =?utf-8?B?Skdwdk9UU3JSbEc3R1ZuVytSYjMrL0JmZFpzMTdPaGJjQWNhM3pRSlFIN0RC?=
 =?utf-8?B?MzBvWWxPNlBFSThmbVpaOEt3MkZ1SDV0YXNIK21ySW1sbmpEUWRYWVdmSVkw?=
 =?utf-8?Q?KyWSiDN7cwAslTE+bQ6k87au2?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B704D610B0D5984195F5A6B9062E83CD@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7201d378-8bb3-4c99-adfb-08dd4a421b18
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 02:16:33.9107
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wd2BG3luaULrTUA9XMCkNTvX8sf/Q0T4xJV8UDL/LuhxDf/KICM4SsXl31cL+fZCIO3dWC8EFrDfK57JJycLfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB7474

T24gTW9uLCAyMDI1LTAyLTEwIGF0IDEyOjQzICswMTAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtz
IG9yIG9wZW4gYXR0YWNobWVudHMgdW50aWwgeW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBv
ciB0aGUgY29udGVudC4NCj4gDQo+IA0KPiBJbCAwNy8wMi8yNSAwNzoxMCwgQ0sgSHUgKOiDoeS/
iuWFiSkgaGEgc2NyaXR0bzoNCj4gPiBIaSwgQW5nZWxvOg0KPiA+IA0KPiA+IE9uIE1vbiwgMjAy
NS0wMS0xMyBhdCAxNTo1MiArMDEwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6
DQo+ID4gPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3Bl
biBhdHRhY2htZW50cyB1bnRpbCB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRoZSBj
b250ZW50Lg0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IFNpbmNlIHRoZSBTSU1QTEVfREVWX1BNX09Q
UyBtYWNybyBhbmQgdGhlIHBtIHBvaW50ZXIgYXJlIGFueXdheQ0KPiA+ID4gZGVmaW5lZCB3aGVu
IENPTkZJR19QTV9TTEVFUCBpcyBub3Qgc2V0LCByZW1vdmUgdGhlIGlmZGVmIGZvciBpdA0KPiA+
ID4gYW5kIGluZGljYXRlIHRoYXQgdGhlIG10a19oZG1pX3tyZW1vdmUsc3VzcGVuZH0gZnVuY3Rp
b25zIG1heSBiZQ0KPiA+ID4gdW51c2VkIChhcyB0aGV5IGFyZSwgaW4gY2FzZSBQTSBzdXBwb3J0
IGlzIG5vdCBidWlsdC1pbikuDQo+ID4gPiANCj4gPiA+IFdoaWxlIGF0IGl0LCB0byBpbXByb3Zl
IHJlYWRhYmlsaXR5LCBhbHNvIGNvbXByZXNzIHRoZQ0KPiA+ID4gU0lNUExFX0RFVl9QTV9PUFMg
ZGVjbGFyYXRpb24gYXMgaXQgZXZlbiBmaXRzIGluIGxlc3MNCj4gPiA+IHRoYW4gODAgY29sdW1u
cy4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVn
bm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyB8IDEwICsrKystLS0t
LS0NCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMNCj4gPiA+IGlu
ZGV4IDBlYzNiZmU1MjhmOC4uZjZiNDYzYWFiYTQ3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaS5jDQo+ID4gPiBAQCAtMTY5Miw4ICsxNjkyLDcgQEAgc3RhdGlj
IHZvaWQgbXRrX2hkbWlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4g
PiAgICAgICAgICBtdGtfaGRtaV9jbGtfZGlzYWJsZV9hdWRpbyhoZG1pKTsNCj4gPiA+ICAgfQ0K
PiA+ID4gDQo+ID4gPiAtI2lmZGVmIENPTkZJR19QTV9TTEVFUA0KPiA+ID4gLXN0YXRpYyBpbnQg
bXRrX2hkbWlfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ID4gPiArc3RhdGljIF9fbWF5
YmVfdW51c2VkIGludCBtdGtfaGRtaV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikNCj4gPiAN
Cj4gPiBJIHNlZSBtYW55IGRyaXZlciB1c2UgQ09ORklHX1BNX1NMRUVQLA0KPiA+IGFuZCBTSU1Q
TEVfREVWX1BNX09QUygpIGlzIGRlZmluZWQgdG8gc3VwcG9ydCBzdXNwZW5kL3Jlc3VtZSBmdW5j
dGlvbiBpcyBub3QgZXhpc3Qgd2hlbiBDT05GSUdfUE1fU0xFRVAgaXMgbm90IGRlZmluZWQsDQo+
ID4gc28gdGhlcmUgaXMgbm8gc3Ryb25nIHB1cnBvc2UgdG8gYXBwbHkgdGhpcyBwYXRjaC4NCj4g
PiANCj4gDQo+IFRoaXMgYWxsb3dzIHRvIGltcHJvdmUgdGhlIGNvbXBpbGUgdGltZSBjb3ZlcmFn
ZSBhbmQgYXQgdGhlIHNhbWUsIHRoaXMgd2lsbCBub3QNCj4gaW5jcmVhc2UgdGhlIGJpbmFyeSBz
aXplIG9mIHRoaXMgZHJpdmVyLCBiZWNhdXNlIHRoZSBjb21waWxlciAob3IsIGFsbCBvZiB0aGUN
Cj4gbGlua2VycyBhc3NvY2lhdGVkIHRvIHRoZSBjb21waWxlcnMgdGhhdCBjYW4gYmUgdXNlZCB0
byBidWlsZCB0aGUga2VybmVsLCBhbnl3YXkhKQ0KPiB3aWxsIGRyb3AgdGhlIHR3byBmdW5jdGlv
bnMgd2hlbiBDT05GSUdfUE1fU0xFRVAgaXMgKm5vdCogZGVmaW5lZC4NCj4gDQo+IEFsc286DQo+
ICAgKiBUaGlzIGlmZGVmIGlzIHJlZHVuZGFudCwgYXMgaXQncyBhbHJlYWR5IGhhbmRsZWQgYnkg
U0lNUExFX0RFVl9QTV9PUFMNCj4gICAqIFJlbW92aW5nIHVnbHkgaWZkZWZmZXJ5IGluY3JlYXNl
cyBodW1hbiByZWFkYWJpbGl0eSB3aGlsZSBhbHNvIHNsaWdodGx5DQo+ICAgICByZWR1Y2luZyB0
aGUgbnVtYmVyIG9mIGxpbmVzDQoNCkFkZCB0aGVzZSBpbmZvcm1hdGlvbiBpbiBjb21taXQgbWVz
c2FnZSwgdGhlbg0KDQpSZXZpZXdlZC1ieTogQ0sgSHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4NCg0K
PiANCj4gUmVnYXJkcywNCj4gQW5nZWxvDQo+IA0KPiA+IFJlZ2FyZHMsDQo+ID4gQ0sNCj4gPiAN
Cj4gPiA+ICAgew0KPiA+ID4gICAgICAgICAgc3RydWN0IG10a19oZG1pICpoZG1pID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7DQo+ID4gPiANCj4gPiA+IEBAIC0xNzAyLDcgKzE3MDEsNyBAQCBzdGF0
aWMgaW50IG10a19oZG1pX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQ0KPiA+ID4gICAgICAg
ICAgcmV0dXJuIDA7DQo+ID4gPiAgIH0NCj4gPiA+IA0KPiA+ID4gLXN0YXRpYyBpbnQgbXRrX2hk
bWlfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikNCj4gPiA+ICtzdGF0aWMgX19tYXliZV91bnVz
ZWQgaW50IG10a19oZG1pX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ID4gPiAgIHsNCj4g
PiA+ICAgICAgICAgIHN0cnVjdCBtdGtfaGRtaSAqaGRtaSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYp
Ow0KPiA+ID4gICAgICAgICAgaW50IHJldCA9IDA7DQo+ID4gPiBAQCAtMTcxNSw5ICsxNzE0LDgg
QEAgc3RhdGljIGludCBtdGtfaGRtaV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQ0KPiA+ID4g
DQo+ID4gPiAgICAgICAgICByZXR1cm4gMDsNCj4gPiA+ICAgfQ0KPiA+ID4gLSNlbmRpZg0KPiA+
ID4gLXN0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhtdGtfaGRtaV9wbV9vcHMsDQo+ID4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgbXRrX2hkbWlfc3VzcGVuZCwgbXRrX2hkbWlfcmVzdW1lKTsN
Cj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgU0lNUExFX0RFVl9QTV9PUFMobXRrX2hkbWlfcG1fb3Bz
LCBtdGtfaGRtaV9zdXNwZW5kLCBtdGtfaGRtaV9yZXN1bWUpOw0KPiA+ID4gDQo+ID4gPiAgIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2hkbWlfY29uZiBtdGtfaGRtaV9jb25mX210MjcwMSA9IHsN
Cj4gPiA+ICAgICAgICAgIC50el9kaXNhYmxlZCA9IHRydWUsDQo+ID4gPiAtLQ0KPiA+ID4gMi40
Ny4wDQo+ID4gPiANCj4gPiANCj4gDQoNCg==

