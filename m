Return-Path: <devicetree+bounces-13193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 177EF7DCDD4
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74D91B20F4F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 13:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD8E182C2;
	Tue, 31 Oct 2023 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="H5O58bZD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6BC134D6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 13:29:33 +0000 (UTC)
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2026.outbound.protection.outlook.com [40.92.98.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A0BE6;
	Tue, 31 Oct 2023 06:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxcfdwU6SQaSFbJSWCUzcPnwK2MI7glX3ZWUDm1oy78nbU4J7IWvUPIZ2lXybZK/P+fMXQ+WwTtyt1wjw/sFQThz8i8BlKdgsJFk2dfX8PY6ffT49RsbopO5uLxU6Ysgkzpi8PW9YaoOnHytjmkWO1z6N7S78LMvOhl8fUNeCHIxod26030vLajfcC61et8HyIPeFoqJkPFaeSKyxIzEDEiipEfUZ/Bj1Fu4yXSRrfvjk2mUT7M5Bpl7bQn5J8Cax1I1BbOyPCbQ2O2iu+qt7ZP4OMP2fbQIIn55rfCuA4RiZnu8yec9RNNIigEYhef0ZCSqi4oG16u9txCqmLcp0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1PU1ZKh8DhnqbSaxGa5wj8B6P7w9cqNoVxTMOmPymE=;
 b=VqJkQ67eyBJawINQITMmMv/bP14etf06eRZzCPrEzxRH3g8clv6/ohj+4PCtlKI+rKgz6HoSl4+g+3vLFutIrd0WAoVdYfvCAainrV+szgJPRD95KZfap9Ta8y1TvOZYXhiNgh/P3ipqpVoJ6DvjfQHP5wYcdfUDsNBG0RQ+EevYwKIn+QHt0JTsqUw4W0t102CUZ5b+rEWwOfdgUq/kDlcLvnIJbqu5TDv5Sp5IEkqBnbY2A6fHug70r210ZGv6fpIO3EZL6oUKWvGfvbpqdtZSST5u7wEoJ4V9k/hKeqD6AfWtN6EkAsG3Vpajx9owW6Usg+MEva5ZGDBOABJyNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1PU1ZKh8DhnqbSaxGa5wj8B6P7w9cqNoVxTMOmPymE=;
 b=H5O58bZDeuVUgZDLkhfQRz0EFtrlNksbsgOdQ7XG+LyFebRUEwSqjxBIsBX4KFnYQY4/2HBLkcqZJTgu/5gSIOFmqqVtMORYB4bYj2TiuQUDwGpOFuGJoKjdpUmijtrPybc1NqKXonOLFRmWGXYCxTeul3cVoDn0iwoPpcCTnFA9YJSUgUSFdm8+9WvbWnx87EojZYnth1tL/qzoVoXaDcthd4yVXk7yw4r37yoo7SjXg/oiiB2BN2RkwKFVwDQd+HbaAAPBqrjfZ6zvSu8vgdowPI+nUWSDjHIgsKssyHsQYNQWIIDh2mMXc5kFU7ntqDSvs27PD6xGhfw+nuGToA==
Received: from TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:8041::8)
 by TYYP286MB1668.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:fc::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Tue, 31 Oct
 2023 13:29:29 +0000
Received: from TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM
 ([fe80::465a:2534:4d99:a25b]) by TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM
 ([fe80::465a:2534:4d99:a25b%6]) with mapi id 15.20.6933.029; Tue, 31 Oct 2023
 13:29:29 +0000
From: Shiji Yang <yangshiji66@outlook.com>
To: devicetree@vger.kernel.org,
	linux-leds@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Olliver Schinagl <oliver@schinagl.nl>,
	Shiji Yang <yangshiji66@outlook.com>
Subject: [PATCH v2 1/2] leds: core: add missing LED color strings
Date: Tue, 31 Oct 2023 21:29:00 +0800
Message-ID:
 <TYAP286MB03159A83A77E6FD59F271D9BBCA0A@TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231031132901.11732-1-yangshiji66@outlook.com>
References: <20231031132901.11732-1-yangshiji66@outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [r0tWq6fA5SwALZ2uoDgdG3uiLrgd4Ay0KrPhHCE/GsQ=]
X-ClientProxiedBy: TYCPR01CA0068.jpnprd01.prod.outlook.com
 (2603:1096:405:2::32) To TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:8041::8)
X-Microsoft-Original-Message-ID:
 <20231031132901.11732-2-yangshiji66@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYAP286MB0315:EE_|TYYP286MB1668:EE_
