Return-Path: <devicetree+bounces-118902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F20A99BC4BF
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 06:37:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B12562827A4
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 05:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D751B654E;
	Tue,  5 Nov 2024 05:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="pasWWKM1";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="ot6r/VqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BB9184523;
	Tue,  5 Nov 2024 05:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730785034; cv=fail; b=XEZXWixJY524K5J3bYJnVKBknSTsfccO50VuMHabiGS4Rob++e9LoPegmzciNSAqH4mCHEedUz108IUQbb6c1yefZ0uJkrpIBtG5SStkeSJ0z/DiTxYqYIDa3+7LYp9Bh65L8g+QfjFCHHLWoKVLyKGw2qLFP5Y/nP5MMFT5zi8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730785034; c=relaxed/simple;
	bh=yxfXixA3AVJuYwB1n92fsA1SlrOOI8XmbMdtiFLzdDM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=V13Wgs9OtBxCyVIoQEDhkQyBtiD47ljEmdBUi+W2uS8tmo0Kb4VTjk8N9q5UVoyFRD8gPL9oxdRLO6eITAGkUchgJihxa5dNA/w3Mv4r0bLM+DNz1DYzPdgjkVvWGHLcLA3mcSuZnANh5E1kJ6vTIGrlpV7qskqYeSnEb2ng9SQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=pasWWKM1; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=ot6r/VqW; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: fded9f749b3711efb88477ffae1fc7a5-20241105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=yxfXixA3AVJuYwB1n92fsA1SlrOOI8XmbMdtiFLzdDM=;
	b=pasWWKM1t4RnSnYKq/6x2t9dqGNHVhhiGWsDEtBsG9XCd3Qg40HBBYKzvXjg5KTJFAj2d6zrsNa4DJZA72vyEttTnaWJHj4pUBwLThhlpgU2qFf9PvtqvuO/DGMG0AzaPB7yVkbZwbZkpfus2LNSO5UYNVeI4c5icnPcCN7qZuw=;
X-CID-CACHE: Type:Local,Time:202411051337+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.42,REQID:95302ca2-d135-4949-8d16-e85ebe51aca4,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:b0fcdc3,CLOUDID:46c88e07-7990-429c-b1a0-768435f03014,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: fded9f749b3711efb88477ffae1fc7a5-20241105
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1950139203; Tue, 05 Nov 2024 13:37:05 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 5 Nov 2024 13:37:03 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 5 Nov 2024 13:37:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yi23PQSA34DUkxS6FFtyg13SqdNhgt7GTsKZt/lJAOMYhBJ0QPa+bmvJ06SkTZBUVWjWUQJjMwAl014r+PTXIROB+R/Xtbc7M/j6W+5XRYCIQzcLUttss0o54ECdYYkz5ezKxOh0FrOauNwwo7QbDYV4VNZRVg96mNG/P3XWwqExNZ6cNidjpAUez8DlAMy0Whz4LIfrniVtyp6S4gzPqHzqJLPAO+1ecTRk/38bU6T9hGD0AJSRQ10mqSxi1DUeLv88SCC91BBImIDtU/fxdRsx5o3S2avAJgKpzoe2n36kD/ZYsoVU1yK80E1vfZvcqt8VBJyqZJNT2fmBP+krtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yxfXixA3AVJuYwB1n92fsA1SlrOOI8XmbMdtiFLzdDM=;
 b=TeCvpKX59FaUDd30JNZfDCTUNS4Agep3StEKrxVDnJncvVVOPI0hT8b1Rsm3C+VVcCYyMwO3WtI6sg142YRjvX482lNfJgAcLivPCiJ9G0Z57hRkR+oxP7fPChK/8ZOumtXADE6MCSsOG7x/fsNGG8lmUdqISDHf1g9CJ6HHqLZlB5An1j4WgK9EHJVE8/jgjlHCChW9LVQinoF1bq6kEjCtEf4D9dWomw7nUSGONgHzxQSh0mD0A5N4vrDPiiXHtWvwR5GJIkdtCh6R++THqSuUpudQw0OgoNT7PWl7COHCARe0IJISLMOBr+8327bzDmgkJMHjo0K2SuEDWaa51Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxfXixA3AVJuYwB1n92fsA1SlrOOI8XmbMdtiFLzdDM=;
 b=ot6r/VqWR8hWpwYOisVtdVP3+dRkiQGqPDJMfvK1+hnFxOEzfyJaRVFOEya6lqf/sFYmBltZbsTuAokBoPYCSklqN9giZkdsjK5Wxp7JS0Tx+PmoF+wVtiujDUmzMDAa55J7nf+znJJUwaCAxo5IBUBv+7dJnkRm3yNZ15d+7sU=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SEZPR03MB8607.apcprd03.prod.outlook.com (2603:1096:101:237::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Tue, 5 Nov
 2024 05:36:58 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%7]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 05:36:57 +0000
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
Subject: Re: [PATCH v1 10/10] uapi: linux: add mediatek isp_7x camsys user api
Thread-Topic: [PATCH v1 10/10] uapi: linux: add mediatek isp_7x camsys user
 api
