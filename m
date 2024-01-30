Return-Path: <devicetree+bounces-36733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C92AB8427F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F37C28EE2B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 15:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136D185C6C;
	Tue, 30 Jan 2024 15:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="sIW4EJpV";
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ZbG9QTzj"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF8586122
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 15:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=68.232.153.233
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706628188; cv=fail; b=FcjjND8dm1uaZi3dS0su/XHJEf9zgv5xcywFI0J4IQIGC4tDfaonm/JghxTkGqx3yun9uoj7GH7MfC6fPM5VUSq9R+fvlPZ1MOWN5BkhLNfyIkNzN9WSSHUBFX56wXeGnVgSLGklBuiKWwzQVAwPklJEp+GIEzv9vOTIY8SNgHU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706628188; c=relaxed/simple;
	bh=NzsvlEM4un/W5XuYOJaGXsryG2QV5eDC3mbFd/0H7U4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=a7PL2/a6l2E/5tytfQhQ6XZ2I25dEYR1W9nFee5SrI+GQOqZT9pkXN8gBQCxvYW90LYtg8e1ogax/EtH5E7rs85vgLYTfFgvgf/hAr04IYNnmHO7c/l8yP8vmpnBvm12f1UtJ+xCLZ7B0QAsibekirMkaxFTlrn/rg7ZauCr6L0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=sIW4EJpV; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=ZbG9QTzj; arc=fail smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1706628185; x=1738164185;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=NzsvlEM4un/W5XuYOJaGXsryG2QV5eDC3mbFd/0H7U4=;
  b=sIW4EJpVxdCgAU4vOHm1mAWEparsAbsbLv2k7X+RzhKRPbNFlguOab0a
   XfEhrsBgJDPSwKuRlaV/rL59ZJwEJVrMPvzZeRf6uE7ahysRpeKOmdwbl
   M9p8izAI2fHHs+4davAEEuOO9sDuitK7XmbbTniroV+1JQzCmPYg74XkD
   1CYMl5qh/rMfFGLRQLRyOlBcN/d6eTla5zkt8s3fm5mfkTyksxOCGv4Ty
   /GCiiL8tYkG6+jMco1zT30ekeYjSGVh6b/B8mK81wceu0BK5yXj/plixT
   59rDz3YH0VTqcz75cqAbmFFKICyNK4Pjec46z4V69nOcejXfU1120zd9z
   A==;
X-CSE-ConnectionGUID: jPafkweHQc+mIt4Z8Cw3ww==
X-CSE-MsgGUID: EdWXbCK7T/iz+uMORrM9zA==
X-IronPort-AV: E=Sophos;i="6.05,230,1701154800"; 
   d="scan'208";a="16814131"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 30 Jan 2024 08:23:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 08:22:59 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 08:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kReM0mf13gK4A/RPeY8X/rUZnCfcRoG0k0sdn1qwl2vhZnVaGCKC+NUjxxpbTrzzsd5p2qd1hsbvSC/CzhPzLoaC8uhlOPgzGdMFaHTUELS2q0gr27fcqVoF7C69Dk5N0webZX24dLMNXqgSIZsKyE2LuigZG2qf1fL2GF/CDw8HNu6Gy4cKGEzcGnDNjI4vEhIAbUNpI5YbDQHsxdalOddWyyh3JbXlOlq84SnNE9eS0iVx0je6fw6oY7tMDZxfcgNcYlyPvvUwId9ZK9f23XhR6h9ik1EZkIBikXRRDugQ6KGxWY4OOpWmkWK5rcC/RujdJk/YBp8xHe4uUzq/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NzsvlEM4un/W5XuYOJaGXsryG2QV5eDC3mbFd/0H7U4=;
 b=S0CqQGxYOS/6dS7paCRlTezMowHMYBPz+6RHVLgYpq/+eZde7IIcWbZPHMW8Y7FL1VJUINtau3iuCPnrNZb+EBf1FXJTwtfiWrQzFyq5CNthzq7bpOAoD5TN+4ty9RERD7o8eNOmRv+ifVzUREXVnlJNFojMoPvgVzeyMeHMBcyP5WEkCLrEzq3TdivlOaHirm5bZLG7DufJN6rD5as2MEuF0MquGbe2GX05esS57WX/DZN/4BBamzUIbuX2DB/JXw0ZHq6vImrlbgH4M8VebaVlRSzczs//KWUXvK23H09desjRQAE+8iQzpuZvAEJmr0Ii/S4rGytKJqAaXZP6Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NzsvlEM4un/W5XuYOJaGXsryG2QV5eDC3mbFd/0H7U4=;
 b=ZbG9QTzjotocfEMdE+MgaMZzzrC+lSlKWFTlpEzOcdr0edzhJuapmauhyCLUM9Bh3hoGxo2oP+Uo4V3AUN3c2V3QLTSP7mjGfhJja+AiSextfJ4qD7bsi10H9OmBNwjhXf/abdtRltbxhw/NfCjjd7GKjL8SloVTqbKMnfF9S0pDbBqtxuyhnJlvIqM4w9jmsm2evXRrQYdEZ+7H0G34uh0A7eFK51Q/K9BcDMbJybSOR0NPPHN8CpALdZBMRPcsULgG46zK62ESSl8t97Ou8nyBAbk2g0Rd2wtkfoEnOqd+zHL9OzN8bfvaf34EWrsMyfxO+KJRMO7ONlUTWZw/Ug==
