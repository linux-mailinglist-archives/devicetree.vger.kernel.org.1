Return-Path: <devicetree+bounces-8806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBFD7CA2B4
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF5B31C208CB
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D68D1A289;
	Mon, 16 Oct 2023 08:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xgc028NS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84CB18C03
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:53:15 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0773AF2
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:53:14 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5a7cc03dee5so52444517b3.3
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 01:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697446393; x=1698051193; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0qjL7Jne2EuSY8hJrWaJD0Y2w0iLDuf6rVnD3m4Il5Y=;
        b=xgc028NSAPx6kQQEGoEWI+YHMHnAt9mDVB0tPtr8ZMFeMqlw6AVj67SODYXbXfzCAK
         sqZwyJAlpTIMzvOMG6RJz3qEENDQYm1jeNYLU5rhYHeLQ7MOFcubwZfhxNUhjfGCbjDG
         CZfwbJeO6h6z+EziW0JkyCUv0PRCdCKmDS3s5/Rxb/4ILGfhusiTUGmCU/SVHx3DLj5y
         VvZY1E6L2B9yeTpBIj6DadquAPsh72JWEVxlAKUd08scKGBIIzXOuyOjoPmw6mDV++Z9
         zUqoUCFF5ocpYESHgp1vBGD9SC034vQX0scdYdx0+s8DjvkejI6dWeL/uBqZuerE0Aze
         40aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697446393; x=1698051193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0qjL7Jne2EuSY8hJrWaJD0Y2w0iLDuf6rVnD3m4Il5Y=;
        b=FqZrlXabH+CaRRYfTXHslOqxwNURTztI/NyeCBbd1WgNTsn9RbnKZfTSqVUh+2M0rA
         3BlKoU+BXU9AABqUXaNAz000x3snNFm110kNLmcEbe2/2RdfohoUZnHbuhXa0QkF4P/m
         iTshRZbEKTbGOv+8CcyR/EdFEdUMV82oJnHoy50Jq1Qc1b+NBZUtPkHejTzCT6Pfwp3G
         nl1mMDzww/q9t3IkgFL2X2jBjdR7DD5XQHf7TfXCuEHCAud+q0z5qWes0+cQ8Qnf98GL
         LPljXM85i8KmM4+dOc6uMSnPu1H1e/pdjcC9jfwG5TW80dsAyK3uisvdiOKe8AaLADqS
         +1GA==
X-Gm-Message-State: AOJu0Yx/pJMzl9/xieohJLhBy63vqLh8JLjmR6lPpLkw+PHsBbO2C/kF
	GgYCbnjw8ibwHlaM0grbO4BIz8n86eUn8w0SKuNlxw==
X-Google-Smtp-Source: AGHT+IH4xBr1KrgiLsfmacR6sZSOPfQzcHLoH+Lo+h6GkkMSCXJ0UKEHTksgQfzA2wSwtVAKncDAED18cfQIE+i3W6k=
X-Received: by 2002:a81:4fd3:0:b0:5a7:dbd1:4889 with SMTP id
 d202-20020a814fd3000000b005a7dbd14889mr17047139ywb.2.1697446393255; Mon, 16
 Oct 2023 01:53:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016080658.6667-1-johan+linaro@kernel.org>
In-Reply-To: <20231016080658.6667-1-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 Oct 2023 11:53:02 +0300
Message-ID: <CAA8EJpoPSHfRMgzs69Z-Zk0L8z8_8sveh22pj4ZOAwyAPvesHQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-crd: fix eDP phy compatible
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 16 Oct 2023 at 11:07, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The sc8280xp Display Port PHYs can be used in either DP or eDP mode and
> this is configured using the devicetree compatible string which defaults
> to DP mode in the SoC dtsi.
>
> Override the default compatible string for the CRD eDP PHY node so that
> the eDP settings are used.
>
> Fixes: 4a883a8d80b5 ("arm64: dts: qcom: sc8280xp-crd: Enable EDP")
> Cc: stable@vger.kernel.org      # 6.3
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index 772953dc428e..31a2a2d27f4e 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -458,6 +458,8 @@ mdss0_dp3_out: endpoint {
>  };
>
>  &mdss0_dp3_phy {
> +       compatible = "qcom,sc8280xp-edp-phy";

Same question here as the one I've sent for Konrad's patch. Is it the
same PHY type, just being repurposed for eDP or is it a different PHY
type?

> +
>         vdda-phy-supply = <&vreg_l6b>;
>         vdda-pll-supply = <&vreg_l3b>;
>
> --
> 2.41.0
>


-- 
With best wishes
Dmitry

