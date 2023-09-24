Return-Path: <devicetree+bounces-2876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 490EA7ACCCB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EC436281345
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF760101C3;
	Sun, 24 Sep 2023 22:52:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6746FA57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:52:44 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBAE7109
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:42 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59bf1dde73fso66089807b3.3
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695595962; x=1696200762; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=auyqnC2od1D1E6PNuRLFn85+jnnL3wyAnZ8O7zNakLM=;
        b=T4XnOvo/zEBfnDlfKDUEotIa4EeUZ0PoqHYYEkuw9P9Jfa31bwEfonNG0Z5ouicPLe
         hOl29kn30x8N5t0GObTs7oxTtLtJGuQjO7KE5+wMrrjWRBHTO1SuYKHAUi9bbH3jJlvH
         G2F1zJaz2xt60QTrWyUS1QFAhdQ5SAu7rqCsRZyRRfJ+tQqACwjNOW78lP/vBZHEs6MS
         +3Q8gb/IIl4s4DJz49T8b/z6Z6d27POqch4HFnAEP0VmtHnBecW5GrmspDFjlunqcUWc
         f+5r8sgAyj2Qq5JBlkfo14vrUAEewgKln96wr4VLjEEEEMlIb6kOj6f/0lDqwRSxNS6+
         t/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695595962; x=1696200762;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=auyqnC2od1D1E6PNuRLFn85+jnnL3wyAnZ8O7zNakLM=;
        b=BtIJfyZwYf5brRkfp4dbsVYTXX/Yetf2TXpduRErIgsAZaVpZXVRaMhOZ3EZM6Z+rR
         WANAego2toHweV9syh5/bXxkMFHOI/5kjbvvNMdgYIHT2VfgK9bn0IQfNBHXFZuByGTM
         sfBbwqKarVAp8sINtYCKBboRJbojyd34e1RNBVHQuEdY54W5pFiTakflB8/akMP+H7Fx
         lMctEIibGSn0ey7k46IlYv0xLXgHGyJgjoB28DdYLGotrElt/Cx2z21hD6xQa0/mKY84
         wkwPpfsgyMGJKsuEDtnlZpTF4dTEBqp7dPAO5iWWiNoEO3IEHGPdk6FFfCzC4DeQQPHp
         QVAg==
X-Gm-Message-State: AOJu0Yx2f1BHdJgP4MGv5FFV2dfN8D7kB6CXNad8BNkOfvM1kyKvZS+j
	AltNv0LTsoN6UXDtFJCCztw/goDvptFJgNrYhdvmmA==
X-Google-Smtp-Source: AGHT+IEf/xYhIiOIqZMykdecpoI0YeQjJIGoahaAMKx6VZ6eeH9LAMmD9EAFBb2rL/KQnqGYfMv336+BVVn5GBeu+So=
X-Received: by 2002:a81:9191:0:b0:59c:786:f58f with SMTP id
 i139-20020a819191000000b0059c0786f58fmr4913540ywg.6.1695595962104; Sun, 24
 Sep 2023 15:52:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:52:30 +0300
Message-ID: <CAA8EJpoQJUSS=tKNbKLy1AFm5w1FdOkVacDw0wzGOBTdsEfyLA@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/4] ARM: dts: qcom: apq8064: drop incorrect regulator-type
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
> regulator-fixed does not have a "regulator-type" property:
>
>   qcom-apq8064-ifc6410.dtb: regulator-ext-3p3v: Unevaluated properties are not allowed ('regulator-type' was unexpected)
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 1 -
>  arch/arm/boot/dts/qcom/qcom-apq8064-ifc6410.dts         | 1 -
>  2 files changed, 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

