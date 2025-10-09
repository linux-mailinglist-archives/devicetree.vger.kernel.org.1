Return-Path: <devicetree+bounces-225040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AC5BC9C4B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 455B33BE186
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFBD20102B;
	Thu,  9 Oct 2025 15:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LDNGhLiS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB01E1DE5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023512; cv=none; b=WqSRPq+KyuAlLhYKpcWD+OvdmFeZXiZrJcZBXeurRQdfjSzYY6tIcll/PUH25bU0MMlelBOdEz10bPy1A6J8rLXk2r+wexwUU/1zkMUsjQfwcapoGrMApImPeAAbwhPJ29gZQj+aqPWe88dCqh/hv82SYQLIfvSLm9Jz/ZZNO/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023512; c=relaxed/simple;
	bh=NpJ4lQfb2fZu9QwAIvzljS9KYx6hqhDyEyM/zJnLT68=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=kce3Fn+xy4uBNtdvJXHZBWPS8Gs8SRHWWY9ezcIXs23XWSkQ6+WAfFKe8owQfrYh1Dzt/CgdLcbE3Jw3xnv/IHMCf17zsaG0PA9p/sNZTDQrkQwcf83+NNy0IA4or+tGjOhL0IGDR/fkr977O7MgoeOFHeCBQzF4Fcdygy0wRUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LDNGhLiS; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso12170095e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760023505; x=1760628305; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aaeUDsfd9sTW1180jO+0QTGZpCCHWZiAOxn4EOO0ha0=;
        b=LDNGhLiS4vYC2CzloRRzmr4xYn66yF5zPyoEaEeuH3qE0eNmv2ptqSj4ZimXCIR7Q9
         4L8vscEQUwfxr6kc90c4Fp2Iwvjmi3S01FuaW74sg27EKly55TwD1+OYBSIW0jsU80qO
         b/EGkSVAWZ7q5Mg+mWvXgZZU6T4Sgxxv2NEaRR4D6v5Suo3D7v0teR2OXaVOdClKqJGJ
         NSjqRBDAxwv2mD4EZfvi7J9skx4lPJ89IlvOtfjl7Lckgw9T4gweA3+7Eav+VLVabwpC
         GECp8+VfDlpu/PypF0sMfE2+9pl4uSJDUXpY9po7arRN7bKEIYO8AMpveuk7lK5AbSA9
         XdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760023505; x=1760628305;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aaeUDsfd9sTW1180jO+0QTGZpCCHWZiAOxn4EOO0ha0=;
        b=bvw7Oas7/crw8823kuHt48JysJYkAeIe9UbDjiy/ZjPBjEQ7IIonc4tFwehZPDgHvV
         gnbBIL5ZMosgssqcuWWxd5IfwIlqYN8qSUvUvcTfZwUOllzl4/U5vxZNRId4AR5rMO1f
         /sPz5VZ+pTFKFStUkOSQ3ypDh7X8XS6IhGGftt2cWMzVKitIvgMpLnlcsB3KJrJIrJj6
         /t1Kr1l6BJ48r502x/YhIwzweIwc3+I+PxsTQxdnyJtEZcukcMHku9tBm3tKLPrqt7CG
         rWgWM9Fu3Dp+tzWsEwLemK4c8drTMytiZCdFg3rtjFzS1O73EnH3pXCbEzyX+vs1JPXx
         NdjQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0M9BL0U/FQJ5cvN3gY4lE/kGgZqcPRuI8YiecjfnMl0nlj9ZAVUpzPKOlFEP93ADSiNjx+X1z4a1v@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4vEo5hR+POUOCadQjxUoEbzbCc7sjGaBHdEEEVeHiyVeq/1CT
	8++NObn5iasVsVcZcf22Tq36/VwMj9HSRI5E2LoQfn19Ennjpb5iMErLvHNEUNTqelU=
