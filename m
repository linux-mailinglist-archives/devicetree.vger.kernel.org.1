Return-Path: <devicetree+bounces-27955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C13D481C521
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 07:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77AEF1F26315
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 06:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3712B847D;
	Fri, 22 Dec 2023 06:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="loxT0zeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84D4658
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 06:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dbd5b96b12eso1515727276.2
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 22:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703226715; x=1703831515; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vCM/h4yYLpqYLQHgVTJ6ZW6j4tyIyXT15IwAZIQWc30=;
        b=loxT0zePEqx4ohyr82lOWFREUge4iYi39hPYgoWyffbqkKCSBO8E72u5zzCQhw3A7O
         jBgn+fRYuA0tf2cxP5u/dRpR0LRbFo7tKijvklUGze/hYjB4qPXzWccDM1Cb/688OhUZ
         dAdEDqAN7gKf9UjgOln5j5Hd0bUZP/V5yGIFkg8iZh94ZcFBrBEhrIeVQJdLeFj9PnTW
         lWmrbUFBZddO9qYjIKVLOFOr0zvlreQofjt+sIZb769G8ek+DW4455oBkyrrD+rbqiXE
         WuXh2XSpg5v8XMnQ3UAi1SMLqDamMZvVSxqkSOlLdBxcI1kE4H0qH1dsVIBLgmpso8t8
         HK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703226715; x=1703831515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vCM/h4yYLpqYLQHgVTJ6ZW6j4tyIyXT15IwAZIQWc30=;
        b=Qiyh59w6yuVHFSp/LmEENt7GGbSQtjKtLbkrLxVhFLHzG+D8vFBAVM20YjOtmEwT1x
         VJd5MGzTK5LbEa6tSNmCzyBrHxcoBhOMnOJB9V8ncukwY4z6oLWQWFlX+TpXDI0sEWye
         LUiabvlu9mCgIymzzUPUxgm7s7SmEF6ruTot3VZugmmkMMZMCb+X2BPDD7AQCPhxOpDF
         aov98oD3Byw0xQ5RGe1nM44I+LMDW7jdvDxz71fIpl+6enQVNLQov10RPVKOWtDiAMPs
         XDU7I2EqbvFn4verFFmkOPKj191H1EiU7WdkNrr8eBU4ODIxvW3gtY60UV/UY3+5/1Bi
         Q8Sw==
X-Gm-Message-State: AOJu0YzdCOcCjKjb+FWVq5OqyuvshL0k9y6/dTBxpk4hkT0+7UAZdOF3
	9AA5XYC83fTJLbqrofxp64Cyusi7ylfTALz4C6NfLrNdIg7XOQ==
X-Google-Smtp-Source: AGHT+IHWuCHREWIfwkcn+VELqW2vW8cFEReTiA2Ka8sG+C0iAo/h4D1Bm+ZdcD+w9WKZAgevrzb3L60bmxd8fcpm3mA=
X-Received: by 2002:a25:ae47:0:b0:dbc:ef63:5e1c with SMTP id
 g7-20020a25ae47000000b00dbcef635e1cmr712464ybe.18.1703226714680; Thu, 21 Dec
 2023 22:31:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-sa8295p-gpu-v2-0-4763246b72c0@quicinc.com> <20231220-sa8295p-gpu-v2-7-4763246b72c0@quicinc.com>
In-Reply-To: <20231220-sa8295p-gpu-v2-7-4763246b72c0@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Dec 2023 08:31:43 +0200
Message-ID: <CAA8EJpqswNNDUj3tJu6qTYN+g7LoG7L5gMgUQvZfb3cxZRnF+Q@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sa8295p-adp: Enable GPU
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Dec 2023 at 06:40, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> With the necessary support in place for supplying VDD_GFX from the
> MAX20411 regulator, enable the GPU clock controller, GMU, Adreno SMMU
> and the GPU on the SA8295P ADP.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8295p-adp.dts | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

