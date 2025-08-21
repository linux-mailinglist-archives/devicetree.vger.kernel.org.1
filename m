Return-Path: <devicetree+bounces-207211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D49B2EE4C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C602563389
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93EE255248;
	Thu, 21 Aug 2025 06:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="J7juqJTv";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="D0ae8aPS"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891B7266B6B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758172; cv=none; b=jYxK1SZ45A1noQ+0C/zBZyCTuSHYIHO1MneUbNu6FNkQ+/KZtFy0vwtPM4oT1Y5mhZKHjpcNtbTRO+4q+jWExgoor5PJ5dmVwT2rtWwc8zwozQqYZEChnQp1poJOe78zP9VqAOemmbrJq2Bv+V8JN5y6dljDGWE+GNxBOn/U2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758172; c=relaxed/simple;
	bh=s10zWVirRhwztSC3uIHXZ7fOANJnwowDcKPVRD8o8kE=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=UV6nO0r6zEMTiSMka6/Pc0EzC8FrSxaqthiS5i9as6erqNzNlDBlRtXCe+Z32H9QAU/6BbGtpBAmK3kCrT8KxH+PR1Am7Z0oIWnq+aCzL+oSwlZlAU1lWqSNlCcc4H4K2gO1s4pUv/r5caY62V6uZP4cIVg+yZHnOwwt03JFdgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=J7juqJTv; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=D0ae8aPS; arc=none smtp.client-ip=103.168.172.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.phl.internal (Postfix) with ESMTP id AAB46EC0064;
	Thu, 21 Aug 2025 02:36:06 -0400 (EDT)
Received: from phl-imap-18 ([10.202.2.89])
  by phl-compute-01.internal (MEProxy); Thu, 21 Aug 2025 02:36:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1755758166; x=1755844566; bh=awCl8mZNDWUiA7LOi84dnKU9phxqklU6
	SWZAtwSFwMc=; b=J7juqJTvx//eV3PJ7g/3JHvO7F/qYTCA43EnQFhCnwFXE83Z
	lUa3dHNqasLVRZTEF9rISjkj9psjKBzHEzaw932+eKU6wIhOHnPIA14S4g4CBCJ3
	AllGN0Lq6k0UdJmZNaHAmd4T3Kmp7dvMHVgKAD2MiOwZQT48Gjf/yNYWXXl7ds8C
	FY1n5T9mQYOdVo7PfaDzhScLfNE1PEeuSyXfqF4NadhXm558YzmJ7+KXMWTDUQlU
	eiegecjvRNkdcFI+Z9LQq/+bv0kpF1YCjRfr7Y4ZAiWMFrZLqRpEzLmwPykdCVFv
	qjwUaCsTO69sr5wHIf+E4xGMVVkEz+zPUV5jjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1755758166; x=
	1755844566; bh=awCl8mZNDWUiA7LOi84dnKU9phxqklU6SWZAtwSFwMc=; b=D
	0ae8aPSqTIEc50/HBJTnrKhVO4Ey/y3sPTmlif7+DB+s/BQPCcgETKnO7orzLwJZ
	lKRWZlxAEKZe1ll2uttMEHEBMMuHkBJxUllI3gssxeTZhEFxILHUk2WiLPJIqz5u
	Pmpi1dIQoEk1X/E4cVIFvcxnJSoNnXPmRPoEQz2Xk6mN5rQQOnua1gOUCaUSVsAJ
	vqZcx5iVqGT/XZNsXd+gKS/IeD+lrsXh9x/tfDyUs4TtHPOtaozITNdZ4hAU9fx1
	atJBIs81OoV5luznkpIXDTsYIl2MX15aEfPfls7VqSsTgEKQBDOjlpQwpMpQEehK
	CeD8j1FtCyqp3QF9Gre0g==
X-ME-Sender: <xms:Vr6maJPsETLIxCzpY0xs-UQTZCjBh8RKyJ-uo_ty6aGgPJgy6KzhNw>
    <xme:Vr6maL_op0W_LTi4mR3vD0UbjjiJO_ruSoxb0IffE5fOLnxupSOXjE0lopwFdLqE3
    L6tDUClWe6eXL04GKY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduiedtheefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofgrthhh
    vgifucfotgeurhhiuggvfdcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqne
    cuggftrfgrthhtvghrnhepvdeitdeufeffheeltddutddtuddugfdtveffffekvdffvdfh
    gfejuedtgeeluddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghupdhnsggprhgtphhtthho
    peefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehkrhiikheskhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhi
    nhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrh
    drkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Vr6maM0C-vOL3QsoAgcqMBlvO-x1lGauUm1ll6E5xhD4hV3L_W8arA>
    <xmx:Vr6maB9pxkhQ-608VgtvyVD7WxNTOMeBjdgRpuXbyetcpaR5_Cw5Mw>
    <xmx:Vr6maMtcr2zjRUXBQB8U_gRKuqWOrszUOQhjyjdL4r8A1dAFiK_sbg>
    <xmx:Vr6maEDyFtdrtI6QBlzYk7aINfpFrO1RBmlQb082VSUKvCQlsJcxTg>
    <xmx:Vr6maL6XNoTFixNrjH3VVeY8CwJ-00ZRHRQC_ZZmwbJG3pzvbi1P9ZgJ>
Feedback-ID: i426947f3:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 747A515C008C; Thu, 21 Aug 2025 02:36:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: Abvx3TMA-vy3
Date: Thu, 21 Aug 2025 16:35:22 +1000
From: "Mathew McBride" <matt@traverse.com.au>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Message-Id: <26199775-297f-4b91-9cc9-ec06d0a86e7e@app.fastmail.com>
In-Reply-To: <58192df0-aa6e-44e2-9dfd-9e0402d1fe9a@kernel.org>
References: <20250813023435.27776-2-matt@traverse.com.au>
 <20250821061115.18254-1-matt@traverse.com.au>
 <20250821061115.18254-2-matt@traverse.com.au>
 <58192df0-aa6e-44e2-9dfd-9e0402d1fe9a@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: add Traverse Ten64 board controller
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

Thank for your feedback.

On Thu, Aug 21, 2025, at 4:19 PM, Krzysztof Kozlowski wrote:
> On 21/08/2025 08:11, Mathew McBride wrote:
> > Add device tree binding for the board (micro)controller on Ten64 family
> > boards[1].
> > 
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.
> 
Understood, my apologies.

> > The schema is simple and is (presently) only consumed by U-Boot, but it
> > is possible that it could be consumed by nvmem or other type drivers in
> > the future, as well as extended to future Traverse boards.
> > 
> > The categorisation as a "MFD" follows that of comparable devices such
> > as "gw,gsc", "google,chros-ec" and "kontron,sl28cpld".
> 
> That is not MFD device. Google EC is for example, but you have only one
> function. I think we will move all of them to some separate ec directory.

Noted, I will wait for that change to progress before moving any further with this.

Hypothetically, the ten64-controller may acquire some sort of "child" binding such as
watchdog and nvmem in the future, similar to the other "EC" devices, there just has not
been a need to do so yet.

[snip]

> > +  Communication between the SoC and controller is via I2C, at a fixed address
> 
> Either you make it a schema or drop it.
Is this in reference to the "fixed address"? In which case, I'll remove references to any fixed address.
> 
> > +  of 0x7e. While the controller firmware implements several functions, there
> > +  are presently no parameters that are configurable by DT properties, except
> > +  those that are required of an I2C bus endpoint.
> 
> This paragraph wasn't here before. It's completely redundant, drop.
Will be removed as noted above.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

Many Thanks,
Matt

