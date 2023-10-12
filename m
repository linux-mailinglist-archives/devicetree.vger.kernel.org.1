Return-Path: <devicetree+bounces-8167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0557C6F00
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF2C31C20C94
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF21428DC1;
	Thu, 12 Oct 2023 13:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LJYeT28l"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0130A29402
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:17:23 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A91D94;
	Thu, 12 Oct 2023 06:17:22 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2B50A8C2;
	Thu, 12 Oct 2023 15:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697116634;
	bh=SHqSTjMJAKJCUyMA7YjRflobJpz3Ueijw67vwsmyHKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LJYeT28laRlwHOq2Gl0MeegcFMAPno6rI+8MlWZT98H97AhxQd18e+f/GE+bl8mev
	 Fy3aqlTmHVlf4SoVjen3WqcTxNhqAiomYnH9eeYzZ9QkgE1ZQMf12Q44TKWL1NQqyF
	 j2ue6dUzYNULtwINE54DXkIksYXJZTd7xUWWhcSc=
Date: Thu, 12 Oct 2023 16:17:24 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: media: Add bindings for THine
 THP7312 ISP
Message-ID: <20231012131724.GA23177@pendragon.ideasonboard.com>
References: <20231012012016.11535-1-laurent.pinchart@ideasonboard.com>
 <20231012012016.11535-2-laurent.pinchart@ideasonboard.com>
 <b214e763-2175-4de1-af54-43961ff94afb@linaro.org>
 <20231012130544.GA31878@pendragon.ideasonboard.com>
 <0aeaa158-d56a-4d3b-a0c4-25b25f031a51@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <0aeaa158-d56a-4d3b-a0c4-25b25f031a51@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 03:16:02PM +0200, Krzysztof Kozlowski wrote:
> On 12/10/2023 15:05, Laurent Pinchart wrote:
> 
> >>> +
> >>> +  clocks:
> >>> +    maxItems: 1
> >>> +    description: CLKI clock input
> >>> +
> >>> +  thine,boot-mode:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    description:
> >>> +      Boot mode of the THP7312. 0 is for standard streaming mode, for the
> >>> +      THP7312 to be used as an ISP. 1 is for firmware flashing mode.
> >>
> >> Why, for a given board, would you always boot device in one specific
> >> mode but not the other? This does not look like property of DT.
> > 
> > The device has two boot mode pins, and it operates differently depending
> > on its boot mode. The pins are typically hardwired, on development
> > boards you commonly have DIP switches, and on production systems test
> > pads that allow modifying the boot mode on the production line. The
> > driver needs to know the boot mode to interact with the device
> > appropriately. I haven't found a good way to interogate the device at
> > runtime to figure out the boot mode, but I'm still trying. If that
> > doesn't succeed, we need to convey it through the device tree.
> 
> Hm, that's okay then, but please describe that it is expected
> bootstrapped boot mode of a device, because now it sounds like
> configuring some boot mode in the device.

OK, I'll improve the description.

-- 
Regards,

Laurent Pinchart

