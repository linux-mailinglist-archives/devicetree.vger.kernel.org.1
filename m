Return-Path: <devicetree+bounces-238585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C934AC5C81B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:16:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AC803A8904
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 978BE30AAC4;
	Fri, 14 Nov 2025 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="BlxEt8d4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E478130C612
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115153; cv=none; b=PF0lCD4PGbGakG3H5o8W2cgGIaGf+d1k3okGYRSY7An9CrxNfUUvL19A0DfuEcSVaXSNV3LcCkZO2lRlYz57yp3FGF6Pp99dVnBF841LEYKHZ3z4lEv/dMbmuu1y8so0kUKcWQtyNpwDUMgwwSeqteb/I0KCvox2m4lLa5/oxms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115153; c=relaxed/simple;
	bh=xvGMCqvHr7u21uafrX17RIpYxnbaQHjlXnbblGa7fmo=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=cRrR/v6uhcp4Uz4/C6RePvuahcpTkff2b76expikV3AMw/fk70b3E3aEAJs4BmuyHGYowy8Jcma5h/c5R/EwSTUm5AlvzrBWWqlwPPZG8PF93tVomL8Rs8q79C4pCh24Czw4PtyWibnbKBfSQ+nK+9sS1He8EVyag+NLw9avr0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=BlxEt8d4; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 4659541093;
	Fri, 14 Nov 2025 11:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763115147; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ga6CQ/p0+1az2B4LpE8ZMMJopa5u6rl8UVhUf63Sx3M=;
	b=BlxEt8d4j33DRxLt7GmGjkKWSKz98+SR3gqAU91iuWwSjUEKH1vRUemjP4shpZHusOdEi+
	unyVKRTzgTNIGfBfbAOtQCbrHIEeyaqBPAdEE8h9ML3XdvIYpB6yo5GnY5kMxmyCDrsOFW
	TbMOU9JIGZ11F6JPuTRobwMMFul/ON99QJtRybzhxwlJEc2efmZG9cU27h37iH3A4LGSpc
	lrmrFeJi4WRUkmluCB6xg0/9laQzX+V1e8gQWgIpBiZ9kiGp/t5WXUsFV2o9AJ7t1d0Yib
	wgCh4FsAkIGGsA+CivQrC1wyi+llolNJmRYccFX1esjSaE97cSoA9MG1b08cUA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <1942576.CQOukoFCf9@diego>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
Date: Fri, 14 Nov 2025 11:12:22 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Krzysztof Kozlowski" <krzk@kernel.org>, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Heiko,

On Friday, November 14, 2025 11:08 CET, Heiko St=C3=BCbner <heiko@sntec=
h.de> wrote:
> Am Freitag, 14. November 2025, 09:32:29 Mitteleurop=C3=A4ische Normal=
zeit schrieb Dragan Simic:
> > On Friday, November 14, 2025 09:24 CET, FUKAUMI Naoki <naoki@radxa.=
com> wrote:
> > > On 11/14/25 16:51, Krzysztof Kozlowski wrote:
> > > > On 14/11/2025 08:47, FUKAUMI Naoki wrote:
> > > >> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
> > > >>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
> > > >>>> Hi Krzysztof,
> > > >>>>
> > > >>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
> > > >>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
> > > >>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
> > > >>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> > > >>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
> > > >>>>>>>>> Add device tree binding documentation for the Radxa CM5=
 IO Board.
> > > >>>>>>>>>
> > > >>>>>>>>> Link: https://dl.radxa.com/cm5/radxa=5Fcm5=5Fproduct=5F=
brief.pdf
> > > >>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > > >>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > > >>>>>>>>
> > > >>>>>>>> Wrong DCO chain.
> > > >>>>>>>>
> > > >>>>>>>>> ---
> > > >>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yam=
l | 7 +++++++
> > > >>>>>>>>
> > > >>>>>>>> NAK, you just stolen ownership of an already posted patc=
h.
> > > >>>>>>>
> > > >>>>>>> Read "Changes in v6" and patches; my patches are not the =
same as v5.
> > > >>>>>>> Your reply is totally inappropriate.
> > > >>>>>>
> > > >>>>>> Inappropriate is taking authorship of someone's patch, bec=
ause we all
> > > >>>>>> expect to preserve the original authorship. That's not onl=
y basic
> > > >>>>>> decency but actually a standard.
> > > >>>>>>
> > > >>>>>> Additionally, read Joseph's reply that he wants to continu=
e the work:
> > > >>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqe=
FviaCgeOyprKDr92FOurg@mail.gmail.com/
> > > >>>>>>
> > > >>>>>> You clearly do not understand how to continue with someone=
's work.
> > > >>>>>>
> > > >>>>>> It is still a NAK.
> > > >>>>>
> > > >>>>> And I still wait for justification why you took authorship =
of this
> > > >>>>> patch, because to my eye you changed here nothing.
> > > >>>>>
> > > >>>>> So what did you change HERE that you think you are the auth=
or now?
> > > >>>>
> > > >>>> Changes in v6:
> > > >>>> (Patch 1/3)
> > > >>>> - Fix description; "Radxa CM5" is the correct name
> > > >>>
> > > >>> HERE, in this patch. Don't paste me hundreds of unrelated cod=
e. Write
> > > >>> concise and precise answers/comments.
> > > >>
> > > >> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d=
73-7c0a-4884-9561-24721305a24f@radxa.com/
> > > >>
> > > >> | By the way, at some point I switched from "continuing your w=
ork" to
> > > >> | "recreating a new one based on my current work." The results=
 of my
> > > >> | current work(*3) have changed significantly.
> > > >=20
> > > > So next time I will take your patch, your code, say "I recreate=
d it" and
> > > > submit under my authorship and for you it is fine?
> > >=20
> > > Regarding CM5 patches, I'm fine.
> > >=20
> > > > Please take Joseph's patch instead. Read submitting patches doc=
 to
> > > > understand which one more tag has to be added when sending somo=
ene
> > > > else's work.
> > > >=20
> > > > In the future, I sincerely suggest avoiding re-creating people'=
s work
> > > > but building on top, because you just duplicate the effort.
> > >=20
> > > I understand that you don't understand how I made efforts to buil=
d my=20
> > > work on top of Joseph's patches.
> >=20
> > Maybe a solution for this huge mess could be that Naoki submits
> > unmodified patches from Joseph first, using the standard procedure
> > for that, and then the additional patch(es) that improve Joseph's
> > work?  All that in the same series.
>=20
> There is also Co-developed-by as an option.

Ah, that's what the above-described option #1 involves, but it also=20
raises some possible concerns, described in one of my responses. [1]

[1] https://lore.kernel.org/linux-rockchip/c01b756a-73ea-3d0d-44b9-6ce8=
a535a103@manjaro.org/


