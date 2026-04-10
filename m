Return-Path: <devicetree+bounces-286430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOE9A2612GnnhAgAu9opvQ
	(envelope-from <devicetree+bounces-286430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:31:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0923C3D41CC
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8394A30E4878
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 08:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B6F3ACA5A;
	Fri, 10 Apr 2026 08:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ode3qkqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C643AC0EC
	for <devicetree@vger.kernel.org>; Fri, 10 Apr 2026 08:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775809247; cv=none; b=ChSq7OatKtOHYKd2MjtRyLPDlO4J42YSwYfGr502eTjFuS7FzKbSstwtnY6o8MHyY3eJRaRvLBpyI4c7Ozn7yHZo5CgsHGK8jfuSf97P9LPUF5L+ylbClsRaFjySnxW0cLgJGhn3c/4U0LsqyoxjoUjr/8rxsqS9VUP/Z5OKxp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775809247; c=relaxed/simple;
	bh=4BBBokKM99tWLBI/09+5jzoj0Hru9iJwCnK+mZGnP44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oxH4RA6+JF8KKLTnn2LgyVpJBif6lbYAMuf9MUvrINUAtlGW4adlR27OYN78B4r56nYAhqkQtWqTsea8eMsGmdhxWtzD+4b2rwKvv9Ow4WoGT/NJGr393hpK7ENjdjviPcOrLddONfglpexfuRm2Dzw53bH6ECfLQ6YRZ381mNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ode3qkqx; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b9910707d82so224793366b.1
        for <devicetree@vger.kernel.org>; Fri, 10 Apr 2026 01:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775809244; x=1776414044; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YPFRGUPaINCrOf46yJMesxy4TAsT49spMjDxM76tDE0=;
        b=Ode3qkqxH22ivmrvX1DO0imaS4meImW58aHmsE7MtZEMA7F8YgFDuSiJqEq2T+1Iit
         vJVn3jFwX4vISGF31lEoSZuajGwkWMCVBaP9nBY3ooZptJIf0/YQsZcTfasgyGrAoUXp
         vD9uF+lmyD0YVuMUhnZb1Glg8Nv37WroAuEY1X1QGbesL3Csp3oqgryUc+PfcyeObM2+
         P9+Eh/eT01fcauJNfPGCk50e+AufyjOFPlT+uaZ4uDUlsXw6rvQQZkicp1gxcnQNVbK0
         N/Ew13phLf46mAENeYY45EBpTlu//mUYWX1mCHLcVPtpFNEBe7z7B+dEcNHgVL5+FEp9
         m65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775809244; x=1776414044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YPFRGUPaINCrOf46yJMesxy4TAsT49spMjDxM76tDE0=;
        b=o0lPKTu5sKvwXrnbZgcIks+2A8NjISf8b/t8vmG9pMleC6wY2BAZM8Hhy/gBOu1Lhw
         zYmmFZzCrAwPY5TCTOHK0TSdZyWP8DsMYyY4GN4F7k3E3gT0Wh4deYNJXzsq6GV7autv
         afRTH5jar/uHpnop7b1dWl4RWiPYLNLuTSxWcy+LDdP/3DXwyEpf8vSfVO54i1gAO+pH
         sbhfw04sUdKWLVMeLfqbNANZ5ZR1Hd0NphRkhF4XyLibu+cFk9SiJJuWbJ1jVU2DOnta
         FWHQlWxCn4wjMwkjHs22OEufuK57Pds3cedwMf+W1MUcPxVm+tDxPrcalL39qFr0Qdso
         U3VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWo/QpfZF7ne6CMhJ9hd5gGvwKM3gUDCI6WDZXBpAE1MOiGX8AH1TQNrWmiJlraK5NEN355swc7wI0D@vger.kernel.org
X-Gm-Message-State: AOJu0YwFg7ctmy93Y1fJlAIU2gIbO9U/GWN+2DTPQGIiLt4oc0aA2JiM
	hQ+jptX1WnLMWvgiM/chrOl1TxaijQYPgWM10te1nNLQxY0eKD6dFo7KbGm6CTj6uM8=
X-Gm-Gg: AeBDiet7iRE1xNRbaF1ZESopMbYpxYv1jDCSwwA5Cc2t/wtNUn3DIbxDIdAfO2vrya8
	5LE0M/8x1kmFQvIJJfaL7KJGBvNggMkjkP18NN6RmsC8yTk0rnLzyMXAVeS0DzQDc066MMQ8uQj
	D3vvQ3TNGcL7WEJrDIXjoxzR8CN5L1TNqprVxfT5D0SA47vUKZ6K4n1THelN80MBXNqj3PgQSAu
	pam0qw6jpvPlAIDoaY06WfALFhs1OOOQux/uQp4oegclK4j9E/mhqrGfYAr89pBWb1KFMXfm/cq
	J82d3fTQIDpdscuFe6Vbf7bX9er1r5KWKb+FiTDX8QYP67BmEfdc8balyfNdd63oMz18LlcXMqj
	tp5z5LW95jjXYXP/IxtBazRToanTJzMiQ01ZqmpSqDOSL+my01x8LeG0OqDEGAbYafkP0uunooc
	inGym6kcZTMU5TiUJeXNbd2Nr9+/3loVfZkKDYWvwegK77jdRiJPY1vjlQeTVr9yPLAYuXfin9C
	o+VXhNK9fGTFnBbzoYv152bhxUNv7YfE4cShPIwtu413x+2iaSIvd2DBStoa09nkicawC6az3Zz
	z7in58lmRbevNi4CuiiO3//q
X-Received: by 2002:a17:907:ea4:b0:b9c:5264:f56d with SMTP id a640c23a62f3a-b9d7297da1amr116597766b.28.1775809243655;
        Fri, 10 Apr 2026 01:20:43 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9d6dfd78f6sm61820266b.26.2026.04.10.01.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 01:20:43 -0700 (PDT)
Message-ID: <72e5ada7-0b08-4e5f-97e8-0af655cb0904@linaro.org>
Date: Fri, 10 Apr 2026 09:20:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: x1e80100-microsoft-romulus: add
 PM8010 camera regulators
To: Oliver White <oliverjwhite07@gmail.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260409083609.75341-1-oliverjwhite07@gmail.com>
 <20260409201717.108169-1-oliverjwhite07@gmail.com>
 <_NLFEtvoR7MO6EVKzB-wwMi3NXItRRCRNXp1xpNZa_jGQgW2TbbHX602YQr779q_c8dzKUyGkIGwos74TwuyQA==@protonmail.internalid>
 <20260409201717.108169-2-oliverjwhite07@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260409201717.108169-2-oliverjwhite07@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-286430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0923C3D41CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 09/04/2026 21:17, Oliver White wrote:
> Add the PM8010 regulator outputs used by the front-facing OV02C10
> camera module on Microsoft Romulus.
> 
> These rails provide the supplies referenced by the camera enablement patch.
> 
> Signed-off-by: Oliver White <oliverjwhite07@gmail.com>
> ---
>   .../dts/qcom/x1e80100-microsoft-romulus.dtsi  | 52 +++++++++++++++++++
>   1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> index 14b5663a4d48..4427ecae423f 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> @@ -857,6 +857,57 @@ vreg_l3j: ldo3 {
>   			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>   		};
>   	};
> +
> +	regulators-8 {
> +		compatible = "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id = "m";
> +
> +		vdd-l1-l2-supply = <&vreg_s5j>;
> +		vdd-l3-l4-supply = <&vreg_s4c>;
> +		vdd-l7-supply = <&vreg_bob1>;
> +
> +		vreg_l1m_1p2: ldo1 {
> +			regulator-name = "vreg_l1m_1p2";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2m_1p2: ldo2 {
> +			regulator-name = "vreg_l2m_1p2";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name = "vreg_l3m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name = "vreg_l4m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5m_2p8: ldo5 {
> +			regulator-name = "vreg_l5m_2p8";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7m_2p8: ldo7 {
> +			regulator-name = "vreg_l7m_2p8";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
>   };
> 
>   &gpu {
> @@ -867,6 +918,7 @@ &gpu_zap_shader {
>   	firmware-name = "qcom/x1e80100/microsoft/qcdxkmsuc8380.mbn";
>   };
> 
> +
>   &i2c0 {

Dangling newline.

Can be fixed on application of the patch though.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod


