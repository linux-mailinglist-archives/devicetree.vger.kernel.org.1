Return-Path: <devicetree+bounces-13846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6897E0CC9
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 01:42:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9A49281FF3
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898D3629;
	Sat,  4 Nov 2023 00:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fCCD61hj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45027E1
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 00:42:36 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1081D53;
	Fri,  3 Nov 2023 17:42:35 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c434c33ec0so21675455ad.3;
        Fri, 03 Nov 2023 17:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699058555; x=1699663355; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fj3pBi2YAj41j8Xo9QhVzDmclgnVSMx97J1o6EhtNq8=;
        b=fCCD61hj5KnVYnh2jWtiSYZ3MV4K2QE/eq9OHOIAqLM+pRdQ37fq3oGpvtUKqwV2QT
         +o9cgWbIOa40wu/i/fmzZs3Os+3nwobR0LQkqgYDTZ2f7DQhL0WU9uhsP7/N+bO17yjf
         aTbyveOMUhURUQl8CspRcR8k1v1klmNTZ8wl5+Rrqa0NpyBaLsIea25A6IuycTBuGeDQ
         WKBsV/F8c94rieBHFNCqb91bO4hZM4qasQsTSG460M7dp8yunj9wlelmeLty4tfsAn6R
         6P/cWbxx1rAFkeTa7gYONFwNC+b9svtscXPYKR3G/5ziR5TeXi5wqIY4T9+TDuJ2je8L
         PQSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699058555; x=1699663355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fj3pBi2YAj41j8Xo9QhVzDmclgnVSMx97J1o6EhtNq8=;
        b=Jil3PaRiZ5XMa8R3lo3TkRZmROLFN6NY6k7FdA8cyzLB0Csyi1NBL1SY/CoH88QhmH
         116lhfJjIlb+JybKb8X26uEJBPxZjwr4XvPHQ0Y2g08VqDDjh7mDTXP/t8Zo1enrGAAo
         SdUm3+JUmXaIZ93sVLg3mD6JHlV1sDV+aeYpImbwCcSYBONMSu8sQXxUzDH12LFOcTbv
         hqv0/J9/JQOh2h3fA/bQWfq7h171TsyaweuJ3q32AZIYfh17zqvnzjvIT2qj+v49DQSa
         YtPwPoKDsPfVOeB07Ls47kUPjypVyDdCWQpP6wmkiTHtHr8yrG9xiAKmOM5Jxu3KXqzg
         A6PQ==
X-Gm-Message-State: AOJu0Yy90mNQlZC132lAXP9rG74YdL8E6JBrKzctEWO0X6VxsGlfxsw9
	gGqJpEbd/dVs5V0sgIWHofQ=
X-Google-Smtp-Source: AGHT+IFgalIBVIlQIRdmPOCmXdrH5szQRBhWUm5TpEi75n2IKCYD5wuPhRIvW4eaEVncZbJZJ2tryw==
X-Received: by 2002:a17:903:1104:b0:1c9:ea6e:5a63 with SMTP id n4-20020a170903110400b001c9ea6e5a63mr24219647plh.32.1699058555109;
        Fri, 03 Nov 2023 17:42:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902744500b001c60ba709b7sm1900700plt.125.2023.11.03.17.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 17:42:34 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 3 Nov 2023 17:42:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Douglas Anderson <dianders@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>, swboyd@chromium.org,
	Andy Gross <agross@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sdm845: Make watchdog bark
 interrupt edge triggered
Message-ID: <bf8829d6-af69-45c2-b8e4-54346422eec7@roeck-us.net>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.3.I16675ebe5517c68453a1bd7f4334ff885f806c03@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103163434.3.I16675ebe5517c68453a1bd7f4334ff885f806c03@changeid>

On Fri, Nov 03, 2023 at 04:34:29PM -0700, Douglas Anderson wrote:
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
> 
> Fixes: 36c436b03c58 ("arm64: dts: qcom: sdm845: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index bf5e6eb9d313..9648505644ff 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -5088,7 +5088,7 @@ watchdog@17980000 {
>  			compatible = "qcom,apss-wdt-sdm845", "qcom,kpss-wdt";
>  			reg = <0 0x17980000 0 0x1000>;
>  			clocks = <&sleep_clk>;
> -			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
>  		apss_shared: mailbox@17990000 {
> -- 
> 2.42.0.869.gea05f2083d-goog
> 

