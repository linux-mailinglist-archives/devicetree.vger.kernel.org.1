Return-Path: <devicetree+bounces-4362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1957B22B2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:47:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 49FB6281B96
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B30F3FB20;
	Thu, 28 Sep 2023 16:47:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B903328B0
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:47:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 047F8C433C8;
	Thu, 28 Sep 2023 16:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695919644;
	bh=3ULes3SP+nVMDrHJRNu8hN35Zfay9cO72EBXJbs4MP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FJ1hHcd501bSblfoDC1vqRbgIic8CijJLyrB9WU3GwGIixc/ptBw7AW6exr6EoqYw
	 sp/0EzHtubpTo9CKuKlWwr4EIOP2r3JK/4ERExObJomh1xKu8ijpkfTIsqKOqN8HeL
	 9P/kpYJ4NjjZyRL2X48oD63uH0njQxA63qpHyKiD/1oiQTjBTnErpeVNmj8t+1uOE1
	 ynHoKQ+cjSBMYCXWKzHVL7gzPTBlxnzG1aoXkqJ4gDYv7FKmzB25wf0oj2NBDeToQF
	 q7bEwMBVt4tN5EXZkbXUg4SsuOEoN2Or5NWZnG+iQrudJwaClAIr6QQN2AntjYHJvs
	 NthIpULy3TQAA==
Received: (nullmailer pid 834795 invoked by uid 1000);
	Thu, 28 Sep 2023 16:47:20 -0000
Date: Thu, 28 Sep 2023 11:47:20 -0500
From: Rob Herring <robh@kernel.org>
To: Ming Qian <ming.qian@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "Mirela Rabulea (OSS)" <mirela.rabulea@oss.nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "mchehab@kernel.org" <mchehab@kernel.org>, "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, "X.H. Bao" <xiahong.bao@nxp.com>, Eagle Zhou <eagle.zhou@nxp.com>, Tao Jiang <tao.jiang_2@nxp.com>, dl-linux-imx <linux-imx@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [EXT] Re: [PATCH v4 2/2] dt-bindings: media: imx-jpeg: Assign
 slot for imx jpeg encoder/decoder
Message-ID: <20230928164720.GA816352-robh@kernel.org>
References: <20230926101000.13392-1-ming.qian@nxp.com>
 <20230926101000.13392-2-ming.qian@nxp.com>
 <2c351ca0-cee4-4c1b-956b-6134ad101a9a@linaro.org>
 <AM6PR04MB63415CF2EDCF0AF33F778774E7C2A@AM6PR04MB6341.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM6PR04MB63415CF2EDCF0AF33F778774E7C2A@AM6PR04MB6341.eurprd04.prod.outlook.com>

On Wed, Sep 27, 2023 at 09:10:52AM +0000, Ming Qian wrote:
> >From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> >On 26/09/2023 12:10, Ming Qian wrote:
> >> There are total 4 slots available in the IP, and we only need to use
> >> one slot in one os, assign a single slot, configure interrupt and
> >> power domain only for 1 slot, not for the all 4 slots.
> >>
> >> Signed-off-by: Ming Qian <ming.qian@nxp.com>
> >> ---
> >> v4
> >> - improve commit message
> >> - don't make an ABI break
> >> v3
> >> - add vender prefix, change property slot to nxp,slot
> >> - add type for property slot
> >>
> >>  .../bindings/media/nxp,imx8-jpeg.yaml         | 45 +++++++++----------
> >>  1 file changed, 21 insertions(+), 24 deletions(-)
> >>
> >> diff --git
> >> a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> >> b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> >> index 3d9d1db37040..4bcfc815c894 100644
> >> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> >> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> >> @@ -32,19 +32,26 @@ properties:
> >>      maxItems: 1
> >>
> >>    interrupts:
> >> -    description: |
> >> -      There are 4 slots available in the IP, which the driver may use
> >> -      If a certain slot is used, it should have an associated interrupt
> >> -      The interrupt with index i is assumed to be for slot i
> >> -    minItems: 1               # At least one slot is needed by the driver
> >> -    maxItems: 4               # The IP has 4 slots available for use
> >> +    description:
> >> +      Interrupt number for slot
> >> +    maxItems: 1
> >>
> >>    power-domains:
> >>      description:
> >>        List of phandle and PM domain specifier as documented in
> >>        Documentation/devicetree/bindings/power/power_domain.txt
> >> -    minItems: 2               # Wrapper and 1 slot
> >> -    maxItems: 5               # Wrapper and 4 slots
> >> +    minItems: 1               # VPUMIX
> >> +    maxItems: 2               # Wrapper and 1 slot
> >> +
> >> +  nxp,slot:
> >> +    $ref: /schemas/types.yaml#/definitions/uint32
> >> +    description:
> >> +      Integer number of slot index used. There are 4 slots available in the IP,
> >> +      and driver can use a certain slot, it should have an associated interrupt
> >> +      and power-domain. In theory, it supports 4 os or vm. If not specified, 0
> >> +      is used by default.
> >> +    minimum: 0
> >> +    maximum: 3
> >
> >NAK, you still did not answer concerns why this is needed and justified.
> >I keep asking and you keep ignoring...
> >
> >Best regards,
> >Krzysztof
> 
> Hi Krzysztof,
> 
> > Nothing explains what is a slot and nothing explains why do you need this property.
> 
> I thought I had answered that question, but seems you don't agree with that explanation. 
> Would the following description be any better?
> 
> The slot is the IP used to share the jpeg engine across multiple VMS 
> and os, there are 4 slots available in the IP. We can use one slot in 
> linux. The slot index indicates which slot we choose. If not 
> specified, 0 is used by default.

If you have to modify the DT to update 'nxp,slot', then you can modify 
the DT to just expose the parts of the h/w for the assigned slot. For 
example, only put slot 1's power-domains entry in the DT when slot 1 is 
assigned.

As far as formatting your emails, talk to your NXP colleagues. They've 
figured it out. If you've configured git-send-email successfully, then 
using mutt should be possible. You can use 'b4' to get the thread mbox, 
and read it in mutt.

Rob

