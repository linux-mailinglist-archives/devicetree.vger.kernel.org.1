Return-Path: <devicetree+bounces-77811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72D9100B0
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 393FA1C20B48
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88B1F19DF51;
	Thu, 20 Jun 2024 09:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="SW8BwNrm";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="vk7XYibv"
X-Original-To: devicetree@vger.kernel.org
Received: from fout5-smtp.messagingengine.com (fout5-smtp.messagingengine.com [103.168.172.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BC7433BB
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876738; cv=none; b=ac3xkzmpwDOgmylGAKZMhh853skL5BlvLJoA1Mr3h12JTECFrWZtQ96O4ibZz3XHzaFt7YAxgt5VJT6vaDRMVGKy5HVM79S1DgHQfr3VZSo6w4OevxzzhH8pNsIi9SgRwb4LVm5+W6402KMubkwvpSk3vCwsX3dWuz9frde3hMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876738; c=relaxed/simple;
	bh=CUc1gDLpC345RTrFQKC24CcXBEu62C/dxC9CC6Wpmgk=;
	h=MIME-Version:Message-Id:In-Reply-To:References:Date:From:To:Cc:
	 Subject:Content-Type; b=My4fzTqCUpPcP0yc/m0MlOyz7zVYBoNhuLT54jsTA0YIc6DInbC08RQRSlJ7ZeKKJ9zgJVWdgXUhz3zk2iCvKmiUc8gS8T+o6RFXeFrqvjN8xJkuiEFPudky5BIBywC5pSqAiGuPI6Cy3WwbitfPCecUrMgJOmjecnU04bYW1fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=SW8BwNrm; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=vk7XYibv; arc=none smtp.client-ip=103.168.172.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 67F821380591;
	Thu, 20 Jun 2024 05:45:35 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
  by compute5.internal (MEProxy); Thu, 20 Jun 2024 05:45:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1718876735; x=
	1718963135; bh=mUhzbzChIylmEGH0/MJ86mZWNAZXM70UzMOFDHyCHRc=; b=S
	W8BwNrmyAlxh4M3o6vqcHtvwHb7YD6FXoF6KLuL145oJnEk+e1LUhWovpxMtoM3f
	rvR1bwJFansf7WeY/xDfqcqUS945fdQxrJsoDI38NkQY38NSqVluhrDDQcbdooEt
	mJUGLgKyrqKY+Pjq6loRQ+oACSPCCV+ma4wEzEvyIzqFL/yKgVXsbHX4SvRF+bZH
	GmYj6NVanpdeoUyk10PWGys9EZDrNyt459/F0RYRtHJcgiEf4rWVu9xBX6K85B8a
	Dxb8gyrSj+BVtbYsFIzNWB32VhckRDF64tqvm5aWTlQ6VmOVvQAg+D42FB/S4ZUE
	U7MfMI9Nbv3nRFmlaKlbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1718876735; x=1718963135; bh=mUhzbzChIylmEGH0/MJ86mZWNAZX
	M70UzMOFDHyCHRc=; b=vk7XYibvZm+OT/nXT86A2p7eXQ/lHr4lqzbw6oC+bvng
	89JObMGFy6Ja9U3r4ibObK7uz72p0NrvNubBH0BuQO29eU6uyBBYmE01/7TXKVpm
	nAg03shghZLHCB7lL/5wSnTUCD6w5nQFifSJhkfFrmtMWFiqYMnuRry1R44nd7UY
	bl09EpdGddkdgbVGD7+ckrBntNX+hXyhmCYecUP9M52Nt+80DqlkoRB7qVRZXdXT
	MVj9NFU6MNDnzoLvakiaZw+hHd324omBxARZDBYfEgEgc5ueQyoq/pxjnsHXNNuY
	OAtETQdBigz4CIeatsPhUL25L9xP+gVKDXuNoV/6/g==
X-ME-Sender: <xms:PvpzZpauLmSOstUAwPog9nIXc1bPeIsbPswpUfeeP76F2AbIlYM-Rg>
    <xme:PvpzZgY2-eZT7fs3JFoSjIYDywFOfeLfYV0bOXBbPEnHBfFUv_wFWojwgTXulfuQ9
    Ugv8q3fWgIsBkkDXg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeefvddgvddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftfih
    rghnucghrghlkhhlihhnfdcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecugg
    ftrfgrthhtvghrnhephedvveeigedujeeufeegffehhfffveduhfeijefgtdffteelgfet
    ueevieduieejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheprhihrghnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:PvpzZr-8jTf_9URxOSVlD4LczVtsMPba6DBeplMNB30Bd8EdtrE92A>
    <xmx:PvpzZnpj5OXFj_0GW--D1B3VYJTwhkzRANZzBg0TSDMHPRzCHtSy7g>
    <xmx:PvpzZkq7WdD5v8hyCf_o7bCKwq9mgxeJcXY8WuCy8iuPFJny7RPfow>
    <xmx:PvpzZtTWl6mKCyJ75JAQDIWg3fpYNT132IU-la1FYIW6INJwn2bKvA>
    <xmx:P_pzZgaQkX4ibclyEAGzEJJ_nbtEbxDWi4rteQ4yE_6zICkSMfPqN2aF>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A5567A60079; Thu, 20 Jun 2024 05:45:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-522-ga39cca1d5-fm-20240610.002-ga39cca1d
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-Id: <d02c238c-766b-4463-96a9-dd6373b173bb@app.fastmail.com>
In-Reply-To: <20240616224056.29159-6-andre.przywara@arm.com>
References: <20240616224056.29159-1-andre.przywara@arm.com>
 <20240616224056.29159-6-andre.przywara@arm.com>
Date: Thu, 20 Jun 2024 21:45:13 +1200
From: "Ryan Walklin" <ryan@testtoast.com>
To: "Andre Przywara" <andre.przywara@arm.com>,
 "Joerg Roedel" <joro@8bytes.org>, "Will Deacon" <will@kernel.org>,
 "Robin Murphy" <robin.murphy@arm.com>, "Chen-Yu Tsai" <wens@csie.org>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>,
 "Samuel Holland" <samuel@sholland.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>
Cc: "Chris Morgan" <macromorgan@hotmail.com>,
 "Philippe Simons" <simons.philippe@gmail.com>, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 5/5] arm64: dts: allwinner: h616: add IOMMU node
Content-Type: text/plain

Hi Andre,

On Mon, 17 Jun 2024, at 10:40 AM, Andre Przywara wrote:
> The Allwinner H616 contains a scatter-gather IOMMU connected to some
> video related devices. It's almost compatible to the one used in the H6,
> though with minor incompatibilities.
>
> Add the DT node describing its resources, so that devices like the video
> or display engine can connect to it.

Thanks, tested working with the display engine on an Allwinner H700 device (Anbernic RG35XX Plus).

[    0.038060] iommu: Default domain type: Translated
[    0.038080] iommu: DMA domain TLB invalidation policy: strict mode
...
[    0.175075] sun8i-mixer 1100000.mixer: Adding to iommu group 0

Tested-by: Ryan Walklin <ryan@testtoast.com>

Regards,

Ryan

