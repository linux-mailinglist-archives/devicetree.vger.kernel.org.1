Return-Path: <devicetree+bounces-274477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFZUBEV2sml/MwAAu9opvQ
	(envelope-from <devicetree+bounces-274477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:16:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE5026EBEE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6AF3301D0D8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0028030F7EF;
	Thu, 12 Mar 2026 08:16:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023119.outbound.protection.outlook.com [52.101.127.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B1432E6BC;
	Thu, 12 Mar 2026 08:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.119
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773303361; cv=fail; b=QI4ake9Jb1eVxbRs2slFZmz/uJqtriGRCm+qB6H5TVfpkhG3+pm2hlcLPD30MmCm+ELcrSaGTFXEnIC56qguDoo7k5nv4BSEkRX48B7mcD3TE6qeQ+OMVKZ6zszYwCYynqBx7j7STD5ZTjfcQzTb0zgzU1MkgQ0YPzdq9O121ng=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773303361; c=relaxed/simple;
	bh=Z4rEhiTC7ZkM7oKBHLp7z4QDCA8ykDqW1Z6A/pqIKwA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=O4xT/2NJ7dKo/PCdMWtUf5MkE9Uuu+NBpNFa3zMst46jBQVLw7m7eTK1wWJkdFbhYl6dwVwxUQexmkSyzW4gxb0e1UoP2sjqRtVqzrXh9w/0DLLSaE2PfZDaa6iklibRQIltkkB5dsqn2Kmsgd/P9EZyHvlnZyY7sj3cRg6jRaE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vC5kZmkRDbOjpULwo6mVCKHTs+orfi+j0AJz1ZQU/c0TAONbTbycx1h5oiUSy55v0hwwYvgqRxpkVMafBo4yZSYNromQRhaM72omlzZP8o2MBme+MEzo1y3iDTHcUQEL4UuhuNSDo/ruI5AmDopa2Cys6/w+bvxBsmDFtwYdWZ3aEBvSlrLLnk01l5ftCHUUTrEytp1rWRERvSQP144JZ4dDZQFLgOANm3c+Pxc/vg2M2S1rPbqhug+Eqf+LGMGKwzbFfyrpguRdJ+8UxRCzgpWBWgiVee+RoH54b+L80SJ+7rI/coSeOlP+eHSNoO5CVzLIA1WRELHP1SokwK9DQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z4rEhiTC7ZkM7oKBHLp7z4QDCA8ykDqW1Z6A/pqIKwA=;
 b=WNn7C9TNxaHAMn+qF6yATaRqlipUrsVjIWDhWrnAW29XbzJmgiyEwk0i3gPU9Vgef3rkaLh6F0FqdrNkjegRt+EphuIL0P6T5JMv/nqSBNAC4l0wBdQW9WHkSPqQNYM0VhaZv2ZzB3RVFtWZpQIhuDyhkBToXoJY2tg3tFCHQrE6VhNyGgHX5EnyxVwWCCDPHP8t/0facWH5d+kWv2VIxN+MspW6t+kVWJMjIj6+PJl85hlMWo6DDF0dY3Ff7xhtFRVRYEpzjiWtJXaP9XEJYYOhXIY9gziQj8BvCk2uE0K1FFhSOvsgghav7awOlC3ufl9Tn8KpS7Mdxkk1xYdbZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cixtech.com; dmarc=pass action=none header.from=cixtech.com;
 dkim=pass header.d=cixtech.com; arc=none
Received: from TYZPR06MB7334.apcprd06.prod.outlook.com (2603:1096:405:a4::9)
 by SI6PR06MB7271.apcprd06.prod.outlook.com (2603:1096:4:249::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Thu, 12 Mar
 2026 08:15:54 +0000
Received: from TYZPR06MB7334.apcprd06.prod.outlook.com
 ([fe80::6400:f7b:8514:1154]) by TYZPR06MB7334.apcprd06.prod.outlook.com
 ([fe80::6400:f7b:8514:1154%6]) with mapi id 15.20.9700.013; Thu, 12 Mar 2026
 08:15:54 +0000
From: Cunyuan Liu <cunyuan.liu@cixtech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "liviu.dudau@arm.com"
	<liviu.dudau@arm.com>, "maarten.lankhorst@linux.intel.com"
	<maarten.lankhorst@linux.intel.com>, "mripard@kernel.org"
	<mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
	"airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "heiko@sntech.de"
	<heiko@sntech.de>, "marex@nabladev.com" <marex@nabladev.com>, "dev@kael-k.io"
	<dev@kael-k.io>, "prabhakar.mahadev-lad.rj@bp.renesas.com"
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, "andre.przywara@arm.com"
	<andre.przywara@arm.com>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, cix-kernel-upstream
	<cix-kernel-upstream@cixtech.com>
Subject: Re: [PATCH 2/3] dt-bindings: display: arm,komeda: add Arm China
 Linlon D6 compatible
Thread-Topic: [PATCH 2/3] dt-bindings: display: arm,komeda: add Arm China
 Linlon D6 compatible
Thread-Index: AQHcsRufOiCRHcX2nE62p+ONSMcsCbWpxbcAgADEtLA=
Date: Thu, 12 Mar 2026 08:15:54 +0000
Message-ID:
 <TYZPR06MB7334C88FD32F5428E4F9D263F844A@TYZPR06MB7334.apcprd06.prod.outlook.com>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-3-cunyuan.liu@cixtech.com>
 <de86f0ca-8d63-48c3-a1ae-3c1a801bef5f@kernel.org>
In-Reply-To: <de86f0ca-8d63-48c3-a1ae-3c1a801bef5f@kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cixtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB7334:EE_|SI6PR06MB7271:EE_
x-ms-office365-filtering-correlation-id: a53c8f95-46c3-4920-fc74-08de800f94e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700021|921020|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info:
 zGRrkUA9Z/c/Zgj0Khse6LQyG/JoC1Zneit3s18YARiF0ApWgx5dUMbvGU6f5Emb7GxS99Pzin8HEgrwxlAJq5RMzWbt0h2xn5ZQqhqFvY2nfj5nViDRMM/XdibCHGjEBiTNau9Efcb+BuwF+LCIOnfLrRTeKFpBrVu2E3IhefqbfvFR2KxLjPyo70qo2O/iS68BXvyvcF1UmrPMDJhdUFe9Tu5o+NiQ7KZ/w0NxDC7agmTWWRb9NwYwq+KmLqbbgI/YdIKIKt2sQJKKU61LM4neeDKFmjYkaa6QTMnbnEjYMqRuvoeJ37Hobn3SAVQRcDoqbdqLhFCMpNZCa7YOz7MfWoIWM2FpVgRApEj0/A8DuzsbGCgBdKmKkmqjGoq0ZWoh7YYe13fO8+2CCzzBPVfX5IZCgOVvQWWgfjro/E7Pav5jxYca2XJ45b+rlT0c+ycxHULQsY0C1HG8vlvTk0LSsqW6B7v4DtPhhsq9UTcScLJkFbQeKImx9JjiHKM0EuAFVKGEw7XmDmOPUaz1Me/cIQplCez/w+8yDNpb+nG/5bngOzVqrzQl43FoDRyZ8N1CGyF8yY+P/DagRvONcH/eOzUhRITwA+TIi8fia25LypCXXdQTU7CPfo3YxSGF0dpXILFF2u8OhPsR9CzOkSfucH3cJG1dGd4zd9dCbJBb7zHJ/y07J2Qd6mwQ2A21/q+dBLWNBXldXE5V7gz6tXQFCvBO3Z3s1itt/qGwHW1w/U+BewaVzYU87MpeMr/gNVJP+rtYAhbOT2tLDcnOyna6uk6bgXIVw92Ex98xAcnr/wc3OEraTgdlUQHw3iOv
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB7334.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(921020)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZUpOK3JHcnRPWVR2ekMwbnl4Q0tyTThpeFpPTE5oR0g5OThzc1Y5OEk5WXZx?=
 =?utf-8?B?NjExWUd1dVBaQldKUnlRRU1RdUhSbmFLZnVPRG1NWUhhOWw4QkVIbkdid2tF?=
 =?utf-8?B?Tk1ZUUQ5UVNVdmtoL1M5R0VxMCtSMStqR0s1dzMxQXlrSElmUnA3eWJFbzNj?=
 =?utf-8?B?OVFhWW9VNDloTVhGSXBvTzI0NC9mWldyS1ZIWUIzbWFISFltMVdFQUFmUHBG?=
 =?utf-8?B?b2p5dEV4UW82VEVQY2ZKdHVCRU5TOUZuL3dmOVg3ZVl4WlBnRDRUYk51M0s5?=
 =?utf-8?B?NkVGYjA2YVltVU05dGJwbXhwcWp0V2VTLzc0RzhrUWpORDFHeUo0VVpwOUsy?=
 =?utf-8?B?NFQ0aUEvRllaVnF2djk3V0tUSE5ib1UxencvMXpIUDBBVHEzcmxUQU1DbEJ4?=
 =?utf-8?B?aFJJZHVUakN1dDFjRmFVV1pVN1FEZi9YRmI2ZUNCd2wyQ3lPbURHT25MRVli?=
 =?utf-8?B?bHFBelg2RkloaG1QaDNrMTFsRHM1TWpCRGFGbTI5VlZoU05sSzRZczVFZ1VN?=
 =?utf-8?B?UE93UFhNZUFKbi9nV3ptVlV1c2dYYzdIYXlIZWZiZ3hldWp3aFBPNkJLNDNs?=
 =?utf-8?B?aUFqVkduUGNQdldTQ3pLdkhFZk43cERteklIRVhuNFR0N2ZrbFptSEI1OW9O?=
 =?utf-8?B?OCtOYncvSmlYSjRrcGtrWi9oTDA0RGlQdE45Y1V1NjhlSDhNVnlnUFByd0lj?=
 =?utf-8?B?dFhzRjhZM2dJa0lHVGdNVUtjNGEwdWJ5UkFoeGUxdFJCbGRVUDYycHVrLzNH?=
 =?utf-8?B?VFV6dGVWekM2MlhJVzZLTy85QnNaNFJST2IrVjB3UUdxVit4Lys2U0xXQUdO?=
 =?utf-8?B?WnhqUjhhUUxENy9MS3pIREFYaDIxSjhRcUUrQmY3bE1ud0NZcWZKQ2RRd0lX?=
 =?utf-8?B?WVAweWF5RUQxdEw4VE9OUW9XUGpOVDZrYm1CV1N2RDlHWTFUUTdMcm1jRWNH?=
 =?utf-8?B?ODZXWU56SjRYVWM0S2UybjBJUVIzZFd6RitPT3BLSXNXNi8zNEUvbDVEam1s?=
 =?utf-8?B?K2dHMHNwZy9mcDBsTkFhemZuU1cwU1FFQmt6ZzJ3UXdKWDdKRDNSaTcyRU1O?=
 =?utf-8?B?ODQ2MDVTalQyU2lwOGVRWUk1RmpkQXFKYmk0aW93UnBENlg1VDY1Q2NKRk0z?=
 =?utf-8?B?MjQzdXo5RHJFQm1qMW9aUlp2QmU0U2V6cUZmc0FNTHFsUkRnOHRvT3VQT2JJ?=
 =?utf-8?B?VlFKTW9xWE5teUhqenBva05ROEVZRzhtUFg3UUgxMWx1YS9JUitZUDUwMVo1?=
 =?utf-8?B?TWNaQldZRU0za25kS0hMT3VwSTVDdUpyUVJNNEVzbk1pbzZSeGpXMkZnSmtD?=
 =?utf-8?B?NTRrckd3RkFjaHVUaFA2cmVNLzZaL1dCenB2NlZCYk1rY3MvRngyMUMyOGRH?=
 =?utf-8?B?K0lsY0dsMkR3NUlINDQyQml6SE9xYnlrVmZLK1FYUDNzR1k3RnpZVzlJdUNp?=
 =?utf-8?B?R2xQYmdVSHdvbFBtRU1qZ1lydkhzUE5RZi93L3ZGUlZMdjhIZHh0VkJSN0Yw?=
 =?utf-8?B?SW14eWVMSmZidGdnUWFEaG5Ed3l6YVczKzNIMkxYSWpqTFJuaFR2QVNXQy9n?=
 =?utf-8?B?VlpoNVptbkx3eG15UkRINFZ1cU82bjB1Vm1uTzhsR0sxUEl2dktuV1RkR0VD?=
 =?utf-8?B?TVltVW5xcmV0aGorRW0zVEJoUmRmeEx6RzVzQlp2RjlnbTZVbWVHWkZyMWNy?=
 =?utf-8?B?SEVUMTlHS254OTVQL1A4Uit6TDUzQXpWOUlPVGtJc1FXTlI4TWhXYnVVdCtZ?=
 =?utf-8?B?M1FneWg2MTFmUllUdGtUZ1FyRENWVUp0WnlKUVdycGhGZGdvUW5GT0F2L3BV?=
 =?utf-8?B?L3JxQ1A5ZmJwcmZyNlBidDZ4NVA3SXQ0MmFpWHZQN3ByeGx2Y3JWM05ING9x?=
 =?utf-8?B?SWFwc1crbjI1citPMVlGdTltdG90bER1VEovb1ZpcTEybnNFYnl4cENkN21B?=
 =?utf-8?B?MkkwK1lUY3B0QTErUndORGp1SDZib1lWMEVhZS9SUm5Ia3FjRlBOVkxEeEJ1?=
 =?utf-8?B?dFpMQVpYelZ5Ukt1TVFrOENEa2ZncFkzOGhPa1Z0TWVUZU5nRTNMNTNMaDJp?=
 =?utf-8?B?cmJSUzF1SHZjWHpsbHhkdFRSQXNkMCtRRmh2djlOa2MwbG9PY2FBSEZJZFBZ?=
 =?utf-8?B?dXF5Q1M2S1JXUkFyc3YvNzhSWEhpd2ZhVHcwVndMZlFXNkpoZDNLb2N5SGhH?=
 =?utf-8?B?Y2ZqMzBnTlExTzdjTzIxUVhDaGpxbFBndDlmYUdqMVVLZjV3aGlpZ2s3V2N2?=
 =?utf-8?B?Nm0zOFF2bUhBdXBISzFOK3hnYnQxU1RrUmV1RCsrVThsa3l3L2o4c0tKejJP?=
 =?utf-8?B?enhVU1l5TUcwOFladnVVK1VlcVp5K0xETTRsaW03RzRtNEd5NDFpZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB7334.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a53c8f95-46c3-4920-fc74-08de800f94e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:15:54.2953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQsw5DeDy9nlqDZh46ojHCt9JHRcab0dRLkfqjcxXOgm3DUMnSukU4jWQGKAurJj6/LT/Qn7MdW+XuD2+DBghQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI6PR06MB7271
X-Spamd-Result: default: False [3.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274477-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[cixtech.com];
	FREEMAIL_TO(0.00)[kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,TYZPR06MB7334.apcprd06.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 7BE5026EBEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IE9uIDExLzAzLzIwMjYgMDY6NTUsIEN1bnl1YW4gTGl1IHdyb3RlOg0KPiA+IEFkZCB0aGUg
QXJtIENoaW5hIExpbmxvbiBENiBkaXNwbGF5IGNvbnRyb2xsZXIgY29tcGF0aWJsZSBzdHJpbmcu
DQo+ID4NCj4gPiBMaW5sb24gRDYgaXMgcmVnaXN0ZXItY29tcGF0aWJsZSB3aXRoIE1hbGktRDcx
LCBzbyBkZXNjcmliZSBpdCBhcyBhDQo+ID4gdmVuZG9yLXNwZWNpZmljIGNvbXBhdGlibGUgd2l0
aCBhIGZhbGxiYWNrIHRvICJhcm0sbWFsaS1kNzEiLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTog
Q3VueXVhbiBMaXUgPGN1bnl1YW4ubGl1QGNpeHRlY2guY29tPg0KPiA+IC0tLQ0KPiA+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9hcm0sa29tZWRhLnlhbWwgfCAz
ICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYXJtLGtv
bWVkYS55YW1sDQo+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9hcm0sa29tZWRhLnlhbWwNCj4gPiBpbmRleCAzYWQzZWVmODljYTguLjU2ZmI0MTAzYjBkZCAx
MDA2NDQNCj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9hcm0sa29tZWRhLnlhbWwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9hcm0sa29tZWRhLnlhbWwNCj4gPiBAQCAtMjEsNiArMjEsOSBAQCBwcm9w
ZXJ0aWVzOg0KPiA+ICAgICAgICAtIGl0ZW1zOg0KPiA+ICAgICAgICAgICAgLSBjb25zdDogYXJt
LG1hbGktZDMyDQo+ID4gICAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS1kNzENCj4gPiArICAg
ICAgLSBpdGVtczoNCj4gPiArICAgICAgICAgIC0gY29uc3Q6IGFybWNoaW5hLGxpbmxvbi1kNg0K
PiANCj4gU28gdGhhdCdzIGVudW0gaW4gcHJldmlvdXMgZDMyIGVudHJ5Lg0KDQpIaSBLcnp5c3p0
b2YsDQoNClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzLg0KDQpUbyBtYWtlIHN1cmUgSSB1bmRlcnN0
b29kIGNvcnJlY3RseTogeW91IGFyZSBzdWdnZXN0aW5nIHRvIG1lcmdlIHRoZQ0KbGlubG9uLWQ2
IGFuZCBtYWxpLWQzMiBjYXNlcyBpbnRvIGEgc2luZ2xlIGVudHJ5IGFuZCB1c2UgYW4gZW51bSBm
b3INCnRoZSBmaXJzdCBjb21wYXRpYmxlIHN0cmluZywgbGlrZSB0aGlzOg0KY29tcGF0aWJsZToN
CiAgICBvbmVPZjoNCiAgICAgIC0gaXRlbXM6DQogICAgICAgICAgLSBlbnVtOg0KICAgICAgICAg
ICAgICAtIGFybSxtYWxpLWQzMg0KICAgICAgICAgICAgICAtIGFybWNoaW5hLGxpbmxvbi1kNg0K
ICAgICAgICAgIC0gY29uc3Q6IGFybSxtYWxpLWQ3MQ0KICAgICAgLSBjb25zdDogYXJtLG1hbGkt
ZDcxDQoNCklmIHNvLCBJIHdpbGwgc2VuZCBhbiB1cGRhdGVkIHBhdGNoIGxhdGVyLg0KDQpUaGFu
a3MsDQpDdW55dWFuDQoNCj4gDQo+ID4gKyAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS1kNzEN
Cj4gPiAgICAgICAgLSBjb25zdDogYXJtLG1hbGktZDcxDQo+ID4NCj4gPiAgICByZWc6DQo+IA0K
PiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg==

