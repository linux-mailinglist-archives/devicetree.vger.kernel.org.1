Return-Path: <devicetree+bounces-32615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D510682FED6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 03:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F00951C22EE0
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 02:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0F41C0F;
	Wed, 17 Jan 2024 02:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="wkolp2zG";
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="j5CcrpL6"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB17417E9;
	Wed, 17 Jan 2024 02:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=68.232.154.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705458969; cv=fail; b=g2PnJk9de4Xz8jS6V8b3mLni06ZjJ8KcntGxWpjl0v+lPG0dTaUGekUVwuKQ6Xd8ehXefXfspc/wO8bGGNR+OTQGQYWJKIV+Hd8FZQnTJTI8gcQBf/HpwkG+CH4r9ZuQKTAwxWKSLu2ICMIvFFk7O5700hC0ipzIYt3T3ZVJMsU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705458969; c=relaxed/simple;
	bh=SeZhqpHfhhL14gEYlF5J7LST8mAd/5FSzjzIK+J2LQQ=;
	h=DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:X-IronPort-AV:
	 X-Amp-Result:Received:Received:Received:ARC-Message-Signature:
	 ARC-Authentication-Results:DKIM-Signature:Received:Received:From:
	 To:CC:Subject:Thread-Topic:Thread-Index:Date:Message-ID:References:
	 In-Reply-To:Accept-Language:Content-Language:X-MS-Has-Attach:
	 X-MS-TNEF-Correlator:x-ms-publictraffictype:
	 x-ms-traffictypediagnostic:x-ms-office365-filtering-correlation-id:
	 x-ms-exchange-senderadcheck:x-ms-exchange-antispam-relay:
	 x-microsoft-antispam:x-microsoft-antispam-message-info:
	 x-forefront-antispam-report:
	 x-ms-exchange-antispam-messagedata-chunkcount:
	 x-ms-exchange-antispam-messagedata-0:Content-Type:Content-ID:
	 Content-Transfer-Encoding:MIME-Version:
	 X-MS-Exchange-CrossTenant-AuthAs:
	 X-MS-Exchange-CrossTenant-AuthSource:
	 X-MS-Exchange-CrossTenant-Network-Message-Id:
	 X-MS-Exchange-CrossTenant-originalarrivaltime:
	 X-MS-Exchange-CrossTenant-fromentityheader:
	 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
	 X-MS-Exchange-CrossTenant-userprincipalname:
	 X-MS-Exchange-Transport-CrossTenantHeadersStamped; b=hsxUSM3NunvlS9VMNaS3QRP9lR/b1xEh6yslXbnmdQRSygV1pxjHVcONrYiBr71FvW1hC25p0ynAUmFQBTWSTnheCvtgictuR5cTQggM8QE1Cm9aLiYgYZGWPoMnQbkbL7M/+GJGf7TSjrvoBhjD6QaJw0whpFuqQGndHG31UvY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=wkolp2zG; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=j5CcrpL6; arc=fail smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1705458967; x=1736994967;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=SeZhqpHfhhL14gEYlF5J7LST8mAd/5FSzjzIK+J2LQQ=;
  b=wkolp2zGphqoWAQ+UInyL3NSn/yK+W/EKHg+l3mxCsYbN7c+vczIWlrF
   lLzngt0xjjXRWbdKMBku0/hAjqH7U+2GZ4Ep/3cMPCen9yyCVjc7qqejf
   MC2jJIvkhobaw+mT3tOYpbJiUE1KC4jkO1mWiKoXLOmhbZ9gg2HEBlWJh
   oSIhi/nVHCxdAHg6TrVFH9xwW50s0Ci+rbntfsMi0mT/U/umlENr2pMNw
   elPRr7xtW7wozoxlMrxzKp55URC8RqUOBjq05W9saofmoVScSjyTRoO/D
   bZWD9MRoqZ3dWSZ3v2/9jTKVQb1FtiAGAtRjQj/8sbC3rG72Usu4P2Gvu
   Q==;
