Return-Path: <devicetree+bounces-31888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F00A482CEE1
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 23:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26C171C20F7B
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 22:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280E81643A;
	Sat, 13 Jan 2024 22:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d4cwgsz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EB418040
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 22:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ddeec84e35so2722447a34.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 14:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705184008; x=1705788808; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j1Djjr9EgpwvGAr/kfnxFV8R92JxXgzDjF+r6MUvnNU=;
        b=d4cwgsz6tQQZwz5nn/QNHq11MYHJL2yC0JrLvZWKwpv9Tqw6vb35VdsfbjAHMedzSe
         EMozIk0iGVMuKtMF4jrj46ZVhJkNuPUdUoyvkUsX9POvBb9l0zn+0q/zVU4L1C8r/VwV
         mPHsXyUoW9v/D4sbqU4C8usFK6dYGS1T2CISGsSP7SB0oVNOPs/v3iVy7qRswRagkStf
         IWEqz4+FMF9ek5P9+7HD+W8dDdY0outfnbdFIC2Nd2uELhkvVVKTXCw9QieG/e/ZqxZV
         rRr9RpHDKHnEWeCBG89Gf37dMqMgEslqDrLU1HRUMDuWAhSU1XKZpyay5iDk36HkL46E
         grVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705184008; x=1705788808;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1Djjr9EgpwvGAr/kfnxFV8R92JxXgzDjF+r6MUvnNU=;
        b=aVeCxKKntYFR1Q4WZIancMsGo7AhYKNPZ8dZycuRWF/sNA5gUi1fXOcRx78C20drWr
         dc9wrHVWiahQxTDsnn7NlaM7zHDV+t9PFVsGTCr56PmayIk0s3GRVlovQ23mYjIBAAJM
         p/WDRycLhaFiS6pWGYG7FaS4aZq5tpFxLtNpBcKpJeGiYSU+YsC8fmGfROgWXwkIP19E
         mPzVipnpLa+k6/Qq5WRsGcAoVjOYsqhjMOl/WTsQc5cx6IoXu3r40qpslr1VEvXowG5V
         gSFYb20wFJ7pfP4koT6hmd58IyfHkALozIVcBy65Nkq0E4fPVS7ySN0YfXAZYqTMKpFV
         hL5A==
X-Gm-Message-State: AOJu0Yw3WQmyC1pGiS7PBb2aySgo7t4k0LGghi4E3FINU4qpE+v0WZLX
	XewTQD7uDP5mmdZmQuBWIbqQ7aojwCTMOCS/KIM83/4whjBdLQ==
X-Google-Smtp-Source: AGHT+IF5FDbc6rOr8Ez7dqKItQZRQ1eAoiP8GdY3DqnBwszcshmYBghcKmofrDm5fwZPAmpt93tM1KxQPwVGL+wvKZw=
X-Received: by 2002:a05:6808:11ce:b0:3bb:cdc1:425d with SMTP id
 p14-20020a05680811ce00b003bbcdc1425dmr2264488oiv.115.1705184008575; Sat, 13
 Jan 2024 14:13:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org> <20230717-topic-branch_aon_cleanup-v6-2-46d136a4e8d0@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v6-2-46d136a4e8d0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 14 Jan 2024 00:13:17 +0200
Message-ID: <CAA8EJpq2g=GaEyPkqbmr44hTHfuD67Ko_65sU75XKu27uJUTQA@mail.gmail.com>
Subject: Re: [PATCH v6 02/12] clk: qcom: Use qcom_branch_set_clk_en()
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 13 Jan 2024 at 16:51, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Instead of magically poking at the bit0 of branch clocks' CBCR, use
> the newly introduced helper.
>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/clk/qcom/camcc-sc8280xp.c     |  6 ++----
>  drivers/clk/qcom/camcc-sm8550.c       | 10 +++-------
>  drivers/clk/qcom/dispcc-qcm2290.c     |  4 ++--
>  drivers/clk/qcom/dispcc-sc7280.c      |  7 ++-----
>  drivers/clk/qcom/dispcc-sc8280xp.c    |  4 ++--
>  drivers/clk/qcom/dispcc-sm6115.c      |  4 ++--
>  drivers/clk/qcom/dispcc-sm8250.c      |  4 ++--
>  drivers/clk/qcom/dispcc-sm8450.c      |  7 ++-----
>  drivers/clk/qcom/dispcc-sm8550.c      |  7 ++-----
>  drivers/clk/qcom/dispcc-sm8650.c      |  4 ++--
>  drivers/clk/qcom/gcc-sa8775p.c        | 25 ++++++++++---------------
>  drivers/clk/qcom/gcc-sc7180.c         | 22 +++++++++-------------
>  drivers/clk/qcom/gcc-sc7280.c         | 20 ++++++++------------
>  drivers/clk/qcom/gcc-sc8180x.c        | 28 +++++++++++-----------------
>  drivers/clk/qcom/gcc-sc8280xp.c       | 25 ++++++++++---------------
>  drivers/clk/qcom/gcc-sdx55.c          | 12 ++++--------
>  drivers/clk/qcom/gcc-sdx65.c          | 13 +++++--------
>  drivers/clk/qcom/gcc-sdx75.c          | 10 +++-------
>  drivers/clk/qcom/gcc-sm4450.c         | 28 +++++++++-------------------
>  drivers/clk/qcom/gcc-sm6375.c         | 11 ++++-------
>  drivers/clk/qcom/gcc-sm7150.c         | 23 +++++++++--------------
>  drivers/clk/qcom/gcc-sm8250.c         | 19 +++++++------------
>  drivers/clk/qcom/gcc-sm8350.c         | 20 ++++++++------------
>  drivers/clk/qcom/gcc-sm8450.c         | 21 ++++++++-------------
>  drivers/clk/qcom/gcc-sm8550.c         | 21 ++++++++-------------
>  drivers/clk/qcom/gcc-sm8650.c         | 16 ++++++++--------
>  drivers/clk/qcom/gcc-x1e80100.c       | 16 ++++++++--------
>  drivers/clk/qcom/gpucc-sc7280.c       |  9 +++------
>  drivers/clk/qcom/gpucc-sc8280xp.c     |  9 +++------
>  drivers/clk/qcom/gpucc-sm8550.c       | 10 +++-------
>  drivers/clk/qcom/lpasscorecc-sc7180.c |  7 ++-----
>  drivers/clk/qcom/videocc-sm8250.c     |  6 +++---
>  drivers/clk/qcom/videocc-sm8350.c     | 10 +++-------
>  drivers/clk/qcom/videocc-sm8450.c     | 13 ++++---------
>  drivers/clk/qcom/videocc-sm8550.c     | 13 ++++---------
>  35 files changed, 175 insertions(+), 289 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

