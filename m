Return-Path: <devicetree+bounces-91924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A6394B5A1
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 05:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54DA41F22221
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 03:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27034433A9;
	Thu,  8 Aug 2024 03:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Z250Rbch";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="bnQlmJ9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CB065C;
	Thu,  8 Aug 2024 03:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=210.61.82.184
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723088943; cv=fail; b=aXQqkxI7Ci1DsMy8slAUEO+gztrnABwFZtJBD0ROdTPBjbcK4LUfKUjOGsTgM3bQk4jx09saAiujKfpejqwihk7htTPl/X70HxWBPw0mMEuLDntL9Yhod1umL+gUg+Ru9SWzB/sMXAquI4ClDQ9PHvRKUfUVR7ysi4D0QnlL1pM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723088943; c=relaxed/simple;
	bh=M53WRBlKnqNNWdekvYV91yg2NVBQOQerIfGCRAP+txk=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=LuBEbGSxZ2cZbN11ejwBH3b7f2Wqk++tQxJSeRBq/J1iZPFuUWcSlTlglOT/LNer4aPau/FViu9oTzdVIahQPZgHGYRo/ntMXv/4iF3nMw/AMFC/zV2kHdJG1JDXtxW7VydJ+WCZ1laJjyJJXFQu1kk/6Do33W+EWKhmpWDI+Hg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Z250Rbch; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=bnQlmJ9V; arc=fail smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 21360434553911ef87684b57767b52b1-20240808
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=M53WRBlKnqNNWdekvYV91yg2NVBQOQerIfGCRAP+txk=;
	b=Z250RbchKkM/WIH7kWoVNNh2VQbm9tvPeO3LWI/73tiEu51HtqwDU5T1yo+y6crmh8ikMZ/enhvCByznra4HICbdAWJbb0nh+THM20QSIePgeziX8Yi1Z149dSxlK4hGZMG0D/Kq3TTnAI1gH5hlgv8vylojwWqfKdOZulbnArk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:824d26cb-ac08-48cf-91f7-8d6da1c73f0e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:2f5e4ffe-77bb-433c-b174-ffb8012693b0,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 21360434553911ef87684b57767b52b1-20240808
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1621286945; Thu, 08 Aug 2024 11:48:53 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 8 Aug 2024 11:48:52 +0800
Received: from HK2PR02CU002.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 8 Aug 2024 11:48:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xtyChkMPfhlxNhsfRFsos9vLlukp/jFCpwjIRGXNa6CQ6LLOrFhRIm4TSNKBP2BpnLUnFFXxVrVQfBN7U+whM1BMFn7TfIXq/6iAqxLq1HLU8fDsPtBb7SgL9ea1YcjbTkv1v6/ZxHm1lPK4w8qo8/N0YUAM+hYVbAbdoHqQxqAjyy5hbuODcWGwJOYyzo55zRGENneVJPX3skVfGKdRmixTBaZG3hDYsvI5pVJVcLcK5P/mnHJTNVwYTqnd2FjBqJj9Dsf0oXHeEp1YnseUxDcelw6pyuThOga4DlVdol5RiwwSiTuTJD+mCbQxByvJFf3sm+h05MnEuAJ22ytKYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M53WRBlKnqNNWdekvYV91yg2NVBQOQerIfGCRAP+txk=;
 b=AmOdzqZWjcwLvLoYwKDL/VLRwDhhnjb7g9EV2BUhHhu8MbU4QaAv/OHa33c2WS2zdbR3jbDjYoKMdakCw7/lpS9ng9TIOkKTT5fYDDKxSw2Vy1DFdaEiHYdMCfLEvHw4zrW3ol379rQTx83NgEZemx5FAahoV2wDShyXZzsWlPYcrm/vTgNcmCwOsi/fNeVK8546gcm3drEm9jlnDZDWudjnwqu29JwafJ94JNVG27hbysl09fJCELbfUCgurPu/nIgjfLyAA5Eu1Rt76iZbHdz0zAJNO2XbNDo6p/lvQwp8YAV92utoaiYcJ88rWeBzYVL8+fZvzf8zfIHX8kKgiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M53WRBlKnqNNWdekvYV91yg2NVBQOQerIfGCRAP+txk=;
 b=bnQlmJ9VT8A4fFQ1/DEyyAyaamqYAwiBtxUzr9G4eID3xcA0v0qTGsiieQAjAUuaaxohYhQVeUgQrWkynq4phCJ/AUdv5K1SO9F8PduNFL873UH9XaXatkemMEvPkyd0LMieyV9ushta5NzawhERT1Gzz3IhRMWXAElcQ+kEdUo=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by TYZPR03MB6791.apcprd03.prod.outlook.com (2603:1096:400:200::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.14; Thu, 8 Aug
 2024 03:48:47 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9ce6:1e85:c4a7:2a54%4]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 03:48:47 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"sui.jingfeng@linux.dev" <sui.jingfeng@linux.dev>, "wenst@chromium.org"
	<wenst@chromium.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	=?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>,
	"mripard@kernel.org" <mripard@kernel.org>,
	=?utf-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
	"michael@walle.cc" <michael@walle.cc>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "robh@kernel.org" <robh@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"airlied@gmail.com" <airlied@gmail.com>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "kernel@collabora.com"
	<kernel@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "amergnat@baylibre.com"
	<amergnat@baylibre.com>
Subject: Re: [PATCH v8 3/3] drm/mediatek: Implement OF graphs support for
 display paths
Thread-Topic: [PATCH v8 3/3] drm/mediatek: Implement OF graphs support for
 display paths
Thread-Index: AQHawWj9PrZQbQAJckOmv3T/BRX+MLIdCOsA
Date: Thu, 8 Aug 2024 03:48:47 +0000
Message-ID: <1e1b0ff224dfa99041b54408c16633d5885efda9.camel@mediatek.com>
References: <20240618101726.110416-1-angelogioacchino.delregno@collabora.com>
	 <20240618101726.110416-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240618101726.110416-4-angelogioacchino.delregno@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|TYZPR03MB6791:EE_
