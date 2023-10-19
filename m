Return-Path: <devicetree+bounces-10034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4562B7CF6F4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CAFEBB20CE2
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301371947B;
	Thu, 19 Oct 2023 11:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0F419479
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:35:43 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D0EBE;
	Thu, 19 Oct 2023 04:35:39 -0700 (PDT)
Received: from i5e861907.versanet.de ([94.134.25.7] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtRJM-0003Gm-Q2; Thu, 19 Oct 2023 13:35:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu, 19 Oct 2023 13:35:31 +0200
Message-ID: <2239084.Dhsi8hcfAM@diego>
In-Reply-To: <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
References:
 <20231018161848.346947-1-macroalpha82@gmail.com>
 <20231018161848.346947-5-macroalpha82@gmail.com>
 <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 19. Oktober 2023, 11:21:47 CEST schrieb Krzysztof Kozlowski:
> On 18/10/2023 18:18, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
> > powered by the Rockchip RK3566 SoC.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index a349bf4da6bc..a6612185a7ff 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -674,6 +674,11 @@ properties:
> >            - const: powkiddy,rgb30
> >            - const: rockchip,rk3566
> >  
> > +      - description: Powkiddy RK2023
> > +        items:
> > +          - const: powkiddy,rk2023
> 
> This cuold be just enum in previous entry :/ but I remember we talked
> about this once with Heiko.

Keeping similar devices together is perfectly fine. Like we do for example
with the Rock PI 4A/4A+/B/B+/C family directly below.

The powkiddy,rk2023 really looks like very similar to the rgb30, so
could do something similar.


The variant I don't like is having one big enum for _all_  boards using
the same soc.


Heiko

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> > +          - const: rockchip,rk3566
> 
> 
> 
> Best regards,
> Krzysztof
> 
> 





