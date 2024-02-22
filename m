Return-Path: <devicetree+bounces-44859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 526AA85FD77
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 17:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E48A11F24EC3
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 16:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE45150998;
	Thu, 22 Feb 2024 16:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXHCUC2F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2AD14F9D2
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 16:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708617739; cv=none; b=bOTknHXJRxHIQ8Js6dV5VnueWi7f97gkoSI90UdRjQ/KAjmerX5096KHKkos1mphscG3vqTybjt5FNwZZgikjj2w9ug8gxWiRpMgQMhI3XdfgGxoygzS5tERr7l6rcpskg5Iajx7CYvOTTlRfMTkGXK1L3RMhf6cSfEr0kq/aHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708617739; c=relaxed/simple;
	bh=53YPHVQzuChmOr4en3LVnm/IikOp6i04BEribA1n1kI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=Jud2OIzlwR1eEvDNmCyZod2tSx8kbd5SMO3TUbMk+jeC3GGE8eIz6OCW0Q/v4bSnW3uLNu9f94QCzrsvleezOH6R4h+V+4ENHzdjvNGnzTRPbWZAGBwBXsDVYKL0Vh/+qq4j95JghYHP8YnQD8mYvE4QvfLEUBXJG/D7Q5ygzow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXHCUC2F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7525C433C7;
	Thu, 22 Feb 2024 16:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708617738;
	bh=53YPHVQzuChmOr4en3LVnm/IikOp6i04BEribA1n1kI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=UXHCUC2Fz2iU7amImQKpR5ZGufZPDBuwb1GXMJ8dC2YgfmjAeA41gTA8nPjKKgJmF
	 18kXYr3EZIgNyzM1mYd8qwDxu+ExIAP1DPp7e8BofrnJkfU8HFpMBEQvxPTgi5seqv
	 q0km0xhcCygE/PTXoNsb8ECuAwgt/Fm1luRIr30a7cOdQ371uwMETB1k2xtUXZP5HV
	 qUtcGlORerW++RnxqNSRBaUuUMuIWeXjB9782b+iyNe/eIx+ZAQlQO+6Atm2WZlAcT
	 X0jO4WUiHZkZVH/T+YEOnZo1fjZgLpGW89Rk9ClJ/mpZ3w0yjaXrUgDwf/sQcUmHRp
	 cfzNA0XHV2RUw==
Date: Thu, 22 Feb 2024 10:02:17 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: robh@kernel.org, bhelgaas@google.com, devicetree@vger.kernel.org,
	treding@nvidia.com, jonathanh@nvidia.com, kthota@nvidia.com,
	mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [DT-SCHEMA PATCH V1] schemas: pci: Extend the meaning of
 'linux,pci-probe-only'
Message-ID: <20240222160217.GA11251@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222124231.2685261-1-vidyas@nvidia.com>

On Thu, Feb 22, 2024 at 06:12:31PM +0530, Vidya Sagar wrote:
> Extend the meaning of 'linux,pci-probe-only' to cover the cases where
> it is applicable only to a specific PCIe host bridge if defined in a
> PCIe node instead of chosen node. Add the documentation for the same
> in schemas/pci/pci-host-bridge.yaml

This isn't specific to PCIe, it's generic to PCI.

> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  dtschema/schemas/chosen.yaml              | 2 ++
>  dtschema/schemas/pci/pci-host-bridge.yaml | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/dtschema/schemas/chosen.yaml b/dtschema/schemas/chosen.yaml
> index 6d5c3f1..9152df3 100644
> --- a/dtschema/schemas/chosen.yaml
> +++ b/dtschema/schemas/chosen.yaml
> @@ -144,6 +144,8 @@ properties:
>        Optional property which takes a single-cell argument. If '0', then Linux
>        will assign devices in its usual manner, otherwise it will not try to
>        assign devices and instead use them as they are configured already.
> +      NOTE:- To restrict the applicability of this property to a specific PCIe
> +             host bridge, please refer to /schemas/pci/pci-host-bridge.yaml
>  
>    stdout-path:
>      $ref: types.yaml#/definitions/string
> diff --git a/dtschema/schemas/pci/pci-host-bridge.yaml b/dtschema/schemas/pci/pci-host-bridge.yaml
> index fbbb829..d6d595d 100644
> --- a/dtschema/schemas/pci/pci-host-bridge.yaml
> +++ b/dtschema/schemas/pci/pci-host-bridge.yaml
> @@ -31,6 +31,14 @@ properties:
>        number for each host bridge in the system must be unique.
>      $ref: /schemas/types.yaml#/definitions/uint32
>  
> +  linux,pci-probe-only:
> +    description: If present, Linux will not try to assign devices and instead
> +      use them as they are configured already by the platform firmware for this
> +      particular host bridge.

I think it would be more precise to say that Linux will not reassign
BARs or bridge windows.  "Assign devices" seems a little bit
ambiguous.

> +      NOTE:- If defined in chosen node, this property has system wide applicability.
> +             Please refer to /schemas/chosen.yaml for more info.
> +    type: boolean
> +
>    msi-map:
>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
>      items:
> -- 
> 2.25.1
> 

