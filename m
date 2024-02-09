Return-Path: <devicetree+bounces-40123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF8384F525
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 13:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC8651C210AB
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 834E031A93;
	Fri,  9 Feb 2024 12:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XcuRfnDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE341286AF
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 12:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707481362; cv=none; b=JE/jPJQqC0JPrVHC4mZoZ2q80JpeFGXYgyWQ8BDKKgevoFu2+1sBhfalsgvUpljekpxQNR/5lso+/wMpBqVOcqz3VNxc9M9NjGpWVMpuaG0z1E1SodMmLPPgLy3J336eZ6QmPJD5Yq97VnItQ6mRafxQ2ZfLjaikPJQuNpojymw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707481362; c=relaxed/simple;
	bh=oFEEbDXfmmzP8QbRnUkcyxwY9mMWHjNhcqwa9mI/lJY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YfEyRPXEQ+3Cn+Y4q3hZBjG0L5+3ym3C7EcviSIYpM3NMx5O8p/10FfIrehLqHESa++l1Y2Zt0XbemdbiKf5C3ufhKCl6HL4PS5Pr5HgfC6daLPQ8nKy2CasKdqe+s66CiyeWQNNTGdleTu7nUbdG6lWUwUpUcs5mVC5Z9iLYzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XcuRfnDr; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a34c5ca2537so111106866b.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 04:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707481359; x=1708086159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SoX+X5emKM3HKsN7dxRQvW+2KiX8jUZhrjjzHJukYA=;
        b=XcuRfnDrWH0HDcLoeZez2UbF2M2oq5T4v40PTlxBRSSaTnODslZULbXfPFsyoxEpSc
         qkvzG0tfrBjFmIH7v9mDHKr4n8viF0uRMHa1Vbma4i/NXZr7Os4H7AwyUyDLzvsRLN1i
         440aGpWSBx2B094MColVuXEgYhpYTkDTbWrH3AVH+F9gtJb6wyRV3ksjINUYlRuhXar9
         J502NjdVbnPJt58GwR2gx2GheDhKwde5cn8hbUH2+Qs9Wrf2KmqVNqagwAz/CmA+vrlc
         YxDq/rx2fb/IGyA89H3mS3DWZR/H5hRsGcAdKzs+G/lVInfhjOZ8TJzrR7a/FUyqcdTy
         YU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707481359; x=1708086159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+SoX+X5emKM3HKsN7dxRQvW+2KiX8jUZhrjjzHJukYA=;
        b=spn6oPJMVsf8S7XI5xgoso68VIQLBSf7241zP610jqbsEO+796i3JdH9Ws055Gfl/x
         D49uHopftsvCfZUAxdkjA9gDwOIbK5lmrdrxBP9kVgkKGyVIACXKU763se7tpi7QWCRz
         h2t32JGwRV9N1GBeutye6nKGTJ0vGM9erj/jXJdnKQ2zWnws9XtrMdEZzDTQSL/6eGoc
         m4Rbdmhm4CUDfjFVRI2FmvQZ1Jj8n7dC2xiHJCGkUaA9rO35aSo0fP4jYp3Y0PLY3ByG
         d6BGMOo1e3eZpxKVQNhkT2+BiYm5zzPpKU5dQvJmxmagRNUwuCXUjszpcFVIe0Moj0rG
         ttIw==
X-Forwarded-Encrypted: i=1; AJvYcCV2ENQZUm+bO0Z/bMAJ8/rnW3cvByC4t1fzs+gF2N9nGuB67QlKLnXbaJrXTCSk9Z19eZZfaez8aPwWAxqxqLsCtnmuYPhRM9ABLA==
X-Gm-Message-State: AOJu0YyHDlKWc3zm/jChA9CCj7eZ8GdpyW6PxGHNEMDT6PXYNjSK7RVL
	k+OAEhiQ8O92FyqKUDPRFPVqc/7I75AMgmF6cI2GuHEBPo1q/p8o
X-Google-Smtp-Source: AGHT+IFqbq9P0xGdfOKDIJgZO56dR6ZuVyS1Klbpl63+dubhHar/VKQISUEGfcAZg7Y7yv4oLS590Q==
X-Received: by 2002:a17:906:a3cc:b0:a38:1c13:332b with SMTP id ca12-20020a170906a3cc00b00a381c13332bmr1107974ejb.59.1707481358958;
        Fri, 09 Feb 2024 04:22:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVx8NFDf4tLWFDLXdZubliemhHmfEKlUKT6i8BoHLRcZXz4bDCOc/zx0Hnp/H1OXNtRyCYGj4W+2Gi/zOE0h99WxhFH6UfakOP5Dpa2FRcwh6oOhFIKF0AIEGg2nLX2m8HvfTrSdsIfBRf2z3AytG+FAULzCzIB2jMocDipOGTxO4jVZaf4ON7hFxbTWtMr/SQg90XOroLzxCYAW7muMzncs4rIqXoDhTIQfe50QbtRUHC/iL5TalQldHMdgbZddDhGrwSwrIOBAaHDF6Hpt0fFA0mi/Owj516ODQkaIjnDBtDH8sV5QnueghHxp5PXVGidc9QrCwZfj+nrKk1kQA==
Received: from jernej-laptop.localnet (APN-123-244-98-gprs.simobil.net. [46.123.244.98])
        by smtp.gmail.com with ESMTPSA id un8-20020a170907cb8800b00a37669280d1sm709075ejc.141.2024.02.09.04.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 04:22:38 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject:
 Re: [PATCH v2 2/2] arm64: dts: allwinner: Transpeed 8K618-T: add WiFi nodes
Date: Fri, 09 Feb 2024 13:22:36 +0100
Message-ID: <4894722.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20240209115759.3582869-3-andre.przywara@arm.com>
References:
 <20240209115759.3582869-1-andre.przywara@arm.com>
 <20240209115759.3582869-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:57:59 CET je Andre Przywara napisal(a):
> In contrast to other devices using Allwinner SoCs, the Transpeed 8K618-T
> TV box uses a mainline supported WiFi chip: it's Broadcom 4335 compatible,
> packaged by Murata.
> 
> Add the required DT nodes to let DT users know about the SDIO device.
> There is an otherwise empty MMC device node, to receive the MAC address,
> that firmware might want to write in there.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../sun50i-h618-transpeed-8k618-t.dts         | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> index 8ea1fd41aebaa..7ec4098e707bf 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> @@ -16,6 +16,7 @@ / {
>  
>  	aliases {
>  		serial0 = &uart0;
> +		ethernet1 = &sdio_wifi;

Ah, this is not sorted alphabetically. I can fix this while applying.

Best regards,
Jernej

>  	};
>  
>  	chosen {
> @@ -39,6 +40,15 @@ reg_vcc3v3: vcc3v3 {
>  		regulator-max-microvolt = <3300000>;
>  		regulator-always-on;
>  	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rtc CLK_OSC32K_FANOUT>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&x32clk_fanout_pin>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
> +	};
>  };
>  
>  &ehci0 {
> @@ -60,6 +70,19 @@ &mmc0 {
>  	status = "okay";
>  };
>  
> +&mmc1 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg = <1>;
> +	};
> +};
> +
>  &mmc2 {
>  	vmmc-supply = <&reg_dldo1>;
>  	vqmmc-supply = <&reg_aldo1>;
> 





