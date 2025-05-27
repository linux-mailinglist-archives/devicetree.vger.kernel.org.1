Return-Path: <devicetree+bounces-180889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D66BAC532D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 18:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA90D17E031
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 16:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E51127FD4C;
	Tue, 27 May 2025 16:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OxlXVsy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD5927F747
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 16:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748364128; cv=none; b=stbIQmMP0yLEosNhiYiJSKOsSP6ky9HEmXjWKv3+Xlz9sDmmYC6JM8stTkM3rE9AMrQzEb0xwk3mJPg43UuufWZQNQj/I7mPrSLBvMi4SjmLsJhf1x0pmqgBD1ONp8ZT5WCu9KfMbZUgRPLJNhxK/djuyF4CaRVZcq5i63GXd5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748364128; c=relaxed/simple;
	bh=o6IP1ZSE7iTj86N6LUhJhtCOx5zFOGbL5Y2ity8VNvs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=uHiMVVEXGuABaUiUHukNH2ziVsAqIrnLicXpDPi8hjNhZqFxZVyfs+W5vWwLlVwT4ENV/nqlcYxqzMQnT4gsBDEN7xgfPMyri/HHJxWLgg5Mg7F6SGpHplmM4pxU0kPQwaUtLyP9a1sWupl9D1aU9/Qbn50GeBAdhpAan39EVzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OxlXVsy4; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43edb40f357so31042935e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748364124; x=1748968924; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gC+Kv6MDihqVMIw1+edFXcpQJgi1ehuY/J0XFAu4/hg=;
        b=OxlXVsy44edlq64sSEGc7JA5szCVGkXupCPcjVt31kSjcrlxI6SwejpaKj0FX3DvWY
         p6roNhIdp6a4y3nqerCKTex/4g8ZiV/btLkd9FcgPxjVtIzKzD0n9l5uVRDVHBpxc5t/
         vBqC4MRniSHRyQpN7Rezxj/wbA0x1/NKv2Atzr7ZpgqvpFsHUD01vsTL8W44I4VTtkLQ
         VITZ2jGWAFnQfStzEA4OACBCnAE4CZQz6CPsmQDD7gnsV6dapMOPSe/Gne1NeaT4TP5u
         /psdeAD/MZZIgWMZtaqsVtrTxOBKXolyGcb4582iitadLeyz6omHAgVtxYiwVwXUhvFL
         Wcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748364124; x=1748968924;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gC+Kv6MDihqVMIw1+edFXcpQJgi1ehuY/J0XFAu4/hg=;
        b=Mb283ZigRCh/Ld2NXo8VoSw9mQcGr4t2Spx7NMpirZcPA2y/ChvWNDdZi5OyGiyANG
         NuxkFlJnatSUK3YLV598e8fAadmsD2LOy3WiQapMYvoV5VHWsjnssIUROyBnpbOqGPKo
         sin0J1FruGhVx1U7FXO/rjmeubDH8uhm1Qju7uPndB894lnbTjz9v70TcsoKVRzLSjY9
         slGRN9l+R4XBJdSI7RxtP9aj0xLprCtGewYG431qmy8TAATYGnB4Bmv8nDP+WMkEcEmG
         0abm/G3JmH4wIxU/VNc4fiar6LvfvkFnH38vXTR7CnJ99+2lzL1j84e31lMX3Y7+ZGGm
         k7Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWaFYtLg1cbT/HrTvsaXhsvo8lVczLkzyvPoqVXusoSfa/aQayUnVu+eUdnGb9NCc/MtUpCsgfvFlcz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3aJrC1QQBh8txyXkyfbhcpFe6xsV4zB5JkGORr+eyAQ6G2r25
	SfFgmms1ydVMrfoOA/7DfzKGMidxpk1L6MslfwS0i60ggmnqh/pcrfS59Gy8iHlv2A8=
X-Gm-Gg: ASbGnctREDqzeLjp/FElw0GL/MRoYAHJ1c22h6vMoAxQtQc/KzQxaluzUVHi4GE7T4J
	50hyB6/Ib2iDCjnXAlZhkUSs74nFzV5fzDMCZmBoABmru45DFBg+jPzsCBkbW4pKqkoMTZcUaUp
	YwOBfXUY63zHom/CKJ46jrdACSQa9Zhi4VD8sxS4qUZ+i+6/1dxnpC3TY6ME2wSXvVT963X/KWI
	LLmkaKTVaI3pyurm92fMnxk/TC71BW9HyYB/oSEsJ0GgLhyY02XwcYgZ+4pCiDL8RryiH44mC4T
	mGEGmi9wq54vtqcqmywAqdtEXZwfg/aGSYlXxLyT5aXSOePL6o55nNVSEA==
X-Google-Smtp-Source: AGHT+IHOCmeAAiPle45FazpuCrAts2+QCHvGJ68DgsGkOFH6AJFdSzOvGZC9JM9TNpY3pT25HAXqLA==
X-Received: by 2002:a05:6000:2282:b0:3a3:621a:d3c5 with SMTP id ffacd0b85a97d-3a4cb44f91dmr11350352f8f.19.1748364124005;
        Tue, 27 May 2025 09:42:04 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:f024:90b8:5947:4156])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4e1fe9430sm2346073f8f.75.2025.05.27.09.42.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 09:42:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 27 May 2025 17:42:02 +0100
Message-Id: <DA73CTVYS10G.1O0RVVAHTCEGX@linaro.org>
Cc: "Liam Girdwood" <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Dmitry
 Baryshkov" <lumag@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3 04/12] ASoC: codecs: lpass-rx-macro: add sm6115
 compatible
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Srinivas
 Kandagatla" <srini@kernel.org>, "Mark Brown" <broonie@kernel.org>,
 <linux-sound@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-4-9eeb08cab9dc@linaro.org>
 <45124768-c10f-42ff-a899-6dd6e988b21c@linaro.org>
In-Reply-To: <45124768-c10f-42ff-a899-6dd6e988b21c@linaro.org>

On Thu May 22, 2025 at 6:49 PM BST, Krzysztof Kozlowski wrote:
> On 22/05/2025 19:40, Alexey Klimov wrote:
>> Add rxmacro compatible for sm6115.
>>=20
>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  sound/soc/codecs/lpass-rx-macro.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-=
rx-macro.c
>> index 45a6b83808b277344f17d35a70cd1e3bb89cbaea..3ce7ad758df9fb0b7845a1df=
ef46cdf0ecf3b8c8 100644
>> --- a/sound/soc/codecs/lpass-rx-macro.c
>> +++ b/sound/soc/codecs/lpass-rx-macro.c
>> @@ -3946,7 +3946,9 @@ static const struct of_device_id rx_macro_dt_match=
[] =3D {
>>  	{
>>  		.compatible =3D "qcom,sc7280-lpass-rx-macro",
>>  		.data =3D (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
>> -
>> +	}, {
>> +		.compatible =3D "qcom,sm6115-lpass-rx-macro",
>> +		.data =3D (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
>>  	}, {
>>  		.compatible =3D "qcom,sm8250-lpass-rx-macro",
>>  		.data =3D (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
>
> So devices are compatible, thus why do we need this change?

Ok, I'll link it to sm8250-lpass-rx-macro I guess.
Thanks.

Best regards,
Alexey

