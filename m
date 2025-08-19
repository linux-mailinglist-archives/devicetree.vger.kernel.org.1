Return-Path: <devicetree+bounces-206385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B18CEB2C3A3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 860431889AEC
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745D03043C8;
	Tue, 19 Aug 2025 12:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLwnu4UB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF62C11F8
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755606467; cv=none; b=aWCIlv4laKCSmw66LvtBtnCLRsg0TMIvKVpK6P3kxjRpYW1SlRb2zadRJp0TQTQqq9v5C5A+rUmn8xK9E0o2V6zGC2yEIjoJVJ1bjq5E9GSGwpC+jEPrWh6DqapbcB4CDs2uETTOVKduoDbVu6G3ykc8iDjfYey2htWYBAMTNqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755606467; c=relaxed/simple;
	bh=Nv1pjUoOXSZoynilhAmAiRkhImajQkD3cwyCqkQSFdg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nzhQwiAHv4LDo39MT8DnxxCUpbaXBFZo5EcEKxqtCHq+TqHKUATjtM9XPymR2RbXjigX+QnynZhipH7H53msaXcbYEQUb6j2WNzubOZh1lUrGIdgamfKAw0VEDQBrxamAbhO0LFuAQAlBtVpoVjifM6XxTxXKhK5u9twdWriAdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLwnu4UB; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e934b5476a0so2017086276.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755606464; x=1756211264; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TQJ9/fQYlFZB7BHFOxhE5rqON71LQpmFE+5hRcesI34=;
        b=XLwnu4UB/tjlTYDfWQlmTs5F64e8gESNq+mtrDvQ+/6D3AoAunnxWkOh5tnSBkHbyH
         +polz83DIAOnhlT8dduYky8acG83SSPNGzopy1SGBjqSzcPt9sDpYAHEjqsj1pXrFOC3
         GT67M11579NCcx7q328g0NZNQNEAzVj27xYmOtSwfbVlU6CnbBHyebP0lgBLV27Civv7
         Lkg5+dLhPP6s6k52KCZ6RbtozRp1BideOEClV158dVScJrR1ScFBfJJmcHFf/IpS3CYN
         xkIhjc51yoAVfORcsAbblZQCX23om4f48f+Fpw6O7xVPdK6/aguRBIXoLTCt+PK9ZUdu
         1IFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755606464; x=1756211264;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TQJ9/fQYlFZB7BHFOxhE5rqON71LQpmFE+5hRcesI34=;
        b=sbZcQt5JIQ5mPYCLS82sqoFxarA5QEVW6Fb4+0AzaVaex/o9B/SRbQwlyRLFSUzDJ1
         RCAimPWrdZA2incMlPzFdWUEYjnUp1nOCeLSE+WpSDvWX7ri/9Nnj6GxkfeANs6FKSXH
         gzNMyshR88ieHDrDljx4c/mh0Ml+NDg+ywhNiAOCXtP8tmiXvg1ULb/0lDFvmh/pD/w6
         piQD4dXDwsyXu7ng3JWHHnxozA2W9juIyrtY7lusQHXfqE1RMgV71uK4nhP18Q/pcV8I
         Av0MlXzRDNU9okmu2lksRUbLXFjXkB6dRv6fVJUeblPabm50J+fm5CEJG/ALxWt3OkV9
         Lr4A==
X-Forwarded-Encrypted: i=1; AJvYcCVeWgNUX9cHyJmtuORKAe4ZHUkg7FbLN4Ls0CWru7aWnDV3Frh093IqrlDqsDvviAoNxx716JB1Omwi@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ3IbaKrRpttaq3+aDTtry5Z3FuAh0IlRXRZY7vSty1vSFWnFd
	1gnB/dpDUNMHi9q9ki9W2WIu7WSibq096aE0kri1kAtJjuVaLYyozd/7uoW+0V1pDBJlek1xIcp
	odSSc0gp0fIm3aynlrIExcOwRQYqkJOSbky/M60Vu+Q==
X-Gm-Gg: ASbGncvQ2URqMtKLUpjD12yJtAabHoLxR/tcqt3tzL0AbNnXwPPX7Z/HF7toW1VgL16
	Rkkrcmf0vR8s/tzYKhb9pNXZ+/oAyej/P4x4AiBgkgiH5FrP7N00wrhK5IKviSXkAM8McNPjEVk
	INae07/vNXfFaJuSyMu6eqRUZG6I8jyxm1Jr31B8rVaTS7Lcf66ngJ7knj/VmRXtJIwIW52ZgXj
	/6Q6BPzDSh2VxDvWQ==
X-Google-Smtp-Source: AGHT+IFRBAMqbjVrBOTdcqCFqxd0nH4dT+3B6E2uJUNFB6x6KANXkZyugb9RUsQkwMq/iR7D246ApID8/zxfeOWdOJ0=
X-Received: by 2002:a05:690c:688c:b0:71a:1234:3529 with SMTP id
 00721157ae682-71f9d532028mr22641667b3.21.1755606463949; Tue, 19 Aug 2025
 05:27:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250728-topic-gpucc_power_plumbing-v1-0-09c2480fe3e6@oss.qualcomm.com>
