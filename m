Return-Path: <devicetree+bounces-2877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 900E27ACCCE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3F7B3281350
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEEF101C4;
	Sun, 24 Sep 2023 22:53:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584FBA57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:53:00 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5476210C
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:58 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d862533ea85so4256610276.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695595977; x=1696200777; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RS3xD+hLJBCpSA21+g/xd7etHLQLdvhWyKWTwsdi+Ys=;
        b=ZgBcvNTUhP1hpHAEKIFoatn/4BaYNRg3dWmK/Yn7uQBYcRbKTXDIkOiLiTyXe9U9K9
         n7lj0qnjy/OMz1qodlO4icHJOn+7Isp632yS1uDvXPw513qnNjKJxQoWkRKhnC4iN8M7
         XiUFMh7w/UctyQ5EMVrO74MVyPTDD2PuGej5QwXA2YxLWbP/HsTUecxS3fUGA/lvzlHa
         LXSHq7G2qfC2QnkleXuaafb2R7p62drkuh0FWyPKM8trtAB1uQ47x2ZmwR339BW2AkEi
         M2gmWA3uKQYN+uJyWRkqMXHMt4XcUk8mGVsn85PVhjVK/MiCslNZKxrgxz3dej++mxiQ
         t80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695595977; x=1696200777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RS3xD+hLJBCpSA21+g/xd7etHLQLdvhWyKWTwsdi+Ys=;
        b=LTuCVoYGRjEjovI+9TVv5luhEqtGM/9pIaX27r7aIl88vPr+eThaJ/g7SkKJYN9oFm
         RkWwNI1Xzni3ej1IR2yExcTev1MkLiHvP3WNbOI/UhCJD9wMZRRJ40rdRXKywKVRfjjh
         5FRlTwvXdr4XbBJJmtjRvbNuipSgWKdCvEHfPR/D5DKHBhMvKBgbbKrZpjxQXNUbzrmQ
         6ETzBPe9kk89IIIRVJ3dm/QaGOTt+5sPjYW1Z+a8zb5pmuwgcQXMXjJF6TMihXlaeZZK
         sUTwpuAOcgM65QJ1o9Rty5g+jFKX5Rdtc8SgpWQ3dFejgHXDGS18g1cVy7outSxrv3WQ
         /tgg==
X-Gm-Message-State: AOJu0Ywj09eDc5ZBi1yLcMMpVYYFcl5aS8IJD/ZQWZjuPDBcGFBVJhRz
	9V5dC551OkkCVJ9a9u2YwSf5rYTMD1VwcxOIQE95dQ==
X-Google-Smtp-Source: AGHT+IFUG+J6Ni1QrEn8tKGwp9fgqdY/HoTprD4Oql5fcXylygPKDAR6X6koHLVe++ySWBf9o11/f8lR3ldAmce81mw=
X-Received: by 2002:a05:690c:2fc3:b0:59f:4c52:2f5d with SMTP id
 ex3-20020a05690c2fc300b0059f4c522f5dmr4199644ywb.2.1695595977476; Sun, 24 Sep
 2023 15:52:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org> <20230924183914.51414-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183914.51414-2-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:52:46 +0300
Message-ID: <CAA8EJpqNON+TLxBodMhr0ZzKavNoaJi3RDrhic+UaDo8nnS9fA@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/4] ARM: dts: qcom: apq8060: drop incorrect regulator-type
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:39, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> regulator-fixed does not have a "regulator-type" property:
>
>   qcom-apq8060-dragonboard.dtb: regulator-fixed: Unevaluated properties are not allowed ('regulator-type' was unexpected)
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

