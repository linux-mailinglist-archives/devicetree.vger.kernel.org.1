Return-Path: <devicetree+bounces-70155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9DE8D2A2A
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 03:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59B161F27D83
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 01:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A9F15AAC2;
	Wed, 29 May 2024 01:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="AiYpNCOJ";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="tFBI5DKR"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9944F26AF3;
	Wed, 29 May 2024 01:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716947932; cv=fail; b=gActSB9V+/lEEIzaRA1kYw/PWASxwjonbiS5Um/LZlrJVYXn6ZwszSnWeelKDoTUWKdXoUJYxaArRdjmxkaP+IKZ7qtfvVYos8Ml2NhMPFW4fzjMH7BrUPfIK2MXEzw2C7qFkj4DsQZEy3eRf0ASYfZBzSivn6s7zFbt1V0QYsQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716947932; c=relaxed/simple;
	bh=csRFLstVJgT8aYxBI7T5OdLNnadAlXFKd0NhVlRW1XE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=dgiCh389Rya/e+v16UQbztiW7v7hSWTekmRBzIT6TKLlFlnVA8tfrtwWEPs1f9uKpjWuwNlHil6ryZuFG+oNMvcKk579o69pN68FgKi/kLguV9GaQUzL5jBX1S8RzIgSupjfq23pNHZQBF4oHf4SZ2neIYllzkOCJFF0j8XVt7U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=AiYpNCOJ; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=tFBI5DKR; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: fb2e3da41d5e11efbfff99f2466cf0b4-20240529
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=csRFLstVJgT8aYxBI7T5OdLNnadAlXFKd0NhVlRW1XE=;
	b=AiYpNCOJFzYS9dfkaOylsxGR33QIGbaf36CNWXNL3ok/6hEaiYaucnCI44VJosALEhTGaHF+L0NtzVhkrqtaTJSsEBmuctwwlPgRWFayktd0vTcSIzgJ86zslu10bOFG33hdhkhAcAZNqm1SZOxJqGX89TaH8tawH7tq409b/4Q=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.39,REQID:c59ad4ea-f63c-4c1d-af12-bc513e85b1b5,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:393d96e,CLOUDID:26127084-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: fb2e3da41d5e11efbfff99f2466cf0b4-20240529
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 331824322; Wed, 29 May 2024 09:58:45 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 29 May 2024 09:58:43 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 29 May 2024 09:58:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzL/wXI5IBfFP+/UJJGR2j0qf9+aSKWpHQZbiNiw+LkOTk36sY3WSrHOsxr56eYTv0Ed17lAtTIWMZ3mwpB2BT99h94z0Yo5/+pdMJphPe9LKZgHnlgXAcPP7In5HUEJPBnDiZuldt+j3DOiM4P3cnoyxYuG1rJdkqtZdCY9fEZmjBUjVHPVMhEJUVQid2Y78aKFQ0RnZAKq9YxLhDGWPdF85ftxsh51TdCihOuzM9SdSPbUaq43Ruwg+zUQracR4mhN3eQ6jjmuOhMWSKc29HMOKmypHnk1ZVsMxNHreDreX0wQaKpczO35E9tcaYrVlCzEn6xT7Ru20Ysu+SAMSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csRFLstVJgT8aYxBI7T5OdLNnadAlXFKd0NhVlRW1XE=;
 b=lGZI42aPGk947NrnwKAXb8l8Ut1Rq5dW3dP7J5xjaj6NPmBpcKem8p752z/TEUN3reupl4pSX5PJfFYnlVFC2H2zEtpW8UqrjE7vXk10Qai8NgM3Hm95+7bZhuNcnht3Kz9vOcR6j0NKkrC6FtIvcUxdO/Bk+mPzLiBB/XBh8ys6EYGtn89WzMvi7PreAUmqyxgfXEaodrmRbyLjuD9so7R5mGWtZiNv+4Ttbxr/QLwJMk9abH7sczwqHuW0nuRraaimEfpDf2eJI14KuSjZjYSQiB8arqmQbQkXNeD7Xv9KVUpifD4lmAD633kzEXMKo9l9VrkXbtoK1EEdpv7Rhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csRFLstVJgT8aYxBI7T5OdLNnadAlXFKd0NhVlRW1XE=;
 b=tFBI5DKRY5BonEyTw/ULHPnOwmqCaNyY1Rz9RI8BjoNcLTlGHRIJbU1df72Pj2v6wSskiSqfqn7WNh8SI3upBxOv4Y9z8yjEVshI0LZ4QWiKFLTi2Zw995ThbRMuzrGSuvBUjM1zX/Z262BUZZp80xrHplFixXmeiPPQqK48zDU=
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com (2603:1096:101:83::7)
 by SEYPR03MB8792.apcprd03.prod.outlook.com (2603:1096:101:206::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.16; Wed, 29 May
 2024 01:58:41 +0000
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::9fa0:ee98:d5ed:beba]) by SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::9fa0:ee98:d5ed:beba%3]) with mapi id 15.20.7633.001; Wed, 29 May 2024
 01:58:41 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
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
Subject: Re: [PATCH RESEND,v6 8/8] soc: mediatek: mtk-cmdq: Add secure
 cmdq_pkt APIs
