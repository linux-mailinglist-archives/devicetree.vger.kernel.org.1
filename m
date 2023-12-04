Return-Path: <devicetree+bounces-21365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F38AE8035C6
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:02:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A2601C20A8A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87BA22575B;
	Mon,  4 Dec 2023 14:02:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from KOR01-PS2-obe.outbound.protection.outlook.com (mail-ps2kor01olkn2022.outbound.protection.outlook.com [40.92.242.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A6DD83
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 06:02:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iSKGLqujY7v+twHlOxo67oLQbnH0sML9oQAH/BtpJRfksGrfwVh7w8qeuhFD0dolWMc3AX1VEC3kv+QebFVgCkq+mS955JznjhF+Gp1Zr3qkw1bSKbRRNiINLWzkeYgzBtFVhPrWG0Bzu3cybT45boIT4fyvjOWda3C//3FrOW5RTe/S4MyLSsLKyeM4xByw31QRtjYdXJsF5Sj3S7mVW6+yDvm5LOYx+3+P1FuLx+lbzz1auqaJ3wSkeiY8icWwvcDlVdAkTb20ILq/uqjcE/AlVMAkBho5urUHIB1d5hR1ud/IHQIUZeTIh08Vl/70hAk7n8vmQul5S9+ak4wQlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NvcbXrW2pX+HTsiYB4gPvEgra2V5hxXhAFmxLbYcxcE=;
 b=XS6uJNKMsPrGfy+SqXB9oaqpR1r6yur8eUc0EW3dVGhYcHr+N5y6cDLeVzobJLkBloYnj7XeAlABaT7e9CkuZtYfOYNaw9jwEejhj8Y/HbkjSUCBKJRO5X0TvGWVuCgb3iVBpK13GO17MHdQgF/7eWohCntLUqkGLmZit+Qyf8T1oVZR/7lE7+gD2UKLUWi2uJLwDidl5/1+9fCyDvgq0O7J4Mi0oJoYsLwnS1Q24vDP4Iy34s8LkiLzhGuBwUnHCH2SriFvM6eoatTdbkiysPMQRWO3NxzdUUY+UZplG+hnuWND0eZK3A2ISufy6r0UGxiTlnIoWbaVLQ6fm6Ia6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from PS2P216MB1348.KORP216.PROD.OUTLOOK.COM (2603:1096:301:99::11)
 by PU4P216MB1979.KORP216.PROD.OUTLOOK.COM (2603:1096:301:d9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.23; Mon, 4 Dec
 2023 14:02:00 +0000
Received: from PS2P216MB1348.KORP216.PROD.OUTLOOK.COM
 ([fe80::c25c:ffae:beb7:284d]) by PS2P216MB1348.KORP216.PROD.OUTLOOK.COM
 ([fe80::c25c:ffae:beb7:284d%5]) with mapi id 15.20.7068.022; Mon, 4 Dec 2023
 14:02:00 +0000
From: devicetree <kez1959@live.com.au>
To: devicetree@vger.kernel.org
Subject: Re: request for help 
Date: 4 Dec 2023 06:01:57 -0800
Message-ID:
 <PS2P216MB1348BD42FB976E4AC024169BE986A@PS2P216MB1348.KORP216.PROD.OUTLOOK.COM>
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-TMN: [g68i6xVbvl7DzZPT4Oio0Ufs7om/3ayQe1CBcDWEZLo=]
X-ClientProxiedBy: SYBPR01CA0093.ausprd01.prod.outlook.com
 (2603:10c6:10:3::33) To PS2P216MB1348.KORP216.PROD.OUTLOOK.COM
 (2603:1096:301:99::11)
X-Microsoft-Original-Message-ID: <20231204060153.239A3528360E19C6@live.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS2P216MB1348:EE_|PU4P216MB1979:EE_
X-MS-Office365-Filtering-Correlation-Id: bcb59486-05cd-4a20-d051-08dbf4d195b3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	tKs3MR/5WF490V9wS33qRjS49kalPqjObRzMyL7XLPy3/6xgCWNpximy9JmmijHhbZMs6TS0mIG5RGmFzyLrN7CAlV0y0gGS+RAzhU4JP+DuJ0gTcl9hR9vHEk8I4fQd8ZRwF49fqIZLCj3lehWR6P+2Ppa0w0Auwt5aV5G/MuNfU69D//NVM8EFcHoJ3xqfVdXRY0WvBa0uDjtIRl0SFHqoNIzLJVKHHdoMqvI9A3+2nCNrBm9RPM0JcweTnTw3OAfvJHEo8lRAQOM47k7zn6nljUP+OiBeB6+HIy6UCHgikgZMEFaR03oEg/EWmZcV2G/KZ1/vJEgwHe5/M9bMYZSIw/KXkGntn+T6riWMMftunscbAeoTj+mClusnzadyEpu6Lavm7oh0me0EEUhZfwB+dBV789BsumwOE2fw1zilXvLs7CS/DhsJ6ncW2sfxP1gFIavMtMZBBtj72x1JHWUjZzKIG5cf8tea77Gwk9lbAPf7Gbp0H6DaWJ6fuiVPlQ80ThS9Q+ZJjBWYwyaA172BTWPvw8VxODFRxEALB71L6SFH6xArNtmrodTWsQIi
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?L25sUDN1bWhJNDJ2VXZWY1B5Q2lJV0M2RGNUMVd1UjR2dlU2YTBUbVVOaVJp?=
 =?utf-8?B?SHk3SmpQbVY0RXlOU1U2N0lGc2ZMbW0rbGtPU0R4UVNoOEM3OG5vaytYM1l4?=
 =?utf-8?B?Q1Q0K1VLSjkvdGFrSW1aUVlybGNGMlQraTlrQkRsZXFTSm0zODh5NWRUSTBM?=
 =?utf-8?B?akMzTXRlV01PQ29PUklRMHd0Uy9kNU5HdXV2R0tQV1EvamJjZjEwNW1JMmtD?=
 =?utf-8?B?cGlyT1RNUUpzdDB4MVdhbDB3dWQ2MUREOUJyeHBQam4rSjVOMGZCVTBqQWF3?=
 =?utf-8?B?aGRLQUg0cURIcTZOZXpsT0J6SWc1T0NLb0NReVZaeEZhMFluMDJ1QzRpenI1?=
 =?utf-8?B?R3FRUmEvaUpib2k5NE04OWlSSnMyZjJQbmNiemtldzJhVlBHeGFJbGZXazB0?=
 =?utf-8?B?RGZ4NzIzdlVOZTFLTnllaHh2YUxmeWVVbGVSam5RTzBjZVZKWG5YZUh2WWFH?=
 =?utf-8?B?dGJvMGhZcW1xQ0w5bURuclQzK1FHdzZvWlVJc3VoSlprVEQ1SllXOU12ZTJQ?=
 =?utf-8?B?VkJienFremtyNENJTm5nZTdLaVIxRWZZMCt5MHJpTjJtdFp2emxYSzVqbmUz?=
 =?utf-8?B?R3BQQ2dlU0c4b1hjcEdpYWVNeXRuR3RjV1hWOUxCSnErS0RwT0JRS2FxY1Uw?=
 =?utf-8?B?am1oeExCczI2d0x4VG1udGptNFZJMExuck1IUzRwU0lZNS9KbjljRGxxem1W?=
 =?utf-8?B?VlpSb2FRSmhqMzFMbmQ2WWI1cDJ2N0kwNThmMDJvUU51MmdZMDVBeVVZQkhy?=
 =?utf-8?B?R1pNNkhqRER6bmNxWmhCOW02SWZKK1BUbTl2VW1teGlnU3MvcUY2d2prdGdF?=
 =?utf-8?B?dVhqeGZSQUhSYlQ3U2pCQXJQNnNlRU1zZDFtZU4rQWdvd09ZSzZ0aVpXM2tZ?=
 =?utf-8?B?U3BUd2lFM3BPODB2Ylk3YjZnRlA5SjRraHl2YVdTeU83a0tuS1RhWEUzUk13?=
 =?utf-8?B?MUxaV1FlYWlJVDdqVUdpdy9hTmlGaEdSSkFVVmdTdHUxZEtxTTEra0R0YzhN?=
 =?utf-8?B?aHByTkJicDVEM0VuUmJxMnF3TUkydnRWNWlBVVkxYlJxVFFKclRhSVJpd3BV?=
 =?utf-8?B?aEtadU9BY1R3SXlZUXVtc091L0Y2V1VJVTY0dnZsOHZFUWRHRFdKd2VMY2pL?=
 =?utf-8?B?bmRRUUZrL1BocXlaTWw0SDJwRytJdFU0bXREZk5KUzRZL3JaUjlmZSsyMVpZ?=
 =?utf-8?B?UVBQM3o4UURKeno5K3hVWTNvNU9pT0IvVk5VK1pZa2pHMERjc0xJakZZcCtj?=
 =?utf-8?B?Ylk4ZkhoUzI4bmxFQjVhZHJQVTNCREdkdzZXUkxQTmZHUGNWSDhZVXlPT3M3?=
 =?utf-8?B?K2hON2dIbnpZYldYUXpxL1NqaC83elRNS2VPZVRZeFRPV25lK004QXNraHZT?=
 =?utf-8?B?QmM2SldSTWVPSTF3d2hMcFdNRC9XVHI5QUpORVU2bUFERzFBaTNMYlR1cWp3?=
 =?utf-8?B?d0xPQS9abWpCNkg0VUpkeUh2M0FncUN6dE1hK0FNQlRXZm5CcFJQYjdLNDZI?=
 =?utf-8?B?VHZuZHBia3FIY2xReGNnQmVydUNEcWhNMytaSDRQZjJGMXlhZ0lwUVJmOGhr?=
 =?utf-8?B?TllFaDZhYWhuMUxMZUl0OTNKYWdhUE84eG1hNjh1TXdOcG1OYnpjTVl3c2dW?=
 =?utf-8?B?MFRnU2FGL04rS0kvQkZlbHEvWXA1V3c9PQ==?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-0555f.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb59486-05cd-4a20-d051-08dbf4d195b3
X-MS-Exchange-CrossTenant-AuthSource: PS2P216MB1348.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 14:02:00.3789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU4P216MB1979

Hi there,
We have never met before but I am Doctor Halilovic from Australia=20
currently in South Gaza. Please may I kindly know your name and=20
where you are from? I know it can be annoying getting emails from=20
people you do not know. Still, I am getting in touch because I=20
wanted to discuss an opportunity for us to connect and=20
collaborate. I can be reached via my email address:=20
dr.halilovicnedim@hotmail.com

Yours faithfully
Halilovic

