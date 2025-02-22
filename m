Return-Path: <devicetree+bounces-149908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD745A40C2A
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 00:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077691898D4B
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 23:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 724502045B8;
	Sat, 22 Feb 2025 23:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="BI0ZfMfY";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="xDHK+hdA"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a8-smtp.messagingengine.com (fhigh-a8-smtp.messagingengine.com [103.168.172.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E11A2397
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 23:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740267608; cv=none; b=mWaLqF0yf9Lz1wiKvTXXGPpRmMuIhai7D0mXOjsbTXHJ6h49PG3BdzH8+BDgtlPoujXYet1PJascKd+zkavPOExw/sZPP1jhl8oc87ZfP1o29CU6b/8eoh31bk/Nd8vPSY63BJlFoZH5d1Ctf/+EvzkHhXqeeFg2AVqx3E4e1yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740267608; c=relaxed/simple;
	bh=qcp/r+2yiSjBXLjr77eGZQe7SQxHR3bGWzNYiZuHIZs=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=NfcDp/PkIgzi68rGM3fOXAM5mSngF+gsMCFkOBxhyeyoAt2UWU95ihhmeSc6q4FWQunxAJ6X7j5jL9Foi66oxR5rSQnvLKAuZn2pybYTJ3X6g6hwh1/hmmqYYl7EDLoEb78SO/eh2F3YyCdrgCSStXKTCJKIcOaJRErXFC3HQaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=BI0ZfMfY; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=xDHK+hdA; arc=none smtp.client-ip=103.168.172.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-13.internal (phl-compute-13.phl.internal [10.202.2.53])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 569F911400E2;
	Sat, 22 Feb 2025 18:40:05 -0500 (EST)
Received: from phl-imap-07 ([10.202.2.97])
  by phl-compute-13.internal (MEProxy); Sat, 22 Feb 2025 18:40:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1740267605; x=1740354005; bh=0G9GKdeKSYZ3LWo2VXAgcMsNqDKh2Dpi
	L0hMKGFwFBw=; b=BI0ZfMfYtJdfydRbGbBGYM2lHDiqUgmB+Y1YWhFttnR8Rgdx
	gdNhxwHnxzBWU4w13nKce8wbactgWyJ4VjuTUAcQi61bLnRChEOqFUYNt1JQelX/
	W89tBZFDi7rdX3tB48Rp+sZxQdrism9HTWdY1l1FDxmSoTX9LH4Zw7bFkfrTlm0d
	HWImAB7QZDukgSZs8FtjqfH52G6hBSJOFlN7JhXV3K9UHGiH1t9HMJNK4dBx6Ju1
	UPrWTwIAb4T4mXdmkzBMRtwlAX514pIWr3+iLP8eCm6Mkv0kU8t0tAnmMvQONYPX
	AdGWiP3PL0b42cE4z4gUA1T22PR9/NuHmVs+TQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1740267605; x=
	1740354005; bh=0G9GKdeKSYZ3LWo2VXAgcMsNqDKh2DpiL0hMKGFwFBw=; b=x
	DHK+hdANk5rPYN1/Iq1V3MGU58fAZEw+YzTvSp16YHPJQzL10jJ4Le1LOQc+Fh2b
	NScD81p1iDZo4znuadxa5y1ajz64oYRxJc2GGvCfmKqYbjCy7pDGsUItzPMBChKj
	k7Z9cLq2HWfPR38sICvXMTbRcnVHAuKw9Ou6BByO/g/ypz2Y+HkK4g7BDuUyppri
	45dIyVCOw7d8cIRdmYlcZ0wKKgB6ojTpLrwPdXxAMYctrj+Q20S+zWMYG92oQ2hM
	7Fic+Z0ZhoggWNVPFYIzZ3pMOwNiW7ch77eY7FeueAJe1uTQxXqSIeO4c1hl865H
	WOZPsL+JDQ/ICyC1hLULg==
X-ME-Sender: <xms:VWC6Z9Piqh4uKoQ3cPnosXYqgqiIylgqhID-QMWJC1b1qUIgDA9QmA>
    <xme:VWC6Z_9BBvNF3-fVNyRxQXKoyd5BHFMvoHd9uHnxLqIw1U7777KeHXS8l1iddwzKr
    WbGf7Q23FysSc8aeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdejgedvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthhqredtredt
    jeenucfhrhhomhepfdfthigrnhcuhggrlhhklhhinhdfuceorhihrghnsehtvghsthhtoh
    grshhtrdgtohhmqeenucggtffrrghtthgvrhhnpefhvdetfffhffejteetieffheekuedv
    tdehieevtdelueejhfejudeiteeivdfhgeenucffohhmrghinhepghhithhhuhgsrdgtoh
    hmpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghpth
    htohepudefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrnhgurhgvrdhprhii
    hiifrghrrgesrghrmhdrtghomhdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpd
    hrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhlrdgtohhmpdhrtghp
    thhtohepkhhikhhutghhrghnleeksehgmhgrihhlrdgtohhmpdhrtghpthhtohepmhgrtg
    hrohgrlhhphhgrkedvsehgmhgrihhlrdgtohhmpdhrtghpthhtohepshhimhhonhhsrdhp
    hhhilhhiphhpvgesghhmrghilhdrtghomhdprhgtphhtthhopegtohhnohhrodgutheskh
    gvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhg
    pdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:VWC6Z8SLaQk00of6S9lw02jmzoertg_38eesUWjV4Baj0zU8PUdunA>
    <xmx:VWC6Z5sGFuv38W8EjUMozP6qZrbdh2YDc0NdbkKXNxOAbt-6ziFHoQ>
    <xmx:VWC6Z1fWd58-B38KlwfpCQ-izK8qwt2gnk3FOmAub1Kpf_bCz8yNpg>
    <xmx:VWC6Z10JsxsfIhv4LMRmyYDlBAlt5Av5T83zSPgboiTq0JJ5_k_zvQ>
    <xmx:VWC6Zz1idWDQ_Fbf_A_IqaJTG4DW2dGser9V8FP8qDAI5PLVvPmnrWBn>
Feedback-ID: idc0145fc:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 26685BA006F; Sat, 22 Feb 2025 18:40:05 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sun, 23 Feb 2025 12:39:43 +1300
From: "Ryan Walklin" <ryan@testtoast.com>
To: "Jernej Skrabec" <jernej.skrabec@gmail.com>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Chen-Yu Tsai" <wens@csie.org>,
 "Samuel Holland" <samuel@sholland.org>
Cc: "Andre Przywara" <andre.przywara@arm.com>,
 "Chris Morgan" <macroalpha82@gmail.com>,
 "Hironori KIKUCHI" <kikuchan98@gmail.com>,
 "Philippe Simons" <simons.philippe@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Message-Id: <b1e36d92-552e-45b9-b93b-76f369e1a235@app.fastmail.com>
In-Reply-To: <1916004.CQOukoFCf9@jernej-laptop>
References: <20250216092827.15444-1-ryan@testtoast.com>
 <20250216092827.15444-6-ryan@testtoast.com>
 <1916004.CQOukoFCf9@jernej-laptop>
Subject: Re: [PATCH 5/8] arm64: dts: allwinner: h616: Add TCON nodes to H616 DTSI
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Sat, 22 Feb 2025, at 10:45 PM, Jernej =C5=A0krabec wrote:
> Dne nedelja, 16. februar 2025 ob 10:27:12 Srednjeevropski standardni=20
>> Add TCON nodes for the TOP, and the LCD and TV timing controllers. The
>> timing controllers are compatible with the existing R40 driver.
>> +			resets =3D <&ccu RST_BUS_TCON_LCD0>, <&ccu RST_BUS_TCON_LCD1>;
>> +			reset-names =3D "lcd", "lvds";
>
> That's not true, is it? LVDS should be LVDS reset. Check my WIP patch:
> https://github.com/jernejsk/linux-1/commit/8b090dc866d4c4b5b0a1804da02=
1a9f44c67d5f1

Thanks, will correct for next version.

> It turns out that H616 clock driver missed LVDS reset, as it can be=20
> seen here:
> https://github.com/jernejsk/linux-1/commit/88bad1a59876f5d385bcd45a363=
784ed2beec6ae#diff-b340c978bcdbe240f7b99f4d0d96ea130a8acb1a5786a8efbb24d=
9e7a0b14e53R1084
>
> I also commented on this series:
> https://lore.kernel.org/linux-sunxi/20250213172248.158447-1-macroalpha=
82@gmail.com/T/#t

Thanks, I will add those in for next version with this patch.

Regards,

Ryan