X-Gm-Gg: ASbGncuskX7/Lg1eBpax8/t9F0C/pNLDy5Vsdzu88Dv0ASuNPVns9A/hjH3vPbdLzNL
	n22leSPr5QoywUOEnmx/PNPcDGSQd1QbNl5k2FinjnLAHiEBTXDC1UP56vxHjQbl93rAf+PhoX0
	OZnh3GYnHgRRj40YB75lOAJs6wmUYGFH0f1oGewFmaPyNyoOmCwnRU3/MeGmQDkfWIJn3ZHMx5d
	/ayzqFuQHfqNd2htcfCLLPMVap0FjuMGhixXRwOzkC4uBZbEOkjK+IDh8qZuyp4R8uw0B+EN+DY
	HCiMvy/sW0beBqQMIPJc+hzgz8NGwIOLt9mMryVRcvgicj5ND6460bdHgmZIr4VQqlt053mlzQr
	HuXuSfbrnrsn7euUVroQLwwXCboz4Mi1P8fIOekBrkeJ0VKFocIRuXWEo3vjgrlQf
X-Google-Smtp-Source: AGHT+IEa0ViiyonOKuB72WiAM3yriwHBzcChfbGV0FyxvLukHsxAnCh+5OaxHUjUMTlExydg9IoGog==
X-Received: by 2002:a05:600c:1f06:b0:46e:384f:bd86 with SMTP id 5b1f17b1804b1-46fa9a9443fmr51283015e9.5.1760023505262;
        Thu, 09 Oct 2025 08:25:05 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:5333:92bd:dab:a2ab])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e980dsm38590177f8f.36.2025.10.09.08.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 08:25:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Oct 2025 16:25:03 +0100
Message-Id: <DDDW9FN6B097.188MIFGQOOSQW@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-sound@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <kernel@oss.qualcomm.com>, <aiqun.yu@oss.qualcomm.com>,
 <tingwei.zhang@oss.qualcomm.com>, <trilok.soni@oss.qualcomm.com>,
 <yijie.yang@oss.qualcomm.com>, <jingyi.wang@oss.qualcomm.com>,
 <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/5] ASoC: codecs: va-macro: Rework version checking
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Prasad Kumpatla" <prasad.kumpatla@oss.qualcomm.com>, "Srinivas
 Kandagatla" <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>,
 "Mark Brown" <broonie@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, "Rao Mandadapu" <quic_srivasam@quicinc.com>
X-Mailer: aerc 0.20.0
References: <20251009143644.3296208-1-prasad.kumpatla@oss.qualcomm.com>
 <20251009143644.3296208-2-prasad.kumpatla@oss.qualcomm.com>
In-Reply-To: <20251009143644.3296208-2-prasad.kumpatla@oss.qualcomm.com>

On Thu Oct 9, 2025 at 3:36 PM BST, Prasad Kumpatla wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Open-code some of the registers to make the checks anywhere near human-
> readable. Error out if the version is unsupported or if the VA macro
> isn't supposed to be present within this LPASS instance (since we can
> check for that now).

[...]

