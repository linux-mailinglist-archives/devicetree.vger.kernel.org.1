Return-Path: <devicetree+bounces-214201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FEAB4862A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:58:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84A363A2892
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9D321B9D9;
	Mon,  8 Sep 2025 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh599Qpx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89399443
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757318313; cv=none; b=lk3pH+D2wsvlO1JKykBZq3swGe4YEW26BBooFTDLyWkWNQv7Rb5MwBMAoY4ZQyUDGmUyA97o9bdmCWwcvsAS5pb4XutOAp0pdOwrOoRSSk5E2oN6k0aEaubIuUdrN6BWyhnvcu6u1cbkNILWkjTwvlbH7utBGGcojYxdgWqz2yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757318313; c=relaxed/simple;
	bh=7RbaCpwisjIvV0np7xralDx/7i1NwO1dNxNvPxS7cRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IQxZcMofphezCjBzMc1mzClQnjaBTc+vBLXG2UJ8NZxbl+ETK4h4k82AqePvaLgKpPt6lfqj1ENA+eMekoqcgkd0O8v1TcZR1AtognGOsBscS5+QGugg9d0TI7opJE8+B1GzNc8ABspXAlWw33MTSpt+tFvf+1T3gZ//L8xkNcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh599Qpx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F0BC4CEF1;
	Mon,  8 Sep 2025 07:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757318313;
	bh=7RbaCpwisjIvV0np7xralDx/7i1NwO1dNxNvPxS7cRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oh599QpxxIo8PH9Y4EwFMeDTf9vD7cyVcp7Y3kes/yK9AfUCE1kZTms6rxn/Pe6a9
	 Orof7kspFeNAPa1g7CynOowCSPuUDiGAR5HwM8Babk9UB47PgAjuAfqe+VZIBNOcMj
	 y6ZeF2aaQkzG4UypU7rxPR+PmojF89PoieYkiefNCOFLmyMm8VyqxnCCH50FhwA3Wc
	 fbN1yoMW8Pl6pM3KodKhZkR9PkxreLaqp/nYU3/ti4NV0jTE5MEGgHTLrWlWrmSXqB
	 4/EADpzcrIjSaJ6SF5OFJ2HY/WxS+7D654IraIMQjys38n4HywglM1GJpjCA9hmMbB
	 NZwcPXsHAz8kQ==
Date: Mon, 8 Sep 2025 09:58:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Frank.Li@nxp.com
Subject: Re: [PATCH v2] dt-bindings: arm: cpus: Document pu-supply
Message-ID: <20250908-honored-benevolent-woodlouse-3f101b@kuoka>
References: <20250907152513.590218-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250907152513.590218-1-festevam@gmail.com>

On Sun, Sep 07, 2025 at 12:25:13PM -0300, Fabio Estevam wrote:
> The i.MX6Q Reference Manual describes the three digital LDO regulators
> as follows:
> 
> "10.4.1.1.1
> Digital LDO Regulators
> The integrated PMU includes three digital LDO regulators: LDO_ARM, LDO_PU, and
> LDO_SOC. These regulators provide power to the ARM_Core power domain, the
> combined VPU, IPU and GPU power domain, and the rest of the SoC logic (except
> always-ON SNVS domain)."
> 
> imx6dl.dtsi uses the correct names to describe these supplies:
> 
> arm-supply = <&reg_arm>;
> pu-supply = <&reg_pu>;
> soc-supply = <&reg_soc>;
> 
> 'arm-supply' and 'soc-supply' are already documented, but 'pu-supply' is not.
> 
> Document the 'pu-supply' property and set it to deprecated.
>     
> This fixes the following dt-schema warning:
>  
> cpu@1 (arm,cortex-a9): Unevaluated properties are not allowed ('pu-supply' was unexpected)
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - Explain that PU is a valid name. (Krzysztof)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


