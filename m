Return-Path: <devicetree+bounces-119686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6883B9BFA13
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 00:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA2E9B227DB
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 23:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35CE20D505;
	Wed,  6 Nov 2024 23:28:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SE2P216CU007.outbound.protection.outlook.com (mail-koreacentralazon11021140.outbound.protection.outlook.com [40.107.42.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6BA1DDA3B;
	Wed,  6 Nov 2024 23:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.42.140
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730935731; cv=fail; b=fVEnBbalGi+vZyW5+UAEOpkGV1tRpGbQsWxhp341dtvOskQxuJBGgoocDaPAJmfcmTksNZpM8hWMLOoeu1YshvW7Ofxxy6aTmeFSY7qj3sIWtYDZbNb+s+XKZAM4QnB0rHZqsp6EfjQMJ3Qgcl9NWAfJk0kemz1sifQj4Mmb5bw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730935731; c=relaxed/simple;
	bh=R0BwGhi7XCYMPQmcuXILGQWQLED0StT4gO4ViZumGqk=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=l4QYA8G4FzSCr41/b9VsDPv5rfp/KWD7k0pfhITRhN88hSs+9mpVYtmGyI235XXRr2EcsgpvYyuEs3c+PGVDgKOVwe3XI4vSF5R4bc82A843/uzPbkAzAVkin3sAcr3NBj/pbWFf8Sz7RidlVtW7Bf/PO1f7paijFu/A7mUBPJM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.42.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJ+7KmxwNZzAGVaewnB+sWb/dWcim8OS9w333M8a8uUkbhMeMwR4h1dDu2M8SMJrvrGEaKFoGd+YYYKwP8eWVqbUHdFzTZFzDqomMGQH55C5ELkB84hfzljPPNCEmssYFV47qTRgkQP4GxsOpz6mh911x8P2N1ONHGVXMZfPoeGZHNJO/WrbD8GdMvyV6ph+N6OXtnO4zfOI47UCOyKxQe9M8Xk2eX87Qm63Dz3hkkOsTcdd8gXaaBos0/HbAKSfnhvf2nin1DMYe3zKcGXK3ypkwC2WDGuXifadNJAPvVBNeoQtgVDtnXaxYNCNx55OVwfiLNXEgYaZ0LgJ9HZwXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ljl3FVh38/1+WZeIFgBvlNzaw8YSDTmQ5FGV21O+XxQ=;
 b=iNROmJOBic/jezsXwbdTGiLfDWISbMXayArOfVNYCEJzYCpfRQpmd6yd9vegH+0P9isJEGRiPubBoO6VMFsi5mG4Z1KB5rYMiZjrQHjlfWkoozuNpI0iatnJkiG7+0CQ2c4BBoNvpCxL8X3f1KuwejOcJQpQr3JSYcz7mjQ4vjAghiIMHPv1QctX54dxTMLWegQKQ0G+06/0RIw3deYfszuFzdhpKoeVE4DARgr+s0trInpBc6K5G9N129A+97GLUwCwy5FYlE19DrnTyzS0RbipXk7zARinHPHkLwxVdFupwX8SjQjxLwTghK+WOgvfy99pqfWnxu6fpEaKLMpORQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by PS2P216MB1362.KORP216.PROD.OUTLOOK.COM (2603:1096:301:98::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 23:28:45 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%4]) with mapi id 15.20.8137.019; Wed, 6 Nov 2024
 23:28:45 +0000
From: Ki-Seok Jo <kiseok.jo@irondevice.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>, "linux-sound@vger.kernel.org"
	<linux-sound@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH RESEND v4 1/2] ASoC: dt-bindings: irondevice,sma1307: Add
 initial DT
Thread-Topic: [PATCH RESEND v4 1/2] ASoC: dt-bindings: irondevice,sma1307: Add
 initial DT
Thread-Index: AQHbL+b3Gc9YYoMB10u4vuruzKg5CLKqRzyAgAACy4CAAJ0+MA==
Date: Wed, 6 Nov 2024 23:28:45 +0000
Message-ID:
 <SL2P216MB2337334118683779C2FEABDB8C532@SL2P216MB2337.KORP216.PROD.OUTLOOK.COM>
