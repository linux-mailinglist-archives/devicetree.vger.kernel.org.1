Return-Path: <devicetree+bounces-12399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3207D94A2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A081DB21035
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC438171C5;
	Fri, 27 Oct 2023 10:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AjQtDNbL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B574F1772B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 10:03:53 +0000 (UTC)
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A0C191
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 03:03:52 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-58441865ffaso1112240eaf.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698401031; x=1699005831; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zsWK1OgDjICTXVg+y2fnxE5fIMnUa5Iiz/sVKW4pjEI=;
        b=AjQtDNbL3Y5LL0A/UP5QJoWPZXnsCLfbohGC2fs3tSrqLYQyhgLiFe4E5xn8YuhtZ7
         xN/TJkCDIcOG8DVFXWuyOHcnMKRPkM4yzY6xl1Z2oHImZAbChwohgdKeQ5KQit6+h2MC
         aUt34fOPw98Qg+xaoFYSGyjeDfO7j9sf66OsCziwDVXC40X24M1e5EM3qKC/aDJz9DQz
         1RnO3xjezCDWpwlVG8nRAgcx72MyIjkCjSdaOibDm13wd+rmLCpfDb7HzAbDTDxqe7E6
         2oOmxQAN9oYX5y056QIOAw92EsJom1ffNTeqirrjdOfCfMC3XCCBK280w6cbLfxq07yN
         SE4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698401031; x=1699005831;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsWK1OgDjICTXVg+y2fnxE5fIMnUa5Iiz/sVKW4pjEI=;
        b=YcVH+r85XR8JOHaduECOGOXan1d9lQBDgXvfEtdp9Hfz9Iuo1swaawLI59SwNHS4N0
         wkQkIgL4jGBaxiK1uCZY89B42bgIxfV04w4gkYLbycqjKHH8yhp0/qsDoe7KFfRq9Q/s
         QvHG73FaK2rVfmj6Uw1FWPALB1mXFsL88iSNFo7pL746J8rRCNEVdezMwUv5l+1czqvu
         VSyxcEZDv/D+ipJ9H1plg5q2mKwueNz9qfvSwC1kJiqjhRBWI9aNreb7DqSfzGD7g0M2
         BSsnhm15O2ttunEuJ/LG0tNuX3sOvI5Mh9nk/lnZ3TjK3h5jrfqsPNRB+h4M0NK0Hky0
         o0EQ==
X-Gm-Message-State: AOJu0YzAdBN41Au54rFoEHCDZqZeylKYgzrp35iOGw8j6LvgEsbo81rU
	yWuVg8ZV4gLdyhksNCJiiBq0dNg/06zG63CQtPoW5AbmRWMbjtNw
X-Google-Smtp-Source: AGHT+IH7wI4TactJw4Ii9UHtb52uYCU7O9TJ6Nhj5u3wLFU+xns7qj5V3PuIa87IFs656AW02q6QPGJSuZZSsMoGVjY=
X-Received: by 2002:a05:6870:f619:b0:1ea:2506:3e90 with SMTP id
 ek25-20020a056870f61900b001ea25063e90mr2405935oab.35.1698401030962; Fri, 27
 Oct 2023 03:03:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-bindings-sdhci-v2-1-0406fca99033@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-sdhci-v2-1-0406fca99033@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 27 Oct 2023 12:03:15 +0200
Message-ID: <CAPDyKFoeONhEK9BjEpmEvHXzHHxZZPU5TgmBu8dP-m8DsR3NGg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: sdhci-msm: document the SM8650 SDHCI Controller
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:28, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Document the SDHCI Controller on the SM8650 Platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Applied for next, thanks!

Kind regards
Uffe

> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
> Changes in v2:
> - Fixed typo in subject
> - Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-sdhci-v1-1-e644cf937321@linaro.org
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 69a213965089..86fae733d9a0 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -58,6 +58,7 @@ properties:
>                - qcom,sm8350-sdhci
>                - qcom,sm8450-sdhci
>                - qcom,sm8550-sdhci
> +              - qcom,sm8650-sdhci
>            - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
>
>    reg:
>
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-sdhci-3a47f07807ae
>
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>
>

