Return-Path: <devicetree+bounces-8292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 094D17C7819
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B71D1C20A1D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607693D970;
	Thu, 12 Oct 2023 20:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flygoat.com header.i=@flygoat.com header.b="rJRlgRpG";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="IbEzv8FB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2C03D971
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:51:12 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40B87CA;
	Thu, 12 Oct 2023 13:41:20 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 35F223200B37;
	Thu, 12 Oct 2023 16:41:14 -0400 (EDT)
Received: from imap44 ([10.202.2.94])
  by compute3.internal (MEProxy); Thu, 12 Oct 2023 16:41:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1697143273; x=1697229673; bh=Kcx2chQljPp1tO/RTaI3fBXk8864d+5dqsf
	CYXZoMXY=; b=rJRlgRpG0v+aFSEnYV5yUdnk8chd0XOqsm+FEQ+dQmn8KgHPA98
	IK9kHWFRXx6rwNcWu4DczT7uz4qWT4lm25rLGUm8u3xF6ONyrr2fsYJM2U+r/7v6
	5AkYBAhSGeyiw6lFxXvLhFSd8ha6BU4wGHjRGpKpDgZD8vO9HPSESnko3hMBTX76
	7xef4ex0to/kkOHJSy2MATuFzPM7cDj+OygowP5UkK89dNi2LZnlxro8DBu6VLaC
	7wLtJa+bm7Kr5xBVhlMM+lFe6+p9ZgKh7FTRzFFjxKrDXT41STfosb6vgIBnIAC0
	cz1W5I7FVx0RvHS89CzJHuxXVbgICNSbpAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1697143273; x=1697229673; bh=Kcx2chQljPp1tO/RTaI3fBXk8864d+5dqsf
	CYXZoMXY=; b=IbEzv8FB9FajJZsu6CyFe0MV4PqB6XXzBLEwaOl12s8pz3x6zJb
	riJYZpepjEglaEWbb/9QM0FqPYkfKOXT1+ZoN9SJTV67m+MAEFNeZ1cMdzqYQ999
	MkdMzMfNk/REbYThagYky0NxMAVH3OJTPFQP6UoJiaX6LqEcp43qAu+5OVF45FHo
	LGoioNFenrq4jKUMSaVVNmjd4BTbw5k6NzIrxizNV+ygq93TNyfgTaLxitmstdhL
	9PlliNUEiyVpA9Y0NHhTOA1LP+FXnisystXN7ChH/LVtJ+85b3s6IdIYIhEJLSNl
	hIO2qzbP6nJgt6ZP5TcPOlOKooxMWMJ9ZTg==
X-ME-Sender: <xms:6VkoZSnQzxqL6AApKeEqwtxX28l7eT7u1dgCgxGHBwnRAcLVlnKUhw>
    <xme:6VkoZZ2TQts-Z8BhJjaNdZJP_ojbLmnxHoyeqWyNX8efqydymZwzwyp6n3gRHxGJo
    -c5WozGIoT4vkXZNi0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedriedtgddugeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfl
    ihgrgihunhcujggrnhhgfdcuoehjihgrgihunhdrhigrnhhgsehflhihghhorghtrdgtoh
    hmqeenucggtffrrghtthgvrhhnpeetleegheefvdejfeeftdfhtdevfefgjeeufefgiedu
    vdetheefheefgfelfeehudenucffohhmrghinhepvghlihhnuhigrdhorhhgpdgsohhoth
    hlihhnrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomh
X-ME-Proxy: <xmx:6VkoZQpAFF4boud0oyFbVlqvnKkbuK66Lp6F4DzvGhhn0nXXSwXEEA>
    <xmx:6VkoZWmsQzq_uXYtTw7hEwiyxpniJvQFmjiA67IlMuWZu2SfKbOIGA>
    <xmx:6VkoZQ2DxtaP7_1M_DmutKn__3vm9v-4Q9drRwf4JQiQJjbOtkv64A>
    <xmx:6VkoZZvyt-dhkR4-zVaYN-kGkHx46ilb3jQZUk9-0cOAP7H1Vwpayw>
Feedback-ID: ifd894703:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3734536A0075; Thu, 12 Oct 2023 16:41:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1019-ged83ad8595-fm-20231002.001-ged83ad85
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <b35d73e8-260e-4296-a710-f20676e17c27@app.fastmail.com>
In-Reply-To: <878r89b4jh.fsf@BL-laptop>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-4-gregory.clement@bootlin.com>
 <f98d0cf9-6339-4cb1-8019-56bc71bfb822@app.fastmail.com>
 <87edi3bxcl.fsf@BL-laptop>
 <e5b8c68e-8a1d-45e7-92bf-db0c2fa812ad@app.fastmail.com>
 <878r89b4jh.fsf@BL-laptop>
Date: Thu, 12 Oct 2023 21:40:52 +0100
From: "Jiaxun Yang" <jiaxun.yang@flygoat.com>
To: "Gregory CLEMENT" <gregory.clement@bootlin.com>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "Thomas Bogendoerfer" <tsbogend@alpha.franken.de>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: "Vladimir Kondratiev" <vladimir.kondratiev@intel.com>,
 "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Alexandre Belloni" <alexandre.belloni@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 03/11] MIPS: support RAM beyond 32-bit
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,NO_DNS_FOR_FROM,RCVD_IN_DNSWL_BLOCKED,T_SPF_HELO_TEMPERROR,
	T_SPF_TEMPERROR autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



=E5=9C=A82023=E5=B9=B410=E6=9C=8811=E6=97=A5=E5=8D=81=E6=9C=88 =E4=B8=8B=
=E5=8D=883:46=EF=BC=8CGregory CLEMENT=E5=86=99=E9=81=93=EF=BC=9A
> Hello Jiaxun,
>
[...]
>
> There is a kind of mirror but its physical address start at 0x8000000
> so beyond the first 512MBytes that are used for KSEG0.

Really, KSEG0 range is 0x00000000 to 0x20000000, and 0x08000000 to 0x100=
00000
is definitely within that range.

But I'd agree that 0x08000000 to 0x10000000 (32MB) seems too small for k=
ernel
text and data. So yeah, it makes sense to load kernel into XKPHYS.

My sugesstion is, kernel does not have to be aware of the mirror deisgn.
Say that you have DDR fully mapped at 0x100000000, you can split memory
space into two trunks: 0x08000000 to 0x10000000 and 0x102000000 to end
of the dram. Since memblock always allocate from first continuous range
in system, we can guarantee that ebase is allocated with in the first
trunk.

Thanks

>
> In short the 32bits mapping is the following:
>
>  - the controllers registers of the SoC are located  until 0x8000000,
>  - then from 0x8000000 to 0x10000000 there is the alias to low address=
es
>    of the DDR
>  - then the SPIflash is mapped to from 0x10000000 to 0x20000000
>  - after the PCIe Memory 32-bit addr space is from 0x20000000 to
>    0x40000000
>
> Gregory
>
>> [1]: https://elinux.org/images/1/1f/New-tricks-mips-linux.pdf
>
> --=20
> Gregory Clement, Bootlin
> Embedded Linux and Kernel engineering
> http://bootlin.com

--=20
- Jiaxun

