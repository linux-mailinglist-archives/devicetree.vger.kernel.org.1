Return-Path: <devicetree+bounces-150949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28244A43FB3
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B55573ADE9D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25BC12686AE;
	Tue, 25 Feb 2025 12:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="N3fqnP1A"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE920F076
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740487909; cv=none; b=TG8gnEpTe37XSYA9qUSXixBxEKeeUjm+YaZZpR8N3yiAMEzhuZ/L4hd/8JCP18c1jqECiQk0EBpjDGlNlopphHMpdNPuUDir672YR7Fmicf3iEPqqlrlO26Ljwu5GmqvUvqJsO0RzDTiH9xEoogMuRSzPwll4O5yyPDW85+g7Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740487909; c=relaxed/simple;
	bh=qAdn74AM2lDhY895TRkOgxqgadKZ6yY5aB9zQuiKRWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xf5SygmUOor9tUbWYd8ybbRYSZKulMUVamsWvJ3AopdhYwXSyhoLlZjMQOKDmFaX25uhWGRNREYI42xJiLGQ8CgivyjYsngd65q80sVgHcn4S1lRtZ6bMZKXNKWYIAbpYrAwgD87EaZ5DPQQLLqtzIqnYYh7eWf2KsKkwmBfOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=N3fqnP1A; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740487905;
	bh=qAdn74AM2lDhY895TRkOgxqgadKZ6yY5aB9zQuiKRWk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=N3fqnP1A91Pwh/37qfY91FmNkzrXy1pFCEdedry+ney7WVFo04hjr6aWUaGs3qnue
	 Ozh+Z3hBpBUMxwnyDIiFI1qkr07tovoRo7FLKtW75no3QTXg9GAzUdHk2XjDMxlNdh
	 nmTXT4uYlTp8VwYOWfRMbpHo1bfRpp4kSJVeHghKwgnlMYTfDX1CySUI5zoZoXsg7B
	 qqKnQSyYB8FsxyZJhWYKed9/8XJS2tmRfAzaSH5Th8xUj7rKyyaky2mULAivfbCmod
	 BPJTiiViwNyF0b2xIHQwTqrqYmXs3gKvG/5930W2YNttnTg7vgfyDRE0yqbFix+k3W
	 sm8GqTcEZnZqg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CE45717E09E7;
	Tue, 25 Feb 2025 13:51:44 +0100 (CET)
Message-ID: <ec6c3ade-cb08-46cf-b8e0-bcc64d3f7d78@collabora.com>
Date: Tue, 25 Feb 2025 13:51:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: airoha: en7581: Enable spi controller for
 EN7581 evaluation board
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20250225-en7581-snfi-probe-fix-v1-1-77e4769574e4@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250225-en7581-snfi-probe-fix-v1-1-77e4769574e4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 25/02/25 13:47, Lorenzo Bianconi ha scritto:
> Enable spi controller used for snand memory device for EN7581 SoC
> evaluation board.
> 

Please clarify the commit title:

arm64: dts: airoha: en7581: Enable spi nand controller for EN7581 EVB

After which...
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Cheers,
Angelo

> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   arch/arm64/boot/dts/airoha/en7581-evb.dts | 4 ++++
>   arch/arm64/boot/dts/airoha/en7581.dtsi    | 2 +-
>   2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> index d53b72d18242e3cee8b37c7b1b719d662fd6db8d..cc69f698c27b804953b1bb671e128d4401744bf5 100644
> --- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -25,6 +25,10 @@ memory@80000000 {
>   	};
>   };
>   
> +&snfi {
> +	status = "okay";
> +};
> +
>   &spi_nand {
>   	partitions {
>   		compatible = "fixed-partitions";
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> index 26b13694091735da7af977e42f8f546d7d5cb078..49c061d38d7860b3b416610723791a7a91edcb69 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -150,7 +150,7 @@ gic: interrupt-controller@9000000 {
>   			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
>   		};
>   
> -		spi@1fa10000 {
> +		snfi: spi@1fa10000 {
>   			compatible = "airoha,en7581-snand";
>   			reg = <0x0 0x1fa10000 0x0 0x140>,
>   			      <0x0 0x1fa11000 0x0 0x160>;
> 
> ---
> base-commit: 0092294492fafe79a537915e486576a3d69c9a7c
> change-id: 20250225-en7581-snfi-probe-fix-c325bedded9e
> 
> Best regards,



