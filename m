Return-Path: <devicetree+bounces-84727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC0A92D4C1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24DFC1F213C4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA665194098;
	Wed, 10 Jul 2024 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b="I+7+ql8u"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2094.outbound.protection.outlook.com [40.107.22.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4B518787A
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720624464; cv=fail; b=BIHshYo18JVLQIznc6aJMEIG0ATq239NDzUjUJ7r3puJmnjplEL7VZsaSP0m9gkmrb3zqigS6jiuSyBbqoIrKAt99Ml2wr7j5DRtWjsBT3N4hM95A6PQbJez3TutvRyOpPdHJ9whFU5orO+OBoZMZvSaPrnH0+BKiEH/LQ4ZfcA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720624464; c=relaxed/simple;
	bh=miXTalrahyyzsLHzNY2+X/YQGVCKsW1MxL7Lmz8m7V4=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=TV1kJPsF8IhBHlBD6FBxVbcsq2z/xMxgERV6iUJ3bAk7GRYkrWx+CHKlupkulk/kg+HM53Lk8Gog9dKq2c93xwLdPaQ+Sb09WV/esO/cWvweN4wCLKhgvDRVNrUxZV5QGy9XNmmS0q00zWBqD/9lfclyz1x8udnvu1CFTkIlJKU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=pass smtp.mailfrom=pironex.com; dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b=I+7+ql8u; arc=fail smtp.client-ip=40.107.22.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pironex.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQsTC1D8TfeaSwGjO+cKbLbjOAczemPsFE1S4KmDfEFEqH+UqgH6hf5WoS18c+ymfmTdNs/q2i7ZTrq1ky4KGkSGKivIZS2sTzvrPQG3t/k5hO0js8RxbsaEf6J+grdDkSOtCW7SHKYJtSsx8oJ0FYrPwTdCWw/LZciaQ78Mp2Bke8RKavzVuZp5rcPp5GCMsRKFIJoYPDbeRlQBv8awvicMTWCwX7ebmBTGWgKK0ByEcp4Eife2KqzeJ/XW+ZX2HLrGXYjEehOxhslgMnJf0u9jitcd5PnPmc9NnbUFfnjqtObdJOgLZsdCdSDoSwt31ftOnVsNzKFUKWXi/FWBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4MBXmmZzKyTljTzsEcJiWnq3HVIoKsYYUQECCgevy0=;
 b=RP3u0vj0zTRUNns/EGmjHBw5RAmqQyKfeTmRog6HEeYzjK34L8Wmz7lBGrOQ1OSPX7uhafi8/zT2wD8WKGGZChcJwOmeAAiYz3bgS6iAQq5TxKEpqKlKUyOhA/GmQB1/G0zz76p/li/DzWVllbs2UfeR4VujxWblsWdkTrtGJ7wxM8W41YIoSwrjy80PCCy732wMk42oldi8YmE6wcfKfpy7ObXD6Bxw7eSkmxRZ09yaZHLsBbk2ZilTTduemdxoTh9E3uihqrYet4Td09goHyX52ICOmGwSoRpDJEdLGwWrKOfsJKlwqjg3Xklo6qKDRES8GnrrquGYoa/7W0C4yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4MBXmmZzKyTljTzsEcJiWnq3HVIoKsYYUQECCgevy0=;
 b=I+7+ql8uRqYwl5cG1WLNilwQ2G3YrSqOE39ixnv/XOuVktQtzKq7/ZCfaIfOKlOVnwvjGYHLnnEYjmXQockIOFtw9avOK0mi0bN24ZdXJsIhCy6zWaNJaVUq+J/FrOX8mIxyU40in1vVDlKT3ZIqodgsTAZSozlwRXUdss7qwxg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by AS2PR10MB7639.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:645::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.20; Wed, 10 Jul
 2024 15:14:18 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%3]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 15:14:18 +0000
