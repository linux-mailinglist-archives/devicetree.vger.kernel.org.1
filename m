Return-Path: <devicetree+bounces-168773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 539DAA94506
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 20:25:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83A7116DA41
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2D519066D;
	Sat, 19 Apr 2025 18:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Gxm3iyXA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DF1130A54
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 18:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745087132; cv=none; b=nCpNm7G0Ce4lUvrc9HBGbRccySq913JLI1or2HHpWSDL8L/3DCeweq8cRv+mXiMZ2yX+5VCqyODTn1UymQd0hBNp2iVBJOt6iA0dxX00Yv2wbxmMvbucWJMnadgNcrDxrhpB3w3cDnyhJbsdO9UInfCHv0LGjcnGaTa3Gs3R3kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745087132; c=relaxed/simple;
	bh=hyTYWXL6hBuyI/gvaFl/eQGGe0uzyPYy+WTnYz+jCPU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=WYvkxnnbUhYgK2ofJpoRh3qMp6xufBsr4kg7gTpkmfSsW0sYou4OddjnjscW00bIDi1ZDwaxOHiRNFa6sMzs4YsLSLcvdjbexBjn1N/4rsalqP7979cKX3nR8O5wn+rzeBeOWrEFq0nlSqSNRdHCl1ascyChJEasQMSzaM52nIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Gxm3iyXA; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1745087127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b/Yf3GYBLMjcbsQjmUcazNuprLTTnJ8iv6nWe+Zhemk=;
	b=Gxm3iyXAzq9C3ct3zpb2lzTWXFZxRey/272QctC48Hj97wwL6ExDUnrKgHs4aHpsBzBYdM
	HAXA/EQIjPmpgrG2oQYhjkE35YnlB6XptMLChG7leM8UAE7Ywv0itH0gI6bbr3I8fbenIo
	orWdBoasjHC52OSN5AZNnD3BLRn25pZfKdukQF0OLvQ6pIGjq0vAj1Ck810xsRnMyLCqZS
	4FrOXrJaEb1YLbdBYy9i4ot+83TykofTvSwrU22sfOR6WVoHvqSCchbaLWp7P2paISozP3
	SzG398V79rxHJLx4PYJnK0kvaiFbxLrIC3SXKvIblb0IVDQMVMVKDHcvEs1i9Q==
Date: Sat, 19 Apr 2025 20:25:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on
 Pine64
In-Reply-To: <20250419160051.677485-2-pbrobinson@gmail.com>
References: <20250419160051.677485-1-pbrobinson@gmail.com>
 <20250419160051.677485-2-pbrobinson@gmail.com>
Message-ID: <17c65a34625b328efad258a2ffc7a688@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-04-19 18:00, Peter Robinson wrote:
> This adds all the pin mappings on the WiFi/BT header on
> the original Pine64. They're disabled by default as the
> modules don't ship by default. This includes, where they
> haven't been already, UART1 for BT and mmc1 for WiFi.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts   | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> index 09e71fd60785..764fb191107a 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> @@ -35,6 +35,11 @@ hdmi_con_in: endpoint {
>  			};
>  		};
>  	};
> +
> +	wifi_pwrseq: pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
> +	};

Is there a reason why the status of this node isn't set to
"disabled"?  Or even better, why don't we move this node
entirely into the proposed DT overlay?

The required reset procedure actually depends on what's
found on the add-on module, so it should belong to the DT
overlay that defines the add-on module.

>  };
> 
>  &codec {
> @@ -124,6 +129,18 @@ &mmc0 {
>  	status = "okay";
>  };
> 
> +/* On Wifi/BT connector */
> +&mmc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc1_pins>;
> +	vmmc-supply = <&reg_dldo4>;
> +	vqmmc-supply = <&reg_eldo1>;
> +	mmc-pwrseq = <&wifi_pwrseq>;

Of course, the "mmc-pwrseq" property would then also be moved
to the DT overlay that defines the add-on module.

> +	bus-width = <4>;
> +	non-removable;
> +	status = "disabled";
> +};
> +
>  &ohci0 {
>  	status = "okay";
>  };
> @@ -286,6 +303,7 @@ &uart0 {
>  &uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	uart-has-rtscts;
>  	status = "disabled";
>  };

