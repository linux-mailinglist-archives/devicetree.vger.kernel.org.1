Return-Path: <devicetree+bounces-155374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE74A567D1
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 13:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFBC03B2753
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 12:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1866E21885D;
	Fri,  7 Mar 2025 12:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="uKZlJztM"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2062.outbound.protection.outlook.com [40.107.247.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D974D218EB7
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 12:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.247.62
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741350541; cv=fail; b=Lu0xV8PJoZlLi8nlj9pEvTYW1yqjQmYt7Sde7XpnviwkTe6ksRHfeJJ52UvJ0BntC2CHO1+dzkzttlWHSaVtjsGgexyHJzyi+kncpulISxkz19KetX8MZC5wEkZorFsOPyWvuzj4EA7VA9lborQUZAf0dcOhs5D8sU4Gef0VzZ0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741350541; c=relaxed/simple;
	bh=2rVJafmCGbe1xtUfmuBqu7ZxxyVoByVyfN0v9xyeuCA=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=dZsYHqXsBEnCObjRkMo6RFIyUhhneeEvhQImFC2WN01NBLl7l5i58sDoDoj1Ws7Oyar1pauJVpzvmUvCzqe+cnXgGcJlG4rzqGKRn+/5L6W4/cwIcfFON8t+OqGkD1aSEEKdh6xxvXzYmrUzBtIpS2H6vzclYoGFmXuRVnBa9uI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=uKZlJztM; arc=fail smtp.client-ip=40.107.247.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=McfvvxGX0OipRnfg8Pw4mi1b8BEvMRd7O73pQm7xnuADsULy/KR/78YwVP0ZZW7Ftlr61bT3ISeXsD8XL4kv3t2Aiv+kYKf1kQzqLeR1nF02aMrUOvoZPo2YdbuVuDMqw2eb9VzQ70z7byD32QMvOyXzBrhGlSwp2HacjgngQIr+wsV3ErafODDS8jwaqEe6Ax5f6KdkT6zbZJ0pd9IsS0BZqddHQzZ0x7nvHz1Lb+f/do7itLoDeR4MntKANeunR1GI6iBlaWIpjHO8SIudWllqtrnBPDdzyWQYqxte3IKURqiKK9epgrgGCYHC6Qo/vxat7lNTbPxYjloj0/jQ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2rVJafmCGbe1xtUfmuBqu7ZxxyVoByVyfN0v9xyeuCA=;
 b=zAy9AjwefuFZSzTOsFjJjkJuayookT5+3zo5yTvoi+IaEeK+Twcyw/oFTZ+2co+V2jYCWcvDqLC4qzDWu8nPADyvHirqG8QZBdRpclCobJkqTUIVwENLo1GraBq/i9YtPDPuJHKxZA41Fii/YO06/NJTNm37vzAnH1VKwcMC8R5dqWLwDvKNxovH+gMIQH8tqNxB8v5XZFcssuyhdzU7oohkW3fkX2adYCSADUtBrbRH8gs50l5sqeDz5O1Vk09vemWRrPZjFtlSi0eyjzzDzyu4RjVWVgP39vd1YoRV4yKE9r1hm+MxIsYgtMHWN87264HQ+y/anliGeuP7miaOhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2rVJafmCGbe1xtUfmuBqu7ZxxyVoByVyfN0v9xyeuCA=;
 b=uKZlJztM/tu9r1HXZwp85p2t2nYARgESFcYTf4rPFVfZHUonIKOgmIcgXPGsSpEbCXbU4E6zM3iVevHYHNVXpLvrKfkYI+Srp01dtZM0BRwO3q8oGgUVTuJtz9bMUZhz0Cjae7Qd+hDKMVFjzELWYGNeTE4E17STmpiTgsBnwsLcNrbj0dBWbaQwcUeFTxgaBDTK4immxhqZZZb5Lm4nimU7E80P2GIqpXcCzzRXFJv0M7Jtu62LpRo8Lx66+u2bZqI22rcNNFPnBj3+ae0dVzjG3MQbJRME4DuNiM39FK54rIK0cIsiaDeia+OddVN/8Wztwh89ilog+zJB4fyOXg==
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5b6::22)
 by DU0PR10MB6250.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3ed::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Fri, 7 Mar
 2025 12:28:55 +0000
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::baa6:3ada:fbe6:98f4]) by AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::baa6:3ada:fbe6:98f4%7]) with mapi id 15.20.8511.020; Fri, 7 Mar 2025
 12:28:54 +0000