Thread-Index: AQHbGj2oNs0v9TyLkkuXYBAr3amqdLKoVPgA
Date: Tue, 5 Nov 2024 05:36:57 +0000
Message-ID: <a7a4eb3c17b5cb33bc22cafb055525a5b76e2ba1.camel@mediatek.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
	 <20241009111551.27052-11-Shu-hsiang.Yang@mediatek.com>
In-Reply-To: <20241009111551.27052-11-Shu-hsiang.Yang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SEZPR03MB8607:EE_
x-ms-office365-filtering-correlation-id: 73f1da41-f52e-4631-236e-08dcfd5bdd2a
x-ld-processed: a7687ede-7a6b-4ef6-bace-642f677fbe31,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?enRGRUNYVXdBRllLUVFIM0E1UlJ1RkxPcmorYjlNd0E3ais3UCtSeTVIa2RF?=
 =?utf-8?B?OGhSRDdpc2xWSXRnZjBFYVdiTi9RK1lXelA4Yzl3enJvVDhiek94NlJFZW1Y?=
 =?utf-8?B?bVNFU0czazl1M3Rnc1FseGV2bGpFMlJzK0k4cHJPYTdJZHdVRGljSHAzSHoz?=
 =?utf-8?B?TFNQY01ETTJhWWRGb3Z1dyt1Wjl0TnhoTEJ1MlY5MkcyZlZoYnJTTXlIWVQ1?=
 =?utf-8?B?ei9aRWVEdy9FWHRNcDBlZTJib2JlL2dOMlk5Z1V4ZE5ueS85TVdSTW8ralJp?=
 =?utf-8?B?QnVrT2p4akh5dGNwSXVuNUpYOGI4NUpHbnFza28rVDByeDBlU2xmTzhwSnpx?=
 =?utf-8?B?S1BycWRCbGJBSFFGRkhUVkRiNEsyQWxudEhwWjdFM2lqSHQzeWY3dnY1dU1q?=
 =?utf-8?B?SGVLMncydS94VllNZzlaYWFJY3BxYU9FNWZ4SkVpSlpWNEljd3FobHZ6Y05n?=
 =?utf-8?B?YlhRaFdkVjJXOFJnZlBlNWV0Y25zS3MrLzRVYVBaTXBsM05JRlRobEtFMFNt?=
 =?utf-8?B?UXdkemRhNHI5TjFrT0dXQWhrYmk4dzVPWWRPdjE1eUlnMXU5WjUwV3Z1WVNM?=
 =?utf-8?B?KzhpeUNzMEZFMFo4YXhpUDBBYWtqQngzLytxNkJIWEUrd1VlVlFOZ3IwWnFG?=
 =?utf-8?B?YWdOS083UFQ0eWJZMUZYbUJIRHNuSk1ITCtjWGpiZkRJaDRwRFNnemIyMkp0?=
 =?utf-8?B?YVhyS2xrK1k0cCtyK1pnZFJCUkp5WUE2L0RkenU0NXdrNk1mUzBFQ2lqT2g0?=
 =?utf-8?B?dkQ3NG1wbEhrb3NtVXByb1F3d3U1cldtMEZmQ3ZjS1RXd2VGK0FWTjRUUlMr?=
 =?utf-8?B?cFFYa2c2a01NK25tVWVqbzlPNFVqT0VmYmdsNUV3U05jcWoydy9tQ05vNW1a?=
 =?utf-8?B?UzcwcERrNkFNRzhjV3E0MmpPQmdrdWdzQ3BqWTllSFNxTFdoOHI1bEM2WlNw?=
 =?utf-8?B?REFmbCtOWlhVLy9ETXpEekZrTm1PVklzY2VwaVB5WGpVQ3ZSdEZNcDd1bGky?=
 =?utf-8?B?KzNMaS9YSUlWeVR3cmN6QUxwcVdQU041Mit5ajZHNG5GdXNHaVBSNDB6K2ZY?=
 =?utf-8?B?Uzlud2ZURVM4VTVEQUQzSGRtclN4OTRMM2Uyb0tHd3pPVzYyeHVONVNna2Zw?=
 =?utf-8?B?TnJqaEd6VXg1T0tCb1VCYUZLOHdmcDRDTWZUNjNRRkVuU2RjNzBIMTRpZWsr?=
 =?utf-8?B?bVdyS3VhQVBpczJ6RlBHS1gvZEF2dG9qVnhIQjk4UXhwY3N4dnZJL3R3S0l2?=
 =?utf-8?B?V1dkR1Vwb0JOU0JZZnlrcFowc2JqdDFrZzErOTZaaWtKekpmRm9SNE5NL2U1?=
 =?utf-8?B?R3B2TmFNNzM0ZDZsRHVDUkptelNzUUl4OHZNUTlNR1NzbWYvRlprZDMvclpY?=
 =?utf-8?B?MDNBRGNIYmRlNitMNWhXWjI2ejdkYk9odEFDTGtWcUdLemppSDJhMlE2TGNN?=
 =?utf-8?B?RlNSVzhYRkxGdlZPT21PSkRlNE1kN3RuZFR2aWdBZkRNdS9FV3ZBS2czOFdt?=
 =?utf-8?B?YzdwZERSZXc0aEkwQVNvRllvSUVIdGk4K0xzdUZ5M0FRMExjVWdudzZJTWRv?=
 =?utf-8?B?ekF6TEZXRGFJamN2emtic2hWcjBFcktZOGlHQlg0RmptbmJKNGFwNDhlUERD?=
 =?utf-8?B?WG9pYkEwRlBtcTlqcnIrblpQTzlzc1l2VHZNWHF0T3NDcVhEVmR5NXhydzg3?=
 =?utf-8?B?SlNrb1ZWaW1vM3RGQjJKTmFIMmF4bExraVpaZTJuaDc4V2x3VGFMNzRUQVR3?=
 =?utf-8?B?RkJlSGtyemwrZDFkMkFFZWpCMkRTQ2V3WXFLQjhHUWVFYlFObHl0UkNORThB?=
 =?utf-8?Q?Z6k3pkWqKWticgb0hMNQ72l3HoJp7Cd6kFTkc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEZGZzBOZVg3NDd3eXpDeGRGWnhudXlSQjRCbGRLZHNlZkVwZThUcElSWXRv?=
 =?utf-8?B?dXV3Mi9rVXFURWRuQ0NmcDYyWmViWXhKYnVWSTM0blVMd2xCdjNLd2JQNUtt?=
 =?utf-8?B?SHJTT2tWSmNtdXBmbFZDT3dnK2t1emVxVDFkdklvMHg5ZXVMTEdDTTNGbDIz?=
 =?utf-8?B?VVZqRktPU2hDL1NYNDRnbjhRTFMvekJ6bDFNMytCUlk5UVJEQUtDbVo3N2p3?=
 =?utf-8?B?SUVCM2hZUS8wUjR1K0hLS2VUaFFIdS9ydnVSVkJRTlJaMTl2dUZUQ2hmbDlR?=
 =?utf-8?B?MEQySDRVaG05TU94ZWRUaHZUM0hWbWV2Vll1UDY5ckFQS1lTWE5Remx1QmtX?=
 =?utf-8?B?REtrZVM0R3Ixcm9zTEhwZmFlMmowMjN3QkVXQTczZXpjM09ndU5Rd2VIK3Jw?=
 =?utf-8?B?YmFtd2JqVnhoeUxFMWE2czUwTTFCVG1Ebzd2Ync5bHV5Z0JndFBCSkxUTUhH?=
 =?utf-8?B?VVl6YW94RjBlYmFOd3JRKzBLd1ZRcnU3a1p6dTMzNld4RlN1M0xvZGdkUEx6?=
 =?utf-8?B?Q2FBSFpUSzhqQTZUemd5L1gyR3o0NEJoK1dIVkpweXBZbmp6TForTzFtRG5v?=
 =?utf-8?B?TGttS3hVdTVNY292ZHVreHNWcUZucTErNVFnUkxGVTlTbzJzUTVocFFpWUZk?=
 =?utf-8?B?NWozdHU3NVNoWXZxTU5wQ3Q4SERoTUl5NHFxS2t6UFU5Z3FGVmJ4QmJwVDlp?=
 =?utf-8?B?YSswWUFvZjdXaHpDUnBPVjYyYmIyWlRGYXAzbGU5Wi9jYWlCUTgxeE5lLzcr?=
 =?utf-8?B?WVM0Q3g1aG80bkltb1R2U0liZUgySHlWK3paTEhuT2tPeUdNMTFFYUZzL2Er?=
 =?utf-8?B?bDQxSGZSamhtVUtRazB2VlVEVmlPc3l2QnVtNnc4MExrNWJIVTdUWVhBTVA3?=
 =?utf-8?B?VENPbGpoNU92Z2ZxaGhMN09hYjN4VmhRVFpwQXFoVFoyd1UvMklJMlRiS1ds?=
 =?utf-8?B?VmN6bVlrN2J0QmQxOEE2MmtjSG9QVnJWa0FBazVaSHNXc0paODVWT2s1Tk5K?=
 =?utf-8?B?ZW9sWWdMRCtwNU5VUkpKcHd2L3p3TG4zMStTemxaMng1NVJuRkxMZjJUNlA1?=
 =?utf-8?B?SWdneVpaVnduVnpySGI1bFhVaWh2VklqUXdBUDdhUkM0OUVMampUNDVFbWdM?=
 =?utf-8?B?dll6RlJSbTV4WVd4Q3hXQ1Rmbi9jN0FiSmVBNFNGT050OGNqUTdsWGNBVkt0?=
 =?utf-8?B?SWxBVjMrSlBQcmY0UnVta0lvSTJHS1lpaFdXeDExWnJKZ2l1K0dmeUw2ZHBN?=
 =?utf-8?B?Q3lSZkdpTlNHRk96amZIYUlndkNqTXVBME5ncTZUeC9QajlMNjhpZ1lXRHhU?=
 =?utf-8?B?RFBEbkxvaGgvb3B6THJJS1hXWkNhcEsxa29DOXFRcUxUY0haNFIwU215M3VZ?=
 =?utf-8?B?TnlGTGR3T0dwZ0NEQ1NKVVRQREV2NkFqWWltclRGNkpyd21mLzhhM0F1d3c4?=
 =?utf-8?B?a3lOdzdHODdnaW53TGtyd2ZzcHY0YkVUNjZPL0JpREx1N0VLb20zMk42OFJH?=
 =?utf-8?B?T1BRRGxxVnVtaUtiZTJCTDdNb1dPL1pieEg3NG9MWC8vazc0NDhyWGl6RDFE?=
 =?utf-8?B?ajAxaldsN2tJeFpzQTVNRlF2TWQxeFdaV2gxVVlOTC9YcWRVemVrOVJUZjZ3?=
 =?utf-8?B?TXE3R3JZYW82cnNNcVhCTXE5cWQxUGRDQzlVbWQ3eFUrWk5xamZ1Yk9pczJz?=
 =?utf-8?B?SDE0NlZaTTJSTDJsQ0NoTldDQmhtTzdHSnQ3NTNLKzljejBURlBuZUp0S09u?=
 =?utf-8?B?V3lHb1RzeGYrK2w1UVo3L05jRTRFSk82QVova09SSzdoQmJQVVk5WHlTM091?=
 =?utf-8?B?RVJ5MXRJMlJyZnlPN2p3MWxZbTlyQkRmanJZcVAyQVp3SG5oZTc0TEprRHZl?=
 =?utf-8?B?U3FaaEttT2RkZWpjNjNjVTl0Ulp3QWNBYkNjNmpKb2YxY2UrWUEydzg0UVFs?=
 =?utf-8?B?NVozNlc1VHZ3UUNDR0hrdFNtSnFFdnhrR2JqckoxSVZoMFhyN2xHMGlraERT?=
 =?utf-8?B?enJpb1llUWEwZGVTbGMzMGJHakRBR2Z3ZG5hZk5MekhKbUtWWGtNUG5YMThU?=
 =?utf-8?B?bjlRSVB3VjZlYmVDdVdqa2xMK042bEFjUGdIUGFBV0hNUHN0MEtDVWFzUDQ2?=
 =?utf-8?B?MFQ3Qk5Lb0l0eGt0Z1gyWm0vMTdpeVRvdDdNQjFBNllrcXp1TGh6MVFLbkM3?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B90C74AA2F2454BB52DEAC981F7F676@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f1da41-f52e-4631-236e-08dcfd5bdd2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 05:36:57.3676
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IXi4A5FloH73jT3tmxWK80tNu9OTqzi0PGmSaMRoV6Fc644a+zOQoZkUfO18sND68Bcd5S5ZVTYWuGMvoUoa7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8607
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--5.206200-8.000000
X-TMASE-MatchedRID: +c13yJDs901m6oeM5+OJFCaix8JZpk78jLOy13Cgb4+qvcIF1TcLYJgC
	Mlq+sZ+fP4UK2jG+TwGJBh7KINf2n8Ydp1pG4A6/XbTfocfAWb8hBdUXaqx1XRL6MU7t349bmNl
	88RUWUfM4ChKQuPV0InATsg8MODVIQv21zJNl0CyDGx/OQ1GV8mrz/G/ZSbVq+gtHj7OwNO2J8Y
	JgRrgXF3/EFifdYq2hLNYuNb10a0GCUSLl1jw5UvL85gVxFfDs
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.206200-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	BE6323697F4EB6AC9E4D06FBC10E4A1080EB4FFBB5AFE73BFA71D2C566F3887B2000:8

