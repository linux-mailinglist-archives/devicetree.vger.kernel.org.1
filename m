Return-Path: <devicetree+bounces-67270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B146B8C7435
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 11:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 663551F244F2
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C648914386F;
	Thu, 16 May 2024 09:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="rA/cINwG"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEF614375A
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715853406; cv=none; b=ZNBUpnFT8OxJf0dVvJrM+MVeww83ccMzJqqzBJrPKER4PzJlHcuywZXx6GviU428AkF8q+FzeEmExZZjrDSm8Jc4jWQGOzjO+vH6LdPVCnVElCIkMw0OvZy8oW9Znsm1noXJWTN9uU2j/gzqKDRXkT6/gCISB81VNFRSgK0uhPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715853406; c=relaxed/simple;
	bh=oA/UXMcp2VVqyN7tkM3AH9nS3G6Kq1aunr5jiHFLt+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iFuc/guQe/9zf69f6O3l0SOqb2QKjW2stiGqqmnRMLyINYUEcw1tE+A7eqSmHpUBdLyHbU01V4iEowhfFBL7XTyhv6Jt+11RR+A7hgz+RIf+ldE94Xy4mBbbOkRfHgFnZCfacrM9daaLAWGgrjRvWRkznFsJL1FNfwapGyPUBjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=rA/cINwG; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715853403;
	bh=oA/UXMcp2VVqyN7tkM3AH9nS3G6Kq1aunr5jiHFLt+g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rA/cINwGkSzsLAL7KcqGstkdt8TDmRpH5b76KmEldzedihua7SdEHscNoZVoraOVW
	 zi4Et9ZSuM41ouSdntdPqa1jnoS+/Wzm9/H+zB68slKo+c1hAk8XlbUUNpCwnlcp5a
	 TrYvpusCXgJxjuMFTr8STP6VE/KI9G8dQDUNWWk+uOknu1b1NJOdY4fRAmbMntsy0T
	 QY2plDSG7qBSEN8jiEhZoW4cYdMYnoPtHYAkg+zUZ2Feq3CXeUH6vosR3k8w9Lkigf
	 ucIpi+FHBSjXtKBH+GSyWLElBJ9/n/oAt23xPofJwzpIBx2LQsu3y3C6Vxzza50KLv
	 MNOslchl4gsKA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AE64F378143B;
	Thu, 16 May 2024 09:56:42 +0000 (UTC)
Message-ID: <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>
Date: Thu, 16 May 2024 11:56:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1715769325.git.lorenzo@kernel.org>
 <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> Enables the PHY_AIROHA_PCIE config by default.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

What about setting that as =m ?

Ignoring initrd, PCIe is not even boot critical on that platform :-)

Cheers,
Angelo

> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a53c58584bcf..c0eacced5d41 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
>   CONFIG_RESET_QCOM_PDC=m
>   CONFIG_RESET_RZG2L_USBPHY_CTRL=y
>   CONFIG_RESET_TI_SCI=y
> +CONFIG_PHY_AIROHA_PCIE=y
>   CONFIG_PHY_XGENE=y
>   CONFIG_PHY_CAN_TRANSCEIVER=m
>   CONFIG_PHY_SUN4I_USB=y


