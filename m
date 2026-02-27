Return-Path: <devicetree+bounces-269437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO67H30Vomk0zAQAu9opvQ
	(envelope-from <devicetree+bounces-269437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:06:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAD41BE77E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9DB130068C9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B9F478E4B;
	Fri, 27 Feb 2026 22:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jhCOfcDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5D1E5724
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772230010; cv=none; b=AIklBGO/dblnWYmStrbf4/6AoyeSVOdRF/J1aQvjqLrYnErfgdDdybPPBs2K3j2cFDCYicVZd5Yqzxdv5SIFriB2b4El9nJfAZRQeLxi1YaW9385UUTb07HLm5P1sntusUOGsjYSM66lrjunNCNBkLoHSlT8UhQ6WJcG8rV7I78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772230010; c=relaxed/simple;
	bh=IIOCEw2t+0l72LMoF+mobRrMZmX5NBn1xnXPFaoBKs0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AGGa2x3lJWln4fbL9/4auhP2ZCiVGFzm3wNIiNt9IJNAraxk5vxxdf3QyUTAS3bi+i/Ts5Vm+mSUH2N5kxeF8pL472pCtjhII2c6XePaMRx6ZrI5nrT5LqUhQ8M6JqGSsZREa/PzrCsGsaQZ3ePwEPlFZPNfDpDvNr4348H2ye8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jhCOfcDT; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-482f454be5bso33474175e9.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772230008; x=1772834808; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=89iRGH0zqziCtR4XYNUtyhFhnoYfn28eiRVuc9YsATM=;
        b=jhCOfcDTHshPuWlToF+gdN8VogLay6L6JIl4340gZZsqjn3RlKADwuZicfS3beBvlY
         9MXWozCmHar8Ft26xBD2NqTdUMm4IdOxwfrCCanYS4vj2AOkEDI24BIFkOQbrbSudCSj
         YfqR2eae5QP16kf6mFBVUgr1JF/sCH9jpKzmxZzn1byTj0tN40Rap6zt8sYfk8KC7GAZ
         zVilwSlA81FcqISPIMRBnDYGzfks717ObK/VsuaYE/IS5sFCRPMjDHBMOY1fV1SPt0D1
         BON/wHrI6JM4uoZRHa5ngE8C2Jm3dOZVAWW5uzaVfogbjh7r4ThKaGsambkiDNobshNl
         E8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772230008; x=1772834808;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=89iRGH0zqziCtR4XYNUtyhFhnoYfn28eiRVuc9YsATM=;
        b=UzuglX4Dn1QPMSfnEbP5CYWVpSvX+K9Luhd0GWMyjcRFYEeA2fYck+SqC+LhVq22Yt
         IMWRscIYNz/pAqX1dKnE2edt/jLu7WkEGSywtkdveS/xhwTpT+MQtNUOvzDJQVtAXnD1
         4cC1HV64IVU7wFTZS3vs9CbU4x60CU4Ky7GVLRnpIUJstxWTAfKGNNtXDtv2PE/04gpV
         xDKzrCzUVJxdXztzj/pAHcNoIIIsOCxWWPRszwqHEycymKpy8maB4aWhCtYsxpOPfeVr
         k0qB9Kn4NbE7UgGB0SCOIk7cAowQcno6eq7yFu3WgYPJ7SjH1XlQuYTlFDy98lFLKDt5
         KNZA==
X-Forwarded-Encrypted: i=1; AJvYcCXfhOWEbt0UnGzquD5yhb56EaxfJzmXRQ16Npk51Ry2iWXsq+I8zTNX5lszm9R+BjGcqfmuU3JHI893@vger.kernel.org
X-Gm-Message-State: AOJu0YwuL1YYckcQzv7i0mNuNj9yYSdv+MesCZQpmYAgGSesvskLVcNZ
	yoHxbXYKVS6o+p0AJPYVScnrXo0VMPjrB6BX25ehAezcCO5w+2kWBtMV5YZjCrOOlac=
X-Gm-Gg: ATEYQzxgXTpx+h25urmIBglrWbsyP7GcLVDiz/OxDtQtb/C2ZcBcAKmCMvF3LMMiN4v
	m7Tp690KTHWUluQyZ8LEti/BUO/DHWrOE53SUAc6RBeFV9MGPsgc0xQ6DAIr4CGJuMwlvF4Pqa+
	IgtH63pEGBlzIA79EcK+BzYC9k/l5C233FvEIRQqW9ujs6+Rk99GVr+361xHA9p283eXb5c7YLl
	wCSdJHSVGLAoAlzdQS0Q0sE7uTPufQvdMFeIJCjZZY9QIjtgxSpF5vv+8v0BzWuY9lh/v05rn9+
	PcICPzAMOaew+frPhPgJF6ejoExLg9dhDUAZ1PLbr9udkTwQbKhbHF/2yqjbMybYb0SC1EK8lCw
	Efn59pi/8ROmJ9bCgi475zFmXCSd0V7+9vHWiWmX9Sba+YJrFyoprHd4x0/oCDqRgPYKk1cL5Jz
	1TAYNtq+5wUNKJzSOVS/Gwi7seiLT3lJY2TVyAVGdDilYI0X6ecdPpSpS+/5maBdOO4M/IycDyk
	RcY4A0505IyUtpf2pVID/Z0uQIsMqHlPhM=
X-Received: by 2002:a05:600c:608a:b0:47e:e2b8:66e6 with SMTP id 5b1f17b1804b1-483c9934dd3mr76689115e9.14.1772230007672;
        Fri, 27 Feb 2026 14:06:47 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd75df90sm246321165e9.14.2026.02.27.14.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:06:47 -0800 (PST)
Message-ID: <148be140e22947a1f3524f24d8f55218650d3f2e.camel@linaro.org>
Subject: Re: [PATCH v8 13/18] arm64: dts: qcom: x1e80100-crd: Add ov08x40
 RGB sensor on CSIPHY4
From: Christopher Obbard <christopher.obbard@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Bjorn Andersson	
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robert
 Foss	 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Mauro Carvalho
 Chehab	 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 27 Feb 2026 22:06:46 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-13-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-13-95517393bcb2@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-269437-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.36:email,0.0.0.0:email]
