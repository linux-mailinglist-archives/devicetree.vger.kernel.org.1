Return-Path: <devicetree+bounces-13850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8477E0CD9
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 01:43:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6695C281FD0
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F3A399;
	Sat,  4 Nov 2023 00:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ESJxIvG7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C887E1
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 00:43:18 +0000 (UTC)
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15424D79;
	Fri,  3 Nov 2023 17:43:15 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-28019b66ad5so2387072a91.3;
        Fri, 03 Nov 2023 17:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699058594; x=1699663394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k/2VELZRIQ5UMRXDCURJmIhMJXvjLDkupYLhbbtRmrM=;
        b=ESJxIvG7mjoPBnwGQqgh+fMpZeAJgu7w/neFaiWkluJJLaItyo4YqvC+4GKWvwgVC5
         Oc9lNk+B+autmHNUuJSs2CYaTV2IvmVgxeb4YFzQljvOLB4Y+IKIOI2RoMxocpqekYwt
         ZYj6rwi+HYPt1zjHntIDTettcTWF/gwNXJGXPf/pTx17XanQZlqBmowjFiY7ZH5tPqiA
         Wgd/LaBwpTkuUUqb6mN6Vdyn/qCHqmoRGBiyEurK/uPOfGxduLUygdNw5lSECYrTmFn1
         GJpZnENkJlxi2Uvxh2/N2eHSJc+LARiQZZOocSpZntV4brv941xwtXXTr2kpCe76RJVH
         IZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699058594; x=1699663394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/2VELZRIQ5UMRXDCURJmIhMJXvjLDkupYLhbbtRmrM=;
        b=mm3ZQO2LhSIdLzP27QxVCFvypqVulgSsKm7DD85K30pKXeQjmAP6UNjUJhzzsSY6Cf
         y5Q9WL9xH8sTKfdiwsMO4XPj1fp0b40o0yoLQt3ozFbYi/4HTTAvd/WnaDGhYyK3lUFR
         aIhwUVkkVcihX9SUclGoDBrDHuvlm+IH1B1yx1lXvILLt0Eiqyu2CUKbzJ70CX3ynpD1
         kEhkgaR4R5c+ep58q8DGnvZa8aGckRQJWOakfACqwFN3R5PT5btqcLULGVsCMjWFUmI7
         XcqMTFn6P9af0lPcPg990mOXVyM9Qibsm1h5geHXhge2A/oZ+ssxWt1Ochgf/lFa1jpT
         KL2A==
X-Gm-Message-State: AOJu0Yx4zuNrNRLmlsQg9e/B9zP735SO+HxRVp6cFcC+Uod77c4C3jRb
	msVKHTfE1mh/uqN39Y5ys40=
X-Google-Smtp-Source: AGHT+IGGUV10np7lV/hxwIcz1VF9Sbjkvur70VPxkxxw9GFgjiFl73XCYRQp7+6yLqsWyYlbtDczdw==
X-Received: by 2002:a17:90a:740b:b0:27d:20f5:3629 with SMTP id a11-20020a17090a740b00b0027d20f53629mr22393851pjg.46.1699058594498;
        Fri, 03 Nov 2023 17:43:14 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id oj15-20020a17090b4d8f00b002805740d668sm1956513pjb.4.2023.11.03.17.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 17:43:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 3 Nov 2023 17:43:13 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Douglas Anderson <dianders@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>, swboyd@chromium.org,
	Andy Gross <agross@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc8280xp: Make watchdog bark
 interrupt edge triggered
Message-ID: <e9d421be-37e3-47ad-8316-c6bd2b9e96ef@roeck-us.net>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103163434.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>

On Fri, Nov 03, 2023 at 04:34:33PM -0700, Douglas Anderson wrote:
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index cad59af7ccef..b8081513176a 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -4225,7 +4225,7 @@ watchdog@17c10000 {
>  			compatible = "qcom,apss-wdt-sc8280xp", "qcom,kpss-wdt";
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