References: <20241106005800.7520-1-kiseok.jo@irondevice.com>
 <20241106005800.7520-2-kiseok.jo@irondevice.com>
 <kspk7qajv7r5glbcawmecbup36cv4wi3hjrgyfyyejjectwwt5@u5nx5y5zirsa>
 <092cfb04-378f-4997-88e0-35c247b8c445@sirena.org.uk>
In-Reply-To: <092cfb04-378f-4997-88e0-35c247b8c445@sirena.org.uk>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SL2P216MB2337:EE_|PS2P216MB1362:EE_
x-ms-office365-filtering-correlation-id: 8aa63633-259d-4471-c371-08dcfebac230
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|7416014|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?N5+20vstWWnP2IZT2CAEiQbgyOJ4C7CE0pk9CNTPcOE75AHYHJrwHGxgNMRs?=
 =?us-ascii?Q?Wt/gi4C4Wkw14ZM6pSKqKLguFqeUiizz0PVKngTf9O2F+f50jWbTmMItCgeX?=
 =?us-ascii?Q?xEyhwasubiKBqC3zjHYa6AvfkQUMMAFVl9aCDOW6ZyMT9fRQzxALyy+ZKEm5?=
 =?us-ascii?Q?00mEvyDVgwLHxuUj8Fbzzq+G8oBE0upLrE9HdsChk0aJJxrfbu3f4n4eIod7?=
 =?us-ascii?Q?VxCcRNjYcfJZu783VE6XBF6d/4dF5pqcooG1bpbS1clR98Q5Eu4y8Yx3yh79?=
 =?us-ascii?Q?GnsAWGYlsgdqR2lSFNk64M41BrQhgiHcMYi5rXDusxwLUaUAZk0C7B+u5zTX?=
 =?us-ascii?Q?/fX/8lTNsEcVXPTAyifXIvJJJhp7iVCNt0qOSlxqE2I6ARjqw+e4G6tZD6qp?=
 =?us-ascii?Q?LFUmHIjtxRkeOws7GS0M1cWvl/XPpvSkz8xdGzzwtfx6MyLWB19YL51HvhrG?=
 =?us-ascii?Q?JVpemVcdRFdKoq71+2u8E9T7tPKnNGxJeMxz7FFlZKa1nVzxUffk7DWitieG?=
 =?us-ascii?Q?Xt13KPGAbSNKQUeZRuj5kph1f3oDqx/OFc+UL8K4ggphQ+HaKZRfOs89PXqK?=
 =?us-ascii?Q?I3ck6oph39boBWTk4rWzhIlNL/sBYN20KsQ7pCyUgs8Y4Zj49IxnItU02g61?=
 =?us-ascii?Q?JnXB6YSPfu2AqAeCmRax08ndv+8eJdWaPBde5EbqSTZNSUgSCieiB/1fPxqb?=
 =?us-ascii?Q?8yezryBi0fFw5KW6BXuEGpQInTcZNgcgwyLM1bkr8bb4AomBNPUfU3BsNwJ/?=
 =?us-ascii?Q?lHjsnyoG0Dlh5kEFbIYG7ln+lkD06dzpgQk5XYI6czJjDD+e2X9PlNftACM6?=
 =?us-ascii?Q?M0nvelA3eAVq4awmZXE8K9vDk05hetcLZagZmiQd7g1+7FAqoKtU+9fa5wvI?=
 =?us-ascii?Q?lLPBNeSq2bWLTKt9X9XdXQ6vvNaV3EHGrHmDL6P/HJwnnvdpcV1fn23cG3t+?=
 =?us-ascii?Q?fJQHLIPeRU55EsIEaNnh0REPi0jKxoW7WK67Drd0TmfV/DLys7Z92tw/c83b?=
 =?us-ascii?Q?5/EME1tmYFVrJWEOu/uG4ZO11FIitDR5Vlq4nZCewVGHvmEAs6+SkBaQdlmG?=
 =?us-ascii?Q?4bx7epa84y3xxdlYdeyYTqQyYDE+1fJbBDawzgIvrEnlbPGQit2SDImV9wlU?=
 =?us-ascii?Q?BpbxVmPGod8ElmXmozMHMdWdzal+ttDMWLXLK7c9UX6MmMF+/BemcFkPDF1T?=
 =?us-ascii?Q?AptgCm2255lWA+jIs5FTAYHKPGzgcjT0W6w24GEQFSdUquKc7ERysyRV1TZd?=
 =?us-ascii?Q?VMOw/OocF6cJHkRGT+cENf4FSHlz0ZGDNQPffCYEJQRWkNOqpNE0lxgSrtPp?=
 =?us-ascii?Q?IQ61tluCi9VeDnWRGv+/oa5zQpf3apC9m+RoBkYtUdZJBqgbY5XJQ/JOA4Um?=
 =?us-ascii?Q?RXE5TOLHi8aZoGDQT+I3KsyVb1nd?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?2f7oT6dNHHXvRWaMfuQZyPqtTJNGTCjMv/YUlU8AOro/53vqVZ388K0OnZMQ?=
 =?us-ascii?Q?EKRljnTQXaMFRnqAmiPa7TTyThCrfeDjRJ1NdVj77MxLj/dagF2H9bf0kSqi?=
 =?us-ascii?Q?hTsQYGor8KVdnAF11hJvHIvIz97tuQWaLTNfSjzzY8cU9LX/MdlgmdKkdTR1?=
 =?us-ascii?Q?AKw8dCBb6midPA36mTwL+7bRdr97UabpCh+xssSwfd0hUzeW8quCqYz3musz?=
 =?us-ascii?Q?jysfUU9XXD6cltcvr7oLchYtvQcvJAUR9VF8sz/yvta0dIHiN/aEbpOYjf/+?=
 =?us-ascii?Q?56SMM+5QezNHomQDTBY9ULVEzG/Nh0P6P4I1kaVMOqqd3zoTK6ipgGp7kuEf?=
 =?us-ascii?Q?mPXl4oCP10438WIaMwghkCkAtaxrRNyYeXz4xoJVcd8ojqmKk1iQglQNGXJY?=
 =?us-ascii?Q?uV68c/eQAGZx4AdLceIge0yNQmNk+TahSdfWDRMtmBZVfP45HVA2xeEbBdGd?=
 =?us-ascii?Q?8c/xXgTzCjpZL7E4DbAWhoNVArDPiyiXlQZs1oKnmJgevPAefFhntMbSSpUB?=
 =?us-ascii?Q?F0Oi8GdMK6f4zF/PVeYc8K1Pur46j0dwpbebbCD21ptZl6sC0RJmeItkQg5A?=
 =?us-ascii?Q?bWyMRmPUERyZMGHgDT2s8xJX+oKZKfJJNpP9kZcXlBaTCqKh5M9S10S/p4bR?=
 =?us-ascii?Q?0apozksiSuVxjjmvrDcUMkoT25fufKQJ1liqwp6ASVy6fXz/35KYXJOXhH8R?=
 =?us-ascii?Q?7+YE1dudTrQQ4qOrJiPnZ8hFj6iaQ8Oe98itBwemgWu8A4lKeJ0X7CM7PetE?=
 =?us-ascii?Q?DJd4hZYYAaQPkX2KVaUbWt+v9KuhwGxsN5wJwkft3E2m63dWCOZEGtFPXD8y?=
 =?us-ascii?Q?rUjFlAQP/pbMujGUJ40WM4f6py+JfDwX3M8o4fgNhcXaN9ANeZD98nbBXYzH?=
 =?us-ascii?Q?u2BqZdftzhsQodof053tTrVE/m4fdboRzUT4L+4ce9x0skNs7fHj/rjnPPRj?=
 =?us-ascii?Q?f/3erCHaF+/d+eZCl36OQi9q7kxZTI30froMZXYFUDLGSTujJ7wVaBvPrRwA?=
 =?us-ascii?Q?QmFhwKA3xixCr0eoqje7Oa4apHA5t9mmkMkvp3KXco2eBpy6kDqg+Lli63Qq?=
 =?us-ascii?Q?2CE92Wm/hM8w8VIBZYZiJZYsXXYHwi70LMobW7i/yPMujXvVPltTX6EXDnks?=
 =?us-ascii?Q?ki4LFEtquPCbOQzhtHRK9CzAOj42wKjOXczl+wuI9iyIVE+G74M6VhzqasQM?=
 =?us-ascii?Q?G8kNWrRIQ+1pesuDoZixhJ+6QXYoDfN58nAaglVqKrQEjdxDyzhduM+0bGHy?=
 =?us-ascii?Q?hQrvAYVPpsWxu7bMHLbDdZHCqAfjX1D0EUiNhsoWkYaBGItkANjKWHmanypC?=
 =?us-ascii?Q?tYXM05obW7t5Hri7CulIWnJzsxZZw/lma9mzSTeqijeu2qFcq6qMTxfAXewV?=
 =?us-ascii?Q?fEM9fx2D7U4vlgIAsYdbx+QrdqsqarpRWt4DBgbK6l2p0G4xpshIPDWxUnP7?=
 =?us-ascii?Q?ZwdUdLFd86XbKuXINxvomvDc1AT+aSYm3rmO6ji2QktPkmvZEHtZwxzkeG2c?=
 =?us-ascii?Q?KVSxtUsfPSSu3pLgGH6ULKGd+9hKnrj7fdYkYdByM0osfkreKFxMaJ+lw0L/?=
 =?us-ascii?Q?xfYuEOhvMG1SYQU28vbFtZbuy/7R0k4NFK9NKpLZ?=