Message-ID: <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Date: Wed, 10 Jul 2024 17:14:17 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM0PR02CA0212.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::19) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|AS2PR10MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e3b48b7-deb9-4005-df4f-08dca0f2f805
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UUNtWHo1ZEQ0cEVmdGpCc1AzMW9sL0pMeVJuVjdrY0Zlakw3eXRWdmZCYUwx?=
 =?utf-8?B?dXBaaWhUNURIVFJiZDAvMEZ6bUZxcnpQTHVlbFVxM0hSNS8wL2ZEdVFoZytI?=
 =?utf-8?B?RFd5ZlQ3YTZCd3Z0a1FPTXE0S3c5SVp6TW8rV1JiYTgwTG9qN0U0RVdCZnBU?=
 =?utf-8?B?dE5Ka0FhNk9VT1lZZXUyU2ppaXFxNkt1MlJkZG04RmFyL29RQWRIS09mLzNT?=
 =?utf-8?B?YnBwTDNmQzhBSmlmQ3pCaVRnVmdES0NFR3l3YjEyYVdIekNvLzcxV2o4QWkr?=
 =?utf-8?B?enlMVUlhNnIvaUhkSjlaVTZSbWpsWnNiSkwzTkViYVkyWklCTnFjNjBnK1B6?=
 =?utf-8?B?V092V3VETkw2c29HSE9UdXFCd0E3K1dNbXRvaHFwS3cyZ2RCNlhveWJ4aXdY?=
 =?utf-8?B?bU1oaUxwWE5sODdsN2ROL0xseFRKcmg1Z29aOWdSZGVZVlI4Q2I3S29XbFlH?=
 =?utf-8?B?Ukk2dk1aVm1IMjBQNkZyS0cxSFo1UUZmY1Y1c0d3aW5EanNJMzBvalpmTFRD?=
 =?utf-8?B?dmJsY3BJTHNIUk1uZzRnVDRqTEdxM2tOL3JldWR2Z0xyOWZTbXkvOGFQMkht?=
 =?utf-8?B?YnhnMFZDRlluV1pvYWhQR3RHdUtxMy9vU2xSOXBxSGVXWkdlZWFKZ3Vzb1dy?=
 =?utf-8?B?alZ1Z0prbGNBTXVCamZ1Z3N2RGlxSkRob2t0YUN5VFdTZUxGNVA2K2EvaXlp?=
 =?utf-8?B?QWpZdjZMMWx2TW5yRGVRZHg3aCtBRkdiK0o2VEhBRDA1Mm41U2l0TmYrNFM3?=
 =?utf-8?B?SnVkcGs3TTJDOTRlN2tKRm9FL2Q2MFNpa2lCMFhSNHlZVkY1cHFkNlc5VWg3?=
 =?utf-8?B?K3kyQlBaZ01RcjdzbFFiOVZEN2swRzEzMWp2VW15TkYyVWIvWjA3dm1DVlNK?=
 =?utf-8?B?S0twc2xzV0JvUGRIelRLLzNoY3N5ekhaeklQdzNDdzdSdi85dE1YQWMwU1NL?=
 =?utf-8?B?dWtXRlVhSzNBQS9hbVdUMS9WMDlnekRsQVFOUnlPbHkvdEJIb0crL3NRSTdk?=
 =?utf-8?B?SFNsVTVvb3BBUS9kakdiUHEwY05iZTNlT2tyWForMHZVUXhmaXF6WnozUmxQ?=
 =?utf-8?B?YmcwU2I0VElqelhiYmlQS0dRK2lVUDlUMVlCeGUzQXJBbDFzWGdVSjZNTHVY?=
 =?utf-8?B?bnRkMWorL2EwT1psTDJoa2xxYTZHdXo2cDF5R0Fvcy9TVGNWOXR3QkhTbWp1?=
 =?utf-8?B?Ylk1VnY0MUhsL0t0N0Y2TDlRZ2V0KzVqbW1ZMU83TEdqWnJMWVFxaEhRSmNm?=
 =?utf-8?B?aVdFa3gyRDBlS0NUTkNaaFdEWUtaS2RDUXd2YWZIVGlkb2ZQS3VZYy95YzRB?=
 =?utf-8?B?T21hV0FsRDJoWUM4NFNHUmkwYk96dHhuSnBObWJodUpHWndYMGo1OGJTWHoy?=
 =?utf-8?B?UDBTUk44NjdSbTEyRmJHbHVUZUdtNjhTbnNBV2w5V3pvRlppN2JoQXl6SVhJ?=
 =?utf-8?B?VTZLcmNSTUFGZGMyYXBzK091YXZlLzc4Z1J2Yi9QSXFzVjMrOFllaDU1K24r?=
 =?utf-8?B?VmE5V2h0WVhQZG95UkJZZlVrSjVXL21rMG5MMWNpK1pZSy8xeHVJOG42T3lz?=
 =?utf-8?B?M25nMEhaZG9uMisxRDFpOHMxMi9NamRYQ3V1akI3Z0wvZU5aMEdmb2ZYZHN3?=
 =?utf-8?B?eUFJZExvOU90RXM0aXJ3MU5OanJ0cVgzTHpaY1lBamxMaUhtdVNqT3RtQURL?=
 =?utf-8?B?MkVIbW5QYlczOWFnc0lxd2F4bks3ZHA3VDEvbEllYTBtSElkQXVlaDhvcThh?=
 =?utf-8?Q?6GQ+bCm5cxEa7V+c3I=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?c1F0MjVlNjZLalN0NmxsZXpySFI0akRXRFBGYktJcnM5TlNMcGwrT1Z6SDU2?=
 =?utf-8?B?SUJsNmRLR01Wcjd1VWlJTk1lZXFiWnJHUlZVazVrWUpEUFNPSUc4NXdWUlRY?=
 =?utf-8?B?Vmd6K0xsS0hYL3diVi8xbWtvdXVDTlJhMlZZakpQbVd6SVQ2ZTdQdnpvdW5v?=
 =?utf-8?B?MGlGOGVhaWsvbjdOamkzNEZSKzd3VUxZQStRN3o5ZmQ3NXhrVFBYOFZ5NUs0?=
 =?utf-8?B?MTFWVC83S1RvcnhzdEc0UzJHQ1pOVm5SSjl3bFMvOGl4VWdEcTE5UGttampE?=
 =?utf-8?B?Z1NEbWg4b2VzYm1KdWQySWFFSXMvelkyVHBBUUtrNWZJTnV5WjVkb0k0eHlp?=
 =?utf-8?B?RlRSdEcyU0ZsZUI3N3Nqek5oWlVlYmlsQWY5ODBWS3JPVEgwa0pWeldWWVBI?=
 =?utf-8?B?b1FVMjVsUTJEY3FVa1prK2xOZmQyYkIzRlpBU3dCeUUrdVExYXVodFUxbEpM?=
 =?utf-8?B?Y2hkdlRtSm5LUi9uZVNxbVhoTkZrN2pxaFRBTk14b1pidGppTEVSNWY0c09E?=
 =?utf-8?B?eVFxS3FlSjhtdEZORS9NcWRWTit4aTVyVXkwcXk1ZG5CSE5ra3JoL0ZGbjg5?=
 =?utf-8?B?SEJDRWNFN0ZQdEtNY2RhSnJBdXdvQ2lnR29GWlhyMUs0QnV4L3JYMHRnc2RY?=
 =?utf-8?B?MXBZOW4xVmtUSWxGc3RabVYxQlZYY1ZZbEM2dEg4Z0hhZ3AwZUFRSFJDTDQy?=
 =?utf-8?B?TEhuZ3VCSEZkMEs5UW85TkRoMnZIMkJLN04vejJVc0VqS1dncVQwRVBWcWFI?=
 =?utf-8?B?ZEs4N3RYU2dmNHR2b3gzL0lGZ3pyWm8xWWRZcFQyeGhzWlJrMSs2RmFmMm9D?=
 =?utf-8?B?ZHFvSVh6ZUNaNDdmZ0pqbVBhcFNZcVRyUnFNTEFpWlhvdDBTOVVjWEJZYVlH?=
 =?utf-8?B?ejFVc1c2RFd5UTFZSVdYUkNvSWptYm5HZU84K3FlSHdtL1k5Ky9DWmo5Y1Fp?=
 =?utf-8?B?VkdLa3l6ektvaFRTQmJlMnRldUZnSVNFTU5rSmhQUVRQaXFuQUxtT2pqU2Zw?=
 =?utf-8?B?MmhwSUhBQlF5bFBGWlVaa0c1SUJlUWxKaDVGc2Y3N0o3UlBtVGhJdllleEVG?=
 =?utf-8?B?ellYNzh3TWpTR0lGbzdTejFWdjRqK0lpUHpXSm1BZnFkaWpQckdZbzRheVZr?=
 =?utf-8?B?VkVDd1FjYzROb0R2aXhFUHdQb3NwWW5ybFlmU2VSYW5Sa1JzZjlsa1RFUUpn?=
 =?utf-8?B?MTlvemVFdmsxLzZ1dWkvSHRoYTFHWERPaTJUWkxXMzIrK3BQaWdoeFU3aWxm?=
 =?utf-8?B?bFcvcUxkekxqN3dsbS9tVlZkWTVDUDF4dS94SWtrdTBqdE1DVzNWS2RSUEFq?=
 =?utf-8?B?VGtNU0gzdEJwVE1ZRXZhU0Zma0V5NkIyNlVrUEJqYXkwQS84TlJ4VDNwY2Ex?=
 =?utf-8?B?UVhEaTFqZ2w3Q0l4QTQ1U1hlWGlESlgxcnEzdGhVOGU2T3FNK1VzNWtHUkZn?=
 =?utf-8?B?U01mNnR2L0h4dTJ6MzJNQXhYTjJrUmg2SjlaajhyR2FqUWE0cTQwTzVjQVg0?=
 =?utf-8?B?SGlnU050c0tuQzRWOVVjd3NJOXRFaTFWeU1Fb2RuVmJBZzZlL0lraG5aekJJ?=
 =?utf-8?B?K0k3b0JqUGF1TktlSG1WU2tVbDJnMmhBdSs3V2tzYURQUVBGR2RFenRzRUtR?=
 =?utf-8?B?MmdDMlJEMm4wL3JTQ2JxSVRXajJDZ1o2K1lSQndSVW5xTmprckpzRXZxaThs?=
 =?utf-8?B?UHpBd0NmMVd3ajBBbFR4cU1iNUlYN01jYkw2RWFxMlNEL0VFcS9CRGxZNXQx?=
 =?utf-8?B?eVdrckh0SERJWFNISVVzVkRyS2FuaERYSW8wUHBSWGoxdHdjaXRxMmY5WHhv?=
 =?utf-8?B?UXVjT2hEZWhhRURGbTdUa04wekV0TlBueHhzWlNPY3NWa04xcGRhT1J4OTN1?=
 =?utf-8?B?OSttTHBjYWp1ay9EV1BlUWZZSnNFSlZNN3BtZGpLakJSK3VhdUdlcU5Edm9J?=
 =?utf-8?B?NWd6akJtZmVpekVCdmJpNERCMEV5bmZ5eG9sMWpMRVloU1FSeWpnUlNGM1I4?=
 =?utf-8?B?WkUwUnN2R1IwVHplSEZzbjdSU1NpenR3T0tHMlhIbGkxam5XYk9HMUpTUUU2?=
 =?utf-8?B?Y1JTMk9nYSt5RzluSFRYYVFUZjgzQStVMHNYdG5vWmorclIyRi8rSnV5RTZ3?=
 =?utf-8?B?RlVmMU1GQWI1NWdmWE1wY3hCZElUMGUzUlJoM1grZWZQL2JuOW9SNnpIN2x3?=
 =?utf-8?Q?yxh4c9y1DRS1sgVFeJzslDVpHeusOjN1O1CN+NYzgssJ?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3b48b7-deb9-4005-df4f-08dca0f2f805
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 15:14:18.4363
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8hqNDhFinUGRY68DQAL1rHymb+t1OmvSkZaDJfaHuhfVbLLOOQqIRX9ue2D6SGUm01d19z8PCRwjguml0hetGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB7639

