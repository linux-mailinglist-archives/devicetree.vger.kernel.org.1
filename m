Return-Path: <devicetree+bounces-161271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC14BA7342A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0253E7A751D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90961217673;
	Thu, 27 Mar 2025 14:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJEc/bkt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B3E20CCFD;
	Thu, 27 Mar 2025 14:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084926; cv=none; b=SQUR+JH2rHdgJsO7h5h0W3BEnUmNgTTV8NgvsKUqL9aoKAU8zC/J9epjkagyMjof8Vuc94CDQ1yDExwRBRNeXUgUWrITuAfoqPECMNWRWssrobezlNW2TgQPhPz6HkOMJXJohplrfIyRNJTZWm5xjxjOlHfuq8skgQwwTAyp9nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084926; c=relaxed/simple;
	bh=rWlmHoCwwByfJZBJXemfVXS0IezaelLfYtPFxK1MpQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jvORLXriYRURX0DUX9HreG94nbKUbCwh5VwVww6uZvsuyygnca1LF9/FJpifqBgHe1OiPHVj9SNpPwxUIO8y+IEY0TSGu+buiApPTObO5ntr0nElkeV9aWsB+/OgkMOomb9wFvqRx2R4LwkELmDh8J78Ap4k0Ay5NM1bolLLZ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJEc/bkt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADA6BC4CEDD;
	Thu, 27 Mar 2025 14:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743084925;
	bh=rWlmHoCwwByfJZBJXemfVXS0IezaelLfYtPFxK1MpQQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iJEc/bktrRk+2vgqvuuu9mDiEPdOHEadvIhwETiwLHQLRplFoYSwZLKilQrcVfBJg
	 7FrIabsJwGt+oPmAEj3652O1pHNlKYTg2d3XuLU9y1gp32S3IQkTMoIgGZSb4LQgCi
	 87kQInQYD2ltpe0KDpMZmslr7C1n9jwDShdtkipVanVvj+S30vbWYnG1BfkMXJAF7I
	 9ZrB2fm//SanE2FKO3+sEsjw9EVCMhyt8bj5BoOXW7QycUFRGpd9gcoVBZONcLOyCW
	 4gQv1hslis6Tt5hD/r6UWUHVjdYz2a8h569zx9vWWEVyhMOmWQ0OUmSaxbwgSTUrXc
	 aasP++lv2mGyQ==
Message-ID: <6a487a73-3f2d-4373-8e02-ba749181bdfb@kernel.org>
Date: Thu, 27 Mar 2025 15:15:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: pci: cadence: Extend compatible for new
 platform configurations
To: Manikandan Karunakaran Pillai <mpillai@cadence.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kw@linux.com"
 <kw@linux.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <CH2PPF4D26F8E1CA951AF03C17D11C7BEB3A2A12@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>
 <20250327111106.2947888-1-mpillai@cadence.com>
 <CH2PPF4D26F8E1C1CBD2A866C59AA55CD7AA2A12@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <CH2PPF4D26F8E1C1CBD2A866C59AA55CD7AA2A12@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/03/2025 12:19, Manikandan Karunakaran Pillai wrote:
> Document the compatible property for the newly added values for PCIe EP and
> RP configurations. Fix the compilation issues that came up for the existing
> Cadence bindings

These are two different commits.

> 
> Signed-off-by: Manikandan K Pillai <mpillai@cadence.com>
> ---
>  .../bindings/pci/cdns,cdns-pcie-ep.yaml       |  12 +-
>  .../bindings/pci/cdns,cdns-pcie-host.yaml     | 119 +++++++++++++++---
>  2 files changed, 110 insertions(+), 21 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
> index 98651ab22103..aa4ad69a9b71 100644
> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.yaml
> @@ -7,14 +7,22 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Cadence PCIe EP Controller
>  
>  maintainers:
> -  - Tom Joseph <tjoseph@cadence.com>
> +  - Manikandan K Pillai <mpillai@cadence.com>
>  
>  allOf:
>    - $ref: cdns-pcie-ep.yaml#
>  
>  properties:
>    compatible:
> -    const: cdns,cdns-pcie-ep
> +    oneOf:
> +      - const: cdns,cdns-pcie-ep
> +      - const: cdns,cdns-pcie-hpa-ep

What is hpa? Which soc is that?

I don't think this should keep growing, but instead use SoC based
compatibles.

Anyway, that's enum.

> +      - const: cdns,cdns-cix-pcie-hpa-ep

What is cix? If you want to stuff here soc in the middle, then no, no
no. Please read devicetree spec and writing bindings how the compatibles
are created.

> +      - description: PCIe EP controller from cadence
> +        items:
> +          - const: cdns,cdns-pcie-ep
> +          - const: cdns,cdns-pcie-hpa-ep
> +          - const: cdns,cdns-cix-pcie-hpa-ep

This makes no sense.

>  
>    reg:
>      maxItems: 2
> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
> index a8190d9b100f..bb7ffb9ddaf9 100644
> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-host.yaml
> @@ -7,16 +7,30 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Cadence PCIe host controller
>  
>  maintainers:
> -  - Tom Joseph <tjoseph@cadence.com>
> +  - Manikandan K Pillai <mpillai@cadence.com>
>  
>  allOf:
> -  - $ref: cdns-pcie-host.yaml#
> +  - $ref: cdns-pcie.yaml#

Why?

>  
>  properties:
> +  "#size-cells":
> +    const: 2
> +  "#address-cells":
> +    const: 3

Huh? Why? Nothing here makes sense.


Best regards,
Krzysztof