Content-Type: multipart/mixed;
	boundary="_002_SL2P216MB2337334118683779C2FEABDB8C532SL2P216MB2337KORP_"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa63633-259d-4471-c371-08dcfebac230
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 23:28:45.4964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sxd1vydVYpMmficDRfq4VZV/6BTZvxgtGG3QvC3ecepW7x/yHknjRgEFW0ATi+V5A8McNL/mfWLaeV2nNhsZHbkquWu25aV+3UnWQxqO2oY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2P216MB1362

--_002_SL2P216MB2337334118683779C2FEABDB8C532SL2P216MB2337KORP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


>=20
> On Wed, Nov 06, 2024 at 02:55:21PM +0100, Krzysztof Kozlowski wrote:
> > On Wed, Nov 06, 2024 at 09:57:59AM +0900, Kiseok Jo wrote:
> > > This adds the schema binding for the Iron Device SMA1307 Amp
>=20
> > That's a v5. RESEND means you send exactly the same or the same plus
> > tags.
>=20
> No, this is actually a resend - he's resending the v4 that you replied to=
 just
> before this one which was sent with mangled subject lines and missing
> changelogs.

Oh, I'm sorry, that was my mistake.
I realized the error and send it again using a script, but I accidentally l=
eft out the changelogs.
I'll resend it with the changelogs added this time.
Since there are no changes, I'll simply resend it without additional modifi=
cations.

