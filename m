Return-Path: <devicetree+bounces-118151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6959B930B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 15:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BADB283197
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 14:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414411A2C06;
	Fri,  1 Nov 2024 14:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="mSs2a7/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF24A1A263F
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 14:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730470964; cv=none; b=mTkyZjyFpZ9LG5iP2xZ8VOwMC0jyEWIRP4zWbM/r4h575YW6ViM9sHlorwAHLgxxIAUO9FecRQczl61j6DydTMP4AeOdOMAVclAsNpAhBb05XpTsEJ10DjDN9J7Re5HdeS+1C7XZuTME+8AxTPLXEHFNMZBbc7NBHZGIqiiUNY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730470964; c=relaxed/simple;
	bh=eaoYM3+CQf0qMzz9k7+znlcR8JA5fJSdnCEIFmJglng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KGGTgHlQG0uawEUu7/RDy0K8NXCj5s76AYakGk1d9nXBmPzQcU+km1m5TvINoNN+xQiDIzcNGrIGLBOxCrnRgQU0EGCgSP2/xsL7cFCveJ3txMoUSa5tY0GT9n9AMyjRkF/6aKFMRZj3fycFEjw/EUOdBfDqyNAca4kY5be2v5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=mSs2a7/b; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb561f273eso17470471fa.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 07:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1730470960; x=1731075760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3NkzkjFi+fXP94uSTTPmiY1l/XjdYqeKRey3P/qytSM=;
        b=mSs2a7/bfjbqtCSa68hEl/jz5zQnFEh/dt1n+TQbDxWg+amTxuL1Q0mnP0CXCOPjQa
         BQo/rMDF67nqjLxZOfV7U2fRk2spcVM3o2c+A+zRZP+3VNcUOdbNzVLsCdfeP+xZscki
         8OruUlC0rs/jjriwJf3JVvrnoCXdEGQTUeYQuyLPsqwtSU3wKcQ36CmO02q89xagBIUF
         1ukBPMMxsfO+arT/0ejYXPo5wa8yEXPNe20Y8tWpCeSaCMJuT7KY+wLIiesH7Bja+1to
         e1ilL9bjAIPTp6wasxSpxbm7i1q4fPQ8z/lcjFJb7AcZd0fpDoC/gxCyTiQI2oHnTSyI
         fYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730470960; x=1731075760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NkzkjFi+fXP94uSTTPmiY1l/XjdYqeKRey3P/qytSM=;
        b=gHgd12+vyoeVVB+EqPfjwcKDbbIE6rP1o0QFP5XuAOKtcc1oinCWdMEqswo2Aw5Aok
         4S8plE4GPn3p2LWzwThaWdg2g/0zt8JWNz4QK9zPsVbmjJjL4yG7Rx8l+2wPi6WuXtnh
         Yz1froFgQOT8SnyhlhJ134yJg1l1QsUIfvFrjn2+xrwHO7L1n6zvchRrp+2TnlUTzC4E
         PYUPCG0EXAQhjA8Ex7a+EkGnDCFwR5Dq1YrSMrAFtOin1wzSQKyctcAfUVf80fuh9pKn
         7oJtIQMcgsRRTe8MtWGvLJtLruYcar3Fe1k0TmcW+zBTogy5b8NQrZ5DKcMvpQs3uHIY
         ftHA==
X-Forwarded-Encrypted: i=1; AJvYcCWmcDUKRQU3DQNfsqBdokoHnX4PlhR+ENevftGkn9+/KRBNvadFJJPjHLNhqrRbBkjIktqN+Cxp1/0y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4lVofx8SnBxCAXb3R5XdqbTJd655LcDGeHvUAyTc4o8u9EnH+
	N7ovmTv9mdtRujY1keM94MAHT5xBqXfI8ubP2KQfP9CsrIJVGTUPBUiE8kJKFYxAH2AoFu3LOYj
	wce6plfQFVyD8oCFV2G/Z17daVuTy2UfRLwN5YA==
