Return-Path: <devicetree+bounces-6558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCD47BBCAC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:27:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC3441C209B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2602428E06;
	Fri,  6 Oct 2023 16:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CITwWzMH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC5028DCF
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DE25C433C8;
	Fri,  6 Oct 2023 16:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696609626;
	bh=SVGR/dgN3Ia2g/ceGF5AhDwZ0Sefym/pCcWKrkUlFKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CITwWzMH2g2fBjiW+AXqbUZj0vPTcGj7f8bAVh7Oe5DcE97YDA2mheL32aZ+K5jNI
	 pKS6nY0cQ8JxKwOKttq6+T8BWP3EdbF5sjzFixfOJfCTM8e1OmLn7nn28iKhjxFqYQ
	 n2G9es+KaFUV+lPkfNJx3q3iAvihKyW6Fw0NCdOBEJKaxMImWeFxATrjN1swsvEMaZ
	 07UlLpaTtQKPU60RnfeNGam5IGSnqJQfE+yXfuPRlYdA4JjjHtrNir/sa6qSchQhj9
	 3qYXuB4ar4+AfHVgKOLQwLoMF81K7ilczQ8k9YrXGMb0mZxjNFAxBan8I31OL15+NH
	 Xv4RGfNvG8G2w==
Received: (nullmailer pid 4034213 invoked by uid 1000);
	Fri, 06 Oct 2023 16:27:03 -0000
Date: Fri, 6 Oct 2023 11:27:03 -0500
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 3/7] dt-bindings: media: Document STM32MP25 VENC video
 encoder
Message-ID: <20231006162703.GA4030032-robh@kernel.org>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
 <20231004091552.3531659-4-hugues.fruchet@foss.st.com>
 <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>

On Wed, Oct 04, 2023 at 06:41:09PM -0500, Adam Ford wrote:
> On Wed, Oct 4, 2023 at 4:16 AM Hugues Fruchet
> <hugues.fruchet@foss.st.com> wrote:
> >
> > Add STM32MP25 VENC video encoder bindings.
> >
> > Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > ---
> >  .../bindings/media/st,stm32mp25-venc.yaml     | 56 +++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-venc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/st,stm32mp25-venc.yaml b/Documentation/devicetree/bindings/media/st,stm32mp25-venc.yaml
> > new file mode 100644
> > index 000000000000..c69e0a34f675
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/st,stm32mp25-venc.yaml
> > @@ -0,0 +1,56 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/st,stm32mp25-venc.yaml#
> 
> Can this dt-binding be made more generic, like something like
> hantro-h1 or VC8000NanoE?
> 
> I think there will be more boards that may incorporate the Hantro-H1
> or a VC8000 in the future, because I don't think this IP is unique to
> the STM32MP25.

Unless the underlying IP is well documented (i.e. public), then it's 
kind of pointless. Everyone will just invent their own numbers and names 
of clocks, resets, etc. unless someone can enforce not doing that.

Rob

