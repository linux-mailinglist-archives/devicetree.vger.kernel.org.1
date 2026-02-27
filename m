Return-Path: <devicetree+bounces-269439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB0UH/4VommizAQAu9opvQ
	(envelope-from <devicetree+bounces-269439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BF91BE82E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A64CB3050503
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0F347AF5F;
	Fri, 27 Feb 2026 22:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yXIRqj1e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D640F478878
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 22:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772230110; cv=none; b=nMNXy0Kn2e3UA4qOuBgN9hJqzJNMLONPgC4GiyVALg9FccVgvNIjju48MSW67t791d6GCggv3WsybEV/Tft8lxtCDtyDR9ByETUCFICgBEgss1HRiyEZDlg1tDjJcSu+k0ZgCRlo0wSxNdQia+Slui3BvN9OUF4EUOGYOOjjB0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772230110; c=relaxed/simple;
	bh=Mb2V1kz8SmOB9dG55Z05i6Vkzl2XRS9xEoOEgGRATdQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SPDT2qvJsvpx4cAJC93LDPI7NTRbeqxB5UeUcIsfn8aebawjXEGNcsmKZDYunZh74nzA3X5VVM5BSb5BtHL+EabYzo85RuA9IrQ0CpIgXVE5UUiBLzZrmSHIR/OCVYDEFLF9qnPTfDnOh1dr4KmptYemBBjKzKGek6nb5+V6qDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yXIRqj1e; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48370174e18so14430185e9.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772230106; x=1772834906; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dA5B+tb+Eq6OoOsXIA4NDTzmJV2und0D9K22z1ftkxg=;
        b=yXIRqj1eze4KGVBYoOdu/Zk4LqnljqcMPMFbhEUm587B2C3KDeiHzrtR/GcGTEFBVl
         twfHMZxiP16f3Mn//uYN+VA1ycrjSLx2TEUmIhLuwOyRzPeidErRgvfnE9KhfC5ml+vB
         b89IE7YlAn2ukIMILAa1gD4N3YXjjW50+lQqIE13z82M/c8X3hPwrctb1Uw2Fa+nmIYU
         UZ8psFWODopboDVWk7cRvpw3drxZ3+6s3HFDQgamINrc8UyF4gKXXyncQuZZ5Zv68M3Q
         qlPQlYr3I7r/WyzV4hk/fPh8FsgSapquAM14ArWSLZ/f2G7uDis2kLbwCaLO3DcbioVh
         zICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772230106; x=1772834906;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dA5B+tb+Eq6OoOsXIA4NDTzmJV2und0D9K22z1ftkxg=;
        b=iNBWgOSflBV+plqEI0xq/jXZK6KMPqd8moT8MSulYS4JfK6bb4ZN8atq7JBIIGwy4F
         VUvxkljwcvv7x8pH2dMO8XGeFJ+h+/dj9MWHQkwEA5Yb/bdtLXnX+M9nl4c0AFVa2Gh6
         v4US9EsNsJwnVWoyf4tvf7dQe60f7BuBzHNf+FjdsaWvYSu4RJLeKLRUPiROYx3H31ZM
         K8ycB7tDPWzVARwokJ4KhXQjcXnIK3f+JvCKzR5VaGbHCiSe6MQnS39Zps5gzC+ti0Ar
         sL4ALXzAJdYZrMdgHgcLxj9rdsRpmWyiluxnKc5D6IrDUiK0QtnZfMdcsJJxOFtFUFfa
         hucg==
X-Forwarded-Encrypted: i=1; AJvYcCVVT9+ishbyRVXsUXV52KFyGQd97xITXBp7t+e1HAfuVY1d41T19P3U+f7qmF3CRxy6PFF/J1fjMwsq@vger.kernel.org
X-Gm-Message-State: AOJu0YyqbXZKSMm/tBOqXdD1hoGx9Az/zdrY/n6Z3ILmjicCw+gwHvUj
	SVER5lFaKDxsUfhmTVTuw7tkiYP1hh4YNNovXdWgIyGDo5vXwUb6FIZf+p3Za0i1dHg=
X-Gm-Gg: ATEYQzxe0jaTuMrTSKaIH0p4qmfIr9QVo6Vhxpu35NvFUz/x6EwGs7v0awRU/srxYmS
	4+ehRfIz3NQx5+z8xteHSDMV5OrDN/BsekBp+2th3FNgvWNUCBSX5NPmW4ovgjgiOCD0FJuuV23
	ixwkgy7vmWhb7ev4K8qh+993MgtNseFKDVAKsupMnPFzDcBG3bbncGEaRE1Y7hxZyzA6LgokfW7
	qhtULonRekQNRSYSU3WrYxKR+a12e711x4+8bOqGKX1KdaM0aQOd+pVd4BNWbfFsDou9C5zCdpP
	L2cGmHtBdrxMKqKPI8dBStM7zNXyXtukJWFrbZI0oNWS1uIIW5bTXfOxDUfLh3Jg5u6e+f9jLE4
	VtqG7pBf6sHM1GypGl/yIw4rfbs+RDtYKV7Xa9Coqi597KGW1mZe+LJHpEBQ4rgPo/t7GidiZv/
	sw7ODZL+WzjfB8ztoTG2oyAjf2081SC54KIQSokipqHvZ9XBOPwI8wvQAnl/UI8s5CG27A4YHDZ
	4gY/6P77HzGUYt7w9knIe17
X-Received: by 2002:a05:600c:1d12:b0:483:9cdc:8ac1 with SMTP id 5b1f17b1804b1-483c9b9eb7amr63356545e9.11.1772230106259;
        Fri, 27 Feb 2026 14:08:26 -0800 (PST)
Received: from [192.168.16.154] (host86-188-11-239.range86-188.btcentralplus.com. [86.188.11.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b89c99sm130583315e9.15.2026.02.27.14.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 14:08:25 -0800 (PST)
Message-ID: <58900cdf8f5159116b12278ba31da4aaea8d6cc5.camel@linaro.org>
Subject: Re: [PATCH v8 16/18] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add pm8010 camera PMIC with voltage levels for IR and RGB camera
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
Date: Fri, 27 Feb 2026 22:08:25 +0000
In-Reply-To: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-16-95517393bcb2@linaro.org>
References: 
	<20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
	 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-16-95517393bcb2@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-269439-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D1BF91BE82E
X-Rspamd-Action: no action

Hi Bryan,

On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> Add voltage regulators-8 for Camera on slim7x including:
>=20
> - vreg_l7m_2p8
> - vreg_l2m_1p2
> - vreg_l4m_1p8
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Christopher Obbard <christopher.obbard@linaro.or>

>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 51 ++++++++++++++++=
++++++
>  1 file changed, 51 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/a=
rch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index d6472e5a3f9fa..f10dff1da7f8e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -795,6 +795,57 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	regulators-8 {
> +		compatible =3D "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id =3D "m";
> +
> +		vdd-l1-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply =3D <&vreg_s4c_1p8>;
> +		vdd-l7-supply =3D <&vreg_bob1>;
> +
> +		vreg_l1m_1p2: ldo1 {
> +			regulator-name =3D "vreg_l1m_1p2";
> +			regulator-min-microvolt =3D <1200000>;
> +			regulator-max-microvolt =3D <1260000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2m_1p2: ldo2 {
> +			regulator-name =3D "vreg_l2m_1p2";
> +			regulator-min-microvolt =3D <1200000>;
> +			regulator-max-microvolt =3D <1260000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name =3D "vreg_l3m_1p8";
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1900000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name =3D "vreg_l4m_1p8";
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1900000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5m_2p8: ldo5 {
> +			regulator-name =3D "vreg_l5m_2p8";
> +			regulator-min-microvolt =3D <2800000>;
> +			regulator-max-microvolt =3D <3072000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7m_2p8: ldo7 {
> +			regulator-name =3D "vreg_l7m_2p8";
> +			regulator-min-microvolt =3D <2800000>;
> +			regulator-max-microvolt =3D <3072000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
>  };
> =20
>  &gpu {

