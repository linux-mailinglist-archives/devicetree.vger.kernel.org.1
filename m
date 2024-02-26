Return-Path: <devicetree+bounces-45736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 087DC86691D
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C0751C21B21
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A85B21CD36;
	Mon, 26 Feb 2024 04:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="IQNluQHZ";
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="XthtpFAS"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5B1F922;
	Mon, 26 Feb 2024 04:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=68.232.153.233
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920094; cv=fail; b=XbjiD9ozOeuHWMH4kY546gkBIFI1CjyJbBXAT0AaKCO5TjpY2EX0en02bHD9KuRDWXeU2iTqsw7uQVcWd/tbKgj+/pfBFuQX/MeoGllvHkD7PmcNIXRumcqZiCpgrNtXixOblVFn9CsoD5NL4b3lfl5MWQE4H5zGIolNZsAu6IM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920094; c=relaxed/simple;
	bh=8rj9Z0nz9pIG5lcMBWGJNfYk3hcVhk721nITO5Rjvko=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=PnGG0Cl4f3/DKR0AoTLwk2/S5/F8bwzL9v6mg0vRf7GaQEGUZoPVZVieyLm9RhHAv5L1fOtRIP5utW8ZbNaT5wF/vXWyFX9RsUE/GUnFXHnLXX3LVXXAWyNgtDTQM268unE3T8SeO0eNYFAOCwo6RqTI4RpFjNOcrbwTk7bHzZc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=IQNluQHZ; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=XthtpFAS; arc=fail smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1708920092; x=1740456092;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=8rj9Z0nz9pIG5lcMBWGJNfYk3hcVhk721nITO5Rjvko=;
  b=IQNluQHZMaNOq7n8N/tuUOyj6yW0rAw5XHTTHIety9g9t+2pfUgBgEzM
   z1ly70n30dokxWOlFNQe/oHktQ5VcI998zpSH0wte7q22zj4BPftHDhE1
   fcz/9mDeTCMpRZtJDo8v0E1vdhQjkyUwhJGwPBsghTrbnK/cm+thTgC4x
   2m+MBOowYARlpSpxsNc5IwDeLeM3T0Duu+1gTIgY27KPeCM/8OfXFxw+Z
   jiVtK8RHG+jPPSjl5LDk0oQMVhKDRZHKG7eSffiGR93TbAJCmnXxNMYcj
   W9mw/20d0JFgCnQubNElI6y5nWjNc4KYct88i5Gm9Uuj17Vg68+wgc9Gc
   Q==;
X-CSE-ConnectionGUID: sG8kTWq5Q+CB6HGHV1TAyQ==
X-CSE-MsgGUID: o2XPzK0fQVe/gbm04gff5A==
X-IronPort-AV: E=Sophos;i="6.06,185,1705388400"; 
   d="scan'208";a="16802329"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 25 Feb 2024 21:01:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 21:00:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 21:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tc1WNL+tMUOJmeEjVuiG9GgkPHYjONOvTpmWEqKOhWyBTSACzBzsoxQR/G8QsfQzMfQwVCbanwCeYqELj8z/4g2JtjG+qjEs56eKZE9SHuLeoLXTDsxd9lYi9gGCTKixZb+8W2QjzXeik8Km60w9iA7h43XNUraX8tV8MuGQj+Hkx7zY7u0MtZeMZaZhoNu9hW3G8Ch+BLanZIIxquoQmyjw1sW4RF6LCz5QYK8bfSNfM8LgOXQTy9bxPXoJev3p9dXdia5Wk9y7c/j1Jpwt8+LsanfIZjRYV8rI+X5kDbRP9lfJvDeu40ZCke/q71Ab3FfSUA0Xo5s3ysWKu2/PHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8rj9Z0nz9pIG5lcMBWGJNfYk3hcVhk721nITO5Rjvko=;
 b=IanP/byPdbqNialhkK63vLLAEJj/yvTEaYjp54oxs5VU97VpjLLMSxc1owvMiMfhlLYOeTGsXAxN/H2I7LQ9nD8SYQFxGZ1ImsYc5vT0hTERtYbj9ZEnvyP57aU0KPjaRRMjc/aDL75iTiYx2c/Yb2IpYfA+imC7olHoEbGqk4vgcT76PDWYCpUbVwaNFA6spxgGZlhlxtaxkc6ET8gNLWJ1b0mDq/uYsR+wigdfb+8S1wflXwDUI0ZhM+uIlm2N7AHhTDQxvE7mgmm5SkAtsL1MbpSwHzBfx4H8cpxH2w2ol8hUw+1OKTgh+08y4RI3ratv9A0tC2NwXi/EYBmijQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8rj9Z0nz9pIG5lcMBWGJNfYk3hcVhk721nITO5Rjvko=;
 b=XthtpFASkSOYOQjzW+I6DBPuAdZWtM14faP32yIfx/jioIJjY0D6M70E5yScEWR9ILfuz9Qd6hM00TPpSENEHHLiRiIrA2y/tO5rTmbxpyJv/nvA4z4T0f0P5AZt9WaKmCLOcJ8s1s5hrNdpljs7hjb1tWYiTkgs6BgeUrc1VDnGoXjXSzPpnaPPq+Iy3+1TYau8W93Yf+BKorvjF5NomjoRz6/lfXxf0xo1A85g4oMEff/iORn3rxQDiKNEcgUInzdVRpXWXXiCxbooBOh5t2ZTskufef9rEsQfF7wGV28VmDsS2wgUY1zkSjyz42+5t2M1TOt359A+MK9mce8Vsg==
