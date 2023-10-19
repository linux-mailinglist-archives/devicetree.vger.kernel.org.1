Return-Path: <devicetree+bounces-10201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E60ED7D00D5
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 19:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0452282205
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B5B35502;
	Thu, 19 Oct 2023 17:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017F8354E5
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 17:45:28 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C59CD106;
	Thu, 19 Oct 2023 10:45:24 -0700 (PDT)
Received: from i5e861907.versanet.de ([94.134.25.7] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtX5C-0006Vb-V4; Thu, 19 Oct 2023 19:45:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu, 19 Oct 2023 19:45:17 +0200
Message-ID: <3083498.U7HbjWM52l@diego>
In-Reply-To:
 <SN6PR06MB534289953F0A72345D679A7EA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
References:
 <20231018161848.346947-1-macroalpha82@gmail.com>
 <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
 <SN6PR06MB534289953F0A72345D679A7EA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey Chris,

Am Donnerstag, 19. Oktober 2023, 16:43:56 CEST schrieb Chris Morgan:
> On Thu, Oct 19, 2023 at 11:21:47AM +0200, Krzysztof Kozlowski wrote:
> > On 18/10/2023 18:18, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
> > > powered by the Rockchip RK3566 SoC.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index a349bf4da6bc..a6612185a7ff 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -674,6 +674,11 @@ properties:
> > >            - const: powkiddy,rgb30
> > >            - const: rockchip,rk3566
> > >  
> > > +      - description: Powkiddy RK2023
> > > +        items:
> > > +          - const: powkiddy,rk2023
> > 
> > This cuold be just enum in previous entry :/ but I remember we talked
> > about this once with Heiko.
> 
> For hardware that requires a different device tree, is that possible?
> While most of the devices I've worked on for the RK3566 series are very
> similar for the moment only 1 is identical (the RG353P and the RG353M)
> and can use the same device tree.

In my reply I pointed to the Rock PI 4A/4A+/B/B+/C family, which also has
different devicetrees but is part of the same family of device designs.

So similar Powkiddy RK3568 based gaming handhelds also sound like
a nice family name in the description ;-) .


Heiko



