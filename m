Return-Path: <devicetree+bounces-55387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BCA89507D
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66C7C281B85
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1E761691;
	Tue,  2 Apr 2024 10:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n8Vzfiqs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057745D8FD
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712054388; cv=none; b=f/A+IQwWrcVKQMfEk/PZl3NTCp6cgvTNbZgV7WCDmbg1R7k4+Ic8tanjP+ZAnia0574miE63DH76vyQH+y+aFoIvDzIUk7Wst7Xfgki+CXm2qC3P6qx/Cz91uhfya9cskSwGUDEvfkgprrYaGm+s/SdCWIPf7yMoL26K0kboBRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712054388; c=relaxed/simple;
	bh=HhEFB0IGRWmX+BEHDfO8KYBrrkkM8mY4tpZ16mAQ2nU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZKlYr4w0QMYG9onmV3xZUq73+n/bRZcXkxugM8hDlGwTkvKvlRDUT/06OoR6BoThW13oLuIgmRt4cyY1A66ohdNIf0ufyrmHZKpfKdpi4qQ4Kg73aUhtSwgOGBHjkrU+cAWEgKgfJHV/VZ8LAc1yZWHKbboC2aKE8BjDWE+71KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n8Vzfiqs; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-ddaebc9d6c9so4698325276.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712054386; x=1712659186; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N+1mQHP/C9wtu+pPXviceegNYIKTTtoExeoBTWfttgk=;
        b=n8VzfiqsuWOr93E0ssGrVoPf/59FBcfuZMN3XmPUEZdGoRrJ4WtKwbJqg0X6vqn7wj
         5c2nPYP3QUagIBWBAGIrXb7rZF5mSmE8lUuedV+tXmbi3iokOFQ/gegSoddd/wo0vAaw
         u0cCCvRjOuKITkzfl05CwtyJm0AQG5T6x3Qg4QAjbq2+p4+i5j8+JXqtNc96aU7UEham
         cjhg3OUgnY7hmoKQdABZtbi5ykfUnD6QtdA4NxeFwyujSU5PkvnNIgBc3B5H6D78M9RX
         OGGrPNILVGPstrLEjpvMc7qN6IPG4FkANwxNt9J/HxyKiEWt+VDBPcQGY0shMNsK4ezh
         n7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712054386; x=1712659186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N+1mQHP/C9wtu+pPXviceegNYIKTTtoExeoBTWfttgk=;
        b=TKcP0hDg3UN8KKRoHTrMCuCvArd0fK+W27Y2ZP2LCcvR2NpD8Byxq2E7v9oREZFXMh
         Tlas25cVBIHcY5JpW2/m5sUrQPCv2JI/v4cjl7cEwlKa9ccIm7BWRnNgeDGh3w7BNHff
         6BeN1IvcOk1zz7QPJMFcTAsecvGh2dbAexYg4byhDPrgWOzfNhRRzOKQ72Eka9Wf1vXu
         W64DHbYDQHehD35ccSATc8XMR+3a9tpCKvP2aiz9gV9CNwEnrZpdXzlrgiUteMv5mgjq
         loHIeM/pGTlIzPVWn+7MaWdMn4t+CoqmNRUEhuofWLFp5YrnEYiLgQJsNPD2rttDJD5G
         22jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDh0hJw8tkmcs/hc+LOdXtI0YZXh0E6pmYNWErH9z/UrJWCtXnT5ufp1q59Zzt2YLgdPywNx/hnuMPn+gGdr3II8UeLPIfdO7zpg==
X-Gm-Message-State: AOJu0YxApRGu1Dn6JITLq7u/tlMNo8HU+GGRL7Bshs9Qi/yEpVFOR1WP
	Zm6WGBoht15Q/t+d/i2Y6iS8zWm+jwgxQaXWsiqHthka2bMq+p/1KcnqvDIdhv7PEc59fXQlRbL
	EPl0H0zG+QgTRP8thlSQotZNfUX3P/YixMEPmUw==
X-Google-Smtp-Source: AGHT+IFBCL4yjfbf9P6S4J9vEGaxrXR9oX+B1iTse1Th7FUTQ5eAJxtybDGU8x6mh7uftc+KDUharfT5L6xDsM1B8Ic=
X-Received: by 2002:a25:aa89:0:b0:dc6:dc58:8785 with SMTP id
 t9-20020a25aa89000000b00dc6dc588785mr10269779ybi.62.1712054386067; Tue, 02
 Apr 2024 03:39:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402103406.3638821-1-quic_varada@quicinc.com> <20240402103406.3638821-3-quic_varada@quicinc.com>
In-Reply-To: <20240402103406.3638821-3-quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 13:39:34 +0300
Message-ID: <CAA8EJppyuagb5zkP4LCjjJwConw3mw3iS-+dO7YB01=7-waRTw@mail.gmail.com>
Subject: Re: [PATCH v6 2/6] interconnect: icc-clk: Remove tristate from INTERCONNECT_CLK
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, djakov@kernel.org, quic_anusha@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 13:34, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> drivers/clk/qcom/common.c uses devm_icc_clk_register under
> IS_ENABLED(CONFIG_INTERCONNECT_CLK). However, in kernel bot
> random config build test, with the following combination
>
>         CONFIG_COMMON_CLK_QCOM=y
>                 and
>         CONFIG_INTERCONNECT_CLK=m
>
> the following error is seen as devm_icc_clk_register is in a
> module and being referenced from vmlinux.
>
>         powerpc64-linux-ld: drivers/clk/qcom/common.o: in function `qcom_cc_really_probe':
>         >> common.c:(.text+0x980): undefined reference to `devm_icc_clk_register'
>
> Hence, ensure INTERCONNECT_CLK is not selected as a module.

NAK. Please use `depends on INTERCONNECT_CLK || !INTERCONNECT_CLK` in
your Kconfig dependencies.


>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202404012258.MFriF5BV-lkp@intel.com/
> Fixes: 0ac2a08f42ce ("interconnect: add clk-based icc provider support")
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/interconnect/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/interconnect/Kconfig b/drivers/interconnect/Kconfig
> index 5faa8d2aecff..f44be5469382 100644
> --- a/drivers/interconnect/Kconfig
> +++ b/drivers/interconnect/Kconfig
> @@ -16,7 +16,6 @@ source "drivers/interconnect/qcom/Kconfig"
>  source "drivers/interconnect/samsung/Kconfig"
>
>  config INTERCONNECT_CLK
> -       tristate
>         depends on COMMON_CLK
>         help
>           Support for wrapping clocks into the interconnect nodes.
> --
> 2.34.1
>


--
With best wishes

Dmitry