x-ms-office365-filtering-correlation-id: 5fe6ab46-4541-4515-c223-08dcb75d01f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aXY0Tm01b0FNVUJxMGx5NEZyT0E2Z00wdlhRTm84N3ZHVkM4OFlzajc0Mmpj?=
 =?utf-8?B?U0VHMlJnd2RTb1lXTFJaengyRWtFRWl4ZzBkS0pvTTlOWkl1c0hmaHNGalM1?=
 =?utf-8?B?aGhZY282djlDLy9tVkpicDc4V2xocGpxT3M2cUtzNGhEYVlsTXhxTklrTEk2?=
 =?utf-8?B?YmtvNkdaVjFjUnkyVVIxRk1hZlJuUUdaci9rUW1tUlNvbG9hNW8zQm44MjZ4?=
 =?utf-8?B?WjFsQlFxRWZHYi9SMTgvbnRad1d2T2JvTkZvdVJUZ0dZYlpmbk9BeGxrRHZZ?=
 =?utf-8?B?U2JLeWRvdHVBT01tNFhUdnRVRGMrZURQSVpiL2JaenFUR3RjNzJBd2hhU3M2?=
 =?utf-8?B?Y1pidHMrWUJId3RyS25CQzNZUVZZeGpoZGxLckh3MlplQ3N2RTRnZktKWGls?=
 =?utf-8?B?VDMzNHFwTTNhOVVGMHVhRnJpWkkyU1VLc0NKN0pVdWRVQUNUK1c2bFZpUjFv?=
 =?utf-8?B?TmFzcUU1djRzdlE1RU1qcWJpTVFveDFtbFo2NDVpTlpCWE9GNHJ5ZXBFRE15?=
 =?utf-8?B?TEpTa1lrSFJwZGtqMnZDRU9pNlIzT2twbE13UFZGdWRNNGJLR29LZVBRVXpj?=
 =?utf-8?B?RUJzMFN5aTZoQ0tYSmtJU1lQQUYwa2I4RHN0cU9VN0xrVjJIWUpHR1Rod09x?=
 =?utf-8?B?eXc4SGJyc0liT0htR1pSQmtvaERwbjIvZmlKMW1KcDRpdjNIR3lKQlRiYVph?=
 =?utf-8?B?K3JDRFlVVVlnWXB2alRUbDc5b2s3WWRWekREamlyaHlyQU5Ba3c4Zklqc3JM?=
 =?utf-8?B?eWJhZUZkd2VwK1VsUGo5cC9BT05rT2J1RTBsQWlyWk02dGxYRkU1dVg2Y2Jp?=
 =?utf-8?B?bnlYUlBqaGZWN2hKOHowcGtVNVV1TWZxM0Fta0sxTzlGbXlEU2JJM2lxQTA1?=
 =?utf-8?B?MlZDYW5SVmk1ZHhoYlM1QUJvVjhMQ3lnRHB6Z0xEQ3J0MVFzUFFkMXhLeFNN?=
 =?utf-8?B?TWUySUtpeVI1bVRWV29KSTNJS0NCVDlMN29vL0VXWk1XWWlrNEF6VmUzL1po?=
 =?utf-8?B?MmRpS3ByWTEwbDBPck1WK0p4dGo2a2YyQjFTekpDa3ZDdDNkTTNiUGRmRUx0?=
 =?utf-8?B?WEJBK1dvMG84SktxRDM3UHN1V3JyZGtiNDFKSkZkUFJETGdsQ2dWTEpOeUhE?=
 =?utf-8?B?NWhRK0xxN2hqalkyTjQzUzRZOWdiN1dRYlZPVFNvVDlGRzZwdGdYVkI0Z1Q4?=
 =?utf-8?B?dklIQ3hMZEpQWE9udmQ1VHBnWjlDZUVKVC80MVhnVnFmUnlhSGY3L1BWMDZy?=
 =?utf-8?B?QThDM0g3eTAyaEg1OXVhVUplazNVYkk5bmJ3N1dhVWpncWRLMzFVMzVWaGhO?=
 =?utf-8?B?L2JUeVJiRzIrYW15V29OekY4WnBJc3VZS0dLWHVOaTRwakpjRXVmSkdMR0Y0?=
 =?utf-8?B?Wi96VUlndVJ4QXQ5VWI0Y0hqcjBRcTZqaFU3SmVSR3V2b3ZjUWJObzBDK2s5?=
 =?utf-8?B?bGZ6L2RZMnI2KzBvejRqa3FiY2Q2aHoyYmdNTnJrWi92SHQrNFcrREZSS01W?=
 =?utf-8?B?ellPcmZNMnJuSHVaOXlVd29BektVQ21aNmszYnVCMkpDRkNuNVRNendtNlFG?=
 =?utf-8?B?N2x5aFJnZE15Wm5JZUNMcXlQbVNQQk5ZZkFidkF3M0VKYnc5UlQzK0c5SnQ4?=
 =?utf-8?B?R1VOaFl4SjJMODJqM3c2WW4xTnBtZkJVN1lMQ3NUa1JPQzhIQm1XMDliRTdG?=
 =?utf-8?B?QkxOdDNoUkRhUVV1dlA4Qk5IdUdrNnZ6eWtNM2FZOEVUeFVHanVYdkdWcEgw?=
 =?utf-8?B?MzFDWW5rekgxNWtETXhmYUtoU1I5T3VuNVQyU0FYYXl2MkhlU3JZdHlrZzNv?=
 =?utf-8?B?R1dmTlFrc0hnZXZmOGNvVisrckxYRUpuV0oraFRyY2R3Qk8zL00yT0MzNWls?=
 =?utf-8?B?ZndiV1RqbWEyRTFTY0xubXlKSldSenZnTXFhVVlnZ3c0MWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckM1YVFSRVoyR084T2l5RG5wNlhxT241SDVlQ3p0RzVlVUVkQ2UxNGJ3aUdx?=
 =?utf-8?B?ek9jd25YZk82VWxvRmFUSXQ3V3RKSmVaYlNGWFRSYk5MMXc3UnZzUHZqNTQ2?=
 =?utf-8?B?S29rS25iRXNLRi9jYUpiaXREcTUrZDJDRmVpVlJoUW9yemQxcEcraDUvcFBD?=
 =?utf-8?B?OURBZDV1T0FiRVFrS29hbUlsZGg4aW5oTXZ4MTZDMHY1c1RIUFVSdDlNNlBk?=
 =?utf-8?B?U2lxZEN6NnVzWnhTRFRPdndBNFZIVi9VeUxZeWN6UmVzMmFuVXlINVhQTEFI?=
 =?utf-8?B?RmxWSGVBalptRFA5ZnQrLzBNYUdPRTN0UVRIOFRaZ3RydFZjbWhUcUk2SEZU?=
 =?utf-8?B?R2VRQ09hNmE3elNRVVMxT2lTTGtXQkUvSmlqL1hSQkVhTE1NUSs3c3FObXN2?=
 =?utf-8?B?N2M0cjFqc3ZoZ2hPSDVnK0FXQmRldVc4allGZnkyTWhrVE1mbzBmQVNpQi8w?=
 =?utf-8?B?cGJxaHgzOThSdlp5SnRiVGxtZFMyc2tvSzVGT3dic0FnZWMwNlNYSjhTdjN3?=
 =?utf-8?B?Nk82d3p1Mk4yaHJQTi9ZNjViSWxpMU9NZXNtTzMwN0M2WG1EMTdRbVAyVFRN?=
 =?utf-8?B?dHFSZkF6eDhKOVlYTXRKWHd5RDM0MnVEY3pYbUxQUkZUL054WVJnRnJzUEsw?=
 =?utf-8?B?Y09XTUhnbFJWM0J5ZWNQSjMrOWxHR205NTZCQmkyVjBzU2RjYmFtR2pUdDBN?=
 =?utf-8?B?dEN6eFhnQnNzM1lDcXNJZjdiVloyRGR0WkQwcldQcE9PTDhDRm5velpYNXBr?=
 =?utf-8?B?SWdXdzVuVWc1N3RZUzJEMjVYU3BQN0NtZVd1YURqUHA1NDMyazFtbDdMN25j?=
 =?utf-8?B?OUJGRDAydnBjQnAzdFRhS2gyYnY3RmkvQTBMY3hGeXJ1OGxSdkpFRS9TVURF?=
 =?utf-8?B?REtsZkxBcEpTUkladEFVbi9SVE83c29Gcm43NGxiWlRieWM2clZwVTIyZDlL?=
 =?utf-8?B?OXMrL3k1dnVZQlVwVk43bktmTU9FZTAyTmdVNmJneklwWGFhVnRmTHcram5a?=
 =?utf-8?B?QmN5YURnSUZjTG9pZnU2bytuczRQckROZDRFNUE0aGxxbHNCQlBNRjM1UUNy?=
 =?utf-8?B?TEVadTBLb2FLbG5OZHJiT0U3dGwrL05pd0NmUExxbWdQYndWSTJuMHJSNktK?=
 =?utf-8?B?WVhiZTR0YlEyZDltYUFBdFZFTnE2Q3UyQ1ZCOFpZVG55V095RHRobkRtMHhX?=
 =?utf-8?B?OEVtOE41TGJKLzhURDM5RnpPWEZXY2EyNmk0Y3Y3dk9aQkNlTUVFb3VsN2Qw?=
 =?utf-8?B?MlFGZlRsM2hJanV1YUFaKzh6SFNqUGhXaE5UNHFJNjI5Y3NQTmVCL0hJK21R?=
 =?utf-8?B?c1NxUXF1aWt2TXY0eTlOSUtjb3p3dUV6OU03WHJqaW5WaE9zWlhvNERWSkVD?=
 =?utf-8?B?YzUwNGtkT2htc1o1V0JqYStnc1JMWFpLcTJXNDZySGFjUnY4MTB4RkNralZY?=
 =?utf-8?B?QUNYVkNhbEtmUTNuem1wSFVmbk5CbWxHOVl1aTB4Z01ZWU13T2xIdzhlc1Ju?=
 =?utf-8?B?eHRSU1pzZC8rRVA4bkRTWm5BUi9vc04vQU44RCtzcG0rTHhXSGx2Sy8wd3FE?=
 =?utf-8?B?cnlwNmkyclVWYlBoSWNyVExPY3NPNVJVeHozbmxrTXlFbUxTZXFXOUd6UHhq?=
 =?utf-8?B?NzlzTkhIc3JzUjFZN1Frc3VyelA5K2dVS2U4TWw2VWt5UERUZ2RFUVk0ZXph?=
 =?utf-8?B?aHkzTGFUWitIUGdaT0NaWG9HQUNRYlgzNTl5dUZCbWFSVy9oMDgraFBBNTZk?=
 =?utf-8?B?WFQ5L0RsZVY0aEpPWXB0S3czSHBPZ0RIZlJlQ2ljbS9VUXYyMEhvaDQ3SHRu?=
 =?utf-8?B?cXBtbDNNN0tlZkpjelNJb3BvQkVJYnpuWEpJdnk5QUs0NWpLMTBBdkU4cDBs?=
 =?utf-8?B?a1A3eFFNM25MTDlWekNBa0s3NERTcnMySVR4Q3VjV010TWg0UzUwRnVJaXF1?=
 =?utf-8?B?ZVQ4TWN0R1YxV294eUxqbjJCaDF2NnlVYldMK3JHaXU1NEg5RFdLWnk5OExQ?=
 =?utf-8?B?RURMbEVSbFFHYVFtNzdsRXVLZTYvTEYvUDkwS29iaU9ZZGRWbGw0dkJoU0tI?=
 =?utf-8?B?bytKZ2oxM2JxaUVDZ0RjZmN1K3VSekhmTTYrYlB0b25DMWppUUx0d2hvZzZG?=
 =?utf-8?Q?sqiPMl6OQpbQPt6LMkICdwKc+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2EDF35EB446CCC479A41F781AEE242E8@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe6ab46-4541-4515-c223-08dcb75d01f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2024 03:48:47.2260
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUV4PmcT1HWi9QmH4Ymc9sMOglHN3Df/xzSIcH1RB8rtrT/GXe4thT1/2ATnFG5ey8G0hBU6IDJ+cHNa7NOgJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB6791

