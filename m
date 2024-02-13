Return-Path: <devicetree+bounces-41456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02236853CFE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 22:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 961951F26CCF
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 21:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E2E62156;
	Tue, 13 Feb 2024 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MDMpb4pm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C749F62142
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 21:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707858593; cv=none; b=uVRJXGlcL1jfnUcZX1DmD6dYk29oz7pDV2uGw1s97o99M/zAc3pNppupEhRK4tOtvMFd/GuMsTBgibKQ8W5pDVYyMvPU4vqkOZbJKUC1CVBWPW2Cd0Df1U2MWaDy4gak/VoJuKgBWlEau/J0FrMkTXGL3opldLcpgl7M2AbyMX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707858593; c=relaxed/simple;
	bh=yE563jYemyl/vAZ+FK/z0jc0wfNO0ntt3wJwgwq9H40=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dDIMYVyiVKYAdsuZBP18fv4AHegZ/4rKvpzWZv4clriE12m61F2BANlY0+cDAXl8Qg3wvNthajesidskO7GJ9BKZSGVdAt8tdHcMtdqVwESWmKZ7CqOspIp7/m2ZDuZfKph1JHfAY5+aLJnLTn4B3j2uD2T/y+1gNMtKq8LL7OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MDMpb4pm; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-51181d8f52fso1803033e87.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 13:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707858587; x=1708463387; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=odSVkG5Ep60HRCR2A/0o61mTWPkFfp+uEG3bmWlcvqQ=;
        b=MDMpb4pmYr5kNXB94iWQO9W3RymH8jC8OzQZIHa04lsZZtKnk56Tg+LnvQ7GcvyuLb
         Gtuep7G0JleVYgKgM2Dyi+izFPQ9etLhWLMdy/Vh2UiCLeruHwa/ysy4vmPS55eCNFsW
         nEE6328pdD0OtCGJn6aSXDinxyeW1aNFjfTck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707858587; x=1708463387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=odSVkG5Ep60HRCR2A/0o61mTWPkFfp+uEG3bmWlcvqQ=;
        b=ubrEpBgGrUtHRaJ+ksZdJ6VYnD/dTLgG2hCooYcd351Urq6JNynJrxlsrDl2b4Xrge
         SlDrt8UBC63N+VQppMINi3JcJycyVwTMDA2xmLtZfUGuQzoWBRinPAEfL3ZYXkUybg3E
         vboQuVNTU+YETXWvV9vWrpsLpbRjgPi78P30t8f6Rvi1WzZMb1ww62DU1j0GA0GcMfEk
         lotCWBV5+MNZzJtTPKs6JvWFftQrEEZxj+M9GBlJhsUsQbUjJQegIE+bzFebOPKgOAjY
         T2g/5X5YuykP7YV49RUkuWb9R8VGIKXc9v5apchyEiqwhnvEM+11c4wRWO06FNA5hRLe
         e3Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWB4sgL0B2vUEuoSmK3YhwLiCbs4spfKIguEzhrRBCAMLhrivR8JNf20RrNATVxPKY963iAD4QinGzSloFhn/3fv/MUFYsd6LwW4Q==
X-Gm-Message-State: AOJu0Yz+Uol4YUeHMrDiWpG5LApy7VUzTofXfyna2YRom3PbQZEmTSaQ
	Yeqt9Ot+DdXj3+hhDnZH02b/DDkBcAeMgwC1arwYT6h6qrAIgjhXOMPa+afDZ025qv3kISUbj0D
	p6g==
X-Google-Smtp-Source: AGHT+IE/0CurNLogMjYpiIiLUbBX8RbBsVscJHE+j8y6rYa5LGtjo4n9gEXm9L4m+NC7lqb2u3kzVQ==
X-Received: by 2002:ac2:51aa:0:b0:511:9008:7266 with SMTP id f10-20020ac251aa000000b0051190087266mr451553lfk.6.1707858587275;
        Tue, 13 Feb 2024 13:09:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUmVbwtg5+G9c/+m5j6cGDkYVdPv/dVZzPCB1FlNrc6hkRPf7utloRqvGIMpBaoDqLnHUHK7FFYsgi4qlyoY7k8xvbHEPn3+dlkLQ==
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id tz3-20020a170907c78300b00a3d28aa375bsm326070ejc.151.2024.02.13.13.09.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 13:09:47 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-410cf70a057so88525e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 13:09:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUhWsRmBeLhyVPrqyRtMGu2faW19nGBssADTCDgGHJ9JKhaAu/C+hQ6NC81DEZo5V0T+NbJuOt1EGzmpgBW6kEh6L8deVMXw7mK/A==
X-Received: by 2002:a05:600c:1d93:b0:411:cdf8:f3d1 with SMTP id
 p19-20020a05600c1d9300b00411cdf8f3d1mr85206wms.0.1707858585791; Tue, 13 Feb
 2024 13:09:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213145124.342514-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240213145124.342514-1-krzysztof.kozlowski@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 13 Feb 2024 13:09:30 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V+MNxSpNLCjrHb553QrK4NjZHNJZymQ9+Q7qB2qjOfEw@mail.gmail.com>
Message-ID: <CAD=FV=V+MNxSpNLCjrHb553QrK4NjZHNJZymQ9+Q7qB2qjOfEw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: replace underscores in node names
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 13, 2024 at 6:51=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Underscores should not be used in node names (dtc with W=3D2 warns about
> them), so replace them with hyphens.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8939.dtsi              |  2 +-
>  .../boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi  |  2 +-
>  .../dts/qcom/msm8994-sony-xperia-kitakami.dtsi     |  2 +-
>  arch/arm64/boot/dts/qcom/msm8994.dtsi              |  4 ++--
>  arch/arm64/boot/dts/qcom/msm8996.dtsi              |  4 ++--
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts           |  2 +-
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |  2 +-
>  arch/arm64/boot/dts/qcom/sc7180.dtsi               |  2 +-
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |  2 +-
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts  |  2 +-
>  arch/arm64/boot/dts/qcom/sdm845.dtsi               |  4 ++--
>  arch/arm64/boot/dts/qcom/sm6115.dtsi               | 14 +++++++-------
>  arch/arm64/boot/dts/qcom/sm8150.dtsi               | 10 +++++-----
>  arch/arm64/boot/dts/qcom/sm8250.dtsi               |  6 +++---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi               |  4 ++--
>  15 files changed, 31 insertions(+), 31 deletions(-)

FWIW, everything here looks reasonable to me. Thanks for the cleanup!

Reviewed-by: Douglas Anderson <dianders@chromium.org>