X-MS-Office365-Filtering-Correlation-Id: cd680f62-63ab-400c-adc1-08dbda1568e3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	52jYTXTKNJYpbgmMfTyFnfstyi86cdkxhkZHzO9XmHUabrGsIERLUjww9Lpk7QVqVHtdHoYMx/MLHh9RK1Zgd6CswilR+s7lKAWmYHRx8SOD+yNNEQr5q9kUejzEjzreBBjM9tq3UAJSBJcYrAiolzQIJJXf6Uov23Oh0K4s0+okYbjOV75KKF5lpxie/m4yr7GVJxXOtjtIF6AU3mwGOFCNNlRt3zdVChI094B/n2XzQaXnNDiwddWZD5fP63RiOFmD7tT1M2IHS3lVTfqYMbVZ2N31UCUVODTK3PiyT6aveber5FafaN54tl+cdxdl2YbFAXevjcNVblnd/3MKo6tivZ0gFjYhOoveKfwNhIjV+uTfgEsHl3VG7Uy9hlWCqh5BOdYDJ5FGY0aXocf8SWJjaCRHsGwQhtqyIyMNRI+08IocasGwts11kdIW0XWQM33FcwnPb3FX9buU27GV5J2r2aKdcIvBWFrZHe3pH0rX8K9CNPmzjTXlzDDZ344imJw4EfLit7xSXvzqiz4QxEKAehvYEtkhAMqtq2NZeYt93/FahSdPvoYvl7K3MNCbeYuVJ9i5NfKhVLGbjhU0sNhTatVjPf3aH/c1TIjgdyo=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Cvs5TUsQ3KWqdr3nP6mPcmcTx2he+5TuaChEXd79ALugA2QQyFciVyUs0qTf?=
 =?us-ascii?Q?gcNBQqRVzxH5HcHl7XWT7S9lol4g6FFxNvq0HdWtnySlrKRe0Q+Bbj9slJh1?=
 =?us-ascii?Q?/o6jwbR9eRA8giH3eXfaDbIbfXhqCzaw/npqRj5Gn9TW6xx/8v3iI+ZRZ8ZY?=
 =?us-ascii?Q?HCSSgbW4m0iy8Oi0UuXTDuHXWXqOF0MEqt0Y57GPOhn2cyeLCH9zjenvTu5O?=
 =?us-ascii?Q?OsTyK/llL8qT5USbSmZRfvj2MbM3qrUvaOfhEHxh7Kh/DWweSAVjv7Gr8Mz6?=
 =?us-ascii?Q?390RrtHZOVe7BffdUWMDLL+wAtaChBm/DRPhOR/Zw5Bz5uQuUNo3BmesMWC7?=
 =?us-ascii?Q?8KHXeaSRuMgsf8P0C3n8qRUnlmiD4VDN+lnA0L+ua53dCGTgghmK/AwnDPHo?=
 =?us-ascii?Q?YgxK6RJxBDSVYQCTBsBKeTjGAmiwhYSXPZaJvDjfekBQGdUF+pxc56HwGLzD?=
 =?us-ascii?Q?kx90Y029Ia26zBAl4RZ8i5SbkyWSzxDBzdBbalbsJUbMS+uSd0GwzZSOGjkA?=
 =?us-ascii?Q?veGw+W6abnHR0i36pLm5OO1nF0DyTf/bxoBUh2lCatMich+4COfJU9law8xX?=
 =?us-ascii?Q?V7QLwaBR1GQqvObwNZl7Qpa2o0u/wfYkKTDYJeCeMz9ju+aJedg0rDZ1+9qQ?=
 =?us-ascii?Q?51+mIVa7QVzKmxJ97EelVtr1eLtuPrz7OM5pTW4xjXy2B72VsnArYzyUbXTx?=
 =?us-ascii?Q?q6ntLu2qndi8r7vQ4HXJB183fMWOEcy/zOQGH9K0BW8t5JEXN79KFRkL7Wtf?=
 =?us-ascii?Q?QI4wnOmmhvzgLrJOtDnMBoBMQwvWKM3U+uvrsSGfbzl+nqFagdW4fSSC0JrD?=
 =?us-ascii?Q?8OwaHUDUqP6MKzG6hKQsaa06QjiIbyjQI1bnz+m6BSLdWp59GmaQvotW8pTa?=
 =?us-ascii?Q?SFzE0gT14FKxMf9ZBP1awhSMtXmRtKbdizytqih9w7MaVsKkKoUYivJns9Li?=
 =?us-ascii?Q?eXUuun3HDp0DtyCNUX5vhiN6kuXL/A+zOLEVrFKFOlZiDKMDuiWNXQ5JmJaL?=
 =?us-ascii?Q?o8n9VPAt7yvEoJZqTWpZfF9JPu59+eSXWXnb9nUYbh3hgwrEn4XLEVqPnOP7?=
 =?us-ascii?Q?nRYFrErblo0NimO+ugDqi8ISESmRDyEeNg4Ozbx70QoijMwR+hlQ2hPr3uJZ?=
 =?us-ascii?Q?6AW4U/UF24A6X3NJm93E1ZaBzilfj9okjbSZYT/9pk2pgp//jMjiuM7ZKlyi?=
 =?us-ascii?Q?zyxt2jTAjKPSIB4dXvvl/sSs+QoUq4SUyGcrCLsZN+f2ITBcoMz7MA5H6CE?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd680f62-63ab-400c-adc1-08dbda1568e3
X-MS-Exchange-CrossTenant-AuthSource: TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 13:29:29.5363
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYP286MB1668

Some new monochromatic LEDs have been introduced into DT bindings,
but they do not have corresponding descriptions on the led_colors
structure. This patch adds the missing LED color strings.

Fixes: 472d7b9e8141 ("dt-bindings: leds: Expand LED_COLOR_ID definitions")
Signed-off-by: Shiji Yang <yangshiji66@outlook.com>
---
 drivers/leds/led-core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
index 214ed81eb..223023928 100644
--- a/drivers/leds/led-core.c
+++ b/drivers/leds/led-core.c
@@ -36,6 +36,11 @@ const char * const led_colors[LED_COLOR_ID_MAX] = {
 	[LED_COLOR_ID_IR] = "ir",
 	[LED_COLOR_ID_MULTI] = "multicolor",
 	[LED_COLOR_ID_RGB] = "rgb",
+	[LED_COLOR_ID_PURPLE] = "purple",
+	[LED_COLOR_ID_ORANGE] = "orange",
+	[LED_COLOR_ID_PINK] = "pink",
+	[LED_COLOR_ID_CYAN] = "cyan",
+	[LED_COLOR_ID_LIME] = "lime",
 };
 EXPORT_SYMBOL_GPL(led_colors);
 
-- 
2.39.2


