Return-Path: <devicetree+bounces-98216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E50829654D0
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 03:44:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2A68281008
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 01:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E614778E;
	Fri, 30 Aug 2024 01:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="WdbvepCX";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="s7uHiva1"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh7-smtp.messagingengine.com (fhigh7-smtp.messagingengine.com [103.168.172.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0B844C77
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724982230; cv=none; b=D/huCxxEkz1+M93DTENfvtPHZwzvk1hdZ36kZbsTNRl2LY15TV9GzLSV+kw9MqlRIzm1W2V0N4sSjJ5EMrW5xqfF3ihX+MJmCss+MWsalJsG/a6OKTjYzVGNw5fsGKEncQi4Etr2ppzP68DHw8lW8E5rtld7NRhgW4uDOev5sSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724982230; c=relaxed/simple;
	bh=6QaKiTQ96xptQyij/J6Jm/ij+4iWhsZu5Ba5dEI0++0=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=hsdwjuSooMtfFyEKZAy2msbROUs4r3JsLlh2g4mbrwMajm4YqxoUfVy1HPaRhIpsSd8c8gBFxVz5UCaT5j1IVsEumXusAhaC792XXEB8hY0YLQViypIlHQ5+KvJFIsP58iCPAV3o64U7smBl98MPsbXBxCPAQp2pgsTpMNQ0bLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=WdbvepCX; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=s7uHiva1; arc=none smtp.client-ip=103.168.172.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-02.internal (phl-compute-02.nyi.internal [10.202.2.42])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id AF8D411519D3;
	Thu, 29 Aug 2024 21:43:45 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 29 Aug 2024 21:43:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1724982225; x=1725068625; bh=6QaKiTQ96xptQyij/J6Jm/ij+4iWhsZu
	5Ba5dEI0++0=; b=WdbvepCX4Jlr4yZz3mtjI7aHoT+OWYRBtSB53iRPkwUUvH9e
	e1ZLh8Wsg0DdCfHfHT7c0R/r6U0i5EG1rkMd5wVZ5e88dIPgP7TICUSA2SGcfQ2j
	3yX992tOVgc5QszWFLuVzoyQevX+CuvePVBtIn190jXN/6IKBQNiHYuidZDQ6ANn
	GN3JtRAsT/cisjUKzlHS6tjXJY1+8qXODg33XKnWJFZecK00+l9OH4y8c8AkefAL
	ftyJSvIRb1GJLyKT26ovfkWGMsNA+1GJu0OvRQKRJvbrIoRnPC8tbXVrTlIOntW0
	hZ+Mjk4k4jJND4lYyEJ6nrTbTME+ILVW+Gj9xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724982225; x=
	1725068625; bh=6QaKiTQ96xptQyij/J6Jm/ij+4iWhsZu5Ba5dEI0++0=; b=s
	7uHiva1ikUIedey4khLCTJLdQd3cSK9S6TtMcH7S/oOHXbW59LqlqqsGe3A2X34G
	WuOHW+OSD6+3onKSq28NEYYoaddK1k8OWDhSB8NtizMTbOzVodPMeur8CmHv1/nd
	bBr5H/m4fSObjkzwx3IWcJEX6AsPpZO7aBoDcoKzjWCA9/JYEV0lQjqw4xSTaeBi
	CU8wb8vuZ6659tOWvjc5RJCTLHtgn3Pli3WvSiYzmh/1S0Y/ujzDLm6YHNaUzeMx
	5wNcWWpW6uboQF+7bCAO9XB2eLcoHfP/+oNyp2ae97rnYI0SDO+4yQ64yZ2kNL7n
	XfgWAuaB7YhnMnk/QIDSA==
X-ME-Sender: <xms:0SPRZiFRj_ME0FvuDuYONysd4RLZhOaGRocO7PiC4ylmgQJgm2MERQ>
    <xme:0SPRZjVNSyfkbdOAZO_k6exlaw710BOYG2eLfJV2hUq8_ueObWZBzwiLez-PRw_1y
    Ss7H4sYBwj_UU1csg>
X-ME-Received: <xmr:0SPRZsLVqXy4zqp3VCl21tewcR_Uwur1LPpGAlV1TN4nLBIfLEq-yFomSCWRwdG0DTAnlj7bqiF_0Y6oTgleoSb9SMuKXQB6bBJSGQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudefhedggeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurheptgfghfggufffkfhfvegjvffosehtqhhmtdhhtdej
    necuhfhrohhmpefthigrnhcuhggrlhhklhhinhcuoehrhigrnhesthgvshhtthhorghsth
    drtghomheqnecuggftrfgrthhtvghrnhepkeeffffhtdeuvdejiedtueegueevgfejueeg
    udfhieetgfdtfeevhffhfeejjefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgt
    phhtthhopeduiedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepkhhikhhutghhrg
    hnleeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhr
    ghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhope
    hnvghilhdrrghrmhhsthhrohhngheslhhinhgrrhhordhorhhgpdhrtghpthhtohepqhhu
    ihgtpghjvghsshiihhgrnhesqhhuihgtihhntgdrtghomhdprhgtphhtthhopegrihhrlh
    hivggusehgmhgrihhlrdgtohhmpdhrtghpthhtohepshgrmhesrhgrvhhnsghorhhgrdho
    rhhgpdhrtghpthhtohepmhgrtghrohgrlhhphhgrkedvsehgmhgrihhlrdgtohhmpdhrtg
    hpthhtoheptghonhhorheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:0SPRZsG7FzrjgyQevGR_RTm6I68rU_kcnkQytR6-s5Az8z_PrfZ8pg>
    <xmx:0SPRZoUb-r57D7Y3JL-dbSL7BpCiZUJu_RVp3b-EuQw1tnora4bYyw>
    <xmx:0SPRZvPRuTrkHZg9Sl_Ybw8-PuuQ82aqA8ED8E9sMY73-XNI8S1Q8g>
    <xmx:0SPRZv1HYKzwwpAhcPGGOQJmOglFEt2MB7GkXinOA5_D0ExBCh0S-g>
    <xmx:0SPRZknse_dbdBRWBwHfYy2i0NyunQi7wJOYgNbhBol2Lc6HhC6j3xlR>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Aug 2024 21:43:44 -0400 (EDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Ryan Walklin <ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8 panel
Date: Fri, 30 Aug 2024 13:43:30 +1200
Message-Id: <8490347B-2729-4B79-869B-FFCE41E0A7F9@testtoast.com>
References: <20240828-aboriginal-vivid-goldfish-3ee4fc@houat>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Conor Dooley <conor@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Hironori KIKUCHI <kikuchan98@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>
In-Reply-To: <20240828-aboriginal-vivid-goldfish-3ee4fc@houat>
To: Maxime Ripard <mripard@kernel.org>
X-Mailer: iPhone Mail (21F90)



> On 28 Aug 2024, at 7:07=E2=80=AFPM, Maxime Ripard <mripard@kernel.org> wro=
te:
>=20
> =EF=BB=BFOn Tue, Aug 27, 2024 at 06:28:21PM GMT, Neil Armstrong wrote:
>>> Thanks both for the further feedback, agreed logical to use the
>>> device vendor and panel serial number, ie "anbernic,wl-355608-a8".
>>> Will post a V2 with a comment to that effect.
>>=20
>> Well in this case we can keep "wl-355608-a8", because the panel vendor
>> _is not_ anbernic.
>=20
> And it's not a generic or ubiquitous device either. We've been over
> this already, anbernic is the best we have.

I don=E2=80=99t have a strong preference either way but agree the anbernic v=
endor string is the best compromise.

Regards,

Ryan=