SGksIFNodS1oc2lhbmc6DQoNCk9uIFdlZCwgMjAyNC0xMC0wOSBhdCAxOToxNSArMDgwMCwgU2h1
LWhzaWFuZyBZYW5nIHdyb3RlOg0KPiBBZGQgVUFQSSBmb3IgTWVkaWFUZWsgSVNQIHBsYXRmb3Jt
LCBwcm92aWRpbmcgdXNlci1zcGFjZQ0KPiBpbnRlcmZhY2VzIGZvciB0aGUgbmV3IGNhbXN5cyBk
cml2ZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTaHUtaHNpYW5nIFlhbmcgPFNodS1oc2lhbmcu
WWFuZ0BtZWRpYXRlay5jb20+DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArI2RlZmluZSBWNEwyX0NJ
RF9NVEtfQ0FNX1JBV19QQVRIX1NFTEVDVAkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAx
NCkNCj4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9IU0ZfRU4JCQkoVjRMMl9DSURfVVNFUl9N
VEtfQ0FNX0JBU0UgKyAxNSkNCj4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9QREVfSU5GTwkJ
KFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMTYpDQo+ICsjZGVmaW5lIFY0TDJfQ0lEX01U
S19DQU1fTVNUUkVBTV9FWFBPU1VSRQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAxNykN
Cg0KVjRMMl9DSURfTVRLX0NBTV9NU1RSRUFNX0VYUE9TVVJFIGlzIHVzZWxlc3MsIHNvIGRyb3Ag
aXQuDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUkFXX1JF
U09VUkNFX0NBTEMJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMTgpDQo+ICsjZGVmaW5l
IFY0TDJfQ0lEX01US19DQU1fVEdfRkxBU0hfQ0ZHCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JB
U0UgKyAxOSkNCj4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9SQVdfUkVTT1VSQ0VfVVBEQVRF
CShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDIwKQ0KPiArI2RlZmluZSBWNEwyX0NJRF9N
VEtfQ0FNX0NBTVNZU19IV19NT0RFCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAyMSkN
Cj4gDQo=

