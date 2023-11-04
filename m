Return-Path: <devicetree+bounces-13849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400C7E0CD7
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 01:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DCE2281FF9
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79D6399;
	Sat,  4 Nov 2023 00:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eFqq7k1F"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2B67E1
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 00:43:10 +0000 (UTC)
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71D28D73;
	Fri,  3 Nov 2023 17:43:06 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-586f68b78ddso1378854eaf.2;
        Fri, 03 Nov 2023 17:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699058585; x=1699663385; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aGUor4KN3mEivrhWfRBpkaLmd+lf86C+XyFdHy/GhCk=;
        b=eFqq7k1FhzUDLZVGE0oelzWpM5kaq+QuqgRtpezHhCUBrjXX4rvH62GCk3JT+CWCSY
         v+WpEYd4qvFvOv1cOkIiQ4N4jVNtwIPw/LdFivMYPwKOt0GZmSlQ9AbfH2dJDmjN8rxP
         41ELX1t35y6HkUeaMOtQfEj9uCZjyOoIdR+Fwbqj1K88LdifbleXMCvzjSbBP4XTsDEo
         X0j8obag+pSYnUUuG8As8oROm29tdM9BFqPpuJUO1naJm2eBDldG2lhkyrIKmG8vmi+V
         w0kTrgJzdHT1haBcuYkgJQUI67lTL2rRtXSMcT4H4TruCKk4dv94EXMTlEGvFro/iUQ/
         ZskA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699058585; x=1699663385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aGUor4KN3mEivrhWfRBpkaLmd+lf86C+XyFdHy/GhCk=;
        b=PUj69EK/e1k+ZxySr+51i59NqLSkUXW42vSjkqvNbcmXK7QAMf+3QFfV17TzF5mN3Z
         7TcNhtQ5vWlCJ9geRUuFiYOlyxZI/87+ci5WQ2L4aAi24Oyc/TiZLTX+qftqgOF7lU5d
         uphsk0lzebheuusABtpDoIoJ2Z1eMHHDISfkb6/HSW/oWoGmXdNA5R3AuIoni9Kfuy0v
         F+keJ6s9odRDECcJAjkXD8FOOEJPXX2fuO7EzQWB/N9DJuflFYBr+rtx0BKLoN8JDhCj
         4pQqa8FOCbE8qkSQZ3zYAX8aiwxCW1ZL8S2vnUaVkjEpuIS8lOljK4/bYbit2O7zKMkp
         K2kQ==
X-Gm-Message-State: AOJu0YzIbKo519LeaW5wsZ8PjpI5a/SnQ3IGVEMolZZB4M0og+s0A08s
	tKE+9JaAa4Rraj7Ei0RqY1E=
X-Google-Smtp-Source: AGHT+IFHR7IN4ZVNKZ5lJTG6YV++YV/su+kaKMlK94D9x4Z/hDoAL/iIm2o6KLMe6jeOZ8oCfPJfgg==
X-Received: by 2002:a05:6358:7244:b0:16b:3e41:ae47 with SMTP id i4-20020a056358724400b0016b3e41ae47mr7052592rwa.19.1699058585503;
        Fri, 03 Nov 2023 17:43:05 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id k13-20020a63560d000000b005b7dd356f75sm1845036pgb.32.2023.11.03.17.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 17:43:05 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 3 Nov 2023 17:43:04 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Douglas Anderson <dianders@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>, swboyd@chromium.org,
	Andy Gross <agross@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/9] arm64: dts: qcom: sa8775p: Make watchdog bark
 interrupt edge triggered
Message-ID: <ab5e36f4-8e31-426b-8f09-39d73048e617@roeck-us.net>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.6.I909b7c4453d7b7fb0db4b6e49aa21666279d827d@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103163434.6.I909b7c4453d7b7fb0db4b6e49aa21666279d827d@changeid>

On Fri, Nov 03, 2023 at 04:34:32PM -0700, Douglas Anderson wrote:
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
> 
> Fixes: 09b701b89a76 ("arm64: dts: qcom: sa8775p: add the watchdog node")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 13dd44dd9ed1..6b92f9083104 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2235,7 +2235,7 @@ watchdog@17c10000 {
>  			compatible = "qcom,apss-wdt-sa8775p", "qcom,kpss-wdt";
>  			reg = <0x0 0x17c10000 0x0 0x1000>;
>  			clocks = <&sleep_clk>;
> -			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
>  		memtimer: timer@17c20000 {
> -- 
> 2.42.0.869.gea05f2083d-goog
> 

