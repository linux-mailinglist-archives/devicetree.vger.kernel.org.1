Return-Path: <devicetree+bounces-69682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C5D8D1275
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 05:18:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A76DF283E1E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 03:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B7E3D60;
	Tue, 28 May 2024 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="u4YXgehD";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="lUk6k9FI"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC36B1361;
	Tue, 28 May 2024 03:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=60.244.123.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716866314; cv=fail; b=XquGOEXwg8POOr/zsvIZLMQKwiFPeKtGd4rXi+zIgHrslEiySsJO6UoSdjiUgOhofJNOqhUu+W94PuqGVyQ2SMfEZREz00wUag54t0LC/yvdhSgXBsj7Mkty/P9Hxnl5o4UYdslmp55XMJgXMPwFd8fOdgXoyGC2tt6NTNSu5Rw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716866314; c=relaxed/simple;
	bh=QTcvRGvcl1xCgeItOF0Ts6iWu6UYrSeXAWopViMMjCU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=EvdBJEk0aU3WI/dltWbd9o66BEiVPejtR3UPf/Oyi+z83GE552T7H2Rws/UVLTNUFfOhpGq6gOLA4HACOD7Ak911NuLu/Zh/ZPin9kd9KBxNbX/PFXQsr0/jLJ5fmMVFwlUN7SjGKIHQSg222UJ/tQiu0mFY95tGtKE4Pk16de0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=u4YXgehD; dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b=lUk6k9FI; arc=fail smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: f32078d41ca011ef8c37dd7afa272265-20240528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=QTcvRGvcl1xCgeItOF0Ts6iWu6UYrSeXAWopViMMjCU=;
	b=u4YXgehD7QsPXKVnanXmpoA5cBSNU1rC2Dp//qLnUsn+wmHsVZijG7Idevm8BmuZO6pJn9shicZgHJLDp75gNCkv7waC8fmopshy0yv3mqgC0WvXQrMgaNuXtSRvjTtxTbLukRRlQfwWAF/nw1yoVpGKjVt9r3Mi7WJgo3zOKH0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.39,REQID:bc128410-12f3-419e-8e77-0960168304b3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:393d96e,CLOUDID:8ae0e487-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: f32078d41ca011ef8c37dd7afa272265-20240528
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 663308476; Tue, 28 May 2024 11:18:27 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 28 May 2024 11:18:25 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 28 May 2024 11:18:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRfiRH3D3ZREj6FHD7FEKQo5BI268lVMxumu4zNdL2a00UcyPe5qHo2cOrvAzuoZw6ys0FoYaFpwsnYnvoR/6DrDeoyDQxGRXqUIgSmWj9TCmoWf7jjzLQ8oFCrgdbSTyn4ujY46Yu6pKxMlwSHOCLwZSoBbs9x8zUbW3CMhlm6XHVP2qzK3Zft9+9J/ofG8+yc3JlmeEJie/ldm2vN8wktO0xqS43JwTHNsRUA+JdUIazWh25cri5xEuKtPRCf43nSkQfM9wXQ7OpFHBrbVX+ha+o31Z8HG3xhyG6t9vkpLJLaWIJRXSvI4ixZN+lrpvSSC7F2mmUmzQqKevlCyyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QTcvRGvcl1xCgeItOF0Ts6iWu6UYrSeXAWopViMMjCU=;
 b=dt/XcGFmDYlOjfdq3+erFDHm3CtRb/cXCdi6MKrtRajdemCzw1ZvRQoZogBjGSX4kQQKcbB0I1KfnOBW6+MabthQ8YnOM5+wn/Urx6/ybIkrZeRw7nWNZjUs49VODudJP4QiylP5zi/96HWMJ7nNfphxX//yMND6EMBj1Dc1yJBDH/BfDGxVSdM4mFrGQh+6oQyZgYZYaQtK0uok6x9MS9E1+oSnu7/Bm9uthAxxpi198GUrNZGCqbAwsxbU3UjEwPBCvsg3DHBE7FNBy8yfYeLRG/NWFZ/eCfGON9MeUYQRCREuubIq4Pm2bzdVg0AuclyewsbaNl8XnefOeGz+TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QTcvRGvcl1xCgeItOF0Ts6iWu6UYrSeXAWopViMMjCU=;
 b=lUk6k9FIqCLJF2gLuCcaY/lYRom0GkJyJ1kIy5MtoalxMuzcQ+sAgSnweJxn2L2VlicT2LjEluqeVNxItaSLwe8TRL+68DB4jSSeEUIKHUCbmeZurha9OI6RfDGTZ1kWqoGDUDr5K0TG9TsYnX6ymT1MO89cu16UI3QWhlIRkAE=
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com (2603:1096:101:83::7)
 by SEYPR03MB7684.apcprd03.prod.outlook.com (2603:1096:101:142::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.16; Tue, 28 May
 2024 03:17:19 +0000
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::9fa0:ee98:d5ed:beba]) by SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::9fa0:ee98:d5ed:beba%3]) with mapi id 15.20.7633.001; Tue, 28 May 2024
 03:17:19 +0000
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
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
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
Thread-Index: AQHar3t3cpLUl9xLck+PMVeju4DUbbGr/B+A
Date: Tue, 28 May 2024 03:17:18 +0000
Message-ID: <647a8dff6299c8e43249cbd50c73de7a29fa0d77.camel@mediatek.com>
References: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
	 <20240526144443.14345-7-jason-jh.lin@mediatek.com>