X-CSE-ConnectionGUID: oCKMy2WoSFKismRMwoxpiA==
X-CSE-MsgGUID: APkDsmD2SDqh26p6OyTWSg==
X-IronPort-AV: E=Sophos;i="6.05,200,1701154800"; 
   d="scan'208";a="182075909"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 16 Jan 2024 19:36:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Jan 2024 19:35:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Jan 2024 19:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTJE2bephaq3zeT0NCYVycGs5CHWnVhUQs4Ic8lhTgAsDC3MgbphvYaPyyZK6AoyHdnrbUo7JAQdOebMesOgJA4ufYSFXzrHKT6XYrnoIYh2VIBEw9d+ihPkI2egqR+EN/SKgRYlU5nlCA/paKe3G8pOp+VO8DPrGqaB4hEhzhGI2Jm8twNE3KScRn5T0m3kSs3IL7CaSbUeWgWx6o69GD9GP3a2dM1CR2xvkRGpusxH7PbAtc641G+CXR6TgghubR56Y9scgsKL7iKyaUSLgErMHwwmCnX3XrfgXIJSy5RoPNdyTN8CDLAG7A1FnISGii8tTSiYvDcBNmygLlvvOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SeZhqpHfhhL14gEYlF5J7LST8mAd/5FSzjzIK+J2LQQ=;
 b=FcxaGhUhf7N7NeFYZLDxYo0pYKfOs2asbVjhAJVvk+WgOaAs9v7ce16Jj9OKe8koufBwkZ0JO3U+eyh8aAN/B6W0AfFXq4+udV1XvAHLmMEYSreWc+sgwrFVfnIVYeWpewNaz+gY5ZFPi6zuheSLAKBLgBYXEMXIQ+pCFquouFqpG2NiNc6G9HGDu3UvomlKoA3/x/amd5lPl/O7SF518mLtlsTDDEKlIS03nvcxaTcHAmXnPuP4Y3z8c+xkcIgTEdaVRmMnQK0rUYUaYM5Z7lvurGodu5dfnbOXDlOZif1R4HFcc+CcTx48T6CAdvv047pv9+DsYEd0tWORFKL04w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SeZhqpHfhhL14gEYlF5J7LST8mAd/5FSzjzIK+J2LQQ=;
 b=j5CcrpL6iiTvjoKdPl7wgTbuz7M/wuXnUZ/v1N2IUI3bYUgldr8mLzaaDSCxYqeBA15khHzQHxk7VRE4QUhgU2xy1RPeJXpy4lui+rbzow4SvA+NAIM9igwGJVAsZHJ77T+QirX2JUtBBMzTo108icAl7AOSt8ZuUoZG5f3THUNdN63pvnGIIZJRWNLPA5XXQKQr0hz4M1Uq7DjHyk4ZEnndrgZ1eP153aoQW+FleRyIkZgAyyN5Y/HOPfYIIjzCTUZvthY8/EukGgUGg20sPahGigvUDQrbkR2VEHpC4etBmnuI957BjLbhXFAIPp4xdnx4K0VpoGykounZ0yHKog==
Received: from PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16)
 by SN7PR11MB6702.namprd11.prod.outlook.com (2603:10b6:806:269::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Wed, 17 Jan
 2024 02:35:26 +0000
Received: from PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee]) by PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee%3]) with mapi id 15.20.7202.020; Wed, 17 Jan 2024
 02:35:26 +0000
From: <Dharma.B@microchip.com>
To: <conor@kernel.org>
CC: <Conor.Dooley@microchip.com>, <sam@ravnborg.org>, <bbrezillon@kernel.org>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<lee@kernel.org>, <thierry.reding@gmail.com>,
	<u.kleine-koenig@pengutronix.de>, <linux-pwm@vger.kernel.org>,
	<Linux4Microchip@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: convert Atmel's HLCDC to DT
 schema
Thread-Topic: [PATCH v2 1/3] dt-bindings: display: convert Atmel's HLCDC to DT
 schema
Thread-Index: AQHaSHCakAdMasJgKUaqbasJdJ7S+LDcuZGAgACRMYA=
Date: Wed, 17 Jan 2024 02:35:25 +0000
Message-ID: <1a84946c-ba15-44ec-ae4a-3ad7a0673d4c@microchip.com>
References: <20240116113800.82529-1-dharma.b@microchip.com>
 <20240116113800.82529-2-dharma.b@microchip.com>
 <20240116-coastal-amply-e495b07726df@spud>
