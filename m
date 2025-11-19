Return-Path: <devicetree+bounces-240018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 03757C6C417
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BF7AA4E54E7
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 01:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56B023C4F3;
	Wed, 19 Nov 2025 01:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b="fjxv1GLe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-001d1705.pphosted.com (mx08-001d1705.pphosted.com [185.183.30.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EEA192B90;
	Wed, 19 Nov 2025 01:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=185.183.30.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763515990; cv=fail; b=f9rGido1YND6TD7rTsTzjMjDmkjtrUZ2RJaGYHPbjJSuYFfsaw3/sbp1Su/sqpSGf9pzMvs28eZYGXaeOmYkPlPcxeI7qsBlg+35A0g/suyYbshBWCGXXuvwlprlm21aeejZmrbMclKgxs/pe4xmoG84HnwjGwMoCBl5BKoEnew=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763515990; c=relaxed/simple;
	bh=+byXtPhTZ8POjEDtQGKbmnCDV2g04XKe2s1QAFzPD68=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=FCfvKUodazTOAyzeei9g1dCBP/UIUUx2lQz22zl+wArP30EogjKfmE2O7hz5Y482EU5EeAPHhYIWhcD9cplHBuyGabY+zrANwn9a+JS+GWxJQoA7C3wmfikLoQ7Wav7SkJMDlgmmX2wsK5pc5ENcwAECz5YpHTkZqFLO8yopnC4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com; spf=pass smtp.mailfrom=sony.com; dkim=pass (2048-bit key) header.d=sony.com header.i=@sony.com header.b=fjxv1GLe; arc=fail smtp.client-ip=185.183.30.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sony.com
Received: from pps.filterd (m0209323.ppops.net [127.0.0.1])
	by mx08-001d1705.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AIMjFuU023911;
	Wed, 19 Nov 2025 00:51:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sony.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	S1; bh=+byXtPhTZ8POjEDtQGKbmnCDV2g04XKe2s1QAFzPD68=; b=fjxv1GLe0
	xkSE4B1d5mGDGLd3T29sYHDhLUPJ53zLrjXkoX6sX5Eti8lL8G/iS1RV9MKQeCtz
	1X8NgOF3imAPDP1BSEo0EMs6s3QMIQEK6crslslJsqPF4d38jclc9Ld/6j5cIPDr
	fOpBfbfIFRNSJIxhgnxVZ3+7VB/5lZUEnf7QT+5nq2g/1OP7Cda7QwVuPUmW5cZh
	9npB1MLg4dwB9ZEtSYwiwxINIgSPCzsDzlOjpR0zo8U1iON6NeYgjfM8aWtmeyQ6
	9o5andRI3AosF32WEYXK+tLc7pOmHSKDFVEPWVG0oNok3nwOTw96iI8qkxAk1sHX
	EyHNgbIpMChrw==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010030.outbound.protection.outlook.com [52.101.56.30])
	by mx08-001d1705.pphosted.com (PPS) with ESMTPS id 4aeguxmh60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Nov 2025 00:51:08 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oGliQsaz+jxJ/Zmaa0TI0ton02n4aIvLelehfGVCzBQ2vbC3D7FJk9SuME80HSHqd52XKHTINXY3PL0uqpeWfPoti4szhDMSJjjG/3AKVV8rDiMcOHvdxygQPtQ3bK3g4E/FDW7k8Grhyd/s2OzGVtWRF18egNQFY8n0nF4JIWUhyJGYVAuJejTmFIJTMw//2MhcG2uj/RzYDF9LYSRgBbRq4MImPRZx/XcH5FigQbnPIubwo/zuxYBVVa6xb2/53In4u5jJqhV1vtoj3PiL5gcf/tb19y2wZWrXjTSDNy5BdJ6jSXxo/YPvyNOv0rrUxnoXMqCWxJaeZDxgDYImhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+byXtPhTZ8POjEDtQGKbmnCDV2g04XKe2s1QAFzPD68=;
 b=dUNifqwkpY3pHMPIR+KL/0c4nXjq+kMwV7VkvFWlzHGr0gMWhHIwKu5sCN6442T/xO7NaMg7GtyPW+C0ply5nbOZp+bgsBLbSxZhUg9zPBko/CMXl7zl0/nG/Ms3KHBNsZUzEE7gpNluz7Sxedv/dYP1nRbw5gvQ/UNm/GeXNEX30y3PcCuYGiXQdtUTJd8gknu7rtsDY0GdYH8PwxPqR56/9xzh3KxYFVS+0JuuU02TeM8lx2zAHu+y2Y+GPzx82dDmOKaKx6HnfxMgZeMJqahmYvX33AW45G4js+LcKejw2Db634xQ99x/dGoVvcquEDXOPyeDGVWRfRf83y1qwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sony.com; dmarc=pass action=none header.from=sony.com;
 dkim=pass header.d=sony.com; arc=none
