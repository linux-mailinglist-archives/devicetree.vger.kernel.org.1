Return-Path: <devicetree+bounces-150795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E1A43913
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B01B93AE80C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74070260A51;
	Tue, 25 Feb 2025 09:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BfWMXTa9"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C3125E453
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740474488; cv=none; b=qL0XkOwhb5Tze537NGmHOO1XCHv4jVfgiEv62uFF1SijjrHXk/OsFKGaYIq+8jXejSJIdi2o/k1krRIMsZErlMxtE/r+NFN9sl01EH9QsoV5y2LTheq5W/G6NfneKMUtoRmlsktl7ZE3rkMnhCuo49t4vv0ZJN3hSDwRw8Qgq3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740474488; c=relaxed/simple;
	bh=G/+50M2fvc66Y6BosMkvmFsG4ouSWiq1zH7ZcGOkJb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nmvWyKHpZ4kfE5CFPIjWmvMLVTsGUl6oXF8fLBe9kir75CL7zia0B/ETTqLo54Bzscf6+4GDUjf2yybEogkStNSw3t/uasYZYCseJpMkMnc8nboxveLbZHpA5tSe9l94Vfd5Yle/6EUaslMk0QPjAb6Yk3tQa4qyDGKLAHcDBwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=BfWMXTa9; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740474484;
	bh=G/+50M2fvc66Y6BosMkvmFsG4ouSWiq1zH7ZcGOkJb8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BfWMXTa9I0TI8XsW6I94eEtr8qilAfLD++57kbY1w9ZKR4LDa4bmOsgr4vUnQFVpe
	 a2SSZiEPVnTLtmq9aV5b2RgfArs87tvJG2Qf8x89aPecaaHY5rEA575jJVsBGQBbDU
	 SQKIQo2dkuojNJdI2i+WWj5WcMbWEHQSzT8vExkFIcvlt1FJbxJqE8sM0pllZNXZNX
	 R05meTHsy7Rr1Z8Pypj9vNKNHANyZGXZ9JwP5/SHG9lY/QsZGw+MpZQ9ZU1TtiRxy4
	 Rczhhb59qMOaVKj9O/o8h9wvB9BSEmaF3QCfKRt7N4Go1KpfRBWJJ2Ky3GD/kW7u3w
	 FeOKvyaCZFXDg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B97317E0866;
	Tue, 25 Feb 2025 10:08:04 +0100 (CET)
Message-ID: <e278b16f-565c-43e5-ae15-863c9ef3f8fb@collabora.com>
Date: Tue, 25 Feb 2025 10:08:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: airoha: en7581: Fix clock-controller
 address
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
 <20250221-en7581-dts-spi-pinctrl-v3-2-4719e2d01555@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250221-en7581-dts-spi-pinctrl-v3-2-4719e2d01555@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 21/02/25 09:01, Lorenzo Bianconi ha scritto:
> Fix the following warning for clock-controller node:
> 
> DTC [C] arch/arm64/boot/dts/airoha/en7581-evb.dtb
> arch/arm64/boot/dts/airoha/en7581.dtsi:176.37-181.5: Warning (simple_bus_reg): /soc/clock-controller@1fa20000: simple-bus unit address format error, expected "1fb00000"
> 
> Fixes: 7693017580e9 ("arm64: dts: airoha: en7581: Add Clock Controller node")
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   arch/arm64/boot/dts/airoha/en7581.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> index 9a419796594d3a99e1187dcca622469bf5a888c3..26b13694091735da7af977e42f8f546d7d5cb078 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -173,7 +173,7 @@ spi_nand: nand@0 {
>   			};
>   		};
>   
> -		scuclk: clock-controller@1fa20000 {
> +		scuclk: clock-controller@1fb00000 {
>   			compatible = "airoha,en7581-scu";
>   			reg = <0x0 0x1fb00000 0x0 0x970>;
>   			#clock-cells = <1>;
> 


