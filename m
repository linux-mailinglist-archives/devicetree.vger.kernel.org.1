Return-Path: <devicetree+bounces-34900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018583BA43
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 07:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD3EE1C21614
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 06:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C4610A05;
	Thu, 25 Jan 2024 06:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="2dE0+yR7";
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="5Er2dY56"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54924411;
	Thu, 25 Jan 2024 06:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=68.232.154.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706165302; cv=fail; b=PjOcEKNboy64awUdenZc3x6/2Tod1Laz/mwaGkLSZuwjwaTcsqy6e7BEdTQTERcq5Vxkzv3SyKG2UN0DPaaMRfwBrUYKQSIZadi+8A6bw2B/SZ8do0e8hkqmvO0oM2xHPCgep89N8YvOnNQEEBMEUBfJvTbEDM3LV+rz3EGZRCA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706165302; c=relaxed/simple;
	bh=R6J5Vf60ZH593Fnfny1wUtHopAtVM5VwNjmMh2bUKaM=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MW27nahS8/tgwKRFQGPcAThrTW+tvpHikkohBLE0KrC7L0agX6ji2jzlUHomI8Bd28+NrXfoeAqO3oN44sERmE1Z+Y3FDWByUbdjZW6jgpnj7AiUps9cHhgirPDJ/ImT3e1UdRVEZeNJktGGse45j510g7UY/TsJCWJxR15lni8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=2dE0+yR7; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=5Er2dY56; arc=fail smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1706165299; x=1737701299;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=R6J5Vf60ZH593Fnfny1wUtHopAtVM5VwNjmMh2bUKaM=;
  b=2dE0+yR7Iuv7acxHccXVt3AkQo30QQzaP92VUz/rE5zS/XjvR4bQ8gDO
   vyY/E26Ieeu8HJ7WjLM5UAr6eu28Q+hBRCgiRfleDK+piL/iDBlLRufX/
   /5zSCupwuJzi3rJbY/EJpnQ35pbxXmyS/hS/V2FHlglOM3AOMu/ko4dgv
   SWQ3ROQvUSKvYcxf0x26FsLfT92npAlPOWzod/C9y+pv4Kf6vep0nq34Z
   AF9LabMPfLuguNwE8/eaQk3/w2T++UW4MnXx9cYSRlyvlpLO8JD1yones
   ku7LTpAuyOV6KbpF2MZzhV/tFQYMf/PLW08J9v1TZlIua1Hr2q8TQ6E2O
   g==;
X-CSE-ConnectionGUID: gwXo0qD7QFqfgZHJSNFyfQ==
X-CSE-MsgGUID: 8HFVOQE9Q4yCehPQyWaz/w==
X-IronPort-AV: E=Sophos;i="6.05,216,1701154800"; 
   d="scan'208";a="15266430"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Jan 2024 23:48:18 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 23:47:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.250)
 by email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 23:47:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTqWGZhxGxxOHWUnML1R8AdcFNmPSDOPMPy2ewf2AUkuRn8S0xZ4oNEy61pCMTYwcducHlfWgHvacZnr9fQgXfUTAnXcWO/SibE8dOQJzBZgPKnY6HOjIeKQipbffhAE/vpoAtdU0h4oE9ilbKANcdcfMPR1YzgU/3Dujknp3Bir9u3NcjOldYw/3dK22Ms2Ycsdsbkn7e9L/lkINYLK1pXEj+P+pTB41/Eowo26v79iDGwKdTm5CIJSZgncp78sRCjTOn2GPkOcKbZdnadPRVPnjedGhx5USxPcjk/4pxl1uAzClAh2CETKTCOQQoK1W7aLBOwA+tpiL9XUHGHgzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R6J5Vf60ZH593Fnfny1wUtHopAtVM5VwNjmMh2bUKaM=;
 b=SCn0sQVsOJIcTTh4jzXSgtc3Ak/2LnN8L7mxRfCX34nB1h6stfgehP7a14TZJRSBd7shfOiM5paFSo1YZS+ngWHvffLg0ciK4vBoJenscWJoOhDx6MmI3+Z3EXMw9P2Y9XWg80Q59Qb5JP0j2hyoo5VAVfjo6K0/SWp56WmAA/LGzGi2sc7PPE4PrFTBcb0+nDuYM+zDMQnh3ZtRqxvM60uzISD1veTXwCDQtLpEyGVbiblrOZMsGtnqX4GPCXKkAiIqtPBv9nCzLBupF5xAwRMXhmoYXKtioScmSbyX6l/oPDrCL/y41ADH5GaWaQXu2tG9ntFZwc8PykFLdtU45g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6J5Vf60ZH593Fnfny1wUtHopAtVM5VwNjmMh2bUKaM=;
 b=5Er2dY56NqSvEmuGR9I/q+qVf3r3cu3mvPEJOux0fee04trZ+AAsVo0PsF5p5w8C3NsJKwo2lteiOvR76qoljgtgWCdHMJDkuHJGUk2eb9rq/vJDocpKAXTQYEv43b1mEC1D4J0+UHIaY0JNoDxD1jDW1miRWdldAyAuednp2zyNg72QvIP1AUohKKBExU/HPq289P/e9Ta0NOUVSgFdEatsmTJCCJOGoPoBOvfd24ODVcdUmkDuf0WT0wOgJGm4kBVQU/9zQLWQNhGI/MkzMjHq4+QiMfwXZUS0X34/80X27FVsfzV/UNXK6qKIv25aZepjw5y7/ZnQRTK3ssNMqw==