SGksIEFuZ2VsbzoNCg0KT24gVHVlLCAyMDI0LTA2LTE4IGF0IDEyOjE3ICswMjAwLCBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gSXQgaXMgaW1wb3NzaWJsZSB0byBhZGQgZWFj
aCBhbmQgZXZlcnkgcG9zc2libGUgRERQIHBhdGggY29tYmluYXRpb24NCj4gZm9yIGVhY2ggYW5k
IGV2ZXJ5IHBvc3NpYmxlIGNvbWJpbmF0aW9uIG9mIFNvQyBhbmQgYm9hcmQ6IHJpZ2h0IG5vdywN
Cj4gdGhpcyBkcml2ZXIgaGFyZGNvZGVzIGNvbmZpZ3VyYXRpb24gZm9yIDEwIFNvQ3MgYW5kIHRo
aXMgaXMgZ29pbmcgdG8NCj4gZ3JvdyBsYXJnZXIgYW5kIGxhcmdlciwgYW5kIHdpdGggbmV3IGhh
Y2tzIGxpa2UgdGhlIGludHJvZHVjdGlvbiBvZg0KPiBtdGtfZHJtX3JvdXRlIHdoaWNoIGlzIGFu
eXdheSBub3QgZW5vdWdoIGZvciBhbGwgZmluYWwgcm91dGVzIGFzIHRoZQ0KPiBEU0kgY2Fubm90
IGJlIGNvbm5lY3RlZCB0byBNRVJHRSBpZiBpdCdzIG5vdCBhIGR1YWwtRFNJLCBvciBlbmFibGlu
Zw0KPiBEU0MgcHJldmVudGl2ZWx5IGRvZXNuJ3Qgd29yayBpZiB0aGUgZGlzcGxheSBkb2Vzbid0
IHN1cHBvcnQgaXQsIG9yDQo+IG90aGVycy4NCj4gDQo+IFNpbmNlIHByYWN0aWNhbGx5IGFsbCBk
aXNwbGF5IElQcyBpbiBNZWRpYVRlayBTb0NzIHN1cHBvcnQgYmVpbmcNCj4gaW50ZXJjb25uZWN0
ZWQgd2l0aCBkaWZmZXJlbnQgaW5zdGFuY2VzIG9mIG90aGVyLCBvciB0aGUgc2FtZSwgSVBzDQo+
IG9yIHdpdGggZGlmZmVyZW50IElQcyBhbmQgaW4gZGlmZmVyZW50IGNvbWJpbmF0aW9ucywgdGhl
IGZpbmFsIEREUA0KPiBwaXBlbGluZSBpcyBlZmZlY3RpdmVseSBhIGJvYXJkIHNwZWNpZmljIGNv
bmZpZ3VyYXRpb24uDQo+IA0KPiBJbXBsZW1lbnQgT0YgZ3JhcGhzIHN1cHBvcnQgdG8gdGhlIG1l
ZGlhdGVrLWRybSBkcml2ZXJzLCBhbGxvd2luZyB0bw0KPiBzdG9wIGhhcmRjb2RpbmcgdGhlIHBh
dGhzLCBhbmQgcHJldmVudGluZyB0aGlzIGRyaXZlciB0byBnZXQgYSBodWdlDQo+IGFtb3VudCBv
ZiBhcnJheXMgZm9yIGVhY2ggYm9hcmQgYW5kIFNvQyBjb21iaW5hdGlvbiwgYWxzbyBwYXZpbmcg
dGhlDQo+IHdheSB0byBzaGFyZSB0aGUgc2FtZSBtdGtfbW1zeXNfZHJpdmVyX2RhdGEgYmV0d2Vl
biBtdWx0aXBsZSBTb0NzLA0KPiBtYWtpbmcgaXQgbW9yZSBzdHJhaWdodGZvcndhcmQgdG8gYWRk
IHN1cHBvcnQgZm9yIG5ldyBjaGlwcy4NCj4gDQo+IFJldmlld2VkLWJ5OiBBbGV4YW5kcmUgTWVy
Z25hdCA8YW1lcmduYXRAYmF5bGlicmUuY29tPg0KPiBUZXN0ZWQtYnk6IEFsZXhhbmRyZSBNZXJn
bmF0IDxhbWVyZ25hdEBiYXlsaWJyZS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+
DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArc3RhdGljIGludCBtdGtfZHJtX29mX2RkcF9wYXRoX2J1
aWxkX29uZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGVudW0gbXRrX2NydGNfcGF0aCBjcGF0aCwNCj4g
KwkJCQkJIGNvbnN0IHVuc2lnbmVkIGludCAqKm91dF9wYXRoLA0KPiArCQkJCQkgdW5zaWduZWQg
aW50ICpvdXRfcGF0aF9sZW4pDQo+ICt7DQo+ICsJc3RydWN0IGRldmljZV9ub2RlICpuZXh0LCAq
cHJldiwgKnZkbyA9IGRldi0+cGFyZW50LT5vZl9ub2RlOw0KPiArCXVuc2lnbmVkIGludCB0ZW1w
X3BhdGhbRERQX0NPTVBPTkVOVF9EUk1fSURfTUFYXSA9IHsgMCB9Ow0KPiArCXVuc2lnbmVkIGlu
dCAqZmluYWxfZGRwX3BhdGg7DQo+ICsJdW5zaWduZWQgc2hvcnQgaW50IGlkeCA9IDA7DQo+ICsJ
Ym9vbCBvdmxfYWRhcHRvcl9jb21wX2FkZGVkID0gZmFsc2U7DQo+ICsJaW50IHJldDsNCj4gKw0K
PiArCS8qIEdldCB0aGUgZmlyc3QgZW50cnkgZm9yIHRoZSB0ZW1wX3BhdGggYXJyYXkgKi8NCj4g
KwlyZXQgPSBtdGtfZHJtX29mX2dldF9kZHBfZXBfY2lkKHZkbywgMCwgY3BhdGgsICZuZXh0LCAm
dGVtcF9wYXRoW2lkeF0pOw0KPiArCWlmIChyZXQpIHsNCj4gKwkJaWYgKG5leHQgJiYgdGVtcF9w
YXRoW2lkeF0gPT0gRERQX0NPTVBPTkVOVF9EUk1fT1ZMX0FEQVBUT1IpIHsNCj4gKwkJCWRldl9l
cnIoZGV2LCAiQWRkaW5nIE9WTCBBZGFwdG9yIGZvciAlcE9GXG4iLCBuZXh0KTsNCg0KVGhpcyBs
b29rcyBub3QgYW4gZXJyb3IuDQoNCj4gKwkJCW92bF9hZGFwdG9yX2NvbXBfYWRkZWQgPSB0cnVl
Ow0KPiArCQl9IGVsc2Ugew0KPiArCQkJaWYgKG5leHQpDQo+ICsJCQkJZGV2X2VycihkZXYsICJJ
bnZhbGlkIGNvbXBvbmVudCAlcE9GXG4iLCBuZXh0KTsNCj4gKwkJCWVsc2UNCj4gKwkJCQlkZXZf
ZXJyKGRldiwgIkNhbm5vdCBmaW5kIGZpcnN0IGVuZHBvaW50IGZvciBwYXRoICVkXG4iLCBjcGF0
aCk7DQo+ICsNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsJCX0NCj4gKwl9DQo+ICsJaWR4Kys7DQo+
ICsNCj4gKwkvKg0KPiArCSAqIFdhbGsgdGhyb3VnaCBwb3J0IG91dHB1dHMgdW50aWwgd2UgcmVh
Y2ggdGhlIGxhc3QgdmFsaWQgbWVkaWF0ZWstZHJtIGNvbXBvbmVudC4NCj4gKwkgKiBUbyBiZSB2
YWxpZCwgdGhpcyBtdXN0IGVuZCB3aXRoIGFuICJpbnZhbGlkIiBjb21wb25lbnQgdGhhdCBpcyBh
IGRpc3BsYXkgbm9kZS4NCj4gKwkgKi8NCj4gKwlkbyB7DQo+ICsJCXByZXYgPSBuZXh0Ow0KPiAr
CQlyZXQgPSBtdGtfZHJtX29mX2dldF9kZHBfZXBfY2lkKG5leHQsIDEsIGNwYXRoLCAmbmV4dCwg
JnRlbXBfcGF0aFtpZHhdKTsNCj4gKwkJb2Zfbm9kZV9wdXQocHJldik7DQo+ICsJCWlmIChyZXQp
IHsNCj4gKwkJCW9mX25vZGVfcHV0KG5leHQpOw0KPiArCQkJYnJlYWs7DQo+ICsJCX0NCj4gKw0K
PiArCQkvKg0KPiArCQkgKiBJZiB0aGlzIGlzIGFuIE9WTCBhZGFwdG9yIGV4Y2x1c2l2ZSBjb21w
b25lbnQgYW5kIG9uZSBvZiB0aG9zZQ0KPiArCQkgKiB3YXMgYWxyZWFkeSBhZGRlZCwgZG9uJ3Qg
YWRkIGFub3RoZXIgaW5zdGFuY2Ugb2YgdGhlIGdlbmVyaWMNCj4gKwkJICogRERQX0NPTVBPTkVO
VF9PVkxfQURBUFRPUiwgYXMgdGhpcyBpcyB1c2VkIG9ubHkgdG8gZGVjaWRlIHdoZXRoZXINCj4g
KwkJICogdG8gcHJvYmUgdGhhdCBjb21wb25lbnQgbWFzdGVyIGRyaXZlciBvZiB3aGljaCBvbmx5
IG9uZSBpbnN0YW5jZQ0KPiArCQkgKiBpcyBuZWVkZWQgYW5kIHBvc3NpYmxlLg0KPiArCQkgKi8N
Cj4gKwkJaWYgKHRlbXBfcGF0aFtpZHhdID09IEREUF9DT01QT05FTlRfRFJNX09WTF9BREFQVE9S
KSB7DQo+ICsJCQlpZiAoIW92bF9hZGFwdG9yX2NvbXBfYWRkZWQpDQo+ICsJCQkJb3ZsX2FkYXB0
b3JfY29tcF9hZGRlZCA9IHRydWU7DQo+ICsJCQllbHNlDQo+ICsJCQkJaWR4LS07DQo+ICsJCX0N
Cj4gKwl9IHdoaWxlICgrK2lkeCA8IEREUF9DT01QT05FTlRfRFJNX0lEX01BWCk7DQo+ICsNCj4g
KwkvKg0KPiArCSAqIFRoZSBkZXZpY2UgY29tcG9uZW50IG1pZ2h0IG5vdCBiZSBlbmFibGVkOiBp
biB0aGF0IGNhc2UsIGRvbid0DQo+ICsJICogY2hlY2sgdGhlIGxhc3QgZW50cnkgYW5kIGp1c3Qg
cmVwb3J0IHRoYXQgdGhlIGRldmljZSBpcyBtaXNzaW5nLg0KPiArCSAqLw0KPiArCWlmIChyZXQg
PT0gLUVOT0RFVikNCj4gKwkJcmV0dXJuIHJldDsNCj4gKw0KPiArCS8qIElmIHRoZSBsYXN0IGVu
dHJ5IGlzIG5vdCBhIGZpbmFsIGRpc3BsYXkgb3V0cHV0LCB0aGUgY29uZmlndXJhdGlvbiBpcyB3
cm9uZyAqLw0KPiArCXN3aXRjaCAodGVtcF9wYXRoW2lkeCAtIDFdKSB7DQo+ICsJY2FzZSBERFBf
Q09NUE9ORU5UX0RQX0lOVEYwOg0KPiArCWNhc2UgRERQX0NPTVBPTkVOVF9EUF9JTlRGMToNCj4g
KwljYXNlIEREUF9DT01QT05FTlRfRFBJMDoNCj4gKwljYXNlIEREUF9DT01QT05FTlRfRFBJMToN
Cj4gKwljYXNlIEREUF9DT01QT05FTlRfRFNJMDoNCj4gKwljYXNlIEREUF9DT01QT05FTlRfRFNJ
MToNCj4gKwljYXNlIEREUF9DT01QT05FTlRfRFNJMjoNCj4gKwljYXNlIEREUF9DT01QT05FTlRf
RFNJMzoNCj4gKwkJYnJlYWs7DQo+ICsJZGVmYXVsdDoNCj4gKwkJZGV2X2VycihkZXYsICJJbnZh
bGlkIGRpc3BsYXkgaHcgcGlwZWxpbmUuIExhc3QgY29tcG9uZW50OiAlZCAocmV0PSVkKVxuIiwN
Cj4gKwkJCXRlbXBfcGF0aFtpZHggLSAxXSwgcmV0KTsNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+
ICsJfQ0KPiArDQo+ICsJZmluYWxfZGRwX3BhdGggPSBkZXZtX2ttZW1kdXAoZGV2LCB0ZW1wX3Bh
dGgsIGlkeCAqIHNpemVvZih0ZW1wX3BhdGhbMF0pLCBHRlBfS0VSTkVMKTsNCj4gKwlpZiAoIWZp
bmFsX2RkcF9wYXRoKQ0KPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gKw0KPiArCWRldl9kYmcoZGV2
LCAiRGlzcGxheSBIVyBQaXBlbGluZSBidWlsdCB3aXRoICVkIGNvbXBvbmVudHMuXG4iLCBpZHgp
Ow0KPiArDQo+ICsJLyogUGlwZWxpbmUgYnVpbHQhICovDQo+ICsJKm91dF9wYXRoID0gZmluYWxf
ZGRwX3BhdGg7DQo+ICsJKm91dF9wYXRoX2xlbiA9IGlkeDsNCj4gKw0KPiArCXJldHVybiAwOw0K
PiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IG10a19kcm1fb2ZfZGRwX3BhdGhfYnVpbGQoc3RydWN0
IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsDQo+ICsJCQkJICAgICBzdHJ1
Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhICpkYXRhKQ0KPiArew0KPiArCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqZXBfbm9kZTsNCj4gKwlzdHJ1Y3Qgb2ZfZW5kcG9pbnQgb2ZfZXA7DQo+ICsJYm9vbCBv
dXRwdXRfcHJlc2VudFtNQVhfQ1JUQ10gPSB7IGZhbHNlIH07DQo+ICsJaW50IHJldDsNCj4gKw0K
PiArCWZvcl9lYWNoX2VuZHBvaW50X29mX25vZGUobm9kZSwgZXBfbm9kZSkgew0KPiArCQlyZXQg
PSBvZl9ncmFwaF9wYXJzZV9lbmRwb2ludChlcF9ub2RlLCAmb2ZfZXApOw0KPiArCQlpZiAocmV0
KSB7DQo+ICsJCQlkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiQ2Fubm90IHBhcnNlIGVuZHBvaW50
XG4iKTsNCj4gKwkJCWJyZWFrOw0KPiArCQl9DQo+ICsNCj4gKwkJaWYgKG9mX2VwLmlkID49IE1B
WF9DUlRDKSB7DQo+ICsJCQlyZXQgPSBkZXZfZXJyX3Byb2JlKGRldiwgLUVJTlZBTCwNCj4gKwkJ
CQkJICAgICJJbnZhbGlkIGVuZHBvaW50JXUgbnVtYmVyXG4iLCBvZl9lcC5wb3J0KTsNCj4gKwkJ
CWJyZWFrOw0KPiArCQl9DQo+ICsNCj4gKwkJb3V0cHV0X3ByZXNlbnRbb2ZfZXAuaWRdID0gdHJ1
ZTsNCj4gKwl9DQo+ICsNCj4gKwlpZiAocmV0KSB7DQo+ICsJCW9mX25vZGVfcHV0KGVwX25vZGUp
Ow0KPiArCQlyZXR1cm4gcmV0Ow0KPiArCX0NCj4gKw0KPiArCWlmIChvdXRwdXRfcHJlc2VudFtD
UlRDX01BSU5dKSB7DQo+ICsJCXJldCA9IG10a19kcm1fb2ZfZGRwX3BhdGhfYnVpbGRfb25lKGRl
diwgQ1JUQ19NQUlOLA0KPiArCQkJCQkJICAgICZkYXRhLT5tYWluX3BhdGgsICZkYXRhLT5tYWlu
X2xlbik7DQo+ICsJCWlmIChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpDQo+ICsJCQlyZXR1cm4gcmV0
Ow0KPiArCX0NCj4gKw0KPiArCWlmIChvdXRwdXRfcHJlc2VudFtDUlRDX0VYVF0pIHsNCj4gKwkJ
cmV0ID0gbXRrX2RybV9vZl9kZHBfcGF0aF9idWlsZF9vbmUoZGV2LCBDUlRDX0VYVCwNCj4gKwkJ
CQkJCSAgICAmZGF0YS0+ZXh0X3BhdGgsICZkYXRhLT5leHRfbGVuKTsNCj4gKwkJaWYgKHJldCAm
JiByZXQgIT0gLUVOT0RFVikNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsJfQ0KPiArDQo+ICsJaWYg
KG91dHB1dF9wcmVzZW50W0NSVENfVEhJUkRdKSB7DQo+ICsJCXJldCA9IG10a19kcm1fb2ZfZGRw
X3BhdGhfYnVpbGRfb25lKGRldiwgQ1JUQ19USElSRCwNCj4gKwkJCQkJCSAgICAmZGF0YS0+dGhp
cmRfcGF0aCwgJmRhdGEtPnRoaXJkX2xlbik7DQo+ICsJCWlmIChyZXQgJiYgcmV0ICE9IC1FTk9E
RVYpDQo+ICsJCQlyZXR1cm4gcmV0Ow0KPiArCX0NCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0K
PiArDQo+ICBzdGF0aWMgaW50IG10a19kcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikNCj4gIHsNCj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Ow0KPiAgCXN0
cnVjdCBkZXZpY2Vfbm9kZSAqcGhhbmRsZSA9IGRldi0+cGFyZW50LT5vZl9ub2RlOw0KPiAgCWNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm9mX2lkOw0KPiAgCXN0cnVjdCBtdGtfZHJtX3ByaXZh
dGUgKnByaXZhdGU7DQo+ICsJc3RydWN0IG10a19tbXN5c19kcml2ZXJfZGF0YSAqbXRrX2RybV9k
YXRhOw0KPiAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsNCj4gIAlzdHJ1Y3QgY29tcG9uZW50
X21hdGNoICptYXRjaCA9IE5VTEw7DQo+ICAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqb3ZsX2Fk
YXB0b3I7DQo+IEBAIC04MjQsNyArMTA0OCwzMSBAQCBzdGF0aWMgaW50IG10a19kcm1fcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gIAlpZiAoIW9mX2lkKQ0KPiAgCQlyZXR1
cm4gLUVOT0RFVjsNCj4gIA0KPiAtCXByaXZhdGUtPmRhdGEgPSBvZl9pZC0+ZGF0YTsNCj4gKwlt
dGtfZHJtX2RhdGEgPSAoc3RydWN0IG10a19tbXN5c19kcml2ZXJfZGF0YSAqKW9mX2lkLT5kYXRh
Ow0KPiArCWlmICghbXRrX2RybV9kYXRhKQ0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiAr
CXByaXZhdGUtPmRhdGEgPSBrbWVtZHVwKG10a19kcm1fZGF0YSwgc2l6ZW9mKCptdGtfZHJtX2Rh
dGEpLCBHRlBfS0VSTkVMKTsNCg0KVGhpcyBpcyByZWR1bmRhbnQuIFlvdSB3b3VsZCBhc3NpZ24g
cHJpdmF0ZS0+ZGF0YSBiZWxvdy4NCg0KPiArCWlmICghcHJpdmF0ZS0+ZGF0YSkNCj4gKwkJcmV0
dXJuIC1FTk9NRU07DQo+ICsNCj4gKwkvKiBUcnkgdG8gYnVpbGQgdGhlIGRpc3BsYXkgcGlwZWxp
bmUgZnJvbSBkZXZpY2V0cmVlIGdyYXBocyAqLw0KPiArCWlmIChvZl9ncmFwaF9pc19wcmVzZW50
KHBoYW5kbGUpKSB7DQo+ICsJCWRldl9kYmcoZGV2LCAiQnVpbGRpbmcgZGlzcGxheSBwaXBlbGlu
ZSBmb3IgTU1TWVMgJXVcbiIsDQo+ICsJCQltdGtfZHJtX2RhdGEtPm1tc3lzX2lkKTsNCj4gKwkJ
cHJpdmF0ZS0+ZGF0YSA9IGRldm1fa21lbWR1cChkZXYsIG10a19kcm1fZGF0YSwNCj4gKwkJCQkJ
ICAgICBzaXplb2YoKm10a19kcm1fZGF0YSksIEdGUF9LRVJORUwpOw0KPiArCQlpZiAoIXByaXZh
dGUtPmRhdGEpDQo+ICsJCQlyZXR1cm4gLUVOT01FTTsNCj4gKw0KPiArCQlyZXQgPSBtdGtfZHJt
X29mX2RkcF9wYXRoX2J1aWxkKGRldiwgcGhhbmRsZSwgcHJpdmF0ZS0+ZGF0YSk7DQo+ICsJCWlm
IChyZXQpDQo+ICsJCQlyZXR1cm4gcmV0Ow0KPiArCX0gZWxzZSB7DQo+ICsJCS8qIE5vIGRldmlj
ZXRyZWUgZ3JhcGhzIHN1cHBvcnQ6IGdvIHdpdGggaGFyZGNvZGVkIHBhdGhzIGlmIHByZXNlbnQg
Ki8NCj4gKwkJZGV2X2RiZyhkZXYsICJVc2luZyBoYXJkY29kZWQgcGF0aHMgZm9yIE1NU1lTICV1
XG4iLCBtdGtfZHJtX2RhdGEtPm1tc3lzX2lkKTsNCj4gKwkJcHJpdmF0ZS0+ZGF0YSA9IG10a19k
cm1fZGF0YTsNCj4gKwl9Ow0KPiAgDQo+ICAJcHJpdmF0ZS0+YWxsX2RybV9wcml2YXRlID0gZGV2
bV9rbWFsbG9jX2FycmF5KGRldiwgcHJpdmF0ZS0+ZGF0YS0+bW1zeXNfZGV2X251bSwNCj4gIAkJ
CQkJCSAgICAgIHNpemVvZigqcHJpdmF0ZS0+YWxsX2RybV9wcml2YXRlKSwNCj4gQEAgLTg0Niwx
MiArMTA5NCwxMSBAQCBzdGF0aWMgaW50IG10a19kcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikNCj4gIA0KPiAgCS8qIEl0ZXJhdGUgb3ZlciBzaWJsaW5nIERJU1AgZnVuY3Rp
b24gYmxvY2tzICovDQo+ICAJZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZShwaGFuZGxlLT5wYXJlbnQs
IG5vZGUpIHsNCj4gLQkJY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqb2ZfaWQ7DQo+ICAJCWVu
dW0gbXRrX2RkcF9jb21wX3R5cGUgY29tcF90eXBlOw0KPiAgCQlpbnQgY29tcF9pZDsNCj4gIA0K
PiAtCQlvZl9pZCA9IG9mX21hdGNoX25vZGUobXRrX2RkcF9jb21wX2R0X2lkcywgbm9kZSk7DQo+
IC0JCWlmICghb2ZfaWQpDQo+ICsJCXJldCA9IG10a19kcm1fb2ZfZ2V0X2RkcF9jb21wX3R5cGUo
bm9kZSwgJmNvbXBfdHlwZSk7DQo+ICsJCWlmIChyZXQpDQo+ICAJCQljb250aW51ZTsNCj4gIA0K
PiAgCQlpZiAoIW9mX2RldmljZV9pc19hdmFpbGFibGUobm9kZSkpIHsNCj4gQEAgLTg2MCw4ICsx
MTA3LDYgQEAgc3RhdGljIGludCBtdGtfZHJtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpDQo+ICAJCQljb250aW51ZTsNCj4gIAkJfQ0KPiAgDQo+IC0JCWNvbXBfdHlwZSA9IChl
bnVtIG10a19kZHBfY29tcF90eXBlKSh1aW50cHRyX3Qpb2ZfaWQtPmRhdGE7DQo+IC0NCj4gIAkJ
aWYgKGNvbXBfdHlwZSA9PSBNVEtfRElTUF9NVVRFWCkgew0KPiAgCQkJaW50IGlkOw0KPiAgDQo+
IEBAIC04OTAsMjIgKzExMzUsMjQgQEAgc3RhdGljIGludCBtdGtfZHJtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ICAJCSAqIGJsb2NrcyBoYXZlIHNlcGFyYXRlIGNvbXBv
bmVudCBwbGF0Zm9ybSBkcml2ZXJzIGFuZCBpbml0aWFsaXplIHRoZWlyIG93bg0KPiAgCQkgKiBE
RFAgY29tcG9uZW50IHN0cnVjdHVyZS4gVGhlIG90aGVycyBhcmUgaW5pdGlhbGl6ZWQgaGVyZS4N
Cj4gIAkJICovDQo+IC0JCWlmIChjb21wX3R5cGUgPT0gTVRLX0RJU1BfQUFMIHx8DQo+IC0JCSAg
ICBjb21wX3R5cGUgPT0gTVRLX0RJU1BfQ0NPUlIgfHwNCj4gLQkJICAgIGNvbXBfdHlwZSA9PSBN
VEtfRElTUF9DT0xPUiB8fA0KPiAtCQkgICAgY29tcF90eXBlID09IE1US19ESVNQX0dBTU1BIHx8
DQo+IC0JCSAgICBjb21wX3R5cGUgPT0gTVRLX0RJU1BfTUVSR0UgfHwNCj4gLQkJICAgIGNvbXBf
dHlwZSA9PSBNVEtfRElTUF9PVkwgfHwNCj4gLQkJICAgIGNvbXBfdHlwZSA9PSBNVEtfRElTUF9P
VkxfMkwgfHwNCj4gLQkJICAgIGNvbXBfdHlwZSA9PSBNVEtfRElTUF9PVkxfQURBUFRPUiB8fA0K
PiAtCQkgICAgY29tcF90eXBlID09IE1US19ESVNQX1JETUEgfHwNCj4gLQkJICAgIGNvbXBfdHlw
ZSA9PSBNVEtfRFBfSU5URiB8fA0KPiAtCQkgICAgY29tcF90eXBlID09IE1US19EUEkgfHwNCj4g
LQkJICAgIGNvbXBfdHlwZSA9PSBNVEtfRFNJKSB7DQo+IC0JCQlkZXZfaW5mbyhkZXYsICJBZGRp
bmcgY29tcG9uZW50IG1hdGNoIGZvciAlcE9GXG4iLA0KPiAtCQkJCSBub2RlKTsNCj4gLQkJCWRy
bV9vZl9jb21wb25lbnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wb25lbnRfY29tcGFyZV9v
ZiwNCj4gLQkJCQkJCSAgIG5vZGUpOw0KPiArCQlzd2l0Y2ggKGNvbXBfdHlwZSkgew0KPiArCQlk
ZWZhdWx0Og0KPiArCQkJYnJlYWs7DQo+ICsJCWNhc2UgTVRLX0RJU1BfQUFMOg0KPiArCQljYXNl
IE1US19ESVNQX0NDT1JSOg0KPiArCQljYXNlIE1US19ESVNQX0NPTE9SOg0KPiArCQljYXNlIE1U
S19ESVNQX0dBTU1BOg0KPiArCQljYXNlIE1US19ESVNQX01FUkdFOg0KPiArCQljYXNlIE1US19E
SVNQX09WTDoNCj4gKwkJY2FzZSBNVEtfRElTUF9PVkxfMkw6DQo+ICsJCWNhc2UgTVRLX0RJU1Bf
T1ZMX0FEQVBUT1I6DQo+ICsJCWNhc2UgTVRLX0RJU1BfUkRNQToNCj4gKwkJY2FzZSBNVEtfRFBf
SU5URjoNCj4gKwkJY2FzZSBNVEtfRFBJOg0KPiArCQljYXNlIE1US19EU0k6DQo+ICsJCQlkZXZf
aW5mbyhkZXYsICJBZGRpbmcgY29tcG9uZW50IG1hdGNoIGZvciAlcE9GXG4iLCBub2RlKTsNCj4g
KwkJCWRybV9vZl9jb21wb25lbnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wb25lbnRfY29t
cGFyZV9vZiwgbm9kZSk7DQo+ICsJCQlicmVhazsNCg0KVGhpcyBtb2RpZmljYXRpb24gc2VlbXMg
bm90IHJlbGF0ZWQgdG8gT0YgZ3JhcGhzIHN1cHBvcnQuIElmIHlvdSBuZWVkIHRoaXMsIHNlcGFy
YXRlIHRoaXMgdG8gYW5vdGhlciBwYXRjaC4NCg0KPiAgCQl9DQo+ICANCj4gIAkJcmV0ID0gbXRr
X2RkcF9jb21wX2luaXQobm9kZSwgJnByaXZhdGUtPmRkcF9jb21wW2NvbXBfaWRdLCBjb21wX2lk
KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmgNCj4gaW5kZXggNzhkNjk4
ZWRlMWJmLi43ZTU0ZDg2ZTI1YTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
ZHJtX2Rydi5oDQo+IEBAIC01OSw3ICs1OSw3IEBAIHN0cnVjdCBtdGtfZHJtX3ByaXZhdGUgew0K
PiAgCXN0cnVjdCBkZXZpY2UgKm1tc3lzX2RldjsNCj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKmNv
bXBfbm9kZVtERFBfQ09NUE9ORU5UX0RSTV9JRF9NQVhdOw0KPiAgCXN0cnVjdCBtdGtfZGRwX2Nv
bXAgZGRwX2NvbXBbRERQX0NPTVBPTkVOVF9EUk1fSURfTUFYXTsNCj4gLQljb25zdCBzdHJ1Y3Qg
bXRrX21tc3lzX2RyaXZlcl9kYXRhICpkYXRhOw0KPiArCXN0cnVjdCBtdGtfbW1zeXNfZHJpdmVy
X2RhdGEgKmRhdGE7DQo+ICAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN1c3BlbmRfc3RhdGU7
DQo+ICAJdW5zaWduZWQgaW50IG1ib3hfaW5kZXg7DQo+ICAJc3RydWN0IG10a19kcm1fcHJpdmF0
ZSAqKmFsbF9kcm1fcHJpdmF0ZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jDQo+IGlu
ZGV4IGMyNTU1NTljYzU2ZS4uODgwZWEzNzkzN2RhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHNpLmMNCj4gQEAgLTkwNCw5ICs5MDQsMTcgQEAgc3RhdGljIGludCBtdGtfZHNpX2hv
c3RfYXR0YWNoKHN0cnVjdCBtaXBpX2RzaV9ob3N0ICpob3N0LA0KPiAgCWRzaS0+bGFuZXMgPSBk
ZXZpY2UtPmxhbmVzOw0KPiAgCWRzaS0+Zm9ybWF0ID0gZGV2aWNlLT5mb3JtYXQ7DQo+ICAJZHNp
LT5tb2RlX2ZsYWdzID0gZGV2aWNlLT5tb2RlX2ZsYWdzOw0KPiAtCWRzaS0+bmV4dF9icmlkZ2Ug
PSBkZXZtX2RybV9vZl9nZXRfYnJpZGdlKGRldiwgZGV2LT5vZl9ub2RlLCAwLCAwKTsNCj4gLQlp
ZiAoSVNfRVJSKGRzaS0+bmV4dF9icmlkZ2UpKQ0KPiAtCQlyZXR1cm4gUFRSX0VSUihkc2ktPm5l
eHRfYnJpZGdlKTsNCj4gKwlkc2ktPm5leHRfYnJpZGdlID0gZGV2bV9kcm1fb2ZfZ2V0X2JyaWRn
ZShkZXYsIGRldi0+b2Zfbm9kZSwgMSwgMCk7DQo+ICsJaWYgKElTX0VSUihkc2ktPm5leHRfYnJp
ZGdlKSkgew0KPiArCQlyZXQgPSBQVFJfRVJSKGRzaS0+bmV4dF9icmlkZ2UpOw0KPiArCQlpZiAo
cmV0ID09IC1FUFJPQkVfREVGRVIpDQo+ICsJCQlyZXR1cm4gcmV0Ow0KPiArDQo+ICsJCS8qIE9s
ZCBkZXZpY2V0cmVlIGhhcyBvbmx5IG9uZSBlbmRwb2ludCAqLw0KPiArCQlkc2ktPm5leHRfYnJp
ZGdlID0gZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZShkZXYsIGRldi0+b2Zfbm9kZSwgMCwgMCk7DQo+
ICsJCWlmIChJU19FUlIoZHNpLT5uZXh0X2JyaWRnZSkpDQo+ICsJCQlyZXR1cm4gUFRSX0VSUihk
c2ktPm5leHRfYnJpZGdlKTsNCj4gKwl9DQo+ICANCj4gIAlkcm1fYnJpZGdlX2FkZCgmZHNpLT5i
cmlkZ2UpOw0KPiAgDQo=

