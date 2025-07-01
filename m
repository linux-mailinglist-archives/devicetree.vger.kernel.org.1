Return-Path: <devicetree+bounces-191792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6253DAF06F7
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 01:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 256191C04D03
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 23:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D64227054A;
	Tue,  1 Jul 2025 23:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L6LB1v0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821BB26E146
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 23:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751412617; cv=none; b=VXq/GI6G3gNh4IZ5qpA6t9TZN8yKONbR+X0UDzT/RN8uq7fh+MdmABGkn+a/mHWGONvf3wmGZYZvcnXNJtWwufs3yntwY6kmWXpZKcONVn+Sph0kK+0IgK9Pi3ds2+QqyraU0mqyfWwdoprPtKCmhHssrqH6478WTroE58oKgX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751412617; c=relaxed/simple;
	bh=zRVKdNBo3oYtirxhyyChLEgwk1WbbXOs6Ro55DSo9TU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=aDQrGOoSXs6LqaKHH0EXK8WEmi30uCsx0s6N3qcdE6xxBcKElJd5gRVTJUgIZWPXZ8Yn46TrUSe9g8xvwtlkwerq5lXrmBuVHPjlgMHHV8F1rF8OhhUvHIcau53mxo/VoXO15rtkwLt1fH5sHEwbl1MXTLsCEd16VXDGxOWMsV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L6LB1v0F; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-453647147c6so66657895e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 16:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751412614; x=1752017414; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxkUs9RFusjv08S72yLrh5Wg1MHFO9VcHZyNeP7ykBI=;
        b=L6LB1v0Fyc0x7c52HaIjxJtK5WyOscysreC0zqmWS2UbMBM7yEPzy5MZDSGRtos00F
         JekQ3y42bvNfK2GZOgYSz0nwd1oiY6MqrIfuENZP/Q27J49GTXZ20r/fB0fYtKpVwps6
         7khnldEXzfeBrw1cHW8I1ACewuVCLLACagqTRUBPgATbzIgJjw15iaeeEHyNftoq1+0S
         nfIO75fZYAryeoXAfSnFrBGzht6XZsWGvWZNVGWy813+FSCbD8trYVq5/pEt59NIYnmf
         TTy39mSGbbDawZmc3/QLHcW6E24kMlLeeQCUCWEY6bmUzd+VR8gEu0fpMWtI8rAF7OKO
         WuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751412614; x=1752017414;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oxkUs9RFusjv08S72yLrh5Wg1MHFO9VcHZyNeP7ykBI=;
        b=wMBnrzolb1s225Fic6KSAEMpsHhU2lDlFM/1pUAWsTVfu1X4+EB8XBdj0YuXDSfeiu
         GG3Try0TwkTBdeYxsHYUfnqsVK+iLhlMv9EAyGyNCBDi3CCy9h8HSaOiyrPvPRo3R94H
         fJmedlR5dktU7Q7HpMsvI/BT2y+A0jIoxxBxHBSZbJge8OGUezJNWYXjVXLq3XYyhEEX
         0cPqY8leyYFuljgirWU7LyansAFc40BnYz7O6trfHjMfkoE5cn1CFybhvn/5XdSZsngH
         CCHp20chnAHcCJb16ugzlBMUIyZTPAwNUdGhvCf9DrB7I37OGtG24IO6ufb485UlehnK
         TfBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUM8y7CVoKOZOTgiDvG1AbpRW/i2+9Ryys/6VngBiqf248DcGmuhN8Fb3gW3CjT3USpsMcnaf6K+qMP@vger.kernel.org
X-Gm-Message-State: AOJu0YztkuCDR4szKLtCVjMLpEBTC26wS9FLjP4pNp1keNlPSEuWaNFp
	CMalomxr5NqOTZ3HTwKo4GP32Lln+xu0AyBLkEFpGmhovoszwAouwlljYJHhf+LRdy0=
X-Gm-Gg: ASbGncsibY/kbG7H3yjqLfPTRQiiYF6uRmPd0SKI03nOBuiPKMuebC/Ub27V5cYt70D
	Lx3kn7m8otKs9oNWvqKhQpHW2v0kcS/A5cMBvYdXvN8EDx5v0LplFjiugNO5wp7vvRSxhpyH2QR
	oE0yiL/XsOYaPKCmvnLKBz07yVadDYEbWBOFl5A343PYecj6SVn4UY9TCueJN6omBRauGOpYfYJ
	H2b5uAEKcfS9uOmcH2w+GfUt/QNxttF0srYm3LQZ/KpIgB1EoK7UVDfIvJhBonHwb1drV+mjL2x
	O+LmtslWY8xwnNVHNKoHCw7v0XrXbLtFPiZXPC5UWERJE5uWtYhbwKsugrEQxQ2O1RzR
