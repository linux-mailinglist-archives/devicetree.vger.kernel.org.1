Return-Path: <devicetree+bounces-56255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B41E6898352
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5BE41C269E5
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 08:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155406E611;
	Thu,  4 Apr 2024 08:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CJNm1EuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9C659B61
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 08:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712220211; cv=none; b=Ev6V6j8fvGctI3cKFVhHzyndrCTMnkl0XMYU14azQt3oI01KkBauCYT1pvgOP7wWiEQ3jRD8vcl7RiczLV6zQcJj3Ns2hlrZgjinXogq5ujsfkU60wDY5Q1hAA17uU9w7AN9Z7UQIu4SmiTfzDI4gCGE0DQ+nuOAxEWSXb/pGps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712220211; c=relaxed/simple;
	bh=Iac66xVtNYHXo8go2JKEoVRF+t+iIvpH4kE7QbHrewQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZtIngmE8xvjUjnyhfZuPdo/19GXdSW59/zAvQvsmQ21K09j/+6SKsayMP4SBWc2isW8LSRr/hNqkdQH0R1cxY8xNd0kXEpYXuv4PFukkaV+gB4uOjVX7Bxbl73920WCpejPCteYSL0K6vo9FB0K4zQufrw7XO2Frfqq8p+V1LyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CJNm1EuH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3434c6e1941so351853f8f.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 01:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712220207; x=1712825007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=19jGzhVrD+fzZqYJDEGSgNzPhjsllfP6NWI7lu8VmF0=;
        b=CJNm1EuHEL9fRm0DhuZ3oli/3X7WjOzrIydkc6+GpfQMGs33Uf+bL/Uhn0J8qQ9Q1F
         P8dhG9iGREV2lia02D+w7YLDBDooXcRSdxS0dyas6nKvEhVrHI0GWcfg8+oDW/rS1yjy
         X50o9GD8pEOqBztPsDMU0fIDs+qrjy3UQ6hhKeEZLGgnUPpvArJKhDC2ZvDqFwVXpjtS
         5b2cEWLXXjzDLfNhdOcv2ZOKH8PxSXvxZEw3kJzhx2Cc6WYvM3R9/sF6bJDP+NoeLd6A
         weoYtFLkasbg6K36wy+dVfKtBvGdRhck8G8kaIgcQWyHfcGqSBF+k0aVqJiLgNRgJhMk
         w1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712220207; x=1712825007;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19jGzhVrD+fzZqYJDEGSgNzPhjsllfP6NWI7lu8VmF0=;
        b=wvwUMV3c8EOI5cqm77y7Z/RLO16jo7mNPuuEEsTCo396O5kecs7oWbgMz0nL+dtFN/
         T3uZhe2TdyrRhy13MD2KQ7TfJgVVZXyF/bX/GqetEwvomxGGKKrKyEFn8StWl36t4PEz
         6hMCR7xBF5jthFF5whOgzV42l8F8CE562dM0exUPJD8ocfd4+ZxZDOeuGk3mav6LsiB/
         gvB8baAXVbYMuguB15+EAEIp7OnXSI+iSKQgBKyNP30ZU9MHgSkHm5UnxvLJd3nM/eT1
         FtMLy75mTdpoGWpa9oSlEJS70irLPgyemzfjmilj5okX9fuVMQp76J3uba0O0Xs9p1+D
         uQLQ==
X-Gm-Message-State: AOJu0YzOoaKToSw9N2rJDmDNFTRcwEKIrt36qdO/uE/sOLna3j8l1l/k
	Ar2xthrOBBRR/MnF1Cn1zz0DrLSRqXWDd6zx//M9kyEd2PXASRy0DdCBj5VkcwnhfbTTsb6lujK
	i
