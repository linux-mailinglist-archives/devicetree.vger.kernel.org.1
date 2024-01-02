Return-Path: <devicetree+bounces-29170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE539821B28
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 12:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8D4328313E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 11:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C57EAC5;
	Tue,  2 Jan 2024 11:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b="k3OneBTh";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="uiHAKjnp"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C1CF9DB
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 11:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arndb.de
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 91E4E3200A96;
	Tue,  2 Jan 2024 06:45:22 -0500 (EST)
Received: from imap51 ([10.202.2.101])
  by compute5.internal (MEProxy); Tue, 02 Jan 2024 06:45:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1704195922;
	 x=1704282322; bh=lVTkJg3cjvcYbcVCRM3jEwk1bpjplmmOC1M0Z0hmekI=; b=
	k3OneBTh08tqoscwl4dIXVoPry+kCmejuelbg85RE8OONq6Wrw/7vjBfTg38tW2c
	gy1+TbV2xEOJU4c1CweKIgVKGuYYyM/KPfC6MiatsOWik6KDIBm8U6C4GGa9VBga
	uwYNRqZniFCrE0VRyLtX7JdtUM7XZfZKSlSA3VkZgOvm9m4TEC6shFYVkf5HYJsb
	iJqfe2vtsvrWWEXPybF3Pl4kzgw9Z8kEnyhs6pRpCRzc9De0l6pQnCNbdaWL00zm
	VAPUVdpmp9gxnCpAXYkXx7mwZu4Ep+AKRrKER/ug+8IZfeghmStJ4H9EjDje1wCO
	SpDRtMIw4oTCEbN3WSPc2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1704195922; x=
	1704282322; bh=lVTkJg3cjvcYbcVCRM3jEwk1bpjplmmOC1M0Z0hmekI=; b=u
	iHAKjnpN0YBw68MTQ8mSElSczQ24tUV32LaDWsmNRSJ6u80MFE1aqVNoq1fwh/L/
	+ZffLD3emWtonwtdHtp7ZzpIEnazajW97FYBvm1Cv+OVeTIIb5n6Kvs3QQGQUyre
	ue2udCOUlKkxssR1zVZJeVwaE091oEE/hzT2W+Hhsq+wCdF2wG9PFYyQJ0ZXMmVY
	uc4IfeejW44ZD10NRxqbs+Mxm3sfYw/YBpy47O1b6KTd90lAn0uS37Yuzfx8MJeM
	0MFt6u5OOGdhxPc2ENwKxH1iGotPv4IJ0XxJY1OVPOT5xM5ogfLCgCuTdW+IkFUz
	7AS684kAbdZ0Dc+FJGi+w==
X-ME-Sender: <xms:UfeTZa0cX-zxQaMGagWO0r2MRVFl5kXn7d_UGH98xxXW19-IzWp1Hg>
    <xme:UfeTZdG_tNUXuDecWnemKqtJBTrYTW7JmxGtKYk6LM0eqCj9p0By8Vsbghorj8-3m
    pgrK8r5noOKu7hhjzk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdegvddgfedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:UfeTZS7KV2yZHBfZMjIzr9ASSmLK9Jt3f3LtxdsMauxiUdqUPveQtg>
    <xmx:UfeTZb3VUYx-de1_qkHa2FchWjH4V_Y7G4SBAFYYyjFXO-t4nQrc6w>
    <xmx:UfeTZdGTX3FcGZS_XAPaOxPg8xZmukYHIBGlG_CndY0HhfiaPhW6dw>
    <xmx:UveTZV-8hnN-e1YNJKFFNfk6U1XPReYj7RBSvyWpSQZKI7sokD3ppA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C69DAB6008D; Tue,  2 Jan 2024 06:45:21 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1364-ga51d5fd3b7-fm-20231219.001-ga51d5fd3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <e0fae82d-aa6c-4341-bc56-1370dcf733b1@app.fastmail.com>
In-Reply-To: <ddbdec9b-f075-4c7e-9411-28baf1e68401@linaro.org>
References: <20231116130816.4932-1-zajec5@gmail.com>
 <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
 <d0734a8f-0b72-4609-a941-da4bdc3e323e@gmail.com>
 <ddbdec9b-f075-4c7e-9411-28baf1e68401@linaro.org>
Date: Tue, 02 Jan 2024 12:45:01 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
 "Matthias Brugger" <matthias.bgg@gmail.com>,
 "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Conor Dooley" <conor+dt@kernel.org>
Cc: "Daniel Golle" <daniel@makrotopia.org>,
 "Frank Wunderlich" <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 28, 2023, at 08:14, Krzysztof Kozlowski wrote:
> On 28/12/2023 08:03, Rafa=C5=82 Mi=C5=82ecki wrote:
>> On 14.12.2023 07:43, Rafa=C5=82 Mi=C5=82ecki wrote:
>>> On 16.11.2023 14:08, Rafa=C5=82 Mi=C5=82ecki wrote:
>>>> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>>>
>>> I sent those few trivial fixes weeks ago:
>>> [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan no=
de
>>> [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properti=
es
>>> [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
>>> [PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid=
 clock name
>>>
>>> Could someone pick them up, please?
>
> This should happen some time ago but...
>>=20
>> Anyone, please?
>
> ... exactly now, this cannot happen. We are way past applying patches
> for the next cycle. Please ping or resend after the merge window.

If these are bugfixes, I still take them, only new functionality
should wait. I still need a reply from the maintainers of course.

      Arnd