In-Reply-To: <20250728-topic-gpucc_power_plumbing-v1-0-09c2480fe3e6@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 19 Aug 2025 14:27:08 +0200
X-Gm-Features: Ac12FXwryiFxmL3QF8klQ7lK3nu4VpQFZS0iCSqAffd276Bc50rHoj93F3N9QSM
Message-ID: <CAPDyKFqOBJxnNWWQvrFLy=w2FWb9bh0EvQ4_3d3zRBaDMWF03w@mail.gmail.com>
Subject: Re: [RFC PATCH 00/24] GPU_CC power requirements reality check
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Douglas Anderson <dianders@chromium.org>, 
	Vinod Koul <vkoul@kernel.org>, Richard Acayan <mailingradian@gmail.com>, 
	Andy Gross <andy.gross@linaro.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Luca Weiss <luca.weiss@fairphone.com>, Jonathan Marek <jonathan@marek.ca>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	Akhil P Oommen <akhilpo@oss.qualcomm.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Jul 2025 at 18:16, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> In an effort parallel to [1], the GPU clock controller requires more
> than 0/1 power domains to function properly.
> Describe these dependencies to ensure the hardware can always power on
> safely.
>
> Patches 1 & 2 are separate (but related) fixes,  which need to be
> merged before the DT change for SC8280XP.
>
> Posting as RFC since I only got to test it on SC8280XP(-crd).
>
> [1] https://lore.kernel.org/all/20250530-videocc-pll-multi-pd-voting-v5-0-02303b3a582d@quicinc.com/
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

This doesn't apply, as I have just queued up a series from Dmitry [1]
that requires this to be re-based on top of my next branch. Please
submit a new version.

Kind regards
Uffe

[1]
https://lore.kernel.org/all/20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com/


> ---
> Konrad Dybcio (24):
>       dt-bindings: power: qcom,rpmpd: Add SC8280XP_MXC_AO
>       pmdomain: qcom: rpmhpd: Add MXC to SC8280XP
>       dt-bindings: clock: qcom,gpucc: Merge in sm8450-gpucc.yaml
>       dt-bindings: clock: qcom,gpucc: Describe actual power domain plumbing
>       dt-bindings: clock: qcom,gpucc: Sort out SA8540P constraints
>       arm64: dts: qcom: qcs8300: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sa8540p: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sa8775p: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sar2130p: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sc7180: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sc7280: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sc8180x: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sc8280xp: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sdm670: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sdm845: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm4450: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm6350: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8150: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8250: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8350: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8450: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8550: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: sm8650: Describe GPU_CC power plumbing requirements
>       arm64: dts: qcom: x1e80100: Describe GPU_CC power plumbing requirements
>
>  .../devicetree/bindings/clock/qcom,gpucc.yaml      | 155 ++++++++++++++++++---
>  .../bindings/clock/qcom,sm8450-gpucc.yaml          |  75 ----------
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi              |   6 +
>  arch/arm64/boot/dts/qcom/sa8155p.dtsi              |   6 +
>  arch/arm64/boot/dts/qcom/sa8540p.dtsi              |   6 +-
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi              |   5 +
>  arch/arm64/boot/dts/qcom/sar2130p.dtsi             |   5 +
>  arch/arm64/boot/dts/qcom/sc7180.dtsi               |   5 +
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |   5 +
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi              |   5 +
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |   6 +-
>  arch/arm64/boot/dts/qcom/sdm670.dtsi               |   4 +
>  arch/arm64/boot/dts/qcom/sdm845.dtsi               |   4 +
>  arch/arm64/boot/dts/qcom/sm4450.dtsi               |   4 +
>  arch/arm64/boot/dts/qcom/sm6350.dtsi               |   4 +
>  arch/arm64/boot/dts/qcom/sm8150.dtsi               |   4 +
>  arch/arm64/boot/dts/qcom/sm8250.dtsi               |   5 +
>  arch/arm64/boot/dts/qcom/sm8350.dtsi               |   6 +
>  arch/arm64/boot/dts/qcom/sm8450.dtsi               |   6 +
>  arch/arm64/boot/dts/qcom/sm8550.dtsi               |   6 +
>  arch/arm64/boot/dts/qcom/sm8650.dtsi               |   5 +
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi             |   6 +
>  drivers/pmdomain/qcom/rpmhpd.c                     |   4 +
>  include/dt-bindings/power/qcom-rpmpd.h             |   1 +
>  24 files changed, 240 insertions(+), 98 deletions(-)
> ---
> base-commit: 0b90c3b6d76ea512dc3dac8fb30215e175b0019a
> change-id: 20250728-topic-gpucc_power_plumbing-646275aec2cb
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>