Received: from PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16)
 by MW4PR11MB7032.namprd11.prod.outlook.com (2603:10b6:303:227::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Mon, 26 Feb
 2024 04:00:52 +0000
Received: from PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::c2e8:2ace:1ddf:54dd]) by PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::c2e8:2ace:1ddf:54dd%3]) with mapi id 15.20.7339.022; Mon, 26 Feb 2024
 04:00:52 +0000
From: <Dharma.B@microchip.com>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <linux@armlinux.org.uk>,
	<Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <Manikandan.M@microchip.com>, <arnd@arndb.de>,
	<geert+renesas@glider.be>, <Jason@zx2c4.com>, <mpe@ellerman.id.au>,
	<gerg@linux-m68k.org>, <rdunlap@infradead.org>, <vbabka@suse.cz>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<Hari.PrasathGE@microchip.com>, <akpm@linux-foundation.org>, <deller@gmx.de>
Subject: Re: [PATCH v4 2/4] drm/bridge: add lvds controller support for sam9x7
Thread-Topic: [PATCH v4 2/4] drm/bridge: add lvds controller support for
 sam9x7
Thread-Index: AQHaW2nxv9EE2s33Q029FyXbk4bAH7EcGfMA
Date: Mon, 26 Feb 2024 04:00:52 +0000
Message-ID: <73b85830-b4c0-496d-a030-9080ac21e111@microchip.com>
References: <20240209150757.66914-1-dharma.b@microchip.com>
 <20240209150757.66914-3-dharma.b@microchip.com>
