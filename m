Return-Path: <devicetree+bounces-269441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GjiJS8WomnFzAQAu9opvQ
	(envelope-from <devicetree+bounces-269441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA62E1BE871
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 435A13054057
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDA847AF4E;
	Fri, 27 Feb 2026 22:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b6r6vM59"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9693347A0CD
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772230149; cv=none; b=CvVPw/Vg+augMeywnmhBI027xbX6HLM+vqdJXrIx7pl9cbDYWdyWUnkaB9wbU4tjh8zavfJFXLsHBT78xD8rxf5FFx/ZEvkX5VHBxoJig35y1WqKHOQy+8hxJ+0ir2xx6j0kAs/xfgTyNWzGF1WbRN1T51u+b1CZRhfrpVyhNpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772230149; c=relaxed/simple;
	bh=98AkFDXlrR4iB9QpwA3UCjqYK/P3OoGUgzoZ5+HkqJA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hgXuAMAOj81K6MLSMn82qpDtzin9o0ZIL7f2u9CTejmzgKUkd7iEIq0wNZyirGFzHHYINwAxOAEjgchAzzY0T04ImkEjAwd4Yp1Ue/naU747ca6q1OdBiQJBeI/2j908d0E0pf9xIVFFikIJQ4C2qovuW/Xpjfmdvc8lP4h7gCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b6r6vM59; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso21952465e9.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772230146; x=1772834946; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z7RecgdQ+C16NSEzjvh/jMB3DYPgqDT/tnpgvTYFMx8=;
        b=b6r6vM5959f7MFQ6SU+hHYn4BDOI73DUOFn8WWqhV9LXOioOcmhT+w8ZWomJqrKumH
         hUCrGzhYqPF/MIAiqzdQGBp0M8IdiBeF/gtFzCoO6Cd81RbzJsZVXN0Sbr9Stu0A7xDv
         7xGOd3PRdqlnP+huXi169tTcM75OfDtnQCTisKCZOvv0vM3utlHYUI+sdsPpRphjcgfQ
         Xor5s9siT6u8dRrfhJphd7WuWmV/S4/wg+KG5vI4UGy2ClPnxgzQWXkJf2U7Fkl1uHwV
         kwxBknLSpzgsCtFUU40jdVPEuTUdzTP2Q+6Y0ETgGLkO+DGTRUKQL8KxjrYD8EJZqOP2
         bA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772230146; x=1772834946;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z7RecgdQ+C16NSEzjvh/jMB3DYPgqDT/tnpgvTYFMx8=;
        b=IMRj/ZTpXSw2ytwtFZFA0yp4aN7QvQrwv/ZoQNQ4YtlnV+jkGJw98Esgx/Zv7pQXrQ
         dMpvIS9Rgc8AC0By88PvYZYRa1A0pldniWyWQItG8zf9JqNqflAzbnrdgbmrQJjR4VoO
         wEMnHEETBZU0wCOlndRRIlaT6YB8EFXG2xgQppDdBTx126djMLvFwvfvRG57RYFU5/5H
         98q8qMFuN5iN+kX48voeu6cUtIINQ/Ya9gCHhUimmPMFK2BxQdBnRerjHkUK9xLO0gN/
         n4sqKHhemyGDm+cRP6JLC6p2TfyzvglCSacdRyCeHOJuzscI8FnLnsDDJyZpvw4gWpUJ
         h0IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmiK8U6R24qq4ot4H++JqD2hONv2R/aoqg4BGEhTHJEKugWXrVn7HO2lS7Rskw8G5l+bBvxS3YdV8D@vger.kernel.org
X-Gm-Message-State: AOJu0YxhjSOG636SD5PI4vGyAFdCw965X+Ovm+pkjXRYbdMlSCGE7xo2
	kqZ8j+GDojPx3p6XcVF3/+5mMHWrmsXQpRbFdIDF5WulLXxl1aTSJTYMdmuaz+Uuuns=
X-Gm-Gg: ATEYQzyuX8Rg6cwd2CM9siK/TNy4hFqXglxD19a4+d411mqoebu7pGoh3zzf+Wu7jbg
	xIygl19/IdHNYY4d+p237xSluQdsF3Is4yUCsHMQHTKJoLJawsCcmTfMAvNNEksPT72iDNUbCpK
	TJNFxopgh+I3cBBrw1XNVjmvelOSKK17ijtphj50VAPZ2S/f3ShKaKNgCMBl9OMljQMDV5hEcvX
	CRaBfxWsNL+ch5/dVqyyrADTMisood/qVnzMWLBjDFGOs2WqwN6RyzvELNF+HAdvig1anTfStS0
	9sihX61iGq6YIiNYaG4OsNd2Dv6CEhpq5f3EsUkw9HuIpUn9Niqyuqd9kl922csBOs6YwRSzZVG
	jQHveUtQhgKDuQIfXknz1GJP3cpt2cVSmu/+hlI5+rwQ8i4KDs8SBBRv89YZggSTe4wnA9i7/KM
	jX7fNlk9ZEAfVoUrQfczW3R/BEW47Fd92//9UmgSlWA1AgPlXklRLBvHFUG9//3eZE2oF5kgubd
	vrsalN5HeIrWXtkhxepdcsq
X-Received: by 2002:a05:600c:1f06:b0:483:c12b:fe3c with SMTP id 5b1f17b1804b1-483c9bc555dmr63260965e9.4.1772230145893;
        Fri, 27 Feb 2026 14:09:05 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c7645b9sm8751392f8f.27.2026.02.27.14.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:09:05 -0800 (PST)
Message-ID: <27ecee1c897683c7b49b7ac8e31523b41d401668.camel@linaro.org>
Subject: Re: [PATCH v8 18/18] arm64: dts: qcom:
 x1e80100-dell-inspiron14-7441: Switch on CAMSS RGB sensor
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
Date: Fri, 27 Feb 2026 22:09:04 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-18-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-18-95517393bcb2@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-269441-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,0.0.0.3:email,0.0.0.10:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BA62E1BE871
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Inspiron14 has a ov02e10 sensor on CSIPHY4. Enable the list of dependenci=
es
> now.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

>  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 61 +++++++++++++++++++++++=
++++++
>  1 file changed, 61 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boo=
t/dts/qcom/x1-dell-thena.dtsi
> index bf04a12b16bc9..d21963e52ee48 100644
> --- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/input/gpio-keys.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> =20
>  #include "hamoa-pmics.dtsi"
> @@ -792,6 +793,66 @@ vreg_l3j_0p8: ldo3 {
>  	};
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
> +				remote-endpoint =3D <&ov02e10_ep>;
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
> +	camera@10 {
> +		compatible =3D "ovti,ov02e10";
> +		reg =3D <0x10>;
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
> +		avdd-supply =3D <&vreg_l7b_2p8>;
> +		dvdd-supply =3D <&vreg_l7b_2p8>;
> +		dovdd-supply =3D <&vreg_cam_1p8>;
> +
> +		port {
> +			ov02e10_ep: endpoint {
> +				data-lanes =3D <1 2>;
> +				link-frequencies =3D /bits/ 64 <360000000>;
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

