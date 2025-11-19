Return-Path: <devicetree+bounces-240094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB4DC6D508
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5BF103A3B0D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFA732C305;
	Wed, 19 Nov 2025 07:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="qOk6EkKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14E732B999;
	Wed, 19 Nov 2025 07:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538857; cv=none; b=lHzVb2ueKiy1C+hExJzw5/iY3pt2vfj+vTo7GqOa3ZJuLH277qq/yV2/5OdPa+TkIFHEX9+2x2b9vilbZRoN5y8LPRT968Yvp6pUKgiYbu8PoJMmvt0KGs3T14bMk5JlFm/6mRSKcNHcQNUc2cBzqMLtXof2iMXSlljx2K1AJ1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538857; c=relaxed/simple;
	bh=yJ432Dn63a4nom819DgyP+NO1XfvXXRvDq0jX9FvDGw=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=NqG1Q+QuaSoRQijfvyhthzp7d8vXwsFV3kcXNQPZ5COdLXQewTzulpo1A122Sq/sp7flv3goT/JaC5bFesKYoIDscpI+d0/6SyD49eNW/3Eafiw1wBU3V6OFY0sU5eGFYtEwyPd8dauVXZNBasLADkOPwv5ccd0b1HBDr4LI6yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=qOk6EkKf; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 272CA41286;
	Wed, 19 Nov 2025 08:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763538852; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FO6i4EJtflzh+RBm1bIZwxR02OjHW1gnYtKm7qHscDY=;
	b=qOk6EkKfspC043mosDKndlKCCI3kXANFZl783HE31sunZP+QhGfBP8qIyFbH+hmGa/16cC
	f7ocVn++TitoxWQeUNDhy7oqha2Wytdi0IKpN6dexNBlcecI3pCr3BTCCsNmfdlnABGbpD
	KC7D8Cofr9MQT4me7EjdghgPKjB3NZqL2HbsrShu8tgWXOwm4pQNNaQ4C0X6Dkr+hqDUPh
	WNNT1TeOtWKdhWJE+gzrcZ4lXadhmyJg5MAeUMfuQyaSBqKBDiDfjSAOPFD+DwZ/4Y+aW6
	+EMFIfx+RlYP0gsTosQbF5l0V8OWkQNF2slXc1Q6k/sBIEw8a1O9EAoGj71oxA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <e1598abe-7a66-4808-82c7-2389ee2ea279@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org>
 <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
 <b8e91b59-afb1-6d0d-4709-c7f76ded0e18@manjaro.org>
 <5bc642d3-fe05-4654-88c3-11c6534c5aa4@kernel.org>
 <b98e53ce-9c8c-c505-6097-0d22d0416e8e@manjaro.org> <e1598abe-7a66-4808-82c7-2389ee2ea279@kernel.org>
Date: Wed, 19 Nov 2025 08:54:10 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <69de292c-af43-d202-72da-c7d3769d1799@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Wednesday, November 19, 2025 08:48 CET, Krzysztof Kozlowski <krzk@ke=
rnel.org> wrote:
> On 19/11/2025 08:40, Dragan Simic wrote:
> > On Wednesday, November 19, 2025 08:31 CET, Krzysztof Kozlowski <krz=
k@kernel.org> wrote:
> >> On 19/11/2025 08:23, Dragan Simic wrote:
> >>> On Wednesday, November 19, 2025 08:09 CET, Krzysztof Kozlowski <k=
rzk@kernel.org> wrote:
> >>>> Your reviews are not helpful. You nitpick irrelevant things and =
propose
> >>>> solutions which later reverse leading to wasted effort on contri=
butors side.
> >>>>
> >>>> Michael implemented what you asked here:
> >>>>
> >>>> https://lore.kernel.org/linux-rockchip/e4cd11d0-463c-e707-5110-6=
b92899b1ba3@manjaro.org/
> >>>
> >>> Not exactly, because I didn't ask for any compatibles to be remov=
ed
> >>> from the new board dts files.
> >>
> >> Read your answer again. You wanted ENTIRE bindings, to be like thi=
s:
> >>
> >>      - description: Asus Tinker Board 3/3S
> >>        items:
> >>          - enum:
> >> 	   - asus,rk3566-tinker-board-3
> >>            - asus,rk3566-tinker-board-3s
> >>          - const: rockchip,rk3566
> >>
> >> (skipping obvious indentation fixup)
> >> There are exactly like this.
> >>>
> >>> In this case, we could also say that it was Michael's fault not t=
o
> >>> give enough time for the reviewers to respond.
> >>
> >> Michael implemented EXACTLY what you asked. Now, you ask to change=
 it to
> >> what Michael did BEFORE.
> >=20
> > Not really, because it wasn't some kind of a request from my side,
> > but merely a suggestion that was intended to be discussed further
> > so the best possible solution is reached before v3 is submitted.
> >=20
> >> Your reviews are completely irresponsible and incorrect.
> >=20
> > Calling my reviews irresponsible hurts me a lot, really, but I'm
> > unfortunately already used to hear hurtful things from your side.
>=20
> You do not bear the cost of your reviews, so maybe that's why you thi=
nk
> nitpicking, poking around, pin pointing irrelevant things and adding =
2
> cents is okay, but that leads to additional effort on contributors an=
d
> reviewers. And not respecting total effort is irresponsible.

Thank you very much for finding additional ways to hurt my feelings.
However, please think about how your unfriendly approach may or may
not contribute to the overall effort.


