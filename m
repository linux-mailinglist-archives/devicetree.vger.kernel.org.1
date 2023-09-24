Return-Path: <devicetree+bounces-2879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8117ACCD5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:56:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B1C9F28135C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293A2101C7;
	Sun, 24 Sep 2023 22:56:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6827A57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:56:39 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3ED2EE
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:56:37 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-59f6767a15dso17128667b3.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695596196; x=1696200996; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/OCpxsqA1Y/jeI3EOfXWsSomtPtLJuDDitF/d/2TRO8=;
        b=pOFMo2KsPoPjmVs4S/apNeTYOoSF7X1odBJqQgCMVuW5WGmp1U2fpAw/qKa9g1/Dog
         v/tQzWzo2oNH2UGERTkmLpO4uK7rQqGPX3XMk5+24KHC0hGmFvnseLUWQsKEMFhNwDi1
         Zt9yxwWYpn4vexxkEMUbScmYJEUAT2o6+/S7eVzlrGrbKFE+2xGpBw6C6v8ZS7/a1TE1
         YDLBExD531fjPbEA8Drtn966AJ+uk8PV1thpwdegx9D1z4VUq6mQSBz2ZYFTnFcezgOz
         NpvH4nrUw4Ts2QRyrC5aqSamRSC5ZYA0hYvDgjzpW5TfMLq+ujwz+UflMYscDEB6qJc3
         w+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695596196; x=1696200996;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/OCpxsqA1Y/jeI3EOfXWsSomtPtLJuDDitF/d/2TRO8=;
        b=nCneHEAObOfTWobO9kBY/ef5E1UlSpMiG2s8JKuqqmuHYuE65VT3762vfKHiKv5G10
         CC0kS0j5Vx7UgDUxwx7vbyFJOq+aBTViEWU7uT0Wz6Cc3w4COGCaALKUAqwQwSR/xZTh
         CmBpDLDb1t1iOqcEHjwtfjqz/+DT9SX/iXBb+FICKnXqY/Z3fQvLXmp1dfRVZ6CYtMkV
         q5B5SrmkNpQftMbysob1tRQG8uWI3UIEAyvJVlubgD5q1cHsun2Qsc8hyfwUU38UTwo8
         XV4xOiD8tmsxpcZ/v+xXRfo2cIHjBdDdhx5jwBKmksvwhIBuA9XRt9XXVi0gV4Kprmi0
         pmSQ==
X-Gm-Message-State: AOJu0YznJJXvR638fdVxuOPrtHMh+piRMEwxCMY4Hr/kiCIzoP8T+BIp
	N0vfWvFOqj8Kiu4FW2eaInpYD3WNe3GU2ln/V2cSAA==
X-Google-Smtp-Source: AGHT+IEs0XFYwctfCXHL/J4ultHRrsFiwe6xHjtkwvdJwPf3yKHbw4J3FWqbTJ/w9j6wFqh78QJ1eozn+1utWQi7wZs=
X-Received: by 2002:a81:6f8a:0:b0:59f:d01:779f with SMTP id
 k132-20020a816f8a000000b0059f0d01779fmr3582455ywc.23.1695596196669; Sun, 24
 Sep 2023 15:56:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org> <20230924183914.51414-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183914.51414-4-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:56:25 +0300
Message-ID: <CAA8EJpq2ihZ=tFp3MtukNOO2KWQr0SixRg7=M0DA9adgsCFjMQ@mail.gmail.com>
Subject: Re: [RESEND PATCH 4/4] ARM: dts: qcom: ipq8064: move keys and leds
 out of soc node
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:39, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> GPIO keys and LEDs are not part of the SoC, so move them to top-level to
> fix dtbs_check warnings like:
>
>   qcom-ipq8064-rb3011.dtb: soc: gpio-keys: {'compatible': ['gpio-keys'], ... should not be valid under {'type': 'object'}
>         from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../arm/boot/dts/qcom/qcom-ipq8064-rb3011.dts |  55 ++++----
>  arch/arm/boot/dts/qcom/qcom-ipq8064-v1.0.dtsi | 122 +++++++++---------
>  2 files changed, 88 insertions(+), 89 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

