Return-Path: <devicetree+bounces-11672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E12757D6558
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81E822812A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E68201A599;
	Wed, 25 Oct 2023 08:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bq/z0A4i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AC71FCC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:38:59 +0000 (UTC)
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26863123
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:38:58 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-778a47bc09aso363735985a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223137; x=1698827937; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p+HrZtoWX4MGej1kjpZeux1yQTbKjE1+8I/SDf43PFI=;
        b=Bq/z0A4i6cXYzFRa/C4Ohea5ucTSdbw42mzdqEd2b3sC+GWDmGAiOCQY7rjbt3OvFI
         Mhw6bRcPNodDrHxfy9xTUOwIyVUJO6JgIPtQL6DwcnZORjtnWDqpYIZl+nDcIg+KMGY4
         tBhePpT2k3qP3qtYZ8Ok2gYKlMUuasjCXoJfzxK2iaNUjLghs0wzB2Js9+uqRH9Ufeji
         eqhjnJLRz7PNSg573xlSWbgI0sgo8UdYBIv8xh08QFgKqJAY0o8/xcLMZdMGutRpgi0S
         V5KOIgbA5jsU2r0mtHoB3NNfqd1TzsqBM7NADFnIN7XpVJcwEhr/2JnFpP8AtSFrLgHU
         /e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223137; x=1698827937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p+HrZtoWX4MGej1kjpZeux1yQTbKjE1+8I/SDf43PFI=;
        b=sbJfynSvg3FA3AAOOY3UOR7J/kUbV6WPy+uy3035BzhCmt56VLYMlmo6o0JcHfWXHq
         swpaGq7wV+qd3LVT/39lFcv5Mo71KR5mg7057Tb8c0yZ50AQAzqcGBSj6sf8ssjLKGMs
         RjFzCFVA13MNl577pCGSpfEn62pRu7NZ0YtbpQ122akv49uVa0Bm907lhtMwU/VSQ6pW
         32wNgNL5t9/GRhTnG1h3bEb311orMxuNFJAJ67H9dDatdPYC99gShkxF4R/x6mtXmQJT
         S55DeSj2MN3Z6rwiLPo2NHb181uDZ1faDGsDBbRPZBM77PjKOH8TdTlXyKI3RoPob0Vm
         HKbA==
X-Gm-Message-State: AOJu0YwS4hhmEqI67rZ8Sl+3b7LLYma3mb3w5hmAhrRHIuAJ84YtaUBx
	AZYQ3PiH/zWnkspVyIKpGgA9ijdpPVvOzr2G7i7opg==
X-Google-Smtp-Source: AGHT+IFpttfLKc+8yhH0Vs/Ju8O18uR5VvebR6HGULWTGLk7A35/Y9mGhceIgeo2cuprDThVebXDaO9qppJzZ6aqMls=
X-Received: by 2002:a05:620a:2590:b0:775:79d6:9e57 with SMTP id
 x16-20020a05620a259000b0077579d69e57mr14950031qko.61.1698223137246; Wed, 25
 Oct 2023 01:38:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-7-c89b59594caf@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-7-c89b59594caf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:38:46 +0300
Message-ID: <CAA8EJppurAdn=sX8YvZ=x+6dq6GHGbE_kp5bVRS69NiYnNGeiw@mail.gmail.com>
Subject: Re: [PATCH 07/10] clk: qcom: add the SM8650 TCSR Clock Controller driver
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Taniya Das <quic_tdas@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:36, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add TCSR Clock Controller support for SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/clk/qcom/Kconfig         |   7 ++
>  drivers/clk/qcom/Makefile        |   1 +
>  drivers/clk/qcom/tcsrcc-sm8650.c | 192 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 200 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

