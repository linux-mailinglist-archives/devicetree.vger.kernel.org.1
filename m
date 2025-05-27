Return-Path: <devicetree+bounces-180935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A21AC5B60
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:34:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8209E4A2577
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 20:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E13207E03;
	Tue, 27 May 2025 20:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WbdkxlQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CFC204F9B
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748378075; cv=none; b=IZCT5wvPvgBLfWwX4YVSU50J0ERJg3Am7F4+Y+Iqm8f4i3IInYw0xEsB8be/lto7nWal70e7uy2uQdRtx75cvICuoU9YV3ZgQ1LOxZO9pG4uIh+q9hYkdcUQiKGdSp6n8sXzQ+gf94ulk0IM8xasur3vcv9DEe3u9/uEn57+U0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748378075; c=relaxed/simple;
	bh=Lk3vcO1oKeMbKUMeqUuClFL2qOenRvP/2/Pu/bcuHW8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=HGSlg2CbeYDMPOli0PJWplkGIeMyuJ9jlSYGZ68KZStgpxNLSwnnUDpiD7tzKI/AwRtlngjhmKPa6+kae5fxpaydHRZe4pnimIZD6MYtIne6iQ67c40OXugccIlA46LRuEcoOgHf/q5Kv5g20XMi0+QZ/EFEN+wGPSlxqPN7Hcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WbdkxlQF; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf680d351so1663545e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748378071; x=1748982871; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFJiAb2IUs00ZtUjOW77VpF9Eao8kfb+MFNiZYFFCXQ=;
        b=WbdkxlQFhvDJnz2+Mn/B5rfRdkbk4ILtPgpAtVj2q8pe4K55Zo9Jv6RZSYUQNzX7B8
         e2HGMvN5m9pVoKKRqo27ilrQnAq21Sc6BUzg6VRPHGxWe2zt8En1s9Nxq7AtALMOR8Dv
         3YTGavBBTqdnyqNeVa39KId7Fxj+3wNShqNj6Vd8S19O7G1Lf83Cg4G4tHXezzUMAjoU
         trmvI/+RNW/oucmoPPBZaIIahquzk0oLmqYK87AcGdqJPJ9L4RWSIE/hhS/B6BY1WkLs
         L9dctq+EYmP+NcASYWZAF1hi6gpjI5+1JAAvlGaNUW1MlfWReGF8p2gctv7FSGeFE5nJ
         jKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748378071; x=1748982871;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OFJiAb2IUs00ZtUjOW77VpF9Eao8kfb+MFNiZYFFCXQ=;
        b=BhiBv1FKDZmPT1L0lcp+CyP4NuayEQqJTt9MQEoqs9Zr9mc6/ywgE0EqLwEbHO/MMT
         E77VV/LnkyEOAsLG24VHWZhGOyCrZXRnjVwnoi8xrrHpkJKiIkPto4ascxq/Sa+ZXUAh
         aETzAPjiUd3vNoF5rbKGj8ZNAWuO4tsni28NIK2dAn/x6YlVjHjn5zElCm2c240MnzrH
         fLNsGnxqRyqbFOSZ1MakES8u4xbWoPpjBIVJa76SvYi2+Y2u/wClFZC0F5HUnWCw2hIW
         Eq1UcU3bs8e+2bG5yYn5vjXcde48EJkZq/YMw7/ynfkp4h0tXx+4zTtQ9mI8/F8M4b0d
         LbiA==
X-Forwarded-Encrypted: i=1; AJvYcCXa562THizr5vWFNAd042vahH6gFRctTMmN54wtj5tGtjOA9K7TxZMuqCTzt+HsEkgVH0zGkhqBFlY0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+c+R+64HM+x/52gDQGD72OLmPV/ztvFlcs6iPTy1aQiL/VenS
	DPIYrQSzmITARG0hkhcEMOID2E6pp/AOu3i44hQp0N8iwd3zzU7OULwXfrdScWdUzdQ=
