Return-Path: <devicetree+bounces-267720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LA+LIk/nWlUNwQAu9opvQ
	(envelope-from <devicetree+bounces-267720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:04:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 30084182490
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EBB683019FD4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7552C21F9;
	Tue, 24 Feb 2026 06:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="vHPFx7Tt"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011053.outbound.protection.outlook.com [40.93.194.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A792C234A;
	Tue, 24 Feb 2026 06:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771913094; cv=fail; b=p/8FmrNdP5R0Ux7FdTxL89KAxGOH65IDJetBzl6GFv+Ltc6TYKDHJxZS4si5dRWFuRRsscCm/L/1JBRMqL/Zo5YWbx0sQ0qdgWpknjyQ9gu0RuX2uQArjT0g2VYPlVClr4eHaRkiORMv1PBikNsOFgb+8TPlF/NULiX3c5PbY00=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771913094; c=relaxed/simple;
	bh=sDJZIHo2puLV42qbks2o0ZIoXzF/XZ8LNrEtZTwoWag=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=BLYX/J9TwOABp6wH13CnpKSArJPxJaqmV8CwZMyMB155teVEktJ2KrCbYdFLsHu49/7ecMrZeffmDMFlduo/Y+A8PwoNs4+IH68xlrtzSJmUdW+7D+12jGdEFWCpSQ7VvJGm2dvK4s9wdBukKIAgcaQD1yktbxkj6Ydk9kkAU44=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=vHPFx7Tt; arc=fail smtp.client-ip=40.93.194.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ATBvgvKJYgRzIqht9/20GqqWkb4hRMGJIRjqh1J/X1SUnENI/HEelLHZ6Y8oVZngSe+Zv3qoSRpij/5Qdq2PHH7xKqAkf7PAS7nGgnjUfDxqn4D9GJJVtHJWIUu8My+/a/DG+wi0VKGmY2qW9U4M7403FvJ+yE7VqlHSM1V7MP8FE2w6VzvhEqFVZ4bTLSw4AWgaVZ4E8UHER6ig4AdJoNUM0vKz++v6b3Mc2CLrJAczzVDjyintiMuT36AD4hv3MRLi0DjgWnwvR4TKQ6vInsCVofIf18ykmSs7ib8RLVAsh/E2d4SFk5I0xw9ZlEaQwrXjfnLN155i53/MLR9tZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sDJZIHo2puLV42qbks2o0ZIoXzF/XZ8LNrEtZTwoWag=;
 b=e/2TpCJko+gyUI3uDKBOt8g0ZubeSCIlIOn8ljdFpJu4jnlBbharl0Q/jfsW/k+58ruwWP3nnJr8Dn6JHC3SjPPZnEhnedqJ7TMkdt3tST/JXS3CaGgM3kG0bIzbf2KD/gi7cU7uKanGOgVWsMvYaLwZEb87C2X1D2l09aQlCImlXN0hDrPJb2hAu7bXyd7+lNnPTY8k5weYncjm6lHJMF55ZIo/Zr6hCaFv/s9nQ7zVCSwRFfpgRLY1mJBNQN/1Ab9jnJnaFzBhKW3biG0xJ6R0bHxIt/rAB058E7IhP5ZuPAfW6SXawxFsggXF+5hyCNc+YqHIaqi21UeeN6iubw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDJZIHo2puLV42qbks2o0ZIoXzF/XZ8LNrEtZTwoWag=;
 b=vHPFx7TtDd7L/GMP2zCC5WGph4xFUxrGcwuZ7S2qPSdFTcVxwnx24rQW4vsNne3zGTAxnk/5hRGIVswZ1fPmdpoCJw/vKWCJe97cbAymJoxbFfOtdCpO7XlQOvOEtmtuqDFsx2ahtjyh0RP3oiLsC6baJvmh1LKiPBl9BSUOSLEsFfbID8f00/OlYw35TZyv6PP3R+jkqdG+TFub4q/iiIU+IRMYm1rGqMTOeZKSe26t5hr2ToJFBOLrlHzHV/nxxWrliRCwELiCc9Zz/jXk0ncfgPyl03A9qMTP4oIwWItVgRQ1QryxMBxn0TX4VPIzVPW2dBbt5mdNUETP4rTGzw==
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DM6PR03MB5113.namprd03.prod.outlook.com (2603:10b6:5:1f0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 06:04:50 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 06:04:50 +0000
From: "Ng, Tze Yee" <tze.yee.ng@altera.com>
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
Thread-Topic: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
Thread-Index: AQHcjovA+E6Iyn32iUSsf2+pc/C6b7WQAs4AgADF+oCAAMEWAA==
Date: Tue, 24 Feb 2026 06:04:49 +0000
Message-ID: <7770c9b6-623c-4c89-a499-1ca8055b4406@altera.com>
References: <cover.1769407657.git.tzeyee.ng@altera.com>
 <907db5dd-414d-4333-8667-bfe9e69db576@altera.com>
 <27aec2f7-f4c1-495c-8a7c-5c0a0d09b848@kernel.org>
In-Reply-To: <27aec2f7-f4c1-495c-8a7c-5c0a0d09b848@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR03MB5950:EE_|DM6PR03MB5113:EE_
x-ms-office365-filtering-correlation-id: 3fb0869b-a248-4d78-2d0c-08de736a9eef
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?Z2dXZmliREZNaHNSSG1LOEw2azBpeVpITEE1VTZrSUl1R2xlcjRRNDB4OXRO?=
 =?utf-8?B?K1dXQUtVai95YmI2Vi81bjhoTXJFZjFlT21nNHljRncyQkdSVnlFank4OHdk?=
 =?utf-8?B?azZvOGNOVmN5QlFSaVNGTDI4RnFVZXExWEtSWGp6ejBHdTlEUU9ZWE10VUps?=
 =?utf-8?B?aUpBUnpXdGZXOFNsU3FVWmViVlc4QjFUYzZZNkFGWDB3MTlMTWowQmtQYXRO?=
 =?utf-8?B?T0lqcCtGTi9RMjlwbFNDZGFjaEVEUmYxQVRTWjErQlZYWHF2cHZydlIwTEgv?=
 =?utf-8?B?N0RlZHpCczFWODl0Qlkydm5uaE5uSWhnbW4zVzlLU1BKd0JmMGk5dU5hMlo4?=
 =?utf-8?B?VTF4eWQwQm1QMUNSamZYbnVTbFhmWlgxbnZyWERBYVNuUGIyS1JKeFJiWFZL?=
 =?utf-8?B?NHdTQlh2TnI1S3FWcWQ5V2tuWUNYL2tnS00vek0vUktJcXlDWFk1VTN5dkI1?=
 =?utf-8?B?VmdIUHAvYlhaWmxSNjFHUFFKSzdEQjJpdlgvM0pNQ1piMCtMSXk3R2JlVmZl?=
 =?utf-8?B?bGt0UnhLQVAwY0RaeG1vZUhuSFpkZ0t5WExuRjBtM1lqY0VpZlJUY3ZFcnBP?=
 =?utf-8?B?MlkzcDBrUkl3QWtpbVNWVFpoN1NoRE1WMHpxbDlMU1A4c1o1aXNsbjFqd0hR?=
 =?utf-8?B?S1B5Z1RzTGdBcVpLWjhtUFUxNDlPbkdvd1hjaFBkZk5wNDg2dFluemlmTEFt?=
 =?utf-8?B?aW9GWUZMY2M5ZE5MSENmdUNEUDAxQVQ4TFVmanIzZTJKSGpHOXBab2ZnT1lu?=
 =?utf-8?B?Z0w2dGlvZ0FkM2ZINVBHR0RpVnc4OXY1MS9mWHA5ZlpZV2xaSXBtaVhDR1lP?=
 =?utf-8?B?MEF1SWNEbmI4dXJ2WG5uNGRoeFl3OVdJRVpXa3FROUhxOE5qaG5LQ3V1NGxX?=
 =?utf-8?B?QUwzNzhYWSt2cklaOFhrZXBUcnhJSWhYT0RxdEp4Z2taYzJwMXFWNFN5Ny9M?=
 =?utf-8?B?TWNjbnNQVTVzQ2RPaHdsNVFmVHljcWFVSTI3OE1Ea0JKQU5pYVVwZUxsakQ1?=
 =?utf-8?B?UDlTNVFGeXB6dzVXN1JEZTlXbTJsUUpoOS9RREVXR3QyQ2dQSmdDTzNwQUVH?=
 =?utf-8?B?OUFlM0RBVmFyQURadWNicExwUmQwZDU5SUF3OVBwc2pWR1NsbE9wQXpBNXo1?=
 =?utf-8?B?RTA5K2hsTGtRTlNsVVhUdlVFNFFlNGlMUWxMWlZWQzlTOUZ0Vmd2UjBUUXBy?=
 =?utf-8?B?K0VJYksxcU1pOWRKdHhzbkNNQmhlV1hKNHMySVJFQ2FWVjN4R2IwSjVSQklP?=
 =?utf-8?B?ZVpQNHJGa0tuVVNrdUZicjA3azZwZXJXVXZWQis3dUEwRW41cG5rZXpnOEFB?=
 =?utf-8?B?c3ROSDBYT2ZjYUFjL2xjUzBVbVZiQ2YxaDFnVG5EYk1iTXJtdm9DQUNYcm9Z?=
 =?utf-8?B?Ym4rQ2Z5OWoycVFFa1M0RFlZR2xTNTBHS0M3d0JqU1ZGb1RNQkQydmllSjlC?=
 =?utf-8?B?Y2JLMjBNaWNwUmZINzkrckN6N2FQMlJtZWVIbVp2OXpKTlVPWStLejI0Q1Zy?=
 =?utf-8?B?d21Zam4zb1RIWUFWVVhwZzBlMy95aEROZHR3WUtIWHoydGR5SERSQmhocW45?=
 =?utf-8?B?THM4S20wNFdMd2dUeUxma1pXVEpuYVFmMXIwVkNuZUd4YXQxS0tuUkd3UXBq?=
 =?utf-8?B?VCt5TkxXb2VFWmNNTzBuajUyWEJ5RmVEU2pnT3l6bE5JbUFXNXBMNEN5bG5H?=
 =?utf-8?B?ckpJVSsyRjRPWFJweWRKZlRpYjNtQ0hWejRvSng4SUtXS1ZvbUhJY1RVUmkz?=
 =?utf-8?B?SmRUeVZKcmU2eTJmQ3I0WWN3Y200Q3VOOStpRW41YzdFZDdRNnBmU0t6aTBY?=
 =?utf-8?B?YkZXbzhsdm5uSUk0SFJ3aHRWWG9wd1VFUDVXdHRUL0oxTnhJMnJncTVqNmx6?=
 =?utf-8?B?bTI2RjlWZ29uYjMwQ2RpNDIvNjByZjZoUk9QM2JnWkdBemhXbHpOY2pwdTFZ?=
 =?utf-8?B?bkl0d3VFamRjeUo3amNwcTg1QkRackpldHRONHlBN0x1Yk9SaVkyYzZ0QUNP?=
 =?utf-8?B?SkpCTkRXblpFR0JhK0lVUW1YYWlpT3hWUzBWVjNUYjVuSTdnZ3V6VzdRenVQ?=
 =?utf-8?B?QW1raUVsb3pBR1RyWFYxTzF3ajBzVzUvbW94dlVHSzN4eFhua0RZSS8yRWcy?=
 =?utf-8?Q?5RVCVLVWFGVPLYNN3jODwTsWn?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?VG92elY0N1lpZGozUk9iVlRPTVpCZWFGaThQQjFBUWRLY2dSd2FQSys1cDR5?=
 =?utf-8?B?SGhsSHlneFd6WWRCdE5XS3ZXK3JsRytCdG50SklWQmppai83SEp3VXh3NU9B?=
 =?utf-8?B?Z1pFcVVGWmNaVnkyWjJOK1kwMGpPcVl6bmxpY1VwNSt4Qk0yTlhnY3VJUzdT?=
 =?utf-8?B?U3ZHZlVVZ2h0YVQwdkdQdjFIbGs3NWFsNTZFd0FQL0Jsb21QR1YrZEVnYzdh?=
 =?utf-8?B?TEN1MjFoMVlSOWYzMGtQTHFwYlYyeSt6elpXbmZQY0cza0JLcVNsTndYWEYw?=
 =?utf-8?B?U1VmcGNyUlZmRGphZGpENDNPandhSHIwak15clY1by96Mkk5MnhaalBFT0J0?=
 =?utf-8?B?NzRVeW9SMXR3dENaMEdDTkowWGRpNHZGNHlGRjFYdTZkSkpRMm1UY09uU1pU?=
 =?utf-8?B?RFRGS0haZ0tUQlJZdDJuS0Qwc2pNV3FiTnBFMGZNSlZ2ejlRblpjQW9VVlpl?=
 =?utf-8?B?M1NOeGVpMkRtTVFoaDJ2ekpBL2w3V2RZYkppS1ZrajBRWGNuNi84dTV3UlRL?=
 =?utf-8?B?VEYzWXZOQ0s5VlFmZFRNNE1XMDNIcVZqR0cyeUl5M1VBajczVG1YMWpXeTBq?=
 =?utf-8?B?OU5SYWZqZW53TGo2dEZtY2V3V2hWUDlaU2l4elREUmtLOFUzZUJNMkNWSThm?=
 =?utf-8?B?NS9YUGhDVGx5K0N6dDZGN2hRS2JSeG1vMmloV2FHUVFoWVFmaWVXTndNSk5P?=
 =?utf-8?B?NkFrNnBTYS9hRTROUEJhVlpwNU9PTFpSTXZXaUQxSkF1QktVZnNmLy81VGRj?=
 =?utf-8?B?aVk4RENaRXVSc21EN1duYzBzY251OFQ5YzRucXFVZkhkK1crSGx1ejEwVGhz?=
 =?utf-8?B?L3ZoU1h5d284RzJzak5tQk1EUmU3Wkx6dS9OTWVwSW9tdGF3UnZ1L0grUThX?=
 =?utf-8?B?M002NlhvenE2NDQ3WVhaV2lRRlRFNlJZYTdSSHd6eVFoMGxQN0M3S0VKNVJ1?=
 =?utf-8?B?aTk3SUNxSDlweG1xNytLM2IzRXpaYTczOXdNODlRRnI5VElRU2VhbkpjaUdI?=
 =?utf-8?B?b0d1U0RBdWdlU1FnNk0rVmgveTVtYTJDd1paY2NKNHd2UlRzWXVrRWdKbW4x?=
 =?utf-8?B?cEtUdm5LV1M0UWhFYXRGT0xiTkhIVzc5VzIySEc3a21sUFcwcFRGZzVNOEFJ?=
 =?utf-8?B?VlVQSHE4SUNGcFB2M1QxQUNOcDRaRWZIZTQvVittMTd3UWNkdjFuMmJ6OFBY?=
 =?utf-8?B?amlYdW8xN1ZIRWtiM1M2T0tlOEFLVmczZUFRRlRBSGt3bEdIRjhtQlk2KzR0?=
 =?utf-8?B?VXJGWnkyempJSUtibVY5dmk0WTMzUnNjTk5iUlo2TkhPblZYaUV6OWdaWnVp?=
 =?utf-8?B?WGdYUXV2T3k4Nkc3d0FLVmtHWWU3MHVvSDRlclJSTDl5SGJQeU1raERVdlN0?=
 =?utf-8?B?bzBpcnBlZ3l0eVFzVDYrcWo0c1dra1NpbVpDN3VydzZBTy82ZXFKMytYWSth?=
 =?utf-8?B?S2dndWRvL2tNNk1aM2tRZWpDQWF4UURjSDlMMWJxSkhrSUtlT1d3RDRneEw5?=
 =?utf-8?B?NjFPRGliMFZIa2Y1bDVkQzVkMWFxam1vNlBJY3gzZ24wOFVwbG5xbkk3UjJN?=
 =?utf-8?B?ZCsrb2l1cWRRRXYrakJzVkR5RjlndEtXWlZuR3BJMWFQbkZMUTZ6UFFpQTJC?=
 =?utf-8?B?eE1BQ2ZSbE9scHFzQ0tDaXhKNEkvNGJ5cWN2VFE4aFIyOFE1eE1CVSt2bFN2?=
 =?utf-8?B?NjM1a1dYTTFKWUF1V0JUdnNNSU1GSmp5QlZwUCtGOVBhTlIyOW9iZFl2NlVG?=
 =?utf-8?B?MW93MW9TOVRRVVpwWUM2cWs4cE0wOEJZaERYWXJ3QmZDeFFaUEIxNWJLTFRQ?=
 =?utf-8?B?Y0ZHWm84Tit0MW5zU2xOTkRMMGNJa083OXB5QVBJYW9pWFhlNVFuNmdnWjFx?=
 =?utf-8?B?TG9BQUk5U3huTXNMV3A4NHV0cW5Vem1IbmMzNkxaTjUwZEQrd3h2enlrdUNt?=
 =?utf-8?B?MFdjcm1qTnhuZzRWc2ZWdU1VLzdZeHJBRGhqeThjRFZ1WHJFeUlYMzNKMHQx?=
 =?utf-8?B?QkM5Yko2Y1RaR0ZMU2kzSGFnQ3ZWTEtOWm4wdUFRMUpOMlpwanBLS2xvUGs0?=
 =?utf-8?B?cHIzUmxkTjhUQTBQK1ZUZDJFKzRUZ1hPakxvZmVmdk9TYXRLY29qYVdEVkty?=
 =?utf-8?B?UWdLNmxkNTY1UjRKcTVWdXR5ZnVOaHUyYUVCNXV5ZStvUHhMVWZHK0Mzd3Zm?=
 =?utf-8?B?c1pZSUNkbUJTVGxvdHlwNVNlWWFnd0ZZRzFlc25DTEJtRFB6Tlh0RFFTTzgv?=
 =?utf-8?B?dkNqeGhXcVlOMWNQSk14Rkt6Q2oxSHJhZTRhaDFTSVlRQUZtbkdiSUltOXlE?=
 =?utf-8?B?eFRBKzBORHRyN0NHWjJ5ZWhPeUdqbVRhWFpxSk52ejhZOTZUT1lRZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E20A821FE8FF0E48BD286EF0CF0717A3@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb0869b-a248-4d78-2d0c-08de736a9eef
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 06:04:50.3204
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8MpsGDORw/FA7ia0UMlWRNW49U20N1VIoq5LAskQhAyeLNTRE/3HecNwb4ewuYaCO2IxbxBw8xT7MaK5TTCmGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267720-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tze.yee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:mid,altera.com:dkim,altera.com:email,outlook.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 30084182490
X-Rspamd-Action: no action

T24gMjQvMi8yMDI2IDI6MzMgYW0sIERpbmggTmd1eWVuIHdyb3RlOg0KPiBbQ0FVVElPTjogVGhp
cyBlbWFpbCBpcyBmcm9tIG91dHNpZGUgeW91ciBvcmdhbml6YXRpb24uIFVubGVzcyB5b3UgdHJ1
c3QgDQo+IHRoZSBzZW5kZXIsIGRvIG5vdCBjbGljayBvbiBsaW5rcyBvciBvcGVuIGF0dGFjaG1l
bnRzIGFzIGl0IG1heSBiZSBhIA0KPiBmcmF1ZHVsZW50IGVtYWlsIGF0dGVtcHRpbmcgdG8gc3Rl
YWwgeW91ciBpbmZvcm1hdGlvbiBhbmQvb3IgY29tcHJvbWlzZSANCj4geW91ciBjb21wdXRlci5d
DQo+IA0KPiBPbiAyLzIzLzI2IDAwOjQ1LCBOZywgVHplIFllZSB3cm90ZToNCj4+IE9uIDI2LzEv
MjAyNiAyOjE5IHBtLCBOZywgVHplIFllZSB3cm90ZToNCj4+PiBGcm9tOiBOZyBUemUgWWVlIDx0
emV5ZWUubmdAYWx0ZXJhLmNvbT4NCj4+Pg0KPj4+IFRoZSBmaXJzdCBwYXRjaCBhZGRzIHRoZSBk
ZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXcNCj4+PiBib2FyZCBj
b21wYXRpYmxlIHN0cmluZy4gVGhlIHNlY29uZCBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGJhc2Ug
ZGV2aWNlDQo+Pj4gdHJlZSBpbmNsdWRlIGZpbGUgKHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0
c2kpIGNvbnRhaW5pbmcgY29tbW9uIGJvYXJkDQo+Pj4gY29uZmlndXJhdGlvbnMsIGFuZCB0aGUg
ZU1NQy1zcGVjaWZpYyBkZXZpY2UgdHJlZSBmaWxlDQo+Pj4gKHNvY2ZwZ2Ffc3RyYXRpeDEwX3Nv
Y2RrX2VtbWMuZHRzKSB0aGF0IGluY2x1ZGVzIHRoZSBiYXNlIGR0c2kgYWxvbmcNCj4+PiB3aXRo
IGVNTUMgY29udHJvbGxlciBjb25maWd1cmF0aW9uLg0KPj4+DQo+Pj4gVGhpcyBmb2xsb3dzIGEg
aGllcmFyY2hpY2FsIHN0cnVjdHVyZToNCj4+PiAtIHNvY2ZwZ2Ffc3RyYXRpeDEwLmR0c2k6IFNv
Qy1sZXZlbCBkZWZpbml0aW9ucw0KPj4+IC0gc29jZnBnYV9zdHJhdGl4MTBfc29jZGsuZHRzaTog
Qm9hcmQtbGV2ZWwgY29tbW9uIGNvbmZpZ3VyYXRpb25zDQo+Pj4gLSBzb2NmcGdhX3N0cmF0aXgx
MF9zb2Nka19lbW1jLmR0czogZU1NQyBkYXVnaHRlciBib2FyZCBzcGVjaWZpY3MNCj4+Pg0KPj4+
IENoYW5nZXMgaW4gdjU6DQo+Pj4gLSBNb3ZlIEFja2VkLWJ5J3MgYWJvdmUgdGhlIFNpZ25lZC1v
ZmYtYnk6IGFuZCByZW1vdmUgdGhlIGVtcHR5DQo+Pj4gbGluZSBiZXR3ZWVuIHRoZW0uDQo+Pj4g
LSBObyBjb2RlIGNoYW5nZQ0KPj4+DQo+Pj4gQ2hhbmdlcyBpbiB2NDoNCj4+PiAtIEluY2x1ZGVk
IEFja2VkLWJ5IGZyb20gUm9iIEhlcnJpbmcgYW5kIEtyenlzenRvZiBLb3psb3dza2kgaW4gdGhl
IA0KPj4+IHNlY29uZA0KPj4+IMKgwqDCoCBwYXRjaCBjb21taXQgbWVzc2FnZQ0KPj4+IC0gTm8g
Y29kZSBjaGFuZ2UNCj4+Pg0KPj4+IENoYW5nZXMgaW4gdjM6DQo+Pj4gLSBSZWZhY3RvciBzb2Nm
cGdhX3N0cmF0aXgxMF9zb2Nkay5kdHMgdG8gdXNlIHRoZSBuZXcgY29tbW9uIGR0c2kgZmlsZSwN
Cj4+PiDCoMKgwqAgZWxpbWluYXRpbmcgY29kZSBkdXBsaWNhdGlvbg0KPj4+IC0gTW92ZSBnbWFj
MiBhbmQgaTJjMiBub2RlcyBmcm9tIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0c2kgdG8NCj4+
PiDCoMKgwqAgc29jZnBnYV9zdHJhdGl4MTBfc29jZGtfZW1tYy5kdHMgYXMgdGhleSBhcmUgc3Bl
Y2lmaWMgdG8gdGhlIGVNTUMNCj4+PiDCoMKgwqAgZGF1Z2h0ZXIgYm9hcmQgdmFyaWFudA0KPj4+
IC0gRml4IFBIWSBhZGRyZXNzIGluIHNvY2ZwZ2Ffc3RyYXRpeDEwX3NvY2RrLmR0cyBmcm9tIEAw
IHRvIEA0DQo+Pj4NCj4+PiBDaGFuZ2VzIGluIHYyOg0KPj4+IC0gSW50cm9kdWNlZCBzb2NmcGdh
X3N0cmF0aXgxMF9zb2Nkay5kdHNpIGZvciBjb21tb24gYm9hcmQgc2V0dGluZ3MNCj4+PiAtIFVw
ZGF0ZWQgc29jZnBnYV9zdHJhdGl4MTBfc29jZGtfZW1tYy5kdHMgdG8gaW5jbHVkZSB0aGUgbmV3
IGR0c2kNCj4+PiAtIEFkZGVkIGZhbGxiYWNrIGNvbXBhdGlibGUgc3RyaW5nICJhbHRyLHNvY2Zw
Z2Etc3RyYXRpeDEwLXNvY2RrIiBpbg0KPj4+IMKgwqDCoCB0aGUgYmluZGluZyBkb2N1bWVudGF0
aW9uIGZvciBicm9hZGVyIGNvbXBhdGliaWxpdHkNCj4+Pg0KPj4+IE5nIFR6ZSBZZWUgKDIpOg0K
Pj4+IMKgwqDCoCBkdC1iaW5kaW5nczogYWx0ZXJhOiBBZGQgZmFsbGJhY2sgY29tcGF0aWJsZSBm
b3IgU3RyYXRpeCAxMCBTb0NESyANCj4+PiBlTU1DDQo+Pj4gwqDCoMKgwqDCoCB2YXJpYW50DQo+
Pj4gwqDCoMKgIGFybTY0OiBkdHM6IHNvY2ZwZ2E6IHN0cmF0aXgxMDogQWRkIGVtbWMgc3VwcG9y
dA0KPj4+DQo+Pj4gwqDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWx0ZXJhLnlhbWzC
oMKgwqDCoMKgwqAgfMKgIDYgKysNCj4+PiDCoMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWx0ZXJh
L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKw0KPj4+IMKgwqAgLi4uL2R0cy9h
bHRlcmEvc29jZnBnYV9zdHJhdGl4MTBfc29jZGsuZHRzwqDCoMKgIHwgNjcgKy0tLS0tLS0tLS0t
LS0tDQo+Pj4gwqDCoCAuLi4vZHRzL2FsdGVyYS9zb2NmcGdhX3N0cmF0aXgxMF9zb2Nkay5kdHNp
wqDCoCB8IDcxICsrKysrKysrKysrKysrKysNCj4+PiDCoMKgIC4uLi9hbHRlcmEvc29jZnBnYV9z
dHJhdGl4MTBfc29jZGtfZW1tYy5kdHPCoMKgIHwgODEgKysrKysrKysrKysrKysrIA0KPj4+ICsr
KysNCj4+PiDCoMKgIDUgZmlsZXMgY2hhbmdlZCwgMTYxIGluc2VydGlvbnMoKyksIDY1IGRlbGV0
aW9ucygtKQ0KPj4+IMKgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
YWx0ZXJhLyANCj4+PiBzb2NmcGdhX3N0cmF0aXgxMF9zb2Nkay5kdHNpDQo+Pj4gwqDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbHRlcmEvIA0KPj4+IHNvY2ZwZ2Ff
c3RyYXRpeDEwX3NvY2RrX2VtbWMuZHRzDQo+Pj4NCj4+DQo+PiBIaSBtYWludGFpbmVycywNCj4+
DQo+PiBJIHdvdWxkIGxpa2UgdG8gZ2VudGx5IHBpbmcgb24gdGhpcyBwYXRjaCBzZXJpZXMgdGhh
dCB3YXMgc3VibWl0dGVkLiBUaGUNCj4+IHNlcmllcyBoYXMgcmVjZWl2ZWQgQWNrZWQtYnkgZnJv
bSBSb2IgSGVycmluZyBhbmQgS3J6eXN6dG9mIEtvemxvd3NraQ0KPj4gZm9yIHRoZSBkdC1iaW5k
aW5ncyBwYXRjaCBpbiB2NCwgYW5kIGFsbCByZXF1ZXN0ZWQgY2hhbmdlcyBoYXZlIGJlZW4NCj4+
IGFkZHJlc3NlZCBpbiB2NS4NCj4+DQo+PiBQYXRjaCBzZXJpZXMgbGluazoNCj4+IGh0dHBzOi8v
bmFtMTAuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vPyANCj4+IHVybD1odHRwcyUz
QSUyRiUyRmxvcmUua2VybmVsLm9yZyUyRmFsbCUyRmNvdmVyLjE3Njk0MDc2NTcuZ2l0LnR6ZXll
ZS5uZyU0MGFsdGVyYS5jb20lMkYmZGF0YT0wNSU3QzAyJTdDdHplLnllZS5uZyU0MGFsdGVyYS5j
b20lN0NhNTk1MmNmY2Y4MTQ0NjU4NTcwMTA4ZGU3MzBhMTYwYSU3Q2ZiZDcyZTAzZDRhNTQxMTBh
ZGNlNjE0ZDUxZjIwNzdhJTdDMCU3QzAlN0M2MzkwNzQ2ODQzNjc3ODU3NzglN0NVbmtub3duJTdD
VFdGcGJHWnNiM2Q4ZXlKRmJYQjBlVTFoY0draU9uUnlkV1VzSWxZaU9pSXdMakF1TURBd01DSXNJ
bEFpT2lKWGFXNHpNaUlzSWtGT0lqb2lUV0ZwYkNJc0lsZFVJam95ZlElM0QlM0QlN0MwJTdDJTdD
JTdDJnNkYXRhPThMQ3VaM2ZBeiUyQlZIa01ac3Z0Uzc1ZTVrMGRudDVwQyUyQmhSVUpwdjNwQ1Jr
JTNEJnJlc2VydmVkPTANCj4+DQo+PiBDb3VsZCB5b3UgcGxlYXNlIGxldCBtZSBrbm93IGlmIHRo
ZXJlIGFyZSBhbnkgY29uY2VybnMgb3IgYWRkaXRpb25hbA0KPj4gY2hhbmdlcyBuZWVkZWQgZm9y
IHRoaXMgc2VyaWVzIHRvIGJlIG1lcmdlZD8NCj4+DQo+PiBUaGFua3MgZm9yIHlvdXIgdGltZSBh
bmQgY29uc2lkZXJhdGlvbi4NCj4+DQo+IA0KPiBUaGlzIHNlcmllcyBsb29rIGdvb2QgdG8gbWUs
IGJ1dCBjYW4geW91IHJlYmFzZSBpdCB0byB2Ny4wLXJjMT8gSSdtDQo+IGdldHRpbmcgYSBjb25m
bGljdC4NCj4gDQo+IFRoYW5rcywNCj4gRGluaA0KSGkgRGluaCwNCg0KU3VyZSEgSSd2ZSByZWJh
c2UgdG8gdjcuMC1yYzEgYW5kIHJlLXN1Ym1pdCB2NiBwYXRjaC4NClBhdGNoIHNlcmllcyBsaW5r
Og0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2NvdmVyLjE3NzE5MTE3NzMuZ2l0LnR6ZXll
ZS5uZ0BhbHRlcmEuY29tLw0KDQpUaGFua3MsDQpSZWdhcmRzLA0KVHplIFllZQ0K

