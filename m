Return-Path: <devicetree+bounces-238527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7558C5BFF9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29C3B3ACDDA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C824C2727E5;
	Fri, 14 Nov 2025 08:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="sxk3nJWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635E429CE1
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763109159; cv=none; b=G+xvZQsNv2ArFRGwNs9BRM6YF+bZ6bYa62yr89nD7Iqm9vil9xvg4M1nEFFzaB61bn12o2IeHE8fp7yYlUcezhf7a1OJE3OZwAOVkxNT+hvz+Vq4IweW6V/lSLOiuouLuNttqoyvIJOi0fr8iPBQxSGpMdFCLVnk7ovq6lVXcT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763109159; c=relaxed/simple;
	bh=PrMPYIYYShdJVvkNKcRuup+E5amg0RQJSrG9NsALJA0=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=nsHQYW2Jqi/k+mBIgL0OEhFfWRvshh4uCJ6dW9xGrZRvVtp0LbsOgY06Tj9HoGoLc0W3Yyg22K0RmxDIR8vT1CWk91Po1lSKnza9fQtO065idi/nb8fzniiGgLZOrytVIPqoNQuRgY4FaNe2P3u6uUiqD9sd6GNgj21ZhtEdI+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=sxk3nJWF; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id BCD5A4109E;
	Fri, 14 Nov 2025 09:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763109154; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=H7abZ3ZYaP2vBuHlUKqJanNr1i0yVWF/iFc+uzasKk0=;
	b=sxk3nJWFscy/o5txYfy8tEv4VhvSemjxPn9yE9PaqeG6IM+EyEcP3+OJ/asIZ7u6WpioI4
	QdYs0fg9fTT4v9XHhQFaXxnCuHVDtBUiCelYfpRtaJxRR3OZrWunvmdprbpoazq5jhmmfX
	47JOUvnBRSKoaMRT1pm+KGsCtMXFfT6+J48EkwqNI3FMkJZoofV8reJiWjGAP1I5wjrGd4
	IRIMTFDwr8ENfb2pA/ZUCoY1QNd9mm7NkuQJUyN/I9OZ0GaVPNHwEPVthqYUOIUW+Bn1Wr
	AiP4P9bLM9xVz+otB9nzbKGS+ygFDOTT/4OWnZq8g3Ed5uUt9sUFtraz7We/sQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
 <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
 <D88EE9EEB2B37D36+361d448f-d260-4d78-ae6b-abf1caabb94b@radxa.com>
 <b2833988-6319-4426-8a25-c0d34acffa47@kernel.org>
 <B6224BD6578686FF+dc81e00c-46f6-4791-af8a-99cf8e880f0c@radxa.com>
 <f112b806-b204-46b5-90b2-813ad5d0ceee@kernel.org> <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
Date: Fri, 14 Nov 2025 09:32:29 +0100
Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Friday, November 14, 2025 09:24 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> On 11/14/25 16:51, Krzysztof Kozlowski wrote:
> > On 14/11/2025 08:47, FUKAUMI Naoki wrote:
> >> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
> >>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
> >>>> Hi Krzysztof,
> >>>>
> >>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
> >>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
> >>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
> >>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> >>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
> >>>>>>>>> Add device tree binding documentation for the Radxa CM5 IO =
Board.
> >>>>>>>>>
> >>>>>>>>> Link: https://dl.radxa.com/cm5/radxa=5Fcm5=5Fproduct=5Fbrie=
f.pdf
> >>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> >>>>>>>>
> >>>>>>>> Wrong DCO chain.
> >>>>>>>>
> >>>>>>>>> ---
> >>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yaml | =
7 +++++++
> >>>>>>>>
> >>>>>>>> NAK, you just stolen ownership of an already posted patch.
> >>>>>>>
> >>>>>>> Read "Changes in v6" and patches; my patches are not the same=
 as v5.
> >>>>>>> Your reply is totally inappropriate.
> >>>>>>
> >>>>>> Inappropriate is taking authorship of someone's patch, because=
 we all
> >>>>>> expect to preserve the original authorship. That's not only ba=
sic
> >>>>>> decency but actually a standard.
> >>>>>>
> >>>>>> Additionally, read Joseph's reply that he wants to continue th=
e work:
> >>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFvia=
CgeOyprKDr92FOurg@mail.gmail.com/
> >>>>>>
> >>>>>> You clearly do not understand how to continue with someone's w=
ork.
> >>>>>>
> >>>>>> It is still a NAK.
> >>>>>
> >>>>> And I still wait for justification why you took authorship of t=
his
> >>>>> patch, because to my eye you changed here nothing.
> >>>>>
> >>>>> So what did you change HERE that you think you are the author n=
ow?
> >>>>
> >>>> Changes in v6:
> >>>> (Patch 1/3)
> >>>> - Fix description; "Radxa CM5" is the correct name
> >>>
> >>> HERE, in this patch. Don't paste me hundreds of unrelated code. W=
rite
> >>> concise and precise answers/comments.
> >>
> >> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7=
c0a-4884-9561-24721305a24f@radxa.com/
> >>
> >> | By the way, at some point I switched from "continuing your work"=
 to
> >> | "recreating a new one based on my current work." The results of =
my
> >> | current work(*3) have changed significantly.
> >=20
> > So next time I will take your patch, your code, say "I recreated it=
" and
> > submit under my authorship and for you it is fine?
>=20
> Regarding CM5 patches, I'm fine.
>=20
> > Please take Joseph's patch instead. Read submitting patches doc to
> > understand which one more tag has to be added when sending somoene
> > else's work.
> >=20
> > In the future, I sincerely suggest avoiding re-creating people's wo=
rk
> > but building on top, because you just duplicate the effort.
>=20
> I understand that you don't understand how I made efforts to build my=20
> work on top of Joseph's patches.

Maybe a solution for this huge mess could be that Naoki submits
unmodified patches from Joseph first, using the standard procedure
for that, and then the additional patch(es) that improve Joseph's
work?  All that in the same series.