X-Rspamd-Queue-Id: EBAD41BE77E
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Define ov08x40 on cci1_i2c1. The RGB sensor appears on the AON CCI pins
> connected to CSIPHY4 in four lane mode.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 76 ++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 76 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/q=
com/x1-crd.dtsi
> index c89f5ad0aed56..d47404c71b80b 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/gpio-keys.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> =20
> @@ -901,6 +902,65 @@ &gpu {
>  	status =3D "okay";
>  };
> =20
> +&camss {
> +	status =3D "okay";
> +
> +	ports {
> +		/*
> +		 * port0 =3D> csiphy0
> +		 * port1 =3D> csiphy1
> +		 * port2 =3D> csiphy2
> +		 * port3 =3D> csiphy4
> +		 */
> +		port@3 {
> +			camss_csiphy4_inep0: endpoint@0 {
> +				clock-lanes =3D <7>;
> +				data-lanes =3D <0 1 2 3>;
> +				remote-endpoint =3D <&ov08x40_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci1 {
> +	status =3D "okay";
> +};
> +
> +&cci1_i2c1 {
> +	camera@36 {
> +		compatible =3D "ovti,ov08x40";
> +		reg =3D <0x36>;
> +
> +		reset-gpios =3D <&tlmm 237 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 =3D <&cam_rgb_default>;
> +		pinctrl-names =3D "default";
> +
> +		clocks =3D <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clocks =3D <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clock-rates =3D <19200000>;
> +
> +		orientation =3D <0>; /* front facing */
> +
> +		avdd-supply =3D <&vreg_l7b_2p8>;
> +		dovdd-supply =3D <&vreg_l3m_1p8>;
> +
> +		port {
> +			ov08x40_ep: endpoint {
> +				data-lanes =3D <1 2 3 4>;
> +				link-frequencies =3D /bits/ 64 <400000000>;
> +				remote-endpoint =3D <&camss_csiphy4_inep0>;
> +			};
> +		};
> +	};
> +};
> +
> +&csiphy4 {
> +	vdda-0p8-supply =3D <&vreg_l2c_0p8>;
> +	vdda-1p2-supply =3D <&vreg_l1c_1p2>;
> +
> +	status =3D "okay";
> +};
> +
>  &i2c0 {
>  	clock-frequency =3D <400000>;
> =20
> @@ -1515,6 +1575,22 @@ &tlmm {
>  			       <44 4>, /* SPI (TPM) */
>  			       <238 1>; /* UFS Reset */
> =20
> +	cam_rgb_default: cam-rgb-default-state {
> +		mclk-pins {
> +			pins =3D "gpio100";
> +			function =3D "cam_aon";
> +			drive-strength =3D <16>;
> +			bias-disable;
> +		};
> +
> +		reset-n-pins {
> +			pins =3D "gpio237";
> +			function =3D "gpio";
> +			drive-strength =3D <2>;
> +			bias-disable;
> +		};
> +	};
> +
>  	edp_reg_en: edp-reg-en-state {
>  		pins =3D "gpio70";
>  		function =3D "gpio";