In-Reply-To: <20240209150757.66914-3-dharma.b@microchip.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6451:EE_|MW4PR11MB7032:EE_
x-ms-office365-filtering-correlation-id: 1c8d7250-4ab4-42eb-5420-08dc367f8675
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tMW4NDG659GqVmAbAaxfmyEOTXt2Ad5HfgPMT+9lvjNItTUxcEBncY50Pjy94sPVqm1xUVaeKgyFbLfXky1I6NvmAkpVS61CFby/anqOM6hKEVim9mM6+0/haREn/C5XpHNF3P238YB3upJAIlxlb0Pb624UWTRAfe+tDtPlEf/woq2XhglSlKH3DzRtlx5vja5Vkbr5cU2BbjfiSIG+KU47u63gTV2fK7Qzbwzi9+wd4LmeYU9pHYbUUQPE1bDNTyVYgf5hQh1j8eEwExYtrRnOiPYZoPChPUUmJkuZ5qYaEjwM58cD2xB4EI11bWoVn8W1ntEf9qu8N6WwPuOhwaFaPkzVUezu9Ttcum5CkJQjiV7/pGctwLcnVGonx91t+PYHdQiyYeiUB741yLfVjef1Fv6WMyOMboEKe9b6e0ZxJQhNk0tdbFi9QB4+iJu03jja+1p+qqyOT2rxeTSYq2B5/XTr630z3HzmPAk5QrDsC8ueBWWPrHplWzSL2D+1LZxDP6HUTpYkPvZYyI0KI83EdPlQ8VVYAE4mdrz5CPLGkbPtFpAk3k+8PDbJrE/JdlDc4nBU50GE3tMgioxNDvIRUIoHS9ksWTbGFLr4sqTigcAMMqglZs4+2Jsx9Jk6Sd+30R66keS5SnNploNnSR8RGp54XTID3JSaFgxOBazRWzOU4nhznfj0pTqhMCq9bZzyk4aT55X9c1SmB/Ke5BqOfjyhxrNv3tuqlXJgZKY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(921011)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDFlYmcrWGd1d1NocDZtd3UvQzR6TkQyNUhJMmpRaXVtU1dCMkpNbGg5R0FS?=
 =?utf-8?B?V0FlWXpiQUhINzZpSGx0b1h6UVZVZVZ0elVBZ1lSOGdGdFRiTEEzZEZTVC8v?=
 =?utf-8?B?VXF6aHFjUkd4cXRDSnljRStHU1pSRzFoVzQzVjQ2R0NUTGdldFhGZGpvYWha?=
 =?utf-8?B?aEZ0UmhlY2ZJK25qNTBNTzFibFZvbjdNZnp6aE5NTG42YmdIZFhwSXdEUzhr?=
 =?utf-8?B?V09LdnNZZFh0UFBOclNIVndPV09iL0d6elUvdlBBeVlmN3ZuQzdmUjhKY3hm?=
 =?utf-8?B?VjlHNlRaQmwvVkVWWm95RE42eWRVOXViaWVSbmJpOTZYU3REUnNjR29ZdHJ1?=
 =?utf-8?B?azU2VXZBY080MUNSSFpzd2Z5dWN5NHVqS09DeEtGeFlBRjBDYkNyd0FDRlRM?=
 =?utf-8?B?aUthbmh5YVpOdU5mcTJBMGxuUkE0MmZUMytYUFV0dXBTdVF1V3Y5ZUxWRUJK?=
 =?utf-8?B?OGN3L2t5cGFPRnArVTM0L2xwa2Fnb2xIL2tPZmpra3ZkZFk0aWQxcXdTMFdJ?=
 =?utf-8?B?c0YvWlROcktHMlJkc2h5SnIvbXp1VU1tODJPLzFvNGVTbGdvU0l0Qy9tWDJz?=
 =?utf-8?B?dW43NXFhUHo0ZHNNVVM0cFFyN2dEK090d0lKK3ZCNE4rdkxWMFNZSEFjVG1P?=
 =?utf-8?B?WFpaREFNM2hYb0YrUDl3YUNGbkdlSGhiWnVaeXpncFZVUEF5Wm9kMVloV3do?=
 =?utf-8?B?ckZTTER6RUdUOTJ6V1ZzUmg2NXlSYWIvZmJFemphcEMxTFdnMm9BS0N4VUlx?=
 =?utf-8?B?b1dMVmhPN1JNOHQvUDFLalh2T3psaG9WUjV3a3V1ZFZIeTIvY2daai9hRG02?=
 =?utf-8?B?UTNHaStsRm1HWjYrU3d6SFF1K284NkZsblNVa2d4SXI4MFZUT21JT0pkSEh1?=
 =?utf-8?B?R1B2eW5MdVRaZmREVEFKQkg1d3FNbDFDMEgxbDBJeDZMSHU3ZzFud0xQU0VM?=
 =?utf-8?B?VEMzUXFrV210Q25jTTVKRzN5ZFJmK0h6elQ4SnNSRHRQbWlvSVZZMUdXSlhR?=
 =?utf-8?B?Yk9TdXFuWXJQem1DcVZVeWJjL1B3OG0xWXBOM1lHVVJmZHhPVHJ6TDVOOWtB?=
 =?utf-8?B?WlZzTFRuL0wvWmlscTB6V1haTnZlUXBoSm5WNDhzbDdJNWp2MDhBVjQwZ2Fa?=
 =?utf-8?B?NEtEVlZaTVFwWTZCRURwbEttNTluUXQwaHdCK2VxOHFhN2NUV1ZvNG1PN1dq?=
 =?utf-8?B?NFhxSVhiZko4aUtabW4yQW9ScWp6Mm1wYllzNnlid21RWXVrOWRveG03b3Va?=
 =?utf-8?B?RE45RnhWQS9xZFlPakZHcWk1b2lhd3NMdXB4ZjVBQUtrSHlWbnc0dHl6WG1J?=
 =?utf-8?B?NzlVM2RxN2hGbzlEdEJ1L0ZncHRDN25RcUtkNTIvc241MFhxTE05TDhkUy9m?=
 =?utf-8?B?TjIzVUtuc0l2MTZkbm9Ca3ErWkI0S0hEL2NqSTN5UzRGWDR3d1o1TFhsOG1s?=
 =?utf-8?B?QzdTUWx4ZVNjcXY2YmhMVklaRXZrTnZqWkVSZWozVkduK3BTQ3ZIUWZWTjBN?=
 =?utf-8?B?TEsyNXIyQlgrWDRTMlM0cFZJRlRxbWtXbUp0L04vUWpVQkZSeXBlRTJaNTda?=
 =?utf-8?B?WkoraDRSSmVMWVFlMlRoaGVqK2dpcW5tYzFIWnZ4YzU2blhZNTkrQmIrN1V0?=
 =?utf-8?B?ekdSb2s2aUJ3S09BSkk1OTBXdkdaTGVNenpuMVFaVWQ5eWJlVHgzcHBhWURj?=
 =?utf-8?B?bUhkemQ3U1dUZXZQZytIM3pvSFYyV0d4eHJlWXloWll0cmsrWUlTZ2ZIbklj?=
 =?utf-8?B?L05oN05mL1M4VWtrM2t1a2VBdnBLNml3cDcwL0hZb2Q1MzZaY0FQRkhoY2VV?=
 =?utf-8?B?bDB6NWhIaklucllwQ2NZc2NSZENmL1dBTWg5Zm1lZjNUNVJFM0MzcXo0R21B?=
 =?utf-8?B?V3JlWXFpV1RMcURjT0lGMUorMDZrZUtMTDRtdjJuQkh3c2xrVkVERS96TytO?=
 =?utf-8?B?bFZCdXlxQmtTZGkzL2wxNU1PNGFkSjUrWVE0QWg0aURHRHJHL0pmUzg0RmVU?=
 =?utf-8?B?Zm9uYUp6SXBjMWYrU3VIUGdmKzR5cHI2OWxsNG8raEgvM0lsU1hydk9pTENP?=
 =?utf-8?B?cHl6MTNRaVFXUmZkVzJvdnlKU3QrVG9GUThkQnA0L1dCR01JV3QzaHFmdGk1?=
 =?utf-8?Q?VHKCi6qaiHswKlIX4ndMhi040?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <98B1ADF7EFE1A643A430861DA9B186FA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c8d7250-4ab4-42eb-5420-08dc367f8675
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 04:00:52.4214
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jA+1x9cCV+hM4omjoqXKuJhTWV4IdDajrjwWLtDcvxsLPVeVsCGmEXOYP2DzbBs5XmMgnxWNhF8LHBkzZPywtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7032