Received: from BN9PR11MB5289.namprd11.prod.outlook.com (2603:10b6:408:136::10)
 by PH0PR11MB7496.namprd11.prod.outlook.com (2603:10b6:510:280::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Tue, 30 Jan
 2024 15:22:55 +0000
Received: from BN9PR11MB5289.namprd11.prod.outlook.com
 ([fe80::9773:5f8e:785b:1c31]) by BN9PR11MB5289.namprd11.prod.outlook.com
 ([fe80::9773:5f8e:785b:1c31%7]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 15:22:54 +0000
From: <Andrei.Simion@microchip.com>
To: <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<robh+dt@kernel.org>, <conor+dt@kernel.org>, <claudiu.beznea@tuxon.dev>,
	<lgirdwood@gmail.com>, <broonie@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2] regulator: dt-bindings: microchip,mcp16502: convert to
 YAML
Thread-Topic: [PATCH v2] regulator: dt-bindings: microchip,mcp16502: convert
 to YAML
Thread-Index: AQHaUrqeT8zVA5chNU6XaqJOoReiL7DyBTeAgAB1vYA=
Date: Tue, 30 Jan 2024 15:22:54 +0000
Message-ID: <7fc29a9d-a3ae-44ea-a490-88ecad18983a@microchip.com>
References: <20240129135336.98197-1-andrei.simion@microchip.com>
 <b749512c-b9c3-4b0e-85e2-cf5114534102@linaro.org>
In-Reply-To: <b749512c-b9c3-4b0e-85e2-cf5114534102@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5289:EE_|PH0PR11MB7496:EE_
x-ms-office365-filtering-correlation-id: f92f9268-9d53-4088-4381-08dc21a754df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Pc+ZqhdFEYBaFdPgdBGO6CnJu/NmsU5WFd4KorTNIk3QLqVc7U8CUrjfLI7mnWaVazwINepO8GfdkvqxcNWt8GEEnEVYOYg954wiqJFhzc4xFtrAYN/fbx/wIc/qBULkZ9IG1eTpRMFLuJY0T6cu3UjB/dIoP0KwXZSbbV7xYyGNhLOE31dBSvw2u57uYCB812HydpqpNZKoH5srjcT5H4JZ3ooGlXcQQeeNCTIsn3oNKkixZYm7w6w1BHvKn/VGwA9kNuhdrJ3rQcQY1wjF8+k0rHfroOaGR0FPKxrm+aMnpmwZ4hhBenPDgcjkhKZzR311cudllV6kq/K3YOT2Ohxo5yDGaarQX1Khw89SUwY1Crcackt6ria/c6YYpHSa4xAykcokeQ0Y6hM9eQkc2A63iB4xkVatN5mGVa3fqxZiiT0zuhK5nh+KvrAupztgESk6aqOgjslqgkpokxNiH+v3Jzl7Wc7L4ndl8ymzzMYp5yrkAj1uWHq/jYNJQ1TMKb1hcclrJmDycOhY/xoVwVXxIdrAn+45ELP2xlGCY5jknDb0XmcepafEgu+4WTJ3FWYqHrSJZ+p9fkxaWkRtAhIIfJqOTDPbyf2+0y05QhDCsZ2fmEqTqSsF5MDu3GxrhzUSpjpzWUfodlgUG79DgQ8imi3bXhryM/RlVksQgNU8Hk/+OU3rICcfJUzmpHKF7h7ebKhzDN9pMektU7hruB0f+M1qhqJWI922PykAfQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5289.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230273577357003)(230922051799003)(230473577357003)(230373577357003)(230173577357003)(186009)(1800799012)(451199024)(64100799003)(54906003)(41300700001)(2616005)(71200400001)(6506007)(478600001)(91956017)(26005)(4326008)(8936002)(76116006)(2906002)(966005)(83380400001)(64756008)(5660300002)(66476007)(31696002)(6486002)(66446008)(66556008)(66946007)(316002)(8676002)(122000001)(38100700002)(53546011)(110136005)(86362001)(6512007)(31686004)(36756003)(38070700009)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEF6TUYvZHFPaXdGSU9jTURwZTB4SXhvK1ZOWGl6VWxnM3l0SlNSMmhqWmlm?=
 =?utf-8?B?MEliNDU3UVNaZVhGQUYyc29veEh2dEZvenJiNVhXRm8zcUZWMU9YNVN2cnk1?=
 =?utf-8?B?L2ZESm1GVFVUSWNucGZKLzlqK2UwU1JVS09ZRTdTd3JEbm5qanNaVCtBYS9P?=
 =?utf-8?B?bjUvbXVGRVpSNFRlQWNRWksrUmhMUjI0RzRzaHRBRCtwSXNSeTRMaUl2YmN0?=
 =?utf-8?B?cGZHNi84TVdTSGZLZEJORHRsU0gySEVoRE1FbUJscm1LV2xRYkhyZUpLQmEv?=
 =?utf-8?B?Y3N5Uytpa3BnOGdoVXFQc1hlZ0lmcUtiYzUrdURrWW9YN09TUkdhYlNzN01z?=
 =?utf-8?B?V0w4SXgybmlkcWpWZ0ZBbTRuaEV3c2kycmRXcE43bUZmSVRHeDVnYWhkNk5y?=
 =?utf-8?B?V0RCRndObkNMN0hUQ3N1RVpnUGVNOXk3TGhkM3JqTmZJdUZiZ2gxK2M5QTVl?=
 =?utf-8?B?Mnd6UjFwa0VrcjB6ODdGZ3FlRmhQbGtremhoVVJwWTRHODJQL2dUc0cvdmRE?=
 =?utf-8?B?TXZJcmVqNVZxTTJBVkptUTYxMVczTU5kQlBDVktuV1Ezd3BZMCtUMGZKSEwy?=
 =?utf-8?B?YXptcEY2Q1J6L2ZFcVJscDk3OGU2eTJGN2FRZEs4Qk1aR0JLUkdiYkdkbGdM?=
 =?utf-8?B?SGFRZ2ZtU3hCclZMWld3Mk1QL1doeUIyV25oS1Q1TVVQYlhrZmlFRURVWS9Z?=
 =?utf-8?B?UzRNcmE4THBFamR1Z2VtSWo5aFR2Rld1a0FPUmV2U2hESUMzMlVtRXFSb3Rk?=
 =?utf-8?B?MDFSdzdzSEhNYjBCQVllRStBTHpURVF5akJ1Qk1NZWNtV1o1ZGQ0TUVmQjlx?=
 =?utf-8?B?WENGM2k1UVhEZ2R1NDJpV0FiWXFWYldSMzVnNHA2OHBmOU90bHlUaUhPSHlx?=
 =?utf-8?B?Q3JGb1JsNkNuVEJGbXBtSmVQbkdQY0lldVVoWExISGFTcGNkc0VhSXJVR0ta?=
 =?utf-8?B?SWR1S1B5bDI4dHkraTZDaVA2dnE1RTBJZ0FtZjd5bEhucHpTRml6WCtkMUwy?=
 =?utf-8?B?MGhLQ3NsSmpjcVJHcUx1NzR3c24zbnQzSDZJQUJKcVZKa2gwR2RvNVZtc2xk?=
 =?utf-8?B?SmRwaDBvL29IaUt3dkpTMllIcjdNcGlRQ0NIcDU1cUxqTG9SYkxWY2NSTVJV?=
 =?utf-8?B?dHIxUmU4ZzNOY3IvS1QyUEU4eDVJcnJ2RGh4aVk2eTZrNGx1aUJiYmdHU0xw?=
 =?utf-8?B?dVp4T3dqenR5VjU1WFBMdWQ2YUs0SUsrcUhOYVo2MHdtK1dqWnAwL05vdE1D?=
 =?utf-8?B?NU9ZbHJWL25wbjBjN1RaYkdES2E4SGpHbmtXMUQxMGZCclczUjRrdFIxemt5?=
 =?utf-8?B?bi9aT0JLWGcwWmRTWUVxVVMwYlYwMEVJaGFFUWtWVjBTYUN1Wm94MUg1YXJV?=
 =?utf-8?B?a1pKQVIvaExZZ3lxSHZYZGY1K0tFdVhUVjZjaTVma0MvVzJkZFEvTEQ0WVlZ?=
 =?utf-8?B?eURlSVExZGE0MjM1RytNM1g3QVhBV2R3NG02ckpsUUhzZ21KZmg0OWdWL3lm?=
 =?utf-8?B?a1dSQ0Qyb0IyZ0thMW92Smw5S0kwV3hqZ2d1OStScHJqNUZCR3VsK1hMS2R1?=
 =?utf-8?B?SDRIaGFCdUNUWEx1aVVpcE5lS3ZsYnZ1Vk9lV0E3MG5Camc4K0dlMnNwaTUy?=
 =?utf-8?B?SFY4ZS80MmdMdE9wWXl0TSs0d2Uwb1FFc2luMkt0YXB1UUVhMWJ1Y0t5ejQ2?=
 =?utf-8?B?c1NCU3dJM3ZSMnc2TW94cmRjSHlYVTRqMUxiQmtVZkJ0T3JVK3k0Q1RUSkRI?=
 =?utf-8?B?cThtNkJ6Q2FVdERaWHg0QWxpai80R3RKQlU1V215RDE0SWNpZUFoMXNxUVpa?=
 =?utf-8?B?L3l6YjJKQU1IMjNRTjZVdFVrQjdCUjc4NXM5QjI2QkdBNk1RWTZmQnhCY0Nh?=
 =?utf-8?B?c3dMRWpJZDNZNktOSWNJczE1YkVUN3kwWlBkblg2T24wNzE0QU9xdVppc0Vn?=
 =?utf-8?B?NlQ3Nk55d1FGM0U3VWhDR3VMYUNXbnF4UlhEdlpJK240bFdjMElYZFF1VGdF?=
 =?utf-8?B?TkZaNnhDZGtuZ2FrWis5Yk1RL0c4MmIzY1daOVAwNSt6U25kMVhQV2JCN2xW?=
 =?utf-8?B?Nm5CN01USml3dktGK2tiQy96MDRibjQ4VXFScEZvTXdJM05BSmFXLy8yelFW?=
 =?utf-8?B?ejJLSWRaTW5uclRkcFJQd1Y1SCtZaWdHWldDOG9QZG9COEJvL29zVElKK1Bi?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F27AB2947E6C74C9384FFB52136134D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5289.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f92f9268-9d53-4088-4381-08dc21a754df
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 15:22:54.6389
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BBojUj+jCAKzRLcKWnN3qEqDyIRJwOHC9Z3UyRpxeQaoYa7tLpxMzum06jfUBhosJiX3AVgpwfTcFJkuwFa6MXNxtIT4rBwHOTqL5ukbiEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7496

