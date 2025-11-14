Return-Path: <devicetree+bounces-238579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2803C5C7B8
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B21263B6C0C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6B830ACFA;
	Fri, 14 Nov 2025 10:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Ve05QFEt"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02D5305972
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763114931; cv=none; b=aUIRntiJmlEdSLsrN8urbWk/kPLD9IhNJhR9n46225slYTTcxosna9phGok+T7IcoSUMruq846h/2K8ODABOsyvBBhJr74duwDC78Lgca6gSnL6Io1WEOg8Zp4EglGw5dpidVpmL5FfSSsNFFnf1CSNOrPBLvna589yo3YvajbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763114931; c=relaxed/simple;
	bh=DbuYP/JmG2VV2IjwC7x2bFxPqdCjnEgYolGL+cI9+GY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=flXT6HflOlTYCvrj4gl88KrkUrILMiCDSvvPr2Itl6DHnVW27Im+e1zxH4TEJSCZz3Y5fucAdLRvIYT/lwLKuImH5K4rANMsvEjs/PuzFBTAgoBjkbEXhsTxhOG3V6nfzPsPLfov62DalMYVfuaUHJavrGp4pmtzLLITSYwDs7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Ve05QFEt; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0ln02T6LojG3buVVSzQ5rx4KEB5R1qyW8EVRoSWyWKU=; b=Ve05QFEtfRuYPM4VuJMRMAy6GB
	YGt5ufnyN0CxH1fQydVtIT0hfqxHQ8Dgu5XJlf9or/M7oCLPbEueXvuu+a2BQ3lQlobPoaqkdMfBI
	WcCvdv2oqnVmnXhCtt4vRaRiVBPErQyBzC6G9oY4Ph2wJRdddpA07pLvX5HRaSZxQvBzjG8aEdOyB
	Cn9+KQUFZJ6INGOoZsnLo1IaAeDANXZfNpenrBUSj3G8WLMKC3LIHqWFGrpOHOwxwd7QRfcxr+sde
	U5MmXkibCXUT/0HqD+epQ7qWZar+nB8AIv4IJajkAzmy52VBY2uE20q1+NcAa+kdQUwXXo/SJQd/l
	cvr+OGtg==;
Received: from i53875ae8.versanet.de ([83.135.90.232] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJqj8-0001uf-5N; Fri, 14 Nov 2025 11:08:22 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, joseph.kogut@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
Date: Fri, 14 Nov 2025 11:08:21 +0100
Message-ID: <1942576.CQOukoFCf9@diego>
In-Reply-To: <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
References:
 <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Freitag, 14. November 2025, 09:32:29 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Dragan Simic:
> On Friday, November 14, 2025 09:24 CET, FUKAUMI Naoki <naoki@radxa.com> w=
rote:
> > On 11/14/25 16:51, Krzysztof Kozlowski wrote:
> > > On 14/11/2025 08:47, FUKAUMI Naoki wrote:
> > >> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
> > >>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
> > >>>> Hi Krzysztof,
> > >>>>
> > >>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
> > >>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
> > >>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
> > >>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> > >>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
> > >>>>>>>>> Add device tree binding documentation for the Radxa CM5 IO Bo=
ard.
> > >>>>>>>>>
> > >>>>>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
> > >>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > >>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > >>>>>>>>
> > >>>>>>>> Wrong DCO chain.
> > >>>>>>>>
> > >>>>>>>>> ---
> > >>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yaml | 7 =
+++++++
> > >>>>>>>>
> > >>>>>>>> NAK, you just stolen ownership of an already posted patch.
> > >>>>>>>
> > >>>>>>> Read "Changes in v6" and patches; my patches are not the same a=
s v5.
> > >>>>>>> Your reply is totally inappropriate.
> > >>>>>>
> > >>>>>> Inappropriate is taking authorship of someone's patch, because w=
e all
> > >>>>>> expect to preserve the original authorship. That's not only basic
> > >>>>>> decency but actually a standard.
> > >>>>>>
> > >>>>>> Additionally, read Joseph's reply that he wants to continue the =
work:
> > >>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCg=
eOyprKDr92FOurg@mail.gmail.com/
> > >>>>>>
> > >>>>>> You clearly do not understand how to continue with someone's wor=
k.
> > >>>>>>
> > >>>>>> It is still a NAK.
> > >>>>>
> > >>>>> And I still wait for justification why you took authorship of this
> > >>>>> patch, because to my eye you changed here nothing.
> > >>>>>
> > >>>>> So what did you change HERE that you think you are the author now?
> > >>>>
> > >>>> Changes in v6:
> > >>>> (Patch 1/3)
> > >>>> - Fix description; "Radxa CM5" is the correct name
> > >>>
> > >>> HERE, in this patch. Don't paste me hundreds of unrelated code. Wri=
te
> > >>> concise and precise answers/comments.
> > >>
> > >> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7c0=
a-4884-9561-24721305a24f@radxa.com/
> > >>
> > >> | By the way, at some point I switched from "continuing your work" to
> > >> | "recreating a new one based on my current work." The results of my
> > >> | current work(*3) have changed significantly.
> > >=20
> > > So next time I will take your patch, your code, say "I recreated it" =
and
> > > submit under my authorship and for you it is fine?
> >=20
> > Regarding CM5 patches, I'm fine.
> >=20
> > > Please take Joseph's patch instead. Read submitting patches doc to
> > > understand which one more tag has to be added when sending somoene
> > > else's work.
> > >=20
> > > In the future, I sincerely suggest avoiding re-creating people's work
> > > but building on top, because you just duplicate the effort.
> >=20
> > I understand that you don't understand how I made efforts to build my=20
> > work on top of Joseph's patches.
>=20
> Maybe a solution for this huge mess could be that Naoki submits
> unmodified patches from Joseph first, using the standard procedure
> for that, and then the additional patch(es) that improve Joseph's
> work?  All that in the same series.

There is also Co-developed-by as an option.




