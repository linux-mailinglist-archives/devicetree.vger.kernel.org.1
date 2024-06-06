Return-Path: <devicetree+bounces-73341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0234A8FF13F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 17:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B6161F25D71
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF99198A16;
	Thu,  6 Jun 2024 15:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ONLkwG6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAD01E861
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 15:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717689100; cv=none; b=Kxj2O6qvFl46EiaFC1vMa/uariVdBIdBkFJs+mHnU38kyDBAbnLQm6L6Mqhwpd7wqc7JWvg3tAnZ+NgKGKK7su+tl5bx221FsK81BggGE711Sv5tzb4f8VTuFipAGfBP3v4WFUcCPuIl8h+YpvoZkw3QKG2P5oQthZ9YD1cFgQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717689100; c=relaxed/simple;
	bh=vbFi6Ir0YQXvJY5W+Cjh8wTHOqNP+0lx+B5Yq8nTAaY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o3wVgS06t1BwXhCZORRkECTbw4KOKL9pkDedFZp/zvB9ZaNxiZZasW1rrOtJaf8CfMzcg6AXv7b0dJCn9CEXVw2o7zORL+OiTQ/J5qJud8+DSLeWl/9VkWcFeLdaH72WkQ6364Y8xZCiZiRfWf4oMuXcCelSRRA20ta5fDGdMsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ONLkwG6D; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6ad8243dba8so5139196d6.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 08:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717689096; x=1718293896; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTfArhgeqr5paLlpWgE1fa5MPN4uTVnEfjUxQhkMxkY=;
        b=ONLkwG6DieFBT3ApIDEgy5Fmp9pv7s+g9+CVGTIeMrA4HDvrbcofRzo+ynP3PheVgP
         X+vQUyluxGFtx/hZpMhC3tuEbrgDBiplEKjSiqDDxnGk0tjdz+Vqgt9zTIsASK01sJCU
         PReT1hB1f5UBLAOI/U2tD1epT+TcSWrw2t8q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717689097; x=1718293897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YTfArhgeqr5paLlpWgE1fa5MPN4uTVnEfjUxQhkMxkY=;
        b=R7BiU2FaNjz60RrKwUlb1ZH/YisnsEFNZ1qaCpK+1PYczDuktB+YV3jnWOqrQ7Jl8m
         mFGTRz2JGm211cMEAjZAjUzqv4il42TUD7Xv3/Dwzbk13Wp1wadapuOT2HvES0ys6eht
         3duM7qx2FcK+E7+HmNPh+HVMRThEHzI5H3UyDIkh2dWLf7vRpWI0dRN8h/S6QiiHLrR6
         ge07FAbXTe4tWzCN3xRt9/GmfqhXZ7qPIK1TNfXVHQsmtjVsjV4DQJxkaRggBLZiQmw5
         fmumf/2OkPIUEVm6olEQClNp6Nv1jfHF9PZ5zI2bB0Ey3jHgdlK3y6gf9Sq/HX03zZCL
         Yaow==
X-Forwarded-Encrypted: i=1; AJvYcCXdcOXo0KY7SF/Yf/aMS5OWMoxlGAtvyKWysGc4REvMhh/0KWSicOAPJ7H0Z17qNwu6bprEfD8N2gI0A7AawwqfCy++F7bi7obvMg==
X-Gm-Message-State: AOJu0YxhTWQKlxkp+nNDMhQFcGSo0HNMoY9gyjliIkAS9o2Z1XPt/YuJ
	nGMyCu/myZEMhqLawKl3wC0q0CbYXz/jiGlT3b11IRp6Y8MRjBRLsPm51zZx/6UxPghtFqgiux8
	=
X-Google-Smtp-Source: AGHT+IFemDtjk5EE4CGBo586SiBo7/95Z1TF5Z+54oYj+2x0vHjGpKvUW69iYzlmIZ6knm75CQbDIg==
X-Received: by 2002:a05:6214:568f:b0:6ad:8040:e8d4 with SMTP id 6a1803df08f44-6b02bf857ffmr54104796d6.33.1717689096586;
        Thu, 06 Jun 2024 08:51:36 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b05920447esm436566d6.118.2024.06.06.08.51.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 08:51:36 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-44024f5271dso366461cf.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 08:51:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXCGg0gdJqEr7zD7E9ptuFFt37X29wmCl9S3T92QWAWTaYXIeYT/pAPUncnW1JyRPGSv4kwji1+XT7aSWB/iyk0KVkt+Rklf+QKiA==
X-Received: by 2002:a05:622a:4d04:b0:43e:cb4:1d10 with SMTP id
 d75a77b69052e-44037247b8fmr3980461cf.14.1717689094600; Thu, 06 Jun 2024
 08:51:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240604214233.3551692-1-swboyd@chromium.org> <20240604214233.3551692-4-swboyd@chromium.org>
In-Reply-To: <20240604214233.3551692-4-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2024 08:51:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U9SX20Ckaa2VqwXk=jqjYZvdMMqzXd1jwucPuPXpKkSw@mail.gmail.com>
Message-ID: <CAD=FV=U9SX20Ckaa2VqwXk=jqjYZvdMMqzXd1jwucPuPXpKkSw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180-trogdor: Make
 clamshell/detachable fragments
To: Stephen Boyd <swboyd@chromium.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	patches@lists.linux.dev, cros-qcom-dts-watchers@chromium.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Pin-yen Lin <treapking@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 4, 2024 at 2:42=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> w=
rote:
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
>  .../boot/dts/qcom/sc7180-trogdor-clamshell.dtsi     |  9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi |  5 +----
>  .../boot/dts/qcom/sc7180-trogdor-detachable.dtsi    | 13 +++++++++++++
>  .../boot/dts/qcom/sc7180-trogdor-homestar.dtsi      |  9 +--------
>  .../boot/dts/qcom/sc7180-trogdor-kingoftown.dts     |  2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi  |  3 +--
>  .../arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  3 +--
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi |  3 +--
>  .../boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi |  7 +------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts      |  3 +--
>  .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi   |  5 +----
>  11 files changed, 31 insertions(+), 31 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-clamshell.dts=
i
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-detachable.dt=
si

Reviewed-by: Douglas Anderson <dianders@chromium.org>

