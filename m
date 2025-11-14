Return-Path: <devicetree+bounces-238710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE9C5D73D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 561003ADC6D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB1A2116F4;
	Fri, 14 Nov 2025 13:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="EpXztYKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68993248F62
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763128668; cv=none; b=KeMQP3SQRIGV7JOBSVj72Vmbq+uWyfZQqJcELzNVhbN+S1Cu1WuPXMtd1RSQ6+brF+HhDFL8PW9WbxhMwwQ+wenNlZ035tQDq0DEmpXhz78V8+FTvtGSjK1g1mZg65HwB7RdzcmsFidRzzXU/6vxQUmphHCGO2yL3VxvuzZJrgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763128668; c=relaxed/simple;
	bh=BAhr3zxPGQZcM7LBr8upI8UJsMspvzfTmVdSUciv4rs=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=d2pQQyW5b9IWWwV7WaddxCXHm4wSi9mCUoAtilRHc3glu0IqF8B3aZdhk7ur/O3MCYIfENYFZWb6kUEsSTGo9h9ZNyQsXlRdO2HfLheJVgTqt9CMYR+DoE6i+bTjRcxN/xlESZ3y9jon6QmUg3gK1z5c0T1jfGqoCBYmind5CmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=EpXztYKJ; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 03D3C40534;
	Fri, 14 Nov 2025 14:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763128663; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BAhr3zxPGQZcM7LBr8upI8UJsMspvzfTmVdSUciv4rs=;
	b=EpXztYKJYOgX7V8ZHCBp/eAJunxY4DMvVkTqVYpeDhEeXoqR/PwpkQHt1uZ6TDXlFZ6vyv
	QtylsuVkZOmcKwGCYWR2+npViaD7nL9yo0mpXMOR9XYn5qypOuoYpOhQTtJ9+e0Xx9puaX
	x564sEPggWPvBUjDXMxRga4QZBicwJrUV9vja1JKtQMT6X5s7qmK+78ppTMV4H4dAQy/xY
	et6lnSix9zQKd0qI9Y0WcOk+KSYHCLKCo5x9zweIAOJ5ntz4agnivuwjt97o3WexXa9meC
	j0DjBYjgCsAzrfOVRQdlXRg8BV4bzK4dQVFzHztbKGGInXljxn8+zUE7pbZ+ww==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
 <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org> <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
Date: Fri, 14 Nov 2025 14:57:36 +0100
Cc: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki" <naoki@radxa.com>, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <da9b6e3b-6de3-5303-568b-27efd6772810@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 1/3] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Friday, November 14, 2025 11:30 CET, Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> On 14/11/2025 11:12, Dragan Simic wrote:
> > On Friday, November 14, 2025 11:08 CET, Heiko St=C3=BCbner <heiko@s=
ntech.de> wrote:
> >> There is also Co-developed-by as an option.
> >=20
> > Ah, that's what the above-described option #1 involves, but it also=20
> > raises some possible concerns, described in one of my responses. [1=
]
>=20
> There are no concerns to be raised. Please read DCO. The original aut=
hor
> GAVE certified what is necessary, thus any person taking this work
> already can you that certification. You raised some uncertainty "I'm =
not
> sure how fair is it for someone to become responsible" which is just =
not
> right here. It is completely fair and completely correct from DCO poi=
nt
> of view, because the certification was already provided. Also from
> certification point, there is no "weaker" form. Either you certify or=
 not.

I see, you're following the documentation strictly and rigidly.
In that case, I think Naoki now knows what's to be done when
submitting these patches again.


