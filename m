Return-Path: <devicetree+bounces-10594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD17D2305
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 13:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EF8DB20D6D
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 11:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9C979FF;
	Sun, 22 Oct 2023 11:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flygoat.com header.i=@flygoat.com header.b="GSyjkK5L";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="HE9xieyE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6062F51
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:54:49 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF93A1;
	Sun, 22 Oct 2023 04:54:48 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 356A65C038F;
	Sun, 22 Oct 2023 07:54:48 -0400 (EDT)
Received: from imap44 ([10.202.2.94])
  by compute3.internal (MEProxy); Sun, 22 Oct 2023 07:54:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1697975688; x=1698062088; bh=DN5UBlB7bax9/7Y1DfOiKcvIPgfPYmdiFSR
	bGNuHsR8=; b=GSyjkK5L4R2sYlW5Wq2aq2pjsH0hn/K7rTzY1p7vz69JNrGEJqV
	4OYW4HBjPaFZKWLOJl4jq3G+WK+FDLdEl0qOYhQEh+9iVX99dWeDa8wqxNgv9j37
	oOCYsiCXu/mNBW670UER8Mvg+d2vge73ZR5P0BjR3WvbuHeCN9IJFu23ZDZZTXTw
	Yz1Kb8Vnz+yWQBjPIeT+dEdn1XQTpFdK7+o9hWfBSHgBRZdUWrYTEjdDUC5aCDGi
	i0lbGSoGCFt/5kFr6l1c8/5qQskWOULCuixBEPveDqg5QYT5rPhJI6TKTyZbvUd5
	c63UP7zyBaJiMsrys7FbooA7Btn3fCqDJIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1697975688; x=1698062088; bh=DN5UBlB7bax9/7Y1DfOiKcvIPgfPYmdiFSR
	bGNuHsR8=; b=HE9xieyE4JTFsq67cWcXNc420Ub8ok9ED0GiVsI1zFrV91JyFw2
	/mH7FueCyJYbMIZVMLnyU4BPZ+BIPlUgoTW9X/25TobZGpRxbHMFUGAIJmXJkbp0
	1TmFvqjQEvYj/iQEcie/zoYV6XjwWwmOn29rJy263ynAdDQp8WRqiVBvCUcoo/kT
	7PNxGVVTcmTTJ1DObWdZTgn2SKj/e9Pb4yLXepSTrL5H2PP1xZNsgX6eplag47I2
	PitdMMsSsjap1JApsg7Dh4Bpl/reM7zqEYue/PPvEmaN8szrF+xGa76gdYY/Ap0y
	uyeDQt0+js90lpHw3suXGeSX9yWvudJ6REg==
X-ME-Sender: <xms:hw01Zbu8StA6SQlp88zjRM-Z5bViwU_Vbkf4CV9A0Dw5p-zMWo776w>
    <xme:hw01Zcd5vENx5si8IEqkqlN1AxsBDEBd7VdVH-EmglgMfDDkDXgsCt19UcJO3zsBb
    kQ5cgl-_GNlK7TgexI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkeefgdegiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedflfhi
    rgiguhhnucgjrghnghdfuceojhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomh
    eqnecuggftrfgrthhtvghrnhepudefgeeftedugeehffdtheefgfevffelfefghefhjeeu
    geevtefhudduvdeihefgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomh
X-ME-Proxy: <xmx:iA01Zez7fPnNByzqeqftjrF_6zOa9mlg_8bcedzZO7vAA-ralN6CRQ>
    <xmx:iA01ZaO3AK_SJdkdMmPoSnK5CgCeF7lcNMDaY32UuWYXLOinTibd0g>
    <xmx:iA01Zb9m0giJB4q2R__6TzSTIfXscRJ2G_yZJvxbuv56ZwpQorbwTw>
    <xmx:iA01Zc0mLKEED9SESr2ItuBmtCkqJGpMZMxFO5GIlJPJLpPMv2M2JA>
Feedback-ID: ifd894703:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id D66A036A0077; Sun, 22 Oct 2023 07:54:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1048-g9229b632c5-fm-20231019.001-g9229b632
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <32c626ee-5896-417a-bf57-b7e4216f1d25@app.fastmail.com>
In-Reply-To: <ZSgSIPxrnx2FmHsk@alpha.franken.de>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-3-gregory.clement@bootlin.com>
 <ZSgSIPxrnx2FmHsk@alpha.franken.de>
Date: Sun, 22 Oct 2023 12:52:04 +0100
From: "Jiaxun Yang" <jiaxun.yang@flygoat.com>
To: "Thomas Bogendoerfer" <tsbogend@alpha.franken.de>,
 "Gregory CLEMENT" <gregory.clement@bootlin.com>
Cc: "paulburton@kernel.org" <paulburton@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Vladimir Kondratiev" <vladimir.kondratiev@intel.com>,
 "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Alexandre Belloni" <alexandre.belloni@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 02/11] MIPS: use virtual addresses from xkphys for MIPS64
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable



=E5=9C=A82023=E5=B9=B410=E6=9C=8812=E6=97=A5=E5=8D=81=E6=9C=88 =E4=B8=8B=
=E5=8D=884:34=EF=BC=8CThomas Bogendoerfer=E5=86=99=E9=81=93=EF=BC=9A
> On Wed, Oct 04, 2023 at 06:10:29PM +0200, Gregory CLEMENT wrote:
>> From: Vladimir Kondratiev <vladimir.kondratiev@intel.com>
>>=20
>> Now 64-bit MIPS uses 32-bit compatible segments KSEG0 and KSEG1
>> to trivially map first 1/2 GByte of physical memory. This memory
>> used to run kernel. This mean, one should have memory installed
>> in this area in order for Linux to work.
>>=20
>> Kconfig CONFIG_USE_XKPHYS introduced; it adds support for kernel
>> to use virtual addresses from the XKPHYS segment for both cached
>> and uncached access. XKPHYS allows to access 2^48 bytes of
>> memory, thus allowing kernel to work with any memory
>> configuration.
>
> IMHO it doesn't make sense to introduce an option for a generic
> kernel, which then renders the generic kernel useless on all
> platforms other then yours.

Actually it won't. Many 64bit platforms do support load kernel to
XKPHYS, including boston and Loongson64, so it's still a generic
function.

IMO this patch won't break support for any generic platform.

>
> Please don't use generic, but setup a new platform for it. Hopefully
> we can get rid all of the weirdness in this patch.

Perhaps better to introduce a Kconfig option to allow manipulation of
kernel load address.

Thanks
- Jiaxun

>
> Thomas.
>
> --=20
> Crap can work. Given enough thrust pigs will fly, but it's not necessa=
rily a
> good idea.                                                [ RFC1925, 2=
.3 ]

