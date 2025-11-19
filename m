Return-Path: <devicetree+bounces-240103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C008C6D6D4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 323792D4CA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BABEC2F657F;
	Wed, 19 Nov 2025 08:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qJmdJSYX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43A12F0C7D
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541100; cv=none; b=b4KLT1my6752MLcMFMpEk7kbgC6C5UUks2h4Aa3yKQbMlNTFp0PdK0htsc4WwA30FY2QzMYrlQkYP4uRG+Zx18lwwyRhSTkGtdXexC43hcBsRZzsYA7SC6jsFzVvroM5C5KNrkXZurjTe9QkBi6xc67Gfe5Nrw3G533K81Rt1B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541100; c=relaxed/simple;
	bh=ZuBWKOdVAFAOmqoa5M4ZLpGMNs9qJYmQ3DcoqwSA48k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DiR1otDfB06WXIfYPBQhPNrnwabP5GuZCtyrH8mlHEh3FG+20Y9VjTALKmWBixxrE8y1ANPkRLoOZHYUBCENZP9h31YXoXReeom9FETX4h/EtHq72xz8ojT4qCYGf6oaTaTw04+fpJqtqmifgkqXxOj+sd3JLY9nXTQ2fMBnXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qJmdJSYX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763541095;
	bh=ZuBWKOdVAFAOmqoa5M4ZLpGMNs9qJYmQ3DcoqwSA48k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qJmdJSYXkVBe8OMKOImYi6JtUTraSCcrhS86SVW2eMTIfhuglwZJ3drtVSVTY/4Ut
	 cq+w2LJX09kHFQmY8N2NG7cvLZMXa6LPh8Rjd/1BBnkPmXhUH66O8om4EZaQYxm2s7
	 A5HmuuqIz7Usz2lllJGSL8b/Kg1hGfCwO00s6aFg9ptVk2BHFv8Bw8fb73Hi8pSsvg
	 DE4UaYvurTPUs7sTTB7/J3VOad1bnaqbYslP48tP8iqqF2bri92QSiQnEci60ZpNKE
	 U9ZkxhXmBDubbEGN1q/ne1G6EXc0/2JxmaWlBu2Z6NdCl0LqZyfBKSZjsqw4xOIVqi
	 AvaH6i00//DZg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6CB3117E129C;
	Wed, 19 Nov 2025 09:31:35 +0100 (CET)
Message-ID: <66693e69-7ad8-4067-9bd3-ef1454e3ec18@collabora.com>
Date: Wed, 19 Nov 2025 09:31:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188-geralt: drop firmware-name
 from first SCP core
To: Chen-Yu Tsai <wenst@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251119070230.1716418-1-wenst@chromium.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251119070230.1716418-1-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 19/11/25 08:02, Chen-Yu Tsai ha scritto:
> Arnd pointed out that having firmware-name in the device tree is wrong.
> Drop it.
> 
> Fixes: e36be19823f0 ("arm64: dts: mediatek: mt8188-geralt: Enable first SCP core")

Fixes here is .. well, right, but wrong - as if you "fix" that in previous kernel
releases, you will create regressions :-)

For all of the currently supported boards, I was planning to temporarily leave the
firmware-name properties in place for one kernel version (v6.19) and remove it from
all of them at once, for kernel v6.20.

I'd be okay if you send a commit or a series removing firmware-name from all of
them, without any Fixes tag and without any "fix" word (so that we avoid autosel
backports at all costs!), but keep in mind that I'd pick that in the next merge
window, and not right now.

Thanks!
Angelo

> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>   arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> index 7fedbacdac44..8e423504ec05 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> @@ -1166,7 +1166,6 @@ &scp_cluster {
>   &scp_c0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&scp_pins>;
> -	firmware-name = "mediatek/mt8188/scp.img";
>   	memory-region = <&scp_mem_reserved>;
>   	status = "okay";
>   };



