Return-Path: <devicetree+bounces-2874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C26F7ACCC4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 858811C203B3
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEAE101C1;
	Sun, 24 Sep 2023 22:52:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09DEA57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:52:05 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD78FF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:04 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59be6bcf408so61785617b3.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695595923; x=1696200723; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+rY1S32MejckevmB4vOl0liTnSxULA4HG9arqKbcPTU=;
        b=F4AY69vMMTyYJQjVe5TH1iTJaRUt5fQW9snmYWqqXYNwzlaFGNHOViE9BlSEJiw3M2
         D4ZnqBcZx+4C2dkkdEmQp8qaRh0y59vrNFCXWIqiUdNUvjyyAYkBCo++DDbp+vnesh43
         qbYkOkmY7BFJz7njz2ma3evcrUDzlI0bbGEGA+NyIOgOBKP3ueigrEKzgCMqTm8z9LEI
         w39skBbD0JX4aELKT1wAHQq/PE/BBhlvl+gLxTWu1vWpWOE87NN9zm4/3oS9etG03aL4
         E7ChH5foe0W0bkNG0/GT4QdOMwKIi7lFBKhRXkdnHCavhvFgHB2xgb8rEz4yq/8ITv7H
         RCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695595923; x=1696200723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+rY1S32MejckevmB4vOl0liTnSxULA4HG9arqKbcPTU=;
        b=eDspupYs27HQcVUI7xGbtamNCXfK9Sr2uFmplbsBMg8XJ2vjHZBNMRYblnoqkVeqwC
         laf+1f2XqMewFX6KC/epn/gnP83RIfXfYxx9U+NiaHeV4VX/IfPndI8PwzVBb2JqInCR
         WcWClCzLWQ7GHBg+GH2Dsn+AO1714wTPKNPDme9EmIM74noM0mPfwt0v9KB/GVLf4nN8
         y80XKHVouxyxWUZSpOyFKZzN2xtnJjbpsHDadAoHyDFo8wO80V9NoVWmth5kM/PGGTSo
         Sk66kWQTdpNnC4jq1oPw6beQ4ygppMMRTQc/4MKHNuxw0w8sNiRq9WqtZc2kSMPnjpvS
         ZFow==
X-Gm-Message-State: AOJu0Yy+4atmKv5OrNGFanGWG8d5YSOVnVJCXOu4DNyegosZDSr2Ul3v
	oYfVtKqvEF49QCnHH6RWjxoNINojEKW+dE3bLS0s9w==
X-Google-Smtp-Source: AGHT+IE//14QcNNvzHI86iuLPgtPfWJRMsx6GhZKA14XzEcb7mRUZeg5DRwV2q1BRG1gXBNVIJsA5bZf0qzHBHpVo3s=
X-Received: by 2002:a0d:fbc6:0:b0:573:bb84:737c with SMTP id
 l189-20020a0dfbc6000000b00573bb84737cmr4345682ywf.26.1695595923468; Sun, 24
 Sep 2023 15:52:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183335.49961-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:51:52 +0300
Message-ID: <CAA8EJpo6TJkhQg9aP3B7UUFQS7nwrtsnQXLDpTTXmtSnAgTvfQ@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/2] ARM: dts: qcom: apq8064: drop label property
 from DSI
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:33, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DSI node does not accept nor use "label" property:
>
>   qcom-apq8064-asus-nexus7-flo.dtb: dsi@4700000: Unevaluated properties are not allowed ('label' was unexpected)
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

