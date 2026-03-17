Return-Path: <devicetree+bounces-276530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJc+OI4NuWk/ngEAu9opvQ
	(envelope-from <devicetree+bounces-276530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:15:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA342A5626
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF0F1300D4F9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE44D3947BF;
	Tue, 17 Mar 2026 08:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b="Qb7mDoYS"
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023097.outbound.protection.outlook.com [40.107.44.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60C033BBD0;
	Tue, 17 Mar 2026 08:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773735299; cv=fail; b=bOw0/8GKFk7FWD6amnnhrtpNIcSQLm3T6N0CaT+10UGeOAiyWzd+77VJjip7TIeiqpxbCY+Rmmk9cDPXHvftS5/8c1tzEMeb6R1JVWMZxjfzDMM8GQJQFX8eJGLgTaWhE3Emb+N6pMtpApKeFf3Vy1QVycN3WpVA2fPvVlnvJDE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773735299; c=relaxed/simple;
	bh=j6Fwam6lPZpeKI5vsUOf8YCeLUId0TBUPHRPl98dAF8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=QMcMLSdXT2xLs1HAAiw2h+HO6u+Im5zTPGIi/Hm2zL5NZ0wH7eqndkUlIDpZD9M1+BSBW2aZW6UpDEj1RSDwNClGM4ky0GsB7UWDuJk5DV5uqhC36WghM6Fs9/4GVbgpB4qAAN3afoiygBSLI+AGPA81n1x/S0fr3NyilsJboNk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; dkim=pass (2048-bit key) header.d=aspeedtech.com header.i=@aspeedtech.com header.b=Qb7mDoYS; arc=fail smtp.client-ip=40.107.44.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VIzXDuC8pSHkOqDVinddDhuhmFsz41PiJTXhlpHPy7zOJkhYJ/EsjMN9PYgucSj0VF6Et4c4sW8LOsZcia49x7AP5bKexeGl4JmCFmGFftrvUDCpL5UKlVcD2AdTy/JoPbV+28/vm3QUOj9kq+9AsHNys0hK2mCvv5NolGwaJYp+GuBvQ6UKK3rqSnsKpMDnQNVb3GCsUya68lfZwWD2QTHb2RQA6WL1zE1SBmxBIqZyNvjPArEm6y38X7ZWkaW3muriJjsIjMUy8jlvFz+A9hn7tyFIcsISfOMSctiSOYL6mNqKTJk5rGMzqJMon0PkfrI/sxqtSMkPiL/EY4qCOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6Fwam6lPZpeKI5vsUOf8YCeLUId0TBUPHRPl98dAF8=;
 b=YC1TT2+U4DdpKF6IE0KaVgIGpCb0Vu2hQHeSMni+rKeDovelAEnw2yI7zVecVafwLjltAXpXir/21fKFp4oEx1PiSm7sy4XX1k8dT5p7DrbeQWZ94CwB/06FfYr8zCFQKjrH3jHxEb50q+yppAjH/iNXbvB8eREkUPUMGgrEAMkZrKyiyGzXJMiSEHu8oC3fT1bf/gs43hvkLw20T+5KC0anNS68jZaVJOEsom/tkFs2mTBefpwfw6xwUHyCYyvhN9MygZjC7lkxNtQG9OvhpXSsfykX8WswSWQ6bKY8nEheJYJxk0NbNF78TLUaLpuBkOURmg6BcafmgbCf/hm2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j6Fwam6lPZpeKI5vsUOf8YCeLUId0TBUPHRPl98dAF8=;
 b=Qb7mDoYSYYo17tIXKxuwZ2xLowZG/ARGbeoIhRJd4rVz+h6Gwsj7YM6iZaC8mqLUCj4GEvV2aeO1neSdiNZJRpjosP1xQvc0Ka/JIV62moNjvgfyGYlEylD5dWFSMcsBg+x/iL+FfLC82tQLUdrgtMYeBlL+bS/Jg5mtkN/4/yNHJdF6A7H5DaEhiryt40yn0U/joyLFP4TNDPDnvOk2OlEh/AdkylPKRh4VSNJjLJHyH1/CAxnVrB813Oxr2i6tvesB8QV2vQWwq8vkom194y79PyIiGBs+IlV6uv7xWy9kgMHMxhwR7p5Y5J8KwpBUDnc24Nq+emz5J4A721tlxg==
Received: from KL1PR0601MB4276.apcprd06.prod.outlook.com
 (2603:1096:820:78::12) by SG2PR06MB5285.apcprd06.prod.outlook.com
 (2603:1096:4:1dd::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.21; Tue, 17 Mar
 2026 08:14:53 +0000
Received: from KL1PR0601MB4276.apcprd06.prod.outlook.com
 ([fe80::b7f3:3c41:fd0e:e3f6]) by KL1PR0601MB4276.apcprd06.prod.outlook.com
 ([fe80::b7f3:3c41:fd0e:e3f6%5]) with mapi id 15.20.9700.024; Tue, 17 Mar 2026
 08:14:52 +0000
From: YH Chung <yh_chung@aspeedtech.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>, Arnd Bergmann
	<arnd@arndb.de>, Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Ryan Chen
	<ryan_chen@aspeedtech.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	<linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
	<openbmc@lists.ozlabs.org>, "maciej.lawniczak@intel.com"
	<maciej.lawniczak@intel.com>, Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Thread-Topic: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Thread-Index: AQHcstFOqEOl3ItXl0mr3midS8GMZLWsphAAgABXFACAA7sEAIAAT9LA
Date: Tue, 17 Mar 2026 08:14:52 +0000
Message-ID:
 <KL1PR0601MB4276ED93723F0B1F42349AD89041A@KL1PR0601MB4276.apcprd06.prod.outlook.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
	 <20260313-energy-casket-ca8adc1f1fd1@spud>
	 <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
 <c3b28ee92fa46700887d0c68b23045b2418358a7.camel@codeconstruct.com.au>
In-Reply-To:
 <c3b28ee92fa46700887d0c68b23045b2418358a7.camel@codeconstruct.com.au>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR0601MB4276:EE_|SG2PR06MB5285:EE_
x-ms-office365-filtering-correlation-id: 298ef0fc-e869-41e7-b1b0-08de83fd4432
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|1800799024|376014|7416014|42112799006|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info:
 uMkR+lRdUOFcJ1vevssQ+h0C8l3eG4RdRsnldNAmZlFHNLzfUfVXNxUniv62Q52qQMuP7T+8pWoiNYCx+YoryOhPaUtSY3NllZKBf7MANM1D17F6rldakEd+JQvABcq5LyFgR7WjS5H9QP/N2rL2gk5xfcqhRBgtwmGVslODCwJ0DsOSAhAun3pxxvHxui3zlKwpCzQbxb/Dpbv2aQOJS6XR3d1ocNMXxTij97So94vb/whrh60htCd2D+oIt2O1W5CVbbkCuB+ejqg1jS/16SCii9gUBAm7vwFdw8MTrwKn6B4nNLL4mWCROx2qsNUIyU9vTvUBUgbN7co1uFpR8iD6AGUoG8d1rsDP8HoWsdMsP8+WN+aNY/7KMNX/RBpDtyF2jwJNJ5TuDJNKNmHpBO64Q5JV6DwLD6pzvOJq2R/xxuF4+3EHPuycQEKo7D7s4fbPEPlbCQ2rDsx5eXS1de3qMTPJO4imbsBtNLv6NfS9jmnjQdtRgR/e4e1b0yxtkrCme9djPR9xCtJn+jiCc/rDjhahXSKD3f6updN7YNNEPaxsXgTiWl7wx43eVqA4DX1KqOsjnGedGNCEtJFAG0dZN+RkJcVmY6Lc3mbhfkfFpe7oToCQw1SczV+R1AfWr6XQCLSKHdKWYJbD78PbSvxL7W06n3M4frqf/K9lhM4xKUWSwBTzJOPP+yKGIFw73hJGWHIIbXOQznN1/GU7T7sTD7zTP0iLiihnO024Zup1l0xUc0TldIstljzO4Xse0hFfef5Vce4I9V0v4La5i0ZCzvQyr51zB/tdGXx21tJGP0S9zMIpLqzP6bFiQQD+
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR0601MB4276.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(42112799006)(366016)(38070700021)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?gjlh9fjSmwV804EXfLl5yMXjr8WM1mjABbFay4whW6kUtwRryhAvxjZ0NHHR?=
 =?us-ascii?Q?GkpNUYkOBzFFrrDXkV7Pu7mE691iZeytEGoNZ3Bget01j8IxyLCy/IZ1S53f?=
 =?us-ascii?Q?HwQirCZ8i03p1dchyyJt97747/aDSBdXyTGzkgIPq4vVuYf0l30AYZv1kISN?=
 =?us-ascii?Q?HhFL497YxZwJr3ZV9XUB30WPZ9JieT+TH8yCMZ7+u/X91YqvhFGyFIGeUcn0?=
 =?us-ascii?Q?tF2rV9M2tzGSomcKlNE49vL3wrtUtO/HGqbrJbA1yhdWNEAcTprS6RB1gjuU?=
 =?us-ascii?Q?uXiuZ4tHHgHh67oFQ58kTFmNXWDqKUAJT0f/gL48e+MYO7hktlQL8eZOvQ4m?=
 =?us-ascii?Q?TA5/1Lp9yx59zJ8hCuhRYOqEFgKvaXXGdoy71Y8OfZkm2p44fLTbSwAky1j8?=
 =?us-ascii?Q?Xre1v+W0aa47GJxh+58mijnBdwU2ZZnkgO/3WhO98BnmjO0WSNV2wyVB9LKH?=
 =?us-ascii?Q?2DrhtMoPhYGBiZBS95AS+/CkgUngOL1PDGPmMsY186CzihFRFQCToLXlqAy/?=
 =?us-ascii?Q?01gXB1zS8QCfbaiFxeJxTipPNNCQkH4Wqomkn5hMXSDJpGzEQTh/UZvOWzja?=
 =?us-ascii?Q?2MNPgKJppmqc9IvQRCKNBivQ4QBf7GkNwz9bElhbkLpo3/5vrz57fniG1Pn7?=
 =?us-ascii?Q?C4N8oTwDTvOC6k7D2SZLlj3tCxMy+ar9h3eD/ZekCOfOM6ayDzPru5Jg36BA?=
 =?us-ascii?Q?q4wh8nilsSju3n8uh/WjM0VIpeDnJU1gNq0FNZ52z3pGNdFsbz1O99ehPVCs?=
 =?us-ascii?Q?vb8c5STDvxhhl6vldh+xFTLuc0ambZFSgajQqRFa5G4wignuOM8wYPczNAxj?=
 =?us-ascii?Q?8TI0fCJJzRYC2rh8Z7zZ3sBCw8IcL2pDH+lopBkbRcOUhVMMfCRG15B1GtBU?=
 =?us-ascii?Q?q6VhXW8rubbDMFwp815Bv+3QPMC1Vq6XrA8uOklTkCUv/dJhwwmk7k3xpBmy?=
 =?us-ascii?Q?o6hrGi6hFRjwRHF0ado5j1XdkTmIiz9KiHrqv1hHILn/6ZKsJJrYFllL9ElX?=
 =?us-ascii?Q?e59YuJdQG/uKeG0Lsc6ZkO8Uynr1yawo9d8YA1qu3nYx6GWkOVpAkFK1hTR3?=
 =?us-ascii?Q?lViH6k2dHNXJhA6Ni2aCumNmlsM6KOQpukMmIceIu+2fofFZtnS4vQvB2iwb?=
 =?us-ascii?Q?9PIhbqwDcaf5+N1TgwtWXow6YbAfJFjgZRJyQIrG5vrxBbxlUjbUKj7M0BwU?=
 =?us-ascii?Q?+Xy3Hogg8ogmBHAxHklhVutZrSAHZVRwgJ0zpE8x8SK7MqGuSOWGeuXioSD0?=
 =?us-ascii?Q?+JYZoi6WH1Mzj/ecokbvkLUmtxVkd7Zd6tCawWLnlhvmyELUEoBt0ymYL2eZ?=
 =?us-ascii?Q?LHmKzBP8S1bnQQoNY5bOmd3Inwy5oXdCBA7HrLmnDyPuFHeVaTgCigHCzvP9?=
 =?us-ascii?Q?f6ltZYpl4EX7IYEMzWYaWSQ1OEF+0bjZ+SVVyzx0kFvxMc5SSAIXxmvGMkU+?=
 =?us-ascii?Q?Z8T1Yidu0VYgNKcAYOXqXeI7zqUtbo5fOLshTKOeEO4kl8CUdl/sijudjtGw?=
 =?us-ascii?Q?2jJQiWp5K5JEiaINtCyfUU20nBd0PKrD+d4v+XZ00dyILqI3xX0YSW+3IBta?=
 =?us-ascii?Q?uxDOR/sslyJow8XmJ2SeZo1041BAjELkjhYQABgGcIMuQ7vatCwjtfNGy1Xc?=
 =?us-ascii?Q?7Er52L7E4mLa/jUNr07gIu8KrJXY7cdSkqPY2lTtiKrzbNS/DYKT3E9xzuw9?=
 =?us-ascii?Q?UiQYq2TZZ9XFAfpnfLQWRJBWODr0g3XIDLRY3WU7Es1pdpJfQnVcl690O3xX?=
 =?us-ascii?Q?8vL7LuMq0Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR0601MB4276.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 298ef0fc-e869-41e7-b1b0-08de83fd4432
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 08:14:52.7005
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j8N8rVhH3Ij3l/7Qd4goJ3oQXjIhv4PrS6EURzZyGfANupJIiBDQgUic1/uwthkgLmkMnJDVrDpsPmu6KJoUVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB5285
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[aspeedtech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[aspeedtech.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276530-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[aspeedtech.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,aspeedtech.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EBA342A5626
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> On Fri, 2026-03-13 at 22:36 +0100, Arnd Bergmann wrote:
> > On Fri, Mar 13, 2026, at 17:24, Conor Dooley wrote:
> > > On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> > > > This series adds initial support for the eSPI controller found on A=
SPEED
> > > > AST2600 BMC SoCs.
> > > >
> > > > The series introduces a eSPI controller framework for ASPEED SoCs u=
nder
> > > > drivers/soc/aspeed/, adds AST2600-specific controller support for
> > > > peripheral and flash channels, defines the corresponding devicetree
> > > > binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
> > > >
> > > > The driver is intended to support host-BMC communication over the
> BMC-side
> > > > eSPI slave controller present on AST2600 systems.
> > >
> > > This all seems to be in the wrong places entirely, shouldn't an eSPI
> > > driver and bindings go in the spi subsystem?
> >
> > From an initial reading, my impression is that patches 1, 2, 3 and 7
> > should be modified to use the normal SPI interfaces to implement
> > an spi target driver, possibly a combined host/target driver.
> > Reworking this should be fairly straightforward because the interfaces
> > to the SPI core are well documented.
> >
> > It is possible that the hardware can only be used to provide espi
> > device emulation. From what I could see in the code, there is
> > not much special in there, but I'm not that familiar with SPI
> >
> > Patches 4, 5 and 6 in consequently would need to be reworked so
> > these can implement the TAFS spec independent of the SPI controller,
> > and can be shared e.g. with other OpenBMC targets using the same
> > module and the same user interface. None of this should be aspeed
> > specific.
> >
> > There is a good chance that both the user interface and the placing
> > of the code will need a more debate, but I would suggest first trying
> > to move everything over to use the SPI subsystem but leave other
> > parts untouched for the moment.
>=20
> To extend Arnd's points here, some previous attempts were made to
> support Intel's eSPI protocol on Aspeed's SoCs which aren't discussed
> in this cover letter. I think it would be helpful to cover the history
> and why we now have a third approach:
>=20
> -
> https://lore.kernel.org/linux-aspeed/20240319093405.39833-1-manojkiran.ed=
a@g
> mail.com/
> -
> https://lore.kernel.org/openbmc/20220516005412.4844-1-chiawei_wang@aspeed=
t
> ech.com/
>=20
> Previously, Jeremy had some suggestions covering the various channels:
>=20
> https://lore.kernel.org/linux-aspeed/20c13b9bb023091758cac3a07fb4037b7d79=
65
> 78.camel@codeconstruct.com.au/
>=20
> Andrew

Hi Andrew, Ivan, Arnd,

Thanks for the additional context and the review links. It was my mistake n=
ot to reference the previous
discussions in the cover letter.

This series is intended to support the Intel eSPI interface on AST2600, spe=
cifically the parts corresponding
to LPC-style accesses and Target Flash Access Sharing (TAFS), which are def=
ined in the peripheral and flash
channels of the eSPI specification.

Because the earlier OpenBMC work from Chia-Wei dates back to 2021, and beca=
use the code structure and
overall approach in this series differs substantially from that earlier wor=
k, I chose to post this as a new series
rather than as a revision of the earlier one.

I agree that the cover letter should explain this history more clearly, inc=
luding the definition of eSPI, how this=20
series differs from the previous attempts and how it relates to the earlier=
 feedback on the channel split.
I will revise the cover letter accordingly in the next version.

In the meantime, my understanding is that this driver is for the Intel eSPI=
 interface used by the AST2600 BMC,
rather than fitting a conventional SPI controller/device model. That was th=
e reason for initially placing it under
drivers/soc/aspeed/, since there does not appear to be an in-tree eSPI subs=
ystem at present.
However, if that is not the preferred upstream direction, we are happy to r=
estructure the series accordingly.=20
It would be very helpful if you could advise on the preferred placement.

Thanks,
Yun Hsuan