X-Google-Smtp-Source: AGHT+IFRW8UR0zBXWn0krYERSz7rUcxepm1DXmUHuJ+GnlPyVRpAzvYtJ5ldONSjqRJnwWdEZWACuQ==
X-Received: by 2002:a17:906:6a25:b0:a4e:7c40:d0f7 with SMTP id qw37-20020a1709066a2500b00a4e7c40d0f7mr1290804ejc.25.1712220186871;
        Thu, 04 Apr 2024 01:43:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id ag12-20020a1709069a8c00b00a4e222225ebsm8829782ejc.15.2024.04.04.01.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 01:43:06 -0700 (PDT)
Message-ID: <18eb0e55-38ad-44f9-90b7-1917d8c0d5bb@linaro.org>
Date: Thu, 4 Apr 2024 10:43:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am62p: use eFuse MAC Address for
 CPSW3G Port 1
To: Siddharth Vadapalli <s-vadapalli@ti.com>, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20240404081845.622707-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240404081845.622707-1-s-vadapalli@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/2024 10:18, Siddharth Vadapalli wrote:
> Add the "cpsw-mac-efuse" node within "wkup_conf" node corresponding to the
> CTRLMMR_MAC_IDx registers within the CTRL_MMR space. Assign the compatible
> "ti,am62p-cpsw-mac-efuse" to enable "syscon_regmap" operations on these
> registers. The MAC Address programmed in the eFuse is accessible through
> the CTRLMMR_MAC_IDx registers. The "ti,syscon-efuse" device-tree property
> points to the CTRLMMR_MAC_IDx registers, allowing the CPSW driver to fetch
> the MAC Address and assign it to the network interface associated with
> CPSW3G MAC Port 1.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> This patch is based on linux-next tagged next-20240404.
> Patch depends on:
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402105708.4114146-1-s-vadapalli@ti.com/
> for the newly added "ti,am62p-cpsw-mac-efuse" compatible.
> 
> v1:
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402094200.4036076-1-s-vadapalli@ti.com/
> Changes since v1:
> - Since "wkup_conf" is modelled as a "simple-bus" rather than being

And maybe the hardware representation is not correct? What bus is it?

>   modelled as a System Controller node with the "syscon" compatible,
>   directly passing the reference to the "wkup_conf" node using the
>   "ti,syscon-efuse" device-tree property will not work.
>   Therefore, I posted the patch at:
>   https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240402105708.4114146-1-s-vadapalli@ti.com/
>   in order to add a new compatible to be used for modelling the
>   CTRLMMR_MAC_IDx registers as System Controller nodes, thereby
>   allowing the existing "ti,syscon-efuse" property to be used.
>   Now, "ti,syscon-efuse" points to the "cpsw_mac_efuse" node within
>   "wkup_conf" node, with "cpsw_mac_efuse" being a "syscon" node.
> 
> Logs verifying that the CPSW driver assigns the MAC Address from the
> eFuse based on the CTRLMMR_MAC_IDx registers at 0x43000200 and 0x43000204
> to the interface eth0 corresponding to CPSW3G MAC Port 1:
> https://gist.github.com/Siddharth-Vadapalli-at-TI/9982c6f13bf9b8cfaf97e8517e7dea13
> 
> Regards,
> Siddharth.
> 
>  arch/arm64/boot/dts/ti/k3-am62p-main.dtsi   | 1 +
>  arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> index 7337a9e13535..848ca454a411 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> @@ -696,6 +696,7 @@ cpsw_port1: port@1 {
>  				label = "port1";
>  				phys = <&phy_gmii_sel 1>;
>  				mac-address = [00 00 00 00 00 00];
> +				ti,syscon-efuse = <&cpsw_mac_efuse 0x0>;

Why this is not nvmem cell, like or efuses?

>  			};
>  
>  			cpsw_port2: port@2 {
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> index a84756c336d0..df9d40f64e3b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> @@ -18,6 +18,11 @@ chipid: chipid@14 {
>  			reg = <0x14 0x4>;
>  			bootph-all;
>  		};
> +
> +		cpsw_mac_efuse: cpsw-mac-efuse@200 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
> +			reg = <0x200 0x8>;
> +		};
>  	};
>  
>  	wkup_uart0: serial@2b300000 {

Best regards,
Krzysztof


