Return-Path: <devicetree+bounces-11957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24A7D72C0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5019281BAB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE0830FA0;
	Wed, 25 Oct 2023 17:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJp5dXz8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34FA18B08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:59:26 +0000 (UTC)
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E9EB13D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:59:25 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3b2ea7cc821so4121996b6e.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698256764; x=1698861564; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kJzSg1LCsZbgXYBBMfyCHmwEzikv9hbs4ziD6OXdr+4=;
        b=BJp5dXz80mpNXyvvB8t4eANRcUTRAy7Poxq3k7K8j7prJ6jKan0a3YaoT3Vm2iV8+Y
         CA9lWspRP8+5epM2IoahpepKODDREJEmefCmeTjgJSHwCccLuxJ6a/Q2UyKITq3RP8bD
         k05aJ/o5LvWIfw7WZxlAsVI1bnO5DN1LtdZLsXY0wu/zmRcW7qLnN742zW4GU7QNdSSj
         4rCjlY1Oqdas28yjxTxahM1xTsu2WjtTVARjHP+x4j5wbVW/n1I835QladWEkZuFxfi7
         xrHUN8FnvByKPjJBxcpm4tE7fQDt0xK4qCTNeTbZpnS5zRWH6Yf6A4DmJSK6o8+pT4kr
         Y4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698256764; x=1698861564;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJzSg1LCsZbgXYBBMfyCHmwEzikv9hbs4ziD6OXdr+4=;
        b=WdD2EMDJua/oZAYEOmTQk3gzTvDlV4qnI0iikoHy+kivEBwUS1mR5xFkWTaKw8EimE
         f9Kw0OEEG8s5ecBsNhUzPIMxzOvzL+lyrkdxvjtJ/ugrak/Ndwk+w9SzOVJgdAjLus8t
         42RrCERtNApwGq8C250Uz7MIl94//RqUINna2iM79pPPRp4cOP9ySGsM0RfXH3nMSduU
         JtoE0V0AWDt3cIAbbCsZec5Y37eHX1vYAiypNATs4FlkbxoBvIYd1KL/99jLyhl4QR+6
         2Ua+m+9qAI/txGDOZlkxjyCM341Wvf7m3YPk1FgEAMe/QX8CaV/OsaEgJPBIbxMRsm7I
         Bg4w==
X-Gm-Message-State: AOJu0Yxfh0Jitap6QXtJV1F+qqYDHbmQkv7aIIbu6qm2/wAkpRyYRQek
	9LzDvqxlexlKucU7QSx79UAmbmPLirEIremjs7/Aval9JFYCEgNx18gzGg==
X-Google-Smtp-Source: AGHT+IHoB/2KCx6OrtNoY48m9+ezpWkb7vcjXpWehDBM+dTZ052IM8ZBnRON4E2iL8WXry/B9ZzrDaFkvElNc2CgCYQ=
X-Received: by 2002:a05:6808:1a1d:b0:3ae:1351:d0f with SMTP id
 bk29-20020a0568081a1d00b003ae13510d0fmr21772906oib.22.1698256764617; Wed, 25
 Oct 2023 10:59:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1698253601-11957-1-git-send-email-quic_mojha@quicinc.com> <1698253601-11957-2-git-send-email-quic_mojha@quicinc.com>
In-Reply-To: <1698253601-11957-2-git-send-email-quic_mojha@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 20:59:13 +0300
Message-ID: <CAA8EJpoeV9bqX=mZZ3RMrzqGQ+Hq1Nc_pr=vBjJbarNC4J+FRQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sm8250: Add TCSR halt register space
To: Mukesh Ojha <quic_mojha@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 20:07, Mukesh Ojha <quic_mojha@quicinc.com> wrote:
>
> Enable download mode for sm8250 which can help collect
> ramdump for this SoC.
>
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
> Changes in v2:
>  - Improved commit text.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index be970472f6c4..76f470a78608 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -671,6 +671,7 @@
>         firmware {
>                 scm: scm {
>                         compatible = "qcom,scm-sm8250", "qcom,scm";
> +                       qcom,dload-mode = <&tcsr 0x13000>;
>                         #reset-cells = <1>;
>                 };
>         };
> @@ -2543,6 +2544,11 @@
>                         #hwlock-cells = <1>;
>                 };
>
> +               tcsr: syscon@1fc0000 {
> +                       compatible = "qcom,sm8250-tcsr", "syscon";
> +                       reg = <0x0 0x1fc0000 0x0 0x30000>;
> +               };
> +
>                 wsamacro: codec@3240000 {
>                         compatible = "qcom,sm8250-lpass-wsa-macro";
>                         reg = <0 0x03240000 0 0x1000>;
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

