Return-Path: <devicetree+bounces-110219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2875A999AA2
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 04:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FC471F23223
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 02:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2BE21F471B;
	Fri, 11 Oct 2024 02:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="S4rQHbLj";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="MYWDWnZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D3E17BA9;
	Fri, 11 Oct 2024 02:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728614339; cv=fail; b=g53YibQUv7f1PBvWAblomjj1amEeINMdrKbh44dEc3YQMuXY0vPoqL0b6JG+6gProaoJmtEgKkJJ3eKaZ8vj2zhdG9rNgSk1uQ/gaOnlxPyMv3dg8oXXsG16a3gxd+49wRDZ66JGHnp8WRLTDJMVoOPf+5vFWnp6KYCegSGFaII=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728614339; c=relaxed/simple;
	bh=cQHQbe/k2mHsXRYjV8SaTF2x3+CjJfdQKCEA+XwVfwI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=q3rdIh59BpyKPzhh+Fav/lXywr3PaT/Za85d8KshnNxBqn/JaASS2pfEvmvXFLDSwdOTNqR2jhFNhOPIZBAcnhh/wb7pGja/SyFuSFeSz0zzfZdxfa2M9j57DIHFVwOYehmf41vGBKarde4wUI14Dj2PL+2k0qvXlyYxiqnwkXc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=S4rQHbLj; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=MYWDWnZz; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: f460cf3e877911ef8b96093e013ec31c-20241011
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=cQHQbe/k2mHsXRYjV8SaTF2x3+CjJfdQKCEA+XwVfwI=;
	b=S4rQHbLjNTywyWR50oG5vxp8ccZls+Xb2dGiZLNNpuqon4BMdpgyZUp7uNjkfh/Y8Asf8BwOScxXINwTh+vbnwmy4PIZj9y3YfYrqE0wOQ1hPo1vvNN1mXcAytSpMkTaLYDspwKbtUaMyPUFyrCsk1a2Pjt777FHJeLti3yNw4k=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:2191b72e-292b-4748-97fc-e91f79c5a044,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:5f6d1165-444a-4b47-a99a-591ade3b04b2,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|-5,EDM:-3,IP:ni
	l,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: f460cf3e877911ef8b96093e013ec31c-20241011
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 899320675; Fri, 11 Oct 2024 10:38:53 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 11 Oct 2024 10:38:52 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 11 Oct 2024 10:38:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VvXWipQmtqfPBz3nn7KbWTkSKZ7bbaC4whI3yT2w7/N7C7fm7allx4O1fAIAQ2Gx0JC0q4Y5hOfvaGVMfCZ4bOc+qMnUe0xb4DtzXOWUOeVboUZAr8y7M92QtXl6tI6yiU7CaqZXVs85aNj/KK7ZfhID4kWRlBZCON1VD+27hGHeqNokCTc2CEB9oKBaNtsbUqZSgXTq802c7jw2M5AlNJ4nyWzu0DdQ5spur4kjm4vobtEigKfY6vRUj5W3V/up77XhQYkwdzhhdLTHGNEIXBxCgDs8HiFvZgxM1adJIUNv/u7lO45jZVoxtVSZnKKXKgAGtabaeAYniSTJbmupOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQHQbe/k2mHsXRYjV8SaTF2x3+CjJfdQKCEA+XwVfwI=;
 b=mrJuIUjwagyTSCwsydTq62jvuiTIUFZxC6WtYjgwyfRhFzqbp2vYJkC0uZu5jNuiEjd0VpfM/hgTS2pStjWcSjbf7gkNS02SwDJplzQ927Kx20SvLWGMTz1xEsKF+bnc9cXDvz/ilSrJRux42m/giLPl8lvmtbe25VqaLHsLHX+a39NAsyyQYB47tkXHP7U65gvOyQwSaXFrk4uAqegAuOX+nDDM/zQq2pob2NO3RW3wJuyx4zRuOiz6iwOnsPWcjvfMRSi0DOYrVTQaZs2YUD1/mdpshT4wVmGHiwA1HBICUFdbLqPWJ//uAek5OrkA/XekZOCH6fJND7wkA60KDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQHQbe/k2mHsXRYjV8SaTF2x3+CjJfdQKCEA+XwVfwI=;
 b=MYWDWnZzZUkleAVMfGlK3EF2L2UJjivhkpNfDKTJyCvIFeZ+5seiHgRq4pj9/hU9YwOuba9ZfB2nsPKSjQkAHgtw4xq+ONBuylkIqCT6KuUT7JmcdCdhGlKllZQgfP2oaReocgR4A7rB5seVjbPowDswLCLxtg4BcYdj+sbRtp4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TY0PR03MB8331.apcprd03.prod.outlook.com (2603:1096:405:1b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 02:38:48 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 02:38:48 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>, "mchehab@kernel.org"
	<mchehab@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	=?utf-8?B?U2h1LWhzaWFuZyBZYW5nICjmpYroiJLnv5Qp?=
	<Shu-hsiang.Yang@mediatek.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"yunkec@chromium.org" <yunkec@chromium.org>, "linaro-mm-sig@lists.linaro.org"
	<linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?WWF5YSBDaGFuZyAo5by16ZuF5riFKQ==?=
	<Yaya.Chang@mediatek.com>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	=?utf-8?B?VGVkZHkgQ2hlbiAo6Zmz5Lm+5YWDKQ==?= <Teddy.Chen@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "hidenorik@chromium.org"
	<hidenorik@chromium.org>, =?utf-8?B?U2h1bi1ZaSBXYW5nICjnjovpoIblhIQp?=
	<Shun-Yi.Wang@mediatek.com>
Subject: Re: [PATCH v1 02/10] media: platform: mediatek: add seninf controller
Thread-Topic: [PATCH v1 02/10] media: platform: mediatek: add seninf
 controller
Thread-Index: AQHbGj2MNHQ5sKpEAUCTiRDvBgOUWrKA2OSA
Date: Fri, 11 Oct 2024 02:38:48 +0000
Message-ID: <88077a5879980962e07388ec25a910b07d01c1b6.camel@mediatek.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
	 <20241009111551.27052-3-Shu-hsiang.Yang@mediatek.com>
In-Reply-To: <20241009111551.27052-3-Shu-hsiang.Yang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TY0PR03MB8331:EE_
x-ms-office365-filtering-correlation-id: 2758b5de-2aa0-4708-d3bd-08dce99dd5a2
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UEppdGpPUWhDVWR2bUZGdHBqcloyNnpLb1ZhcS93akYzbFM0OVkvNE03YWg3?=
 =?utf-8?B?ZlVFUC9CTVB1eXk2SklmOWYrQnA3aStONyt1UkUxYmgzRWs5c0gvai8rMUNr?=
 =?utf-8?B?SXRGTkRGb09VTUlaamlZdThoT09lMkdnZlRTUEo3NzlPNUFFTExzYlFjdU9K?=
 =?utf-8?B?UVpNRWZQcTJJcDYybFBhWURUUldvY3hNa1czaFM3aDNuM2VzazRxOVFEUTk0?=
 =?utf-8?B?eWxhaGxMUmpFMFVJTml2VVJnRG9hUDN6R2twWlBCR2tBYTZEMVhoVDIwL2RP?=
 =?utf-8?B?VVZVZ3A3cklYMDVGbFA5cU8rTVFDM0FISGE1Rk1aRCtoUmFLR29HaEM0ZWls?=
 =?utf-8?B?VG1iTHFnTExBWTJwbktmRWRWMVd2NjBwNXlPY0pKNmlkUU1wZ0NTSlJqc0Jh?=
 =?utf-8?B?M3pHNFM4c3ZMNTczZkhCTnpINWR0RVJFaFJJWTNERGlCTDVCZVpQbEZjNUNz?=
 =?utf-8?B?c25VZ2tJNHNuTXBCa04xQzZxdExqc09RemF5bUlxZ3JHMEFzVm9PU3VpYmtH?=
 =?utf-8?B?MEZDUU1rN09PSHhxMGQ5Mnc1RTZNZ1VZc0lVTVY0U3JiZVhacEJCK29HdlFG?=
 =?utf-8?B?WHg5ZU1Vd1cvM2xPS2FGRXE3TEJPaHliRmN3K3ExMWV5TzdhTWViZkg5TmdJ?=
 =?utf-8?B?RnRzUWIvMFRCUHpjQmdsaFVwYjBzMW9DTlF5STlFYXJLbzBHaHJpVlV2bFNv?=
 =?utf-8?B?K2NqRjJGWTlVYVhTemVJWmxtRW5RYnRnWHZ4NW4wTFRnOEFORFZXNG1VSDEw?=
 =?utf-8?B?YW9DQzBhY2RqUklMNkFORmk4aTlnM0trTk5jQmxTbCtLd0doZ3dRRjNnZndh?=
 =?utf-8?B?ZG9BdlNzVEl5NDErNVhGalZJeGk3QklaN1pHR2NwK3JMekVJTTlzbTAwdWN5?=
 =?utf-8?B?di9UMGg1SlJDaVV1dElFd3NqUklNSngxSVExNUZydmRTaktHdTFESUNrK2Mv?=
 =?utf-8?B?ckFXbThqejQyNkJWd2p4YmVHbS9YQ2EycTA3Q2pHcEFlOVpRbnNPNEw3aGN0?=
 =?utf-8?B?ZE5jQ1FFY3lucjNwUXpGZU8wZExPLzl0TTdDZ3d1VXNPbFZiSllJTnpGeFZN?=
 =?utf-8?B?bFVkTVptUmR5aC8vaWJZRXhkVjJSOGxtQkhsUEw1WjFvbDg3Y3JiL1BmeWJO?=
 =?utf-8?B?L1B3Zm9tMkpSMndnZmZWUXF1b3lpZ1NrTEowd3BKRkJjTVMxMXVzZWw5aWRz?=
 =?utf-8?B?NGExQW5wYmkwUWZVazVBN0d6UkIvcnlDR3VrVkxLdkY3bjlBdE9tQnpOaWJV?=
 =?utf-8?B?bXpWSWZZbkhNKzZmVVJoUkVNcTZrdE9WVEsxZkhPYXdEcUl6VTVuTGl4WG1p?=
 =?utf-8?B?d1VuNldINWpyRit6RDhRNGw1L280OVVxZGlaSG9jbk1FYmxBd2t1NmFsRHor?=
 =?utf-8?B?d3cwSjNvV0h1M3BQMjJXK0NCTFozSnlzVjdEZmZ5c0RGZlRKQVJxWUlBeWJq?=
 =?utf-8?B?Rnkza2lNYysxSytpQ1ZkdGFsQ09MUTY1T0xWa0xIZ1lid08zd24za3BYaFpn?=
 =?utf-8?B?ZFNuM20vY2FPK2M1M08zbURSWTV1QkdudlRCY2QxSW9hZ3FLUGxTRE40R05t?=
 =?utf-8?B?Y0NOZU4zNXc0ekMvb0o2RTZBSy9SVG5sdmxscGtpTTM4YnBhc01qaWtmSGRs?=
 =?utf-8?B?SFlsTXhXb3dXdzNvYnozazBnRERUdTk0d1pTTEx6NW1aUVEwdnhUOW9JSlRT?=
 =?utf-8?B?YTRUNzVuWlRUbjV4dmUzN1o1ZDAyVm15SXQwcTFXQkpHV1pKdjE1YktvbGdh?=
 =?utf-8?B?YUlnUkdtTWw0dUR4cTFFYzZsK3VLTnpaQmdPQm1tNlQ2R1dsbW1hc3NybTY5?=
 =?utf-8?B?Vjl4OXZUS3BjcGtlNTN6dz09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW9KV0l5eXg2WUFaWlVxa0VOa280QTFxdGdGNXJjTkhUZnMxRlJvTU00TzRw?=
 =?utf-8?B?bFVwdXFmV0NrTTBiYTArZGExcEljSUpsSDRPUzlFRjZtTEVOZDVmL0ozTW5Q?=
 =?utf-8?B?OTM2dXAxT0Y2bjlCeUdqYUxFUUhhME9pcDQ0MEdnV1lHYWl2SFlFb01sakhp?=
 =?utf-8?B?R2lBd2pjcHVUS2lTSUVYRldDZER2TkRoZUtmWi95WmZ2c0c5R1J5SHZwTStU?=
 =?utf-8?B?SzZqcFJ2R2QvRm55M1RYTlRDUnR1T0VMa1MzYms2NTFyOXNDOXoyUVk3WTdE?=
 =?utf-8?B?cTFvbm9nNmFNYXRtbFA1SzAwRXByc0pKYmZ2SzZ4dUhSNjFPTENMWkVGUFMx?=
 =?utf-8?B?OWd2VkVSemRMdUNyU2xuRElCNEQvN2NabkJFS25kNWk1MmlqbHZKdXlhV1Ix?=
 =?utf-8?B?a2hRRVpZS2p4TERhSkJZYndUcDZzYUxsNGExN1A1TGF4QXVvclljUk1lQUdu?=
 =?utf-8?B?aXA1b29ITzlWQS9xZ2dnaFdqd201ZnQvRHNDMkVGWm1taGN5MCtYcnpyVVZU?=
 =?utf-8?B?WXNhb3BGaUl6V0Ztb28vUzYzb2pWckhZcFF6d3E3M3JpZmg5ODZLbGJHR3Fp?=
 =?utf-8?B?dmVwUW1NcUhWWWxIMERGV29RRnBOUDBGUDZwR2dYUWZQbWZCWEFROVlNOXRQ?=
 =?utf-8?B?WnVuMTZlaWtNUGJCKzUrdW5TOVNTQkUwWWYrSWVFNk9jbHR0eDhRNTRIRGNS?=
 =?utf-8?B?Rit4MlNvN25EYnpCNkZJM25QQlpTcmkwWmVveUs1eUZxem9vb2pDQ0kvWUVo?=
 =?utf-8?B?RUhSMk50dGh5dGh5dEJlYkpQV3g0dVVDdjVXbXJnbXR2Y0htVmFNOHlmU01R?=
 =?utf-8?B?UU0rVUVzZ1YrUEltUXgrMGZvN01GQ3RFcENMMVR1N1RMMjVvcTNVbURLeVhv?=
 =?utf-8?B?dmRvZWk2aUpoM3VsSkczU0dQM1pFc2xhaW92WVJGcjJGdldZS1JZMWRVeGdJ?=
 =?utf-8?B?dTV5ZVZKbmVDd0xiYmc0SE95UWVhMTRGandYYmlDdjlGdFAzNGxGWDhmc3NC?=
 =?utf-8?B?a2QwOHRreDY4akNRVmNSUndRRmtHcmJLTUFtaCtQa0R2K2t0ZTY3dFF0Q0sx?=
 =?utf-8?B?Y2RmdGptQ2NqQlA1dk15ZGNGNjhLL1U0VGRhVGRqT01icVBKQjdGVGtFamxr?=
 =?utf-8?B?MWlYUDhtZ2hZSUdvZmFuaGYyci9YdWJCbEtJc00yNm42SW81VTFhRE11NEsz?=
 =?utf-8?B?WUU0aytIYmFHckVaMzdXS1JXQW5NNkFINGIxblNDTW0xQlR0bENtb1pGRWRo?=
 =?utf-8?B?OEkvRFJiMk44aENoM0lsYkhscXF2N2M4QUlkTTMxYmFvU2h2RllONVJndEJS?=
 =?utf-8?B?bGhFWXBFVzJBRzZoRnVFR1d6dDZoTWxtQjU2Sm91ZlkvdEVMb1BXWjBhVHNO?=
 =?utf-8?B?bk9rNzJsUkVGNzBKRSt2dVM1ZGpjK2xIODNTRnR4MU9tNWJvclBERkxyekFU?=
 =?utf-8?B?UXBJZTFZZDZjSE1raWdLQVdLbWN1c1kzanhxNG41dHhWaXVld3F1SWFnTldn?=
 =?utf-8?B?eXRZOVVJQkgvOGtGbmxMMndVeVFpcGJyeTlhUjlGTlFHQ3BHOHJzMU5zb1Ju?=
 =?utf-8?B?NEI3NnFnbXh2QUlxNDBqZk0rdXlLemRZeFJBOC9Sams1VlJZK3BybHlidENV?=
 =?utf-8?B?R0E4eW1pTGhBSlRpemlqSkVaL0lidHJHYUdXMDcrOVRRcUdqdk5QVjcyZXhz?=
 =?utf-8?B?Wkpvcy8yUnc1WjBMNkQ0UUJRZUFTMTVrendIR0E5a0dKT1RuTlliaTNYVi8y?=
 =?utf-8?B?M0ZRcTZ0VWVmL2Zrcm5aby9mVzNSY09hVUtHRXFtZ0k3enVLdWdGV2NKclVE?=
 =?utf-8?B?RFJGc2xLT1FPalNLeTRNUmJYRFZIanpmMlJ5MzdFWHByV1ZFdERGWkJRZnU3?=
 =?utf-8?B?a3BGc1RpN3RiR2k1NzVXQW9YK0dRY2VzZ0FXK0xMUzQzT3A2YmtQY2xIQ3B4?=
 =?utf-8?B?by9Kb1FpK2ErNDk4cXJYWTZjT29OdGt5UERLM0tRWlBWWlhPZ1hwdVZNWmtt?=
 =?utf-8?B?UGhhN2NuVU43cWpjNWQwd08zeDV6VUNHQWJ1bXF0SUliMWRHOXRsdE1HS05K?=
 =?utf-8?B?Wm5ydUJCZCtVMVZWVWFzOFVxaHowaW5wbnk5UXRmNG55cGFMN0FwdkMzS1RY?=
 =?utf-8?Q?/Nlnf/23axsy2OvBrWV+VUM26?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <087943982A1A24409B5F87023615A07C@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2758b5de-2aa0-4708-d3bd-08dce99dd5a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 02:38:48.2965
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xpF3hto6I0og17GFNi4ELIP2Z4O1x68xfD3+aBTogsa210txQ/U2UkwFX2of9z81J6yrd+036Lo8bC55mpNo4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB8331

SGksIFNodS1oc2lhbmc6DQoNCk9uIFdlZCwgMjAyNC0xMC0wOSBhdCAxOToxNSArMDgwMCwgU2h1
LWhzaWFuZyBZYW5nIHdyb3RlOg0KPiBJbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIHRoZSBzZW5zb3Ig
aW50ZXJmYWNlIGluIHRoZSBNZWRpYVRlayBTb0MsDQo+IHdpdGggdGhlIGZvY3VzIG9uIENTSSBh
bmQgc3RyZWFtIGNvbnRyb2wuIFRoZSBrZXkgZnVuY3Rpb25hbGl0aWVzDQo+IGluY2x1ZGUgcGFy
YW1ldGVyIGNvbnRyb2wsIG1ldGVyaW5nIGFuZCBtYWludGFpbmluZyBzdGF0dXMgaW5mb3JtYXRp
b24sDQo+IGludGVycnVwdCBoYW5kbGluZywgYW5kIGRlYnVnZ2luZy4gVGhlc2UgZmVhdHVyZXMg
ZW5zdXJlIGVmZmVjdGl2ZQ0KPiBtYW5hZ2VtZW50IGFuZCBkZWJ1Z2dpbmcgb2YgdGhlIGNhbWVy
YSBzZW5zb3IgaW50ZXJmYWNlIGhhcmR3YXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2h1LWhz
aWFuZyBZYW5nIDxTaHUtaHNpYW5nLllhbmdAbWVkaWF0ZWsuY29tPg0KPiAtLS0NCg0KW3NuaXBd
DQoNCj4gKw0KPiAraW50IG10a19jYW1fc2VuaW5mX2RlYnVnKHN0cnVjdCBzZW5pbmZfY3R4ICpj
dHgpDQo+ICt7DQoNCldpdGhvdXQgZGVidWcsIHRoaXMgZHJpdmVyIGNvdWxkIHN0aWxsIHdvcmsu
IFNvIHNlcGFyYXRlIGRlYnVnIGZ1bmN0aW9uIHRvIGFuIGluZGVwZW5kZW50IHBhdGNoLg0KDQpS
ZWdhcmRzLA0KQ0sNCg0K

