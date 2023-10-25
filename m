Return-Path: <devicetree+bounces-11681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAED7D658B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:45:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 271171C20A81
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EB619470;
	Wed, 25 Oct 2023 08:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kSM011+W"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B9C1D52F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:45:36 +0000 (UTC)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F45F134
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:45:30 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d9a6399cf78so580132276.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223529; x=1698828329; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RUjEKPPK1HVvfm5iMA1jsGeiAQzbP3C1OGLLdP7j+F0=;
        b=kSM011+WAbhKhCRdz24MzwZyamjVKjC/cB3FztXBlYvS0d7bsbuzPYja3I9/Q09xm0
         gsF4aVwWcbkGNVnRqNkcamg7dVf/7LGH8turTSUXWcrDh5wzN7wiAEYtnpAIzsGMy4bD
         BMwY6gWhdDRicHXaA569SlHyTA55BxTqxWA+LtBT2QHi8x6mQAUKvHk7+pbnqk1hKZkv
         idwO3Iw0UCKwyULLyjvBKSH5zZhDcvI8aaT9PKb4NQoLOW3hVzXqmzzkpQ8HTCRjjkkv
         Eyc/rv4A1hGRti6z9yxJEsuCXHy/KOMZTq6GRsbc/dsuMU1WchD8OapOEKeedNoRaYR5
         djLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223529; x=1698828329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUjEKPPK1HVvfm5iMA1jsGeiAQzbP3C1OGLLdP7j+F0=;
        b=K20rZLbP3aNGiVj5obvPt+N+47l2sXzJT17qolwp24QtDjXlQKau/DOZY5Ua4eqOS8
         y8lI1u4aomns0zk8yVu508nH0U5a/ij/vOS8MYzSSObLmVGFXeJIr6OyQKUIaCb7J4Ka
         MfqWFpNgVaV8CYJneTVV/R2ZxIEgR/INScUhtHRz6grrSNXmknQ+IlIhbVlUD/yfO1FG
         G0SRSgELFDV8HmXgJfkKjo6dB2r8F0XkBco55rOl65ny+jvpPb9zgjVkvFwfY7Kr9rJ7
         LOgjXHLBI+71hIK2ZE1RBBn+xyz4tp0aU9G6DzKSSp0O7E6dReX+Z8+yIKYBiq5y1Ob2
         41Nw==
X-Gm-Message-State: AOJu0YzPrX1GkNhPMkc2UWRtcXUlroU0dQAgz6+WO0tJTuZXHm7XpBFU
	zlvXAQkf14wmLagZKB6ExlZMg0zzPS3EGub6dzIhjw==
X-Google-Smtp-Source: AGHT+IGyTbrxVs7VFxCmBF9leqPAvlEBqZar6fx6efgCVXxbDR6j2gqXzGwebhUh2fQozM72QqmvnBQQTeXly8PMoB8=
X-Received: by 2002:a25:7687:0:b0:d9c:28cb:2e54 with SMTP id
 r129-20020a257687000000b00d9c28cb2e54mr21029326ybc.18.1698223529452; Wed, 25
 Oct 2023 01:45:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:45:18 +0300
Message-ID: <CAA8EJprbfWZs+hofu4PhfdtYox96vhE3FFY1XK5vEds1dX213Q@mail.gmail.com>
Subject: Re: [PATCH 10/10] clk: qcom: rpmh: add clocks for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Taniya Das <quic_tdas@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:40, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add RPMH Clocks for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

