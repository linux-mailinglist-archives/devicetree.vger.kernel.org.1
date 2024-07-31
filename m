Return-Path: <devicetree+bounces-90009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 777CF9437FE
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:29:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36CE8281B40
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 21:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2357514F123;
	Wed, 31 Jul 2024 21:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4v8JeD9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3431208D1
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 21:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722461361; cv=none; b=qnPOPYEvionyzXDLmbJpf/hRztYCo/4Faq7I0qxBS4VBWUQCKh8myazU5AqIzLHxJFotGA2/lPBPrShV3PMjNI0mW/LIta7gXniSlp8bhCisMTJRgakTbOdMaK/tfXBZcZYs07I+EKr7VVdNCNhp9u9xqCacPwTxsYWDbTaKwPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722461361; c=relaxed/simple;
	bh=aMxlNqX2qkd+M6bNpofNqITV9lOq1WevJ8FjDZTCryw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OubfFW9BqJvbonVQzSjaIWXKlPT3oBNqYX86CPoijyJvzMw3PmlugE9wfPAEZj6+A+KLFtDmqmsHvtwPjCp9n5j/GRsTsujgOQBcmoBWuVtvFk7ZeSsqClnacRyyTg7SctcIG53+dO5lwnK2dzXi23Q3HESFPTqjrIOXeordxO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4v8JeD9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52854C116B1;
	Wed, 31 Jul 2024 21:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722461360;
	bh=aMxlNqX2qkd+M6bNpofNqITV9lOq1WevJ8FjDZTCryw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d4v8JeD9UghYY5+Dc3m1OCf/2iGE8RIESaBstv7KRGxq5ybVRjL6FMupwG0fNpwXe
	 dKjetBRAQP9XsLRg+0zj52bC9TDFVoO6JQY2kVevlGp6NAJ/hPVgU/BQfE8Lzbq6cW
	 bYLlgFy0HbnO4bu3oWPvbvNduk1R45oZbI0l/LktZUoDKnUpG2OXcfnMIok2PefWwC
	 pjfySf1LmkEA3q45EJThqkkm0PW/qwajxvSCLtcqPKQnbxMPLfLJleDn5eEK2dIYNA
	 YVmo1dNtvQzIA3sJGzvDchwfnUJhDauKjppnO/yjD2ZxO1LLFOPRl1sbHWKEHeXRj1
	 8fpFeLc6UwVaQ==
Date: Wed, 31 Jul 2024 15:29:18 -0600
From: Rob Herring <robh@kernel.org>
To: Alessandro Zanni <alessandro.zanni87@gmail.com>
Cc: skhan@linuxfoundation.org, dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] [DT Bindings - Arm] Altera SOCFPGA SDRAM
Message-ID: <20240731212918.GA1927684-robh@kernel.org>
References: <20240731165241.22635-1-alessandro.zanni87@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731165241.22635-1-alessandro.zanni87@gmail.com>

On Wed, Jul 31, 2024 at 06:52:18PM +0200, Alessandro Zanni wrote:
> Added yaml file that substitues the old txt file.

Write subjects that match the subsystem. Use 'git log --oneline 
<dir>' to see this. Here, the prefix should be 'dt-bindings: '.

Use get_maintainers.pl to send this to all the correct maintainers and 
lists.

> 
> Signed-off-by: Alessandro Zanni <alessandro.zanni87@gmail.com>
> ---
>  .../arm/altera/socfpga-sdram-edac.txt         | 15 -------
>  .../arm/altera/socfpga-sdram-edac.yaml        | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
> deleted file mode 100644
> index f5ad0ff69fae..000000000000
> --- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> -The EDAC accesses a range of registers in the SDRAM controller.
> -
> -Required properties:
> -- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a10"
> -- altr,sdr-syscon : phandle of the sdr module
> -- interrupts : Should contain the SDRAM ECC IRQ in the
> -	appropriate format for the IRQ controller.
> -
> -Example:
> -	sdramedac {
> -		compatible = "altr,sdram-edac";
> -		altr,sdr-syscon = <&sdr>;
> -		interrupts = <0 39 4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> new file mode 100644
> index 000000000000..4e70daebf1c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> +
> +maintainers:
> +  - Dinh Nguyen <dinguyen@kernel.org>
> +
> +description: >

Don't need '>'

> +  The EDAC accesses a range of registers in the SDRAM controller.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: altr,sdram-edac
> +      - items:
> +          - const: altr,sdram-edac-a10

enum:
 - altr,sdram-edac
 - altr,sdram-edac-a10

> +  altr,sdr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: 
> +      Phandle of the sdr module      

blank line

> +  interrupts:
> +    description: >
> +      Should contain the SDRAM ECC IRQ in the
> +      appropriate format for the IRQ controller.

Drop. Just need:

maxItems: 1

> +
> +required:
> +  - compatible

All the properties were required before.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sdramedac {
> +      compatible = "altr,sdram-edac";
> +      altr,sdr-syscon = <&sdr>;
> +      interrupts = <0 39 4>;
> +    };
> +
> +...
> -- 
> 2.43.0
> 