Received: from PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16)
 by PH0PR11MB5062.namprd11.prod.outlook.com (2603:10b6:510:3e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 06:47:51 +0000
Received: from PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee]) by PH7PR11MB6451.namprd11.prod.outlook.com
 ([fe80::80b9:80a3:e88a:57ee%3]) with mapi id 15.20.7228.022; Thu, 25 Jan 2024
 06:47:51 +0000
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
Subject: Re: [PATCH v3 3/3] dt-bindings: mfd: atmel,hlcdc: Convert to DT
 schema format
Thread-Topic: [PATCH v3 3/3] dt-bindings: mfd: atmel,hlcdc: Convert to DT
 schema format
Thread-Index: AQHaSfB9G+vm5oXSwEmW6mjsJvC8kbDftWKAgADHFQCAAI7AgIAEKeOAgABefoCAAuIIAIAAvjkAgADtGQA=
Date: Thu, 25 Jan 2024 06:47:51 +0000
Message-ID: <c3c30bf2-e7c2-4861-bfdf-519a7afde476@microchip.com>
References: <20240118092612.117491-1-dharma.b@microchip.com>
 <20240118092612.117491-4-dharma.b@microchip.com>
 <20240118-recent-glorified-fd35d72e006e@spud>
 <c33868c8-dc42-4800-885c-5e5f24c2044e@microchip.com>
 <20240119-character-mardi-43571d7fe7d5@wendy>
 <da60f9f3-f955-4a87-a020-5710185953c0@microchip.com>
 <20240122-stark-duress-2f59294dcf27@spud>
 <4906b7e2-0ddb-4d3c-a48b-e16278f2d649@microchip.com>
 <20240124-lend-emerald-1028fe65cc39@spud>
