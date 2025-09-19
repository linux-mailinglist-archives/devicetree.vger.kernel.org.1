Return-Path: <devicetree+bounces-219088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48975B87746
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 02:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C54216C350
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 00:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EC834BA5A;
	Fri, 19 Sep 2025 00:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b="bQRgSfLf";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="XTzOJH8L"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080C579F2
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758240983; cv=none; b=Femn4wt0D71DRrFoBHmLmPh8YOSrmZI0tOx9UV3gQdu2Yz6hq/8CUpcbacEKQsfQEgjqG/nofBB693bw4SP2e2CP01Xs+5RGNmuwo+aJ+UmpgYVI2jgP3iAZDG7kzvEQwFMiwgLgsugck9mpE1uKI/70s4Zvc0v1MV0G67Prx8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758240983; c=relaxed/simple;
	bh=xleZcsCinMchh6C0BPsur1lY0vz/DDe7FZmlTielDRo=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=FQPNHHUt/onh2XutpVwQgkA+bxTHXgdEQs6Zbv4DWFFXj3W1mfp2eN7NVBS8RmKjJy+5tyZfm7CLedovLnYDWS6W5wTaFNbc3qrMo0wZH1STzjyKv6rdTNhLpJ1benPINMQLfm7sC8ER/Rj4REHsMkdz2RDf3CMPUgP2yLlMxVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au; spf=pass smtp.mailfrom=traverse.com.au; dkim=pass (2048-bit key) header.d=traverse.com.au header.i=@traverse.com.au header.b=bQRgSfLf; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=XTzOJH8L; arc=none smtp.client-ip=103.168.172.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=traverse.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=traverse.com.au
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id E8F851400175;
	Thu, 18 Sep 2025 20:16:19 -0400 (EDT)
Received: from phl-imap-18 ([10.202.2.89])
  by phl-compute-01.internal (MEProxy); Thu, 18 Sep 2025 20:16:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm3;
	 t=1758240979; x=1758327379; bh=vEGJRFKTNrsJE0HCbcK9vp/Iv76/uJJd
	ZCX2X7FKaRs=; b=bQRgSfLfxYtxeK2ZY1mNg5iMzaMmb8PtsCSnTRIS5u9+/9F/
	DRKlgR/9oRthRfpGe1UEEGF+Dxl+scqYzVGemCLPgUfDv0CG4DZKoEIKdy5SEq82
	ybRnpPKs7qvtW4NIUjmBBRM9jfU9BRY48RDUeXZOkCm8QVNerhVrn6v8BkJIt732
	9oi6K1hyO3nIjDWK9RhXH9TZ32Jhg5Cggfx29Z0kbTBNeL8YSv0hUKsFm3E6t+Q1
	ZuKlWofVsYoXinEOAKPHe877+4MWD79s2kU+IZBC3g0pJdF75Ro+41R47Z0WoKgu
	7QUozTf9PJvF/paYRrcWOFeRqNC54hRfgOGLXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1758240979; x=
	1758327379; bh=vEGJRFKTNrsJE0HCbcK9vp/Iv76/uJJdZCX2X7FKaRs=; b=X
	TzOJH8L0oYawVfbQtdJY/K7nPMTEMrCn32tzXzAu4zm5B3VDROTVlj+tKmJiwTEx
	aROqItV4IGLA5MY3+yF3US40cy8h0RhtfcrvYjeeKCSba5Jatkat7k1rO3Z199Ta
	OSVs2Ef+eiiNjF0OhAbD2ODdniPFrv2zAKJFZrmI8pSxv+WYU52mqj6zBwKGaFBn
	y4ALaP/LS3uMH+xX4wjXgLtHD+0HtfGkNZeEcJ2J1LbDJGKLpnQS9UCYC7wdrBys
	g84pWZ8IKX/wwHh0OmqjyM0PngKSuFo/DMak+5zJDEaRTp9OM6//uykN97RwzIgY
	c564QtJ4iOmVwi75XmFBQ==
X-ME-Sender: <xms:06DMaCbjYrQyeHtnlD6C5vM0U3hxJvrl9DrOcANoA0Jyukkb_xcE8A>
    <xme:06DMaFb3LElbYUKxxGZD8CASwsm-KUoqM8cEVU5bHaVlaYcsQP5XROBa-L_jIqIh7
    z0xjJXG24oV-9zd0Bc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggffhffvvefkjghfufgtgfesthejredtredttdenucfhrhhomhepfdforghthhgv
    ficuofgtuehrihguvgdfuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenuc
    ggtffrrghtthgvrhhnpeffudeiledvtdekkeeuvdegheetveduvdeivdeuieeiheekleel
    ueetffdvgeeikeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhs
    vgdrtghomhdrrghupdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpohhuthdprh
    gtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhr
    iihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhgvvgeskhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehs
    hhgrfihnghhuoheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmh
    dqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohep
    fhhrrghnkhdrlhhisehngihprdgtohhmpdhrtghpthhtohepuggvvhhitggvthhrvggvse
    hvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:06DMaAFzKQ1iBw3Ukqx8FgeJPd-kAiO33j-Rd8i8e4FspevVBh7kWQ>
    <xmx:06DMaAEuqD2L2wg1U9MRAQhwv6nyvm6ISbGPt-rEVd01ZBJZKsoovg>
    <xmx:06DMaL5ckNPCCxaOzyH5_otnq5lLPoBOscM1iEFkNopHB7TNr8tNOA>
    <xmx:06DMaNwFEJKHrHYApVkJuupNarcT1ucEOZbDBR1BRry9rcz2oCrfQA>
    <xmx:06DMaCUOoqjVkgr5-Zhs78YYBLZ7TmkM4Tnq7r1scgKG-Wm9teQbcBwG>
Feedback-ID: i426947f3:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 6429E15C008C; Thu, 18 Sep 2025 20:16:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: A_NFvKLCkkX-
Date: Fri, 19 Sep 2025 10:14:53 +1000
From: "Mathew McBride" <matt@traverse.com.au>
To: "Frank Li" <Frank.li@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Shawn Guo" <shawnguo@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Lee Jones" <lee@kernel.org>
Message-Id: <c757c692-2fd2-41fe-9499-bdd48a71f0a0@app.fastmail.com>
In-Reply-To: <aMw3t691HHwCQc+g@lizhi-Precision-Tower-5810>
References: <20250918061441.5488-1-matt@traverse.com.au>
 <20250918061441.5488-2-matt@traverse.com.au>
 <aMw3t691HHwCQc+g@lizhi-Precision-Tower-5810>
Subject: Re: [PATCH v5 1/2] dt-bindings: embedded-controller: add Traverse Ten64 board
 controller
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

Hi Frank,

On Fri, Sep 19, 2025, at 2:47 AM, Frank Li wrote:
[snip]
> > +properties:
> > +  compatible:
> > +    const: traverse,ten64-controller
> > +
> > +  reg:
> > +    const: 0x7e
> > +
> 
> only have reg properties,  can you put to
> Documentation/devicetree/bindings/trivial-devices.yaml

I submitted a version of this binding as a trivial device a while ago (2023) and it was not accepted:
https://lore.kernel.org/linux-devicetree/c44a73f0-5b34-c740-40c9-afb04bf1c6ab@linaro.org/

Even if it were to be accepted today as a trivial-device, my concern is that we would end up with this schema again should we expose any functions of the device, for example, as an nvmem device.

Best Regards,
Matt

