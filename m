Return-Path: <devicetree+bounces-277792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uG9mCGf6u2mzqwIAu9opvQ
	(envelope-from <devicetree+bounces-277792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:30:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBA52CC03B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBD6C30CCC21
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39CDB3D47D9;
	Thu, 19 Mar 2026 13:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRXwXbt9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9096029ACF6
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773927004; cv=none; b=Ty8zMWNuswEBQDkZHIlX7d9HcV4kCHNu6rkYVgIFhEOvHnGqXW2ax7g9vA7p3D+ZoGnBIpPJ35TOKBKSB0KVjUb0z/fd7rPEAVg3Qk+XHAcp60d4Gat6xwIZcGaYNzbqrdJLy5/jqqhWL6HCTV9TP3uLYnGGGS6KaXZsVMTXQ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773927004; c=relaxed/simple;
	bh=ncx0G9KktBPLHIhyw+YjWyFz4qKn+uPH0Uh5irzi8U0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hKTcJw2PC9SaiHyCFvrKL4MIjUjO1bfSq7v/ixf8NkOaU0UnsHwpxtBfaN8b85x+psPk+JM3KjBbwy69pqIEcR6u4wYBWsx+74kmYkSUfpPlYLUCayvmgDUb6YZO+HzXzzvRsQmmtIKA4aOzTevVpPtIn9/SNxk0NkXqIE5/2cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRXwXbt9; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-38be58eb01dso1158111fa.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773927001; x=1774531801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=USMz5MsHqxDaHUDz4ZLBPX/cfdLXEt4o+4zZ81T5/Dw=;
        b=NRXwXbt9QXF5ymZXpjwF6QjFjXBg5V+2edCvEFLnDJuvph+Auc3lCt7ooCAnp5vh51
         eoOktc1KjbeViRHgF07peiAmnPlfTebqPra33mTef25ejzmKYfcywztFM6pzWv2yYsTc
         XiwDbJJPERadIsOEbkJ+Ml75izAH9Jq0pefI1T86uALVuMwSliul4IE5sf/xSBQMbOyj
         JeKUm1StzCruEk+he3s7MbkyIlAS+LFCwo5egSYeWcU9/GiFrtgxCyiOBV+TKMWoNN8z
         sZANz43vWVgawe1rzDIZ4QH7tq9TZsFgtIWcBVsYMSx6gBMq9blH5BhzgbOL8Yrcz5eo
         WULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773927001; x=1774531801;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USMz5MsHqxDaHUDz4ZLBPX/cfdLXEt4o+4zZ81T5/Dw=;
        b=oOaFka9vFp8JFyYKL1VEaPOEW4todKlXC4Kjv8c0haBDiMMwVT4H6U5odW9+gvm8Nm
         7TtRwLU1WUmgo9x4gzIu7YfxMob74aWUVpi0mh9u4e3oRgQMQJLW5Ql00j+uOXUcQFV8
         9ocJT0BNzA9avwPrDHgNpZC2jyg5Fg8I80EqwdDkcAbKcKc5lBfSLFX8AhnKWMdSOX9E
         mihgsECLjSqlNTj2F+D+wPZW4IA19Kwv47tAuR+7hMWuyvfJ+jF0EeEGJQzg0l0QGTpE
         nO+1ui+fEoLY+MpO8PaxBfmUbMohdCW+HcqAUGz0MbhJrZViqMoacgDfee9KfisP2fjM
         xVIA==
X-Forwarded-Encrypted: i=1; AJvYcCWL46xep+/qfi5cLUat+qV9JIKV7wd1A26jnx5Acb8ppZxWGZ25Iu0Xt9SxX5fc38NJ2JNvfXFWyJge@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5QacQdU/qQOjoMGciZgKtOCz+IkshOdVOobXpcXIjzNe2nEdc
	ud+3YZBpSi8p7vai4om8ah0xN5vApViMheUy8SCQHpq9wIh2QPa7bt4Lf6qvP2OPauw=
X-Gm-Gg: ATEYQzx/XhTk4txEB48qc1aWoIAkDkc7BuLIbL917V7hvCu41JU9Yv0AEvHxOQF6z3E
	x/53hmWgXG9L+R05K88pLNm9rJhzQEtpP976P+HDkEUTms4XBkfQ2XX3dxCkQUPw176sQ3XVeHa
	RgxERVi5bnEgCalfr+0BLiCJi4OBgZydjGpv6a/bMlbiQcllqUxMt6gMzIRu28zy1Bp4a9qgEqM
	cy4y+RigvAXRbJ2NC9A3TzdZ+4P6+4no22ogamPpI72zSpNtYVd4SjOw8/fhIHHHErMLmUgC3C4
	REnGzfYu73uc5seMnBfCq/qosUPggBGPkZcYDxKy7M39AdzSoHepGTgOvsGkHQ6tMDtH/tigWDx
	dKQ+1mmUIRHFR0ISX31HPRBr/rcMbVwM06fU3SfnWfhhBTfo5POZuw5TdrNXNlGD9CRDyoeb1ca
	v2ezrkB95u51BNnh69Jf7GpRj1LPRWfrmEhOo+KtshjWZrfJWx7ca0LSbCFzRirGYNA+IsL7pDi
	n1c6y7hnSKYMHjz
X-Received: by 2002:a05:651c:19a6:b0:38a:f5a6:9190 with SMTP id 38308e7fff4ca-38bd586daeemr13196791fa.4.1773927000489;
        Thu, 19 Mar 2026 06:30:00 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd54ba2afsm12098711fa.28.2026.03.19.06.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 06:29:59 -0700 (PDT)
Message-ID: <2ad1a60e-43a8-4d89-a04c-b3e3c3afdc42@linaro.org>
Date: Thu, 19 Mar 2026 15:29:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Add front
 camera support
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260319-fp5-s5kjn1-v2-0-6840da94c574@fairphone.com>
 <20260319-fp5-s5kjn1-v2-2-6840da94c574@fairphone.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260319-fp5-s5kjn1-v2-2-6840da94c574@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277792-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.10:email,0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid,f100000:email,qualcomm.com:email,0.0.0.51:email]
