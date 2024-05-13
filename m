Return-Path: <devicetree+bounces-66656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C4A8C4197
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 15:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C833328240D
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 13:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 505771514CB;
	Mon, 13 May 2024 13:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="2EkJxSmv"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2E315098C
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715606105; cv=none; b=ebhDrnCVFhpJjjcwu3rgYzUqz8lE9YK/eOkwB/MU7D1wAuTsRNWwpBmMD1Toskk/Fb4zpZT5pRXn5rZL8XBQSc4/IlkS8uX5e//iVmqGBHYxRrHWPqvqAvpHuW28NPODT7eAH/ch9DO+8NKkcyU5g0sMo+rlXIO2MfkVLH92sVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715606105; c=relaxed/simple;
	bh=ScwE65y5oZ1iSlFlJ7VmFHYWNkFNi8jko7R1nKVjKAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YMU6Q3+bu4KSbES2h8Ykq5gEd+KCR/kjoXrPwxWQt2xTeVwmDcdszUfyIxGbhufbkiRFRAlcnQ0VyW888oFGYV3hjAd9LxVHFucN1m4ChIA78orrsvhH0dDoMjZ8KzODEoBP8vqBjcaxKrDpkBsHKN5b1CYumU3ku2Tv/hYLJmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=2EkJxSmv; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606101;
	bh=ScwE65y5oZ1iSlFlJ7VmFHYWNkFNi8jko7R1nKVjKAg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=2EkJxSmvVIJ3oG4G3tzRAiekWbwD52f3irZ5Mgj1KkEyBqQE3MHoXHjsSItzhp/az
	 6O0OwiE1Tggw2xRSy2LWGoBe4bH+8oy6rRShZ9W0Rua7Rh/UxlnvC9Twc9KsOMOTM+
	 kFl7YyOgZ5y/znfh3082NV/ik+RV8sB9i/sDAvBw9q3vtiP45GsSINR4EUp+Zt96vS
	 iR2BLRbIDZZRk+yzYERuUJzhuwbxzSfQQX/8HhsyXOAbeqMxEBCxB/2gT2iLuBVvoE
	 02kJjqBk7AzaIwDR5bgdRj1hqjyr3Jj4seUKK1vUzraS25XQGVkr9VeU7SqGu3yaiY
	 xkLSNQ8UhTCAQ==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5830E3782139;
	Mon, 13 May 2024 13:15:00 +0000 (UTC)
Message-ID: <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
Date: Mon, 13 May 2024 15:14:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> driver.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
>   1 file changed, 55 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> new file mode 100644
> index 000000000000..443d7e717296
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml

airoha,en7581-pcie-phy.yaml

> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha PCIe PHY

title: Airoha EN7581 PCI-Express PHY

> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +
> +description: |
> +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
> +
> +properties:
> +  compatible:
> +    const: airoha,en7581-pcie-phy
> +
> +  reg:
> +    maxItems: 3
> +
> +  reg-names:
> +    items:
> +      - const: csr_2l
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
> +    bus {

Shouldn't this realistically be 'soc' instead?

Cheers,
Angelo

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