> +static int va_macro_set_lpass_codec_version(struct va_macro *va)
>  {
> -	int core_id_0 =3D 0, core_id_1 =3D 0, core_id_2 =3D 0;
>  	int version =3D LPASS_CODEC_VERSION_UNKNOWN;
> +	u32 maj, min, step;
> +	u32 val;
> =20
> -	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_0, &core_id_0);
> -	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_1, &core_id_1);
> -	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_2, &core_id_2);
> +	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_0, &val);
> +	maj =3D FIELD_GET(CORE_ID_0_REV_MAJ, val);
> =20
> -	if ((core_id_0 =3D=3D 0x01) && (core_id_1 =3D=3D 0x0F))
> -		version =3D LPASS_CODEC_VERSION_2_0;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && core_id_2 =3D=
=3D 0x01)
> +	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_1, &val);
> +	if (!FIELD_GET(CORE_ID_1_HAS_VAMACRO, val)) {
> +		dev_err(va->dev, "This is not a VA macro instance\n");
> +		return -ENODEV;
> +	}
> +
> +	regmap_read(va->regmap, CDC_VA_TOP_CSR_CORE_ID_2, &val);
> +	min =3D FIELD_GET(CORE_ID_2_REV_MIN, val);
> +	step =3D FIELD_GET(CORE_ID_2_REV_STEP, val);
> +
> +	if (maj =3D=3D 1) {
>  		version =3D LPASS_CODEC_VERSION_2_0;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0E))
> -		version =3D LPASS_CODEC_VERSION_2_1;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && (core_id_2 =
=3D=3D 0x50 || core_id_2 =3D=3D 0x51))
> -		version =3D LPASS_CODEC_VERSION_2_5;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && (core_id_2 =
=3D=3D 0x60 || core_id_2 =3D=3D 0x61))
> -		version =3D LPASS_CODEC_VERSION_2_6;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && (core_id_2 =
=3D=3D 0x70 || core_id_2 =3D=3D 0x71))
> -		version =3D LPASS_CODEC_VERSION_2_7;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && (core_id_2 =
=3D=3D 0x80 || core_id_2 =3D=3D 0x81))
> -		version =3D LPASS_CODEC_VERSION_2_8;
> -	if ((core_id_0 =3D=3D 0x02) && (core_id_1 =3D=3D 0x0F) && (core_id_2 =
=3D=3D 0x90 || core_id_2 =3D=3D 0x91))
> -		version =3D LPASS_CODEC_VERSION_2_9;
> -
> -	if (version =3D=3D LPASS_CODEC_VERSION_UNKNOWN)
> -		dev_warn(va->dev, "Unknown Codec version, ID: %02x / %02x / %02x\n",
> -			 core_id_0, core_id_1, core_id_2);
> +	} else if (maj =3D=3D 2) {
> +		switch (min) {
> +		case 0:
> +			version =3D LPASS_CODEC_VERSION_2_0;
> +			break;
> +		case 5:
> +			version =3D LPASS_CODEC_VERSION_2_5;
> +			break;
> +		case 6:
> +			version =3D LPASS_CODEC_VERSION_2_6;
> +			break;
> +		case 7:
> +			version =3D LPASS_CODEC_VERSION_2_7;
> +			break;
> +		case 8:
> +			version =3D LPASS_CODEC_VERSION_2_8;
> +			break;
> +		case 9:
> +			version =3D LPASS_CODEC_VERSION_2_9;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	if (version =3D=3D LPASS_CODEC_VERSION_UNKNOWN) {
> +		dev_err(va->dev, "VA Macro v%u.%u.%u is not supported\n",
> +			maj, min, step);
> +		return -EOPNOTSUPP;
> +	}

Why?

As far as I understand the behaviour before this change is to continue
even with unsupported LPASS va macro version. IIRC when I enabled sound
on Kaanapali QRD device it worked even with unsupported version, it just
needed a fix to calm down the warning.

Why this needed to be changed to error out as unsupported now? Will there
be a permanent damage to hw/fw if we continue?
Shouldn't this print a warning that execution continues regardless but
with low expectations?

I kinda get why we should give up if va macro instance is not present
but not about change of behaviour here.


>  	lpass_macro_set_codec_version(version);
> =20
>  	dev_dbg(va->dev, "LPASS Codec Version %s\n", lpass_macro_get_codec_vers=
ion_string(version));
> +
> +	return 0;
>  }
> =20
>  static int va_macro_probe(struct platform_device *pdev)
> @@ -1594,10 +1626,14 @@ static int va_macro_probe(struct platform_device =
*pdev)
>  	 * old version of codecs do not have a reliable way to determine the
>  	 * version from registers, get them from soc specific data
>  	 */
> -	if (data->version)
> +	if (data->version) {
>  		lpass_macro_set_codec_version(data->version);
> -	else /* read version from register */
> -		va_macro_set_lpass_codec_version(va);
> +	} else {
> +		/* read version from register */
> +		ret =3D va_macro_set_lpass_codec_version(va);
> +		if (ret)
> +			return ret;
> +	}

Thanks,
Alexey