X-Google-Smtp-Source: AGHT+IGWh47dzU/qedhk5q4wmllU/1FOhqD8rZdFeCpoKzh5IjU9RGIxJ/oggHk3EfGT1VRySLysbQ==
X-Received: by 2002:a05:600c:6205:b0:43c:fc04:6d35 with SMTP id 5b1f17b1804b1-454a36deea0mr9755065e9.4.1751412613725;
        Tue, 01 Jul 2025 16:30:13 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:4dad:b69a:9c81:2e57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453b35349f0sm25469415e9.1.2025.07.01.16.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 16:30:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 02 Jul 2025 00:30:12 +0100
Message-Id: <DB13YER95DCW.1IBRJ65LED5GX@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: sound: add bindings for pm4125 audio
 codec
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephen Boyd" <sboyd@kernel.org>, "Lee
 Jones" <lee@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: aerc 0.20.0
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-1-e52933c429a0@linaro.org>
 <wcmalvywoginosy5pp7wskgdzjbwbydividmk4dtwguoltiobf@muw5lzkvgu5c>
 <DAYBDV1I7HH0.1GG9U3LI5NQ97@linaro.org>
 <d24b2a88-fda7-4a8a-bb5b-73d8a928ff89@kernel.org>
In-Reply-To: <d24b2a88-fda7-4a8a-bb5b-73d8a928ff89@kernel.org>

On Mon Jun 30, 2025 at 9:21 AM BST, Krzysztof Kozlowski wrote:
> On 28/06/2025 18:41, Alexey Klimov wrote:
>>=20
>>>> +            #address-cells =3D <1>;
>>>> +            #size-cells =3D <0>;
>>>> +
>>>> +            audio-codec@f000 {
>>>> +                compatible =3D "qcom,pm4125-codec";
>>>> +                reg =3D <0xf000>;
>>>> +                vdd-io-supply =3D <&pm4125_l15>;
>>>> +                vdd-cp-supply =3D <&pm4125_s4>;
>>>> +                vdd-pa-vpos-supply =3D <&pm4125_s4>;
>>>> +                vdd-mic-bias-supply =3D <&pm4125_l22>;
>>>> +                qcom,micbias1-microvolt =3D <1800000>;
>>>> +                qcom,micbias2-microvolt =3D <1800000>;
>>>> +                qcom,micbias3-microvolt =3D <1800000>;
>>>> +                qcom,rx-device =3D <&pm4125_rx>;
>>>> +                qcom,tx-device =3D <&pm4125_tx>;
>>>> +                #sound-dai-cells =3D <1>;
>>>> +            };
>>>> +        };
>>>> +    };
>>>> +
>>>> +    /* ... */
>>>> +
>>>> +    soundwire@a610000 {
>>>
>>> Drop this and next one.
>>=20
>> The audio-codec node supposed to have qcom,{rx,tx}-device properties.
>> If I'll drop it then the example doesn't compile well unless I am missin=
g
>> something?
>
> What did you drop and what did I ask to drop?
>
>>=20
>> For example when I removed soundwire tx node completely and dropped
>> qcom,tx-device then:
>
> I did not ask to drop qcom,tx-device.

Dmitry already explained. Ok.

> ...
>
>>=20
>>>> +  The audio codec IC found on Qualcomm PM4125/PM2250 PMICs.
>>>> +  It has RX and TX Soundwire slave devices. This bindings is for the
>>>> +  slave devices.
>>>
>>> Last sentence is redundant and makes no sense. Codec has only slave
>>> devices, so how this can be anything else than for slave devices?
>>=20
>> This came from other similar files that describe bindings for child code=
c nodes
>> of soundwire nodes. For example from qcom,wcd937x-sdw.yaml.
>> Should this be rephrased to "This bindings is for the soundwire slave de=
vices." ?
>
> You just pasted the same, so I don't get how you want to rephrase into
> the same sentence.

Not really.
Original sentence: "This bindings is for the slave devices."
Sentence from my email: "This bindings is for the soundwire slave devices."

The difference is 1 word.
If it doesn't work, then maybe any suggestions?

Maybe "This bindings is for audio codec node that must be a child node of t=
he
associated soundwire master node."?

Best regards,
Alexey

