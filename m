Return-Path: <devicetree+bounces-23784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1989780C4F7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A461F2060D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A24219E5;
	Mon, 11 Dec 2023 09:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mSClpMA8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79409E5
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:43:33 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5d77a1163faso32682947b3.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702287812; x=1702892612; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lz/5LWYQ9vCAAHEW2rZf7mB1bPXiSim9HfJVePMJeJA=;
        b=mSClpMA8GLjez7TY1LH9D6wNOisuedNwz0pmO2WNsnFGX7kJXZlbMoSVwe2B+zKUqA
         PSeiRQM2YnoNR28UPoFh5JmPHpF+HmJp7St3FNc0Ka1ZvIpdBLPgY6fYMvZe1SEc8Ul0
         x6ZUypYkF/3+Ojk73VPrfQxgKbBA6pjnHr9oPipmrTbryFMw3Ah9UzvEurx3feyeDG5L
         uPJ/LLFbBp/Z9+A61iW2o4NJkzwVgRiOs+2/C5gEWzOABoutJXeWgpmrAXrX6upcUZVx
         BWUnygqcHdkTneSZEtGv/nyfK8lcQKJQnTItxcLDJvKUCZev1+zXGBdE3/SfOdo0WmOw
         97dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702287812; x=1702892612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lz/5LWYQ9vCAAHEW2rZf7mB1bPXiSim9HfJVePMJeJA=;
        b=W0Sb1y+s7zJSV5aIrTCjhlcIoR1tGlggqesyY2ZUX/8HmTNJB+X7DrNkQLcQmAHR34
         77SUCED4FF4jtE5eMQknMaNptw3SbbDr3hVbSR21mtJLZI6cPzTFl2KRAcVF+l+T3QMF
         icrW+pJWrp7riyh9uGP0AzuAQR4nrXF2Zn37bSvCVudsIZqvbg6BmODzHrYxi5lCUgfY
         dlK1UGDSXrk0VZQLzBWHZoiy1VKHZCLaJUCnr9/C60sHVL+8Kk1d12nANmdnjzj/Jw8o
         39+u3a8w5UlKYgm04PQjhHQTt+8PTTmaWbHowSH+dV78BSH7dt0fwbbK7o9wCFwyGSJ/
         tQrg==
X-Gm-Message-State: AOJu0Yw7k38LuB5nYsWQ/sDS9xJ1VREAui4wcvtOYtBEMRtkt4bLtYBW
	DECIY3fh/+qs7NR1FLn+ffAVPUZPQP7sH2OKkkxZ+A==
X-Google-Smtp-Source: AGHT+IEKi4Ku7IRu6pWDKJCzVJ/s4jXBemHFpwX7Qi6OsSaHMOkdXf7oYlo/rHGhVxs3rgPskGaX5yCo9la8aH1bJJo=
X-Received: by 2002:a81:c206:0:b0:5de:9003:7737 with SMTP id
 z6-20020a81c206000000b005de90037737mr2480793ywc.50.1702287812712; Mon, 11 Dec
 2023 01:43:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209215601.3543895-1-dmitry.baryshkov@linaro.org>
 <20231209215601.3543895-3-dmitry.baryshkov@linaro.org> <48a7c36e-2fa2-4be6-970d-a4a301fdf8f7@linaro.org>
In-Reply-To: <48a7c36e-2fa2-4be6-970d-a4a301fdf8f7@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Dec 2023 11:43:21 +0200
Message-ID: <CAA8EJpqw+hC05QP1mWkA-SsKEehjp7ipb_HzUW2nyWjqZ8WkXQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] soc: qcom: stats: support SM8150 platform
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 11 Dec 2023 at 11:11, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 9.12.2023 22:56, Dmitry Baryshkov wrote:
> > On SM8150 the RPMh stats have 3 data records, but no DDR sleep stats,
> > which demands platform-specific compatible and data.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> I don't think it makes sense considering the driver could detect the
> presence (or possibility of presence) of DDR stats at runtime.

No, it can not really. We have safety nets for checking the offset
value and then checking the magic number. But I'd prefer to be
explicit here. It's not that the 'invalid' data at this offset is 0 or
~0.
So, I'd prefer to be explicit here.

Actually we probably should have used SoC compat entries from the
beginning, even if looks ridiculous for such small thing.

-- 
With best wishes
Dmitry

