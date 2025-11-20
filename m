Return-Path: <devicetree+bounces-240684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F66DC740AE
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 21E12308B1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A53733858B;
	Thu, 20 Nov 2025 12:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6fzp58E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FEC337BBC;
	Thu, 20 Nov 2025 12:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643199; cv=none; b=F9Is+jaSzmSNif/yxDtNxoiMyFEGZc5AwQim5S85Mn60iZbgMoKekSvYnsDItCeSTj+J9D9/s+5M5AJ5mkyNsf+HAXiWHJXD4fIBG1MECfPx38KnGDf3gV+8nSyLOk4spAAaoMN72CbRNm2s+nf8JNEpyXbTnTy7G4IbM++FCzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643199; c=relaxed/simple;
	bh=HY5APUpuR+sr77zB4EWBbolIME6/0akJx2Si3AryqfQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oPcEDr6DbkbuhAsPNNberLSAnDLqyymQTnFA43fmtToVCx3idFis03Z4nxFT3B1Q+EL19R3G+k++aCLqh9PXA+X9LXwM+T4nC+XQV1RCyfdY0EPkVpPyyBPcHwkRqpa4MiRWNoalRq6HZ0zvRJd3ovbO4ZXUsVfOji4gaWyikFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6fzp58E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4000C4CEF1;
	Thu, 20 Nov 2025 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763643198;
	bh=HY5APUpuR+sr77zB4EWBbolIME6/0akJx2Si3AryqfQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K6fzp58EAr3KWijSviIXyjHx1PGSNA2+wxqkh2rfr4aIIeurJD1xq6+ADlxU2TjEk
	 MbZYgtDUyXMPAY6mF2MvtABCTIKSd2ky+anxptouH8ldUeZdtf8zNf8daJdKpQacVX
	 zSTw3aGD+j5mIaa+heGzRGsZm2STyUkTf7SFRgAtXLLcQYX5OgVo7Ev1dRgDZweAcb
	 dDQEtUfvGgSq1FWLJr54UYqBuYvKFJqi3awpOlrBfKjRD0X35/5S53yEVD7qgJYJkD
	 NsDUASDFtHuiLHU4tjxq4JtVsf2SvIFX06zMWiE5YlQFK+xvvA54fxOjimAyBL3N5J
	 XcyD+goIIotvA==
Date: Thu, 20 Nov 2025 18:22:55 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hal Feng <hal.feng@starfivetech.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <pjw@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, E Shattow <e@freeshell.de>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: PCI: starfive,jh7110-pcie: Add
 enable-gpios property
Message-ID: <xxswzi4v6gpuqbe3cczj2yjmprhvln26fl5ligsp5vkiogrnwk@hpifxivaps6j>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
 <20251120082946.109378-2-hal.feng@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251120082946.109378-2-hal.feng@starfivetech.com>

On Thu, Nov 20, 2025 at 04:29:42PM +0800, Hal Feng wrote:
> Add enable-gpios property for controlling the PCI bus device power.
> This property had been supported in the driver but not added in the
> dt-bindings.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Fixes: 22fe32239770 ("dt-bindings: PCI: Add StarFive JH7110 PCIe controller")
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  .../devicetree/bindings/pci/starfive,jh7110-pcie.yaml         | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> index 33c80626e8ec..1e36f92ec852 100644
> --- a/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
> @@ -59,6 +59,10 @@ properties:
>      description:
>        The phandle to System Register Controller syscon node.
>  
> +  enable-gpios:
> +    description: GPIO used to enable the PCI bus device power

This feels wrong to me. Is this GPIO associated with the PCIe controller? I bet
this is just controlling some regulator that powers the VDD of the PCIe
device/slot. If so, this should be added as a part of the regulator node and
referenced in the PCIe node using the existing -supply properties.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

