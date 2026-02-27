Return-Path: <devicetree+bounces-269440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFo7JgwWommizAQAu9opvQ
	(envelope-from <devicetree+bounces-269440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC6F1BE83E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF6EA3026D9F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB23B47A0CD;
	Fri, 27 Feb 2026 22:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WgbcI9S2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5647AF4E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772230131; cv=none; b=jaSEh7H4j+BxXBH0YOUXgSBimP+eTsg1+mZd/wSzLpCYoLzmRb3wD3fYZP2szErYmv0v9mzFInHVbHsZFuIOcqr2so8ww6mBFkoK1Fq30+qf/yp6ZPFDKyQ9qp0qFfOSrMILUfUdTqdpfKA/ZFEgQdrwb/nIwDgiTCfLTzRUA8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772230131; c=relaxed/simple;
	bh=iNSxSIh+ll79sf4TNG2hK58H2dS4Xk6YssNMKaMP+fY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cB9BTHBL8xeX9oIk5ghY8jb5JuvJU8gpL1m/3PSE7Cxkog4ZqqG6IzKxiqzkyUcOoRQUTlN6fIEhmTOiuVo75NnQRPwsoHUBuNy92uU2kzmeGkH8dF/zORPBSkaRNCUf6zkMxvV+owwpOFoE3UtAiLgxM1AYGdp9oef1o0UIu3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WgbcI9S2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso21248145e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772230129; x=1772834929; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5jgh0ia5KAYwXdV6WzubAimlSgIWZXu7hr9crI9YEOI=;
        b=WgbcI9S2wbLLbpaGOETf5fJaqkGxJ04SN2tQQinMal6ImkiaKMD0ac8IDGENgh3/Is
         +CotPYn7+GkPGqz3ZouuCG1zhhnH77+Yk7wyAKdNpDxzK1aDpJlTBcZmesUnz5217uR4
         wc7mSb9DbJb74t7UHVA20HIlNwSmS3Y5rmqTZRPSbYfnsVQhow0T/HjKpBA3tg7QbAMd
         8vEyJjIm2EEryPXKg4ERpue180FrTr62Mn5k11pqDlQQ9S40Z9UJRDu0rWyZPy7vedE8
         aSQhBwb4mWQYXOrOhbuUouln0/nezPL5niRj0NErSwoD9kcpfBGJ33rVu/Ui9PFL5ABb
         p+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772230129; x=1772834929;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5jgh0ia5KAYwXdV6WzubAimlSgIWZXu7hr9crI9YEOI=;
        b=stc+31wA/SMqLvpoUC/taXnFconIUTHhevPOGrV5oQ+rUf75URJnsHUJEjKfWoV0+X
         Yya3sphWl4ANe7HnIcvRj+tmrIekhJ3Q2ZteDXEhusqCzyALjVyT6e3B8O31r8htTmcL
         6CRn3szrVanIRM2ayPNySIsZwJzS4+Xcutq4SynsG0bY8CHF51IDC8AdLfKp2nboDm2J
         2pCiZ/4GDWOVbkTbRiKTU9+Ypb9AkOcB83UhgAoxExclmXvJ9PGHnTYAstYGy2Fu40pC
         W+CSas3qWplGQGjdYkXCF7CkOQt7YJTUMlWoxnLvRKJj8xoUbdCaif03l5oLe1ldYgxI
         tDyQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/hXog8zhwuuSKwKhZEH+3CXvVNkEKVgl8+I4fz/ILPO7WBZpu5BEHjNbEOix/K0GuiP1vDTvwj2cG@vger.kernel.org
X-Gm-Message-State: AOJu0YytYqd3brY2mvkvEbD72FUopAcp0h+M0YPPqv9atYAiD6LZyMKY
	KU9uVNa89MZKde4G0dvosPYw1vJGCssl/mlLPkKrlLBeA+yiTnccuoyCnEH1NzvGUM8=
X-Gm-Gg: ATEYQzyiiga6Y86RQK2/Rt+k0lZKowPfvwfMQ9zYDj0JWIBDC5oWiL7E5CcNVNnrRo9
	rJxviU9RAJnS9auc36KRZbDTG14g3xNwEksuHSAZ4Yidxv/CCmB1mjOcy3rb7WFKSzNI5Gpfgt8
	4oNN+eMKFhTqihN1y8oT0DwGarbR3vbbgfP85EPgM37RgVFGvuJ8H5sorWadhITRg9qskXRPAII
	+Z93vk1HbIs3WO/avBotlOlr9MStV4BFSvitQ3rBlRHnHio0gegr6oC5pOJ0Hkw8Gm9qSYAJ16T
	Cp6sJjfIm9buPbsasRh/x8bZr6MThuJRf4kjmoH/nMDYkpzNyWkeAPRxRospO99ILsLSDRg7YGt
	4s3bvQOpovBPf/Ba65Qj803gPTVYMUhEKxJRhABaQBLw0hgS6a/dFV8JixKd9GB1OaXcK7haBk4
	EIkstS//d3duFsRRv5uq71gpQV3UkaTpxcthlCBcTYFEdpGaOg8D/MUNvazAsVXl9JmhjCrbBmx
	KKfAgDVepmy1Jide7Wv2XdG
X-Received: by 2002:a05:600c:4fc8:b0:480:4a90:1b00 with SMTP id 5b1f17b1804b1-483c9bead27mr64166715e9.20.1772230128544;
        Fri, 27 Feb 2026 14:08:48 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb987b0sm66574165e9.13.2026.02.27.14.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:08:48 -0800 (PST)
Message-ID: <2932da190f788d2a11f6743bd87b6ff4a61938ca.camel@linaro.org>
Subject: Re: [PATCH v8 17/18] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add ov02c10 RGB sensor on CSIPHY4
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
Date: Fri, 27 Feb 2026 22:08:47 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-17-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-17-95517393bcb2@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269440-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christopher.obbard@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.36:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,0.0.0.3:email,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBC6F1BE83E
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Add in the RGB sensor on CSIPHY4.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 77 ++++++++++++++++=
++++++
>  1 file changed, 77 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/a=
rch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index f10dff1da7f8e..f3f4841ad2c83 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -7,6 +7,7 @@
> =20
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> =20
>  #include "hamoa.dtsi"
> @@ -856,6 +857,66 @@ &gpu_zap_shader {
>  	firmware-name =3D "qcom/x1e80100/LENOVO/83ED/qcdxkmsuc8380.mbn";
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
> +				data-lanes =3D <0 1>;
> +				remote-endpoint =3D <&ov02c10_ep>;
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
> +		compatible =3D "ovti,ov02c10";
> +		reg =3D <0x36>;
> +
> +		reset-gpios =3D <&tlmm 237 GPIO_ACTIVE_LOW>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&cam_rgb_default>;
> +
> +		clocks =3D <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clocks =3D <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clock-rates =3D <19200000>;
> +
> +		orientation =3D <0>; /* front facing */
> +
> +		avdd-supply =3D <&vreg_l7m_2p8>;
> +		dvdd-supply =3D <&vreg_l2m_1p2>;
> +		dovdd-supply =3D <&vreg_l4m_1p8>;
> +
> +		port {
> +			ov02c10_ep: endpoint {
> +				data-lanes =3D <1 2>;
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
> @@ -1403,6 +1464,22 @@ &tlmm {
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

