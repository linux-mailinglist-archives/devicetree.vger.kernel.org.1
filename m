Return-Path: <devicetree+bounces-25061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C09812429
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 01:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97F401F212BB
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 00:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C87063D;
	Thu, 14 Dec 2023 00:58:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 29146D0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 16:58:22 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAF2EC15;
	Wed, 13 Dec 2023 16:59:07 -0800 (PST)
Received: from minigeek.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 685E73F762;
	Wed, 13 Dec 2023 16:58:20 -0800 (PST)
Date: Thu, 14 Dec 2023 00:58:10 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Icenowy Zheng <uwu@icenowy.me>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add Transpeed
Message-ID: <20231214005810.7b0318c6@minigeek.lan>
In-Reply-To: <cb28ca67-8648-4199-92d0-e3129277b624@linaro.org>
References: <20231212010859.11571-1-andre.przywara@arm.com>
	<20231212010859.11571-2-andre.przywara@arm.com>
	<cb28ca67-8648-4199-92d0-e3129277b624@linaro.org>
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

On Tue, 12 Dec 2023 10:01:25 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 12/12/2023 02:08, Andre Przywara wrote:
> > This is a name used by some Chinese TV boxes, add it to the bindings.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 309b94c328c84..d9dd3f929cdcf 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -1438,6 +1438,8 @@ patternProperties:
> >      description: Traverse Technologies Australia Pty Ltd
> >    "^tronfy,.*":
> >      description: Tronfy
> > +  "^transpeed,.*":
> > +    description: Transpeed  
> 
> Please keep alphabetical order.

Argh, sorry, managed indeed to mess up this super simple patch!

Will fix it, thanks for having a look and spotting this!

Cheers,
Andre

> Best regards,
> Krzysztof
> 
> 