From: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
To: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: How legal is #interrupt-cells = <0>?
Thread-Topic: How legal is #interrupt-cells = <0>?
Thread-Index: AQHbj1x92EWW/4ErREK1sOsmInDyHg==
Date: Fri, 7 Mar 2025 12:28:54 +0000
Message-ID: <ad457a08aa7607a094872bab41b5fb670b978cec.camel@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.52.4 (3.52.4-2.fc40) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB6867:EE_|DU0PR10MB6250:EE_
x-ms-office365-filtering-correlation-id: 9a9f36e7-32fe-40e3-059a-08dd5d73a05e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?ZzQwSG1wcmlHczM3ZnRsYWtCSWlOUzIrM1NSTVNKS01Kc0NHM0dvcXVHNHFS?=
 =?utf-8?B?WEs2MXZmMGE5Yk1kbEh5bjJXK3c0dVV0Q3RVRzF2QTR0M0cvSE1JZ2tDd2Rh?=
 =?utf-8?B?aFRjQVhEaEk1dXBMb0g1Q2wzRkJ0a0VySWdBVVhtS1g1ZFRzZWx4bmhrdDNa?=
 =?utf-8?B?V0tsTUgrVFd0T0MxdXo0UTgvMFBMZHVyZDFRbk9ycDZ0WXcrR0JGejdLUHVo?=
 =?utf-8?B?b3BBbXdOb3l0bGw3OFd4ejNBUGU3RUZZWHBkQno0cTd1bUhscGJQWXZoNERm?=
 =?utf-8?B?anpjNUlDV2lmSUp2OC9TZlM2UkZKY1JNanAwK2F0Z1dOWWwwb2I3ejBKS05j?=
 =?utf-8?B?cVVCWFJIcThMR1laUEVBNXl5bi9oVEJXaENHZzY5d0JhWkpuVStXUVZXeVJ6?=
 =?utf-8?B?WDlvQkZEUmNEUUEveGxic1BZS29RYlVKazBmOEVKZVVkdWNnT0thSmVjOFRp?=
 =?utf-8?B?UmpWcXRvZDBINDI2d0E0d1BPZ3MxUDIxZ2s1Y2JRcWs0SjZ1UVBXblJkeGFC?=
 =?utf-8?B?ejdzOE1Ca3h1Wk1jUjl0VjFSdVhaMXk2amR4bXdyVnVxenJlYmVzbDMvc2Iv?=
 =?utf-8?B?T1orQTIram44d1lGQnNldDJwVWIreHBjREF3b3dhQUtrOWVpMWVreHhoZmd2?=
 =?utf-8?B?Q3dSTXo4ZzNBbGlyYjhMZlNDY2QxY2F2OUpLS2FRd29ucW1MeFlGNTRscGxB?=
 =?utf-8?B?NyttejRlVDQreEtoc2FQb1l2Z2dxRVUxS1RPK3hSVERBMGdlSGxhNHN3Z2hs?=
 =?utf-8?B?Uk8yWWxOTHRzUzdHaVRjZ25XN3pVWmk2NEo4Q21rdkZGUHdZU3J5bWU1SGJx?=
 =?utf-8?B?QjJIMzFGK3hLQ0w2eG1HcSszN2huV3U3UE4xNzZPUnptVTNjQy84bHk5NmYz?=
 =?utf-8?B?N3hZTWR2Q3B6aEZUdjBLejd2Qng4WVZrMnR0ZURUMmVPZ3ZEbXdnUzQrWENZ?=
 =?utf-8?B?eFNuNjZRa0FWdVZHLzhYSDFLTWVJZEk5N1B5MFM3L0NFVXF0QW9ydEYwWEhw?=
 =?utf-8?B?Tk1xczBsNkZKc3pFREIrUHhxaE9GMHN4UmsyRFU4WklZUVNsM21QUDB5UlhO?=
 =?utf-8?B?VklVdkR4eDhCUGE0QkI2QzRyVW1rQllSM3NCbUtIdHBtUGwwWmRyR3hzajJw?=
 =?utf-8?B?ZzdyZGVpWEZKWXE3d3hGc0EzQkNwcmpyVzhEUXpJSjVzQk96a0NISGN2dmxY?=
 =?utf-8?B?WGFBckVTdjJ2VStmdHJMWDB6Wkx3c1l4WXBxaVg4cU5mclZUSVYxamNMdUdz?=
 =?utf-8?B?S3QyVEhuQmFVcy9ybmhQMG1CbUNDOEQ3MCtZcC8vd21xRzRTbkFOQVJkQytz?=
 =?utf-8?B?eW9xdmdyaTlZSHJvMEtYZkROOGxqZlRoaUw5eTdTbUNjb3FLbk9SSkZlWXll?=
 =?utf-8?B?VUU3VXpEK3lMUVFJdTBXS2N4akd6N3A4NTlnNUZWVlptaG5hMk9DT2pKYTAx?=
 =?utf-8?B?alpQakpUVUx4N25vODE5VkQ5VmNtQXExQUdDME9oeFcrcnN6QkFrVnRkdDJJ?=
 =?utf-8?B?aE9CSEZROURGdzVMbmVDSWF4bDU2K2lkdzVla2h5d0dWTTFJNy9FbXQrNzlm?=
 =?utf-8?B?MFR1MER3bmpyMEVlYkJTbUQyaTJBblkrT0RkU1VCZE1ueXJ6b0VaWjNDTHhT?=
 =?utf-8?B?OUxaTk4rOFN5UHRXUDFTSG5KNUNLbmxxaVBDN21QSVFsOGNXd3l4R3B5bkls?=
 =?utf-8?B?QlU5Nm05T1R6Zk1vTXFMakl0TGRTZEY1TElnN050ZWhyNnUyT0E2SEc3RHRN?=
 =?utf-8?B?RGE0V282UEpMcmxYY3FmYys0L0JCcmpsVXQ2SmkyOTNaV0JmK2dJd3RPamYv?=
 =?utf-8?B?TGlxbkQ4UHMvY3JKd2YwVTdZNmlGSktlWlFYekJ6ZVNnN3lsYW5sRVgwYnkw?=
 =?utf-8?B?SmFZcE45Y3VZSGNWMFFjZlJUWmVzQkp4b0N4RHE2UGs0dGRUaEVrUlh6REp5?=
 =?utf-8?Q?IXqjJemXecIAoxYY6muxhu5sm1xAliey?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZWkrNmtCWndSeUZUVUFndVlSdytBMnJ0bEo4b3VYR21vMGVycWpWc2hPN0Rq?=
 =?utf-8?B?eWlEUmhSTVVwUWtXRjRtbDBGS2Rhd0kwY0ZWZjF0eUxMM2xrUzdtaU5PaWRy?=
 =?utf-8?B?MSswazdVQUh4RGRlR0pnSlhJRmhGOThPUzQ4cFJxRzFLUDBNQXpQWk5LTmZX?=
 =?utf-8?B?Ty8yU3I4Y2t0alltaFRWY3EzYjZ4M0ljSkczb0VVZWlIVVlYSmsxTmFzSWNw?=
 =?utf-8?B?T2piNm9adVEyL2dxYnNUZGlHN1dNRGJZTEkvWXpHbjZyOGRpUTlRYXlaRHph?=
 =?utf-8?B?VW9uNjBaMC9zcm0wVmFYVGFYdTg0SEVOR0dRSVgramdNMEwwS0lkZWw2eC9n?=
 =?utf-8?B?VFZCQk45WlA2WHljM0FQZTBvTVRJdGV1TlBnUFBwYlVtM1VubjA2VzV6dGRG?=
 =?utf-8?B?dWpya0YwcmRXaU5JRGREZUVhVjRCSVNrdys3dTJYN2p6Y3dlTEUyTlBmQU4w?=
 =?utf-8?B?SW0wbjVJcXVqWHBTbTdEUVhKQ01DbHBZVVAydlI3WFRGdVNzS0xZbVk4WVAv?=
 =?utf-8?B?ZHBVUGx4N1Uzb1NoTmZrOXVLRGtlVDNjaVpWODBGeE00WEZTbTV3a2V5ZGFu?=
 =?utf-8?B?a1hOYVIvSTBaR2Ewc3k5Zno2dXp3RkFqSFJBekdLaTQ4dnBwakcwZ3dIR0lL?=
 =?utf-8?B?aUZZMExjWDREVUhhSjA5UE9IeldOdnk4dTRIdjlERUdSeTFmaWtJYjNYRDBL?=
 =?utf-8?B?UFd0UGVqVE5TaU1LRE1RK21OMGpYUWVBMms5djcwSW1vaWVvWnlkSzhoZDlw?=
 =?utf-8?B?emx2WnJzYTI1VCtTQ3JoTm5kYktaRFphUHVxclh2TjFwSDhHUFNhYlo2YTRB?=
 =?utf-8?B?TWtuakhMYjZ3ZExnbTdHTXFZbjI3YzdnM0EzWkVkWnI1WUY0T1FXdjRuUnNh?=
 =?utf-8?B?ZFNlSG5RelJqNmlJR1VjTmNjZ0lKSnFlMEozRmtJY3k3a3UzRHJ2cFdOK3l4?=
 =?utf-8?B?OEl6QUV0cExsK1FuTkJub3g0SmIrTGxRdFRkQVYyckhBWHhzKzZyTVlEMDRi?=
 =?utf-8?B?L08ra1JiSXA5SVRjU3d5Z2JmUkdraHFkR2ZySlFsSjF2Vy83dnBINTJNV0t0?=
 =?utf-8?B?cURBS3pTRjE0R3ZYYmJVMXEwdWdkS09YSTlqRGNQdmRjYmVLaVpYZGt2TkRQ?=
 =?utf-8?B?SUhxbnJxdlRhUEYvaFlUMDBqaEN2MTZpYW5MTXNFRFpHT2pVSkxSK0QweDFD?=
 =?utf-8?B?TldUZlVoMXgxYVZ0M3BDdHFEY2pCVFg4QktFY1lZNWltSmd3QitjTVZwZkpD?=
 =?utf-8?B?Ni9ST3g3cDRYWnMyZjhFeFlJakNEQ1dYYS9peDg0SmdHVGc4TFZxZ3dsRkh5?=
 =?utf-8?B?UWVNVmR0RjhKV0hCa2w3NDVnQURTS3drcVliT3d3UDI1RHBYV1pvOUNoejBG?=
 =?utf-8?B?ZHUvSDlXNHNaVHhGYkpXZ0tPVDdkV3FMZ3FMU1Vrd01CYVUwQ1R3SUlnVjFL?=
 =?utf-8?B?WFJTUG1Ud2lpdHFCZVplYnlmZFJQSG8zM0k3c0NuWFFicDlIalpORDZxb2VH?=
 =?utf-8?B?cGZ2cmVKK1hnZEhXWG56TU9rRnpwUnBZVWErd3E3L2dabmhBU2dMMVZTbnNT?=
 =?utf-8?B?NFEzRU9wd3hDVGt6c1ZYa0RXUjFOOU9ZcmVZT0txWW1PTlV6MHJ6TkgveXcv?=
 =?utf-8?B?QlI2QmpGQklhbXg5ZEVnOUZOSlhpdGE2UFV3T2FQU1NkWStHaU9VMkdpbzVT?=
 =?utf-8?B?bWtPNloyYzNaY1RhTTl6R29VNTJ1ckIvdGV5Zm5sK3hmR203N1U2dUIyejJo?=
 =?utf-8?B?eW9UQ1FxTWUzRTFLd0cwNE9XTS9wSHhaSnNtaElJbHByci9TWWd1Ri9hVUI5?=
 =?utf-8?B?cXpCRjV2bzlYem1sK1ZzNm1JNlBjZFFpUDM3dUNXa3NVOTNBeDltemg0NGtp?=
 =?utf-8?B?YkI0SEpVWFUvT21CQmd3SEZjWC9keEFYT3lsNzZlZTdmUHRoeVBvekYvaUVy?=
 =?utf-8?B?c2dkVWk2REhTTFZJeVBhOWRNZk1pKzZET3pET3YxSWMwZkxDSFYzMGlHUmdT?=
 =?utf-8?B?YnRVc3ZGRzhYTDErbG5oeEx4blgyRWxGK2NzZ3I1NXZUdHAyUjRxV0lubEZy?=
 =?utf-8?B?TGFFdHVwYmo0ZXMxazRVZXZLK3NPUUd4dmVMVFF2NjRiRGJPTnVjVm0zWDcx?=
 =?utf-8?B?RForU2xaUGMwZ3lSbzltZkpMZUZ0QVA0SVNIV1FxODZHeU4xd0FQSjl6cnJs?=
 =?utf-8?Q?whWK3fnlw0xkfpWHbEm97+0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A433AF00B1A0034F9606882EAB5142B1@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a9f36e7-32fe-40e3-059a-08dd5d73a05e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 12:28:54.9108
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WH8OYMgL6WqKx+O5eAyhAC38V7hugRHeSIkbuG65hS6aCMmBMw/Kk6A0bi3pKBilSO5HRmPPT7J/1mM4Zlx8RoHbMFNREZNA2vko4efpA3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6250