Thank you for reviewing and providing feedback.

Best regards,
Kiseok Jo

--_002_SL2P216MB2337334118683779C2FEABDB8C532SL2P216MB2337KORP_
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: signature.asc
Content-Disposition: attachment; filename="signature.asc"; size=499;
	creation-date="Wed, 06 Nov 2024 23:28:45 GMT";
	modification-date="Wed, 06 Nov 2024 23:28:45 GMT"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0KaVFFekJBQUJDZ0FkRmlFRXJlWm9xbWRY
R0xXZjRwL3FKTmFMY2wxVWg5QUZBbWNyZDZBQUNna1FKTmFMY2wxVQ0KaDlBOUVRZitJTVpuY3Fz
eHlwWkwrRE5IWkxWaWJSbW5KendVUTNFME1XQnJYMWpVeGV1MVhZQzFGWUxZOG9leg0KdDFUWVRz
QmtZdytkYlp0MUlhN00zUGtFQW80S3hjQVkvbkZyL3dVald0N1JZUnBOVUVpMUZjcDhxTkNSdW1u
eA0KeVBwYW5HMXh4UGdEeDBoSjkvbFFvM3g3ODFkY0VPankyd1pRanl4WWlpSmRoU05GYlh4cHhT
Vm9TY0c5eGhYbw0KMU1aaXNSRFMyd1VFcU9SRDNFK2VqY0RyOVNjNmZuRXIwZnNoSHpmSzVkbFJl
R2pEQWpNdzVzVGZkN3d3NzNtVQ0KSUM2M0tuTnZ0ak1TSkVkTGxUU1laUkg3TC9IeDRjZ0RFNUpZ
RHJBV0NneWJpYmE5TXh3RFBvbGhHTkl3NDJFdQ0KMWlidmJBaE5uQUxRRVZNdjYxTnlrZTQ2L1g2
MHV3PT0NCj1DOVNPDQotLS0tLUVORCBQR1AgU0lHTkFUVVJFLS0tLS0NCg==

--_002_SL2P216MB2337334118683779C2FEABDB8C532SL2P216MB2337KORP_--

