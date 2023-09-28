Return-Path: <devicetree+bounces-4322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEAD7B20A5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B361B1C20A8D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9CB4E266;
	Thu, 28 Sep 2023 15:12:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCA44D8FF
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 985B9C433C8;
	Thu, 28 Sep 2023 15:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695913948;
	bh=Hqro9VXE8P3Msf+mPt73qlFFXuWRyTwJYSf6N/jB9S8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hkvv3AjwF/FfBT73XOvjTQwBEZPy4TELmLlrWZAlrlcHVwS8LNs1grrP2kQvGs/sw
	 gJ5Jv9FIoREU7cFRso6OSBO1NQ5aJOLlkYXME2ONDicgTAIl1PEmk0qcfvQ5kcczep
	 Tptem295Ky7EmOX08ySvAU26pv0SH+rpmH2GiwFV/dZczgzkWZpn6GWVpVCURFQu33
	 5d0hr2TpiEV9SEhwWSuVeVXcG4Z8cQBqzsa6K14wZMI2zI6rfhf4TgzR+0yMxhULwp
	 4q3JK6jU17E+HsvgqmOH5XXBSWlDd03Zw+U1XrLYQG/qL0CKQwfrAvhSB6Oy4ndFk3
	 SVu7vsoJ3TpLg==
Received: (nullmailer pid 512608 invoked by uid 1000);
	Thu, 28 Sep 2023 15:12:26 -0000
Date: Thu, 28 Sep 2023 10:12:26 -0500
From: Rob Herring <robh@kernel.org>
To: Jian Yang <jian.yang@mediatek.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Matthias Brugger <matthias.bgg@gmail.com>, Jianjun Wang <jianjun.wang@mediatek.com>, linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Chuanjia.Liu@mediatek.com, Jieyy.Yang@mediatek.com, Qizhong.Cheng@mediatek.com
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: mediatek-gen3: Add support for
 controlling power and reset
Message-ID: <20230928151226.GA424754-robh@kernel.org>
References: <20230928105819.5161-1-jian.yang@mediatek.com>
 <20230928105819.5161-2-jian.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928105819.5161-2-jian.yang@mediatek.com>

On Thu, Sep 28, 2023 at 06:58:20PM +0800, Jian Yang wrote:
> From: "jian.yang" <jian.yang@mediatek.com>
> 
> Add new properties to support control power supplies and reset pin of
> a downstream component.
> 
> Signed-off-by: jian.yang <jian.yang@mediatek.com>
> ---
>  .../bindings/pci/mediatek-pcie-gen3.yaml      | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> index 7e8c7a2a5f9b..32031362db58 100644
> --- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> @@ -84,6 +84,26 @@ properties:
>      items:
>        enum: [ phy, mac ]
>  
> +  pcie1v8-supply:
> +    description:
> +      The regulator phandle that provides 1.8V power from root port to a
> +      downstream component.
> +
> +  pcie3v3-supply:
> +    description:
> +      The regulator phandle that provides 3.3V power from root port to a
> +      downstream component.
> +
> +  pcie12v-supply:
> +    description:
> +      The regulator phandle that provides 12V power from root port to a
> +      downstream component.
> +
> +  dsc-reset-gpios:

This should be in the downstream component if it is something extra. So 
not the root port node, but the next one down. 

> +    description:
> +      The extra reset pin other than PERST# required by a downstream component.
> +    maxItems: 1
> +
>    clocks:
>      minItems: 4
>      maxItems: 6
> @@ -238,5 +258,10 @@ examples:
>                        #interrupt-cells = <1>;
>                        interrupt-controller;
>              };
> +
> +            pcie@0 {

Missing 'reg'.

> +              device_type = "pci";
> +              pcie-3v3-supply = <&pcie3v3_regulator>;

This is in the root port (which is good), but you've defined the schema 
to put them in the host bridge node. IOW, these need to go in a PCI 
root-port or P2P bridge schema which doesn't yet exist. I have an 
inprogress branch for dtschema to split up pci-bus.yaml for that 
purpose. Will try to finish it up soon.

Rob