In-Reply-To: <20240124-lend-emerald-1028fe65cc39@spud>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6451:EE_|PH0PR11MB5062:EE_
x-ms-office365-filtering-correlation-id: 6a989846-f219-41fd-cb69-08dc1d718d0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i+MPAI6qUOH35nPKakDITY/vhnA8LumRTz/yoZMSwRQlP4jyAuCRgRfLpr147WugVJag7VPaGytfDuOhlUbhBGquHYycNRXKcnSNRVB3GucQotoEztGf1pa6MaLlzqH33z5/KgcUiO1LE2FgS2YYd7P8xr7UYK8jWyemaqkdyFt/ez1kPk/iM/OTOaZxNCLCMnpCbOodFCYjmFyHeeZLz7yu/rWK/6TPg2tHywvDp+sHjjUF5IABDJi+hL9B0TzhQZkzck0+DOQrf5Qx9G5QkX0j7nqMbulEBGq2pa+n40mvsRmep0T2BY7okdLOJbhsbxU85dnLtF6vye7HOUF02KR0Me4aQ3EUbB+84dLhPvEcq+fDUapa4Nj/ZCe3w2deqR0lKYixa2EXzWQIBr+8/vGuU0vfuv+9aKqWi7R+VusaV/Qxxppj3aodcGIS4T1h/c7zrzkDpKDRuJLope94KjL4RP9feKswk1yLZ30mVYNIiJTRDJudRlOExd63zq34FCpRZEJQVhNLVfms9PLsG1Cg/HpZDCp82biwNgwYRhpWcV4Pws6mzEX27bO2t0XUigHi4G4oAPA8UVEg8WJ5MKduymd19Mo66XWhCAux/8rzONIQiHz31iEzcM34uy8uYdhf/k5WieOZovqfma9R6jTxpLx7tKXbOeZvyFu0d+oOeQvbaU17rbVFSO5Iqqa/
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(76116006)(83380400001)(66946007)(6916009)(38070700009)(31696002)(86362001)(316002)(36756003)(41300700001)(54906003)(64756008)(38100700002)(122000001)(66446008)(66476007)(53546011)(6512007)(31686004)(6506007)(2906002)(7416002)(71200400001)(5660300002)(66556008)(6486002)(4326008)(478600001)(966005)(8936002)(8676002)(2616005)(26005)(107886003)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTI3ajJick8xUXI4dEpDZzVNTVBzL1Q3eEhJVndIRmdHR0dxTzBodllSVk92?=
 =?utf-8?B?UjQ4bjRyeENMamVNbzNra2JhaGR5TW9JMUl4OG1QR213ZFU4NTNQVCszalNL?=
 =?utf-8?B?Y3VGOEcwMWhuTXBTZlR0eSswQW5sb0dxOHBmRlphWVl3YUNzVXJsenJTbGRy?=
 =?utf-8?B?MTYyblYvM0l0aXFGbkNyUTV0MTdlaEZoNEVJQzVjTTBWVlpPc082MkorWmVv?=
 =?utf-8?B?Z1YyUUtBRUxObFVaVUI5T05tWGhaN0tuU09IWW5oNDkxdWhHOUpUL21NeXVW?=
 =?utf-8?B?aS9vQTNML0J3L0d1TVVtMUN6OXBwdWwyOW5MYzZaOHVWaEdDY0M2dForVHU4?=
 =?utf-8?B?KzZaMEdUQmJ1Y3B0UEhFM2t2S1pKbmtKZlhhaGY5c0R1S3g2MkJQZmYrc2w3?=
 =?utf-8?B?a1phSUUxR3FZb3FoblgweUVkNlJKSUw5azM2QS9qamtCbGsxTXpjRDRMZ2J6?=
 =?utf-8?B?cVpGODVNVEwyZjZKamM1OGtLcGsrQ3dNY3JQRTlsZTFNZnRmdG5uMEZwL1d0?=
 =?utf-8?B?Q1lJYlllRkdpc1dnamhTOFlPaUU0MEpHOWdDeFUybGxuZUlZZHpNSklEL3gv?=
 =?utf-8?B?N2hqekltemt1NHRzVjRRajhHZ1Z2L0F3QVNpVFJmNnA1K0NjaHFZZW5CbU05?=
 =?utf-8?B?LzNTeDVmc2RUam9qeWF3ZysrQ3RwR1h1WXIzUXZhM2diek5ZbW5xSWZjVFBX?=
 =?utf-8?B?alRSVkZjaVRITmYxc1FSQko5bFFHdEZDZ2twb01jRU5CQUpSc2UyRTNtY3Jl?=
 =?utf-8?B?RTRLR240QUEvMFNRTHdhVGxFTDg5NkZYcXJXN1JkQVU0ZkEwVXg5UHVPRzEy?=
 =?utf-8?B?ZUgyUnhQaHVKaWY2SStiVGdEVWVybjYrUldzeTRESlAxWWc4RXNmaGdFUjBl?=
 =?utf-8?B?cEUzZktjWGgra3JZNUhWc1FoYUQ2bnNiRFhmVlBzeFppenlJZDNrdVRkOU1v?=
 =?utf-8?B?S1BjandhSkN3Z3JFdlIwVkVvQmtESWk3YnlsMDI3TmVKeCtmZ1VZZS82TTJD?=
 =?utf-8?B?WE5oY05nUXpkY20rcGdpQUFzRVl6VXdCZ2pxSzg1Z3lsaVR1d05WUXNoVnp3?=
 =?utf-8?B?cmlVeWYxWkNqQUhOZndtV2VNTEpLekY3TUFaUytnTjRVQjQyUHBEME0wVjFI?=
 =?utf-8?B?N093TTVCNXZOTFJ2Zk1nUFVIL0tNMWc3Q1dRem0vMkYxWCs2bFliNlJDUERZ?=
 =?utf-8?B?QnNoczNaOVAyaUwzUS9yK0FzakNXdDRXUjliSklYVlhpeGFzNWVnUlRSNHMy?=
 =?utf-8?B?SUhOSksyOFFCWXd2WHllWHBLQm9PcEtqaFNrS2pHeVZ5TEk4UWFlOEZIblNN?=
 =?utf-8?B?a3ZZUmZ5NDJiOXI3YjNsOFkvMTM4RFh4K3BWZ2R5M0t4a1BqSE9PcWQ5N1l3?=
 =?utf-8?B?N2YwcXB6VFZDTXZIU1dHMy9XWk9JQ09ZSUpkSWYyNjg4NHBPcnBJaXVQY29O?=
 =?utf-8?B?SGpDM21YWlFRYlhpSU12VXQwd0VyRmhCbVhHeXJQTHRPTkNDczlMOG1ZK011?=
 =?utf-8?B?bFBqdHJPcktOOHZsTGtiM1U2RkN3VEJNWDBwbTZLNGJLVUxDdjhUTzF4R1li?=
 =?utf-8?B?K080cGQ5Yzl5L1hYLzN4KzM5OGRmVitlbWlMaW5BbjB3QzFDQW9BdnBvK2Qw?=
 =?utf-8?B?ejNJSElxQUoxOHlRWlR2T3hYNmV0b21kSXhFN2tRRG9maXB5Q3JhdjhuWS9k?=
 =?utf-8?B?ZGVjdjlGcmtoQ2hlTFdyT1hmK0hOYTBHSDN2TjRJOHZJOWl3NEtUSUFoMTNR?=
 =?utf-8?B?aGpoc1ZpeGYvMVF5ZFRRYjdZVjFMbmNESUlhUGMxMGpjMVlqQTBZaTlSRTlB?=
 =?utf-8?B?SjBtUWU2QWhEQVh3aDNDOVNhQnNhN2E2emRNdVFOejRGYnEvcVM0K2FZdG90?=
 =?utf-8?B?WmlzVEs4bVR6MzlyWmI5dGxMSGxieStyVklKUXNxTm5vNStMeStRcU9INHV4?=
 =?utf-8?B?ajFIay9rQ2tuMmpSbitHTGtNK295NGhQZEZ1L01aUkJiTTRObUV6dW00NGg3?=
 =?utf-8?B?dkZxbzJKN1NxclhlMEUzcXA0Y2k0Vy9jMjJHQmx3VFBZaW4xaW4va2M5eWRs?=
 =?utf-8?B?MWNUNEJ2WGdkUjVLSHEydkp2YWhWNlBOYWlZdnAwTGZ0K0s5MnlSWUtSZVhS?=
 =?utf-8?Q?UFEeYjK0m2hcA4bKdtNIrtBRv?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D486825F20BF8040981D259CAABE2773@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a989846-f219-41fd-cb69-08dc1d718d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 06:47:51.4466
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhbDcKkbNEQgQb/EACgHFOgm4IhpegqEqhhFp+SsCDz65pi55pjPh8cB+ALWKz+8Vkkk0Sq/WnPw/bmR4gc7mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5062