Hi Dragan,

Am 10.07.24 um 16:56 schrieb Dragan Simic:
> Hello Philipp,
> 
> On 2024-07-10 12:20, Philipp Puschmann wrote:
>> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>>> DMA names are required by of_dma_request_slave_channel function that is
>>>> called during uart probe. So to enable DMA for uarts add the names as in
>>>> the RK3568 TRM.
>>>
>>> Setting it on channels without flow control apparently causes issues. See
>>>
>>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
>>
>> Ah is see. The only problem that i have is to enable/disable dmas by
>> having or not having
>> dma-names properties, where the latter case is followed by kernel
>> error messages. That
>> is very counterintuitive. Maybe a explicit boolean like dma-broken
>> would be better. That
>> could be set on dtsi level as default and deleted on board dts if
>> wanted. With such
>> a boolean we could also prevent the misleading "dma-names property of"
>> error message
>> and replace it with a hint that dma is disabled on purpose.
> 
> From what I've read in the prior discussions, this seems like a driver
> issue, so the driver should be fixed instead.

I would tend to disagree. The serial driver just uses the generic dma API. The error
message comes from of_dma_request_slave_channel() in drivers/dma/of-dma.c
and is called from dma_request_chan() inn drivers/dma/dmaengine.c.

The first function expects a device tree node and "dmas" and "dma-names" properties.
And "dma-names" is misused as "enable" switch and if not present (aka disabled) it
dumps "dma-names property of node X missing or empty". For me it's clear that
a clean way to disable or enable using dma via dts would be better to tell the
of_dma_request_slave_channel function that dma is disabled on purpose, so it
could return ENODEV but without printing a misleading error level message.

Regards,
Philipp
> 
>>>
>>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>>  1 file changed, 10 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..4ae40661ca6a
>>>> 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>>          clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>>          clock-names = "baudclk", "apb_pclk";
>>>>          dmas = <&dmac0 0>, <&dmac0 1>;
>>>> +        dma-names = "tx", "rx";
>>>>          pinctrl-0 = <&uart0_xfer>;
>>>>          pinctrl-names = "default";
>>>>          reg-io-width = <4>;
>>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>>          clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>>          clock-names = "baudclk", "apb_pclk";
>>>>          dmas = <&dmac0 2>, <&dmac0 3>;
>>>> +        dma-names = "tx", "rx";
>>>>          pinctrl-0 = <&uart1m0_xfer>;
>>>>          pinctrl-names = "default";
>>>>          reg-io-width = <4>;
>>>> ...
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

