Return-Path: <devicetree+bounces-58781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BA28A3020
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 016B12849CD
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34DE85639;
	Fri, 12 Apr 2024 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrWb29HU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5B483CDD
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712930634; cv=none; b=CJBHch1p8qW4x7A27tS2fWnPx0kGqBcqvoA9PWhuJAuMupYIn0+kZN3rov4A9ULdtCPFDFjwA+7qETEbXnzsdyMv6fveWDrcajMDTJu3RKnnBcRyLEjSpJojcwzbl8O9QFkzQDeID5IkgImAVPTiQVmhwXhKW6HfYNYgMThWn/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712930634; c=relaxed/simple;
	bh=Q/xDCfodTTDzCgOAtTjTkNdHm3g2Vt761sA8oFCgTzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iFyH5zTm33YkBAk110gSy3MBOsycsgLKwGivx+mIHDc8tATNnfGWMbPFI2p1PSJ4nAV2ghOMcuBmt4tn0GOB4ApLdQUqzNbNOOk/lWINbiw9rlCePZn9wVtl/Oeie2RQo2/9twrM1zB6g8hK0PcAYl5c9zGkE7o4YGI2oOPHiE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrWb29HU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72A0C113CC;
	Fri, 12 Apr 2024 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712930634;
	bh=Q/xDCfodTTDzCgOAtTjTkNdHm3g2Vt761sA8oFCgTzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PrWb29HUbTPHZgpK8TNIrBLrmHY/lJshbsxKkn7fMnuN/CMsJecrzAsYVn2ey3s2o
	 wCHnYBrORsGcECk52hWMNWr2Y8h89kBqswYZkGqZUuZbzj+pp3Q0FjeD2+XsiiJTQ8
	 bS4YXNN4uuyV2oEy/T6qQKWfvN7oqHTHSUNlxLjh0A3vcwRo+7av7N72CDfmkszydh
	 KU7XsyPnELKzFpdlVPHDXzYLOXY0fopneuPQVa19ZLhVU6AQBR+1TGFLUdRh6FKZ7+
	 ChlnOOi3SrUXmjGMDqGzlobwBXObF9t2ELcUG85hxhCf7MVBw4uCoYAPM0BwxD0WnD
	 s/JtuNmpeJfow==
Date: Fri, 12 Apr 2024 16:03:48 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
Message-ID: <Zhk_REt7nPpZT_yX@ryzen>
References: <20240412125818.17052-1-cassel@kernel.org>
 <20240412125818.17052-2-cassel@kernel.org>
 <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>

On Fri, Apr 12, 2024 at 03:36:11PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Apr 12, 2024 at 02:58:15PM +0200, Niklas Cassel wrote:
> > From the RK3588 Technical Reference Manual, Part1,
> > section 6.19 PCIe3PHY_GRF Register Description:
> > "rxX_cmn_refclk_mode"
> > RX common reference clock mode for lane X. This mode should be enabled
> > only when the far-end and near-end devices are running with a common
> > reference clock.
> > 
> > The hardware reset value for this field is 0x1 (enabled).
> > Note that this register field is only available on RK3588, not on RK3568.
> > 
> > The link training either fails or is highly unstable (link state will jump
> > continuously between L0 and recovery) when this mode is enabled while
> > using an endpoint running in Separate Reference Clock with No SSC (SRNS)
> > mode or Separate Reference Clock with SSC (SRIS) mode.
> > (Which is usually the case when using a real SoC as endpoint, e.g. the
> > RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)
> > 
> > Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
> > per lane. (Since this PHY supports bifurcation.)
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > index c4fbffcde6e4..ba67dca5a446 100644
> > --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > @@ -54,6 +54,16 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description: phandle to the syscon managing the pipe "general register files"
> >  
> > +  rockchip,rx-common-refclk-mode:
> > +    description: which lanes (by position) should be configured to run in
> > +      RX common reference clock mode. 0 means disabled, 1 means enabled.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    minItems: 1
> > +    maxItems: 16
> > +    items:
> > +      minimum: 0
> > +      maximum: 1
> 
> Why is this not simply using a single u32 with each bit standing for
> one PCIe lane? I.e. like this:

Hello Sebastian,

The reason for the existing way to specify each lane in an int32-array
is to be consistent with the existing property "data-lanes",
which already uses this representation.

e.g.
data-lanes = <1 1 2 2>;
rockchip,rx-common-refclk-mode = <0 0 1 1>;

It would be very weird if this was instead:
data-lanes = <1 1 2 2>;
rockchip,rx-common-refclk-mode = 0xc;


> 
> rockchip,rx-common-refclk-mode:
>   description: bitmap describing which lanes should be configured to run
>     in RX common reference clock mode. Bit offset maps to PCIe lanes and
>     a bit set means enabled, unset bit means disabled.
>   $ref: /schemas/types.yaml#/definitions/uint32
>   minimum: 0
>   maximum: 0xffff
>   default: 0xffff
> 
> Apart from that the PHY only supports up to 4 lanes on all existing hardware,
> so 0xf should be enough?

Again, in order to be consistent with the existing "data-lanes" property in
this binding, which defines:
    minItems: 2
    maxItems: 16
which means that the binding already supports up to 16 lanes.
(The reason why "data-lanes" specifies minItems:2 is because bifurcation
doesn't make sense if you just have a single lane. The rx-common-refclk-mode
property however makes sense even in the case where there is just a single
lane.)


Kind regards,
Niklas