DQpIaSBGb2xrcywNCg0KWW91ciBmZWVkYmFjayBpcyB2YWx1YWJsZSwgYW5kIEknbSBlYWdlciB0
byBhZGRyZXNzIGFueSBjb25jZXJucyBvciBtYWtlDQppbXByb3ZlbWVudHMgYXMgbmVlZGVkLiBU
aGFuayB5b3UgZm9yIHlvdXIgY29uc2lkZXJhdGlvbi4NCg0KT24gMDkvMDIvMjQgODozNyBwbSwg
RGhhcm1hIEIgLSBJNzA4NDMgd3JvdGU6DQo+IEFkZCBhIG5ldyBMVkRTIGNvbnRyb2xsZXIgZHJp
dmVyIGZvciBzYW05eDcgd2hpY2ggZG9lcyB0aGUgZm9sbG93aW5nOg0KPiAtIFByZXBhcmVzIGFu
ZCBlbmFibGVzIHRoZSBMVkRTIFBlcmlwaGVyYWwgY2xvY2sNCj4gLSBEZWZpbmVzIGl0cyBjb25u
ZWN0b3IgdHlwZSBhcyBEUk1fTU9ERV9DT05ORUNUT1JfTFZEUyBhbmQgYWRkcyBpdHNlbGYNCj4g
dG8gdGhlIGdsb2JhbCBicmlkZ2UgbGlzdC4NCj4gLSBJZGVudGlmaWVzIGl0cyBvdXRwdXQgZW5k
cG9pbnQgYXMgcGFuZWwgYW5kIGFkZHMgaXQgdG8gdGhlIGVuY29kZXINCj4gZGlzcGxheSBwaXBl
bGluZQ0KPiAtIEVuYWJsZXMgdGhlIExWRFMgc2VyaWFsaXplcg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogTWFuaWthbmRhbiBNdXJhbGlkaGFyYW4gPG1hbmlrYW5kYW4ubUBtaWNyb2NoaXAuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBEaGFybWEgQmFsYXN1YmlyYW1hbmkgPGRoYXJtYS5iQG1pY3JvY2hp
cC5jb20+DQo+IC0tLQ0KPiBDaGFuZ2Vsb2cNCj4gdjMgLT4gdjQNCj4gLSBObyBjaGFuZ2VzLg0K
PiB2MiAtPnYzDQo+IC0gQ29ycmVjdCBUeXBvIGVycm9yICJzZXJpYWxpemVyIi4NCj4gLSBDb25z
b2xpZGF0ZSBnZXQoKSBhbmQgcHJlcGFyZSgpIGZ1bmN0aW9ucyBhbmQgdXNlIGRldm1fY2xrX2dl
dF9wcmVwYXJlZCgpLg0KPiAtIFJlbW92ZSB1bnVzZWQgdmFyaWFibGUgJ3JldCcgaW4gcHJvYmUo
KS4NCj4gLSBVc2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIGFuZCBkcm9wIHRoZSBtY2hwX2x2
ZHNfcmVtb3ZlKCkuDQo+IHYxIC0+IHYyDQo+IC0gRHJvcCAncmVzJyB2YXJpYWJsZSBhbmQgY29t
YmluZSB0d28gbGluZXMgaW50byBvbmUuDQo+IC0gSGFuZGxlIGRlZmVycmVkIHByb2JlIHByb3Bl
cmx5LCB1c2UgZGV2X2Vycl9wcm9iZSgpLg0KPiAtIERvbid0IHByaW50IGFueXRoaW5nIG9uIGRl
ZmVycmVkIHByb2JlLiBEcm9wcGVkIHByaW50Lg0KPiAtIFJlbW92ZSB0aGUgTU9EVUxFX0FMSUFT
IGFuZCBhZGQgTU9EVUxFX0RFVklDRV9UQUJMRSgpLg0KPiAtIHN5bWJvbCAnbWNocF9sdmRzX2Ry
aXZlcicgd2FzIG5vdCBkZWNsYXJlZC4gSXQgc2hvdWxkIGJlIHN0YXRpYy4NCj4gLS0tDQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnICAgICAgICAgIHwgICA3ICsNCj4gICBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlICAgICAgICAgfCAgIDEgKw0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYyB8IDIyOCArKysrKysrKysrKysrKysrKysr
KysrKysNCj4gICAzIGZpbGVzIGNoYW5nZWQsIDIzNiBpbnNlcnRpb25zKCspDQo+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYw0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZpZyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvS2NvbmZpZw0KPiBpbmRleCAzZTZhNGUyMDQ0YzAuLjc0Y2EwZWRiNGUw
ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZpZw0KPiBAQCAtMTczLDYgKzE3MywxMyBAQCBj
b25maWcgRFJNX01FR0FDSElQU19TVERQWFhYWF9HRV9CODUwVjNfRlcNCj4gICAJICB0byBEUCsr
LiBUaGlzIGlzIHVzZWQgd2l0aCB0aGUgaS5NWDYgaW14LWxkYg0KPiAgIAkgIGRyaXZlci4gWW91
IGFyZSBsaWtlbHkgdG8gc2F5IE4gaGVyZS4NCj4gICANCj4gK2NvbmZpZyBEUk1fTUlDUk9DSElQ
X0xWRFNfU0VSSUFMSVpFUg0KPiArCXRyaXN0YXRlICJNaWNyb2NoaXAgTFZEUyBzZXJpYWxpemVy
IHN1cHBvcnQiDQo+ICsJZGVwZW5kcyBvbiBPRg0KPiArCWRlcGVuZHMgb24gRFJNX0FUTUVMX0hM
Q0RDDQo+ICsJaGVscA0KPiArCSAgU3VwcG9ydCBmb3IgTWljcm9jaGlwJ3MgTFZEUyBzZXJpYWxp
emVyLg0KPiArDQo+ICAgY29uZmlnIERSTV9OV0xfTUlQSV9EU0kNCj4gICAJdHJpc3RhdGUgIk5v
cnRod2VzdCBMb2dpYyBNSVBJIERTSSBIb3N0IGNvbnRyb2xsZXIiDQo+ICAgCWRlcGVuZHMgb24g
RFJNDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9NYWtlZmlsZQ0KPiBpbmRleCAyYjg5MmI3ZWQ1OWUuLmUzODA0
ZTkzZDMyNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9NYWtlZmlsZQ0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL01ha2VmaWxlDQo+IEBAIC0xMSw2ICsxMSw3
IEBAIG9iai0kKENPTkZJR19EUk1fTE9OVElVTV9MVDk2MTEpICs9IGxvbnRpdW0tbHQ5NjExLm8N
Cj4gICBvYmotJChDT05GSUdfRFJNX0xPTlRJVU1fTFQ5NjExVVhDKSArPSBsb250aXVtLWx0OTYx
MXV4Yy5vDQo+ICAgb2JqLSQoQ09ORklHX0RSTV9MVkRTX0NPREVDKSArPSBsdmRzLWNvZGVjLm8N
Cj4gICBvYmotJChDT05GSUdfRFJNX01FR0FDSElQU19TVERQWFhYWF9HRV9CODUwVjNfRlcpICs9
IG1lZ2FjaGlwcy1zdGRweHh4eC1nZS1iODUwdjMtZncubw0KPiArb2JqLSQoQ09ORklHX0RSTV9N
SUNST0NISVBfTFZEU19TRVJJQUxJWkVSKSArPSBtaWNyb2NoaXAtbHZkcy5vDQo+ICAgb2JqLSQo
Q09ORklHX0RSTV9OWFBfUFROMzQ2MCkgKz0gbnhwLXB0bjM0NjAubw0KPiAgIG9iai0kKENPTkZJ
R19EUk1fUEFSQURFX1BTODYyMikgKz0gcGFyYWRlLXBzODYyMi5vDQo+ICAgb2JqLSQoQ09ORklH
X0RSTV9QQVJBREVfUFM4NjQwKSArPSBwYXJhZGUtcHM4NjQwLm8NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvbWljcm9jaGlwLWx2ZHMuYw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAw
MDAwMDAwMDAwMDAuLmQzZmQ5ZDcyMmUzNg0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvbWljcm9jaGlwLWx2ZHMuYw0KPiBAQCAtMCwwICsxLDIyOCBAQA0K
PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0KPiArLyoNCj4gKyAq
IENvcHlyaWdodCAoQykgMjAyMyBNaWNyb2NoaXAgVGVjaG5vbG9neSBJbmMuIGFuZCBpdHMgc3Vi
c2lkaWFyaWVzDQo+ICsgKg0KPiArICogQXV0aG9yOiBNYW5pa2FuZGFuIE11cmFsaWRoYXJhbiA8
bWFuaWthbmRhbi5tQG1pY3JvY2hpcC5jb20+DQo+ICsgKiBBdXRob3I6IERoYXJtYSBCYWxhc3Vi
aXJhbWFuaSA8ZGhhcm1hLmJAbWljcm9jaGlwLmNvbT4NCj4gKyAqDQo+ICsgKi8NCj4gKw0KPiAr
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVudC5oPg0K
PiArI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+DQo+ICsjaW5jbHVkZSA8bGludXgvamlmZmllcy5o
Pg0KPiArI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9v
Zl9ncmFwaC5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3BpbmN0cmwvZGV2aW5mby5oPg0KPiArI2lu
Y2x1ZGUgPGxpbnV4L3BoeS9waHkuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZp
Y2UuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+DQo+ICsjaW5jbHVkZSA8bGlu
dXgvcmVnbWFwLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4NCj4gKw0KPiArI2luY2x1
ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiArI2luY2x1ZGUgPGRybS9kcm1fYnJpZGdl
Lmg+DQo+ICsjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPg0KPiArI2luY2x1ZGUgPGRybS9kcm1fcGFu
ZWwuaD4NCj4gKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9wcm9iZV9oZWxwZXIuaD4NCj4gKyNpbmNsdWRlIDxkcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVy
Lmg+DQo+ICsNCj4gKyNkZWZpbmUgTFZEU19QT0xMX1RJTUVPVVRfTVMgMTAwMA0KPiArDQo+ICsv
KiBMVkRTQyByZWdpc3RlciBvZmZzZXRzICovDQo+ICsjZGVmaW5lIExWRFNDX0NSCTB4MDANCj4g
KyNkZWZpbmUgTFZEU0NfQ0ZHUgkweDA0DQo+ICsjZGVmaW5lIExWRFNDX1NSCTB4MEMNCj4gKyNk
ZWZpbmUgTFZEU0NfV1BNUgkweEU0DQo+ICsNCj4gKy8qIEJpdGZpZWxkcyBpbiBMVkRTQ19DUiAo
Q29udHJvbCBSZWdpc3RlcikgKi8NCj4gKyNkZWZpbmUgTFZEU0NfQ1JfU0VSX0VOCUJJVCgwKQ0K
PiArDQo+ICsvKiBCaXRmaWVsZHMgaW4gTFZEU0NfQ0ZHUiAoQ29uZmlndXJhdGlvbiBSZWdpc3Rl
cikgKi8NCj4gKyNkZWZpbmUgTFZEU0NfQ0ZHUl9QSVhTSVpFXzI0QklUUwkwDQo+ICsjZGVmaW5l
IExWRFNDX0NGR1JfREVOX1BPTF9ISUdICQkwDQo+ICsjZGVmaW5lIExWRFNDX0NGR1JfRENfVU5C
QUxBTkNFRAkwDQo+ICsjZGVmaW5lIExWRFNDX0NGR1JfTUFQUElOR19KRUlEQQlCSVQoNikNCj4g
Kw0KPiArLypCaXRmaWVsZHMgaW4gTFZEU0NfU1IgKi8NCj4gKyNkZWZpbmUgTFZEU0NfU1JfQ1MJ
QklUKDApDQo+ICsNCj4gKy8qIEJpdGZpZWxkcyBpbiBMVkRTQ19XUE1SIChXcml0ZSBQcm90ZWN0
aW9uIE1vZGUgUmVnaXN0ZXIpICovDQo+ICsjZGVmaW5lIExWRFNDX1dQTVJfV1BLRVlfTUFTSwlH
RU5NQVNLKDMxLCA4KQ0KPiArI2RlZmluZSBMVkRTQ19XUE1SX1dQS0VZX1BTU1dECTB4NEM1NjQ0
DQo+ICsNCj4gK3N0cnVjdCBtY2hwX2x2ZHMgew0KPiArCXN0cnVjdCBkZXZpY2UgKmRldjsNCj4g
Kwl2b2lkIF9faW9tZW0gKnJlZ3M7DQo+ICsJc3RydWN0IGNsayAqcGNsazsNCj4gKwlpbnQgZm9y
bWF0OyAvKiB2ZXNhIG9yIGplaWRhIGZvcm1hdCAqLw0KPiArCXN0cnVjdCBkcm1fcGFuZWwgKnBh
bmVsOw0KPiArCXN0cnVjdCBkcm1fYnJpZGdlIGJyaWRnZTsNCj4gKwlzdHJ1Y3QgZHJtX2JyaWRn
ZSAqcGFuZWxfYnJpZGdlOw0KPiArfTsNCj4gKw0KPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgbWNo
cF9sdmRzICpicmlkZ2VfdG9fbHZkcyhzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQ0KPiArew0K
PiArCXJldHVybiBjb250YWluZXJfb2YoYnJpZGdlLCBzdHJ1Y3QgbWNocF9sdmRzLCBicmlkZ2Up
Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW5saW5lIHUzMiBsdmRzX3JlYWRsKHN0cnVjdCBtY2hw
X2x2ZHMgKmx2ZHMsIHUzMiBvZmZzZXQpDQo+ICt7DQo+ICsJcmV0dXJuIHJlYWRsX3JlbGF4ZWQo
bHZkcy0+cmVncyArIG9mZnNldCk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBs
dmRzX3dyaXRlbChzdHJ1Y3QgbWNocF9sdmRzICpsdmRzLCB1MzIgb2Zmc2V0LCB1MzIgdmFsKQ0K
PiArew0KPiArCXdyaXRlbF9yZWxheGVkKHZhbCwgbHZkcy0+cmVncyArIG9mZnNldCk7DQo+ICt9
DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGx2ZHNfc2VyaWFsaXNlcl9vbihzdHJ1Y3QgbWNocF9sdmRz
ICpsdmRzKQ0KPiArew0KPiArCXVuc2lnbmVkIGxvbmcgdGltZW91dCA9IGppZmZpZXMgKyBtc2Vj
c190b19qaWZmaWVzKExWRFNfUE9MTF9USU1FT1VUX01TKTsNCj4gKw0KPiArCS8qIFRoZSBMVkRT
QyByZWdpc3RlcnMgY2FuIG9ubHkgYmUgd3JpdHRlbiBpZiBXUEVOIGlzIGNsZWFyZWQgKi8NCj4g
KwlsdmRzX3dyaXRlbChsdmRzLCBMVkRTQ19XUE1SLCAoTFZEU0NfV1BNUl9XUEtFWV9QU1NXRCAm
DQo+ICsJCQkJTFZEU0NfV1BNUl9XUEtFWV9NQVNLKSk7DQo+ICsNCj4gKwkvKiBXYWl0IGZvciB0
aGUgc3RhdHVzIG9mIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJzIHRvIGJlIGNoYW5nZWQgKi8NCj4g
Kwl3aGlsZSAobHZkc19yZWFkbChsdmRzLCBMVkRTQ19TUikgJiBMVkRTQ19TUl9DUykgew0KPiAr
CQlpZiAodGltZV9hZnRlcihqaWZmaWVzLCB0aW1lb3V0KSkgew0KPiArCQkJZGV2X2VycihsdmRz
LT5kZXYsICIlczogdGltZW91dCBlcnJvclxuIiwgX19mdW5jX18pOw0KPiArCQkJcmV0dXJuOw0K
PiArCQl9DQo+ICsJCXVzbGVlcF9yYW5nZSgxMDAwLCAyMDAwKTsNCj4gKwl9DQo+ICsNCj4gKwkv
KiBDb25maWd1cmUgdGhlIExWRFNDICovDQo+ICsJbHZkc193cml0ZWwobHZkcywgTFZEU0NfQ0ZH
UiwgKExWRFNDX0NGR1JfTUFQUElOR19KRUlEQSB8DQo+ICsJCQkJTFZEU0NfQ0ZHUl9EQ19VTkJB
TEFOQ0VEIHwNCj4gKwkJCQlMVkRTQ19DRkdSX0RFTl9QT0xfSElHSCB8DQo+ICsJCQkJTFZEU0Nf
Q0ZHUl9QSVhTSVpFXzI0QklUUykpOw0KPiArDQo+ICsJLyogRW5hYmxlIHRoZSBMVkRTIHNlcmlh
bGl6ZXIgKi8NCj4gKwlsdmRzX3dyaXRlbChsdmRzLCBMVkRTQ19DUiwgTFZEU0NfQ1JfU0VSX0VO
KTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludCBtY2hwX2x2ZHNfYXR0YWNoKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UsDQo+ICsJCQkgICAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBm
bGFncykNCj4gK3sNCj4gKwlzdHJ1Y3QgbWNocF9sdmRzICpsdmRzID0gYnJpZGdlX3RvX2x2ZHMo
YnJpZGdlKTsNCj4gKw0KPiArCWJyaWRnZS0+ZW5jb2Rlci0+ZW5jb2Rlcl90eXBlID0gRFJNX01P
REVfRU5DT0RFUl9MVkRTOw0KPiArDQo+ICsJcmV0dXJuIGRybV9icmlkZ2VfYXR0YWNoKGJyaWRn
ZS0+ZW5jb2RlciwgbHZkcy0+cGFuZWxfYnJpZGdlLA0KPiArCQkJCSBicmlkZ2UsIGZsYWdzKTsN
Cj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgbWNocF9sdmRzX2VuYWJsZShzdHJ1Y3QgZHJtX2Jy
aWRnZSAqYnJpZGdlKQ0KPiArew0KPiArCXN0cnVjdCBtY2hwX2x2ZHMgKmx2ZHMgPSBicmlkZ2Vf
dG9fbHZkcyhicmlkZ2UpOw0KPiArCWludCByZXQ7DQo+ICsNCj4gKwlyZXQgPSBjbGtfZW5hYmxl
KGx2ZHMtPnBjbGspOw0KPiArCWlmIChyZXQgPCAwKSB7DQo+ICsJCURSTV9ERVZfRVJST1IobHZk
cy0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBsdmRzIHBjbGsgJWRcbiIsIHJldCk7DQo+ICsJCXJl
dHVybjsNCj4gKwl9DQo+ICsNCj4gKwlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGx2ZHMtPmRl
dik7DQo+ICsJaWYgKHJldCA8IDApIHsNCj4gKwkJRFJNX0RFVl9FUlJPUihsdmRzLT5kZXYsICJm
YWlsZWQgdG8gZ2V0IHBtIHJ1bnRpbWU6ICVkXG4iLCByZXQpOw0KPiArCQljbGtfZGlzYWJsZShs
dmRzLT5wY2xrKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0KPiArCWx2ZHNfc2VyaWFsaXNl
cl9vbihsdmRzKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgbWNocF9sdmRzX2Rpc2FibGUo
c3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgbWNocF9sdmRzICps
dmRzID0gYnJpZGdlX3RvX2x2ZHMoYnJpZGdlKTsNCj4gKw0KPiArCXBtX3J1bnRpbWVfcHV0KGx2
ZHMtPmRldik7DQo+ICsJY2xrX2Rpc2FibGUobHZkcy0+cGNsayk7DQo+ICt9DQo+ICsNCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBtY2hwX2x2ZHNfYnJpZGdlX2Z1bmNz
ID0gew0KPiArCS5hdHRhY2ggPSBtY2hwX2x2ZHNfYXR0YWNoLA0KPiArCS5lbmFibGUgPSBtY2hw
X2x2ZHNfZW5hYmxlLA0KPiArCS5kaXNhYmxlID0gbWNocF9sdmRzX2Rpc2FibGUsDQo+ICt9Ow0K
PiArDQo+ICtzdGF0aWMgaW50IG1jaHBfbHZkc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQ0KPiArew0KPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7DQo+ICsJ
c3RydWN0IG1jaHBfbHZkcyAqbHZkczsNCj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKnBvcnQ7DQo+
ICsNCj4gKwlpZiAoIWRldi0+b2Zfbm9kZSkNCj4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ICsNCj4g
KwlsdmRzID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqbHZkcyksIEdGUF9LRVJO
RUwpOw0KPiArCWlmICghbHZkcykNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwlsdmRz
LT5kZXYgPSBkZXY7DQo+ICsNCj4gKwlsdmRzLT5yZWdzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNl
KGx2ZHMtPmRldiwNCj4gKwkJCXBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNF
X01FTSwgMCkpOw0KPiArCWlmIChJU19FUlIobHZkcy0+cmVncykpDQo+ICsJCXJldHVybiBQVFJf
RVJSKGx2ZHMtPnJlZ3MpOw0KPiArDQo+ICsJbHZkcy0+cGNsayA9IGRldm1fY2xrX2dldF9wcmVw
YXJlZChsdmRzLT5kZXYsICJwY2xrIik7DQo+ICsJaWYgKElTX0VSUihsdmRzLT5wY2xrKSkNCj4g
KwkJcmV0dXJuIGRldl9lcnJfcHJvYmUobHZkcy0+ZGV2LCBQVFJfRVJSKGx2ZHMtPnBjbGspLA0K
PiArCQkJCSJjb3VsZCBub3QgZ2V0IHBjbGtfbHZkcyBwcmVwYXJlZFxuIik7DQo+ICsNCj4gKwlw
b3J0ID0gb2ZfZ3JhcGhfZ2V0X3JlbW90ZV9ub2RlKGRldi0+b2Zfbm9kZSwgMSwgMCk7DQo+ICsJ
aWYgKCFwb3J0KSB7DQo+ICsJCURSTV9ERVZfRVJST1IoZGV2LA0KPiArCQkJICAgICAgImNhbid0
IGZpbmQgcG9ydCBwb2ludCwgcGxlYXNlIGluaXQgbHZkcyBwYW5lbCBwb3J0IVxuIik7DQo+ICsJ
CXJldHVybiAtRUlOVkFMOw0KPiArCX0NCj4gKw0KPiArCWx2ZHMtPnBhbmVsID0gb2ZfZHJtX2Zp
bmRfcGFuZWwocG9ydCk7DQo+ICsJb2Zfbm9kZV9wdXQocG9ydCk7DQo+ICsNCj4gKwlpZiAoSVNf
RVJSKGx2ZHMtPnBhbmVsKSkNCj4gKwkJcmV0dXJuIC1FUFJPQkVfREVGRVI7DQo+ICsNCj4gKwls
dmRzLT5wYW5lbF9icmlkZ2UgPSBkZXZtX2RybV9wYW5lbF9icmlkZ2VfYWRkKGRldiwgbHZkcy0+
cGFuZWwpOw0KPiArDQo+ICsJaWYgKElTX0VSUihsdmRzLT5wYW5lbF9icmlkZ2UpKQ0KPiArCQly
ZXR1cm4gUFRSX0VSUihsdmRzLT5wYW5lbF9icmlkZ2UpOw0KPiArDQo+ICsJbHZkcy0+YnJpZGdl
Lm9mX25vZGUgPSBkZXYtPm9mX25vZGU7DQo+ICsJbHZkcy0+YnJpZGdlLnR5cGUgPSBEUk1fTU9E
RV9DT05ORUNUT1JfTFZEUzsNCj4gKwlsdmRzLT5icmlkZ2UuZnVuY3MgPSAmbWNocF9sdmRzX2Jy
aWRnZV9mdW5jczsNCj4gKw0KPiArCWRldl9zZXRfZHJ2ZGF0YShkZXYsIGx2ZHMpOw0KPiArCWRl
dm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsNCj4gKw0KPiArCWRybV9icmlkZ2VfYWRkKCZsdmRz
LT5icmlkZ2UpOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG1jaHBfbHZkc19kdF9pZHNbXSA9IHsNCj4gKwl7DQo+ICsJ
CS5jb21wYXRpYmxlID0gIm1pY3JvY2hpcCxzYW05eDc1LWx2ZHMiLA0KPiArCX0sDQo+ICsJe30s
DQo+ICt9Ow0KPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbWNocF9sdmRzX2R0X2lkcyk7DQo+
ICsNCj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG1jaHBfbHZkc19kcml2ZXIgPSB7
DQo+ICsJLnByb2JlID0gbWNocF9sdmRzX3Byb2JlLA0KPiArCS5kcml2ZXIgPSB7DQo+ICsJCSAg
IC5uYW1lID0gIm1pY3JvY2hpcC1sdmRzIiwNCj4gKwkJICAgLm9mX21hdGNoX3RhYmxlID0gbWNo
cF9sdmRzX2R0X2lkcywNCj4gKwl9LA0KPiArfTsNCj4gK21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIo
bWNocF9sdmRzX2RyaXZlcik7DQo+ICsNCj4gK01PRFVMRV9BVVRIT1IoIk1hbmlrYW5kYW4gTXVy
YWxpZGhhcmFuIDxtYW5pa2FuZGFuLm1AbWljcm9jaGlwLmNvbT4iKTsNCj4gK01PRFVMRV9BVVRI
T1IoIkRoYXJtYSBCYWxhc3ViaXJhbWFuaSA8ZGhhcm1hLmJAbWljcm9jaGlwLmNvbT4iKTsNCj4g
K01PRFVMRV9ERVNDUklQVElPTigiTG93IFZvbHRhZ2UgRGlmZmVyZW50aWFsIFNpZ25hbGluZyBD
b250cm9sbGVyIERyaXZlciIpOw0KPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOw0KDQotLSANCldp
dGggQmVzdCBSZWdhcmRzLA0KRGhhcm1hIEIuDQoNCg==

