Return-Path: <devicetree+bounces-135640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 118EBA019A1
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 14:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 775F6188329F
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 13:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A2514B946;
	Sun,  5 Jan 2025 13:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="GrpxIIOF"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2E5146A68
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 13:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736083774; cv=none; b=MPM7kjWDxqx7mitvZiYzVw045Bj4GlDqAWw2E6hLrK8fpAJka2+6v0XGfrG+CSZYrTyJspPitv9OnJodYIxy3fmmjn9J03bvmpzB/vxMwX47Pu+1Vvu5DHWszFS5ezNvs1c5JTJAUlTXcq04kWHv7EuxOw/motBWWBv/RoyN+eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736083774; c=relaxed/simple;
	bh=VwfXY0T7q9dAliKbCeB1nPdVFnSgxJ9NIrI+49Qqq0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GvADIDXNLmWkedb52eUw2WIpdgNP4A/yxNBGEFU238az+EMFzW75KY49u+Lsh7KY9+5L11qONyguDKKQ6yI1FKBbzlEMopHJa/0bXbWnvbnYd2osMK7Fg2RLlwF4HmFLiUcdFv4Mxgp2fE9FEGAfAZ+W1fmH2fphK+6TaobttCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=GrpxIIOF; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bXZURu1D4LM1YUgIvF9//OtNOlKrOn7OEEAuXJwupOg=; b=GrpxIIOFxKU0BfxmjRRMlGztep
	4hlVXNswqQnT5Hoi3eEnNuehq9ep928E+4kSUi8/uNYoB9RMATa69jvjoALhSO1fEtqiJZZUlX9SO
	cmQAuaZAMmw6E0HvyiQSns8SyhWISjXEflRx2T7ZO28qBqxzkgzcgSBN5thgeJzgoNZhjmBgcw7EY
	oDceUhRwi2UxSVVDX6mx89XFGa+fmZcz+KjGGANS3oSHkJTRREojIuRnF/s/XuEE44xDGJsAVdGuD
	dH6YLVJPphFdGqTJukxJAT6LKihc88ItGvAumVTkSoP5jl+fgO3f2bva5SxlSxeHz7VJ9LBX5S5DL
	PYbunZNA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUQgl-0005Pf-J3; Sun, 05 Jan 2025 14:29:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, jbx6244@gmail.com,
 sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks,
 dsimic@manjaro.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Sun, 05 Jan 2025 14:29:06 +0100
Message-ID: <6900956.G0QQBjFxQf@phil>
In-Reply-To: <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
References:
 <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
 <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey,

Am Freitag, 3. Januar 2025, 07:45:58 CET schrieb FUKAUMI Naoki:
> Hi Kever,
> 
> What do you think about the introduction of the "rockchip,rk3582" 
> compatibility string?

I'm not Kever, but I do like the way you did this :-) .

I.e. the rk3582 _is_ a rk3588 with those cores disabled.

So going the way you did allows us to not introduce too much
overhead while still already having the rk3582 naming in there
if it becomes necessary later on.


Heiko


> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 12/26/24 11:46, FUKAUMI Naoki wrote:
> > Add devicetree binding for the Radxa E52C.
> > 
> > Radxa E52C is a compact network computer based on the Rockchip RK3582
> > SoC.
> > 
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > Changes in v3:
> > - Collect A-b tag
> > Changes in v2:
> > - Add "rockchip,rk3588s"
> > ---
> >   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >   1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 753199a12923..2152d170524a 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -812,6 +812,12 @@ properties:
> >             - const: radxa,e20c
> >             - const: rockchip,rk3528
> >   
> > +      - description: Radxa E52C
> > +        items:
> > +          - const: radxa,e52c
> > +          - const: rockchip,rk3582
> > +          - const: rockchip,rk3588s
> > +
> >         - description: Radxa Rock
> >           items:
> >             - const: radxa,rock
> 
> 