Thread-Topic: [PATCH RESEND,v6 8/8] soc: mediatek: mtk-cmdq: Add secure
 cmdq_pkt APIs
Thread-Index: AQHar3tb23XIl+/0dEi5AHaznK0CVLGr95AAgADSHQCAAK7QAA==
Date: Wed, 29 May 2024 01:58:41 +0000
Message-ID: <9959dc856288b30698c8990695b2ad50376dd21f.camel@mediatek.com>
References: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
	 <20240526144443.14345-9-jason-jh.lin@mediatek.com>
	 <98b5d60e0ca29e6ac126035c1594c8b0d0210aba.camel@mediatek.com>
	 <6141715c6f17ff5bb39460d87b88f93785a613a8.camel@mediatek.com>
In-Reply-To: <6141715c6f17ff5bb39460d87b88f93785a613a8.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB6626:EE_|SEYPR03MB8792:EE_
x-ms-office365-filtering-correlation-id: f7c3b5cd-2878-4351-d26c-08dc7f82dd73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|7416005|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dU1aM0t0aHBOZE11OFZDaGZ4dThsSGY1ZE9NSE5hOXQ5MHNWM2RxSUVqM2VK?=
 =?utf-8?B?YTdORllyZ0dsZFFEOUhTN25leHpWSW9jbW45T1I5VWhEZFJpZHQxS3QzYUtF?=
 =?utf-8?B?TTE3V0wwZmhlQVNaTVBYU2d3c2hUSVh1by9lNFJxSzY3YnczRGZhWS96d1ZB?=
 =?utf-8?B?S25ldjVXaDRVNFBEZmZlRDlhM3h5RUpIV2VPVmRFNVhWZTZhQXhUU3FsdnNl?=
 =?utf-8?B?TkhFZ0dRRnViUW5IS3lTU2RBbFNGcEJLZ2VJdjdXazJDM25zTEZzNDVvdHlm?=
 =?utf-8?B?UGNBRyswQ3BsSnU3bEhvK3djZ21JODh1Q2NGYXVROEZxVUR6Y0lTZWxEY0hF?=
 =?utf-8?B?a1RPRktkazVIQzBhZ0t6MTBHdUZ0NWRISEkwRmNQWWRWOHIrbThVT1BqdGUz?=
 =?utf-8?B?UVJiR1hlRjhmNkdKU0MzUlRmQ2JtNUVKRXZqL2ZTV0ZZMzBhcE9kaUpWMnNV?=
 =?utf-8?B?VWRpR0lyZTN1Z1V1WWVhZHBudjE0aWNFcml1dnloTXNjQ1YvN2tlSVd2Q3M0?=
 =?utf-8?B?c2FpaFRDY3U4ZCtTVGZJdndEenRlMnREbmU3YVQ4Q3ZJWEZOQkNaZVpIWjQ0?=
 =?utf-8?B?a1BEME5RY3FCUlA4VXZaYnhpQlZsWi9oNEdBWFoxcS9qUmZvL0dmTGozVGhP?=
 =?utf-8?B?Rm1BVysxanVaZnlpZzQvbDMwQlpNVHp0Snp6UkZQZS9xM2MzeGtyWHpwdWxs?=
 =?utf-8?B?eGNQT1RVZzJvemVOcGpsQndBNGpjdFFkSCtSZE9qcXZDTTVHWFNMQzRXWXdu?=
 =?utf-8?B?THhDWGdqUjRxQVJweERpK0pEUWtVU1NHK2pBem1YNTlZQWJkNFlLT285OU1U?=
 =?utf-8?B?cFp4SjI1T0hHYnlHWXVqQzBFeVBGWGp5UURqUTZGQ0dkN2prZkNRUnpoRllR?=
 =?utf-8?B?MzBEQWtjNG44YW1oL3Vqb3M4ZUFlTm5YUXU0UUErTFNVYmlNcXZzejh5MmZt?=
 =?utf-8?B?a2RJOWVnTEtrSFJ2RzEwSC84WHFQU3dXQmJSdUJyOXpPQXkwc05mTGdBa0JB?=
 =?utf-8?B?dE10Sm45RCttVmxOa1ZQa3ZaYnhtcXFQN0NIZDJiWnlFQjZPRHlpanUzNWIr?=
 =?utf-8?B?VkxmZEtqSHZ3Q1B4TDFrR2xvOWQwUVB2MjVCY3BvOEZuZFA5MktNcStFQjcz?=
 =?utf-8?B?V1NDZFJTWnFwNnFZSittOXNESzlJZk5GZjdSWG5aTWpmTW14MzFlalI5cU1F?=
 =?utf-8?B?T3BwYlE1ZURTbzgyL2JZZkVtYUxLYmorWUQrUk9rNDB1WVFubGRScTFtd3Z4?=
 =?utf-8?B?TC8xaHhWN2VnOUpMQlZrQmdZZTQzb25RcXpoVVhxUUFJRUZGdmJFYmdNMzdx?=
 =?utf-8?B?djhhbzBvQkFhY2NRdXZXZitHa3YzalJvUTZldmh2M1FaWmlVYUsrUUxia2Nv?=
 =?utf-8?B?WXdTbjlGRGU5SUNOUHVFVlAreGhGWVQvTzFqZ3IzZGRpYi96ZVNSczMyYmg1?=
 =?utf-8?B?UnIvOWprUzNPOUZYZnFoME1KSUM3ZVRWVzFNbUpXbHltdjJYdFdkK2tRTE92?=
 =?utf-8?B?c1FzVjdLaEpSZlltaTVIZ1ZFNnQ5YlpJUTNoaG45c0Y4cFVMeHc3ME85NWtx?=
 =?utf-8?B?WWJZYTFrTWw4Rld4TW9uN1NuRlJqNVlNeXBOUWNyM250Vms1VUMwaXlnTCtE?=
 =?utf-8?B?eU51b1lCdHRRWEJoQnZwKzFCMjRVQmtheHNqV2ZKcEpTMW1FOEEvZ3NndWV4?=
 =?utf-8?B?em5YS0NpL3VqQmJMS3B6OUxhK3B0TFVJQ3pyMFBpajZGRFB3UVNnNXBNaUp2?=
 =?utf-8?B?c0k1STZ1Y0lCbEdpYW5oMmpOV3prOTNnb294TWlEZWlibjc1WmJvTkZJNnRM?=
 =?utf-8?B?YW9rdzVUVDhmSEJVMXFOZz09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB6626.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEIyQ3dzblkyZ2VoTExyS3RxVjJSNjQwcHJrVEphVUkrV2FVbG9DcUdEM3Nm?=
 =?utf-8?B?OU4vaDI3YWhKYk0rYy8wQWZueWhWL0loaU1jQmQ2cFcyNC9SUFhrQk1vM1FX?=
 =?utf-8?B?czlHeXJmN3ErZ2h0NjB5MnFRWXdCdUJwc294QWhMQlNHTzRuMEtob3F6UmdD?=
 =?utf-8?B?d2JJZHUrcFpBN043Q2J1MktWclVIWUczV01YU2I4WUhZU1cxb1A1N2NiK3Jj?=
 =?utf-8?B?NXhybDhEMWJLU0d6bjNGODAwd01aVlZBdUZMSGZrZmZ0bEhoQlVkRFpjL0Jt?=
 =?utf-8?B?NGtYTGVYU01oM1BhbjRPU2JUaHZLVE1sQTBwbnRVSEZydjdnMHlvb2VrVHhM?=
 =?utf-8?B?T0Y1ZmpsTlcrelBlZHNHT0hETEFyeDJRSkU3SDUzV1VUa2YwUEl1OHptZXZk?=
 =?utf-8?B?aCtVWUZEbHovcWN2Q2RKWWRJTDNxdU1oSFprMjJNZGxOaDJpUThkRXpIOFN4?=
 =?utf-8?B?b3VLMUdnRVh5dnFYS3Z6alBOZ2ZiN1hFVGlFdFRvaFRHdFMwc1VsWUd5T2t1?=
 =?utf-8?B?MUtOVEw5YUdCVmZFSDVmekhPUk5EWGFYanA5Q211ckpvL0dTSklZdUdyVEVx?=
 =?utf-8?B?bGxBUStMTG9qSWU3VDdnVXNsOHQySUwzM082SDFSVjFFMzcrdzl6V0YrREc1?=
 =?utf-8?B?MXVabDNRMVhqbld1bm1IMFJsbXhWeHM0Qjk2c2dxWnR1VEQrdVhERmp5K0RV?=
 =?utf-8?B?S1A3R2l4UTU1WWRPRzNiNlBFQUNsaUJzMzRBR2RDMlZ2UUpEaHRrRUhLTTh3?=
 =?utf-8?B?UENsZi9qcGlFbkp4L1gyVTZldWllMURRZElLQVlsR2pSYjh1ODhjUmczMVg1?=
 =?utf-8?B?cVNSdm1kYlNMU0ZsbUl2djBaT3FiS2J3WVB6R1NsdG9USmxVcGF1MHRVV3U1?=
 =?utf-8?B?eGo0S1Q1UlhWZmJnWG9WNGhqUjNMMFYvdllheUFvNmhXNnlkZzI1dUtIV0Jn?=
 =?utf-8?B?amNMbmVkR2FyRk1qRE5pQThMZ0EraVZ5VjFxUEpiemlKdWZFazQvZ3FneG9M?=
 =?utf-8?B?dnJxc2xhYUdXVldhVktpN1RvVzhUeGlUb3F4a1VsQm1waVV4bkZXWDNRY3B6?=
 =?utf-8?B?ZEZFeXowQ250QVVJeGpXbHFxcm53aDZlVm9rZmZRbjJUZnBvbk82Rm1uOXo5?=
 =?utf-8?B?cmJaaENrejJOTGhCQllkWW5zSm5zMFhSNHZsYWdGWXV0ZGFpQlBOU1hJcnFh?=
 =?utf-8?B?VmpoMnJQdkFIdmhacDlMNUUyTlVsbXhldlhnSkJIUEdrcnR4QldkNGc1MEVG?=
 =?utf-8?B?Rk5NcUltbjkzakhsYW1oWFhtQmhQV2RVejRGZkVoNW5IeW0zQmdWRXRxbDJ0?=
 =?utf-8?B?ZXJzMkNnUlZiZ3Nrd3VqNlQ5VGgweFlkR3ZOR25CT1UvK3p0WG54RFdEOGJV?=
 =?utf-8?B?NGU0NGNTY3VTbk5ianhGOFEybG5LZEVEVVdhN1dmUDNhTkVzTXdnWkNqdC9C?=
 =?utf-8?B?V05mUWNHbHNuK2szWXNxYzFkM0tEV2ppWlhaZ0VsYTdkL0I2UVV2TjZWcXZQ?=
 =?utf-8?B?OUdLVEgzTzJVWmp1ejAvblA5R0t1NDFQQ2UvSzVmMVUvS1ZYN0xwWnNlUFJZ?=
 =?utf-8?B?OWhoNVlGNDNFWmZ4WnJsa21NWUxFUmpNWVpGSE5BZ0wvcnlaOXJJclRJZEUr?=
 =?utf-8?B?L2t3YkRyT2pNaTA5aUhmUjIyWkIxSWpUbitCbDdvVzlscmJPcnJrRmZ5cnFJ?=
 =?utf-8?B?SjlNYkZIWkhaOUt4TkVnRnFkQ1QyZXY2UytaS2NLbWpjd09DQjhFWkxyblFo?=
 =?utf-8?B?ZXYvYmd4ZGI5Q0RGUHkzREV4dUN1Ui9vSi9EM0FhODk0WjYyUXNLR0VGNDBz?=
 =?utf-8?B?S2N1MmozVHpCaEFBRCtNcHVOK1hWYTdmMDFwc2pHOTR3RGU4WVlON0FiL1BE?=
 =?utf-8?B?L3ZHRDBGZHQ4OC8xRU1vRXJmdXN2Sy9SNVY5aE1hTzFaQkV5R1ZaK295a2ZM?=
 =?utf-8?B?MnE0TG82d1paSytPSzM2Qlc0cVEzT3NnMVhGR21Xdi8vVm5YelZiQ3hFT3JZ?=
 =?utf-8?B?NmtsWisxdGZCRUVjRDZFTDl1VDhXMzlFMWtWeDVLUVl3WTJaVzJPeXVOZTc1?=
 =?utf-8?B?NlVrTWJsUXJsMnIrcmk1YmZhYVVNT1ZJKzNsRFZwTlVKd0xPekh1RGF5L21r?=
 =?utf-8?Q?/v4Qxn1/2oqpM5767IogZY3Gu?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7DDE61D87976F940A2CD2E1B32DFBFFE@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB6626.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c3b5cd-2878-4351-d26c-08dc7f82dd73
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 01:58:41.7481
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kXTlFsB+WNSvstoLQVkAK640rMxTAIarbHm1JVpArIDGIOsnBRV5PT3zElUdFeMqPS8hiHPJnrqTHmquIIDjgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8792