RGVhciBEVCBhbmQgYmluZGluZ3MgbWFpbnRhaW5lcnMhDQoNCkknbSBmYWNpbmcgYSBkaWxlbW1h
IHRyeWluZyB0byBwcm92aWRlIG5ldyBiaW5kaW5ncyBmb3IgYW4gaW50ZXJydXB0DQpjb250cm9s
bGVyIHdoaWNoIG9ubHkgaGFzIG9uZSBpbnRlcnJ1cHQgaW4gb25lIGNvbmZpZ3VyYXRpb24uIEl0
IG11c3QNCmJlIG1vZGVsbGVkIGluIHRoZSBEVCBiZWNhdXNlIGl0cyBkcml2ZXIgaGFzIHRvIGFj
a25vd2xlZGdlIHRoZSBJUlENCnJlcXVlc3QgaW4gSFcsIGJ1dCBvdGhlcndpc2UgdGhlcmUgaXMg
bm8gaW5mb3JtYXRpb24gcmVxdWlyZWQgdG8NCnNlbGVjdCBvciBjb25maWd1cmUgdGhpcyBzaW5n
bGUgaW50ZXJydXB0Lg0KDQpMb2dpY2FsbHkgdGhpbmtpbmcgdGhlIGFib3ZlIHdvdWxkIG1lYW4g
I2ludGVycnVwdC1jZWxscyA9IDwwPiBpbiB0aGlzDQppbnRlcnJ1cHQtY29udHJvbGxlciBub2Rl
Lg0KDQpBbmQgZXhjZXB0IGFsbCB0aGUgaGVsbCBicmVha3MgbG9vc2UgaW4gdGhlIGRyaXZlcnMv
b2YvaXJxLmMgSSBzZWUNCm5vIG90aGVyIGlzc3VlcyB3aXRoIHRoaXMuDQoNCkRvIHlvdSBzZWUg
dGhpcyBhcyBkZWZpbml0ZWx5IGlsbGVnYWwgY29tYmluYXRpb24/IChBc2lkZSBvZiB0aGUNCnR3
byBhbHJlYWR5IGV4aXN0aW5nIGV4YW1wbGVzIGluIGJvdGggYXJjaC8uLi4vKi5kdHMgYW5kIGlu
IGJpbmRpbmdzLA0Kb25lIG1hcmtlZCBhcyAid2lsbCBub3QgYmUgYW4gaXJxIHBhcmVudCIgYW5k
IGFub3RoZXIgZXhhbXBsZSBiZWluZw0KYW4gTVNJIGNvbnRyb2xsZXIsIHByb2JhYmx5IHRha2lu
ZyBvdGhlciBjb2RlIHBhdGhzLg0KDQotLSANCkFsZXhhbmRlciBTdmVyZGxpbg0KU2llbWVucyBB
Rw0Kd3d3LnNpZW1lbnMuY29tDQo=

