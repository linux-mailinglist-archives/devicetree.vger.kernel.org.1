Return-Path: <devicetree+bounces-240639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6986AC73B93
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D13514EDEF5
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCBB33290E;
	Thu, 20 Nov 2025 11:23:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2139.outbound.protection.partner.outlook.cn [139.219.146.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF50A332908;
	Thu, 20 Nov 2025 11:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.139
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763637788; cv=fail; b=L00x4jI+4U9lY9oNeQ/Y2obu7KpczHmvhxRsxEXbLEzeuA42fGeeHSNeZVOV8/GcC4qBQ8OvCQBoi4Mlfyo9fKz6J6uX14pjB0aZEjgV+cMObc9IFCKbnkb6UmY8KEaCLiaphvzNVxUVOLzuTwqTMPM6ecm94jC0B9xp7ZVXP/c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763637788; c=relaxed/simple;
	bh=goJyT23uy9CyOp3zxvgqK9smukx6j18S65kt2TfNGak=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=XkFg+HwY1XzZramxidWxBVWZw5l6tdnoENX+f7Dxuay2SB2tveJm3l/pOdwcgKx33g/GK7a8fClvaGH7gWstQFfbT9A5xSSANXT79oplDdvjj40LOEVj4XIdMrigeAVaAHY+fqOQ4mQ0UxBqTku7qcSit8mPMn57PpehEOtXyJM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GEDJ1LdNAQQcND8YvQvnQCNfXlIKev02OmAMXRJZ8WQtYvNIBe8iE/4XknhyGQnxcEGqQlJ85h42Zl0s4jSvrnunJzTsbMsrA6QIeeKBb/NjF0LSwSw4fSgJg231DG7jfhD9kk16EIpUwKaTqUn+zkPI4LFTK8PKQ+N6zGI5tDdqsiDfMFYGPkpPXdPitpCAg1Rw0qnoOEfrssw1MLY27FEYuVl4L//iI65H/C8KW6C0YvYH0LknPDaCe/g1sczLs6TGz1DxsaNxU0xaNk0AawR/PFJkmUkivpCPCSpxMK06oX46j5zwDRX6sz/8lqI1QmLLH6i9uOGqxqDov9vhUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FwjC6cTOLDkkfd2F864fhpJfdfSrMZR85UFKLMejEo=;
 b=dS7CZfepeHt4HA2+zopy7ZL1Dg4ghA7TktW7q09VoCizY1ZD+9/L2T0pK2NVQAIg8uNTI5Ntrlg4DngIF94FUcBYsHUVs2FdwkkgWQehc4j1mShDIcOBtw5fOzh7e4MztE6fzJI75p+NSFMIaKyi/DFNCn/TpqMHxd4Qii9XMjxnj6VdbxcNPYMqbQQHlz4B3ZMEcD8UrBTlWA9ECUoVHUhY9OduU4XCwRX2m7w2+eSNIqs1VTz/yCeo1gl6qRUOIwsQ7aSdn3v8SapOrLNycVF0KP2PRu2P0L8W9CU/O6xq6yjmObPCFa+ARN7frgtAPOr24wuosYd6kEHq6maqPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1241.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:6::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Thu, 20 Nov
 2025 02:47:48 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 02:47:48 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Conor Dooley <conor@kernel.org>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>
CC: E Shattow <e@freeshell.de>, Albert Ou <aou@eecs.berkeley.edu>, Bjorn
 Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, Heinrich
 Schuchardt <heinrich.schuchardt@canonical.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, =?iso-8859-2?Q?Krzysztof_Wilczy=F1ski?=
	<kwilczynski@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, Rob
 Herring <robh@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
Thread-Topic: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
Thread-Index:
 AQHcT8yr76WB0y2LYU6wjdN+ecXGd7TvGAmAgADiXSCAAHpnAIAATH0AgAM44ACAAnXysIABCekAgABDeoCAAWPeAIAA74wAgAC+CICAAB704A==
Date: Thu, 20 Nov 2025 02:47:48 +0000
Message-ID:
 <ZQ2PR01MB13071209BB1472382BF51A0EE6D42@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References:
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
 <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
 <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
 <ZQ2PR01MB13075CDDEFC2F03C837E1B31E6C92@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <b33919e9-e100-4629-92cb-d1ec3dd756a7@freeshell.de>
 <ZQ2PR01MB1307DADE17FFEFCE70C3F391E6D62@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20251118-throwing-marina-14a87d65465a@spud>
 <CAJM55Z-MfpVX3EuQ_AjvDSk6FwR51R5cQdN5RybS9pbJ8r9NNg@mail.gmail.com>
 <20251120-ambiguity-obsessive-b4ebf225d293@spud>
In-Reply-To: <20251120-ambiguity-obsessive-b4ebf225d293@spud>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1241:EE_
x-ms-office365-filtering-correlation-id: 350faea7-c2a5-47aa-d636-08de27df30e2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|41320700013|1800799024|366016|7416014|38070700021;
x-microsoft-antispam-message-info:
 rfh5660y4Mv6EUJzQcWMXN3uNSwLDvFd+Qv79veJm/81KQ5ISVdRQBA6D5SN5ABBIoo+sGG9gYW9C43eL3TQnILE/D3Rhv9cqJNIHYUz2QTENvEVYCL+JjR8W0v/sbsAjktTmZzf6ho9plC4cDT5bDyzXY8D/dYqjkip3TV0F3mkHvkUOXy55lPWeQsH/NWzRVSvbXRg6y++XokxpP1gtHXXjLakC3okWixRU5mcTINbRdM2UNJS+h4LoLqUGKAdewW5nQclGGyCSwm4pyj2oVjfgMaItqfe3j3KoCa/U3TLsQ7dzmHeFi61ZTw2y19z3+48WDxrR6IE2pq3huXoD3MJJkBOmujhjvjSY2Sftn1nuHCq/WB9hO4qaCXHwYOzo4OsSP+hREyzNoVIHyjKVmcAR4cItKG+6QLbSjlX705KsLSzGLf5nPx18RXaX97QMGytcbzbpMIE3svBldxMERTUxaBU5WB5Li/FF/fpatWTxoASqwH3LyWrgiSQ2JiDiOedFzwLWgG2MF2emPdmPFt+92bhRwvv4ChKsVlL0lU3svj7artXAqNizW1UcQ1QG1dZJi5Cm2nmTN7ZLA5Aopd09PHZ+q+dcdD4a4+2fh4=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(7416014)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-2?Q?Xat9kOU/Je7PC+/g5cX2QSBjZ20RUlAgCZvnRMbkdIw2bWWfh5LzHQfGlu?=
 =?iso-8859-2?Q?SdcJ+aXhTMfBhbTTlTrjB+H3fuEjmzHFJA6M53lU8Pl95vduJntJVAqe3S?=
 =?iso-8859-2?Q?cX3CfRi8x/Y+hOYIEDJ6PMv1HX+rSHMjlnrfBTJFINEiCXwV4X9OLIN90S?=
 =?iso-8859-2?Q?B8KZ3Ba80lzAm26YO6T6ZUL2F1/kr/l65T8V2QWgqtOTueRr6wQIhpF6ZX?=
 =?iso-8859-2?Q?Vs1pyOgW169d1bhOXUcmGREPR9Ln/WgFDhcccKodM9HbBi+jP+vbARIT34?=
 =?iso-8859-2?Q?+PH8q/dYV+tTwImkVnBCSjvhBnfrd/j7ed5yJifDc5LfK/lqtHWsYbrcXj?=
 =?iso-8859-2?Q?SVBm4vE/4bx5Vlgq1B41JaHq1GRu8MQ3ANgEo9ePKBOdSW3kfrhqX90Mwf?=
 =?iso-8859-2?Q?fnJ9tRPPsJ0xXc7dRFryThsoeWU2xGw5qAvF1URQ9Tuwd1c/8uplftOQo/?=
 =?iso-8859-2?Q?f8N+EWoUIgX3I17rzdlRtEOwBzlpxu/G3iMCy53f/ai7y6JZ6DWSxvYLXq?=
 =?iso-8859-2?Q?6vUQrHfrk6/Qw/LSh5Lip/LUWP4daLFG4YO9sSwo5bfIZ5V5qMbbvpbHN7?=
 =?iso-8859-2?Q?v5d+2EjLvuCBNYZJLu7D5MrZT682eVgrwBEN+XheWqbGqFOOwzymplxFvR?=
 =?iso-8859-2?Q?ceepbuNbu0sdc2uDRmUNL1+PxF3Xnyj265xVaFlXZGbv7v4tJR2l44WuKv?=
 =?iso-8859-2?Q?GMGxo8LBu324O0VRuuIwJgIUNRWWYlGlLCtnmAX9xXXvxDFmYDoLpgHqsb?=
 =?iso-8859-2?Q?JnLLM1ylgQL+2nh6o6EbhqVmLXew1Gz7x5MjW+pE1SDqJ3L7NcvjlL49Al?=
 =?iso-8859-2?Q?9qTJiIAJIiPmpWMJrrMp2XQXxK1qJ6scqVQWWLPQUh8pibiz9AFu5lATga?=
 =?iso-8859-2?Q?5fXa8mEqfFORkiTYnE11pBRyzLlr1SXw3eW8kFBFg76idwsgiA7uEaTyM6?=
 =?iso-8859-2?Q?IsyJh3BIGajA3lGi9/vVPo8viVYZKFTAAwndZiNQJ19Q/1yZdKNCAuFM5q?=
 =?iso-8859-2?Q?kr3VRgUfI7520nnOVcSvmEgiiDTUqH9BYMtUGgdJtyicpu2icX7js/azdb?=
 =?iso-8859-2?Q?u/kWsHxK0D4FA+omn/NeE5Nn8wgpQ9Hk0zohub0DLNwlJtYbCx4tINrZZo?=
 =?iso-8859-2?Q?fad4g1BF+vSMFp7mjpI0D9qL6P8jId8mCi00PS7LPaYqkN0+daXGPBWy24?=
 =?iso-8859-2?Q?pubqBUV/KOARXGAQkYxt/GYy2wk9dsSSrQUYKfwHTG/uIzta5fOnTn6T0A?=
 =?iso-8859-2?Q?RBbJUjhevYcwOZeoU5+l1yATL1/UPlpUP1D77xhRl+UIBYWaqWRX1agA9+?=
 =?iso-8859-2?Q?MABsWYBH5TyriOio5pRraspfUhfXAX3My0gkhgM+J8wKFDzoLYcmQuxzj0?=
 =?iso-8859-2?Q?LC2FYZmg1ZtPfM3uK5hHv3KQMiyU/ZvxUux+vd8TMBfqXAeX7chEvcCLDZ?=
 =?iso-8859-2?Q?ORxTAwlPSVNLSrGsrVZsMqUNiZ/2Um7wTu2wlqRSYETDWDyiM1so3+OwHL?=
 =?iso-8859-2?Q?Eq93EmdewCRDGKtuOgVNuAC9setXuRQ5tjpmNO7AP+IxzUu87Z09x6UffH?=
 =?iso-8859-2?Q?jCtHcTjpM9lZsMPw6B2gXU3CadB1BHtpMuEiO+7fywvsg3L2+YnLoARCaU?=
 =?iso-8859-2?Q?tKO39km1CNQFOuWOuNPvrwSvBo40R3DrJK?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 350faea7-c2a5-47aa-d636-08de27df30e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 02:47:48.4290
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5R5/rvBpF2ZfdhUNvf/d3Gvt9841oUvlBN1hkuX7oF4aKRPAzYLxGMW8NtdspimkyOKnP2+MF8PC3j6tXimLZxpxjtSX350LLdQu+qw2GN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1241

> On 20.11.25 08:48, Conor Dooley wrote:
> On Wed, Nov 19, 2025 at 05:27:30AM -0800, Emil Renner Berthing wrote:
> > Quoting Conor Dooley (2025-11-19 00:10:08)
> > > On Tue, Nov 18, 2025 at 02:12:58AM +0000, Hal Feng wrote:
> > > > > All,
> > > > >
> > > > > I repeat that the suggestion was made months ago (by Hal) to
> > > > > split out the OPP tables per-board from the period of time when
> > > > > I was complaining about 1.5GHz JH-7110 operation pushing TDP
> > > > > into over-temperature thermal limit on Milk-V Mars CM SoM.
> > > > >
> > > > > Whether or not JH7110S is a new compatible should follow
> > > > > precedence in Linux development. JH-7110S is evidently the same
> > > > > tape-out as JH-7110 and however you deal with that in Linux is
> > > > > the appropriate way to deal with that here. Selection of OPP
> > > > > table for correct operation will be determined by bootloader,
> > > > > where, it is demonstrated by patch series sent to U-Boot
> > > > > upstream to be selected ** per-board ** based on EEPROM content
> > > > > as if it was any other JH-7110 board deciding dts based on
> > > > > EEPROM content. Given that it is the same tape-out I do not find
> > > > > a valid justification for a new compatible in the stack of adjace=
nt
> software besides going along with some kind of marketing-driven answer
> about whether or not this is a new SoC.
> > > > >
> > > > > What I care about now is that the VisionFive 2 Lite series is in
> > > > > good enough shape and there's a possibility to act on this
> > > > > months-old suggestion to split out the OPP tables which as we
> > > > > have confirmed the JH7110S is the same SoC as
> > > > > JH7110 it makes a lot of sense to do.
> > > > >
> > > > > How is it supposed to work for binned silicon in Linux?
> > > >
> > > > Hi, Conor,  Emil,
> > > >
> > > > What do you think about this? Hope to hear from you.
> > >
> > > Can someone just give me a yes/no question out of this thread? I'm
> > > not really immediately sure what's being asked of me. What exactly
> > > do you want to do with the opp-tables? "Split out" isn't super
> > > clear. Does that mean into board files? I am guessing it does, since
> > > you're saying that a particular board cannot support the 1.5 GHz
> > > mode. It's not unusual though to use delete node for unsupported
> > > opp-table entries, could that be done instead?
> >
> > Yes, as far as I can tell we should be able to just add the board
> > description like this:
> >
> >  jh7110.dtsi               # JH7110 SoC description
> >  |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> >     |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 bo=
ards
> >     |  |- <VF2 boards>     # Final VF2 board descriptions
> >     |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> >     |  |- <Mars CM boards> # Final Mars CM board descriptions
> >     |- <other boards>      # Other JH7110 board descriptions
> > +   |- jh7110-starfive-visionfive-2-lite.dts
> >
> > and have it do
> >
> > &cpu_opp {
> >     /delete-node/ opp-375000000;
> >     /delete-node/ opp-500000000;
> >     /delete-node/ opp-750000000;
> >     /delete-node/ opp-1500000000;
> >
> >     opp-312500000 {
> >         opp-hz =3D /bits/ 64 <312500000>;
> >         opp-microvolt =3D <800000>;
> >     };
> >     opp-417000000 {
> >         opp-hz =3D /bits/ 64 <417000000>;
> >         opp-microvolt =3D <800000>;
> >     };
> >     opp-625000000 {
> >         opp-hz =3D /bits/ 64 <625000000>;
> >         opp-microvolt =3D <800000>;
> >     };
> >     opp-1250000000 {
> >         opp-hz =3D /bits/ 64 <1250000000>;
> >         opp-microvolt =3D <1000000>;
> >     };
> > };
> >
> > This seems to be the minimal amount of changes needed. I looked
> > through the latest OpenSBI and it does match "starfive,jh7110s", but
> > it treats it exactly the same as "starfive,jh7110" and Hal have not
> > really given any other reason we'd need new compatible strings.
>=20
> FWIW, chucking in the extra compatible is pretty straightforward if there=
's a
> respin to adjust to the above file layout, so can probably just go and do=
 it.
>=20
> > E: I know this doesn't split out the opp table like you suggested, but
> > I think that can come later if needed. Let's just start with the
> > minimal amount of changes to get the VF2 Lite supported.
> >
> > Hal: Do you think this could work? You might need a patch to move some
> > mmc properties out of jh7110-common.dtsi
>=20
> I'm going to consider this "Changes Requested" then, and I'll expect anot=
her
> version with the file layout above.

I will send out the new version today.

>=20
> I was starting on my 6.19 PRs today, and I remembered that I actually hav=
e
> some dts material for the second week of the merge window, so you've got =
an
> extra week out of that Hal before it'd be 6.20 content instead.

We really hope VF2 Lite can be supported in the coming v6.19.
Wish everything goes well.

Best regard,
Hal