X-Google-Smtp-Source: AGHT+IFlDvjJIvDi2HZUP2QxWHPvwa8yzlrKeA5Te1yyulTITJs/lklicGzd4spG4MJlVOtyOjGQ7leC0jF/L+Hoijg=
X-Received: by 2002:a05:651c:12c3:b0:2f9:c337:aca9 with SMTP id
 38308e7fff4ca-2fed6de9eb3mr30677851fa.44.1730470960066; Fri, 01 Nov 2024
 07:22:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
In-Reply-To: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Nov 2024 15:22:28 +0100
Message-ID: <CAMRc=Md=ChXtdAY5_ZGtWQCk06mvtA2pMM2DF03-pb2StvHR7g@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] arm64: dts: qcom: enable Bluetooth and WLAN on
 sc8280xp and sm8450 boards
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 2:49=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> This series previously only concerned sc8280xp but while enabling
> WLAN/BT on sm8450 I noticed some more changes will be required so I
> folded the latter into this series and updated the sc8280xp CRD and X13
> patches.
>
> =3D=3D
>
> This models the WLAN and Bluetooth modules on several boards using the
> WCN6855 module.
>
> The wcn6855 (also known as qca6490) is a bit different from the qca6390
> so modify the power sequencing driver to support it with separate device
> match data.
>
> For the sc8280xp-crd and sm8450-hdk we add the PMU, wifi and bluetooth
> nodes with the correctly modelled wiring between them. For the X13s, we
> rework existing nodes so that they align with the new DT bindings
> contract.
>
> On sm8450-hdk we require some additional toggling of the XO-CLK signal
> so add that to the driver as well and update the bindings.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
> Changes in v6:
> - add the xo-clk signal handling to the pwrseq-qcom-wcn driver
> - add a patch enabling wifi and bluetooth on sm8450-hdk
> - add missing supplies to the PMUs on sc8280xp boards
> - Link to v5: https://lore.kernel.org/all/20241008102545.40003-1-brgl@bgd=
ev.pl/
>
> Changes in v5:
> - put vreg_s10b under the "B" PMIC on the CRD instead of modeling it as a
>   fixed regulator
> - order pinctrl nodes alphabetically
> - restore the drive-strength property for all pins to what bootfw sets it=
 to
> - disable bias on wlan-en pin on the CRD
> - remove stray newline
> - add the swctrl pins to the PMU node
>
> Changes in v4:
> - bind bluetooth pins on X13s in patch 3/3
> - only drop the regulator-always-on properties for vreg_s11b and vreg_s12=
b
>   and fold this change into patch 3/3
>
> Changes in v3:
> - move adding the bt-enable-gpios to the PMU on the CRD to patch 2/4
> - add a patch removing the regulator-always-on property from regulators
>   on X13s that no longer need it
>
> Changes in v2:
> - fix commit message in patch 1/3
> - drop drive-strength from the wlan enable pin function
> - drop the calibration variant property from the wifi node of the CRD
>
> ---
> Bartosz Golaszewski (6):
>       regulator: dt-bindings: qcom,qca6390-pmu: add more properties for w=
cn6855
>       power: sequencing: qcom-wcn: improve support for wcn6855
>       arm64: dts: qcom: sc8280xp-crd: model the PMU of the on-board wcn68=
55
>       arm64: dts: qcom: sc8280xp-crd: enable bluetooth
>       arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6=
855
>       arm64: dts: qcom: sm8450-hdk: model the PMU of the on-board wcn6855
>
>  .../bindings/regulator/qcom,qca6390-pmu.yaml       |  12 ++
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts          | 169 +++++++++++++++=
++++++
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     | 103 +++++++++++--
>  arch/arm64/boot/dts/qcom/sm8450-hdk.dts            | 157 +++++++++++++++=
++++
>  arch/arm64/boot/dts/qcom/sm8450.dtsi               |   2 +-
>  drivers/power/sequencing/pwrseq-qcom-wcn.c         | 101 +++++++++++-
>  6 files changed, 526 insertions(+), 18 deletions(-)
> ---
> base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
> change-id: 20240807-sc8280xp-pwrseq-7b6859d846c5
>
> Best regards,
> --
> Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>

It's been two weeks. If there are no objections to the DTS changes,
can the remainder of this series be picked up for v6.13?

Thanks,
Bartosz

