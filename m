Return-Path: <devicetree+bounces-59701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 302348A6B4C
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E013F2820B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 12:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B9112BF3A;
	Tue, 16 Apr 2024 12:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mWBYVw7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0EB12B148
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 12:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713271214; cv=none; b=hpGMghymRZbmiiv4X/cjgS/n3QLYCeTeJBKwiyLu4i+Qnn8NMnkEQGZeUcdsLc8gyrGs45ZY0adCzxUS/v4PluPT7qr34NapWyD4+KwF251W4JrUzwfI1XJwUpfyPqNbJQ/aaNpxumWu1aS/96vtfNJzZ7BGbIR7zfXa4rijHxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713271214; c=relaxed/simple;
	bh=qmhVGDCB3p9HB3TLlFjPrZ/6xvV+VH4aBoNpHmYC524=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JRsOxS54XPnQesHi7qWj72V6X02OBddb0y8zcuCTLN8Qdi13yhSmLIZP5tn46ES2kxX3D9ALc1HdITcln59/Ud75TTkgQ9z1a8xkhvSXtbDWIRRf4nO4YORTwXKhLxXogOfMmyOjdOY+wlVP+50GY3iV8JmlpEmrTCIbz/MOWoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mWBYVw7R; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso4151681276.3
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 05:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713271212; x=1713876012; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XocEjulw3kAiCxPyVJw1Ya87AMjOi1KyGw4TtHVGXCk=;
        b=mWBYVw7RCfJV1TzZT9Y+25z1rdh0Ea34oBx8ic3A13g2D4fw9qSpqHuoR4Ha7ooHEW
         n3ZnCLcXgq9J0AY6FH1lknlJekuei4bw1SzbbXgQLf9iVST9FPPK/KvSji5ZzYXTXUfo
         gOfFhBNtc8zjygZ3LbbAuc1GjNV+hRwH/r3oogmrM163wd/vqHeEK/dbaRl8+8xj2mAB
         i9253NYcF9I8Q2QfBn9y7bLUw5q1fMoV1RDDERhDaL3GG9gIHToD7+m888uenc3Ggkr0
         U5Qj3coGtfpVPeO+fiXjKGl3T2QNY6Zhlf25j+4DTOq2Trwu34XSWvit9PXpMYeap48R
         VaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713271212; x=1713876012;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XocEjulw3kAiCxPyVJw1Ya87AMjOi1KyGw4TtHVGXCk=;
        b=V1SnCp9Vf8uYZWND2iHnX/yOxHZCDYS+80+b+yVOR6VEyrnHZBa+d48iciYRjEfDJ+
         1aW4TLDmlCdR0sjb1okJ/uxCOKOQlx3PGzmCvcHVDvso6sloO3zYnFi00ZmPwVRVgdv1
         nTMwM0ora/p+6yJoWXTdfCa7ZQfcHEGwiCp4TyjBlSHAVZzd0KXI00UBlVDv/6XkdH/q
         g/3wFv20Qr1zE/XudwobAQGphI4W+xqIV/byThvnZRYxNRiEBJO3xrYlh3rKGF/KULav
         XwO5nKPB2cUbqhOnk1RAGBiHqvIHXpH2tlFVMJ4DnzLh3o87/QzNY1oAnO8FWQfsqmkR
         cXlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBPSmjW8DvHqw4WYDfuQidnY9uSWnK/4N2b6zlP+m1kdmE5qHcqEpWvix/qUGs+f5STH3HfvxmF/BmE3xtG78ReAQtzNNIur+rpA==
X-Gm-Message-State: AOJu0YyWTupN0Dyu11oCP6FeP8vQq+TImtHvASbpdoD3WVvvPvyyXfQ5
	lccpiXkhKb/83VnDuHCpYeQsEKwLKrZRF2WkghKPW3CcD/qljThrfKw5k6ONMBVyG42jWuvT46x
	5unguBTODVdu0NLWzW+Yg/SCpRTR8rhHU7RX/6A==
X-Google-Smtp-Source: AGHT+IGJhFIyKEbY2TNHNPrCm3GRm5c6L7GB4Z/sH1BLsFZXKmx3pHDdVDxtNq7uyYtUlxMVzqOrk0oaE4WyfbJcIG8=
X-Received: by 2002:a25:bc4c:0:b0:dcb:fe58:a08b with SMTP id
 d12-20020a25bc4c000000b00dcbfe58a08bmr11907548ybk.15.1713271212014; Tue, 16
 Apr 2024 05:40:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416063600.309747-1-quic_mohs@quicinc.com>
In-Reply-To: <20240416063600.309747-1-quic_mohs@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Apr 2024 15:40:01 +0300
Message-ID: <CAA8EJprABOeWrAm-PyeLF1ZM95qC17bxyZvEVpGG1Wz97KLYWQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] ASoC: codecs: wcd937x: add wcd937x audio codec support
To: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_rohkumar@quicinc.com, quic_pkumpatl@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Apr 2024 at 09:36, Mohammad Rafi Shaik <quic_mohs@quicinc.com> wrote:
>
> This patchset adds support for Qualcomm WCD937X codec.
>
> Qualcomm WCD9370/WCD9375 Codec is a standalone Hi-Fi audio codec IC
> connected over SoundWire. This device has two SoundWire devices, RX and
> TX respectively supporting 3 x ADCs, ClassH, Ear, Aux PA, 2xHPH,
> 6 DMICs and MBHC.
>
> For codec driver to be functional it would need both tx and rx Soundwire devices
> to be up and this is taken care by using device component framework and device-links
> are used to ensure proper pm dependencies. Ex tx does not enter suspend
> before rx or codec is suspended.
>
> This patchset along with other SoundWire patches on the list
> have been tested on QCM6490 IDP device.
>
> Changes since v8:

I hope it's a typo here since the series is v2, not v9

>  - Split the patch per driver for easier review as suggested by Krzysztof
>  - Used devm_gpiod_get api to get reset gpio as suggested by Krzysztof
>
> Prasad Kumpatla (8):
>   ASoC: dt-bindings: wcd937x: add bindings for wcd937x
>   ASoC: codecs: wcd937x: add wcd937x codec driver
>   ASoC: dt-bindings: wcd937x-sdw: add bindings for wcd937x-sdw
>   ASoC: codecs: wcd937x-sdw: add SoundWire driver
>   ASoC: codecs: wcd937x: add basic controls
>   ASoC: codecs: wcd937x: add playback dapm widgets
>   ASoC: codecs: wcd937x: add capture dapm widgets
>   ASoC: codecs: wcd937x: add audio routing and Kconfig
>
>  .../bindings/sound/qcom,wcd937x-sdw.yaml      |   71 +
>  .../bindings/sound/qcom,wcd937x.yaml          |  119 +
>  sound/soc/codecs/Kconfig                      |   20 +
>  sound/soc/codecs/Makefile                     |    7 +
>  sound/soc/codecs/wcd937x-sdw.c                | 1148 +++++++
>  sound/soc/codecs/wcd937x.c                    | 3036 +++++++++++++++++
>  sound/soc/codecs/wcd937x.h                    |  655 ++++
>  7 files changed, 5056 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd937x-sdw.yaml
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd937x.yaml
>  create mode 100644 sound/soc/codecs/wcd937x-sdw.c
>  create mode 100644 sound/soc/codecs/wcd937x.c
>  create mode 100644 sound/soc/codecs/wcd937x.h
>
>
> base-commit: 6bd343537461b57f3efe5dfc5fc193a232dfef1e
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

