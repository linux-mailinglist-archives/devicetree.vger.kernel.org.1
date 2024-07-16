Return-Path: <devicetree+bounces-86231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C4933383
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 23:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C54B1C2283E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 21:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A1D13A88D;
	Tue, 16 Jul 2024 21:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="biO6W0uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843B12B17C
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 21:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721165080; cv=none; b=FTka2LqYwL8jTEKi+U3LS8H4BR/jgE6/lV/28JWoXMOrYIpxtyQVhUFKprN065HTRpWwlhEC5LB1/8O+55AJyyg4mfv9SU4WAmOFZ+o6D3kl2CQuwUyUFtYXy+Jd7G8mbVGVZOI7kKD1D7YCFhQCcspDpSNURgRi2cdVRQLWVNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721165080; c=relaxed/simple;
	bh=sPs4PNFGR4OdzkX2auFHc60O2CFGJjvXeNJujwKmTZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gWS7XtKr2YqNIaD4EeyDtAapTa6b9E4m1NPkN/M3oJqeqcRPKWexzmRNiA72U2dcqWLAfgdthVAP+fu1UjjKNNpQXeKiPijusqJuAy+L+O5S5Cqk2GiWuev36R7WORyKhtD+8gRWY7VAaNkgz8+AbVUYx4MYCFa7N5NU/R/fMZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=biO6W0uk; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-65465878c1fso69167637b3.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 14:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721165076; x=1721769876; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gQRdC/2kvXyGkK2vcAJKjjyUUocgpd8dsZecLG2PFfY=;
        b=biO6W0ukakZ4Qgh1P91F+E7cFAQgats/qTN1TuaQL58imdfpvCHvnXJlnUfRJFWAMO
         l9zFQp+K4sEzQ4q3p3oUGbuDyS3H9QdsURJGdyHSYFOEH3I1ct1ucfEWLK9ZEAHK1vEo
         1ZU4YfavXA86AdSB8n2el19KWPAZbecQAZpoDhopvIo6Xix8U0HB7Lbi0/RRP9gkJCvV
         ZPSDThYlczU3HB7GMdTksmI415fLMY23fDmsqi97Wd/iRhGidmwzqDyMuVYFZ3S+W6eE
         e3eCxsNeC+J/D324GvoSlc2m5A3x+V4YhfHR5O6ITedU/n+t/h5xoZ/DgZuh4R5zcmIJ
         fwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721165076; x=1721769876;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQRdC/2kvXyGkK2vcAJKjjyUUocgpd8dsZecLG2PFfY=;
        b=Lw5gn3i7jyGvgm6i9fGGRw52TP84ra0DK0EVghNt9vbfuGLWKB+1XQThznv/rCqVwk
         ZzAmwVNfPR3e+Z286VykyZSqAMK89Fm+J0WQMVYBZASH87qZAwWLiXBmEnqR6H5qHhZo
         qODKOL1CA7+42V36VWzJvHAHiqhXmUt8C1sn5KZPL0a5bjzwr80gu7KCDlxmSFEYiL6A
         mu8lM5J6x9gXVschzhAXRGumRwo3XXToS5rfP8OpUaYFlJtX1Aw4NB+wh9Mq5uNxSvmo
         NocF4kQdk/3bhtZLm7l1EXpmv/n7i7eSP5jTSMwklLlkEwUl2saltCkI6LoxaMVmCWkA
         7R1A==
X-Forwarded-Encrypted: i=1; AJvYcCWWA5aDopNGunmEPK5R4QavGczNq8EogQhS7WEwyxdAuWzw8zDyrzAAJCAGG5QbZvrCLDmQF2Y3jiTqJbtWAtELpdc2I5QgXaKSHQ==
X-Gm-Message-State: AOJu0YxZQtyvai/s7W4SURSBs3FUUy1VUJULXqhOr8n3888X8AqCWg4U
	RAZKVaGzjFm1Ghw4q8iQrgd9kIA9Hp0h1421OCx3DaV6Y0t0IRyIaXjE1KqL0ZD9XnjDa7SIfAf
	4vvEze4kJIbhK2pH7Cw8L5XgQ7PPUGY7ysQKCFA==
X-Google-Smtp-Source: AGHT+IHukAbIJAtIf+1bmFomAwMWZ4a7Sq2fAk/2Uja4FHdmLbwtMbr5cxth2mf7+/2iD5lynbk/3IwoC4vEU9YiHhk=
X-Received: by 2002:a81:9e52:0:b0:65f:8209:3ede with SMTP id
 00721157ae682-663811feeabmr36266767b3.44.1721165076195; Tue, 16 Jul 2024
 14:24:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240717-dispcc-sm8550-fixes-v1-0-efb4d927dc9a@linaro.org> <20240717-dispcc-sm8550-fixes-v1-7-efb4d927dc9a@linaro.org>
In-Reply-To: <20240717-dispcc-sm8550-fixes-v1-7-efb4d927dc9a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jul 2024 00:24:24 +0300
Message-ID: <CAA8EJpq69nuvQc9FkoBCZ-o1avH4kU2_msNNRZaTD+YASDkErg@mail.gmail.com>
Subject: Re: [PATCH 7/7] dt-bindings: clock: qcom,sm8650-dispcc: replace with symlink
To: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Jul 2024 at 00:13, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The display clock controller indices for SM8650 and SM8550 are
> completely equal. Replace the header file for qcom,sm8650-dispcc with
> the symlink to the qcom,sm8550-dispcc header file.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/clk/qcom/dispcc-sm8550.c               |   2 +-
>  include/dt-bindings/clock/qcom,sm8650-dispcc.h | 103 +------------------------
>  2 files changed, 2 insertions(+), 103 deletions(-)
>
> diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
> index 78e11eade2ea..9ffcd9eb9283 100644
> --- a/drivers/clk/qcom/dispcc-sm8550.c
> +++ b/drivers/clk/qcom/dispcc-sm8550.c
> @@ -1776,7 +1776,7 @@ static int disp_cc_sm8550_probe(struct platform_device *pdev)
>         }
>
>         if (of_device_is_compatible(pdev->dev.of_node, "qcom,sm8650-dispcc")) {
> -               lucid_ole_vco.max_freq = 2100000000;
> +               lucid_ole_vco[0].max_freq = 2100000000;
>                 disp_cc_mdss_mdp_clk_src.freq_tbl = ftbl_disp_cc_mdss_mdp_clk_src_sm8650;
>         }
>

Of course this chunk should have been a part of the previous patch.
I'll fix it for v2.

-- 
With best wishes
Dmitry