X-Rspamd-Queue-Id: BBBA52CC03B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Luca!

On 3/19/26 10:12, Luca Weiss wrote:
> Add and configure the necessary nodes to enable the front camera
> (Samsung S5KJN1), connected to CSIPHY 3.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/kodiak.dtsi               |  7 ++++
>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 47 +++++++++++++++++++++-
>   2 files changed, 53 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> index 343da1b18095..6cbf6ba5fbc0 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -5774,6 +5774,13 @@ tlmm: pinctrl@f100000 {
>   			gpio-ranges = <&tlmm 0 0 175>;
>   			wakeup-parent = <&pdc>;
>   
> +			cam_mclk3_default: cam-mclk3-default-state {
> +				pins = "gpio67";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			cci0_default: cci0-default-state {
>   				pins = "gpio69", "gpio70";
>   				function = "cci_i2c";
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index c9c24c36ba7e..aaba40478891 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -12,6 +12,7 @@
>   #include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
>   #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
>   #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/media/video-interfaces.h>
>   #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>   #include <dt-bindings/sound/qcom,q6asm.h>
> @@ -626,6 +627,24 @@ vreg_bob: bob {
>   	};
>   };
>   
> +&camss {
> +	vdda-phy-supply = <&vreg_l10c>;
> +	vdda-pll-supply = <&vreg_l6b>;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@3 {
> +			csiphy3_ep: endpoint {
> +				clock-lanes = <7>;

Please remove this notorious and kind of senseless under the CAMSS context
'clock-lanes' property, unfortunately it gets copied over a lot...

> +				data-lanes = <0 1 2 3>;
> +				bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
> +				remote-endpoint = <&camera_s5kjn1_ep>;
> +			};
> +		};
> +	};
> +};
> +
>   &cci0 {
>   	status = "okay";
>   };
> @@ -666,7 +685,33 @@ &cci1 {
>   };
>   
>   &cci1_i2c1 {
> -	/* S5KJN1SQ03 @ 10 */
> +	camera@10 {
> +		compatible = "samsung,s5kjn1";
> +		reg = <0x10>;
> +
> +		vddio-supply = <&vreg_l6p>;
> +		vddd-supply = <&vreg_l2p>;
> +		vdda-supply = <&vreg_l3p>;

The list of supplies could be beautified by applying the alphanumerical sorting.

> +
> +		clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam_mclk3_default>;
> +		pinctrl-names = "default";
> +
> +		orientation = <0>; /* Front facing */
> +		rotation = <270>;
> +
> +		port {
> +			camera_s5kjn1_ep: endpoint {
> +				data-lanes = <1 2 3 4>;
> +				link-frequencies = /bits/ 64 <700000000>;
> +				remote-endpoint = <&csiphy3_ep>;
> +			};
> +		};
> +	};
>   
>   	eeprom@51 {
>   		compatible = "giantec,gt24p128f", "atmel,24c128";
> 

Nice to see that the sensor driver works for you!

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

