Return-Path: <devicetree+bounces-242755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A5EC8E73A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30C723AE2A7
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0766257830;
	Thu, 27 Nov 2025 13:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AZzbizIk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7BA257AEC
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249936; cv=none; b=SMlyvY7XKOlORRGPS5CLQdENwn1cKktuwCZTtMcCGQcekV7HBmSwnRdfTshthrT8MWL+N6fmOK4YcuH8E/nRYcm80ikdkQen425aD8U9bFPwWGQH9HGqW725kR6XL5Tqxxp7KMgy0IBaofFL4cJ0kbwi8NlUG7M4S7SMtEWE5ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249936; c=relaxed/simple;
	bh=aEiQVMDoMgNcxL4GiRqNIJWzllGGLe7RboB7EQdNgAI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lWbXLhPYtD7s+0aPO52hJXIwcFOdjSnDazABixW09hn3yTWt50TKKpj/KwWU+72v/7EYe73GH5AWOE0q4J7DGa2yMr/EPkmsGlphNS0R2luF/VXih28HoHkqfuIe7CYhBGcBy3MLqPyZZ4/o0k0RD1kc7FiIS92igC5D+WyF7ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AZzbizIk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764249927;
	bh=aEiQVMDoMgNcxL4GiRqNIJWzllGGLe7RboB7EQdNgAI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AZzbizIkgAjmlxdMrCRH9UpGgY4MV+GjkNFPdScQP/b3jx/kYcK2Dafll06rvzl5l
	 Dwy5k0aDjZcLSaCr5/DhtxRTfOPLQExZm6jh7bmQSd9C/ca1XjVH7GDgniahP1bXmR
	 +ldD2Sl3F2bmpvdNgdFttemhwq0mKYaDROEQ9VJWdo9xdWYGSSPod7wYIqmQHp0mF8
	 2Y0FpjWm/exFALIMAMKG45up+DO54QVk8M8+QOgkp/B+Maer7LvwDu715bw05gOBdD
	 /7JCrJDdSdfSzYxc0nszBqn/46vwNg473QJnte8AnaTZS6HVAdC2QnTiN4VTHiOSyy
	 rXhtGXcgIQETA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D28DD17E0117;
	Thu, 27 Nov 2025 14:25:26 +0100 (CET)
Message-ID: <fc5febc7-d1ee-4b93-81c7-eca7134e9c39@collabora.com>
Date: Thu, 27 Nov 2025 14:25:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix address range for JPEG
 decoder core 1
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Arnd Bergmann <arnd@kernel.org>
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, soc@kernel.org
References: <20251127100044.612825-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251127100044.612825-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 27/11/25 11:00, Chen-Yu Tsai ha scritto:
> The base address of JPEG decoder core 1 should start at 0x10000, and
> have a size of 0x10000, i.e. it is right after core 0.
> 
> Instead the core has  the same base address as core 0, and with a crazy
> large size. This looks like a mixup of address and size cells when the
> ranges were converted.
> 
> This causes the kernel to fail to register the second core due to sysfs
> name conflicts:
> 
>      sysfs: cannot create duplicate filename '/devices/platform/soc/soc:jpeg-decoder@1a040000/1a040000.jpgdec'
> 
> Fix up the address range.
> 
> Fixes: a9eac43d039f ("arm64: dts: mediatek: mt8195: Fix ranges for jpeg enc/decoder nodes")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Acked-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
> This was introduced in v6.18-rc1.
> 
> Maybe have the soc maintainers take this directly instead of waiting?

I'm fine with that; if Arnd wants to take it directly, that'd be easier for me as
I really don't expect any other Fixes commits for the moment (and I'm currently in
a very, very... very busy "moment").

Cheers,
Angelo

> 
> Also, I'm not sure if this error could mess up the JPEG decoder driver's
> internal tracking.
> 
>   arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index ec452d657031..c7adafaa8328 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -3067,7 +3067,7 @@ jpgdec@0,0 {
>   
>   			jpgdec@0,10000 {
>   				compatible = "mediatek,mt8195-jpgdec-hw";
> -				reg = <0 0 0x10000 0x10000>;/* JPGDEC_C1 */
> +				reg = <0 0x10000 0 0x10000>;/* JPGDEC_C1 */
>   				iommus = <&iommu_vdo M4U_PORT_L19_JPGDEC_WDMA0>,
>   					 <&iommu_vdo M4U_PORT_L19_JPGDEC_BSDMA0>,
>   					 <&iommu_vdo M4U_PORT_L19_JPGDEC_WDMA1>,


-- 

