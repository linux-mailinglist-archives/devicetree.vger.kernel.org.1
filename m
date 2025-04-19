Return-Path: <devicetree+bounces-168774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE47DA94507
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 20:25:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C08347AD1FA
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A951DB12D;
	Sat, 19 Apr 2025 18:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="RKUJDiHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A182129D0E
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 18:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745087139; cv=none; b=WBFDhakL4HBUzh5rVBvGVx8DciP+W80MWfBpJajNv6Qb+ZOYK3yMnurWRGoS+90UqcodfmckY6tjNiuKYN43eDJWyy0+9m3H5ANgAz8CRaCGtTx6q6+Qb7qZ4NTGbPprrNaDZ3Gz/Y6yk6sHLZQjoy5d24qxRMpd8lU4P3ah5gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745087139; c=relaxed/simple;
	bh=UEn706X8hYJbCxBncnqIRA7WuEz4D4cYEqyA2PdlTBs=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Ekf3JDSoCxktOCfO9Sw0oxiUyVa1NoROso5TDpKcKlARtokN/4s8BzEGj1oK0Jx0fzqAHr4Ikr/fWJrvjBCGAaEoeo+xrjXLsuIB+IY9uJPFj/IXmSv/ch7hCtEar3pWXfOTvjUINJY8PI7VgLDAVUy/9VGFEUEaQL1K7l92pX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=RKUJDiHi; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1745087135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=orMkFEn9Kjf0umg1zaoi5nee/R2a2ehLYNgxJLg4N7Q=;
	b=RKUJDiHiafeZeW8TT6hKir8/IDedgqGkZqsD/WmCs53hJOFMtA/XAo3Q8MsvRTNlpo/Wep
	TPIg4L8S13Ng9qHWfltQa832yKQqew6wiOJX7anTJ3zm6AaQDrGTkn6w6BrZqZgIzaWsXa
	AvkbgNGSqi057noI8y5ovgc+s4pmiXuFpssn3HybRhqbeO032NUVjaVqkZomdQU2npcnQT
	LPHBT4/ASq4mIyoZWuawCYN8zNIcG3/WdSzANmUjcV5LLsRnGMI/u00Z59efabJYDoH/LX
	6TFfACPQJ9DcbKgLEesPIcVvVYhsRwATvffXoX1iMwkBBY8ZHXD1+1X6UYgoNA==
Date: Sat, 19 Apr 2025 20:25:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on
 SoPine
In-Reply-To: <20250419160051.677485-3-pbrobinson@gmail.com>
References: <20250419160051.677485-1-pbrobinson@gmail.com>
 <20250419160051.677485-3-pbrobinson@gmail.com>
Message-ID: <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-04-19 18:00, Peter Robinson wrote:
> This adds all the pin mappings on the WiFi/BT header on
> the SoPine baseboard/A64-LTS. They're disabled by default
> as the modules don't ship by default. This includes, where
> they haven't been already, UART1 for BT and mmc1 for WiFi.

The patch subject should be improved a bit, to include
"Baseboard" as well.  Having just "SoPine" is a bit too
vague, and it should actually be written as "SOPINE"
at all places in the prose.

> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git
> a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> index be2347c8f267..64d696f110ee 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
> @@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
>  		regulator-min-microvolt = <1800000>;
>  		regulator-max-microvolt = <1800000>;
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
>  &ac_power_supply {
> @@ -103,6 +108,18 @@ ext_rgmii_phy: ethernet-phy@1 {
>  	};
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
>  &mmc2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&mmc2_pins>;
> @@ -175,6 +192,14 @@ &uart0 {
>  	status = "okay";
>  };
> 
> +/* On Wifi/BT connector, with RTS/CTS */
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	uart-has-rtscts;
> +	status = "disabled";
> +};
> +
>  /* On Pi-2 connector */
>  &uart2 {
>  	pinctrl-names = "default";

