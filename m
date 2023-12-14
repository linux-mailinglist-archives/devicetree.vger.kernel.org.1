Return-Path: <devicetree+bounces-25060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E1812426
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 01:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EA901F21257
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 00:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12570634;
	Thu, 14 Dec 2023 00:57:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E18E6D0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 16:56:57 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B5ACC15;
	Wed, 13 Dec 2023 16:57:43 -0800 (PST)
Received: from minigeek.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6FF13F762;
	Wed, 13 Dec 2023 16:56:55 -0800 (PST)
Date: Thu, 14 Dec 2023 00:56:46 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Icenowy Zheng <uwu@icenowy.me>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: document Transpeed 8K618-T
 board name
Message-ID: <20231214005646.15c2b69e@minigeek.lan>
In-Reply-To: <7d352882-5f6f-4c8b-a8c5-76ea31c2ae31@linaro.org>
References: <20231212010859.11571-1-andre.przywara@arm.com>
	<20231212010859.11571-3-andre.przywara@arm.com>
	<7d352882-5f6f-4c8b-a8c5-76ea31c2ae31@linaro.org>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 12 Dec 2023 10:01:56 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

Hi,

> On 12/12/2023 02:08, Andre Przywara wrote:
> > The Transpeed 8K618-T TV box is a Chinese Android TV box, using the
> > Allwinner H618 SoC.
> > 
> > Add the board/SoC compatible string pair to the list of known boards.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > index 11c5ce941dd7e..5e91110cc9eb8 100644
> > --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > @@ -868,6 +868,11 @@ properties:
> >            - const: topwise,a721
> >            - const: allwinner,sun4i-a10
> >  
> > +      - description: Transpeed 8K618-T
> > +        items:
> > +          - const: transpeed,8k618-t
> > +          - const: allwinner,sun50i-h618  
> 
> Assuming you kept the existing order (its style) of a file:

Ah, a good point. The file seems to be sort alphabetically after the
"description" name, though there are some outliers. Will send a patch
to fix them.
But at least this entry is correctly sorted.
 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks!
Andre

> 
> Best regards,
> Krzysztof
> 
> 


