Return-Path: <devicetree+bounces-6528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BD77BBB67
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:12:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 933481C208E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE818273E3;
	Fri,  6 Oct 2023 15:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh1+bqXt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C54241F4
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 15:12:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E7A5C433C9;
	Fri,  6 Oct 2023 15:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696605140;
	bh=pBOi8Gv1qqAYJ4e8Pn7HdfqP1/2VS6TDqzcavQT8xAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nh1+bqXtCsi7ZZjZza7aC7d+ut2k/L3MQ+5Yjbyyv1/rHiu7DpXYb0fba6V9ovLcq
	 3nThaQWrbMSifXObCGFbgCaXVJETfj+p1iG9omrqLEXdhglmUntxPtacm984ZQ1IBq
	 Z56bKzR9KRYYZqsZzOfgNAeaXVyIOXMLoOpWbR5GfsoOlMe93ATdTWsA/vWL3yOZIw
	 im/S8fZbvtC5Y7Yqda311tVnW6zF4kuV7/vvLGpLqNiA9Oq8oT3u2sKz0otwYRSmfL
	 idCa4DHkyLoKI6w+NKGAmzCYnkJFjfggZH5oYwNtKZs9UAyZjuvi9kdrvFd1Qyly2K
	 XwCQmPtZXBDEw==
Received: (nullmailer pid 3946956 invoked by uid 1000);
	Fri, 06 Oct 2023 15:12:17 -0000
Date: Fri, 6 Oct 2023 10:12:17 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, loic.poulain@linaro.org, rfoss@kernel.org, andi.shyti@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Message-ID: <20231006151217.GA3943830-robh@kernel.org>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-5-bryan.odonoghue@linaro.org>
 <ace84d7f-d332-4598-a95d-634c1d17f852@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ace84d7f-d332-4598-a95d-634c1d17f852@linaro.org>

On Fri, Oct 06, 2023 at 02:33:42PM +0200, Krzysztof Kozlowski wrote:
> On 06/10/2023 14:01, Bryan O'Donoghue wrote:
> > Add bindings for qcom,sc8280xp-camss in order to support the camera
> > subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > ---
> >  .../bindings/media/qcom,sc8280xp-camss.yaml   | 598 ++++++++++++++++++
> >  1 file changed, 598 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
> > new file mode 100644
> > index 000000000000..46d2da4ad373
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
> > @@ -0,0 +1,598 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/qcom,sc8280xp-camss.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm CAMSS
> 
> Instead something like:
> Qualcomm SC8280xp Camera SubSystem (CAMSS)
> ?
> 
> > +
> > +maintainers:
> > +  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > +
> > +description: |
> > +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,sc8280xp-camss
> > +
> > +  clocks:
> > +    minItems: 63
> 
> You can drop minItems if they equal maxItems.
> 
> > +    maxItems: 63
> > +
> > +  clock-names:
> > +    items:
> > +      - const: camnoc_axi
> > +      - const: camnoc_axi_src
> > +      - const: cpas_ahb
> > +      - const: cphy_rx_src
> > +      - const: csiphy0
> > +      - const: csiphy0_timer_src
> > +      - const: csiphy0_timer
> > +      - const: csiphy1
> > +      - const: csiphy1_timer_src
> > +      - const: csiphy1_timer
> > +      - const: csiphy2
> > +      - const: csiphy2_timer_src
> > +      - const: csiphy2_timer
> > +      - const: csiphy3
> > +      - const: csiphy3_timer_src
> > +      - const: csiphy3_timer
> > +      - const: vfe0_axi
> > +      - const: vfe0_src
> > +      - const: vfe0
> > +      - const: vfe0_cphy_rx
> > +      - const: vfe0_csid_src
> > +      - const: vfe0_csid
> > +      - const: vfe1_axi
> > +      - const: vfe1_src
> > +      - const: vfe1
> > +      - const: vfe1_cphy_rx
> > +      - const: vfe1_csid_src
> > +      - const: vfe1_csid
> > +      - const: vfe2_axi
> > +      - const: vfe2_src
> > +      - const: vfe2
> > +      - const: vfe2_cphy_rx
> > +      - const: vfe2_csid_src
> > +      - const: vfe2_csid
> > +      - const: vfe3_axi
> > +      - const: vfe3_src
> > +      - const: vfe3
> > +      - const: vfe3_cphy_rx
> > +      - const: vfe3_csid_src
> > +      - const: vfe3_csid
> > +      - const: vfe_lite0_src
> > +      - const: vfe_lite0
> > +      - const: vfe_lite0_cphy_rx
> > +      - const: vfe_lite0_csid_src
> > +      - const: vfe_lite0_csid
> > +      - const: vfe_lite1_src
> > +      - const: vfe_lite1
> > +      - const: vfe_lite1_cphy_rx
> > +      - const: vfe_lite1_csid_src
> > +      - const: vfe_lite1_csid
> > +      - const: vfe_lite2_src
> > +      - const: vfe_lite2
> > +      - const: vfe_lite2_cphy_rx
> > +      - const: vfe_lite2_csid_src
> > +      - const: vfe_lite2_csid
> > +      - const: vfe_lite3_src
> > +      - const: vfe_lite3
> > +      - const: vfe_lite3_cphy_rx
> > +      - const: vfe_lite3_csid_src
> > +      - const: vfe_lite3_csid
> > +      - const: gcc_axi_hf
> > +      - const: gcc_axi_sf
> > +      - const: slow_ahb_src
> > +
> > +  interrupts:
> > +    minItems: 20
> 
> You can drop minItems if they equal maxItems.
> 
> 
> > +    maxItems: 20
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: csid1_lite
> > +      - const: vfe_lite1
> > +      - const: csiphy3
> > +      - const: csid0
> > +      - const: vfe0
> > +      - const: csid1
> > +      - const: vfe1
> > +      - const: csid0_lite
> > +      - const: vfe_lite0
> > +      - const: csiphy0
> > +      - const: csiphy1
> > +      - const: csiphy2
> > +      - const: csid2
> > +      - const: vfe2
> > +      - const: csid3_lite
> > +      - const: csid2_lite
> > +      - const: vfe_lite3
> > +      - const: vfe_lite2
> > +      - const: csid3
> > +      - const: vfe3
> > +
> > +  iommus:
> > +    minItems: 16
> 
> You can drop minItems if they equal maxItems.
> 
> > +    maxItems: 16
> > +
> > +  interconnects:
> > +    minItems: 4
> 
> You can drop minItems if they equal maxItems.
> 
> 
> > +    maxItems: 4
> > +
> > +  interconnect-names:
> > +    items:
> > +      - const: cam_ahb
> > +      - const: cam_hf_mnoc
> > +      - const: cam_sf_mnoc
> > +      - const: cam_sf_icp_mnoc
> > +
> > +  power-domains:
> > +    items:
> > +      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
> > +      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
> > +      - description: IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
> > +      - description: IFE3 GDSC - Image Front End, Global Distributed Switch Controller.
> > +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
> > +
> > +  power-domain-names:
> > +    items:
> > +      - description: ife0
> > +      - description: ife1
> > +      - description: ife2
> > +      - description: ife3
> > +      - description: top
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> 
> On this level of indentation:
> additionalProperties: false

No, because then #size-cells/#address-cells won't be allowed.

Rob

