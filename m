Return-Path: <devicetree+bounces-24242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 594A580E720
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32B31F21C73
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9C15812F;
	Tue, 12 Dec 2023 09:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i/RA8czS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E910C7
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 01:14:12 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5d2d0661a8dso54882827b3.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 01:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702372451; x=1702977251; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=94mArPi0KBLNCW+9/5j6k94DKj0W9iwezw/gK4SeWNw=;
        b=i/RA8czSn8NHJ77rUq8fpNBebUWp3+qX1rj4dvxzlcCC66KYB2Zboda8GfdaTOPt1o
         MTJg6nPuvTng/SDyqIVjxeWX/I9jP4ASSEeF/D5fJuuEIl92NbFYWTNsJHKJHqD3l5Ot
         WEmNq2VzjlC5yDeMC/nP2fJEbz9ah3ULIDiPtDb1olKdDxu/f+M1h+hjrJWdhK96R2eU
         PbjB6/1er/zlVRvsMw+i+j61I63PDJRIBUb7HsE0yi7TViQ2ZvsXnXPirmLIZEyVbCR2
         AQ2IBIkq/d7G6ZhMB56kv3g1mCm8w8az2VAq85znHJN2WeCJ82otAyzEJz7Ey/YOIUtc
         6Fcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702372451; x=1702977251;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=94mArPi0KBLNCW+9/5j6k94DKj0W9iwezw/gK4SeWNw=;
        b=cFSO5ngE+hLMhNCFVOucFQLrJmer92KOnBR8i0E5yOOyAH43KIoFPLr8XkR3lm781A
         99/vCGTJwfps6Q4jQEMr/jbyzBOn25NXZIPQ+Zpxai8ty8IhX+z9eqVSMdsiYkQSBHbX
         lyPil+riPNj+A8AoaIXx0toht8USw1T6FY3hNqd21sgkM2gFoFhJK+zgUt+dzvlqxish
         MIKM7suB7lQC/et5BnGGb9SRQnDkGCNsFZrJ2RKXXDcq8OFJqHPNBreAS0yzmES7MGXh
         rJtFDa+rVWJO6moNoKq2RWWPIrz3K755J/5CHGDyoke2KYd2DYBkYzkuYieDsvXaDDHF
         SjFQ==
X-Gm-Message-State: AOJu0YzLvMmZMlCV4wMi6FbiNyZdl5WWJPi0YM61tkwcDWWvcWy3VZnK
	cTTc0IimYZIBXDUeRBdXC9Bo+6aKg0ulx8wCkpN8VQ==
X-Google-Smtp-Source: AGHT+IEM/V0yIgohqydrpyBc5XyPo5SnxiZzn3s8K+OkWsi4tAsIzwUabgxsCocaEqBDGw3AWP5HKXJFT+e/tKMQ+IQ=
X-Received: by 2002:a0d:c386:0:b0:5d7:1940:b386 with SMTP id
 f128-20020a0dc386000000b005d71940b386mr4641044ywd.82.1702372451507; Tue, 12
 Dec 2023 01:14:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org> <20231212-x1e80100-clock-controllers-v1-7-0de1af44dcb3@linaro.org>
In-Reply-To: <20231212-x1e80100-clock-controllers-v1-7-0de1af44dcb3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 12 Dec 2023 11:13:58 +0200
Message-ID: <CAA8EJpoaydf3Fqpo5baAihGS5X37LCytKuYP5EmQt75ibMmKmQ@mail.gmail.com>
Subject: Re: [PATCH 07/10] clk: qcom: Add dispcc clock driver for x1e80100
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, Rajendra Nayak <quic_rjendra@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Dec 2023 at 00:46, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
>
> Add the dispcc clock driver for x1e80100.
>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/clk/qcom/Kconfig           |   10 +
>  drivers/clk/qcom/Makefile          |    1 +
>  drivers/clk/qcom/dispcc-x1e80100.c | 1699 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 1710 insertions(+)

Reviewed-by: Dmitry Baryshov <dmitry.baryshov@linaro.org>

-- 
With best wishes
Dmitry

