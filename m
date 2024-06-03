Return-Path: <devicetree+bounces-71856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5627E8D83DB
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1223028499B
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C9612D744;
	Mon,  3 Jun 2024 13:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbKT6kAG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950D212D210
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 13:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717421187; cv=none; b=d9OLrGjFmvY/xkv0sJQqz9aL8yB7rLMuzKehaoq9gGqcmJ+igYiHi+p94ZD+3X0xad5Y39Co11SCFLNFjXxetOXk2mqdb5YkZgUcVaejQO74HgYcGs34DCQZvOTwvvl/Slp6wN2XGijslJI1CvvhAgsG5olUcYzJgTImJ/fXwaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717421187; c=relaxed/simple;
	bh=aUDsrU2QIcsWDDKaCp0JVtlZ76k0GE/XhY1fwjEveVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NC1KA9j/9oPos133T0fMi38WE9PH+wqnmUdzhlvuXEIUW5zBQAiTlAwWxF10L9kfStMzvZjbNBoYZFjh7FVOWvsJMw/IiqKZuWwKF+uOmJHezav2UllXzYfN3g68ckKSVsAwK1Q9vhatwCD+zZZnu2mFxcOR7tZGqcM3R1q5mWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbKT6kAG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3D2C2BD10;
	Mon,  3 Jun 2024 13:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717421187;
	bh=aUDsrU2QIcsWDDKaCp0JVtlZ76k0GE/XhY1fwjEveVQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sbKT6kAG0ykwt0kSV3EjlTqy8VZV52zRVoMJ4TvsKGIBXuEzeAje5qa+fC7rhTpaJ
	 6lN2bgmkY+SJWHRFMR+r3OkOJNFdvfCoTAiONdLdASMpw7Vz6CW2xRIuThKHbAtPGr
	 OU57M4l7uGESbtlLeeV0S4sL1wEIzD11m26WnrOHNPL0HNvYix7iwIoFlX7f+c4eba
	 4o97QYnACISM3H+ftVTX88R5i4a5nkwS5HaCxFm1RLmacBDpwAZoI/ZWNUd2Vd5c1D
	 nnMNXQbsEbTREiXRV8fpIbzSTvT8CeFGcHDDmRH0Jq5kONoSoayXfeIvU2S1IRqAvo
	 EEH2aZX7xRoYw==
Message-ID: <6207f2ec-0905-4d19-aaf1-b3849d4ac89f@kernel.org>
Date: Mon, 3 Jun 2024 08:26:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: stratix10: add L2 cache info
To: Beniamin Sandu <beniaminsandu@gmail.com>, devicetree@vger.kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
References: <20240515181249.296131-1-beniaminsandu@gmail.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20240515181249.296131-1-beniaminsandu@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/15/24 13:12, Beniamin Sandu wrote:
> This removes cacheinfo warnings at boot, e.g.:
> cacheinfo: Unable to detect cache hierarchy for CPU 0
> 
> Signed-off-by: Beniamin Sandu <beniaminsandu@gmail.com>
> ---
>   arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> index cbbc53c47921..0def0b0daaf7 100644
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> @@ -34,6 +34,7 @@ cpu0: cpu@0 {
>   			compatible = "arm,cortex-a53";
>   			device_type = "cpu";
>   			enable-method = "psci";
> +			next-level-cache = <&l2_shared>;
>   			reg = <0x0>;
>   		};
>   
> @@ -41,6 +42,7 @@ cpu1: cpu@1 {
>   			compatible = "arm,cortex-a53";
>   			device_type = "cpu";
>   			enable-method = "psci";
> +			next-level-cache = <&l2_shared>;
>   			reg = <0x1>;
>   		};
>   
> @@ -48,6 +50,7 @@ cpu2: cpu@2 {
>   			compatible = "arm,cortex-a53";
>   			device_type = "cpu";
>   			enable-method = "psci";
> +			next-level-cache = <&l2_shared>;
>   			reg = <0x2>;
>   		};
>   
> @@ -55,8 +58,15 @@ cpu3: cpu@3 {
>   			compatible = "arm,cortex-a53";
>   			device_type = "cpu";
>   			enable-method = "psci";
> +			next-level-cache = <&l2_shared>;
>   			reg = <0x3>;
>   		};
> +
> +		l2_shared: cache {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +		};
>   	};
>   
>   	firmware {


Applied!

Thanks,
Dinh

