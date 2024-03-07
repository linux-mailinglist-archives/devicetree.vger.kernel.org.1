Return-Path: <devicetree+bounces-49081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D1F874D9E
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:39:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68FE5B239F0
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 11:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90EEE12AAC5;
	Thu,  7 Mar 2024 11:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="m4hmbgYh"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA012A17B
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 11:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709811434; cv=none; b=CDipOh03PZEoZmJCN5qhQ9dyZj+C/k+6XqvXBi8tKRLRl7GBnJW2I/GN5fmJ0/eMY3L5ASOmEY79MXfT7CAcqYkzfCCSE7rk59Gvo/tXDMS2kcoxoEGwbJ9QZfCevpegQB0lTgTdz6tK2gUSuKM1AU5QZiLuwTQwhhiOr7v8/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709811434; c=relaxed/simple;
	bh=OiL5HpPsybRvSLp9WYT9DwNhYPtTFOwVebHC1Wm+0yU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i953kXHCb2URdLPMY3tMIhYV9d1/P76Wiay3Ng99tqWSf2D3QQJJaFC/qngrn8cGz+eawvYv8EVMcDKhJVBP7qGepu1rxnedPEJU6RN+D6mMlQdC+wW2PaQQenSfElSPicKa3gWt+SCsPeMDCiUuU2+rJCHMqrkKZJlhuaQ9HbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=m4hmbgYh; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709811430;
	bh=OiL5HpPsybRvSLp9WYT9DwNhYPtTFOwVebHC1Wm+0yU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=m4hmbgYhVgYajPtsuOr3r4dOzY6FZe89QHqYJ5hPxRdCuiV0t8ES9pWkV9DHgY/vx
	 J3BYNKC4JAQGCAoAycMj/lfqwRN9/EsPyIOOFRsqrDiz2SS5jLm1QmB3VprH8qGBHJ
	 RhZHG5sxYn+yCj2CoOrYfhRFsCamF5nvMe9aJL537/haQXQ/307XXR40msLrZ1/07c
	 ykm9P9S2NERLL88Sxsez8f5uNoe06WUUQyEv7JlJ+KTAR8LlTSIMSdLDJwclKDh94y
	 6KaVmlvKi4YUbJGnAFqWIQwjxX1WkNT0sOLlEqeg4N3u1L9BDN7FllNqzG3YL0R/DZ
	 cHiKIn01OQT6g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1B5D837820BB;
	Thu,  7 Mar 2024 11:37:10 +0000 (UTC)
Message-ID: <6ff8ed9a-f70c-4ef5-97a7-37ddba4db7f6@collabora.com>
Date: Thu, 7 Mar 2024 12:37:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: add Airoha EN7581 platform
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, nbd@nbd.name, john@phrozen.org,
 devicetree@vger.kernel.org, dd@embedd.com, catalin.marinas@arm.com,
 will@kernel.org, upstream@airoha.com, lorenzo.bianconi83@gmail.com
References: <cover.1709768157.git.lorenzo@kernel.org>
 <b50faa94923389d435ac37c3094c269a46bddaea.1709768157.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <b50faa94923389d435ac37c3094c269a46bddaea.1709768157.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/03/24 01:11, Lorenzo Bianconi ha scritto:
> From: Daniel Danzberger <dd@embedd.com>
> 
> Introduce the Kconfig entry for the Airoha EN7581 multicore architecture
> available in the Airoha EN7581 evaluation board.
> 
> Signed-off-by: Daniel Danzberger <dd@embedd.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   arch/arm64/Kconfig.platforms | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 24335565bad5..bbe61e233034 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -8,6 +8,19 @@ config ARCH_ACTIONS
>   	help
>   	  This enables support for the Actions Semiconductor S900 SoC family.
>   
> +config ARCH_AIROHA
> +	bool "Airoha SoC Support"
> +	select ARM_AMBA

ARM_AMBA is selected by ARM64 already, you don't need that one here.

> +	select ARM_GIC
> +	select ARM_GIC_V3

ARM_GIC and ARM_GIC_v3 are also selected by ARM64

> +	select ARM_PSCI

ARM64 selects ARM_PSCI_FW (which should select ARM_PSCI, please verify)

> +	select HAVE_ARM_ARCH_TIMER
> +	select COMMON_CLK

ARM64 selects COMMON_CLK already.

> +	help
> +	  This enables support for Airoha EN7581 multicore architecture
> +	  available on the following SoCs:
> +	   - Airoha EN7581 Evaluation Board

You're not going to add one ARCH entry for each MTK Airoha platform, are you?

(if you are, that's wrong)

....so the help text must be refactored; you could say something like
"This enables support for the ARM64 based Airoha SoCs"

...also, I'm undecided whether MTK should be mentioned or not, here, as those
SoCs are (...at least the 7581 seems to be) really based on MediaTek router
chips, in many instances, sharing the same IPs.


Cheers,
Angelo