SGkgQ29ub3IsDQpPbiAyNC8wMS8yNCAxMDowOSBwbSwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPiBP
biBXZWQsIEphbiAyNCwgMjAyNCBhdCAwNToxODoyNkFNICswMDAwLERoYXJtYS5CQG1pY3JvY2hp
cC5jb20gIHdyb3RlOg0KPj4gSGkgQ29ub3IgJiBBbGwsDQo+Pg0KPj4gT24gMjIvMDEvMjQgMjo0
NiBwbSwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPj4+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0IDAz
OjM4OjQxQU0gKzAwMDAsRGhhcm1hLkJAbWljcm9jaGlwLmNvbSAgIHdyb3RlOg0KPj4+PiBIaSBD
b25vciwNCj4+Pj4gT24gMTkvMDEvMjQgNTozMyBwbSwgQ29ub3IgRG9vbGV5IC0gTTUyNjkxIHdy
b3RlOg0KPj4+Pj4gT24gRnJpLCBKYW4gMTksIDIwMjQgYXQgMDM6MzI6NDlBTSArMDAwMCxEaGFy
bWEuQkBtaWNyb2NoaXAuY29tICAgd3JvdGU6DQo+Pj4+Pj4gT24gMTgvMDEvMjQgOToxMCBwbSwg
Q29ub3IgRG9vbGV5IHdyb3RlOg0KPj4+Pj4+PiBPbiBUaHUsIEphbiAxOCwgMjAyNCBhdCAwMjo1
NjoxMlBNICswNTMwLCBEaGFybWEgQmFsYXN1YmlyYW1hbmkgd3JvdGU6DQo+Pj4+Pj4+PiBDb252
ZXJ0IHRoZSBhdG1lbCxobGNkYyBiaW5kaW5nIHRvIERUIHNjaGVtYSBmb3JtYXQuDQo+Pj4+Pj4+
Pg0KPj4+Pj4+Pj4gQWRqdXN0IHRoZSBjbG9jay1uYW1lcyBwcm9wZXJ0eSB0byBjbGFyaWZ5IHRo
YXQgdGhlIExDRCBjb250cm9sbGVyIGV4cGVjdHMNCj4+Pj4+Pj4+IG9uZSBvZiB0aGVzZSBjbG9j
a3MgKGVpdGhlciBzeXNfY2xrIG9yIGx2ZHNfcGxsX2NsayB0byBiZSBwcmVzZW50IGJ1dCBub3QN
Cj4+Pj4+Pj4+IGJvdGgpIGFsb25nIHdpdGggdGhlIHNsb3dfY2xrIGFuZCBwZXJpcGhfY2xrLiBU
aGlzIGFsaWdubWVudCB3aXRoIHRoZSBhY3R1YWwNCj4+Pj4+Pj4+IGhhcmR3YXJlIHJlcXVpcmVt
ZW50cyB3aWxsIGVuYWJsZSBhY2N1cmF0ZSBkZXZpY2UgdHJlZSBjb25maWd1cmF0aW9uIGZvcg0K
Pj4+Pj4+Pj4gc3lzdGVtcyB1c2luZyB0aGUgSExDREMgSVAuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogRGhhcm1hIEJhbGFzdWJpcmFtYW5pPGRoYXJtYS5iQG1pY3JvY2hpcC5j
b20+DQo+Pj4+Pj4+PiAtLS0NCj4+Pj4+Pj4+IGNoYW5nZWxvZw0KPj4+Pj4+Pj4gdjIgLT4gdjMN
Cj4+Pj4+Pj4+IC0gUmVuYW1lIGhsY2RjLWRpc3BsYXktY29udHJvbGxlciBhbmQgaGxjZGMtcHdt
IHRvIGdlbmVyaWMgbmFtZXMuDQo+Pj4+Pj4+PiAtIE1vZGlmeSB0aGUgZGVzY3JpcHRpb24gYnkg
cmVtb3ZpbmcgdGhlIHVud2FudGVkIGNvbW1lbnRzIGFuZCAnfCcuDQo+Pj4+Pj4+PiAtIE1vZGlm
eSBjbG9jay1uYW1lcyBzaW1wbGVyLg0KPj4+Pj4+Pj4gdjEgLT4gdjINCj4+Pj4+Pj4+IC0gUmVt
b3ZlIHRoZSBleHBsaWNpdCBjb3B5cmlnaHRzLg0KPj4+Pj4+Pj4gLSBNb2RpZnkgdGl0bGUgKG5v
dCBpbmNsdWRlIHdvcmRzIGxpa2UgYmluZGluZy9kcml2ZXIpLg0KPj4+Pj4+Pj4gLSBNb2RpZnkg
ZGVzY3JpcHRpb24gYWN0dWFsbHkgZGVzY3JpYmluZyB0aGUgaGFyZHdhcmUgYW5kIG5vdCB0aGUg
ZHJpdmVyLg0KPj4+Pj4+Pj4gLSBBZGQgZGV0YWlscyBvZiBsdmRzX3BsbCBhZGRpdGlvbiBpbiBj
b21taXQgbWVzc2FnZS4NCj4+Pj4+Pj4+IC0gUmVmIGVuZHBvaW50IGFuZCBub3QgZW5kcG9pbnQt
YmFzZS4NCj4+Pj4+Pj4+IC0gRml4IGNvZGluZyBzdHlsZS4NCj4+Pj4+Pj4+IC4uLg0KPj4+Pj4+
Pj4gICAgICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYXRtZWwsaGxjZGMueWFtbCAgfCA5
NyArKysrKysrKysrKysrKysrKysrDQo+Pj4+Pj4+PiAgICAgIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21mZC9hdG1lbC1obGNkYy50eHQgICB8IDU2IC0tLS0tLS0tLS0tDQo+Pj4+Pj4+PiAgICAg
IDIgZmlsZXMgY2hhbmdlZCwgOTcgaW5zZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pDQo+Pj4+
Pj4+PiAgICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL2F0bWVsLGhsY2RjLnlhbWwNCj4+Pj4+Pj4+ICAgICAgZGVsZXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYXRtZWwtaGxjZGMudHh0
DQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvYXRtZWwsaGxjZGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvYXRtZWwsaGxjZGMueWFtbA0KPj4+Pj4+Pj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4+Pj4+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWNjYzk5OGFjNDJjDQo+Pj4+Pj4+
PiAtLS0gL2Rldi9udWxsDQo+Pj4+Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL2F0bWVsLGhsY2RjLnlhbWwNCj4+Pj4+Pj4+IEBAIC0wLDAgKzEsOTcgQEAN
Cj4+Pj4+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1D
bGF1c2UpDQo+Pj4+Pj4+PiArJVlBTUwgMS4yDQo+Pj4+Pj4+PiArLS0tDQo+Pj4+Pj4+PiArJGlk
Omh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL21mZC9hdG1lbCxobGNkYy55YW1sIw0KPj4+
Pj4+Pj4gKyRzY2hlbWE6aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlh
bWwjDQo+Pj4+Pj4+PiArDQo+Pj4+Pj4+PiArdGl0bGU6IEF0bWVsJ3MgSExDRCBDb250cm9sbGVy
DQo+Pj4+Pj4+PiArDQo+Pj4+Pj4+PiArbWFpbnRhaW5lcnM6DQo+Pj4+Pj4+PiArICAtIE5pY29s
YXMgRmVycmU8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPg0KPj4+Pj4+Pj4gKyAgLSBBbGV4
YW5kcmUgQmVsbG9uaTxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4NCj4+Pj4+Pj4+ICsg
IC0gQ2xhdWRpdSBCZXpuZWE8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2Pg0KPj4+Pj4+Pj4gKw0K
Pj4+Pj4+Pj4gK2Rlc2NyaXB0aW9uOg0KPj4+Pj4+Pj4gKyAgVGhlIEF0bWVsIEhMQ0RDIChITENE
IENvbnRyb2xsZXIpIElQIGF2YWlsYWJsZSBvbiBBdG1lbCBTb0NzIGV4cG9zZXMgdHdvDQo+Pj4+
Pj4+PiArICBzdWJkZXZpY2VzLCBhIFBXTSBjaGlwIGFuZCBhIERpc3BsYXkgQ29udHJvbGxlci4N
Cj4+Pj4+Pj4+ICsNCj4+Pj4+Pj4+ICtwcm9wZXJ0aWVzOg0KPj4+Pj4+Pj4gKyAgY29tcGF0aWJs
ZToNCj4+Pj4+Pj4+ICsgICAgZW51bToNCj4+Pj4+Pj4+ICsgICAgICAtIGF0bWVsLGF0OTFzYW05
bjEyLWhsY2RjDQo+Pj4+Pj4+PiArICAgICAgLSBhdG1lbCxhdDkxc2FtOXg1LWhsY2RjDQo+Pj4+
Pj4+PiArICAgICAgLSBhdG1lbCxzYW1hNWQyLWhsY2RjDQo+Pj4+Pj4+PiArICAgICAgLSBhdG1l
bCxzYW1hNWQzLWhsY2RjDQo+Pj4+Pj4+PiArICAgICAgLSBhdG1lbCxzYW1hNWQ0LWhsY2RjDQo+
Pj4+Pj4+PiArICAgICAgLSBtaWNyb2NoaXAsc2FtOXg2MC1obGNkYw0KPj4+Pj4+Pj4gKyAgICAg
IC0gbWljcm9jaGlwLHNhbTl4NzUteGxjZGMNCj4+Pj4+Pj4+ICsNCj4+Pj4+Pj4+ICsgIHJlZzoN
Cj4+Pj4+Pj4+ICsgICAgbWF4SXRlbXM6IDENCj4+Pj4+Pj4+ICsNCj4+Pj4+Pj4+ICsgIGludGVy
cnVwdHM6DQo+Pj4+Pj4+PiArICAgIG1heEl0ZW1zOiAxDQo+Pj4+Pj4+PiArDQo+Pj4+Pj4+PiAr
ICBjbG9ja3M6DQo+Pj4+Pj4+PiArICAgIG1heEl0ZW1zOiAzDQo+Pj4+Pj4+IEhtbSwgb25lIHRo
aW5nIEkgcHJvYmFibHkgc2hvdWxkIGhhdmUgc2FpZCBvbiB0aGUgcHJldmlvdXMgdmVyc2lvbiwg
YnV0DQo+Pj4+Pj4+IEkgbWlzc2VkIHNvbWVob3c6IEl0IHdvdWxkIGJlIGdvb2QgdG8gYWRkIGFu
IGl0ZW1zIGxpc3QgdG8gdGhlIGNsb2Nrcw0KPj4+Pj4+PiBwcm9wZXJ0eSBoZXJlIHRvIGV4cGxh
aW4gd2hhdCB0aGUgMyBjbG9ja3MgYXJlL2FyZSB1c2VkIGZvciAtIGVzcGVjaWFsbHkNCj4+Pj4+
Pj4gc2luY2UgdGhlcmUgaXMgYWRkaXRpb25hbCBjb21wbGV4aXR5IGJlaW5nIGFkZGVkIGhlcmUg
dG8gdXNlIGVpdGhlciB0aGUNCj4+Pj4+Pj4gc3lzIG9yIGx2ZHMgY2xvY2tzLg0KPj4+Pj4+IE1h
eSBJIGlucXVpcmUgaWYgdGhpcyBhcHByb2FjaCBpcyBsaWtlbHkgdG8gYmUgZWZmZWN0aXZlPw0K
Pj4+Pj4+DQo+Pj4+Pj4gICAgICAgY2xvY2tzOg0KPj4+Pj4+ICAgICAgICAgaXRlbXM6DQo+Pj4+
Pj4gICAgICAgICAgIC0gZGVzY3JpcHRpb246IHBlcmlwaGVyYWwgY2xvY2sNCj4+Pj4+PiAgICAg
ICAgICAgLSBkZXNjcmlwdGlvbjogZ2VuZXJpYyBjbG9jayBvciBsdmRzIHBsbCBjbG9jaw0KPj4+
Pj4+ICAgICAgICAgICAgICAgT25jZSB0aGUgTFZEUyBQTEwgaXMgZW5hYmxlZCwgdGhlIHBpeGVs
IGNsb2NrIGlzIHVzZWQgYXMgdGhlDQo+Pj4+Pj4gICAgICAgICAgICAgICBjbG9jayBmb3IgTENE
Qywgc28gaXRzIEdDTEsgaXMgbm8gbG9uZ2VyIG5lZWRlZC4NCj4+Pj4+PiAgICAgICAgICAgLSBk
ZXNjcmlwdGlvbjogc2xvdyBjbG9jaw0KPj4+Pj4+ICAgICAgICAgbWF4SXRlbXM6IDMNCj4+Pj4+
IEhtbSB0aGF0IHNvdW5kcyB2ZXJ5IHN1c3BlY3QgdG8gbWUuICJPbmNlIHRoZSBsdmRzcGxsIGlz
IGVuYWJsZWQgdGhlDQo+Pj4+PiBnZW5lcmljIGNsb2NrIGlzIG5vIGxvbmdlciBuZWVkZWQiIHNv
dW5kcyBsaWtlIGJvdGggY2xvY2tzIGNhbiBiZSBwcm92aWRlZA0KPj4+Pj4gdG8gdGhlIElQIG9u
IGRpZmZlcmVudCBwaW5zIGFuZCB0aGVpciBwcm92aXNpb24gaXMgbm90IG11dHVhbGx5DQo+Pj4+
PiBleGNsdXNpdmUsIGp1c3QgdGhhdCB0aGUgSVAgd2lsbCBvbmx5IGFjdHVhbGx5IHVzZSBvbmUg
YXQgYSB0aW1lLiBJZg0KPj4+Pj4gdGhhdCBpcyB0aGUgY2FzZSwgdGhlbiB0aGlzIHBhdGNoIGlz
IG5vdHQgY29ycmVjdCBhbmQgdGhlIGJpbmRpbmcgc2hvdWxkDQo+Pj4+PiBhbGxvdyBmb3IgNCBj
bG9ja3MsIHdpdGggYm90aCB0aGUgZ2VuZXJpYyBjbG9jayBhbmQgdGhlIGx2ZHMgcGxsIGJlaW5n
DQo+Pj4+PiBwcmVzZW50IGluIHRoZSBEVCBhdCB0aGUgc2FtZSB0aW1lLg0KPj4+Pj4NCj4+Pj4+
IEkgdmFndWVseSByZWNhbGwgaW50ZXJuYWwgZGlzY3Vzc2lvbiBhYm91dCB0aGlzIHByb2JsZW0g
c29tZSB0aW1lIGJhY2sNCj4+Pj4+IGJ1dCB0aGUgZGV0YWlscyBhbGwgZXNjYXBlIG1lLg0KPj4+
PiBMZXQncyBkZWx2ZSBkZWVwZXIgaW50byB0aGUgY2xvY2sgY29uZmlndXJhdGlvbiBmb3IgTENE
Q19QQ0suDQo+Pj4+DQo+Pj4+IENvbnNpZGVyaW5nIHRoZSBmbGV4aWJpbGl0eSBvZiB0aGUgZGVz
aWduLCBpdCBhcHBlYXJzIHRoYXQgYm90aCBjbG9ja3MsDQo+Pj4+IHN5c19jbGsgKGdlbmVyaWMg
Y2xvY2spIGFuZCBsdmRzX3BsbF9jbGssIGNhbiBpbmRlZWQgYmUgcHJvdmlkZWQgdG8gdGhlDQo+
Pj4+IElQIHNpbXVsdGFuZW91c2x5LiBUaGUgY3J1Y2lhbCBhc3BlY3QsIGhvd2V2ZXIsIGlzIHRo
YXQgdGhlIElQIHdpbGwNCj4+Pj4gdXRpbGl6ZSBvbmx5IG9uZSBvZiB0aGVzZSBjbG9ja3MgYXQg
YW55IGdpdmVuIHRpbWUuIFRoaXMgYWxpZ25zIHdpdGggdGhlDQo+Pj4+IHNwZWNpZmljIHJlcXVp
cmVtZW50cyBvZiB0aGUgYXBwbGljYXRpb24sIHdoZXJlIHRoZSBjaG9pY2Ugb2YgY2xvY2sNCj4+
Pj4gZGVwZW5kcyBvbiB3aGV0aGVyIHRoZSBMVkRTIGludGVyZmFjZSBvciBNSVBJL0RTSSBpcyBp
biB1c2UuDQo+Pj4gSWYgYm90aCBjbG9ja3MgY2FuIHBoeXNpY2FsbHkgYmUgcHJvdmlkZWQgdG8g
dGhlIElQIHRoZW4gYm90aCBvZiB0aGVtDQo+Pj4gc2hvdWxkIGJlIGluIHRoZSBkdC4gVGhlIGhj
bGRjIGFwcGVhcnMgdG8gbWUgdG8gYmUgYSBwYXJ0IG9mIHRoZSBTb0MgYW5kDQo+Pj4gdGhlIGNs
b2NrIHJvdXRpbmcgdG8gdGhlIElQIGlzIGxpa2VseSBmaXhlZC4NCj4+Pg0KPj4+PiBUbyBlbnN1
cmUgcHJvcGVyIGNvbmZpZ3VyYXRpb24gb2YgdGhlIHBpeGVsIGNsb2NrIHBlcmlvZCwgd2UgbmVl
ZCB0bw0KPj4+PiBkaXN0aW5jdGx5IGlkZW50aWZ5IHdoaWNoIGNsb2NrcyBhcmUgYmVpbmcgdXRp
bGl6ZWQuIEZvciBpbnN0YW5jZSwgaW4NCj4+Pj4gdGhlIExWRFMgaW50ZXJmYWNlIHNjZW5hcmlv
LCB0aGUgbHZkc19wbGxfY2xrIGlzIGVzc2VudGlhbCwgcmVzdWx0aW5nIGluDQo+Pj4+IExDRENf
UENLIGJlaW5nIHNldCB0byB0aGUgc291cmNlIGNsb2NrLiBDb252ZXJzZWx5LCBpbiB0aGUgTUlQ
SS9EU0kNCj4+Pj4gY2FzZSwgdGhlIExDREMgR0NMSyBpcyByZXF1aXJlZCwgbGVhZGluZyB0byBM
Q0RDX1BDSyBiZWluZyBkZWZpbmVkIGFzDQo+Pj4+IHNvdXJjZSBjbG9jay9DTEtESVYrMi4NCj4+
Pj4NCj4+Pj4gQ29uc2lkZXJpbmcgdGhlIHBvdGVudGlhbCBjb2V4aXN0ZW5jZSBvZiBzeXNfY2xr
IGFuZCBsdmRzX3BsbF9jbGsgaW4gdGhlDQo+Pj4+IERldmljZSBUcmVlIChEVCksIHdlIG1heSBu
ZWVkIHRvIGludHJvZHVjZSBhbiBhZGRpdGlvbmFsIGZsYWcgaW4gdGhlIERULg0KPj4+PiBUaGlz
IGZsYWcgY291bGQgc2VydmUgYXMgYSBjbGVhciBpbmRpY2F0b3Igb2Ygd2hldGhlciB0aGUgTFZE
UyBpbnRlcmZhY2UNCj4+Pj4gb3IgTUlQSS9EU0kgaXMgYmVpbmcgZW1wbG95ZWQuIEFzIHdlIGRp
c2N1c3NlZCB0byBkcm9wIHRoaXMgZmxhZyBhbmQNCj4+Pj4ganVzdCBoYXZlIGFueSBvbmUgb2Yg
dGhlIGNsb2NrcyBJIGJlbGlldmUgdGhhdCB0aGlzIGFwcHJvYWNoIHByb3ZpZGVzIGENCj4+Pj4g
c2Vuc2libGUgYW5kIHNjYWxhYmxlIHNvbHV0aW9uLCBhbGxvd2luZyBmb3IgYSBjb21wcmVoZW5z
aXZlDQo+Pj4+IHJlcHJlc2VudGF0aW9uIG9mIHRoZSBjbG9ja2luZyBjb25maWd1cmF0aW9uLg0K
Pj4+IFRoaXMgaXMgcHJvYmFibHkgYSBxdWVzdGlvbiBmb3IgdGhlIGZvbGtzIG9uIHRoZSBEUk0g
b3IgbWVkaWEgc2lkZSBvZg0KPj4+IHRoaW5ncywgYnV0IGlzIGl0IG5vdCBwb3NzaWJsZSB0byBk
ZXRlcm1pbmUgYmFzZWQgb24gdGhlIGVuZHBvaW50IHdoYXQNCj4+PiBwcm90b2NvbCBpcyByZXF1
aXJlZD8NCj4+PiBJIGtub3cgdGhhdCBvbiB0aGUgbWVkaWEgc2lkZSBvZiB0aGluZ3MgdGhlcmUn
cyBhbiBlbmRwb2ludCBwcm9wZXJ0eQ0KPj4+IHRoYXQgY2FuIGJlIHVzZWQgdG8gc3BlY2lmaWMg
dGhlIGJ1cy10eXBlIC0gaXMgdGhlcmUgYW4gZXF1aXZhbGVudA0KPj4+IHByb3BlcnR5IGZvciBE
Uk0gc3R1ZmY/DQo+PiBZZXMsIGl0IGNhbiBiZSBkb25lLg0KPj4gSSB3aWxsIGhhdmUgdGhlIGx2
ZHMgcGxsIGluIHRoZSBsdmRzIERUIG5vZGUuDQo+PiBJIHdpbGwganVzdCBjb252ZXJ0IHRoZSBl
eGlzdGluZyB0ZXh0IGJpbmRpbmcgdG8geWFtbCB3aXRob3V0IHRoaXMNCj4+IGFkZGl0b25hbCBs
dmRzIHBsbCBjbG9jay4NCj4gSWYgdGhlIGx2ZHMgcGxsIGlzIGFuIGlucHV0IHRvIHRoZSBobGNk
YywgeW91IG5lZWQgdG8gYWRkIGl0IGhlcmUuDQo+ICBGcm9tIHlvdXIgZGVzY3JpcHRpb24gZWFy
bGllciBpdCBkb2VzIHNvdW5kIGxpa2UgaXQgaXMgYW4gaW5wdXQgdG8NCj4gdGhlIGhsY2RjLCBi
dXQgbm93IHlvdSBhcmUgY2xhaW1pbmcgdGhhdCBpdCBpcyBub3QuDQoNClRoZSBMVkRTIFBMTCBz
ZXJ2ZXMgYXMgYW4gaW5wdXQgdG8gYm90aCB0aGUgTENEQyBhbmQgTFZEU0MsIHdpdGggdGhlIA0K
TFZEU19QTEwgbXVsdGlwbGllZCBieSA3IGZvciB0aGUgUGl4ZWwgY2xvY2sgdG8gdGhlIExWRFMg
UEhZLCBhbmQgDQpMVkRTX1BMTCBkaXZpZGVkIGJ5IDcgZm9yIHRoZSBQaXhlbCBjbG9jayB0byB0
aGUgTENEQy4NCg0KSSBhbSBpbmNsaW5lZCB0byBiZWxpZXZlIHRoYXQgYXBwcm9wcmlhdGVseSBj
b25maWd1cmluZyBhbmQgZW5hYmxpbmcgaXQgDQppbiB0aGUgTFZEUyBkcml2ZXIgd291bGQgYmUg
dGhlIGFwcHJvcHJpYXRlIGNvdXJzZSBvZiBhY3Rpb24uDQoNCj4gDQo+IEkgZG9uJ3Qga25vdyB5
b3VyIGhhcmR3YXJlLCBzbyBJIGhhdmUgbm8gaWRlYSB3aGljaCBvZiB0aGUgdHdvIGlzDQo+IGNv
cnJlY3QsIGJ1dCBpdCBzb3VuZHMgbGlrZSB0aGUgZm9ybWVyLiBXaXRob3V0IGRpZ2dpbmcgaW50
byBob3cgdGhpcw0KPiB3b3JrcyBteSBhc3N1bXB0aW9uIGFib3V0IHRoZSBoYXJkd2FyZSBoZXJl
IGxvb2tzIGxpa2UgaXMgdGhhdCB0aGUgbHZkcw0KPiBjb250cm9sbGVyIGlzIGEgY2xvY2sgcHJv
dmlkZXIsDQoNCkl0J3MgYSBQTEwgY2xvY2sgZnJvbSBQTUMuDQoNCj4gYW5kIHRoYXQgdGhlIGx2
ZHMgY29udHJvbGxlcidzIGNsb2NrIGlzDQo+IGFuIG9wdGlvbmFsIGlucHV0IGZvciB0aGUgaGxj
ZGMuDQoNCkFnYWluIGl0J3MgYSBQTEwgY2xvY2sgZnJvbSBQTUMuDQoNClBsZWFzZSByZWZlciBT
ZWN0aW9uIDM5LjMgDQpodHRwczovL3d3MS5taWNyb2NoaXAuY29tL2Rvd25sb2Fkcy9hZW1Eb2N1
bWVudHMvZG9jdW1lbnRzL01QVTMyL1Byb2R1Y3REb2N1bWVudHMvRGF0YVNoZWV0cy9TQU05WDct
U2VyaWVzLURhdGEtU2hlZXQtRFM2MDAwMTgxMy5wZGYNCg0KPiANCj4gQ2FuIHlvdSBwbGVhc2Ug
ZXhwbGFpbiB3aGF0IHByb3ZpZGVzIHRoZSBsdmRzIHBsbCBjbG9jayBhbmQgc2hvdyBhbg0KPiBl
eGFtcGxlIG9mIGhvdyB5b3UgdGhpbmsgdGhlIGRldmljdHJlZSB3b3VsZCBsb29rIHdpdGggInRo
ZSBsdmRzIHBsbCBpbg0KPiB0aGUgbHZkcyBkdCBub2RlIj8NCg0KU3VyZSwgUGxlYXNlIHNlZSB0
aGUgYmVsb3cgZXhhbXBsZQ0KDQpUaGUgdHlwaWNhbCBsdmRzIG5vZGUgd2lsbCBsb29rIGxpa2UN
Cg0KICAgICAgICAgICAgICAgICBsdmRzX2NvbnRyb2xsZXI6IGx2ZHMtY29udHJvbGxlckBmODA2
MDAwMCB7DQogICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAs
c2FtOXg3LWx2ZHMiOw0KICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweGY4MDYwMDAw
IDB4MTAwPjsNCiAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDU2IElSUV9U
WVBFX0xFVkVMX0hJR0ggMD47DQogICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZw
bWMgUE1DX1RZUEVfUEVSSVBIRVJBTCA1Nj4sIDwmcG1jIA0KUE1DX1RZUEVfQ09SRSBQTUNfTFZE
U1BMTD47DQogICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAicGNsayIsICJs
dmRzX3BsbF9jbGsiOw0KICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7DQogICAgICAgICAgICAgICAgIH07DQoNCi0tIA0KV2l0aCBCZXN0IFJlZ2FyZHMsDQpEaGFy
bWEgQi4NCj4gDQo+IFRoYW5rcywNCj4gQ29ub3IuDQo+IA0KDQoNCg0K

