Return-Path: <devicetree+bounces-67269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D188C7431
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 11:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EBA61F24566
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F73214386B;
	Thu, 16 May 2024 09:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="e2+4Oobp"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1F514293
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715853288; cv=none; b=Ddb9Cqdmk3Fbh6espSJzMzcjemch46b7aOy404qC4GJCdidzAwUD0MEibKdug7k9H/h/tfvTsaqfb9JKA3vXlFi4+0w4qitIRlvCaBeUeqkXq7l6SH0+ismJxfAj43diRJpOA/x02kQbC6M0R129TB9D1pZjbLflF+PBMOzjlA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715853288; c=relaxed/simple;
	bh=mZfVpmqsWjhCsIsTVtjcaeo4Q4xSQ9TLL9TZdJX/NHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UKmNNSCrAT4VsnTloDCsa/zklOoruL/KxHdt1tVPH/vEL8rLZuCWIQ2A//mDR8KB13YYVD8mpxXW4NDhy+ejFof203/x++s9ybGQ8h8K+pQQVKnwuVX/I72+rrK1gVaCx8uAeLf89HGpNn5b9UMbJaztNB7XzHML+gb3Tw2D42E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=e2+4Oobp; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715853284;
	bh=mZfVpmqsWjhCsIsTVtjcaeo4Q4xSQ9TLL9TZdJX/NHE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e2+4Oobp/AcPTTtDnKLATYjBTUw+/6tM61KKp6f6L0MMOwWOK+PNNqEiuaknJn+d9
	 KQEqaAAH3Bm9ALNFcbWh3SLnFBfGkIne5kDHUzJ4m1nZI22ZtyvcWd5xm2B/LCHSkD
	 PT0POFN8p/fWTmDImW+WRtu1fjEQYAOfOYO4jNK93TRr+UR/HBVepoyjx3Gz1tfmjD
	 Dss3iJ8ngLGifYkgGUyiG2PQxiPeAmtGB3BW9exC6JJ6oITFkyTeWj9Wkhf6QtScKJ
	 PG0+PR71aYeq04D9QfzuWTugnS8DC/qb2OXynHhAKINLkhtdmc2vNLuF1AOnBe1Q+Q
	 MGPUEGrt8OmBg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4471B37821A9;
	Thu, 16 May 2024 09:54:43 +0000 (UTC)
Message-ID: <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>
Date: Thu, 16 May 2024 11:54:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1715769325.git.lorenzo@kernel.org>
 <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> driver.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
>   1 file changed, 55 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> new file mode 100644
> index 000000000000..4ab04b501129
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha EN7581 PCI-Express PHY
> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +
> +description:
> +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
> +
> +properties:
> +  compatible:
> +    const: airoha,en7581-pcie-phy
> +
> +  reg:
> +    maxItems: 3

If you have a description for the registers, I'd appreciate seeing that list.
If you don't, and can't retrieve a description, it's still fine, but please
try if you can.

> +
> +  reg-names:
> +    items:
> +      - const: csr_2l

Can we please avoid underscores?

Please change this to "csr-2l", after which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> +      - const: pma0
> +      - const: pma1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/phy/phy.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        phy@11e80000 {
> +            compatible = "airoha,en7581-pcie-phy";
> +            #phy-cells = <0>;
> +            reg = <0x0 0x1fa5a000 0x0 0xfff>,
> +                  <0x0 0x1fa5b000 0x0 0xfff>,
> +                  <0x0 0x1fa5c000 0x0 0xfff>;
> +            reg-names = "csr_2l", "pma0", "pma1";
> +        };
> +    };


