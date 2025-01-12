Return-Path: <devicetree+bounces-137729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C3DA0A7C5
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 057E5166AC6
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5E01553A7;
	Sun, 12 Jan 2025 08:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="qgtmIp1+"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2048.outbound.protection.outlook.com [40.107.21.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0FB46B5;
	Sun, 12 Jan 2025 08:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736671134; cv=fail; b=P+bfFyLIBLA+AnebMyLmrkPaJyCWOceXeRr5tgpze8GymPC8LXIRy6i4JWBYYbPjykDuatlDnxrT+C4NJ7/0x/EYYRa/9amEXaIK4SRcVsTp+v+co+z3/cSsObZRMz2mNdRrhTmNqM52UFnjB+Yco/xz5bromDHZ/N5FGTrZEwE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736671134; c=relaxed/simple;
	bh=2pwTJ2gMIvATF5yZ8Ed4vKfpElF5kLmAIsiCadmBDgY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=GdZtBUep2Ia/ufHfgD9LyVxpCz6oUSSdNIYiVo6JwsOkal6v+0YPCmh9iq0wNEiW7jdNTuPlmF2RNSZTjxizcHsIhINxx5GojZb4d+vgjXRVKpBix16jvYGuUQ9LEsD1M7KWtNXYlLMjTQrl0MRq8Ub4sAfQ8uxmmctcV0TiT+0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=pass (1024-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=qgtmIp1+; arc=fail smtp.client-ip=40.107.21.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R96HrOZJbbjTO4soGYIQtrVwfQgRKua564pajWqGrU/ELfoOSmMRW8M39FDK1WlV4WLqlGh4gtwxFCnHwj2+vtwohD6f7VgLGdKycdwrb/ixv5O0eKk/AssBixRqJCjfJS+qqwii5bRt3HXWHBpew14VPBI+PWKMvBkTM7R96bzNubJA7zmL58M577vhcDgeEP/+6ytxrshEW7pgN8P6DG4uccTKjduLwMhfIABWeKmhf5FNtgrksJPopWrVfDUBQz6rG8PmliBZEX/R2VzpCl7/qwFZI7GfssjNvMzm/4NzykxnqMQRPTj65n9A6qfmsdEN0fI40US6kpFhmvfEag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2pwTJ2gMIvATF5yZ8Ed4vKfpElF5kLmAIsiCadmBDgY=;
 b=wCUeMooPS72+oMpwtCKKtIiGRNbY5TQ2KMciRnVh5kb52CvdRWZlOJg4/fbcuia/w4aRkWcDLRCeI9+QsyYa9hKcih/wLD8GAlzvLOLq8ieIZrrq4nelfdcsCDFMMHp20hVGK4tDgSTS6pd7dADxjjfBPpqPRsYRPaVZpQSTjADQMNSzVzv4+6Nb7qZvnwC3mUhY4Vy4huqMSXm2TfmLq01fDSGFurtwW0LGwiNohD3cAkMP6EOedMqPVk40dUPIxTjaOYvqxUwaZpHFWgbc08LKrnEO6bvUfUVQiywAxiNt0jVG+PVbDUU01SsITOq/7i9L1/iCa2Daov7iIQjeeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobileye.com; dmarc=pass action=none header.from=mobileye.com;
 dkim=pass header.d=mobileye.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobileye.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2pwTJ2gMIvATF5yZ8Ed4vKfpElF5kLmAIsiCadmBDgY=;
 b=qgtmIp1+w2TGVvpv12/3KytLJPr5Zb6eHDwLafKWZxL7CigLObcgcs1dEOJyNJgVsQ5Hn8TQxnbEyFi+Wna+f5zW3k+HOL+BjcQnuYjrv/EVZqlA6kY9ouEoNfBUeLcqG2WW58K9IgyzsNxBKgxoXBZ9RO5v+7Nv79FMXp4DGD4=
Received: from VI1PR09MB2333.eurprd09.prod.outlook.com (2603:10a6:803:82::16)
 by AM7PR09MB4152.eurprd09.prod.outlook.com (2603:10a6:20b:115::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Sun, 12 Jan
 2025 08:38:49 +0000
Received: from VI1PR09MB2333.eurprd09.prod.outlook.com
 ([fe80::fef9:cf7b:cbc2:d3b7]) by VI1PR09MB2333.eurprd09.prod.outlook.com
 ([fe80::fef9:cf7b:cbc2:d3b7%3]) with mapi id 15.20.8335.011; Sun, 12 Jan 2025
 08:38:48 +0000
From: Vladimir Kondratiev <Vladimir.Kondratiev@mobileye.com>
To: Rob Herring <robh@kernel.org>
CC: Anup Patel <anup@brainfault.org>, Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
	<palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: interrupt-controller: add
 risc-v,aplic hart indexes
Thread-Topic: [PATCH v4 1/2] dt-bindings: interrupt-controller: add
 risc-v,aplic hart indexes
Thread-Index: AQHbYosGIWPQH4ymlUi1FapWJWhTyLMQMqCAgAKU10k=
Date: Sun, 12 Jan 2025 08:38:48 +0000
Message-ID:
 <VI1PR09MB2333835FB0314EE32094D55F941E2@VI1PR09MB2333.eurprd09.prod.outlook.com>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
 <20250109113814.3254448-2-vladimir.kondratiev@mobileye.com>
 <20250110162235.GB2975507-robh@kernel.org>
In-Reply-To: <20250110162235.GB2975507-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobileye.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR09MB2333:EE_|AM7PR09MB4152:EE_
x-ms-office365-filtering-correlation-id: 95cd72ca-1cc5-40c4-27f0-08dd32e4888d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?TlNrVnRYcW0vNGorVlJ2NElmZzlmSlpMa2hxZXEvbnlnVWd3SlNJSG1Jb1lt?=
 =?utf-8?B?L0p6cHNZQ3RQT2hwOW8wenUrVGF3cDIxVXg3aUhoZi9ndFQ2YThlNjJNRVBv?=
 =?utf-8?B?Vng3Q0NHTUZveko3Qm1PNnA2djBSdmpFRnJ6a1ZCZER6U2gxbnh4Tmt5SFcv?=
 =?utf-8?B?bFpweEJVbisvL3RZVE5SOWo3Zy8xLytJNEZtQ0QyMVozcGFBSUQzZ0dsaUkr?=
 =?utf-8?B?S3REYmpreG9Zc2tvK3BkaVhjM0RpMlZoUnpud3J1TVlNVVFiZnJiQmdibHhW?=
 =?utf-8?B?VTdFMVY4U3ZmdExvRk54Q0prQ0draktaWUVkNndvM0ZxR1RhNzAxNk9uMHZo?=
 =?utf-8?B?Y0JrV0NDOWtoNExmdTVEWkxkVFErelJwMHhQUW8zV294UUdrUlE5bVFCWmFO?=
 =?utf-8?B?eEN2Y1I3aHZIZ3UxSEpiUWFBcloxZy9udVR0dDluWE1HZ3VUd3kreGlwcmJy?=
 =?utf-8?B?eEpzeCs5Qk9QWFBOVTVKdnFxdUZwZ3FLd3RzVEtIZ1BTaHgzcEZ1L2ZaaCtL?=
 =?utf-8?B?VHdEd25xTUlwaVN6NVJ1VU9la0Y5MzFaUjVQSmtpaTFQZTUweS80LzFTVDZF?=
 =?utf-8?B?M0RDNzRHZ29JL0Z6U1dPSzk1MHNVc3MzTUNqQ3FRdDB2Q1dVUmVscHUvME53?=
 =?utf-8?B?WHpYUFVQM3NpTTdKUUZLRFFybzJqQlRWa0lHUU9OeUFabHQxRTlJMTRTQnZK?=
 =?utf-8?B?ME1jdG95L3MxKzRXNVdnMHZXeGxHVHM4SHNnTTdhQmZjcXZTVEU0Z0NWMjNt?=
 =?utf-8?B?N0RqQUdUTFN2Rk9TWGx4OFp0amVnT2F0WHAzejN5SFh1SWROdzVMTzVTTFhV?=
 =?utf-8?B?cEJ4Kzk1Z2tPRzJOelVDbDdESi9WM04rUTNQMlNaVGdGR2IyNjZCVUpic1Ft?=
 =?utf-8?B?VzhjL0ZHQkQ5bTh3TndPZGRhR3lLRFFjTmtheGV0Wm41UWJhVXpBTHhSODEx?=
 =?utf-8?B?TStFdHFDeUhxaFAvUGVWSVVyNjZlU0dSbjBSSGVEeDdWc3YxVXYxQ0hBUDR3?=
 =?utf-8?B?SDZXY1VNN3hGd1NNNVRJOUhUbmx4Qlg4c1ZuZ1JRNklCOUxwOE5kMEg1emhy?=
 =?utf-8?B?d1ZjVDZpL04xZXpXUjBTeUM0a1c0WWFzWjlSOGR1b21WdHovWmFSUFVkZWc2?=
 =?utf-8?B?NUNoV2hXdXlHMlNYSWF4MUFubStVQ2lpTGRwVmJXVXp5ZXlqZCsycWZIZDRX?=
 =?utf-8?B?R1NFZE5tZUkrbXhxTDNLTnBxMzlZYXFwa2FwMHVieW9aQU1odzB5Mmd1eUVU?=
 =?utf-8?B?OFo2UzhIMG1Wa1hwV2NQRStoOEQ1Ulg3QnlRa3VtR0ZsKy8wYTFIT2F1L0Vp?=
 =?utf-8?B?NUNIQVpFRVUzVkpSYzBBblk5N3ZHN2oyaG1EbWoyTkNOSVlxUTBySHJ0a2VZ?=
 =?utf-8?B?QlJwVDhGcG1ybmZnOEdraFRMdEUzejRZL3FJVDN5cVVVVnBvRXFHL2Y0Tmsv?=
 =?utf-8?B?MzFPZ3h6dHNpRGsyUDgyaGhOczFoQ3hwMjFSYW12d1FJL1ZncnAwdHFzeGRF?=
 =?utf-8?B?dkVPTS9ZU05Ha1RQRkpJbzN0QTROZXVuT0pOWGd1bDRXMjZydEo3VzFOUWYv?=
 =?utf-8?B?RmZqeWk5QkpFcWxaN1RIR1MzbnhNdWhJekYwY09sWFRtZnlNOTFUa0tuRlZo?=
 =?utf-8?B?SG9qQ1RVY0ZreHZsOFJ3bzdOTmhIaE42SEk5TWFEZng1aEhYUExQM2o1eGN0?=
 =?utf-8?B?bjk3VFFqaGJ2dzFpOVBCRG5iSVRUNDBjM3NXcXFWTkhoU2FuNE94VGEvN1E3?=
 =?utf-8?B?Um95aytPWVpqaFF3Ylk4Si9zQThvK2kyTDU4Myt4UHlZQUM0Tk1Sb2dveTlh?=
 =?utf-8?B?clJlbzFDWjdEYzFYQTU3RklURjU0YU9OZjNMUzhZZ3NxR00weS9Vd3p6WGU3?=
 =?utf-8?Q?w1jWGBxPyFcv2?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR09MB2333.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YTFaclRMd2wwaVR1bWs4VEQySEZ5ZldHVmdORXlOaGhkcGoyS3dmNFNnRzZp?=
 =?utf-8?B?cVRYZGhFb1UrVHBjajNUVjRBbXV3NW5vQWRIUG9WUFc3RExQVWlyT3hMTXNk?=
 =?utf-8?B?d2tsOCs5MWE5NDZySmV5M2ttVjRRZGU2eSt4K1VKZjJxNkZUdVVUTW84T2FU?=
 =?utf-8?B?MHljejZtblZneWlldEtheWptbE9qbHdiZWh6Mm9zcXp5WFh1bjc1dFE0M29w?=
 =?utf-8?B?Rk9PTmJzMkcrY3JFZlRnbFFJSmh3Qm4wd3VZZGxadlVZelZ5NmdLWC96NVIw?=
 =?utf-8?B?ZGYyRkhoK0hrQ1FFRloxV1IwbkhvWER5d2lOQUFQYk0zdGZkaGZRQW51ejc0?=
 =?utf-8?B?anBzd0NZdlJQU1BkOTBaNXhGT3VTMzlLd3N6ZDJiMlArU2M0Tm9OSnBLNDFv?=
 =?utf-8?B?WkNEVkNVWjhUeWlpVHpMZGRnWHJVSHpZU0t3L05ZSjd2UEIwRUlUN1BIZmhY?=
 =?utf-8?B?Uy9hVEU2bGZPVVZDVWVhdk5tOWIySy8zMnVGL0J3ZnVhMGUyM0NxTUlVcjZx?=
 =?utf-8?B?anNmVU11Z1hzK3NkZ09PQ205U3VJVk93THBOM2w0SStVNFVnWTVxNW5HeHUr?=
 =?utf-8?B?eG9YOHZWRlhaQ3VjQ1hDQVhpRSt4NWhBQjRJbHdqQzlkaWFhL3UzYm82SUVv?=
 =?utf-8?B?cXVpVVNVeXJqdUtMRU9sUjNjZ0xKakhzKy9JVTBqWmlZQmxxVUlKQzhaL0lk?=
 =?utf-8?B?enlvMEZtcEpOdTFRcGFLLzhJK1FuaCsvM0d2eWUxZzFoYXRFNHJjMzZmY3Jw?=
 =?utf-8?B?SjBSN01tMitxYjlDUk5vLzJvRUdReXh3RkNEYmdHMUVJeFFjV0lyUm13VlZG?=
 =?utf-8?B?SkZ4czQ0bnUzYWlFbndWRzUvdWJnWFhyVlFzTkFuV1psK3hnVlVJdWtudkxL?=
 =?utf-8?B?NDRDWmphbllNUGhrWHlUaDdUeEhFWm9UY1NGMkNRRG4wb01aU21tMDl1alJE?=
 =?utf-8?B?MnNVOHB6dEV1OFhNeWd2aEFrVERzRzQyNkJLekM2Zksrd2dTUGpmSGRtUEl3?=
 =?utf-8?B?K3JJR0UyMm9kZkJsR29pTGZjL0JLU0xlQVZyd3ZMVTFZSThSd0hXUEw1cUpr?=
 =?utf-8?B?Y1VvOFpKRDFkY25Hbk9BQUZTYkZBUVBsU2VRa2lsVE4ycldyYXd4UkJxTjNv?=
 =?utf-8?B?OXdxbjNDVXRVQURqZ3BCcjNzRlQ5TGxBRE8zbkg4WklxcWE2bEtLZXR6bXVE?=
 =?utf-8?B?b3VqcldxSDFDTXFhWXArSG0yWEhUMzcreDB2SkVWSXNtd253T25mQXNhcXRt?=
 =?utf-8?B?SFRFenpqak9UZUJZRWRER0h5c2Z1U3RKOVd1cWIvbzFkM2pjQ2JmV0NwYk5i?=
 =?utf-8?B?MXA2SXFhNXZXOGxTSWZOSlNTMW11dDRCbHFhYU1xTlQ4elpvUW9LeDBoN20r?=
 =?utf-8?B?ZU5QL0c5bFlCc2F3WmJJejcwUWwrNFJSQVFkbExoc0xhc2lJK0E1U3l5NDEw?=
 =?utf-8?B?RTJNSGNtdmtrK25iZGcvY0JySXhjbzA4SDVTZlFSaTRBdmNUZDlsbE9iQVZW?=
 =?utf-8?B?cTEzNTQ1ZWsvOEp4WEtQeUl4enFaa1pxcHJOUUY0VStXd3M2bDQ2Ni9hZGdX?=
 =?utf-8?B?dzVTTGlGc3o0bXhRNURvaHZSVkEvVW1CaFpuSk5DdEFycDNyNGR5SWIxakRJ?=
 =?utf-8?B?MDdjc0lFRy9JZEV6eDRpYzRxMmZGMlUraFloOWp6SFNGRzdJTHdTN3RLTzY1?=
 =?utf-8?B?c2crdCs4ejF3aWFtU2JTcU1IV1NnelVkZnBFQW5TcldVd0M4allHTmtremw0?=
 =?utf-8?B?OWJ6dWkreVR1UUhBUTlmN3BPdkNUQnhReEtJQmExM0d5dHpxdE9hTDgxN3lT?=
 =?utf-8?B?R1hYZkNBTE1vQnByNDdoTUZpYlpLeUEwWlJnelI4L293YzFjSW1YdG5DNksy?=
 =?utf-8?B?OTBsTWREZWk2Y2ZoN05uQlZRZ1BQR1ljMG1CcXRLOGJ1dWQrTTdGcVFBdEtO?=
 =?utf-8?B?c0FIcmticTRLTGpjaEo3ZFNnZ2hTeDk0L3dpaXBuZU9jYW5NU0FCQ1I5WEp5?=
 =?utf-8?B?OE5haE5sVDVTQU9QZ1JwWHhxSFVZdisvMTAyVzJwSUJiN3oxRVBHL3NKVDhK?=
 =?utf-8?B?R0swdUV3aFBXY2twYlVRV29WdmJpdzY1dHZnWm1PbGRPcmVDQWlZenpjZGJ6?=
 =?utf-8?Q?OCef80naeCAm1rhFnqwBL4i5E?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: mobileye.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR09MB2333.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95cd72ca-1cc5-40c4-27f0-08dd32e4888d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2025 08:38:48.0908
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4f85ba13-6953-46a6-9c5b-7599fd80e9aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJyR/p/X2KTILZe7tveSV7Gtwd4/w9nfWVul336ZJ+7u51gWdCqCoYqySAj1d15RX7LHxAugWCQ3X3Gsa0s9Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR09MB4152

Pj4gRG9jdW1lbnQgb3B0aW9uYWwgcHJvcGVydHkgInJpc2N2LGhhcnQtaW5kZXhlcyIKCj5UaGF0
IGlzIG9idmlvdXMgcmVhZGluZyB0aGUgZGlmZi4gV2h5IGRvIHlvdSBuZWVkIHRoaXM/CgpJIHNh
eSBpdCBicmllZmx5IGluIHRoZSBkZXNjcmlwdGlvbiBmb3IgdGhlIHByb3BlcnR5LgpJbiBtb3Jl
IGRldGFpbHMgdGhpcyBpcyBkZXNjcmliZWQgaW4gdGhlIG90aGVyIHBhdGNoIGNvbW1lbnQKLSBm
b3IgY29kZSB0aGF0IHVzZXMgdGhpcyBwcm9wZXJ0eS4KSXMgaXQgYmV0dGVyIHRvIHJlcGVhdCBt
b3JlIGRldGFpbGVkIGRlc2NyaXB0aW9uIGluIHRoaXMgcGF0Y2gKY29tbWVudCBhcyB3ZWxsPwoK
PkFsc28sIHdoYXQgaGFwcGVucyB3aGVuIHRoaXMgcHJvcGVydHkgaXMgbm90IHByZXNlbnQ/Ckxv
Z2ljYWwgaGFydCBpbmRleCBnZXQgdXNlZCwgaS5lLiBpbmRleCBpbiB0aGUgImV4dGVuZGVkLWlu
dGVycnVwdHMiCgpTaGFsbCBJIGFkZCBmdWxsIGV4cGxhbmF0aW9uIHRvIHRoaXMgcGF0Y2ggY29t
bWVudD8gVGhpcyBvbmUsIGl0IGlzCmEgY29tbWVudCBmcm9tIHRoZSAyLW5kIHBhdGNoIGluIHRo
aXMgc2V0OgoKUmlzYy1WIEFQTElDIHNwZWNpZmljYXRpb24gZGVmaW5lcyAiaGFydCBpbmRleCIg
aW4gWzFdOgoKV2l0aGluIGEgZ2l2ZW4gaW50ZXJydXB0IGRvbWFpbiwgZWFjaCBvZiB0aGUgZG9t
YWlu4oCZcyBoYXJ0cyBoYXMgYQp1bmlxdWUgaW5kZXggbnVtYmVyIGluIHRoZSByYW5nZSAwIHRv
IDJeMTQg4oiSIDEgKD0gMTYsMzgzKS4gVGhlIGluZGV4Cm51bWJlciBhIGRvbWFpbiBhc3NvY2lh
dGVzIHdpdGggYSBoYXJ0IG1heSBvciBtYXkgbm90IGhhdmUgYW55CnJlbGF0aW9uc2hpcCB0byB0
aGUgdW5pcXVlIGhhcnQgaWRlbnRpZmllciAo4oCcaGFydCBJROKAnSkgdGhhdCB0aGUKUklTQy1W
IFByaXZpbGVnZWQgQXJjaGl0ZWN0dXJlIGFzc2lnbnMgdG8gdGhlIGhhcnQuIFR3byBkaWZmZXJl
bnQKaW50ZXJydXB0IGRvbWFpbnMgbWF5IGVtcGxveSBlbnRpcmVseSBkaWZmZXJlbnQgaW5kZXgg
bnVtYmVycyBmb3IKdGhlIHNhbWUgc2V0IG9mIGhhcnRzLgoKRnVydGhlciwgdGhpcyBkb2N1bWVu
dCBzYXlzIGluICI0LjUgTWVtb3J5LW1hcHBlZCBjb250cm9sCnJlZ2lvbiBmb3IgYW4gaW50ZXJy
dXB0IGRvbWFpbiI6CgpUaGUgYXJyYXkgb2YgSURDIHN0cnVjdHVyZXMgbWF5IGluY2x1ZGUgc29t
ZSBmb3IgcG90ZW50aWFsIGhhcnQgaW5kZXgKbnVtYmVycyB0aGF0IGFyZSBub3QgYWN0dWFsIGhh
cnQgaW5kZXggbnVtYmVycyBpbiB0aGUgZG9tYWluLiBGb3IKZXhhbXBsZSwgdGhlIGZpcnN0IElE
QyBzdHJ1Y3R1cmUgaXMgYWx3YXlzIGZvciBoYXJ0IGluZGV4IDAsIGJ1dCAwIGlzCm5vdCBuZWNl
c3NhcmlseSBhIHZhbGlkIGluZGV4IG51bWJlciBmb3IgYW55IGhhcnQgaW4gdGhlIGRvbWFpbi4K
ClN1cHBvcnQgYXJiaXRyYXJ5IGhhcnQgaW5kZXhlcyBzcGVjaWZpZWQgaW4gb3B0aW9uYWwgQVBM
SUMgcHJvcGVydHkKInJpc2N2LGhhcnQtaW5kZXhlcyIgdGhhdCBzaG91bGQgYmUgYXJyYXkgb2Yg
dTMyIGVsZW1lbnRzLCBvbmUgcGVyCmludGVycnVwdCB0YXJnZXQuIElmIHRoaXMgcHJvcGVydHkg
bm90IHNwZWNpZmllZCwgZmFsbGJhY2sgaXMgdG8gdXNlCmxvZ2ljYWwgaGFydCBpbmRleGVzIHdp
dGhpbiB0aGUgZG9tYWluLgoKWzFdOiBodHRwczovL2dpdGh1Yi5jb20vcmlzY3YvcmlzY3YtYWlh
CgoKVGhhbmtzLCBWbGFkaW1pcgo=