In-Reply-To: <20240526144443.14345-7-jason-jh.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB6626:EE_|SEYPR03MB7684:EE_
x-ms-office365-filtering-correlation-id: c9d2f516-1685-49fe-d7db-08dc7ec4aec3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|1800799015|366007|7416005|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?cTJXSkZudk4yUUt1SVFadnREVnR1MzN2OW1KQzNhRDZHbTZjS1ZyNXo1dzVT?=
 =?utf-8?B?N1FKWmRwMC82OFVkdDVxK3ZKMFRNYUdiU0x1c0Y3T0hPQ0ZDb2owdHRSSmFB?=
 =?utf-8?B?V1FEd0RXZ3RFQ0RtSUNCbEZ5QUJUR2JaNDdpMi9WemsxUzhrcWVWd25VeFk0?=
 =?utf-8?B?NWl4L05LeHNIZmxzSWRzYlJYMGhOS0ZiczZSU0FuSmpESlBUYjNFNXRsdzRk?=
 =?utf-8?B?Z1JqYWRKb20vRnFHTGFTckNGV1pqRFlHN1JMYnZJKzg0TWFsY0h5NzIwTmVz?=
 =?utf-8?B?QmYyMHY3YjgxTlVxODhWWUZFMkdwekZKTUpKeklvNk10ZjVRcUd4L01qa3lk?=
 =?utf-8?B?NkJkMFpBY2J5VWVEdTMxbjJBY0UwSDFXcGQ4b1l0QTNiWW5lY0x1ZG9mamdJ?=
 =?utf-8?B?QUJRUE4vMGpObWhXYm1yNjlqa3huR1VLY25XQU1MNUtwazU0VmJ0TW1OdnZp?=
 =?utf-8?B?ZWJybmFhZy91Z3VDTFVZYklOUGJrY0hzMWNGV29pdU5aalVnclhGWjFLZnFZ?=
 =?utf-8?B?alhzS1hTajdCYnJkT2xKY2NnaVNFd29QaTRXZ0ZjY2JZMStPNU9nNldFTDA0?=
 =?utf-8?B?QUxremdaMnQvQWtFcEhJQWxpc2t4cDNxWndQNmNGeDIwOTBNNThTK1E5Vmxy?=
 =?utf-8?B?eEdReUNLMFZRblQ4cVNRUmF6SzA1Y2I2Nkh2QXFRMlRTOTZrcS9ybU1PTGgy?=
 =?utf-8?B?TVNjNjJ2Z3pQSEZiaGl4ZTczbWJZUm95RDdxdzJNZWIycDM5bndyL0l1Z0s1?=
 =?utf-8?B?YStpdmsyK2ZNdk9QdkdoR2EyY04vQTNYbTI3SktrZDdpQWN4RVc3MDE1aTNR?=
 =?utf-8?B?NldlMEhoRDB6S3JYTWNQZ092bURsa1lhcG1XbzdJYjI1Z3lwd2JuV0VHWVNH?=
 =?utf-8?B?cE9QNWV2UmtJb3UvVG4yMFVmQnZUZ3psWm5OVUs5UHl5NFdBM3FmMC9KVjY3?=
 =?utf-8?B?WHB5MU1TRHBWRFBaakExNGJmMmsrM0NEWWs3RGlwK2pGSmU1NkpxUFZRQ3ZW?=
 =?utf-8?B?QmJzbmQrTmNCN3NjeW1RVVNvMEgyQ2UzNjdVc0FQY0tjNWdCS0txNHpwc3da?=
 =?utf-8?B?NE9BdkhRU0YwbGo4eFc5cWpZekViM0J3MUZwZFo4ZFVYM3VRNk04aGpzWS9p?=
 =?utf-8?B?bU5JQTNkN2FjdTJXTFJXZ2ZSbXk0VEhMS09GMnNWc1d1RFRyc1NSd251bWhv?=
 =?utf-8?B?THpDVXBmQXFlZEpuaFVMald6TzBvTXZiMWtCZEVCT1FnWHZoQjJrakhiOVI5?=
 =?utf-8?B?T05Ga3ZxMVQ3UVZEYUlsTk5yOE5Bd1ExOHM1bEthMDdVenhyWUM3RWJ6VVow?=
 =?utf-8?B?K3JSZlFaWGxoVTdudmt5TnpJYXJHVmtBSVBFNEttUWtDcVFzemwzWmtxL3VM?=
 =?utf-8?B?ZmtHZE53ZXdla1BjeTlzTTNMN1NBeERyTGkyN3ozYW91NGU4YU80VlV0WDFU?=
 =?utf-8?B?R0wwOHdmYUhvVVhwNVBlR1A5dXJydU55OGNUYzAvTksxMWx6MWdQMUlxWkl3?=
 =?utf-8?B?R3pNeTZyU1FySFJWNVVqZExuYzk0OEk0eDRqb0p2SUJWNU5GZGRsWWZ5T042?=
 =?utf-8?B?ODhnZ1M3Z2JVbXJYaHlKZDk1MDdpaGp5OHNJWjBUd1JiSVJWM0tUd3dvekpN?=
 =?utf-8?B?Z0tINmlicHF0Z0RlL2k3M0FaVzdrNlI4dlFRbWZkTTFCRy8zK2FOT09xaWhx?=
 =?utf-8?B?U0JrZ2ppUW80YytvaUdrcUNFcTMwOUcrNlk4WUt6ZWwvYUlkcXZtREhJYmkz?=
 =?utf-8?B?bnlERCtZR0cweWFWeDh4dEY2cFhneUhUb29sZEM4SVVUQXZ0Qit0Q04vNjVS?=
 =?utf-8?B?WitxY0FUSHAyVE1ZNTRtQT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB6626.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(7416005)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkplcUVpY2w4NTVobFBqM1RCSnE4ZFNQQlIrckxEK0RmSEg1eU8wSmg2NldW?=
 =?utf-8?B?Q0xNaDk0VFA4cEJGOUtyNnFIekNpUG1aUG5HeEFIQVVaNnNIN3ZwL2xRMjRv?=
 =?utf-8?B?dHN2Tk1LZmFDUGcxb3pQcW5OWmZ4MEMwRWczRVp5QjY4NGd1WTRUYVdOOTFj?=
 =?utf-8?B?Q3AxNWdmMHlkUzhSRGlGTkM5bFJ6MmU4czNKYVNIK09rVHJWVlZJbW1lTUd1?=
 =?utf-8?B?blNjbHlqd2hkbVkzZURBR3BnRWpER1NEeEV5N0p0ZWtLTWdjRGVhRjhITFhi?=
 =?utf-8?B?ZTRXdlBMR1FiWkQ2REVPeE93YjdYK2pMTndOVFlmYUE2M0VZRGV1Y1JPSTlW?=
 =?utf-8?B?T0tPL1hvUURKelp3d0x0VXJrQldQN3pyK1VSbmJlbXJwSXdYMTJraHVGemo0?=
 =?utf-8?B?dVRNVExacGhlZVRKMmVQZEk0dW9DT0hLYWs4bmFLNWFTSk1qODZGbng5ZHYx?=
 =?utf-8?B?Zk14YWJhREx3L3VPSTJXa3ZVcWZlNFZ0R0NDYVBjait2ZWMrdW0xdStJTUtV?=
 =?utf-8?B?UmhEeE9ZMXFuWmVUSjlMdC8yUklXc3p5NUluUE50MGFQOHkrWVNBaG4rVnp6?=
 =?utf-8?B?UDg0LzNJM2FRSXlpU2V1Y2Nyak9TMjZyYitwOHpHZWVKaS9BemFvK0Rqb3Ez?=
 =?utf-8?B?Slh2QnBPanpyWTNtbHVUSWd3a3c5dHNOUC9DaEt5dG4xK04zVDVIUUNhQ3U5?=
 =?utf-8?B?b0Q5QlgvQUtOWkoxR0YzWHFrelZYTlVQVUZQUjA3dzc4OGZMOXdZS1BZMmtL?=
 =?utf-8?B?YUVuSXM5Zjc4bWtlSnFXbGZ2UlpxK2Uwc2ZyTEYxMVpGWmNxdklXL2toajNT?=
 =?utf-8?B?NzhaNUhVaE1DU2huYS9HK0NBczlEcGJwdlp3Ylg2ZzBQRHMyODZ5ZFoyWnpJ?=
 =?utf-8?B?S1NzTm5BTnBGYzJ6djJ5dVhsRHZiY2RuYjN2SVRodUVBMnIyeWIycHd4Vkhs?=
 =?utf-8?B?alIxRmVocGwrVStpd3QyUHpSMzdOVmRrOC9VTGFEcWJNenlwaDBZVUF1Kytk?=
 =?utf-8?B?UnpxbjNwTTNEVzh2U29yTFlxV2QxZXY3UGJ2aUpOVVp4QXFkcUo4YTlTOSsv?=
 =?utf-8?B?UGI4UmtnMEdKRWtnQ2R0aE5XaGYyRTRQS3ZhWktlVWJ1OVQzdSt0Nld6dElB?=
 =?utf-8?B?MTh2UkljWURnaHpwbGJYM3ZjblhYejhvYkVzOW10NUoyTXpsTzYxbDk4dWFJ?=
 =?utf-8?B?OW5KOXdwbGZnMWFIVHJmbHg3bjNGL3E3Q3hhUkJVOGZvcG9ER0RDb3laNVBT?=
 =?utf-8?B?cFY3Zm12eTd5YUYva1orS2xRa1h0ZWVvenBFUjNwTGM3VzVkcXpvRHhNd3Mz?=
 =?utf-8?B?RXFQYlpTKy9PbGd6RnFEVnpVWnV1L3QzUXNFZ3NVZXFndjFKUUNzZUUzREZ6?=
 =?utf-8?B?WXpnZms2ZzVnZFkxZVZCMUxSeVEzU1VBV3ZmdCt4OFlPdnAwZE9WZFRySFEz?=
 =?utf-8?B?UmFhenBvSVl5MGhIZjNTMDJoU29hQWRYZVBhLzZoTG13TGQ0NGx0RThwT0Uw?=
 =?utf-8?B?b2ZaOHp1bXJIQzBrajlMd1B5V1Q3SHo1c0F3UGtHRFRudkNscnJVbDVWQ3lS?=
 =?utf-8?B?akJaNDlPTVZjUk5yTXlrRDhWWkppUkV3Y2x6aFRObnVhSGZqbWpudkxoaG5U?=
 =?utf-8?B?UGVrR3liOENicjZlZDlaU3F6S0NjUDMyOWh5NlBydENsalU4MGtuYlNpZDJz?=
 =?utf-8?B?ZDJwRGtZeHB4UWU2VjhIbm5vaXdPckF4cGhVOHBFZmFDSk5SQTB1amRrV2RK?=
 =?utf-8?B?SUlyVU9CcUpMODNSK01tVmFVRWRxcFQzYSt1ZDRUWUVhaVY1UXpiR01QYnVj?=
 =?utf-8?B?QW5yZDdacGR0STY2b09tdExmYXhLY2ZyN2IrSWhpRksrYnlhQnZtWk5QdXJX?=
 =?utf-8?B?Y0tlVTZGM3lVOHI1ZU9jcEN0OHF6OWVRU0t6amx4a0d6OXRPMVYwVWtTL1px?=
 =?utf-8?B?c3d1QldUQ0ZYQkJVMUJHZ2YzbkZ0NUFidERBNy9zSERIbkNNMGZwWVVGUmoz?=
 =?utf-8?B?V2tST3hhelh5S3hSYTd4TGxvaUVkZ3pBU2VUNkVFYXhHTWhEVE0rcUFXdnlu?=
 =?utf-8?B?b0UwQkRITU9HSGhSbzduZHMvRlNSTEpQNDl2bkpmUTk1cVFEcjFucVZITzNP?=
 =?utf-8?Q?cFtQNM4e2fcYWVvDyz/uNbQoo?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F7A0D8400C9D8740905567BAD0D8C9AE@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB6626.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9d2f516-1685-49fe-d7db-08dc7ec4aec3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 03:17:18.9764
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5rBIjp/ILr+W2EYyCiMnvhnJsPPOHNBiE7Xnr3ZDJgxYNd5QdJqBMhKHyKL8V5gHKM2bZBw2k1hEYjDIG58Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7684
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--16.549100-8.000000
X-TMASE-MatchedRID: scwq2vQP8OEOwH4pD14DsPHkpkyUphL9qQ9UezeTkThu4FknyqyshF1Q
	po5pNysMe29pTfBhqOY7b3Js3F6vVD1LciJB3541o65WJt1k1O+nsp2+CJj1GI3V8N0KgLoazg2
	s7KPupxckpdONqiwRktTPsL/doNnAc8f4SXLVGmnJ1E/nrJFEDy6GDroi1vrlOW8XgChxVdgJax
	JT8mQbKpDdNTDmvN2uL0bis0zuC8FccQ8eam5EfdIFVVzYGjNKWQy9YC5qGvz6APa9i04WGCq2r
	l3dzGQ1wDQUlnxIhXk/1yDMFEIrsCITd5Adq4SNOSJ3OimXMa1Uc/QnMc50Lg==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--16.549100-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	814E261AB5626953EB2CAA00395F729EC9B502031810E0DC2BD134F06E9AD2182000:8

