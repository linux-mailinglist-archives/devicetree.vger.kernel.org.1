Return-Path: <devicetree+bounces-259407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C+VBIg3d2nhdAEAu9opvQ
	(envelope-from <devicetree+bounces-259407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:44:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E4C8625F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9142C3011C67
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B66F329E76;
	Mon, 26 Jan 2026 09:35:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023122.outbound.protection.outlook.com [40.107.44.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB89329C74;
	Mon, 26 Jan 2026 09:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769420110; cv=fail; b=EpteaCzSAIUDXOBLznvZvUVJ9IG+cU4ZTi5cy3dfM+iV4aZMPEokWlNbgPqVEOPvlv4RtNRxZVJaxvo/W8BOcHqs2h4CB0i4M8kB/gZn35Er6Ccn9k0/A657qRuEPiYT514kTQem8rNLlQfCXH/GnBOZUwJLmfUI8aLjMARJjJA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769420110; c=relaxed/simple;
	bh=N0gEErMkGWNncg0xNMrU74vn2uvH0HTYDSKUOhY02ZE=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=itbyoU0yTWxI2hHOiGgcng4WjLtiULUA1/XGGmrvcUaVM9d5WMveq/gvRLlBxghpDLrH9uWOj9DWVHt4JQBxz9ibqHRnBRiY5YDggt0P1tmTTdERIb2dBjGoUvlfX0p3Farro6RWzJVEefK4m/H3sEocEX4Cgi2a8EtrOyhxTsQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=40.107.44.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AJGHUD1y98nvy9KsY2LwpEgUvooABSqY05UC0eaa/PTKxEGi2g/5rV9yqFfhfqG6moi+KevwT8ipOGHdBlxztC/yk8yLybcC11hSctMvfErOD9a93nfmnQVC6754dTfPVloUQcTBtKNnCoYsY90C4/K0yNhb8XgNg4r1qmDp9STKsa/AYPFmreX9I7UuhpgiqBMz0nfaZ6Sf7KZbmHvICLUcMOrDThk9JpkLdRyLHrcV7r6222LiOG9RcASrbw3xD1wEQBiPHbFY7ScDb2FRKxMAv4Kk3ApUGagwHwFERW33ZcdjcpmibWYflIv9THaMu70cSvH/acK/hxoekoGuhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N0gEErMkGWNncg0xNMrU74vn2uvH0HTYDSKUOhY02ZE=;
 b=p5FHe56qFwmgG2v52N8z2KapyXPHelzoqIMcs0FaMCvggsr+Flor1PxtQyDDR178dck1rCFy+CZouLDs6nfVWeC7SVqEKXYQUt1Fkq2wNElau7Nf8JL3GabVzy5uVeB5URs46WkD7G0gfWnpyrP+mGTi3GwAH3C4nxRnBOBcsMkXpz94C5gXOZhbPX1LjhQZ5LcZ3Ke1EQrXkf3S7rJsurQFTxgpmgjnh2iBMOgfF9iotAYysSe1/g9Jt9nDi3XoppI0V9knoXkdFJshgIHiv4qpSK1C5tHKgWzzppwIbDGUGe1sZe8hQ8AWYTSGlzzDl5icCza6YUYaYHwpm/IOPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SEZPR03MB8712.apcprd03.prod.outlook.com (2603:1096:101:229::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 09:35:04 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec%8]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 09:35:04 +0000
From: Nick Xie <nick@khadas.com>
To: George Stark <gnstark@salutedevices.com>
CC: "robh@kernel.org" <robh@kernel.org>, "khilman@baylibre.com"
	<khilman@baylibre.com>, "jbrunet@baylibre.com" <jbrunet@baylibre.com>,
	"martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "kernel@salutedevices.com"
	<kernel@salutedevices.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "xianwei.zhao@amlogic.com" <xianwei.zhao@amlogic.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nick@xieqinick.com" <nick@xieqinick.com>
Subject:
 =?gb2312?B?u9i4tDogW0RNQVJDIGVycm9yXSBbUEFUQ0ggdjMgMy8zXSBhcm02NDogZHRz?=
 =?gb2312?B?OiBtZXNvbi1zNC1zOTA1eTQta2hhZGFzLXZpbTFzOiBhZGQgaW5pdGlhbCBk?=
 =?gb2312?Q?evice_tree?=
Thread-Topic: [DMARC error] [PATCH v3 3/3] arm64: dts:
 meson-s4-s905y4-khadas-vim1s: add initial device tree
Thread-Index: AQHchcs85PtJgI/z6UGNTQ29KhbpNLVgRXIAgAPziDk=
Date: Mon, 26 Jan 2026 09:35:04 +0000
Message-ID:
 <PS1PPF62EEA9B1D287E26DFE619BB840508AE93A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
References: <20260115030015.1334517-1-nick@khadas.com>
 <20260115030015.1334517-4-nick@khadas.com>
 <09df45e1-90b5-4618-9197-c724142bd83a@salutedevices.com>
In-Reply-To: <09df45e1-90b5-4618-9197-c724142bd83a@salutedevices.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PS1PPF62EEA9B1D:EE_|SEZPR03MB8712:EE_
x-ms-office365-filtering-correlation-id: 355887da-2fc1-4969-079f-08de5cbe2fba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|366016|376014|7416014|38070700021;
x-microsoft-antispam-message-info:
 =?gb2312?B?TDlsQ1JsaUMvMnByUENOSWRWYittUktzSExZWUwzMVQ4NFpHWklEd2FKalZB?=
 =?gb2312?B?VmhmQ1ZvWnQ4ak9QQ0N4bEdaeThDVU41U0cwQ2Z4QmlsWVYyTW9MOU1yZmdl?=
 =?gb2312?B?Y0dHMHJydHd4eEVLZ20zQk52dmVoWElVcDJnT2phN0IxWXdQNHBZSGcvbmhi?=
 =?gb2312?B?amVWdXNaLzh2a1ppSTZzaUN2aml5TWxmWjErM2J4UUhrZVhPajN0S2ZubFpZ?=
 =?gb2312?B?VjViWnZiMWwyaTZKdFJPUzVtblpJM0trZVIwU28rUU0zUCtVQ0h3RFNDV2hr?=
 =?gb2312?B?UjRJUjA0aTBWQzRCQXhyc1J3eVh3Wkw4eUgzaVMzSmZ6eURyQXVGbDhjRElS?=
 =?gb2312?B?ZkdlRmdBdWNyRkVvbHM4Q3Vnb2h1NDVuaG5WdldWeHNZWldWTHVyN204VDMv?=
 =?gb2312?B?dDM3QmhkN2h6WHQyNjFURUtHaGNLWEJUNUpvckJoalNvWGFBczRmMk9PS0lq?=
 =?gb2312?B?SGR1Um50alpxR0xid1BRNFhoOTRQd1R0RndwNkRVV3ZBUjhCSkZIajluTTBx?=
 =?gb2312?B?QXBUblFnRUxiZTBtK3ZGS0ZXQ3ZJeUl0TFowUyt2VWR4VlUrZ05wZ0h5RFdJ?=
 =?gb2312?B?eXRYRFB4bjlwZDlHVThXRXIwZGMvcTFBY2lNSHlCYUpubWhNOHhtK0VzN05w?=
 =?gb2312?B?MEowbWdaZHFveDNOd3NqeG9BVHQ0TmhsWGJSTG9CTmpXbTE4dnhBZTBwQUZk?=
 =?gb2312?B?dHhJUUJsNzhyRjNRV2czeUVVQ2FVTmxoNmhvTHBMV3lQL2ZwS0ZlbW1zOWdv?=
 =?gb2312?B?TmVPVzcvUUZKcWVLV1gvemNwNWpMaWtUQlorbkVtenlMenpuVmM0eENSTkpl?=
 =?gb2312?B?ZmF4YkhFcjBEM3ByazBBYS9RTXVjalVPdk54cXM0M1ZadDExQ1VlakpTS0N4?=
 =?gb2312?B?RnRZV0MvT3FBTGhDQktYOG04T3hEWWtjUmVBQy9OYmhONkFWUHVmKzBYeHZr?=
 =?gb2312?B?c09ib3A0U0lRa0xvRXpCZm1TcXZLTHlRUU5JQURGRXNTL3hSSE5jU0RpV1Fh?=
 =?gb2312?B?S1FoekVRWm5FOFVFVzh5YTZ3bmNldC81amw1M2ZDYS9lbEJvZ3JlM2VjcWJP?=
 =?gb2312?B?a0NYczhzRjh1RVdkcTFXMHpENFlMUzNPQ2FBalRpT1ZHZlZUNE9DZ3F3SGFh?=
 =?gb2312?B?SGpyTWZSSVFQSllwVGVEK3VhajVFREJPTVJDWFg3OEhudS8ySXdleXV1QWZE?=
 =?gb2312?B?eUhJSW9xSVFqYWt0eFM5NXdNb2JzUzVpVVNvejBTa2I2Q1plQlhxLzN3Y2M5?=
 =?gb2312?B?RlJoeEpqcWIrNUpoTnBWQ1BpU3NPcTVYeE9jTklubXIxRlZYWklIMm1mQnRK?=
 =?gb2312?B?RllVcHQyaTRCbHZRVkJXV2ZrMXRYeTIyTjBMOGsyT2w5L01WZklSaC9CUXlm?=
 =?gb2312?B?dklKTEd2ZlJUajhGd1FVMTgvbTZpN2xnazJiY3ZjMm9XZnI4U0FCKzY1SkRh?=
 =?gb2312?B?eXNIc3Evak1hVXFPKzYyb0pBck95Q0JLT1JNREVwb2ZDaUhFaDJXNkFPMXN5?=
 =?gb2312?B?cnRVVm5kVm9nL0owK0tzQ1UrOXgyMmdHdktCeEdMZ25rZkxTK0Z0aUI1V2FI?=
 =?gb2312?B?V2FvNHUzNU1leEpsQ0puTWp3dW1DWXYwWHdKUzBaWldpMThBZVNmV0J2c21u?=
 =?gb2312?B?Szh3a0VxTmdac3hiMkdkRE1pUzAvRFNIVFA3dHVTM1FwOXFQU0VSU0VVbW5Z?=
 =?gb2312?B?TkFKZjIxZGxBZENmSGR4dWc4QnNUR3N6bDdXOERjY0tMY3VnSU1TdzRiTStW?=
 =?gb2312?B?QkRoajczZVhvbVBkcDJMTlVOYml3cVhGYWYvL2NLR01aWWF6UFlCSW44ZzZY?=
 =?gb2312?B?TnJRNUFDbWdDOVBTNmhiOTlwbFNNNzgvb0llUGlrVkQ5bmJJdWVUWHZMWUJ1?=
 =?gb2312?B?QU1KUDZzK0NzSUEzWk9vRDBPeGxOTmhrQmw0QURaNFJrbW9hRTJ6bERjcUlR?=
 =?gb2312?B?VWJ3akk5cWpBKzZkR0o2Rm1EUGMvM1d5U2pEbDgzUGp6VUtoVjhaTGtoTm94?=
 =?gb2312?B?bFljU2oyVFVEelEzS0I3dnJiZ29LRkJMbW1QR1hhd2NvYkUycnpMckRJL096?=
 =?gb2312?B?djlqSXgrN3YyZ1VMaFRxMlN4aEdOYVpVK3JlbFZFOW10QStsbUROaWVZMUhF?=
 =?gb2312?Q?6Dq/+N0jtijiOTlVnATcZILL3?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?UVpkQUhCdUZsRVdESExMekVaVld2cnl3OVJ6SWYySnUzbkx6SmZUckQ0RGRm?=
 =?gb2312?B?TXpWbzd2amduTUZhNWdWM3lJek8xT05Mcm16UTdIY0ZIU0hjaEUyVnJtT285?=
 =?gb2312?B?UU5ScFc3dGNKU1J3aDBXSGhHZ2JVSnk0NVMrUkx0UTYxU3BJb3FPYmlvYjQ5?=
 =?gb2312?B?ZHpsMndrUGJMUXE1cDIrYllMaHRnV1E0SUNRbUM1bWNobGZHRzhmOHBRMlY5?=
 =?gb2312?B?UGdYU1RMWDIwVCtWRnp4MEg4SW4rTGw3ZzZQU0c2eWEvVWxwL2lhSC9wUGdF?=
 =?gb2312?B?YS9LQXpJa28wa3plenhnek5jWVVVaFBLQldaTTQyUGlTWmhmMFE3REZHa2t5?=
 =?gb2312?B?a1A4eVlHbDdCbmRES0swWVUyekZmenE2UXhWQ25BdXk5RzlodE9ORXo1VENK?=
 =?gb2312?B?bFVyS3cwSWdYWFdLYzlEYjgrNkF5bUJTQWxjejhsc05PSytBczBBb3MrKzhr?=
 =?gb2312?B?U09SNEcwVEtNQXU1cGxyTC80c3lhYmEzUERCdUlydVRBcDYyc25lcWkvYU9i?=
 =?gb2312?B?L3c3VGtyZWdVb2x3dW9tTkdkK2VxaEJjUWpKZ0hRaTNxSndCR0pzNitXQUtr?=
 =?gb2312?B?V2c4Ni9SRXU4R2lvZzlaTW9hYzBzY3kxT3lmQVF4TkxjNm1TekxlaDQrQnFj?=
 =?gb2312?B?b0dibTZRTG1WVkxjc1BzS2J6bjZSSlpENVFkcUFmK0YzSkI3ampVL0hXNjRZ?=
 =?gb2312?B?NVk1KzhLdWhCS2FmcDdvS0ZxdGU4L2VkdXdYNG5NeU5TT2dUbzlRZDVrS3ht?=
 =?gb2312?B?RGRremFIU3JWdTBNV1pheWlKbE42c01yQ21TbnI2Ry9yeE0vNzdGVzVBUGRV?=
 =?gb2312?B?NE9vTWdLNmtna2lvYWc4VDhDckt6THorbTJFdW1VSVJvTks2ckl1M3Zpakk5?=
 =?gb2312?B?eTZabmpLeWgvSVUyekFZbkRuOW0xM01vNWxaYmdqS0k3NDQzMlRTajNaV1E2?=
 =?gb2312?B?WXl2TUxkUDlRS0dMWkpscjVKK05US0NMVDNEbklSTUhKZzJEek9DeVpJNDN0?=
 =?gb2312?B?SWEyb1hIM2s0VTF4aEFRR3E2MVNBU1Y4RzZvUjlYQjR5czN2RFIybis2b3F1?=
 =?gb2312?B?RUVCdjVnamFabksyUHdXZG93dXIrSllqVnBpNnhSRzY0U2hQWGhhWHBkSDV6?=
 =?gb2312?B?cjFWZVBvYWVsUFo5REFsU29iS3JXd1lNSkVEWWF2Q0EyWVVrOVBxSHEyazhk?=
 =?gb2312?B?b0VWdFpnOWk3dVZNTTBCSUZvWnEzc2tNKzAvMUVOSzd3SEdWNzR0dWVPT0hx?=
 =?gb2312?B?TGYrWUhQeFAwcG9IN1hNSS9oeSsyUWFRaVE2djU5YW4xZkRORG9QUS9vQ2JR?=
 =?gb2312?B?RXNNRCt1YXJsSlZrZXlpRzNaU0Q5L3REejdhT1RXcTZLTXpYM2lmMjdLNVJU?=
 =?gb2312?B?ZDJqZVFlZ3NscjlvUnlQelVya2M4Rll5ZE9DeC9sZnA0SVZIT1B6WitSSVdr?=
 =?gb2312?B?VVMrL2RKQzdsbnZBaFRYczJlMVJXNDIyV0h0RnF5U29QMlRnMGkrNFRkK0U2?=
 =?gb2312?B?ZTBrSHQ4L0huS3Nqb1lhanVjM3U3OEdJdEhWNmtPR3d6NG90cDNWR2NBMk10?=
 =?gb2312?B?VnNmbDdnVzNBeDU1Z1FlcG4zZ3I1K3hiL0xlVUtGRk0rVW91Tk9QVGdKRTZx?=
 =?gb2312?B?NkV5di9mc25RcW41eUVhMVRCNytTTmN5ZEh4WklHbnowVWFpL0N5ZmVaQUpz?=
 =?gb2312?B?cnZQMHdYTSs0WlhsS2thVVEvN1hKcll5OWhyc09NMFNickVMN01XZ0loRUFU?=
 =?gb2312?B?WFIraW1EYUx1WU5SbTBZSFRPSnpNTmVjYUZyYTI2NXZpVm1ZSE5lYWNIMGQv?=
 =?gb2312?B?ajl2ZXphd2tCQkFBcjdsV1lNQTM0VVZoK2Q5VldsVldQbUswWk83QVpMYU5a?=
 =?gb2312?B?N0hrOThyRHlSOXNBUnFrOXg3Sm5EUXUvcVEyc1U0MTZOdmRSeHlXd0VaZnk3?=
 =?gb2312?B?bzlhaHI1SjA3bnNIZEd2dDVZUElyTmZuaFlHZ1RMMG5sdE8vTDIrOENsTlJV?=
 =?gb2312?B?U1dhV3pEdThBc25PdjlLNWNFRVBJMnM1cC9EcVZmOXFzb2xMaVdCeFFGRnFl?=
 =?gb2312?B?cDlHNjkzZGwvcDd0b0dwQ0x4dzdMRldRT2pqQzYzSDhTd2ZDRkJFYTArR1Zz?=
 =?gb2312?B?OFhhZFBXQmtXdUtNekVtZTFjNnNXZXRaYmVNLzBtRDExTTJPcE03VFgrcjJK?=
 =?gb2312?B?U0ZBWDlTSm1HcXMyY1BDWXdqK2t1cjFFRnM0TGFIeXNGSGRpQ203K1dhM280?=
 =?gb2312?B?dFJQdmFSSmU4cXpGSFJka2tWN3VFZGhtSVR5c2VJNmRhZjlraFE1c3VJUXVK?=
 =?gb2312?Q?K7RsNwlVnOMuQdSbsC?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 355887da-2fc1-4969-079f-08de5cbe2fba
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 09:35:04.6994
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EsfSMwnb8/c1L0LqwsN8ZLMNsVEDKkQT2yEuw9y7gxGCe449QYlx+CjH3opcu9eE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8712
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.64 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259407-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	GREYLIST(0.00)[pass,body];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[PS1PPF62EEA9B1D.apcprd03.prod.outlook.com:server fail,iu.edu:server fail,tor.lore.kernel.org:server fail,bootlin.com:server fail];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,googlemail.com,linaro.org,vger.kernel.org,lists.infradead.org,salutedevices.com,amlogic.com,xieqinick.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[PS1PPF62EEA9B1D.apcprd03.prod.outlook.com:mid,bootlin.com:url,iu.edu:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 68E4C8625F
X-Rspamd-Action: no action

PiBUaGFua3MgZm9yIHRoZSBwYXRjaC4gU2luY2UgeW91IGhhdmUga2hhZGFzIG1haWwgSSdtIHBy
ZXR0eSBzdXJlIHlvdSd2ZQo+IGhhZCB0aGUgcG9zc2liaWxpdHkgdG8gdGVzdCBpdCBvbiB0aGUg
cmVhbCB2aW0gYm9hcmQgYW5kIEkganVzdCBkb24ndAo+IGdldCBpdCBob3cgaXQgd29ya3Mgd2l0
aCB0aGUgdm9sdGFnZSB0YWJsZSBhYm92ZS4gVGhlIHByb2JsZW0gaXMgdGhhdAo+IHB3bSBpcyBj
YWxjdWxhdGVkIGluY29ycmVjdGx5IGluIHRoZSB1cHN0cmVhbSBwd20tbWVzb24gZHJpdmVyLiBU
aGF0Cj4gdm9sdGFnZSB0YWJsZSBhcHBlYXJlZCB0byBiZSB1c2VkIGluIGVhcmx5IGFtbG9naWMg
YmwgbG9hZGVyIGFuZAo+IGFwcHJvcHJpYXRlIHB3bSBpcyBpbml0aWFsaXplZCBmcm9tIGEgdGFi
bGUncyByZWNvcmQuIER1dHkgY3ljbGUgdmFsdWUKPiBpcyB0cmFuc2xhdGVkIHRvIHB3bSByZWdz
IGNvcnJlY3RseS4gTGF0ZXIgd2hlbiBrZXJuZWwgc3RhcnQgcnVubmluZwo+IHB3bS1yZWd1bGF0
b3IgZHJpdmVyIGlzIHByb2JlZC4gSXQgcmVhZHMgdGhlIHB3bSByZWdzLCBjYWxjdWxhdGVzIGJh
Y2sKPiBkdXR5LWN5bGUgYW5kIHNlYXJjaCBpdCBpbiB0aGUgdGFibGUuIFNpbmNlIGNhbGN1bGF0
aW9uIGFsZ29zIGFyZSBub3QKPiBtYXRjaCBhbmQgdGhlIHRhYmxlIGRvZXNuJ3QgY29udGFpbiBm
dWxsIHJhbmdlIG9mIDAtMTAwJSB2YWx1ZXMKPiByZWd1bGF0b3IgZHJpdmVyIGRvZXNuJ3QgZmlu
ZCBjdXJyZW50IHZvbHRhZ2UuIEluIHN1Y2ggY2FzZSByZWd1bGF0b3IKPiBjb3JlIHNldHMgdGhl
IG1pbmltdW0gdm9sdGFnZSBmcm9tIHRoZSB0YWJsZSBbMV0gYW5kIHRoZSBTb0MgbWF5IGhhbmcK
PiAoZGVwZW5kaW5nIG9uIGJvYXJkKSBkdWUgdG8gbWluaW11bSB2b2x0YWdlIG1heSBiZSB0b28g
bG93IGZvciB0aGUKPiBjdXJyZW50IGZyZXF1ZW5jeSBTb0MgdXNlcy4KCkknbSBub3Qgc3VyZSBh
Ym91dCB0aGUgUFdNIGlzc3VlcywgYnV0IEkgY2hlY2tlZCBvbiB0aGUgcmVhbCBTOTA1WTQgaGFy
ZHdhcmUKYW5kICBpdCB3b3Jrcy4KCj4gT3IgSSdtIG1pc3Npbmcgc29tZXRoaW5nPwoKCj4gVGhl
cmUncyBub3QteWV0LXJldmlld2VkIHBhdGNoIHRoYXQgZml4ZXMgcHdtIGFsZ28gWzJdLiBUaGVy
ZSdzCj4gY2FsY3VsYXRpb24gZXhhbXBsZSBpbiB0aGUgY292ZXIgbGV0dGVyLgo+IFsxXSBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xOS1yYzUvc291cmNlL2RyaXZlcnMvcmVn
dWxhdG9yL2NvcmUuYyNMMTIyNwo+IFsyXSBodHRwczovL2xrbWwuaXUuZWR1LzI0MTIuMy8wMDgy
Ni5odG1sCgpXaGF0J3MgdGhlIHN0YXR1cyBvZiBzdWNoIHBhdGNoZXM/CgotLQoKQmVzdCByZWdh
cmRzCgpHZW9yZ2UKCg==

