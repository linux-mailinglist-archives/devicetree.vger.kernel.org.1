Return-Path: <devicetree+bounces-216038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7560B5378E
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52217188DBFB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0B334AAE3;
	Thu, 11 Sep 2025 15:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="ZUe3bjsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E889320396
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603920; cv=none; b=SnngCjKOxsqNtJb1fq1kLMls2eIXoTsIMV/EoR68wfmC3JBXht42xeksyl01uA+fsnQ5BqWifju1hr5Ov2V898rd0dGCSoKDl/++3zPxnrTlLh6fTYTZTMTRZ40V348miFtQaWmbwkz9UpJPFTjLfnSM8qjKgoZNzkG1zZdeVg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603920; c=relaxed/simple;
	bh=hc3dUcHCaVL6mfc+FqBmuvBNY/4uYw4lI6GvjoLkpE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u1OjiTixDLOPVKabdgUqh1ZOZWNAIwtm8s5L/Q/hz8mrgtSftwQgJOwjeruql2kvEQG+LJcov2cG5vb5WhebfCDZvr5jNshPeTBeZWH4zs0o/wQe4o+r7oteEa7mzMozMReXHI0NxTiSew0YFbjQfSUo6N8ximxeYBumrv+1Tmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=ZUe3bjsr; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id CC9C4240104
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 17:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1757603481; bh=Ffc678fQhzI/pdu+hLX+ARqrXJLZH6TSQWiX1NPHrZM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=ZUe3bjsruZMS8OXPHTu+2WWZgnBbjttVjalAmo3H50EDD8LdFL/vHH16DHk6xH1uM
	 JjqtvD4jO7w2SM1VFWTjZMD7Gtpq3mCxoEUu4Xk3zfisSzPXDqH4v4emcH576iS7C1
	 WdynKmINw+wjEnNNZCNA+P+y25JIx2bfWp2yk5Y2X84VbyJniX7Jn9YXVatSCJz1qN
	 ORWjKl77pm5xTbxOoFbztrxhFkgxBZbMCFR8iQ+IF5cf9qZbTZp2pP1QFqfxABRwKV
	 uzk4K1a04rwPO1GFPj44GpCNmLyTTvAedDfSJQPk46JWcKneiqPalhpaTEkZQ+d/1x
	 DEj8LrGHULeuA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cN1Gt4zm0z6v15;
	Thu, 11 Sep 2025 17:11:18 +0200 (CEST)
Date: Thu, 11 Sep 2025 15:11:21 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Chen-Yu Tsai <wens@csie.org>
Cc: j.ne@posteo.net, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] ARM: dts: allwinner: orangepi-zero2: Add default
 audio routing
Message-ID: <aMLmlsZimgKVeiUF@probook>
References: <20250809-opz-audio-v2-0-f4fd15552a82@posteo.net>
 <20250809-opz-audio-v2-2-f4fd15552a82@posteo.net>
 <CAGb2v671xTaWkRD0xVPsgGWvykAwPESXuBLgDz-oo4ywOJ=5Xg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGb2v671xTaWkRD0xVPsgGWvykAwPESXuBLgDz-oo4ywOJ=5Xg@mail.gmail.com>

On Wed, Sep 10, 2025 at 08:58:49PM +0800, Chen-Yu Tsai wrote:
> On Sun, Aug 10, 2025 at 12:18 AM J. Neuschäfer via B4 Relay
> <devnull+j.ne.posteo.net@kernel.org> wrote:
> >
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> 
> The subject is misleading. The Orange Pi Zero2 is a different board with
> the H616 SoC.

Oh, indeed. I got confused. Thank you for catching this error!

J. Neuschäfer

> 
> ChenYu
> 
> > The Orange Pi Zero Plus 2 has the same pinout[1] as the Orange Pi
> > Zero[2] (with the possible exception of line-out left/right being
> > swapped), and the Orange Pi Zero Interface Board is sold[3] as
> > compatible with both of them. We can thus use the same audio routing.
> >
> > [1]: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-Zero-Plus-2.html
> > [2]: https://linux-sunxi.org/Xunlong_Orange_Pi_Zero#Expansion_Port
> > [3]: https://orangepi.com/index.php?route=product/product&product_id=871
> >
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> >
> > v2:
> > - new patch
> > ---
> >  .../boot/dts/allwinner/sun8i-h3-orangepi-zero-plus2.dts    | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/allwinner/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/allwinner/sun8i-h3-orangepi-zero-plus2.dts
> > index 7a6444a10e2534458b7380882ea4fd42bd54fea8..97a3565ac7a819be6b18d324fa6f65d0d1d2b2ad 100644
> > --- a/arch/arm/boot/dts/allwinner/sun8i-h3-orangepi-zero-plus2.dts
> > +++ b/arch/arm/boot/dts/allwinner/sun8i-h3-orangepi-zero-plus2.dts
> > @@ -99,6 +99,20 @@ wifi_pwrseq: pwrseq {
> >         };
> >  };
> >
> > +/*
> > + * Audio input/output is exposed on the 13-pin header and can't be used for
> > + * anything else. However, adapter boards may use different audio routing.
> > + * - http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-Zero-Plus-2.html
> > + * - Allwinner H3 Datasheet, section 3.1. Pin Characteristics
> > + */
> > +&codec {
> > +       allwinner,audio-routing =
> > +               "Line Out", "LINEOUT",
> > +               "MIC1", "Mic",
> > +               "Mic",  "MBIAS";
> > +       status = "disabled";
> > +};
> > +
> >  &de {
> >         status = "okay";
> >  };
> >
> > --
> > 2.48.0.rc1.219.gb6b6757d772
> >
> >
> >

