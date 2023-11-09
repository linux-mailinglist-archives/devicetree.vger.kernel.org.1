Return-Path: <devicetree+bounces-14876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD07E73A4
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 22:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D99280F8B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 21:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3DA38DDB;
	Thu,  9 Nov 2023 21:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKNxzbGa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD72838DD8
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 21:33:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9F83C433C8;
	Thu,  9 Nov 2023 21:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699565598;
	bh=ksMXL7JuxLefyNW85J+EYnJjuVKz/X0dBos8onrG1LY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=MKNxzbGaY6mBpEZtn1QzDfV4ts54b26DJKnhlTleYCCLiUj+7IesrVrsftXrpWn95
	 n1JLCypQlzJOqt6XbvxnEPnUopUxKlGGn8julyNr59DiAYSn+cCLfzta3O7w5Kkr2D
	 w+2VaLMrcKC9OcKIvTH8LIYrulkxJBBMkWrDiHgcRkaaz28hcO5CBWGYf1uZ56NAgd
	 i8FMFyfVlwlGk9fDcMB/Cp8xjF3vPV88ejhKsVKWe5Tgm9I5tDEpHlXYDo0mTlX43S
	 J/WctStnl47pFWDjcx7Jd+8eMldIhSyUTm8COzi6nkGttcr44SECEJrqeovVyw7vRs
	 /e4ld6Grc5XQA==
Date: Thu, 9 Nov 2023 15:33:15 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Phil Elwell <phil@raspberrypi.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Jim Quinlan <jim2101024@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 1/3] dt-bindings: PCI: brcmstb: Add property
 "brcm,clkreq-mode"
Message-ID: <20231109213315.GA492812@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109191355.27738-2-james.quinlan@broadcom.com>

On Thu, Nov 09, 2023 at 02:13:52PM -0500, Jim Quinlan wrote:
> The Broadcom STB/CM PCIe HW -- a core that is also used by RPi SOCs --
> requires the driver to deliberately place the RC HW one of three CLKREQ#
> modes.  The "brcm,clkreq-mode" property allows the user to override the
> default setting.  If this property is omitted, the default mode shall be
> "default".
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> ---
>  .../bindings/pci/brcm,stb-pcie.yaml           | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> index 7e15aae7d69e..992b35e915a5 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> @@ -64,6 +64,27 @@ properties:
>  
>    aspm-no-l0s: true
>  
> +  brcm,clkreq-mode:
> +    description: A string that determines the operating
> +      clkreq mode of the PCIe RC HW WRT controlling the refclk signal.

I assume "WRT" is shorthand for "with respect to", but it's slightly
confusing following all the other acronyms.

> +      There are three different modes --
> +      "safe", which drives the
> +      refclk signal unconditionally and will work for all devices but does
> +      not provide any power savings;
> +      "no-l1ss" -- which provides Clock Power Management, L0s, and
> +      L1, but cannot provide L1 substate (L1SS) power
> +      savings. If the downstream device connected to the RC is
> +      L1SS capable AND the OS enables L1SS, all PCIe traffic
> +      may abruptly halt, potentially hanging the system;
> +      "default" -- which provides L0s, L1, and L1SS, but not
> +      compliant to provide Clock Power Management;
> +      specifically, may not be able to meet the Tclron max
> +      timing of 400ns as specified in "Dynamic Clock Control",
> +      section 3.2.5.2.2 of the PCIe spec.  This situation is
> +      atypical and should happen only with older devices.

These are all weirdly wrapped.  Really no reason to use lines shorter
than 80.

Same spec citation question as in patch 2/3.

> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum: [ safe, no-l1ss, default ]
> +
>    brcm,scb-sizes:
>      description: u64 giving the 64bit PCIe memory
>        viewport size of a memory controller.  There may be up to

