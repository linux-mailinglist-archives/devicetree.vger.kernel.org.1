Return-Path: <devicetree+bounces-14227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 522A57E2F2E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FFCA1C2074C
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D332EAE4;
	Mon,  6 Nov 2023 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TRtocQ23"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D31F5247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:50:32 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B738ED7A
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:50:30 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c5071165d5so66623441fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307429; x=1699912229; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Po0baWUeZiXrEfsJEnTtgJ907NjsZipDGSvYn9f7jW8=;
        b=TRtocQ234gWAZq3PTgm4+9O3T5fih1V+NqJhMHFhWAoYu4xGwVwXg1LN0ZECrtKxCF
         a/d5SMN8n4YXYqYNmKQYymm2Bk7d3Ns/najA63Ny8zu1PdZ5i2hUbnNIdONyifyuL5B8
         hSb3PMqZZjMLVkXSOzZKOx8hCejbVqnDYF/00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307429; x=1699912229;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Po0baWUeZiXrEfsJEnTtgJ907NjsZipDGSvYn9f7jW8=;
        b=HyUEg125XGXVybN+hRF4OfNT0EFVxSDjo2YN36yLkscaE82Bvv73Ts7UD3biQ4DnIS
         Xl3gEyMjQotQ89THtVsf6ViLhJnFqyXzoqu7glNDkaYARwco1p7Q3anKv0of/P1fNuex
         erUv7GlhKl87PkyazRsLlPj7wuP9ij/Z5v93IYQy2UAUAD5vvqiMNom7XaKCAL4u/PSd
         TGcqzdM2aUAtqtMRYeqfCq50jWYXr7osvVNPRo7DUap8xd/6YhSFWtMCUPz+HF1HM63J
         cexMb9h90eD8a2To4DZIbLdDaiQCHLG2ktMxwrTamqHHl26EFGJuCDw06301lhJaIMuH
         M8RQ==
X-Gm-Message-State: AOJu0Yx/CoEwa6f3wh0hPTlIhXrTV+zvsfxymWyWRj1gGbdh7nqEhfgp
	mSlLt83DTpPmSd8rUi6O4Cj/XkOhg7OPAm3KozttUw==
X-Google-Smtp-Source: AGHT+IFIMysEALHhZCYIuAeRzHTWg4/eThhbNgVFU1BxyT+5HSLRRz+uRWCoRmFfu6lwHDY82ry+or3PNN915oiLWc8=
X-Received: by 2002:a05:651c:1208:b0:2c5:1a40:f26a with SMTP id
 i8-20020a05651c120800b002c51a40f26amr23481179lja.13.1699307428851; Mon, 06
 Nov 2023 13:50:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:50:28 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.4.I23d0aa6c8f1fec5c26ad9b3c610df6f4c5392850@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.4.I23d0aa6c8f1fec5c26ad9b3c610df6f4c5392850@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:50:28 -0800
Message-ID: <CAE-0n51twrV24BE9aBNA8rA4y4J-Dpfh2ZnNMXdZEth-HGvbqA@mail.gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: qcom: sm8150: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:30)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: b094c8f8dd2a ("arm64: dts: qcom: sm8150: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

