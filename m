Return-Path: <devicetree+bounces-237764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE2EC53CEB
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 18:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B7DFB542147
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B4E33451AE;
	Wed, 12 Nov 2025 17:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9TrqFbN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68A3446A9
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762968069; cv=none; b=H/dZ3mqIQnbISmKl0y3L/nYnYY0J+UEg6tj9B8HwgcwHj6bt0xJ3cjCvrPldT8Y/kbQs1/0q4nxV/9E0cCFBft9O4SwVHohqDs6e2dmDYUqdzXuX64mXR0cmARTBJwecMiuIoeAXG6DBScMOO49xMpqr9oyVVoPDSfKivTXZvl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762968069; c=relaxed/simple;
	bh=zGm3bjPIXNlAXsn923/poaK7/h5DdSgopChHq1KIJug=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=MLtp2URSXTOtOh51XY/AMPCX443ckk4RL65/amx2GhU70yidz4QREdnLH684HEUeUdvfK/q9wpb9hkah6vNbA0OAWKY5HkF6M/3O3VpJVI58nNC6Wr0MbabYmIIumhI8/fE4KVfTubq7ir+f5Hcx2tz/Za6yqZ1rV4N+IvX2qlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9TrqFbN; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42b3c965df5so753739f8f.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762968064; x=1763572864; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+D8BoUvcqK/7rHl2L0r4XdY6giRmTPN9ngtKeR3ez90=;
        b=S9TrqFbNcrP3YS5Uc7rdz6PzAL3g54MeF9cHf4b6VqPeDafcgVsOwmw3sVcAxW+SYf
         +kYZ8G5A1zVPRayt8sMogwJOaPtvzFRjp83uHjY4bmuhyPP/ULvORLZSyu5rRukDMrAv
         oe4Mtob5tFI/QAhL8K4A08M6tRgspAZr9rFNkqKY1CuEyuwiRzlmha0ipW1jef88mufh
         HtUdnYZGD29e3ULyHYB1AJmA5sxwYg3TX4ME9YuPK0B3SXLXHMIOCCKL0iDeU7NUoyZc
         6RXESpaWDJd3iV94l7X2grwZG3XtoyE+63VFil56xuS/4XFFO9EM+x/SF0Bk/4MevcWB
         Rh2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762968064; x=1763572864;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+D8BoUvcqK/7rHl2L0r4XdY6giRmTPN9ngtKeR3ez90=;
        b=EWcArLnLQa0EUGv7ISiF3UzF+++PyVvni8cgqlGYtPCOtiwDYRQE2waVhJQNggv3hd
         /iZahzJnnR5UJtB9LC1E1kNhjEQRV/v8IEFxk+HO2/hPKVwJ9zxVIzHFEHZLZe9QgG+v
         HUkOjUvBnvEUKIlLIX35Fp6vi3IsOjWqH4oGGfLO1Fg2SU05kZeaL1LTSZH4mB31905H
         Crga8K8Ua3iCCaM5XK0BEpuoyjp5HgzdCkpZnrMH1/dR1mmoQjx5igwaPFB3XGF1W/KL
         Tdn/Csk8HANBARc2kqddq5twaNWk6pCw1h7Wf/imDM0+PQ95TGOsMxSd5GRJg65/J4Ux
         Ihyw==
X-Forwarded-Encrypted: i=1; AJvYcCWIqMRG0hhjjq/ITXNuubDRDkHCuEuO7Wd588jllJpRCv7rPiko78LjptVPXtKdBllOtqICBVN8018b@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo5H3zHp1ODmozUrhXg3zeMCBKEEN0b5mnhsIpZltFVo96+beY
	nWLc6bqmFZzySsLjcRJYACMLs/4FSdPiENPS9GVqd0y6iXpzrESfpqnlUi31Z8OZ4PA=
