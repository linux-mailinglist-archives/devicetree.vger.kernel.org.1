Return-Path: <devicetree+bounces-68971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA30A8CE341
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4ADC1C21F1A
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 09:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6E085627;
	Fri, 24 May 2024 09:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AasbsFK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA5F84E07
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 09:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716542371; cv=none; b=ruQwwdMVI3pQWKxLSUYeqnERbL2loEOrHuQtoIlK/ZneIo8WW8A7VFJAdt4UWYG5tuWkdZs+1j7zakv/pev8tSYhqao+SyuckRmFP+DIwRchhwbszBUhB451qvh3ALJsFE6UF/MpLnW5HP+CVofGiBgtB4Pms9ED6XA4RVu7L3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716542371; c=relaxed/simple;
	bh=S5WIHfo/GVVFuV2a8N3J3V/bskkP4vgyxo9cxv7VQAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZHi22atNYCwrMhGK+JFV9aLz16qhFParr3xTmcMc78TZeWDqVHLb6823MOQqK2p+aNfJzLLz2eTGnf6wCP1MIGbpqig2Jl/M4SdXuEvRiPmMxnBC28kczDYlJTgAxy/vfVscSl1JF6g2KgASjKwrCaD2ol63rSAiniCugi2Sz3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AasbsFK8; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-df4e40a3cb6so3017890276.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 02:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716542369; x=1717147169; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BFC/Wq6r2ZnocxgGVbxbRurbvlwJyoIDrYIsqw3lJqc=;
        b=AasbsFK8Mt/PBkyaFq4wDhGGCDNTzpxMQ1Mwa29niqtT3epguk2PVIEfb9sc3EadZP
         FklJq+xk0xVWrT4Oc7bdebK+3oHdLd0476OGs+6I9Tl6C+tslihGZZjAA8jurcuO7S0E
         WPvda+m4XLP+XP4E9CGlLt2qTM6nthiWNjd8k4HVi/EnK7Ouf4dywmuElXhqbyHKgqgs
         BUb67NX40RL9ApGWYisP4HvOAocfawqNpguvbSGYvgJerlevu1vlxKAUyD8qsV7wkU0E
         jyrJoiGUNr/PyPc0Dqu6L/MXrvX11cdH3cpGY6Iigvu8GwMDeViM8r3Xf9bF9E8uIvGv
         e7Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716542369; x=1717147169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BFC/Wq6r2ZnocxgGVbxbRurbvlwJyoIDrYIsqw3lJqc=;
        b=S44MPYhVwYFHIODRaKUFhQiAVWGHF0AGznaCSyqLbk85aj7zWieOYcaFdjgz9l5525
         NRFNBa8f5OV6vydg+tTS0lqTzokigdNVCXl1AoQS2q2i8c7jxJa/+gUcZ1tyxKDUy348
         xBtNwA0cFIcggtEkrI9mEBVcA8TsZexWS9GbZIsPjgdXHwChxYhaGZT3ipS1wbqRxOLN
         J/RkMhGDaLVAPnxkaMRx0u1LrnfCT5URVnVPEUGGyOGZPjnQTi/mZWACk9ufzbdNQDtZ
         /iN142ercMynPrM5Vu+ptOp870k5721eXtu6ffGS0XkWURcxllpf3AACtGa3fs6mOJkM
         ED4w==
X-Forwarded-Encrypted: i=1; AJvYcCXHMdyFp2e/uR6NWCCxhGRhrDXIj+6zt8VCdMDZbT1P5W8+n0HaYhaYC5BrfZkrCJQuMp34w3ykmXKoZyQHl50C+nIRaZveqSqcrg==
X-Gm-Message-State: AOJu0YzIxEea+MWWFJboOqq8z1jaGVgVAdKe1kNVFFXFDPBTVaeDIIIb
	NonTxXMBhBW8zbBOx3Qtuz52RzNAY/FjukSy4ShYspsCTsF1JJat3NG8+eOGwGWidUwUPYR2zNm
	oWY50TQVYJmaFU03xgUOZ/k9+oe5BszpoS2YtkbGIcv3bcBLn
X-Google-Smtp-Source: AGHT+IHQOGkX6tTv+H0dG9M4HcslJIDthMVJK/fTaxTSoTTh7UEYLllN3SvzcSDRZhpNnspLGW/VvYGgTEt21HlMSwo=
X-Received: by 2002:a25:adc2:0:b0:df7:695a:1cee with SMTP id
 3f1490d57ef6-df77221c3b5mr1532190276.50.1716542369346; Fri, 24 May 2024
 02:19:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240524035350.3118981-1-quic_mohs@quicinc.com> <865adb41-fd27-d303-5f0f-a68a814f41ab@quicinc.com>
In-Reply-To: <865adb41-fd27-d303-5f0f-a68a814f41ab@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 May 2024 12:19:18 +0300
Message-ID: <CAA8EJprDb0fk0G1wrzB99EG=HAm5tw1Mz=mSd5mDMptDOoUb2Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add support for QCM6490 and QCS6490
To: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_rohkumar@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 24 May 2024 at 07:06, Mohammad Rafi Shaik <quic_mohs@quicinc.com> wrote:
>
> On 5/24/2024 9:23 AM, Mohammad Rafi Shaik wrote:
> > This patchset adds support for sound card on Qualcomm QCM6490 IDP and
> > QCS6490 RB3Gen2 boards.
>
> Please ignore this abounded patch series. No need for review.

In future please use a logical prefix for the cover letter too. This
helps other developers to understand whether they are interested or
not.

>
> Thanks,
> Rafi.
> >
> > Changes since v1:
> >       - Use existing sc8280xp machine driver instead of separate driver.
> >       - Modify qcs6490 compatible name as qcs6490-rb3gen2.
> >
> > Mohammad Rafi Shaik (2):
> >    ASoC: dt-bindings: qcom,sm8250: Add QCM6490 snd QCS6490 sound card
> >    ASoC: qcom: sc8280xp: Add support for QCM6490 and QCS6490
> >
> >   Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
> >   sound/soc/qcom/sc8280xp.c                                | 2 ++
> >   2 files changed, 4 insertions(+)
> >
>
>


-- 
With best wishes
Dmitry

