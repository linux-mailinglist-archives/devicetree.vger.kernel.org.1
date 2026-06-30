Return-Path: <devicetree+bounces-317378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8scLH9I9Q2o6WAoAu9opvQ
	(envelope-from <devicetree+bounces-317378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 05:53:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E65C96E027F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 05:53:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=bW7CwIwV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317378-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317378-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6960E301E7F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 03:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5921F32FA30;
	Tue, 30 Jun 2026 03:53:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8B33D34A2
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 03:53:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782791618; cv=none; b=ARZPQUBg1DCEYIRdX+74ye4GR/ngILvSVa7Xrhy0ITOM9fuDZeqvcvBPsueXxyXsfBZwvnKQlaynumdcU+yIZXDur+THohTkNHRaDhJQnvDMAUmUfkxKVmcPK25uD5rDdpg9+lI1jd5+5dV0hPlvg49LPANti9B3mKl3uJl+XHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782791618; c=relaxed/simple;
	bh=piLhSl9xbxhGuA9PKqA38eEpjthF9cVZD+Z8+JAT6z4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=N5SKPSFliMU0fbZcSUjkdlFogzERG25AIrrnT9EUOVgbnjpwzB91Wzx/RPJX2Etly1tY843NoUIVxUkxQ/Ot2dUjMlJAyCcQq0FpTNa8egUMLVnSzXOxqf6pll/xHkURIYo85++8J0JrnzjYxdS5sZbizanPWGdBPMbwJKcGZZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=bW7CwIwV; arc=none smtp.client-ip=203.254.224.24
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260630035329epoutp01e38af725e2884273d07bb4d499eca225~9v4XdqH5l0496404964epoutp01-
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 03:53:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260630035329epoutp01e38af725e2884273d07bb4d499eca225~9v4XdqH5l0496404964epoutp01-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1782791609;
	bh=piLhSl9xbxhGuA9PKqA38eEpjthF9cVZD+Z8+JAT6z4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=bW7CwIwVa6VqDmtwk5H12vzp18ProctCyU2cjzm4CglhYIehHv81hTMXrFT1gUw8J
	 1CrSlEaNwokfpJl5lZoHy9e2NydaoSeJTOFoWhv251dorMkD/KyjylGV2+tdnb2VnX
	 BYdJ9hho2PBoAvJNqiERdwLhuMFcOLnqgF1aSp8g=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260630035328epcas5p20b91cf93730893d57a8304742eb23b88~9v4Waurrl0440104401epcas5p28;
	Tue, 30 Jun 2026 03:53:28 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.89]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4gq8Pz0H02z6B9m7; Tue, 30 Jun
	2026 03:53:27 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260630035326epcas5p232c12f841f9ed8fa8fe81e8aa7eb45bb~9v4U1d5RT0440104401epcas5p20;
	Tue, 30 Jun 2026 03:53:26 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260630035324epsmtip178af641e049abbee3867634497dbd7e8~9v4SqM4BV2049720497epsmtip1_;
	Tue, 30 Jun 2026 03:53:23 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Peter Griffin'" <peter.griffin@linaro.org>, "'Denzeel Oliva'"
	<wachiturroxd150@gmail.com>
Cc: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Sylwester Nawrocki'"
	<s.nawrocki@samsung.com>, "'Chanwoo Choi'" <cw00.choi@samsung.com>,
	"'Michael Turquette'" <mturquette@baylibre.com>, "'Stephen Boyd'"
	<sboyd@kernel.org>, "'Brian Masney'" <bmasney@redhat.com>, "'Rob	Herring'"
	<robh@kernel.org>, "'Conor Dooley'" <conor+dt@kernel.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
In-Reply-To: <CADrjBPpNQd6WgwVo-a3Mz74d1EptPm9D9BisLEmoFRsdUb3izw@mail.gmail.com>
Subject: RE: [PATCH v3 3/3] clk: samsung: exynos990: Fix PERIS gate clock
 parents
Date: Tue, 30 Jun 2026 09:23:21 +0530
Message-ID: <0f1e01dd0844$01190c40$034b24c0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEx4sfAWwy4gnk+MuXqAo8FFpNhngGTah19AjUYwH4DLBf1wbd1Fhhg
Content-Language: en-us
X-CMS-MailID: 20260630035326epcas5p232c12f841f9ed8fa8fe81e8aa7eb45bb
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260629123246epcas5p2aab9da9ef417274bb0b70f74c386f7b4
References: <20260613-exynos990-peris-fix-v3-v3-0-2b230db78ae4@gmail.com>
	<20260613-exynos990-peris-fix-v3-v3-3-2b230db78ae4@gmail.com>
	<CGME20260629123246epcas5p2aab9da9ef417274bb0b70f74c386f7b4@epcas5p2.samsung.com>
	<CADrjBPpNQd6WgwVo-a3Mz74d1EptPm9D9BisLEmoFRsdUb3izw@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317378-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:peter.griffin@linaro.org,m:wachiturroxd150@gmail.com,m:krzk@kernel.org,m:s.nawrocki@samsung.com,m:cw00.choi@samsung.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:email,vger.kernel.org:from_smtp,baylibre.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alim.akhtar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E65C96E027F



> -----Original Message-----
> From: Peter Griffin <peter.griffin=40linaro.org>
> Sent: Monday, June 29, 2026 6:02 PM
> To: Denzeel Oliva <wachiturroxd150=40gmail.com>
> Cc: Krzysztof Kozlowski <krzk=40kernel.org>; Sylwester Nawrocki
> <s.nawrocki=40samsung.com>; Chanwoo Choi <cw00.choi=40samsung.com>;
> Alim Akhtar <alim.akhtar=40samsung.com>; Michael Turquette
> <mturquette=40baylibre.com>; Stephen Boyd <sboyd=40kernel.org>; Brian
> Masney <bmasney=40redhat.com>; Rob Herring <robh=40kernel.org>; Conor
> Dooley <conor+dt=40kernel.org>; linux-samsung-soc=40vger.kernel.org; linu=
x-
> clk=40vger.kernel.org; devicetree=40vger.kernel.org; linux-arm-
> kernel=40lists.infradead.org; linux-kernel=40vger.kernel.org
> Subject: Re: =5BPATCH v3 3/3=5D clk: samsung: exynos990: Fix PERIS gate c=
lock
> parents
>=20
> Hi Krysztof & Denzeel,
>=20
> On Sat, 13 Jun 2026 at 13:36, Denzeel Oliva <wachiturroxd150=40gmail.com>
> wrote:
> >
> > Correct eight PERIS gate clock parents to match the hardware clock
> > tree and reorder the GIC mux parents so mout_peris_bus_user is the
> > default source.
> >
> > Signed-off-by: Denzeel Oliva <wachiturroxd150=40gmail.com>
> > ---
>=20
> Reviewed-by: Peter Griffin <peter.griffin=40linaro.org>
>=20
> =40Krysztof: I was thinking, maybe we should establish a new rule/best
> practice for Samsung clock upstream submissions whereby patch
> contributors should link to the downstream cal-if code for the SoC after =
the --
> - line. That would make reviewing the patches' correctness a bit easier, =
as the
> downstream cal-if code would be readily available to the reviewer.
>=20
We can leave this choice to the reviewer if they want to refer to downstrea=
m cal-if code.

Regards
Alim

> regards,
>=20
> Peter
>=20


