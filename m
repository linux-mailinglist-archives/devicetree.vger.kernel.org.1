Return-Path: <devicetree+bounces-139713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4AEA16A10
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 10:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BB011887BE8
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E3D19DF4A;
	Mon, 20 Jan 2025 09:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="o6F3YJnE"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11013049.outbound.protection.outlook.com [52.101.67.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF6B18801A;
	Mon, 20 Jan 2025 09:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.67.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737367062; cv=fail; b=d7IXJacpykfUs/oMPtefqEpCcx5eEVtjlT5oaGQrVQlBMAkgz8u7RVzwzVw5q0w8jJDng4LUyiWth2J9Tw4fW6nIQmUA9WJolqbWpmN3Tu+EuLsWvA0VMPRN+b2BB4s1McX+m2E4PJ1/u38vjzCX376Nc/sHt/+h6o+2aLMAX7M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737367062; c=relaxed/simple;
	bh=Wk2nJUqkoOXVpMgdz4vQkoi6HOVnYQGulAmCAceNZoM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=p4VaQTaQzjGVsL0njG3l2mmAynnoPTaSNyw54LFABT6k7cVA+0AKQOjjW8Utds4cLB+LpCVo+HLyPQ4p5UbwDNi81RWmnnVHR5gh7fqlNq9HzYpA4L26Z1108dHpq6q3ZNKg7YeU7ByxD4n++eX967peQyYk2uWCxX8KuxNIcaA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=pass (1024-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=o6F3YJnE; arc=fail smtp.client-ip=52.101.67.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SL0PTSgciZZ0mTp67ECIJUj3cW0OowXwnAm23xRqDKOfekKNrazxS9YACDsh52hpOpe12ErYlZZE6NbN9hBxyX58XnDVnxXFoS3ynpDjU0uwTMJRwebMEcAADyGnvafjRWVYpoh1c+k47DiEfNqhsfXhYuKySXxZQ6r6hwMmvU12+JrY2QHF8jBh9+4RcZr6GeKwj8NbM6H2uy+PyfDpKEY9sfs3YVMhaTuhcbbDnmf4+hDLebCAo13P1JduVmu86+ndHK/DfC457XI2nj2cN8Eisd/p9W4gaemgVDbz8Ytwdp6ta8i9/1RUuKkCllErk1BOZFDwje83iiRW+xJANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wk2nJUqkoOXVpMgdz4vQkoi6HOVnYQGulAmCAceNZoM=;
 b=y+ZirpG54eO+N/dlOQ2cDmCLsEJVBic+cqWSPRMW7Xd8baZDPKhzMHFfOwfG34r1riHBiORJo0ZJfBVCh/ZD8HxRzNVcoEVMW8ZtsTd3PnkgxhSUO91U286OmiMR3SuV0HYmOpUYPRnFXJkDyTRqOZRLPmJqiQnl/T+Uxe3BpUX5a2Pkk8biqkys4no59romchQ+K7zOEhI/HhCIlHmrhbeP+bbFBp9c68PxdWrCsQBCRGKQ9kOPULkGpXOrO4g+0ygo+movSlTmJSOwcSEFJOMz6eh23+sEQk6Kky8JbdBXWPhImGh++30L+4tnyB2Q64LF8nPs6BKpnmSBryinJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobileye.com; dmarc=pass action=none header.from=mobileye.com;
 dkim=pass header.d=mobileye.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobileye.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wk2nJUqkoOXVpMgdz4vQkoi6HOVnYQGulAmCAceNZoM=;
 b=o6F3YJnEeEWvekF+ma6DeWojzN0BMCouF48fkU5DPZ6fFmAbdwy4tamCf0OQeMtRp78iBg289uy/bwrZlyzeiWg0tQQM2X7gfgkszY76G9AFbHCBGIlWwhngRumgeXZUmIFQXz5aSxveoYP6KwvS7I6dT5K0sG2p1wQHFjqoigc=
Received: from VI1PR09MB2333.eurprd09.prod.outlook.com (2603:10a6:803:82::16)
 by GV2PR09MB5913.eurprd09.prod.outlook.com (2603:10a6:150:75::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.19; Mon, 20 Jan
 2025 09:57:34 +0000
Received: from VI1PR09MB2333.eurprd09.prod.outlook.com
 ([fe80::fef9:cf7b:cbc2:d3b7]) by VI1PR09MB2333.eurprd09.prod.outlook.com
 ([fe80::fef9:cf7b:cbc2:d3b7%3]) with mapi id 15.20.8356.010; Mon, 20 Jan 2025
 09:57:34 +0000
From: Vladimir Kondratiev <Vladimir.Kondratiev@mobileye.com>
To: Anup Patel <anup@brainfault.org>, Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
CC: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 0/2] riscv,aplic: support for hart indexes
Thread-Topic: [PATCH v4 0/2] riscv,aplic: support for hart indexes
Thread-Index: AQHbYosFYyla6ruZ50C+jmEaFG+rqrMffL//
Date: Mon, 20 Jan 2025 09:57:34 +0000
Message-ID:
 <VI1PR09MB2333B79BC237FB5BB03893D394E72@VI1PR09MB2333.eurprd09.prod.outlook.com>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
In-Reply-To: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobileye.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR09MB2333:EE_|GV2PR09MB5913:EE_
x-ms-office365-filtering-correlation-id: d8cb3c72-4273-4851-dc90-08dd3938dcce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|7416014|376014|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?d9mGSDK1q23TNjPz+PcVPDb/2IYehNwy+XEuamzBYGQzsJSjO1QZ9G5qEI?=
 =?iso-8859-1?Q?I8hsNhFOSqcm+Hd+LDQalSXN7xfmb2I13lnbUEzqeBuKgT+bLRSWEgZR62?=
 =?iso-8859-1?Q?pKcFH5tQCDQRHlbUkDZ3E45+Z5wea4qIqciC5eEsyHG3n1D7yi/fV5bpdP?=
 =?iso-8859-1?Q?HEpI/PBer6GhvucjrixaujrM/Bnr5nrv6BPbh+aYkHSjGCz3FccSXCofbC?=
 =?iso-8859-1?Q?zXvZeEaYDwojrtrWAC6wQU632NgJyhU6bVHAoXlr10kTaghU/3khPq1d5i?=
 =?iso-8859-1?Q?9znFCBKpoZBjuiKGopYrGs6xBycLaRUpEUWPpP5FtWWxuQB6uZFmea1ZX9?=
 =?iso-8859-1?Q?oXs/V/pIlkwi5GvTFl7AIRtjneSE/YWYHBYH7wsvkOfT/Qkxs9EJg11DDs?=
 =?iso-8859-1?Q?F2MiurvRzLsFxYdsbQNcIxc53GotnLtki5P4J7RQZhxa/FUsHSj3gPFwT4?=
 =?iso-8859-1?Q?waEM7Sd80U0u9tJfR8A6v8OUtRnsHzv95kWKy3SH7PT/bvCqFSpxGSORc1?=
 =?iso-8859-1?Q?5OmSrtA0X8s+xMarG2WzSZXGGKPnhHCoNkiDsEIaCXN77aAMYqthx5u2kL?=
 =?iso-8859-1?Q?ba9ZrbO9PMRtPUjVDnZmZ8JkNizlBntJ6aWwg4CKTxIMfN5NEKBYsy2Bk4?=
 =?iso-8859-1?Q?OVAhx2caVp9Rki4ngkJJoBCGP54JL7GRNnQpJDic8vq7xOP0W1oyUeT5CS?=
 =?iso-8859-1?Q?WyZFd5IRYCkM+kubIosqVpXmGdB+KophGNJ41Dcy+td6DuvbVWwMcjQgRd?=
 =?iso-8859-1?Q?UsSYUtrwP0bXW3eSDHpD7BzXp/m1I8efjdYDDwBDSHJjVuYBFciv25XAl5?=
 =?iso-8859-1?Q?K8rqn72Sm0gr5RhVa/4U2kRZ6cEEOmCyJqkqpyqndLYgqqtrycOH1nRjqr?=
 =?iso-8859-1?Q?jbAe1OWPkzGv17XcCITkcx8/pYbycRWEPxAYkkkFrqy0tqETOHc+DKdel6?=
 =?iso-8859-1?Q?40XtxUD415hBe1wZ0y7SopYGOuREHVqOrtnJcuhwQ/RopHwXz+/sgWfc0d?=
 =?iso-8859-1?Q?VYYbuO9+8KaH3Ri2x1bnOuyYQ6k7o0BipY7ioYv5AjgdTq6KXZqy2AkGbV?=
 =?iso-8859-1?Q?wwg+gfjaILi/pPM7WXRrXsKG+CB1/4HzuS91hQE5m5oHSUm8qI7FY25322?=
 =?iso-8859-1?Q?AaGvh49iuaIosUZ7fNW2QcXt1dU+q8/3MKKwtfJC3QD/AVmT7gLuNKirvN?=
 =?iso-8859-1?Q?U2ssu/4J1NssVAOwNTKWOGwpV1Oh2dLVVPpNSLKVhN8FMixrDkmAZs4/2+?=
 =?iso-8859-1?Q?OdSxAZ95eu4BbBAeLAVpEnvWUOWzj1bqSWYtT8r39kUxC+y9GuHn4nUQG1?=
 =?iso-8859-1?Q?894hvZPoWERy9i+kb4GCRYeZyg1K543RT+uxtWw8RHyf55s1osbl4U2l7c?=
 =?iso-8859-1?Q?vHeGWUYgwc4JFq5Mvl0I1p4n2N+EKfsToe6AURg/xwNq7tQpzSF0gOr20n?=
 =?iso-8859-1?Q?zm/OL9ryRZbE7AWGQe90OMfXwXD1/BDwXP9E458FcUS8/mpO6nnIZD++LF?=
 =?iso-8859-1?Q?GMW0Ky+r+g7MY8F7xYVtE6?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR09MB2333.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?DyHV4Bj6IssX7N8k3U6b1fTRylnk1ZdhYIi4k3RkkCmH5zR/p0K4CyJKMH?=
 =?iso-8859-1?Q?yDzde4fQruqS+dC7v74nTwvgzo9HyBWyQ6chHIryM24NSCXvkbGhhAq/gg?=
 =?iso-8859-1?Q?Ce4CecDlIrBLIeJgAkb5mIgtFQVQ1iPSk38JbNG4bCUEUXZIkd5dMjmM/J?=
 =?iso-8859-1?Q?V9MjTwbwJZLyUMxsd64nXSA35QIKf1RNuEdT+ShZU6ZTFYl2hJwbiWe/VP?=
 =?iso-8859-1?Q?9mPJ/UafXAfodYUNqOcNNYNgqGFY+5QGIRkvVUUXNW0lYhwNqxcdt1f9/1?=
 =?iso-8859-1?Q?1fm5nN9VFoRYxq7gH0wFzKODDPUlqSW1QVxdOekDaGOi8MM1bpfrEIfI8l?=
 =?iso-8859-1?Q?cmgbESHYu2H7QMdgW8om7lnLZFjcDg9/P3MwTSdyKPQP8NJ2CghEVoYOwZ?=
 =?iso-8859-1?Q?uv0edPhkrDUAC9IcC5/cZ6FD/j/uU6tCyI+pWzThSxlFTGkS6vgi/vw7/W?=
 =?iso-8859-1?Q?7/0a5GJNzuVqxWZzEZMTWrNBw8wjYIhBPDkFPyRupJmm9FCYCd7z9mhT9q?=
 =?iso-8859-1?Q?c/bk0zzsiZlpkghw20EOr/qyFJMU8ce/0Rck/3eXbsdN131jRIM5jnIBLH?=
 =?iso-8859-1?Q?FHBKTKjn2Q6fyF1s6gsOH/KMPKvw5qh1QIDSO0jskUpzFsszEVdaS4yQ4i?=
 =?iso-8859-1?Q?HKNn42K2aaOOeF0ubiROuKUhQ2n/3FOG/1XpTOkjP5p3/9J2v6dYZIlISu?=
 =?iso-8859-1?Q?X0EVB1XDXyYilQLNIGEQ/jxMfbiAL+MftBr3U1RAs4Oif9lXtOPubEB9q/?=
 =?iso-8859-1?Q?8yMIsR9c+J38HBONbj2aeN4h4zH+beCP3RpPXDTrF9g9fbYHf2gEBsURmB?=
 =?iso-8859-1?Q?X55fhZOLP7TOh/ZjLhsHrQtK1vDnCFEY5Qd7MQALsgy80EzTnJXVqIRas6?=
 =?iso-8859-1?Q?RkGIEtSP5zG5DReydx6ewV/0vC3IoAvaUkHQa8pRRUwNses64Od5XJ7vdT?=
 =?iso-8859-1?Q?1jDaPxCa/53Y8KyDslCIvNXv9N06WfA2NqBeizmZXa1tKff80vJDbotU/2?=
 =?iso-8859-1?Q?rgcw03etiKddbSRJpPVzq6TUpPuDMdEubqJOxZfpGPOrG050eAGLRxiHFi?=
 =?iso-8859-1?Q?7iy264m4RhKCyGjZNaOMaMYmYfZouz0pTZmRIkyZhm/N4BW4iFOh8DA6Gi?=
 =?iso-8859-1?Q?LmxOhSluKGq8Vy1FtOHwIMWZVF4ZTkgMLjKZBszTRXodx7A0kfOrZqCllK?=
 =?iso-8859-1?Q?exz1orKCyo4hOZHqMBI6RpQocYZOaULpewvQYlyl01RNCvDM3oqkGEIDGQ?=
 =?iso-8859-1?Q?WY1XwVZ1k/Kc4kT8Dpk0dIKZtuuPHn9qzyRvn7VtsrbJe1ydye4dcaoogV?=
 =?iso-8859-1?Q?wXivdp8QmJWGkuDZUHT3dl8v6BkUD8iBmtD1ZO6Y4irumu9hB9RozjR0Lk?=
 =?iso-8859-1?Q?DD7rqZJ6i/Aw/X9GoJe40cvvdPCQrZovE5zWtKkc0YJeaRpCpg070sYq+l?=
 =?iso-8859-1?Q?ZJx+GLS3Dh1/nxUF8ZpKpH2R7khKCcMQZvGBL9j+0mblG6p4cKjuFK8o3d?=
 =?iso-8859-1?Q?PARrMnC43whakvZey6kRkjzLLsJKiNZSK0o3OTSvO3hJCcdEfOni5Q3/ER?=
 =?iso-8859-1?Q?GM0MKtJbKHkjE6Yn4jba4eq1i729ickgAacN63kgZvHkxIEzQVhI1NYv8x?=
 =?iso-8859-1?Q?9ZEY7T+1N2TCFf8WHtrDk8eIENFPSCQboD?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: mobileye.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR09MB2333.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8cb3c72-4273-4851-dc90-08dd3938dcce
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2025 09:57:34.1839
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4f85ba13-6953-46a6-9c5b-7599fd80e9aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYOmxEgKxZ70MrKUq4Q3ipaMY859FArnfHw4yoRcRuVtO2nbbWf/uj/AVSyczZjIX0uv8S+yUuiDYOVYXd3SFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR09MB5913

Hi,=0A=
I want to complete with this patches, and trying to figure out where it sta=
nds.=0A=
I think I answered all questions asked about this patch set.=0A=
Any other questions/concerns?=0A=
Shall I do any changes?=0A=
=0A=
Thanks, Vladimir=0A=