Received: from PH7PR13MB5573.namprd13.prod.outlook.com (2603:10b6:510:138::12)
 by DM6PR13MB3658.namprd13.prod.outlook.com (2603:10b6:5:24c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 19 Nov
 2025 00:51:04 +0000
Received: from PH7PR13MB5573.namprd13.prod.outlook.com
 ([fe80::d399:6c40:6d8b:23d9]) by PH7PR13MB5573.namprd13.prod.outlook.com
 ([fe80::d399:6c40:6d8b:23d9%5]) with mapi id 15.20.9320.013; Wed, 19 Nov 2025
 00:51:04 +0000
From: "Yakovlev, Georgy" <Georgy.Yakovlev@sony.com>
To: Lee Jones <lee@kernel.org>
CC: Timothy Pearson <tpearson@raptorengineering.com>,
        devicetree
	<devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Anastasio
	<sanastasio@raptorengineering.com>
Subject: Re: [PATCH v3 2/4] mfd: sony-cronos-cpld: Add driver for Sony Cronos
 CPLD
Thread-Topic: [PATCH v3 2/4] mfd: sony-cronos-cpld: Add driver for Sony Cronos
 CPLD
Thread-Index: hhq0aoADZdWS2NveoRnYLoAwdU1WNYMJPfEAgD/KK4A=
Date: Wed, 19 Nov 2025 00:51:04 +0000
Message-ID: <C519436F-296F-4313-87ED-F665CF8EBDAF@sony.com>
References:
 <966245414.1748564.1758824280649.JavaMail.zimbra@raptorengineeringinc.com>
 <20251009104256.GD8757@google.com>
In-Reply-To: <20251009104256.GD8757@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR13MB5573:EE_|DM6PR13MB3658:EE_
x-ms-office365-filtering-correlation-id: a881a657-8b59-4e05-4a6f-08de2705b7b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?UlFzempLZ0ZVN1lsdnRRRTMvYUIrV3lzdEZLYWVHQ1RFZlVMYkNxbEZURUhw?=
 =?utf-8?B?azdzM3hsQ3VGcUtPc1ZTZEFFaDFzNU5IRG1taW1CbG5nYjRxWUd4elhGNWR3?=
 =?utf-8?B?UmRURElaaG1mR0x1dkV2K1hZUm1pcTFQQ2w4WUMxVk5UeCt2Z1ZQSE1ZVTRX?=
 =?utf-8?B?YVptOU1SMndsV1hYRmRIMzB0OEx6UHFRTWFJR0lXblFwbEdwWnMyWHd0RUdH?=
 =?utf-8?B?ZGxDK0lTTnZLOUpuTXdwY2w1OWRUejR6M1M2ZUw3K3BRS2Q4QmY0T1FxMkF3?=
 =?utf-8?B?NC92NDVIYlcwdmJDT3BxbDVBL1V4NGVZYU1vdkhYY0NSNDdjY3YvQWFhQ0VI?=
 =?utf-8?B?cWtCU3JqblVPd3FWamxqTHpOa1prQXRiVkNpS3dqSkl1cE5xMXFwNnhFUWxq?=
 =?utf-8?B?eXdCL2Q1ZDV3RHdCT251MlF6QmY4YjZ6UWpCUHRLOHY4M2VvWXc1eC9lVmZm?=
 =?utf-8?B?M1NnMS8vUWdPYjVvQXpqanlPUElzWmRxSEdQeDI2aDVuNmJhVXIzd2huYnJG?=
 =?utf-8?B?SWxmYVBGS0ZuUlhEVmpEZDhsT3dXZjFYbW56TVFlcmpueS9ISHFpOXJJRnli?=
 =?utf-8?B?VlMzNC9XbGhCV1lWQ3NqSUJ1TkYyRkJmL1hNdXQ5ZXEyYnpLbnJaUDdFdXBP?=
 =?utf-8?B?eG5hWHBTYkRHUFJKT2dMd0p2UHNrVkJWU0RkL1dmd3BqTTg5SzRQQUhkbXRt?=
 =?utf-8?B?RzlRdDV6QTlhY0ZlbUx2cGU4U1Z4TlFFc1ArMDc5V1dXdU1PMlRubmxCanlI?=
 =?utf-8?B?MWlnbWo3NTdSUVJ1UURLUmhscXVGUklzV3A2aVFrR1JkS20wdVViY1M2dXBL?=
 =?utf-8?B?Y09GUEhLaTdwaXVNVk9FYnNlOGJEQzRIZWxCdW5OMDMrQXI4dmx5UDJJUDZw?=
 =?utf-8?B?YThTMzNFbDNkb1ErV2UwTU5nTHVUTWlsdklJRTJIM0VFSHhnU3ZNa2VmMzVV?=
 =?utf-8?B?YlE3YVYwYVZQb0wxeHpiZWtQYnY0UjFaaVl4QlBDT0Eza3d2bWNVNWE3Q0ZU?=
 =?utf-8?B?eWZPaWRUc2MydTJLVGhNb1lsMjhRelZWZldJdVJwYkc0anJGQkFUeUhrSFhY?=
 =?utf-8?B?NHNKcTBBTk1QYXYxc29GQU15aVUxNGxWV2hKZXFEZmZVUjRTNXdNa0d4ckFu?=
 =?utf-8?B?MGYyVGJya0JWQ3JPZjhBRDVRb3VCM2pCc3BteVgrWFY3NTNXMzJhRVNManVE?=
 =?utf-8?B?M0hITjVOaHdZWGZkbWZDU3dTNUV5YTU3dCtiaTg5RnhrbWMyQVhOb3NCS0Iz?=
 =?utf-8?B?d2pXeEYrN1dqK01nUkFUVG9ZRVY0T0lVVVJXWnlzaGJzeGxRa25QOFlISEQy?=
 =?utf-8?B?S2cvS256SFNiNmp0dGptQXVzRmRKeWk0dmlHQ2xvZ3ZIUStsZEVidGRjSUVw?=
 =?utf-8?B?a1BhcWN1NFc2YWJBZGY0TlRRT1NZbWNRZVQ0VUJsYzhJMjRjaFVzWTh6SXQw?=
 =?utf-8?B?dnd5dDlydStoakhZcEVRS1VZZG4yTzNESHYyeUpTeGVGeHJyZHYxYmhYYUxz?=
 =?utf-8?B?RE8ybUFpZS9xbmtpMjF6em9reE5ISjRZa3djNVVNNitoQ3V3Y2hndVRyNlZN?=
 =?utf-8?B?aXhXVVZkWXNUaERDOWFibyt5TGRrTjJubDdrbTY4bFRaVDk4T0Nkek82UHNr?=
 =?utf-8?B?SjBwYm1ZNDdtRVkzTXdkaml3bkxuMTBoMDNhcmh2eFpQbTIzc25yREF2b005?=
 =?utf-8?B?bDJtYVZEWHBWc0VZQ0p3bkxwdGQrbnd5OEtkUEtLOVM1ZE1nK2V1ZW9VYWR4?=
 =?utf-8?B?T2dXYWE1WmNqVVpUV2hJRk9RS3ZJQzZ4MWZmNTRKa1o3UnNwcEs0QS9xRmRo?=
 =?utf-8?B?ajdwT3BOdis1cmoyK0F2WW4xMGY1OHp1ZkJBcU8yYk05V1lMbjVlVzZ2Zzdm?=
 =?utf-8?B?Z2NPMVBHdWxyQjk2bTB2MTBNZklCMjBHRjhIM0JXQUMxa2RweTdjQnR5c0lr?=
 =?utf-8?B?TXpIa1lmVnlyK2l5Y0VoeHpMU1BPVXN3ZC8vc01CYWk0VGJMeWZUYkZnUFBm?=
 =?utf-8?B?UFBlblpIVmFWMGRDQmsxZy91RzVFR3RPcTdmVU9vQmdaMkRFVmdkOGJJL092?=
 =?utf-8?Q?Zzv1Hr?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR13MB5573.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?RXZiMFhrazhWYnI0V1dwSGk2WEJpblJLUURYcDJoU1VhL1lnMmUwTlZLRHZy?=
 =?utf-8?B?aEV2ZFV2ejQ0RU1GL0xCRlJXMitTRkh3Y2NObXY0MkQxV21EU3E5MmxudzhJ?=
 =?utf-8?B?b0lBWE1aNG02QysxL0hKTDFTQTBiS2lxTnJtNjhxdnAwd0lQaXdYVzZDR0VE?=
 =?utf-8?B?VU9NWlliQ29qNmJYTmY1TXB3czNBa1l5WVZtNUs0YWVzUHpjRGQ1cUNpajFX?=
 =?utf-8?B?aFlnRzE2OCtrWFRqSVhNVVdGVlpnYzJCb2RnTWV6bkJsMGZ4NjBVYkxDNU9z?=
 =?utf-8?B?YVM0T2tXTitqWjhCRCtza0NNWThjNmljZmlxcEQ1NFM0aXBRZlZWM2RhRFoz?=
 =?utf-8?B?ejVqT3pPZE5CZXI0SUJWZVQvbVFWNmhHblhtZFFpMDA1aEtDTml3ZzRaRUdV?=
 =?utf-8?B?RDhzUVg5dXBFakFwYVc2T1ZMTnVreXloV3ByUkVnS0hya3QzR1FBMEJ2dUh4?=
 =?utf-8?B?dXZYb0ZEMnF6UUVsVWVPVVJQcHFMV1hrMGNFZC9QZ255WUtIZSt0NjFmaXR5?=
 =?utf-8?B?K1FGM05MMnMyZVpZajRGWklWNVFXa3Nsd0pSQmJ4anl5WE9aNVVjZEh3Y2hj?=
 =?utf-8?B?ZUN0VU10czBXK25TMDF2K2c2ak5CZnAwRFRxVy9IbXBkUWVOUXRCMlBERGZY?=
 =?utf-8?B?NW02eElMaWpIVFlQVWhtb2ZaRXluY1l2b0hPclRsRHROU1llaTJZUGxqNG4y?=
 =?utf-8?B?K2gyL3hCQTUxSk1NMHYxSGtOSkRSU2dOMWhUUFBuVkZKNG9wajAxU3liUXhy?=
 =?utf-8?B?a2ZUZkpvTTlWNWd2UWJVVVNaNVdJVXU0Z3JxUlB3RWR4bkRiWE5saVUwV01p?=
 =?utf-8?B?bUlocmtrMXZSNXViRGtvWEdQT2dWNVEwdCt4VWNyd01YdVZKaTBXUFBFZEU1?=
 =?utf-8?B?RlZ0aXV1Y09kQTZpQld1VjRwYmxIeHNzR3RvMVVsaFNvbmdKSy9WWUJFTjkr?=
 =?utf-8?B?b3lOMzBHR3ZnR09SQ2tFMDdqRlpoQUhpbmZDTFRPZnVrUWw0NzBlL0RQU1N5?=
 =?utf-8?B?Z0xDb3ZJRUJzdk5hcXV3bXQ4Qmtad3QzeXY4V3hPZ3pJQjYzTmZ3NGVrUU5B?=
 =?utf-8?B?K3FBT3ZPaWpSTW1HYVZLMmxsdkZQeFNQcWdKSTlBdG12dWh4ZzlPUkljMWJi?=
 =?utf-8?B?VUFpYm43QXRuc0I2MTBKWjZNbG9DcjljbXBIemFuRVpITkRUS3c3T1VIVzdl?=
 =?utf-8?B?TVlrNE9ISzNhcTFmbG9mNkJCUE9FeTA0eUlVSU1zRlAyUnRWYUdCTTlRdTlN?=
 =?utf-8?B?N0VYMTcxOUFsMGNMcnJSQXdSZnpYK3ozOUVRc0FvK3NNUitYMTJReDZzM0pD?=
 =?utf-8?B?bHpBeWFaSVN5QTNTRGZxeGppRnFETmROOUlRSHduZzVyNHlJL2F5UlV2Ymhs?=
 =?utf-8?B?MVhJNEJPYjhESEgxUmlJdUFBQitiL2pOMDZGQ1Vvbkk0N1RlQjJBRFpxcFNa?=
 =?utf-8?B?aGExYUsrVnFPS09WYUdDYWt3b28rV0tpZUV0bzVUYmI2OU5PelVlTHhlZThK?=
 =?utf-8?B?NzFvMExuMVEzTjRTcWhucGhwQ2p5bDFKNWx2aWdzeE0vc0FQQis1eUFVa1hT?=
 =?utf-8?B?Q2dQUFNLMU0zblZDOVpLNUdyc2pMUC9sUFNaN1hQb2tXMDJJUlJ2djVhL2tn?=
 =?utf-8?B?WWI1VFNqYmg4ZEM3MzBNazd3SEUrenVneVFzNHdLMWgvcHcvVkpqblJtTmJO?=
 =?utf-8?B?dVZLcmRxcDhOa0VVRXVCS2JRcmRBN25QdElQWEJ6SHBLNHVIaVZJK0tia3Nm?=
 =?utf-8?B?c1dqa05wd01sL0FwTGlLMmN1cUJQZU9LNzZ0SGtWa1JxcG1QeHN3MVBybzJM?=
 =?utf-8?B?UXpZckR6RE82NktCYjJaZ1lBdjFETzlmRWl5cVA3VlBBRG1lTnltSzBwQ1o2?=
 =?utf-8?B?clIreDgvemU2TEpUS3RSUnVwc3c1SFVNazRWUWxBZWoyQUZDZ0tHNFpsUXJy?=
 =?utf-8?B?aDRwM2RLL1JPS2h6c01YTWZoY2hNVjhQVzdmN0REY2paekVxUG5Ub3IwWDNP?=
 =?utf-8?B?dnNlNmt3emVsT2RCbkp1c05mRFdDM0dWVmhYWVhmcGw1WGs3dHU0QVlnaDM1?=
 =?utf-8?B?WlkrRG1VakZCWWpCQ0hieWd1cXlLYU0wK1B2MXQrcUY2ZFhOeTBDc3dRVFhV?=
 =?utf-8?B?aDlOak95R050Y3EyTEZKUldPWGJuNTEzaXA2KzZUTWxXTTVYcXNFVEJKdTJN?=
 =?utf-8?B?clE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6B2607848BB48A489629E513FB7182BD@namprd13.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	PfAxII78e2uDZyDXoYIYJg8oSysXo+g7tb0lOB0yA3Xix1+VWKhs/VQx+KYKIz2jvqnMEEff5zuDwYgWCxuSqisgILNd4dtR37xgLP4zp7B1+4zXnNA96OtocPel71dQwVwusHuMJOagxhU2NiUOwBuPX2GeQNl/HKwSbFlkMZRoIUhwh7VoSLKDunFu4V+mwaMjRT4pZhFOiHZtYuwW6qV7ceSORKT5JPDL6JAqLTrugNP3l6+iboCMTQ2c1Q+ra5QDz+6VdwA/4RWkK1eWL11cUgjO1WIuv5yMg5NrVvZs0m7bnqStYx03fAehhhvmS3HTxwbD7LN1ugdDJEZ8q9B0GKe6mBvQBQt2Dunaf9pRW7Ums9yFfrbfdWdSTJ2cG5oePPY/oSTBatIVJhU7VOe1BAO96l6EgRjfwtVQWCLhyGgHX4T7ZcNEHrjqpRYZ+AxbZng33pYdaKFgMWGznIGBkQ4tTQGFreelbaIEHuvLHfHO712jzR810Q/OeHPHa2qsonCPiYVpdN/gg5OMin43JarfIhSLjuZ8rV37rssHNdB8a1ofGfBiEF6T7r0+qJXMa27TNq5r7BG6VD8TrPoLrQP0sg9URY8kwo7HKa7R4QiM5z6BSNBraMWs42uI
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR13MB5573.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a881a657-8b59-4e05-4a6f-08de2705b7b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 00:51:04.3003
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eXlHiR1thyKwVPlYYgduI0lc1DYHz8YxLusKLwpZmsRqsVEyWSd9aqMBwOAeI3hZlAX4PF7wqaliq7z4QBqV8MDFzbqeBi+h0+51LLX/OzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3658
X-Authority-Analysis: v=2.4 cv=Uo1u9uwB c=1 sm=1 tr=0 ts=691d147c cx=c_pps a=lJB3plHzOIAfJWf+6KWQLg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=xR56lInIT_wA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=z6gsHLkEAAAA:8 a=QyXUC8HyAAAA:8 a=UzKS2ofhIxp2gKhKSh0A:9 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAxOSBTYWx0ZWRfX+3Du45gutQhR E3sC/AgwsZwjnKYBNcMpFFJ4Ivezi0bwQgTus4GwczAHYYH22k45KrRQcZLo3MMPp1MLgynU1bY tLEF7uaEXqjFOKzmiWjMfp6rmp5PcIYP7HX1bFygDXscn1yL/xF+1uJwJ0mNnvB/JzKpLEZvCLL
 tAJUN9Ls63yEwYIp1eGFj/mzvfLLbuuwGZMK9iuHGh5zrVNc74ayoWiKakKX7EwbO85pFbQAkOK 7mHQqtN12CKZ3UZw7OPutidXuq8BhMEDZCQXclMmA2EFI/PEv6OFk9cJc1soKniQUI5coeVqA0H b9jggdIkqJs2jLOg5MQnaYghuQMHk3jx9b7CPUgdJ9XfDSu5X4Ei5siN0sGOls1oyofyPll5KzU
 8xbVDAar0A34DUrMcQqmIcUgbBJ+6A==
X-Proofpoint-GUID: SSLhY13m8zd6QBGaZ2Utzk3PLyBlB6d-
X-Proofpoint-ORIG-GUID: SSLhY13m8zd6QBGaZ2Utzk3PLyBlB6d-
X-Sony-Outbound-GUID: SSLhY13m8zd6QBGaZ2Utzk3PLyBlB6d-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01

DQoNCj4gT24gT2N0IDksIDIwMjUsIGF0IDM6NDLigK9BTSwgTGVlIEpvbmVzIDxsZWVAa2VybmVs
Lm9yZz4gd3JvdGU6DQo+IA0KPiBUaGlzIGRvZXNuJ3QgbmVlZCB0byAvIHNob3VsZG4ndCByZXNp
ZGUgaW4gdGhlIGtlcm5lbC4NCj4gDQo+IFdoeSBub3QgdXNlIEkyQyBhbmQgaGFuZGxlIGFsbCBv
ZiB0aGlzIGluIHVzZXJzcGFjZT8NCldlIHdvdWxkIHByZWZlciB0byBrZWVwIHRoZSBzeXNmcyBp
bnRlcmZhY2VzIGluLWtlcm5lbCBkdWUgdG8gSTJDIGJ1cyBjb250ZW50aW9uIGJldHdlZW4gdGhl
IE1GRCBzdWItZHJpdmVycyBhbmQgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucy4NCktlZXBpbmcgZXZl
cnl0aGluZyBpbi1rZXJuZWwgYWxsb3dzIHRoZSBrZXJuZWwgaXRzZWxmIHRvIGFyYml0cmF0ZSBi
ZXR3ZWVuIHRoZSB2YXJpb3VzIE1GRCBzdWItZHJpdmVyczsgcHVudGluZyB0byB1c2Vyc3BhY2Ug
Y29tcGxpY2F0ZXMgZWFjaCB1c2Vyc3BhY2UgYXBwbGljYXRpb24gYXMgdGhleSBlYWNoIGluZGl2
aWR1YWxseSB3b3VsZCBuZWVkIHRvIGhhbmRsZSBJMkMgYnVzIGNvbnRlbnRpb24gYW5kIGFzc29j
aWF0ZWQgRUJVU1kgcmVzcG9uc2VzIHZzLiBhIHN5c2ZzIHJlYWQuDQoNCj4gDQo+PiBcIE5vIG5l
d2xpbmUgYXQgZW5kIG9mIGZpbGUNCj4gDQo+ID8/Pw0KPiANCj4+IGRpZmYgLS1naXQgYS9NQUlO
VEFJTkVSUyBiL01BSU5UQUlORVJTDQo+PiBpbmRleCAwZTg5N2YyYmE5ZWIuLmExMDUyNjYzZmIy
NyAxMDA2NDQNCj4+IC0tLSBhL01BSU5UQUlORVJTDQo+PiArKysgYi9NQUlOVEFJTkVSUw0KPj4g
QEAgLTIzNDU4LDYgKzIzNDU4LDEzIEBAIFM6IE1haW50YWluZWQNCj4+IEY6IGRyaXZlcnMvc3Ni
Lw0KPj4gRjogaW5jbHVkZS9saW51eC9zc2IvDQo+PiANCj4+ICtTT05ZIENST05PUyBDUExEIERS
SVZFUg0KPj4gK006IEdlb3JneSBZYWtvdmxldiA8R2Vvcmd5Lllha292bGV2QHNvbnkuY29tPg0K
PiANCj4gVGhpcyBwZXJzb24gaXMgZ29pbmcgdG8gaGF2ZSB0byBBY2sgdGhlIGZhY3QgdGhhdCB5
b3UncmUgbWFraW5nIHRoZW0gdGhlDQo+IHBlcnNvbiByZXNwb25zaWJsZSBmb3IgbWFpbnRhaW5p
bmcgdGhpcy4NClllcywgSSBhY2tub3dsZWRnZS4NCk5vdCBuZXcgdG8gb3BlbiBzb3VyY2UgaW4g
Z2VuZXJhbCwgYnV0IG5ldyB0byBrZXJuZWwgc3VibWlzc2lvbnMuDQpTb3JyeSBmb3IgZGVsYXll
ZCByZXNwb25zZSwgd2FzIGF3YXkuDQo+IA0KPj4gK1M6IE1haW50YWluZWQNCj4+ICtGOiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3NvbnksY3Jvbm9zLWNwbGQueWFtbA0K
Pj4gK0Y6IGRyaXZlcnMvbWZkL3NvbnktY3Jvbm9zLWNwbGQuYw0KPj4gK0Y6IGluY2x1ZGUvbGlu
dXgvbWZkL3NvbnkvY3Jvbm9zLw0KPj4gKw0KPj4gU09OWSBJTVgyMDggU0VOU09SIERSSVZFUg0K
Pj4gTTogU2FrYXJpIEFpbHVzIDxzYWthcmkuYWlsdXNAbGludXguaW50ZWwuY29tPg0KPj4gTDog
bGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQv
S2NvbmZpZyBiL2RyaXZlcnMvbWZkL0tjb25maWcNCj4+IGluZGV4IDQyNWM1ZmJhNmNiMS4uY2Qw
YzYyNDAyMmY2IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9tZmQvS2NvbmZpZw0KPj4gKysrIGIv
ZHJpdmVycy9tZmQvS2NvbmZpZw0KPj4gQEAgLTIzNDEsNiArMjM0MSwxNyBAQCBjb25maWcgTUZE
X1FDT01fUE04MDA4DQo+PiAgIHVuZGVyIGl0IGluIHRoZSBkZXZpY2UgdHJlZS4gQWRkaXRpb25h
bCBkcml2ZXJzIG11c3QgYmUgZW5hYmxlZCBpbg0KPj4gICBvcmRlciB0byB1c2UgdGhlIGZ1bmN0
aW9uYWxpdHkgb2YgdGhlIGRldmljZS4NCj4+IA0KPj4gK2NvbmZpZyBNRkRfU09OWV9DUk9OT1Nf
Q1BMRA0KPj4gKyB0cmlzdGF0ZSAiU29ueSBDcm9ub3MgQ1BMRCBTdXBwb3J0Ig0KPiANCg==