In-Reply-To: <20240116-coastal-amply-e495b07726df@spud>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6451:EE_|SN7PR11MB6702:EE_
x-ms-office365-filtering-correlation-id: 184b3398-0ac6-467c-755c-08dc1704f65b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ceaHOV5dgETih26chT6VvfUcwLwRddg757lT2e2GdNQVzXyEBmivr5jTSCIfmkmfQfM2Uyt4d21h/NTLQ6P9ZAD92PYxhbKBTgBa2T7IVeG+nhF5KL8EKTVl0tFYC7ySAsh7E5FbIPvj5BXfqZMwRCgPltGEXQEpoMqeHx0wL+ZIiAUQweTGF5pOTPmmCiv9KNo8HuXfA3ZVtqqaye4DEl8R9MJ2GsLsHXPMneWfHcyWDPvQkFzUEphB3kMU+PS/rTgNhz9ArwIZ/6eHj92U6xjoXMIMIqABumuKlHNFW8L7H0uLRKuw3jZ+D4PT35TI3FUiat4QXp5/dUZfzDbMhtQjqELYt8HC6WWSnNXh+CwbrZRylAu1bq68GRSZrFHCLZ/A7254nPzyb2hC9PYWOZ8S+r1K55aQfqONSWyTUDR8kcAdDHLzg4OkTYtB164ADAxLc71ltwwOqWJjW2gUFVYVpYrA/HCn/yV75kb+ezEvOA0Vg5jbrcGuHv6VvQcQ8pQ0j0+qYNZ7nnVnDmajqHOPdfxj9tyKcJv2T5SGBAmWQTBTPXEN5yshplLQPIIkfRn6v1egk0XAxD4JHDgQd8Wbwn60YSVfBN58wYPVDrJskxKuiLl13vc30+35GeAs0lH6AVg5va3Q10+GPZUictsHIUwcgsOsjipF3wg1zqnvzRGoNramObvNrrmbE1rYDsc+nQLEwy3TckbYterTkg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(230173577357003)(230273577357003)(1800799012)(64100799003)(451199024)(186009)(31686004)(6506007)(71200400001)(107886003)(53546011)(6512007)(2616005)(26005)(38100700002)(36756003)(86362001)(31696002)(38070700009)(8936002)(2906002)(41300700001)(8676002)(4326008)(6486002)(122000001)(83380400001)(7416002)(5660300002)(478600001)(316002)(91956017)(76116006)(66946007)(66476007)(66446008)(64756008)(54906003)(66556008)(6916009)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmFONWhXd1NlSkVLMnYwbGF0Vzd6RW5GUWxmOWh5Z0tlUUJTcU03cGUrVis4?=
 =?utf-8?B?WEZYeCsvMS8veFdaZkIwRWd3eDVQWGNDdkF2QWVxUXBNR0oxblhwWlVUNmxu?=
 =?utf-8?B?VzFiQ2lnaTAxV3NvQkYvRlRFRkd3ejFpamlKL3ZjWXhPekdpSkFmTHdIR3lt?=
 =?utf-8?B?MFVTMStLcFVXSEhoSFg2cDZYNENXME4rRDFmWWwrVWVDUWRiRG03OWJPd1hn?=
 =?utf-8?B?K2ROenR0VGV6K29qQTVNYmJqRlRYU2ZXQlRzZ040eW84TFZ4YVkrVkJLU1VZ?=
 =?utf-8?B?WmNadURlVDBPUW8xOUU5aHlQQ3d2ZmdzZmttQWRMNmhYUVE0MGM2ajJjcDVo?=
 =?utf-8?B?K2wvNkQxT2NvbWVaNE82VnRSTTJ3VEFQRHJWMDZpYW1YRG5DSUtWdjRZaG10?=
 =?utf-8?B?anhPdXJUT20xeDh5ZmY3V1dPVzVRTTNFekVFZjdlRkFCL2lYUXVRblorNnZx?=
 =?utf-8?B?ZGU5WDdON2M4Sm1nUlpQemliclBva0tGVHJLdEpCTkNYTVNtR2lwdGY2Vk5V?=
 =?utf-8?B?OUs5RVBvMFdYTUhxM1hjc1hyRjBibzQ0R3ZOUE1uaVZMb3RNUTVaWis2SXJ0?=
 =?utf-8?B?QllVTGtjU0R2T3FXbWhFTEJPWENZUEJIWHFJSVFILy9LakNKU3lOTUxvVEk3?=
 =?utf-8?B?V3RENU5hNVV5SXNJY2xseUV1dkF6eEJKMmtLMjk2U0d5b01nejhWQ09uYkI2?=
 =?utf-8?B?TEw4VXExbS9Gd0RJL2RQNUk4ODB0ajlMTmlmSGpqeHQ0eFRCdjQ1MDJJVCsr?=
 =?utf-8?B?L2ZqQjFoSEZKT1NwSWVhcUZlL1UzV2tBb1p2NHc3L3JKWHdxUk5Ia0E0dGta?=
 =?utf-8?B?TVg4bm5ZaTBrSFpWMThCRDdOQlJIQUg2eWVoUkdpbEFLb0hGdEUrNUIvbU53?=
 =?utf-8?B?c0lUL3A2U2ozY2F1WXdHVDNiZXVQWTRxZ2JFNUJLZWVDLzBOYkl1NExFRXZ3?=
 =?utf-8?B?dEtoM3pvR0MwVmVQQUh0MnpoRU1EVTBEYkh3OW1jZkZQMkFkRFcwWEdpVlJ1?=
 =?utf-8?B?aU8zbXd2TFhsNnhkTFlscEk5MXNJaEpaYnZiUmxEQXVlczdtRmlnT2xTZGhs?=
 =?utf-8?B?YU9pRGh0aW9ma3NsOXdyUFduYTFZemg3RnZ4SzdLNi95QlcrWkJVeE1iK1Mz?=
 =?utf-8?B?eUNkNGFWbnpBWTl4aGhwMlBTS3F0ZDVqa3V2TjFENFhxelhjSnptY00rbCtX?=
 =?utf-8?B?bmtrRk83dTNOMFJBb0dYSUx4N0xKcUxsVlJUZ0FrcGdYNGJUTElzUG10cmlH?=
 =?utf-8?B?Ky9xWWJMa1VWUWpEaVl1V09FQlFCVkdNbUJ3cloxU2RqbXlqOCtySkR2a3Uv?=
 =?utf-8?B?S1I4YVNYbUgxaDU0c3gwMm1JeDJBNDZSSU9Mb3ZUdVFOcFpyRi9rczJyZUFI?=
 =?utf-8?B?ZzZVM3E3QzEvN0FkN3JrdDBHeDUyaGh6U2hMU09RUTQ2SEg2WGNvZDhBM3M0?=
 =?utf-8?B?bG96RkQxb3djRWREQUFWbE1xYVZ2RnA0UkQ4dEJRQVVVY1IvaTBsQ1dja3Fh?=
 =?utf-8?B?K2lwQWtaK0xBZER2T2dLbGFSUlEwblc1a1pYVWk1MU1Kcnd2SlYxOTVLRjdB?=
 =?utf-8?B?WDVveVpNVXJXRFV0TVRBUVpsaUlpeTlmenp0VzZUTXJtR2NGZFluSm1lQ3d3?=
 =?utf-8?B?VktPR2UzcXJUUTgwZGtUWDVZRTlrZWgwclczWmtxVHdVR1ZhOTk4RXQ2YWp1?=
 =?utf-8?B?TTBlS0t0NjV2ZmhNbFdNL1VmdXZEcGFVRjk1M3FZYzZIQ1lHa1JWM2N0RGFT?=
 =?utf-8?B?L05uQytBRzdjMnpNdzR1RTRnTU85TEVsQk1EeERidWwrYU9OVVJld3E0Sno4?=
 =?utf-8?B?K2hWMTVvWXdBb0I2NFpyZDY2ZDFuUEtmTlF5dEhkNFBIaXllOFI0YlJZUlFz?=
 =?utf-8?B?SDBvajE4KzlNUkxJa3IxclBORlV1N1dKOWYydWtkY0VoNHlVd3Jta240ZkZB?=
 =?utf-8?B?SXZKdFIxUFp6YTFJOC9QaDJMaThQNko4M3ovdkF5V0M5S095blpiQUNBdXYy?=
 =?utf-8?B?Nk95d3NUTTJia0lZaDBuQ2FZKzJyUlJXTEptTExFZHlJQ05kK2F1NGNMK3Bt?=
 =?utf-8?B?MUhZSEhRV2grYnVyQ0w0M2toeHptN1YwQzN3aEFEa3dqVEFwR3pua3QzRTU0?=
 =?utf-8?Q?fPihJ9uhayVbbIcuHGoQ2qa5X?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <612FED6CE343C4459257AD08330C740D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 184b3398-0ac6-467c-755c-08dc1704f65b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 02:35:26.0019
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jPfruVpzExoJkfIAKhb3tRO5nWwLuahEY2lpH25SkhvhKGLvzQOsHIjeThzvm7TnyBkP0Rj65VrliAdpVnX6lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6702

