Return-Path: <devicetree+bounces-66659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3568F8C41AB
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 15:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E343C2825CA
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 13:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 627B51514E2;
	Mon, 13 May 2024 13:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hc9LoSrI"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94F2150980
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715606329; cv=none; b=qg5w59ScnlH7LcR5ZQh4o1naAI1BBRpcgjFDXl5r7McAQNt3oAsdTllp5m0gglc4v/pbZGbYu6XWLpCGsDVVRz6ll919ftzqrOymyayIhoFYyGuhBPnQ92wJZkrcG2atj2JP3ny7DE2lB6FmF9VqSL33hogaheA2qWHBxVMEp6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715606329; c=relaxed/simple;
	bh=t97Unp7RFvu8X9BfWzZrMSSAs1Et06nWvHkA4YhFGn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e3Bb7OUUakzkm1pf6cGLK7pWN7FV6ojP7z7siM24vQBuy3rfnnKFzH3CYvc9ca4zK3XawPSM6+OhnStiMBGqSeAk43iL5Ng0IAwuvJR+Xg3VSsZqPlkhKW144DE74JYIBjvLbWZXwR9k7zvMmZN8Qacw7Abs74bISmlW/Daejvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hc9LoSrI; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606325;
	bh=t97Unp7RFvu8X9BfWzZrMSSAs1Et06nWvHkA4YhFGn8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hc9LoSrIediHL21bEQssqc4OEfA1pW8MNWtd+d9jj7fS8JuxW/QttImJo2H41AUpS
	 mCUfHhzXgdilnT2BcdD10WM23jq0JVvwGaRUFiTFEKrooQEV23mDkB+2nuIxHxpIrX
	 rMBuZfnTQdvTZEV/Bp00vJ/goA2fnPeOxcdA7Fo8G8bClr9U73Iijmgm7lyuP3sBgt
	 3dfncasCB0Kt+kqGTu1B/3JMAe3HL+GMSVN50CQC0s6hziAkbM7gUJq8ERyhwmx/Sy
	 bs3X93g/fevYXo/fAoO4rLSepd1IvJ7BjP8J0iRaSoBEU2v1i5WLtLtn4SSrY2AJne
	 86zfpKsWTXLMw==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 894CE3782017;
	Mon, 13 May 2024 13:18:44 +0000 (UTC)
Message-ID: <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>
Date: Mon, 13 May 2024 15:18:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce support for Airoha PCIe PHY controller available in EN7581
> SoC.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   MAINTAINERS                        |    8 +
>   arch/arm64/configs/defconfig       |    1 +
>   drivers/phy/Kconfig                |   10 +
>   drivers/phy/Makefile               |    1 +
>   drivers/phy/phy-airoha-pcie-regs.h |  476 +++++++++++
>   drivers/phy/phy-airoha-pcie.c      | 1227 ++++++++++++++++++++++++++++
>   6 files changed, 1723 insertions(+)
>   create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
>   create mode 100644 drivers/phy/phy-airoha-pcie.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ce9fac46f741..d918d41a80a3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -653,6 +653,14 @@ S:	Supported
>   F:	fs/aio.c
>   F:	include/linux/*aio*.h
>   
> +AIROHA PCIE PHY DRIVER
> +M:	Lorenzo Bianconi <lorenzo@kernel.org>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> +F:	drivers/phy/phy-airoha-pcie-regs.h
> +F:	drivers/phy/phy-airoha-pcie.c
> +
>   AIROHA SPI SNFI DRIVER
>   M:	Lorenzo Bianconi <lorenzo@kernel.org>
>   M:	Ray Liu <ray.liu@airoha.com>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a53c58584bcf..c0eacced5d41 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig

No, this should be in a different commit.

> @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
>   CONFIG_RESET_QCOM_PDC=m
>   CONFIG_RESET_RZG2L_USBPHY_CTRL=y
>   CONFIG_RESET_TI_SCI=y
> +CONFIG_PHY_AIROHA_PCIE=y
>   CONFIG_PHY_XGENE=y
>   CONFIG_PHY_CAN_TRANSCEIVER=m
>   CONFIG_PHY_SUN4I_USB=y
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 787354b849c7..8f9a7a6c4bba 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -72,6 +72,16 @@ config PHY_CAN_TRANSCEIVER
>   	  functional modes using gpios and sets the attribute max link
>   	  rate, for CAN drivers.
>   
> +config PHY_AIROHA_PCIE
> +	tristate "Airoha PCIe-PHY Driver"
> +	depends on ARCH_AIROHA || COMPILE_TEST
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Say 'Y' here to add support for Airoha PCIe PHY driver.

Say Y here (without quotes)

Apart from that:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> +	  This driver create the basic PHY instance and provides initialize
> +	  callback for PCIe GEN3 port.
> +
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"