X-Gm-Gg: ASbGncvO4XP1TWwya6Ytve7DppX3w/Gg6WPUKUyFrw5NMmw5N7CVWuexS0yOSMnvrOn
	L4ZOmbS0TZgNTi9eavkD/QoOm8jC9LyqFqYpF/mscInDXhC6ed87ttZfslnfL8XNBOYtY2WMIEG
	QblNrjTDAdhaQwHAn4D/R7Ey4aJ37mjRioVSpwHymnU555qTO+HZ08OAZvTwPEf/Oo7w1RGRatz
	6kAB8nI1tlFG4iwVpOK4QIYqPgkTDmytWf4uRZ6TAj9WMqoCvGH9cV64dXTy8twL80Usw42tcyk
	r6n8OpuG8ajzENuKasxVsIdEnWykhmc9pTcnEiQC5kjtssICrv3Ji5n9gw==
X-Google-Smtp-Source: AGHT+IHlDeoVP72Q/Uqyo+pZHURLBnl8XrfCspQPzPuFoQwwhDij8rvTNzWrNHORRzIve/wtI2xDsw==
X-Received: by 2002:a05:6000:1885:b0:3a3:598f:5a97 with SMTP id ffacd0b85a97d-3a4e5e5dac6mr1861963f8f.9.1748378071390;
        Tue, 27 May 2025 13:34:31 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:f024:90b8:5947:4156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f45a8434sm292912855e9.0.2025.05.27.13.34.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 13:34:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 27 May 2025 21:34:30 +0100
Message-Id: <DA78AT6VV956.3FZVIIIM3ZTFZ@linaro.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Mark Brown"
 <broonie@kernel.org>, <linux-sound@vger.kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3 03/12] ASoC: dt-bindings: qcom,wsa881x: extend
 description to analog mode
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
X-Mailer: aerc 0.20.0
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-3-9eeb08cab9dc@linaro.org>
 <b0f472af-6a0f-493f-aca3-65321931bebe@linaro.org>
In-Reply-To: <b0f472af-6a0f-493f-aca3-65321931bebe@linaro.org>

On Thu May 22, 2025 at 6:45 PM BST, Krzysztof Kozlowski wrote:
> On 22/05/2025 19:40, Alexey Klimov wrote:
>> WSA881X also supports analog mode when device is configured via i2c
>> only. Document it, add properties, new compatibles and example.
>>=20
>> Cc: Srinivas Kandagatla <srini@kernel.org>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  .../devicetree/bindings/sound/qcom,wsa881x.yaml    | 66 +++++++++++++++=
++++---
>>  1 file changed, 58 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b=
/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>> index ac03672ebf6de1df862ce282f955ac91bdd9167d..a33e2754ec6159dbcaf5b6fc=
acf89eb2a6056899 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
>> @@ -12,15 +12,17 @@ maintainers:
>>  description: |
>>    WSA8810 is a class-D smart speaker amplifier and WSA8815
>>    is a high-output power class-D smart speaker amplifier.
>> -  Their primary operating mode uses a SoundWire digital audio
>> -  interface. This binding is for SoundWire interface.
>> -
>> -allOf:
>> -  - $ref: dai-common.yaml#
>> +  This family of amplifiers support two operating modes:
>> +  SoundWire digital audio interface which is a primary mode
>> +  and analog mode when device is configured via i2c only.
>> +  This binding describes both modes.
>> =20
>>  properties:
>>    compatible:
>> -    const: sdw10217201000
>> +    enum:
>> +      - qcom,wsa8810
>> +      - qcom,wsa8815
>> +      - sdw10217201000
>
> You never responded to my comments, never implemented them. Same problem
> as before.

You don't respond to emails sometimes and, while I want to move this forwar=
d,
I am not taking any chances replying to few months old thread, so if it oka=
y
I'll respond here. Sorry for doing this.

Previous comment:

>You implement only one compatible, so does it mean they are compatible?
>If so, make them compatible.

There are two compatibles in wsa881x-i2c.c.
By looking at downstream sources and current code I think there is no diff
between wsa8810 and wsa8815 and it is handled by reading hw registers if
needed. So I am thinking that maybe it makes sense to reduce it to
"qcom,wsa881x".

Previous comment:
>Do not repeat property name as description. Say something useful. "GPIO
>spec for" is redundant, it cannot be anything else, so basically your
>description saod "mclk" which is the same as in property name.

>Usually clocks are not GPIOs, so description could explain that.

Should the "GPIO spec for control signal to the clock gating circuit" be
changed to "control signal to the clock gating circuit"?

Previous comment:
>That's not a valid syntax. Either enum or const.

>This was never tested.

>Why are you repeating the if?

These parts are no longer present.

Also i2c0 was changed to i2c in the example.

Best regards,
Alexey