T24gMzAuMDEuMjAyNCAxMDoyMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gW1lvdSBk
b24ndCBvZnRlbiBnZXQgZW1haWwgZnJvbSBrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcu
IExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0
U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPiANCj4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGlj
ayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyB0aGUgY29udGVudCBp
cyBzYWZlDQo+IA0KPiBPbiAyOS8wMS8yMDI0IDE0OjUzLCBBbmRyZWkgU2ltaW9uIHdyb3RlOg0K
Pj4gQ29udmVydCBkZXZpY2V0cmVlIGJpbmRpbmcgbWNwMTY1MDItcmVndWxhdG9yLnR4dCB0byBZ
QU1MIGZvcm1hdC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWkgU2ltaW9uIDxhbmRyZWku
c2ltaW9uQG1pY3JvY2hpcC5jb20+DQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guIFRo
ZXJlIGlzIHNvbWV0aGluZyB0byBkaXNjdXNzL2ltcHJvdmUuDQo+IA0KPj4gLS0tDQo+PiBDaGFu
Z2VzIHYxIC0+IHYyOg0KPj4gLSByZXZlcnNlIHN1YmplY3QgcHJlZml4ZXMNCj4+IC0gbGluZSBi
cmVhayBhZnRlciBmaWxlICJkZXNjcmlwdGlvbjoiDQo+PiAtIGRyb3AgZGVzY3JpcHRpb24gZm9y
IHJlZw0KPj4gLSBkcm9wIHJlZ3VsYXRvci1uYW1lDQo+PiAtIGFkZCByZWd1bGF0b3ItaW5pdGlh
bC1tb2RlDQo+PiAtIHVuZXZhbHVhdGVkUHJvcGVydGllcyBqdXN0IGFmdGVyICRyZWY6IHJlZ3Vs
YXRvci55YW1sIw0KPj4gLSBhZGRpdGlvbmFsUHJvcGVydGllcyAganVzdCBiZWZvcmUgInJlcXVp
cmVkIg0KPj4gLSBub2RlIG5hbWVzIGdlbmVyaWMgaW4gZXhhbXBsZQ0KPj4gLSB1c2UgNCBzcGFj
ZXMgZm9yIGV4YW1wbGUgaW5kZW50YXRpb24NCj4gDQo+IA0KPj4gKw0KPj4gKyAgcmVnOg0KPj4g
KyAgICBtYXhJdGVtczogMQ0KPj4gKw0KPj4gKyAgcmVndWxhdG9yczoNCj4+ICsgICAgdHlwZTog
b2JqZWN0DQoNCglhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UgIC0+IGZvcmdvdCB0aGlzIGxp
bmUuIFRoYXQgaXMgbXkgbWlzc2luZyB0byBoaXQgYWxsIHRoZSBwb2ludHMgaW4gdGhlIHByZXZp
b3VzIHJldmlldy4gTGV0IG1lIGtub3cgSWYgdGhhdCBpcyBhbGwuDQoNCj4+ICsgICAgZGVzY3Jp
cHRpb246IExpc3Qgb2YgcmVndWxhdG9ycyBhbmQgaXRzIHByb3BlcnRpZXMuDQo+PiArICAgICAg
QSBub2RlIHRoYXQgaG91c2VzIGEgc3ViLW5vZGUgZm9yIGVhY2ggcmVndWxhdG9yIHdpdGhpbg0K
Pj4gKyAgICAgIHRoZSBkZXZpY2UuIEVhY2ggc3ViLW5vZGUgaXMgaWRlbnRpZmllZCB1c2luZyB0
aGUgbm9kZSdzDQo+PiArICAgICAgbmFtZS4gVGhlIGNvbnRlbnQgb2YgZWFjaCBzdWItbm9kZSBp
cyBkZWZpbmVkIGJ5IHRoZQ0KPj4gKyAgICAgIHN0YW5kYXJkIGJpbmRpbmcgZm9yIHJlZ3VsYXRv
cnM7PiANCj4gVGhpcyBpcyBhIGZyaWVuZGx5IHJlbWluZGVyIGR1cmluZyB0aGUgcmV2aWV3IHBy
b2Nlc3MuDQo+IA0KPiBJdCBzZWVtcyBteSBvciBvdGhlciByZXZpZXdlcidzIHByZXZpb3VzIGNv
bW1lbnRzIHdlcmUgbm90IGZ1bGx5DQo+IGFkZHJlc3NlZC4gTWF5YmUgdGhlIGZlZWRiYWNrIGdv
dCBsb3N0IGJldHdlZW4gdGhlIHF1b3RlcywgbWF5YmUgeW91DQo+IGp1c3QgZm9yZ290IHRvIGFw
cGx5IGl0LiBQbGVhc2UgZ28gYmFjayB0byB0aGUgcHJldmlvdXMgZGlzY3Vzc2lvbiBhbmQNCj4g
ZWl0aGVyIGltcGxlbWVudCBhbGwgcmVxdWVzdGVkIGNoYW5nZXMgb3Iga2VlcCBkaXNjdXNzaW5n
IHRoZW0uDQo+ID4gQWxzbzogeW91IGNhbiBrZWVwIGp1c3Qgb25lIGxpbmUgb2YgZGVzY3JpcHRp
b24uIFJlc3QgaXMgcmVkdW5kYW50Lg0KPiANClllcywgSSB3aWxsIGNoYW5nZSBpbiB2MyAuDQoN
Cj4+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQo+IA0KDQpUaGFuayB5b3UgZm9yIHJldmll
dyBhbmQgYmVzdCByZWdhcmRzLA0KQW5kcmVpIFNpbWlvbg0K