SGksIEphc29uOg0KDQpPbiBTdW4sIDIwMjQtMDUtMjYgYXQgMjI6NDQgKzA4MDAsIEphc29uLUpI
LkxpbiB3cm90ZToNCj4gVG8gc3VwcG9ydCBzZWN1cmUgdmlkZW8gcGF0aCBmZWF0dXJlLCBHQ0Ug
aGF2ZSB0byByZWFkL3dyaXRlIHJlZ2lzdGdlcnMNCj4gaW4gdGhlIHNlY3VyZSB3b3JsZC4gR0NF
IHdpbGwgZW5hYmxlIHRoZSBzZWN1cmUgYWNjZXNzIHBlcm1pc3Npb24gdG8gdGhlDQo+IEhXIHdo
byB3YW50cyB0byBhY2Nlc3MgdGhlIHNlY3VyZSBjb250ZW50IGJ1ZmZlci4NCj4gDQo+IEFkZCBD
TURRIHNlY3VyZSBtYWlsYm94IGRyaXZlciB0byBtYWtlIENNRFEgY2xpZW50IHVzZXIgaXMgYWJs
ZSB0bw0KPiBzZW5kaW5nIHRoZWlyIEhXIHNldHRpbmdzIHRvIHRoZSBzZWN1cmUgd29ybGQuIFNv
IHRoYXQgR0NFIGNhbiBleGVjdXRlDQo+IGFsbCBpbnN0cnVjdGlvbnMgdG8gY29uZmlndXJlIEhX
IGluIHRoZSBzZWN1cmUgd29ybGQuDQo+IA0KPiBUT0RPOg0KPiAxLiBTcXVhc2ggY21kcV9zZWNf
dGFza19leGVjX3dvcmsoKSBpbnRvIGNtZHFfc2VjX21ib3hfc2VuZF9kYXRhKCkuDQo+IDIuIENh
bGwgaW50byBURUUgdG8gcXVlcnkgY29va2llIGluc3RlYWQgb2YgdXNpbmcgc2hhcmVkIG1lbW9y
eSBpbg0KPiAgICBjbWRxX3NlY19nZXRfY29va2llKCkuDQo+IDMuIFJlZ2lzdGVyIHNoYXJlZCBt
ZW1vcnkgYXMgY29tbWFuZCBidWZmZXIgaW5zdGVhZCBvZiBjb3B5aW5nIG5vcm1hbA0KPiAgICBj
b21tYW5kIGJ1ZmZlciB0byBJV0Mgc2hhcmVkIG1lbW9yeS4NCj4gNC4gVXNlIFNPRlRERVAgdG8g
bWFrZSBjbWRxX3NlY19wcm9iZSBsYXRlciB0aGFuIE9QVEVFIGxvYWRlZCBhbmQgdGhlbg0KPiAg
ICBtb3ZlIGNtZHFfc2VjX3Nlc3Npb25faW5pdCBpbnRvIGNtZHFfc2VjX3Byb2JlKCkuDQo+IDUu
IFJlbW92ZSB0aW1lb3V0IGRldGVjdGlvbiBpbiBjbWRxX3NlY19zZXNzaW9uX3NlbmQoKS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEphc29uLUpILkxpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogSHNpYW8gQ2hpZW4gU3VuZyA8c2hhd24uc3VuZ0BtZWRpYXRl
ay5jb20+DQo+IC0tLQ0KDQpbc25pcF0NCg0KPiArLyoqDQo+ICsgKiBzdHJ1Y3QgcmVhZGJhY2tf
ZW5naW5lIC0gcmVhZGJhY2sgZW5naW5lIHBhcmFtZXRlcnMuDQo+ICsgKiBAZW5naW5lOiBIVyBl
bmdpbmUgZmxhZyBmb3IgcmVhZGJhY2suDQo+ICsgKiBAc3RhcnQ6IHN0YXJ0IGFkZHJlc3MgcGEg
b2YgcmVhZGJhY2sgYnVmZmVyLg0KPiArICogQGNvdW50OiB1MzIgc2l6ZSBjb3VudCBvZiByZWFk
YmFjayBidWZmZXIuDQo+ICsgKiBAcGFyYW06IG90aGVyIHBhcmFtZXRlcnMgbmVlZCBpbiBzZWN1
cmUgd29ybGQuDQo+ICsgKi8NCj4gK3N0cnVjdCByZWFkYmFja19lbmdpbmUgew0KPiArCXUzMiBl
bmdpbmU7DQo+ICsJdTMyIHN0YXJ0Ow0KPiArCXUzMiBjb3VudDsNCj4gKwl1MzIgcGFyYW07DQo+
ICt9Ow0KDQpVc2VsZXNzLCBzbyBkcm9wIGl0Lg0KDQpSZWdhcmRzLA0KQ0sNCg==

