Return-Path: <devicetree+bounces-13844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6C87E0CC4
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 01:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCF6E28202F
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F62C7E1;
	Sat,  4 Nov 2023 00:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MaEfabsU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615E9399;
	Sat,  4 Nov 2023 00:42:17 +0000 (UTC)
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0EDCD45;
	Fri,  3 Nov 2023 17:42:15 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-280260db156so2443288a91.2;
        Fri, 03 Nov 2023 17:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699058535; x=1699663335; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ct0KYE54peQamGMSAeRpW9X9OZ/g/Ez/2j1oyOsk0pY=;
        b=MaEfabsU6NeuBbelGuYmZAkHeNxk0NbiUd2SqQZIMO0Z/sdeLhKuu5rb112fEEi8hr
         Sv1Gv2zjc3q8BMqvbe4ULPNFyxdKtXplY8m25fS/Wh01rEbPLPq9RIV+5aaw/IaUlzso
         qPkC8Ve1Q2Cs8MR/kekWXu9Qm/dJ1BQDR0Ny8wfQYiMV6PWt9Aw+3BRQyJxJc8tyiGK6
         ZsGTY2osXP5GnjJ+XvxXtG+4iH/XnZF5sm47pkctPnPJmeWRiAdov/3veukF3NAdbsR1
         Mg2iC81bbHqRstdE06W6t/YXokMkKr0W2rAiqAqY/IXv9q4JoDUNpLT/Dj/gpwqTi31W
         4c5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699058535; x=1699663335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ct0KYE54peQamGMSAeRpW9X9OZ/g/Ez/2j1oyOsk0pY=;
        b=DqfS8Yb0R/HmoFXtu+XxTum7N5OUgREodYE7J0D0sVGxWnXlSzORxX2pTbD/tiSXkH
         5UAm+umqSxFDt37fFtX+0nKnx0Df6bnoErdBhGs5S/1Z7Hbt7CquAxz3zXK4Kk3hZ1Dy
         0XyAK1lNb7hch06Ih+K4iReHgwlYBQHVm3GMVwuxGAPlqFLkJvOCGQq4b8XxBWNJRGEC
         /MjsubHUMXIyxL1T+ZIxNarFnnsxHDV2N/dnXmqwS/aq5hEXweymLM61P1XfM3in0HVE
         uepjna85FNP00DcLs7ZqA5XBJDJIMxE8JQP48GCmZRZhTO+6yiUWUf4XA+cT9j4Ks9ZG
         5n9g==
X-Gm-Message-State: AOJu0YxgU4yLs0BfMGB3pFFdA6BfOo4eTGM5/0FFce8tNsJjtPz7D7Cu
	++szhAgxpP/gUIzzVl1m6Jk=
X-Google-Smtp-Source: AGHT+IGIHIG4nM1J8gqqmB4uqlcw7WJlytRrYOtcAwEng2xO3AvaLqH5pRHWj2TMv4l6XM22/HFytw==
X-Received: by 2002:a17:90a:53c3:b0:274:4161:b9dc with SMTP id y61-20020a17090a53c300b002744161b9dcmr22303484pjh.31.1699058535314;
        Fri, 03 Nov 2023 17:42:15 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 13-20020a17090a004d00b0027782f611d1sm2139551pjb.36.2023.11.03.17.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 17:42:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 3 Nov 2023 17:42:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Douglas Anderson <dianders@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>, swboyd@chromium.org,
	Andy Gross <agross@kernel.org>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Kees Cook <keescook@chromium.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	Tony Luck <tony.luck@intel.com>,
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/9] arm64: dts: qcom: sc7180: Make watchdog bark
 interrupt edge triggered
Message-ID: <ae5f5cd1-504a-4ed9-9608-b448b83b23cd@roeck-us.net>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>

On Fri, Nov 03, 2023 at 04:34:27PM -0700, Douglas Anderson wrote:
> On sc7180 when the watchdog timer fires your logs get filled with:
>   watchdog0: pretimeout event
>   watchdog0: pretimeout event
>   watchdog0: pretimeout event
>   ...
>   watchdog0: pretimeout event
> 
> If you're using console-ramoops to debug crashes the above gets quite
> annoying since it blows away any other log messages that might have
> been there.
> 
> The issue is that the "bark" interrupt (AKA the "pretimeout"
> interrupt) remains high until the watchdog is pet. Since we've got
> things configured as "level" triggered we'll keep getting interrupted
> over and over.
> 
> Let's switch to edge triggered. Now we'll get one interrupt when the
> "bark" interrupt goes off we'll get one interrupt and won't get
> another one until the "bark" interrupt is cleared and asserts again.
> 
> This matches how many older Qualcomm SoCs have things configured.
> 
> Fixes: 28cc13e4060c ("arm64: dts: qcom: sc7180: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 11f353d416b4..c0365832c315 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3576,7 +3576,7 @@ watchdog@17c10000 {
>  			compatible = "qcom,apss-wdt-sc7180", "qcom,kpss-wdt";
>  			reg = <0 0x17c10000 0 0x1000>;
>  			clocks = <&sleep_clk>;
> -			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
>  		timer@17c20000 {
> -- 
> 2.42.0.869.gea05f2083d-goog
> 

