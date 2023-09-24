Return-Path: <devicetree+bounces-2862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B427B7ACC74
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0A0E0B20902
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02748DF72;
	Sun, 24 Sep 2023 22:18:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBEBDF6E
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:18:09 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2498FC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:18:07 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-59f1dff5298so54025727b3.3
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695593887; x=1696198687; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=148f3od4UEgt0C3+sCv2idXUqd/hwbuqnZG5oUZXv6Y=;
        b=aBhoVb09JCipnenktEbqDz9vuwlwrH79TNHtYoPUk0tyLwiR81+AEr920sN0jPOIvC
         crRrZj5ZDuVeGtFVxRX18Gba/0dZCvgzCll5VvsqF4v+MrwmvZHkQaA3SRA4dXY8Wc62
         h4IZ/M06v9GvXd+5OOMDItd5r3RKMMK5hi461diJ0Vra3913vPbmDfSBAoffxzao40tf
         dD/7rVt0nUti6ntk9boxC1rtvwN1GhvXn66pWMsDWzv5wWWji8XHAW4XnexPRdbiihOy
         vSZwa5/Bvjmr4C8rPUlbGEJ4XirWCZrs/0toaJy07PqVYyHYw6u2+/RJ/s072NfdBxc8
         hSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695593887; x=1696198687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=148f3od4UEgt0C3+sCv2idXUqd/hwbuqnZG5oUZXv6Y=;
        b=XjMO3Gw9yO1Lk2QUMHIGxnigCkmQFYWg4jp6IEDztGxqRFRsQEfu/ApoCTMCpUBqZL
         8QLFn0NSrhSQyafb4iNZQqZlxlxma7gPEDrO2ZJ5SWSZW6lkeZkDbvyKrWNE/u5AEpCL
         wzBkSYnWsiZPcr0UG+4YPP6xTxMJnJSnZe2SzNwkYXDVkT5Gwa8Xv0nBAUPFL3nF1jFA
         Uct0u8XizUL+CIQWD16uE6flYTHF+eF8GeS7IsKXu2jlC5Ih3ABs49MHpLDyxYbaieYI
         ABwtf3KRl33LuL6+a8DfsG/kcdfm2X9HGh/FhzlnamwBwiYd1QLuxv0/jgnCg8DGYR5F
         WlyQ==
X-Gm-Message-State: AOJu0Yxl544bSbUiYjfQiatPay/5fTo0sPCHRXdhyUAnL8/w4hP6SU/e
	gq0XboZ/q3TdR/gPG7IyK/vIIyTW4nIgaR9v5Zw7hQ==
X-Google-Smtp-Source: AGHT+IFcYRHDcxG8KWeFXXolriZPyC3AiPbFE3WBCzvXsIHeB+V+a6FXyJQypZvS1ds6r7pfEYfPu0vx7NFcpdfa5mE=
X-Received: by 2002:a81:6e0a:0:b0:589:f995:eb9f with SMTP id
 j10-20020a816e0a000000b00589f995eb9fmr4715168ywc.45.1695593886747; Sun, 24
 Sep 2023 15:18:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:17:55 +0300
Message-ID: <CAA8EJpoQdaKnXRaEvFpyqUD1vPvy=aQesxWZ3Usj0JcEvZpDkg@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/3] ARM: dts: qcom: sdx65: correct PCIe EP phy-names
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rohit Agarwal <quic_rohiagar@quicinc.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Qualcomm PCIe endpoint bindings expect phy-names to be "pciephy":
>
>   arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dtb: pcie-ep@1c00000: phy-names:0: 'pciephy' was expected
>
> Fixes: 9c0bb38414a4 ("ARM: dts: qcom: sdx65: Add support for PCIe EP")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