SGksIEphc29uOg0KDQpPbiBUdWUsIDIwMjQtMDUtMjggYXQgMTU6MzMgKzAwMDAsIEphc29uLUpI
IExpbiAo5p6X552/56WlKSB3cm90ZToNCj4gSGkgQ0ssDQo+IA0KPiBPbiBUdWUsIDIwMjQtMDUt
MjggYXQgMDM6MDEgKzAwMDAsIENLIEh1ICjog6Hkv4rlhYkpIHdyb3RlOg0KPiA+IEhpLCBKYXNv
bjoNCj4gPiANCj4gPiBPbiBTdW4sIDIwMjQtMDUtMjYgYXQgMjI6NDQgKzA4MDAsIEphc29uLUpI
LkxpbiB3cm90ZToNCj4gPiA+IE9wZW4gc2VjdXJlIGNtZHFfcGt0IEFQSXMgdG8gc3VwcG9ydCBl
eGVjdXRpbmcgY29tbWFuZHMgaW4gc2VjdXJlDQo+ID4gPiB3b3JsZC4NCj4gPiA+IA0KPiA+ID4g
MS4gQWRkIGNtZHFfc2VjX3BrdF9hbGxvY19zZWNfZGF0YSgpLCBjbWRxX3NlY19wa3RfZnJlZV9z
ZWNfZGF0YSgpDQo+ID4gPiBhbmQNCj4gPiA+ICAgIGNtZHFfc2VjX3BrdF9zZXRfZGF0YSgpIHRv
IHByZXBhcmUgdGhlIHNlY19kYXRhIGluIGNtZHFfcGt0IHRoYXQNCj4gPiA+IHdpbGwNCj4gPiA+
ICAgIGJlIHJlZmVyZW5jZWQgaW4gdGhlIHNlY3VyZSB3b3JsZC4NCj4gPiA+IA0KPiA+ID4gMi4g
QWRkIGNtZHFfc2VjX2luc2VydF9iYWNrdXBfY29va2llKCkgYW5kIGNtZHFfc2VjX3BrdF93cml0
ZSgpIHRvDQo+ID4gPiAgICBnZW5lcmF0ZSBjb21tYW5kcyB0aGF0IG5lZWQgdG8gYmUgZXhlY3V0
ZWQgaW4gdGhlIHNlY3VyZSB3b3JsZC4NCj4gPiA+ICAgIEluIGNtZHFfc2VjX3BrdF93cml0ZSgp
LCB3ZSBuZWVkIHRvIHByZXBhcmUgdGhlIG1ldGFkYXRhIHRvDQo+ID4gPiBzdG9yZQ0KPiA+ID4g
ICAgYnVmZmVyIG9mZnNldCBvZiB0aGUgc2VjdXJlIGJ1ZmZlciBoYW5kbGUgYmVjYXVzZSBzZWN1
cmUgd29ybGQNCj4gPiA+IGNhbg0KPiA+ID4gICAgb25seSB0cmFuc2xhdGUgdGhlIHN0YXJ0IGFk
ZHJlc3Mgb2Ygc2VjdXJlIGJ1ZmZlciBieSBzZWN1cmUNCj4gPiA+IGhhbmRsZS4NCj4gPiA+IA0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24tSkguTGluIDxqYXNvbi1qaC5saW5AbWVkaWF0ZWsu
Y29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSHNpYW8gQ2hpZW4gU3VuZyA8c2hhd24uc3VuZ0Bt
ZWRpYXRlay5jb20+DQo+ID4gPiAtLS0NCj4gPiANCj4gPiBbc25pcF0NCj4gPiANCj4gPiA+ICsN
Cj4gPiA+ICtpbnQgY21kcV9zZWNfcGt0X3NldF9kYXRhKHN0cnVjdCBjbWRxX3BrdCAqcGt0LCBl
bnVtDQo+ID4gPiBjbWRxX3NlY19zY2VuYXJpbyBzY2VuYXJpbykNCj4gPiA+ICt7DQo+ID4gPiAr
CXN0cnVjdCBjbWRxX3NlY19kYXRhICpzZWNfZGF0YTsNCj4gPiA+ICsJaW50IHJldDsNCj4gPiA+
ICsNCj4gPiA+ICsJaWYgKCFwa3QpIHsNCj4gPiA+ICsJCXByX2VycigiaW52YWxpZCBwa3Q6JXAi
LCBwa3QpOw0KPiA+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gPiArCX0NCj4gPiA+ICsNCj4g
PiA+ICsJcmV0ID0gY21kcV9zZWNfcGt0X2FsbG9jX3NlY19kYXRhKHBrdCk7DQo+ID4gPiArCWlm
IChyZXQgPCAwKQ0KPiA+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiA+ICsNCj4gPiA+ICsJcHJfZGVi
dWcoIlslcyAlZF0gcGt0OiVwIHNlY19kYXRhOiVwIHNjZW46JXUiLA0KPiA+ID4gKwkJIF9fZnVu
Y19fLCBfX0xJTkVfXywgcGt0LCBwa3QtPnNlY19kYXRhLCBzY2VuYXJpbyk7DQo+ID4gPiArDQo+
ID4gPiArCXNlY19kYXRhID0gKHN0cnVjdCBjbWRxX3NlY19kYXRhICopcGt0LT5zZWNfZGF0YTsN
Cj4gPiA+ICsJc2VjX2RhdGEtPnNjZW5hcmlvID0gc2NlbmFyaW87DQo+ID4gPiArDQo+ID4gPiAr
CXJldHVybiAwOw0KPiA+ID4gK30NCj4gPiANCj4gPiBXaGF0IGRvZXMgY21kcV9zZWNfcGt0X3Nl
dF9kYXRhKCkgZXhhY3RseSBkbz8gSXQgc2VlbXMgdG8NCj4gPiBlbmFibGUvZGlzYWJsZSBwcm90
ZWN0aW9uIG9uIGhhcmR3YXJlIG9mIGNlcnRhaW4gcGlwZWxpbmUuDQo+ID4gSW4gZnV0dXJlLCB5
b3Ugd291bGQgdXNlIHNlY3VyZSBHQ0UgZm9yIG5vcm1hbCB2aWRlbyBhbmQgc2VjdXJlDQo+ID4g
dmlkZW8uDQo+ID4gV291bGQgeW91IGFsc28gdXNlIHNlY3VyZSBkaXNwbGF5IHBpcGVsaW5lIGZv
ciBib3RoIG5vcm1hbCB2aWRlbyBhbmQNCj4gPiBzZWN1cmUgdmlkZW8/DQo+IA0KPiBJIHRoaW5r
IEkgd29uJ3QgZG8gdGhhdC4NCj4gDQo+ID4gSWYgc28sIEkgdGhpbmsgd2UgY291bGQgZHJvcCB0
aGlzIGZ1bmN0aW9uIGJlY2F1c2UgdGhlIGhhcmR3YXJlIGlzDQo+ID4gYWx3YXlzIHByb3RlY3Rl
ZC4NCj4gPiANCj4gDQo+IEJ1dCB3ZSB3aWxsIHVzZSBFTkFCTEUgYW5kIERJU0FCTEUgc2NlbmFy
aW8gdG8gbm90aWZ5IHNlY3VyZSB3b3JsZCB0bw0KPiBlbmFibGUvZGlzYWJsZSB0aGUgcHJvdGVj
dGlvbiBvZiBzZWN1cmUgYnVmZmVyIGFuZCByZWdpc3RlciBieSBzZXR0aW5nDQo+IGxhcmIgcG9y
dCBhbmQgREFQQy4NCj4gDQo+IElmIHRoZXJlIGlzIHNlY3VyZSBtZW1vcnkgb3V0cHV0IHNjZW5h
cmlvIChXaUZpIERpc3BsYXkgc2NlbmFyaW8pIGluDQo+IHRoZSBzYW1lIGRpc3BsYXkgcGlwZWxp
bmUgYXMgbWFpbiBkaXNwbGF5IHNjZW5hcmlvLCB3ZSB3aWxsIG5lZWQgdG8gdXNlDQo+IHRoaXMg
c2NlbmFyaW8gdG8gZGlmZmVyZW50aWF0ZSB0aGVtLg0KDQpUaGlzIEFQSSBsb29rcyBubyByZWxh
dGlvbiB3aXRoIENNRFEuIEFsbCB0aGUgam9iIGlzIHRoYXQgZGlzcGxheSBjb250cm9sIGxhcmIs
IGRhcGMgdG8gdHVybiBvbi9vZmYgcHJvdGVjdGlvbi4NCkFsbCB0aGUgcHJvY2VzcyBpcyBkb25l
IGJ5IENQVSBub3QgR0NFLCByaWdodD8NCklmIHNvLCB0aGlzIEFQSSBzaG91bGQgYmUgcHJvdmlk
ZWQgYnkgZGlzcGxheSBUQSBub3QgQ01EUSBUQS4NCg0KUmVnYXJkcywNCkNLDQoNCj4gDQo+IFJl
Z2FyZHMsDQo+IEphc29uLUpILkxpbg0KPiANCj4gPiBSZWdhcmRzLA0KPiA+IENLDQo+ID4gDQo+
ID4gPiArRVhQT1JUX1NZTUJPTF9HUEwoY21kcV9zZWNfcGt0X3NldF9kYXRhKTsNCj4gPiA+ICsN
Cg==

