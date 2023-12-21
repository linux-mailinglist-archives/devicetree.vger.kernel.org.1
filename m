Return-Path: <devicetree+bounces-27589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A06881AF18
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 08:06:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36822286642
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 07:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3222CBE4B;
	Thu, 21 Dec 2023 07:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XYHsmNPu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D0811734
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 07:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5e3338663b2so4838587b3.2
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703142413; x=1703747213; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QNHYVgnLPt/LzJzhIcgZKNBcgN77jkKMYOnDB6Gfkds=;
        b=XYHsmNPue9gGZ8BoP3Q30jWC0VwtrjYNYpNjPPAjeZE1EFiJcZUANDHL7udzKEmBWj
         g7R2qRbVBK9qw63VsCoJtfDhmbs5FrdIb3qq1EXJzUyJKynmAsd+yjl+BwidQbT0dwe3
         xGqyxPbYjwCHbyyojuoAtOzYqx0dtYpQ1ERHgF0h0w2Fn62nSfyjvyYxI0kMK0XB8Jrs
         C9XIHp/7Y/rHLJ+I0wFQWDKrPI3axxoxUhjpNdevZ6jNYvZqRqJhw2Ijb3ESMrNpTMPA
         RryxIo4ziW7RbGEjybJzGX/0zMYtIWGiWWpoJJqEqNzDBykaNtsVAgy39dJPNpvWIpXa
         sipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703142413; x=1703747213;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNHYVgnLPt/LzJzhIcgZKNBcgN77jkKMYOnDB6Gfkds=;
        b=pUhFtKz3I1Y+P6Tqgl2QUS4s/1/v75MWyCB2EGElFSXJZsoEOJ2QXVfyB1B4QAkDHq
         yHuVlpJuBayN3Zir4Owru4uk1BgF4jU6vyEvMmrqE2oU8+7uOyZDK/ZLcXHHBBJzHUbo
         RzAgJsfjsOCMoUiqeiZYMcu8atHyKxwB/iO/Ib9QYHHGbYI5KjLqI4FFLscnuSUVfg8V
         5LkATsDDhib5ex8+SULaSMMGk6QEJvsaF0Slcpe4qhpf0avxPk2RF5a2CeCuYkUv431T
         KgitmHIQ0npCCBPgbGxv0ueyA2E6Bf/qPqOy1sow4ODjzkIzoc3cHi+jrn3sRZPTmICU
         W7KA==
X-Gm-Message-State: AOJu0YxjRGhMRR6NtinK1eZJBwQs6hyQxHVQQt/bI13KSEaJXoaHlKO3
	wlrITNGn/kvFwFSXj/QvclUVPx0naiqMx5H8VJoqCw==
X-Google-Smtp-Source: AGHT+IGls0CL2Xf8mP1d+9lcPShutUPwkHMcMXXFqg50GFAV25XfU9SjO9Ug8vc9D/t/O+CnmSHm674c4KTzwGoSch8=
X-Received: by 2002:a81:6d0f:0:b0:5c9:8183:6ab7 with SMTP id
 i15-20020a816d0f000000b005c981836ab7mr857894ywc.0.1703142412886; Wed, 20 Dec
 2023 23:06:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220-sa8295p-gpu-v1-0-d8cdf2257f97@quicinc.com> <20231220-sa8295p-gpu-v1-5-d8cdf2257f97@quicinc.com>
In-Reply-To: <20231220-sa8295p-gpu-v1-5-d8cdf2257f97@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 09:06:42 +0200
Message-ID: <CAA8EJpqU4On=jpjk0-KkXMmwVhzLddJchQzy=LmJHnChjNpmSQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] arm64: dts: qcom: sa8540p: Drop gfx.lvl as
 power-domain for gpucc
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

On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> The SA8295P and SA8540P uses an external regulator (max20411), and
> gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> gpucc node to reflect this.
>
> Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p.dtsi b/arch/arm64/boot/dts/qcom/sa8540p.dtsi
> index 96b2c59ad02b..b604404ebf64 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8540p.dtsi
> @@ -168,6 +168,8 @@ opp-2592000000 {
>  };
>
>  &gpucc {
> +       /delete-property/ power-domains;

Nit: maybe this deserves a comment.

> +
>         status = "disabled";
>  };
>
>
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

