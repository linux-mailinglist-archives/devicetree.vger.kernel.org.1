Return-Path: <devicetree+bounces-40365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04085044E
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 12:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DB6B2869A0
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 11:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7072C3D551;
	Sat, 10 Feb 2024 11:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g65cUGgn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC63D3D0A0
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 11:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707566009; cv=none; b=fi41wwedZjkLc77kGGSeXOy9OhkGMN4f8rZCSX+AHkOo2QRrXBGFueOlqYRUWAAZisjb/k8uGLNYGbQh4q9u6sCmhuDWKIMbB+3lyXXKXa9JbTCk+Af5s5jRguvUw6jC8cZvfxO46SSXdObms25HJEKijNVNwbkaoxdHurcSDko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707566009; c=relaxed/simple;
	bh=9bQZqD23DARa5dmQXwWYHcnI+MX2yoHshObqALvEMWE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bdTIAHEUYWS56XT/eVIWNjUTz+WIqsRRallNHz/hD3JTQqZ+9v4Q94mHAo5rKyTHpUJXEtY9t564Yn2OeKs97AjLoaoMvmcYoha11jh3oCHeZVdZHmbM/NMzW+LbBkcWCxl14N2LLLy7Mc8UeIuTuS+miL77SCd1vCF0EnhblJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g65cUGgn; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dc6c0dc50dcso1514968276.2
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707566007; x=1708170807; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XWXgSyVP+N1LKifAWR9rUMalj+Xn0R6HoByIzflb0PQ=;
        b=g65cUGgnt8WSSlUdeP2L/iLZFyWEir3GrpronbNIwF2WoY/SLTOpxO0Rd+bMgxSzrs
         o7JD+hYTFmmbKaWA3icuqL8Ge4/e7n8IEw4ixeZZJutGxDeuWP4juQAQvHcRkZkAK8WM
         cnFhJFcwSUgxj7S6hrRFZq0JfMEYCC8wasIY1ay+1DQmSLL3Z/4k5vRsrvK0s0C9Pf3J
         guX6XcSx+dXj/b0F+kAN+FsYs4L44Hz3NUWHS3Q50LJXitq3s4SqlsfmHj1PsnamsoCT
         e/d3m8Hs6Kp5unzNtCArX8Z7yTbwR8p8TLkCabenR/ZnafW9SZXRuugUwCwXHAL+/aRw
         P0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707566007; x=1708170807;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XWXgSyVP+N1LKifAWR9rUMalj+Xn0R6HoByIzflb0PQ=;
        b=JSSbbYHZG5lqxdtInKZYgdyugoGQy2omlBdM+co2mP5F1MSJ+ycj3whwI5ZhacpKvt
         yogujnnYKfup3uSd+7GjnR6FmzB5kTL6UYzk36OTJ+dxxQKHwnhqQhoyU9tGm6dJANa1
         9tU0QdrBzMvNDYs4EQAJeZHVIiyGH8OE6lQhMF/bi3eOzuYfnI75wokA4GOBkGGdgsEy
         Q8ho0fvdRVeTMjhJBfKgrdMaeVrUT2Svy32k7bEQIclQPj1eO0peD0KlLTw0znU9u9/M
         UMQgmaqiZcD9xP5K6s9cOkUjCc/i5vI1O/0Vd7bpFKQF5zqR90n0zQlW3OXRUMEUWB+C
         8DYg==
X-Gm-Message-State: AOJu0YwQRHMXv6XlYXNbuywt3o6giGkNCiLgGJBe1lG9TT6BV/S3jLEa
	1B1SNa6sXIztv9fLNpF03trvXvXv6FLZkNZO8HZ+mprrf0o7ChRfz+RhBqDlca3U18ak2uRxms8
	hD3knas96msyuuzaJ17gVndmM4e3W2eMZp2gnxQ==
X-Google-Smtp-Source: AGHT+IFMW08q299IizgKGdLgUOVbSLepSnMhrSOl8xiICHLdby/JMn0zC+h9YOLRZctZ72Bz13hmpDHWTJ95DQfia/Y=
X-Received: by 2002:a25:8686:0:b0:dc7:47b7:6d69 with SMTP id
 z6-20020a258686000000b00dc747b76d69mr1199763ybk.60.1707566006887; Sat, 10 Feb
 2024 03:53:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-22-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-22-swboyd@chromium.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 10 Feb 2024 13:53:16 +0200
Message-ID: <CAA8EJprROcMa5U0Q8fMk_aJpk6ecMoDKhtD31CCss-bHu2S+7Q@mail.gmail.com>
Subject: Re: [PATCH 21/22] arm64: dts: qcom: sc7180-trogdor: Make
 clamshell/detachable fragments
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Feb 2024 at 09:17, Stephen Boyd <swboyd@chromium.org> wrote:
>
> At a high-level, detachable Trogdors (sometimes known as Strongbads)
> don't have a cros_ec keyboard, while all clamshell Trogdors (only known
> as Trogdors) always have a cros_ec keyboard. Looking closer though, all
> clamshells have a USB type-A connector and a hardwired USB camera. And
> all detachables replace the USB camera with a MIPI based one and swap
> the USB type-a connector for the detachable keyboard pogo pins.
>
> Split the detachable and clamshell bits into different files so we can
> describe these differences in one place instead of in each board that
> includes sc7180-trogdor.dtsi. For now this is just the keyboard part,
> but eventually this will include the type-a port and the pogo pins.
>
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../boot/dts/qcom/sc7180-trogdor-clamshell.dtsi      |  9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  5 +----
>  .../boot/dts/qcom/sc7180-trogdor-detachable.dtsi     | 12 ++++++++++++
>  .../arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi |  7 +------
>  .../boot/dts/qcom/sc7180-trogdor-kingoftown.dts      |  2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  3 +--
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  2 +-
>  .../boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi  |  7 +------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts       |  2 +-
>  .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi    |  5 +----
>  11 files changed, 30 insertions(+), 26 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dtsi
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