T24gMTYvMDEvMjQgMTE6MjUgcG0sIENvbm9yIERvb2xleSB3cm90ZToNCj4gWW8sDQo+IA0KPiBP
biBUdWUsIEphbiAxNiwgMjAyNCBhdCAwNTowNzo1OFBNICswNTMwLCBEaGFybWEgQmFsYXN1Ymly
YW1hbmkgd3JvdGU6DQo+PiBDb252ZXJ0IHRoZSBleGlzdGluZyBEVCBiaW5kaW5nIHRvIERUIHNj
aGVtYSBvZiB0aGUgQXRtZWwncyBITENEQyBkaXNwbGF5DQo+PiBjb250cm9sbGVyLg0KPj4NCj4+
IFNpZ25lZC1vZmYtYnk6IERoYXJtYSBCYWxhc3ViaXJhbWFuaTxkaGFybWEuYkBtaWNyb2NoaXAu
Y29tPg0KPj4gLS0tDQo+PiBjaGFuZ2Vsb2cNCj4+IHYxIC0+IHYyDQo+PiAtIFJlbW92ZSB0aGUg
ZXhwbGljaXQgY29weXJpZ2h0cy4NCj4+IC0gTW9kaWZ5IGZpbGVuYW1lIGxpa2UgY29tcGF0aWJs
ZS4NCj4+IC0gTW9kaWZ5IHRpdGxlIChkcm9wIHdvcmRzIGxpa2UgYmluZGluZy9kcml2ZXIpLg0K
Pj4gLSBNb2RpZnkgZGVzY3JpcHRpb24gYWN0dWFsbHkgZGVzY3JpYmluZyB0aGUgaGFyZHdhcmUg
YW5kIG5vdCB0aGUgZHJpdmVyLg0KPj4gLSBSZW1vdmUgcGluY3RybCBwcm9wZXJ0aWVzIHdoaWNo
IGFyZW4ndCByZXF1aXJlZC4NCj4+IC0gUmVmIGVuZHBvaW50IGFuZCBub3QgZW5kcG9pbnQtYmFz
ZS4NCj4+IC0gRHJvcCByZWR1bmRhbnQgaW5mbyBhYm91dCBidXMtd2lkdGggZGVzY3JpcHRpb24g
YW5kIGFkZCByZWYgdG8gdmlkZW8taW50ZXJmYWNlcy4NCj4+IC0gTW92ZSAnYWRkaXRpb25hbFBy
b3BlcnRpZXMnIGFmdGVyICdSZXF1aXJlZCcuDQo+PiAtIERyb3AgcGFyZW50IG5vZGUgYW5kIGl0
J3Mgb3RoZXIgc3ViLWRldmljZSBub2RlIHdoaWNoIGFyZSBub3QgcmVsYXRlZCBoZXJlLg0KPj4g
LSBBZGQgY29tcGF0aWJsZSB0byBleGFtcGxlIDIgYW5kIGFkZCBjb21tZW50cyB0aGF0IGJ1cy13
aWR0aCBpcyB0aGUgZGlmZiBiZXR3ZWVuIHR3byBleGFtcGxlcy4NCj4+IC0tLQ0KPj4gICAuLi4v
YXRtZWwvYXRtZWwsaGxjZGMtZGlzcGxheS1jb250cm9sbGVyLnlhbWwgfCAxMTAgKysrKysrKysr
KysrKysrKysrDQo+PiAgIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2F0bWVsL2hsY2RjLWRjLnR4dCAg
ICAgICB8ICA3NSAtLS0tLS0tLS0tLS0NCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMTAgaW5zZXJ0
aW9ucygrKSwgNzUgZGVsZXRpb25zKC0pDQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9hdG1lbC9hdG1lbCxobGNkYy1kaXNw
bGF5LWNvbnRyb2xsZXIueWFtbA0KPj4gICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYXRtZWwvaGxjZGMtZGMudHh0DQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2F0
bWVsL2F0bWVsLGhsY2RjLWRpc3BsYXktY29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYXRtZWwvYXRtZWwsaGxjZGMtZGlzcGxheS1jb250
cm9sbGVyLnlhbWwNCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLmYwMjJjMjk0Y2ZiYw0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYXRtZWwvYXRtZWwsaGxjZGMtZGlzcGxheS1j
b250cm9sbGVyLnlhbWwNCj4+IEBAIC0wLDAgKzEsMTEwIEBADQo+PiArIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQ0KPj4gKyVZQU1MIDEuMg0KPj4g
Ky0tLQ0KPj4gKyRpZDpodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNwbGF5L2F0bWVs
L2F0bWVsLGhsY2RjLWRpc3BsYXktY29udHJvbGxlci55YW1sIw0KPj4gKyRzY2hlbWE6aHR0cDov
L2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+PiArDQo+PiArdGl0bGU6
IEF0bWVsJ3MgSGlnaCBMQ0QgQ29udHJvbGxlciAoSExDREMpDQo+PiArDQo+PiArbWFpbnRhaW5l
cnM6DQo+PiArICAtIE5pY29sYXMgRmVycmU8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPg0K
Pj4gKyAgLSBBbGV4YW5kcmUgQmVsbG9uaTxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4N
Cj4+ICsgIC0gQ2xhdWRpdSBCZXpuZWE8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2Pg0KPj4gKw0K
Pj4gK2Rlc2NyaXB0aW9uOiB8DQo+IFRoaXMgfCBpcyBub3QgbmVlZGVkIGFzIHlvdSBoYXZlIG5v
IGZvcm1hdHRpbmcgdG8gcHJlc2VydmUuDQpTdXJlLCBJIHdpbGwgZHJvcCB0aGlzICd8Jy4NCj4g
DQo+PiArICBUaGUgTENEIENvbnRyb2xsZXIgKExDREMpIGNvbnNpc3RzIG9mIGxvZ2ljIGZvciB0
cmFuc2ZlcnJpbmcgTENEIGltYWdlDQo+PiArICBkYXRhIGZyb20gYW4gZXh0ZXJuYWwgZGlzcGxh
eSBidWZmZXIgdG8gYSBURlQgTENEIHBhbmVsLiBUaGUgTENEQyBoYXMgb25lDQo+PiArICBkaXNw
bGF5IGlucHV0IGJ1ZmZlciBwZXIgbGF5ZXIgdGhhdCBmZXRjaGVzIHBpeGVscyB0aHJvdWdoIHRo
ZSBzaW5nbGUgYnVzDQo+PiArICBob3N0IGludGVyZmFjZSBhbmQgYSBsb29rLXVwIHRhYmxlIHRv
IGFsbG93IHBhbGxldGl6ZWQgZGlzcGxheQ0KPj4gKyAgY29uZmlndXJhdGlvbnMuDQo+PiArDQo+
PiArcHJvcGVydGllczoNCj4+ICsgIGNvbXBhdGlibGU6DQo+PiArICAgIGNvbnN0OiBhdG1lbCxo
bGNkYy1kaXNwbGF5LWNvbnRyb2xsZXINCj4+ICsNCj4+ICsgICcjYWRkcmVzcy1jZWxscyc6DQo+
PiArICAgIGNvbnN0OiAxDQo+PiArDQo+PiArICAnI3NpemUtY2VsbHMnOg0KPj4gKyAgICBjb25z
dDogMA0KPj4gKw0KPj4gKyAgcG9ydEAwOg0KPj4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55
YW1sIy8kZGVmcy9wb3J0LWJhc2UNCj4+ICsgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxz
ZQ0KPj4gKyAgICBkZXNjcmlwdGlvbjoNCj4+ICsgICAgICBPdXRwdXQgZW5kcG9pbnQgb2YgdGhl
IGNvbnRyb2xsZXIsIGNvbm5lY3RpbmcgdGhlIExDRCBwYW5lbCBzaWduYWxzLg0KPj4gKw0KPj4g
KyAgICBwcm9wZXJ0aWVzOg0KPj4gKyAgICAgICcjYWRkcmVzcy1jZWxscyc6DQo+PiArICAgICAg
ICBjb25zdDogMQ0KPj4gKw0KPj4gKyAgICAgICcjc2l6ZS1jZWxscyc6DQo+PiArICAgICAgICBj
b25zdDogMA0KPj4gKw0KPj4gKyAgICAgIHJlZzoNCj4+ICsgICAgICAgIG1heEl0ZW1zOiAxDQo+
PiArDQo+PiArICAgICAgZW5kcG9pbnQ6DQo+PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFw
aC55YW1sIy8kZGVmcy9lbmRwb2ludA0KPiAkcmVmOiAvc2NoZW1hcy9tZWRpYS92aWRlby1pbnRl
cmZhY2VzLnlhbWwjDQpJIHdpbGwgcmVwbGFjZSB0aGlzLg0KPiANCj4gdG8gbWF0Y2ggYXBwcm94
aW1hdGVseSBhbGwgb3RoZXIgZW5kcG9pbnRzPw0KSSdtIG5vdCBzdXJlOyBzb21lIG9mIHRoZSBy
ZWZlcmVuY2VkIGRldmljZXMsIGxpa2UgdGhpcyBvbmUsIHdlcmUgDQpwb2ludGluZyB0byAnZW5k
cG9pbnQuJyBJIHdpbGwgZ28gd2l0aCAndmlkZW8taW50ZXJmYWNlcy4nDQo+IA0KPj4gKyAgICAg
ICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQ0KPj4gKyAgICAgICAgZGVzY3JpcHRpb246
DQo+PiArICAgICAgICAgIEVuZHBvaW50IGNvbm5lY3RpbmcgdGhlIExDRCBwYW5lbCBzaWduYWxz
Lg0KPj4gKw0KPj4gKyAgICAgICAgcHJvcGVydGllczoNCj4+ICsgICAgICAgICAgYnVzLXdpZHRo
Og0KPj4gKyAgICAgICAgICAgIGRlc2NyaXB0aW9uOiBFbmRwb2ludCBidXMgd2lkdGguDQo+PiAr
ICAgICAgICAgICAgJHJlZjogL3NjaGVtYXMvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy55YW1sIw0K
PiBhbmQgdGhlbiBidXMtd2lkdGgncyB0eXBlIGlzIGFscmVhZHkgZGVmaW5lZCBmb3IgeW91LCBu
bz8NCkkgd2lsbCByZW1vdmUgdGhpcyAkcmVmIGhlcmUuDQo+IA0KPj4gKyAgICAgICAgICAgIGVu
dW06IFsgMTIsIDE2LCAxOCwgMjQgXQ0KPj4gKw0KPj4gK3JlcXVpcmVkOg0KPj4gKyAgLSAnI2Fk
ZHJlc3MtY2VsbHMnDQo+PiArICAtICcjc2l6ZS1jZWxscycNCj4+ICsgIC0gY29tcGF0aWJsZQ0K
Pj4gKyAgLSBwb3J0QDANCj4+ICsNCj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UNCj4+
ICsNCj4+ICtleGFtcGxlczoNCj4+ICsgIC0gfA0KPj4gKyAgICAvL0V4YW1wbGUgMQ0KPj4gKw0K
Pj4gKyAgICBkaXNwbGF5LWNvbnRyb2xsZXIgew0KPj4gKyAgICAgIGNvbXBhdGlibGUgPSAiYXRt
ZWwsaGxjZGMtZGlzcGxheS1jb250cm9sbGVyIjsNCj4+ICsgICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOw0KPj4gKyAgICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9sY2RfYmFzZSAmcGlu
Y3RybF9sY2RfcmdiODg4PjsNCj4+ICsgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+ICsg
ICAgICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4+ICsNCj4+ICsgICAgICBwb3J0QDAgew0KPj4gKyAg
ICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+PiArICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsNCj4+ICsgICAgICAgIHJlZyA9IDwwPjsNCj4+ICsNCj4+ICsgICAgICAgIGhsY2RjX3BhbmVs
X291dHB1dDogZW5kcG9pbnRAMCB7DQo+PiArICAgICAgICAgIHJlZyA9IDwwPjsNCj4+ICsgICAg
ICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZwYW5lbF9pbnB1dD47DQo+PiArICAgICAgICB9Ow0K
Pj4gKyAgICAgIH07DQo+PiArICAgIH07DQo+PiArDQo+PiArICAtIHwNCj4+ICsgICAgLy9FeGFt
cGxlIDIgV2l0aCBhIHZpZGVvIGludGVyZmFjZSBvdmVycmlkZSB0byBmb3JjZSByZ2I1NjUsIGJ1
cy13aWR0aD0xNg0KPj4gKw0KPj4gKyAgICBkaXNwbGF5LWNvbnRyb2xsZXIgew0KPj4gKyAgICAg
IGNvbXBhdGlibGUgPSAiYXRtZWwsaGxjZGMtZGlzcGxheS1jb250cm9sbGVyIjsNCj4+ICsgICAg
ICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPj4gKyAgICAgIHBpbmN0cmwtMCA9IDwmcGlu
Y3RybF9sY2RfYmFzZSAmcGluY3RybF9sY2RfcmdiNTY1PjsNCj4+ICsgICAgICAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsNCj4+ICsgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4+ICsNCj4+ICsgICAg
ICBwb3J0QDAgew0KPj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+PiArICAgICAg
ICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4+ICsgICAgICAgIHJlZyA9IDwwPjsNCj4gU2hvdWxkIGJl
IGEgbmV3bGluZSBoZXJlIGJlZm9yZSB0aGUgY2hpbGQgbm9kZS4NClN1cmUsIEkgd2lsbCB0YWtl
IGNhcmUgb2YgdGhpcyBpbiB2My4NCg0KLS0gDQpXaXRoIEJlc3QgUmVnYXJkcywNCkRoYXJtYSBC
Lg0KPiANCj4gQ2hlZXJzLA0KPiBDb25vci4NCj4gDQo+PiArICAgICAgICBobGNkY19wYW5lbF9v
dXRwdXQyOiBlbmRwb2ludEAwIHsNCj4+ICsgICAgICAgICAgcmVnID0gPDA+Ow0KPj4gKyAgICAg
ICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2lucHV0PjsNCj4+ICsgICAgICAgICAgYnVz
LXdpZHRoID0gPDE2PjsNCj4+ICsgICAgICAgIH07DQo+PiArICAgICAgfTsNCj4+ICsgICAgfTsN
Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9hdG1lbC9obGNkYy1kYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZGlzcGxheS9hdG1lbC9obGNkYy1kYy50eHQNCj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0K
Pj4gaW5kZXggOTIzYWVhMjUzNDRjLi4wMDAwMDAwMDAwMDANCj4+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2F0bWVsL2hsY2RjLWRjLnR4dA0KPj4gKysr
IC9kZXYvbnVsbA0KPj4gQEAgLTEsNzUgKzAsMCBAQA0KPj4gLURldmljZS1UcmVlIGJpbmRpbmdz
IGZvciBBdG1lbCdzIEhMQ0RDIChIaWdoIExDRCBDb250cm9sbGVyKSBEUk0gZHJpdmVyDQo+PiAt
DQo+PiAtVGhlIEF0bWVsIEhMQ0RDIERpc3BsYXkgQ29udHJvbGxlciBpcyBzdWJkZXZpY2Ugb2Yg
dGhlIEhMQ0RDIE1GRCBkZXZpY2UuDQo+PiAtU2VlIC4uLy4uL21mZC9hdG1lbC1obGNkYy50eHQg
Zm9yIG1vcmUgZGV0YWlscy4NCj4+IC0NCj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPj4gLSAt
IGNvbXBhdGlibGU6IHZhbHVlIHNob3VsZCBiZSAiYXRtZWwsaGxjZGMtZGlzcGxheS1jb250cm9s
bGVyIg0KPj4gLSAtIHBpbmN0cmwtbmFtZXM6IHRoZSBwaW4gY29udHJvbCBzdGF0ZSBuYW1lcy4g
U2hvdWxkIGNvbnRhaW4gImRlZmF1bHQiLg0KPj4gLSAtIHBpbmN0cmwtMDogc2hvdWxkIGNvbnRh
aW4gdGhlIGRlZmF1bHQgcGluY3RybCBzdGF0ZXMuDQo+PiAtIC0gI2FkZHJlc3MtY2VsbHM6IHNo
b3VsZCBiZSBzZXQgdG8gMS4NCj4+IC0gLSAjc2l6ZS1jZWxsczogc2hvdWxkIGJlIHNldCB0byAw
Lg0KPj4gLQ0KPj4gLVJlcXVpcmVkIGNoaWxkcmVuIG5vZGVzOg0KPj4gLSBDaGlsZHJlbiBub2Rl
cyBhcmUgZW5jb2RpbmcgYXZhaWxhYmxlIG91dHB1dCBwb3J0cyBhbmQgdGhlaXIgY29ubmVjdGlv
bnMNCj4+IC0gdG8gZXh0ZXJuYWwgZGV2aWNlcyB1c2luZyB0aGUgT0YgZ3JhcGggcmVwcmVzZW50
YXRpb24gKHNlZSAuLi9ncmFwaC50eHQpLg0KPj4gLSBBdCBsZWFzdCBvbmUgcG9ydCBub2RlIGlz
IHJlcXVpcmVkLg0KPj4gLQ0KPj4gLU9wdGlvbmFsIHByb3BlcnRpZXMgaW4gZ3JhbmRjaGlsZCBu
b2RlczoNCj4+IC0gQW55IGVuZHBvaW50IGdyYW5kY2hpbGQgbm9kZSBtYXkgc3BlY2lmeSBhIGRl
c2lyZWQgdmlkZW8gaW50ZXJmYWNlDQo+PiAtIGFjY29yZGluZyB0byAuLi8uLi9tZWRpYS92aWRl
by1pbnRlcmZhY2VzLnR4dCwgc3BlY2lmaWNhbGx5DQo+PiAtIC0gYnVzLXdpZHRoOiByZWNvZ25p
emVkIHZhbHVlcyBhcmUgPDEyPiwgPDE2PiwgPDE4PiBhbmQgPDI0PiwgYW5kDQo+PiAtICAgb3Zl
cnJpZGUgYW55IG91dHB1dCBtb2RlIHNlbGVjdGlvbiBoZXVyaXN0aWMsIGZvcmNpbmcgInJnYjQ0
NCIsDQo+PiAtICAgInJnYjU2NSIsICJyZ2I2NjYiIGFuZCAicmdiODg4IiByZXNwZWN0aXZlbHku
DQo+PiAtDQo+PiAtRXhhbXBsZToNCj4+IC0NCj4+IC0JaGxjZGM6IGhsY2RjQGYwMDMwMDAwIHsN
Cj4+IC0JCWNvbXBhdGlibGUgPSAiYXRtZWwsc2FtYTVkMy1obGNkYyI7DQo+PiAtCQlyZWcgPSA8
MHhmMDAzMDAwMCAweDIwMDA+Ow0KPj4gLQkJaW50ZXJydXB0cyA9IDwzNiBJUlFfVFlQRV9MRVZF
TF9ISUdIIDA+Ow0KPj4gLQkJY2xvY2tzID0gPCZsY2RjX2Nsaz4sIDwmbGNkY2s+LCA8JmNsazMy
az47DQo+PiAtCQljbG9jay1uYW1lcyA9ICJwZXJpcGhfY2xrIiwic3lzX2NsayIsICJzbG93X2Ns
ayI7DQo+PiAtDQo+PiAtCQlobGNkYy1kaXNwbGF5LWNvbnRyb2xsZXIgew0KPj4gLQkJCWNvbXBh
dGlibGUgPSAiYXRtZWwsaGxjZGMtZGlzcGxheS1jb250cm9sbGVyIjsNCj4+IC0JCQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOw0KPj4gLQkJCXBpbmN0cmwtMCA9IDwmcGluY3RybF9sY2RfYmFz
ZSAmcGluY3RybF9sY2RfcmdiODg4PjsNCj4+IC0JCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+
IC0JCQkjc2l6ZS1jZWxscyA9IDwwPjsNCj4+IC0NCj4+IC0JCQlwb3J0QDAgew0KPj4gLQkJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsNCj4+IC0JCQkJI3NpemUtY2VsbHMgPSA8MD47DQo+PiAtCQkJ
CXJlZyA9IDwwPjsNCj4+IC0NCj4+IC0JCQkJaGxjZGNfcGFuZWxfb3V0cHV0OiBlbmRwb2ludEAw
IHsNCj4+IC0JCQkJCXJlZyA9IDwwPjsNCj4+IC0JCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmcGFu
ZWxfaW5wdXQ+Ow0KPj4gLQkJCQl9Ow0KPj4gLQkJCX07DQo+PiAtCQl9Ow0KPj4gLQ0KPj4gLQkJ
aGxjZGNfcHdtOiBobGNkYy1wd20gew0KPj4gLQkJCWNvbXBhdGlibGUgPSAiYXRtZWwsaGxjZGMt
cHdtIjsNCj4+IC0JCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPj4gLQkJCXBpbmN0cmwt
MCA9IDwmcGluY3RybF9sY2RfcHdtPjsNCj4+IC0JCQkjcHdtLWNlbGxzID0gPDM+Ow0KPj4gLQkJ
fTsNCj4+IC0JfTsNCj4+IC0NCj4+IC1FeGFtcGxlIDI6IFdpdGggYSB2aWRlbyBpbnRlcmZhY2Ug
b3ZlcnJpZGUgdG8gZm9yY2UgcmdiNTY1OyBhcyBhYm92ZQ0KPj4gLWJ1dCB3aXRoIHRoZXNlIGNo
YW5nZXMvYWRkaXRpb25zOg0KPj4gLQ0KPj4gLQkmaGxjZGMgew0KPj4gLQkJaGxjZGMtZGlzcGxh
eS1jb250cm9sbGVyIHsNCj4+IC0JCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPj4gLQkJ
CXBpbmN0cmwtMCA9IDwmcGluY3RybF9sY2RfYmFzZSAmcGluY3RybF9sY2RfcmdiNTY1PjsNCj4+
IC0NCj4+IC0JCQlwb3J0QDAgew0KPj4gLQkJCQlobGNkY19wYW5lbF9vdXRwdXQ6IGVuZHBvaW50
QDAgew0KPj4gLQkJCQkJYnVzLXdpZHRoID0gPDE2PjsNCj4+IC0JCQkJfTsNCj4+IC0JCQl9Ow0K
Pj4gLQkJfTsNCj4+IC0JfTsNCj4+IC0tIA0KPj4gMi4yNS4xDQo+Pg0KDQo=