X-Gm-Gg: ASbGncsZon4ygnX5EvAnFXd2Yzlt1Sw9en8yen/B3I6ma/bQiZY9sq/uz3dWOhBZnl4
	navFD+vD7Mdd7QbZ/LefkPoWYFj5GA+od8rBDN1Xj/LpKM3tiF7dGbXQjxoehJEp7Ao9lrHHxpH
	EZNgsyGcECgF+WJ6PMyIJONwk2KHr+5kB6y+TGhmU6lqOVOwe2Gx8CtzrK+mjglNhoV0plbPByB
	ZZBa8Zcpyz3xFeZuMYHE4zETqTjlXe59OaZAZ+pI4TGyjZGv6+JTkC6J0lv3JqKp/pNrr3bEq9d
	Sno57Bm4uskr/3O1DW1aThyJa/kvaE/cJcKUwtxlzqwQ7ilrM7C3qrAYhmJdrEqLpXkQMKbvRhX
	1JnSqrI7/RS9lHEg4ZwY1PvQC7Oc7IeQr6j+qJDMkqfv+QKfF0TLwJXQieyiG7jmnCp6n5bmIfO
	MfC2jKj4EnpJcX1Yo=
X-Google-Smtp-Source: AGHT+IFOnruwkehrKtiSlIIluNpW1jCcNK6zjknkUp1TXGQBb3IO3OG62+bnEz116c3kPlLyvXv7bg==
X-Received: by 2002:a5d:5f53:0:b0:3ec:ea73:a91e with SMTP id ffacd0b85a97d-42b4bb90b60mr3558763f8f.12.1762968064363;
        Wed, 12 Nov 2025 09:21:04 -0800 (PST)
Received: from localhost ([2a02:c7c:7259:a00:4fbd:5c9b:d8a2:ee64])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b4789896esm9558995f8f.38.2025.11.12.09.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 09:21:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 12 Nov 2025 17:21:03 +0000
Message-Id: <DE6W0RIF2Y26.1MENYDV2RIAIP@linaro.org>
Subject: Re: [PATCH v3 05/12] ASoC: codecs: wsa881x: split into common and
 soundwire drivers
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>, "Srinivas
 Kandagatla" <srini@kernel.org>
Cc: "Mark Brown" <broonie@kernel.org>, <linux-sound@vger.kernel.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>
X-Mailer: aerc 0.20.0
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-5-9eeb08cab9dc@linaro.org>
 <f1337654-ff69-4489-840a-a1b38efb7f74@oss.qualcomm.com>
In-Reply-To: <f1337654-ff69-4489-840a-a1b38efb7f74@oss.qualcomm.com>

On Thu May 29, 2025 at 11:05 AM BST, Srinivas Kandagatla wrote:
>
>
> On 5/22/25 6:40 PM, Alexey Klimov wrote:
>> This is required in order to introduce wsa881x driver that works
>> in analog mode and is configurable via i2c only.
>> Functional changes, if any, are kept to be minimal and common
>> parts or parts that can be shared are moved into wsa881x-common
>> helper driver.
>> The regmap config structure now contains 0x3000 offset as required
>> by soundwire spec.
>>=20
>> While at this, also fix the typo in WSA881X_ADC_EN_SEL_IBIAS
>> register name and rename wsa881x_set_sdw_stream() to
>> wsa881x_set_stream() and update registers description in the
>> header and use the new defines in wsa881x_init_common() and
>> in wsa881x_digital_mute().
>>=20
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Cc: Srinivas Kandagatla <srini@kernel.org>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> ---
>>  sound/soc/codecs/Kconfig          |   4 +
>>  sound/soc/codecs/Makefile         |   2 +
>>  sound/soc/codecs/wsa881x-common.c | 193 +++++++++++++++
>>  sound/soc/codecs/wsa881x-common.h | 458 +++++++++++++++++++++++++++++++=
++++
>>  sound/soc/codecs/wsa881x.c        | 493 +------------------------------=
-------
>
> How about we have something like wsa881x.c wsa881x-sdw.c wsa881x-i2c.c ?

I am totaly open to suggestions. Splitting to wsa881x-{sdw,i2c}.c sounds
good to me.
I kept the original name to keep the changes minimal.



[...] (the rest of the patch was quoted and sent but I didn't find any
comments there, please let me know if I missed something there)

Best regards,
Alexey


