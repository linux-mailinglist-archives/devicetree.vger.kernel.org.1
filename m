Return-Path: <devicetree+bounces-2873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2497ACCC2
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:51:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E421E28131D
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C56101C0;
	Sun, 24 Sep 2023 22:51:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EAEA57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:51:44 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF9ADA
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:51:43 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-59f55c276c3so29217877b3.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695595902; x=1696200702; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XT92F+VX1pObllF5QiGwjVv1yGLhUUOiTzjpjdANyB8=;
        b=rNcJGyuyR8s/wZqCk86cxcHesMWOLLQ0O8V9Tq3s3WE+mhxSJNAU26amGIPY0xCTAM
         l+mwXTh3ktu0Y6xbEtN6AD2xPgWM+j2Mp+E8jgwuOIvrLkeUgUJLKPWHnXFphUNNpFVM
         j8fEZuoiC+vlmvrDb449zcxUEuAn4YLXUSj8UDdQS9h0K5ua4vLxHqJydhj5iM0zA9Lk
         OLAEPpXn1ViqyTGeSNvgWiDF1dfgA0FGs9Zppb+9GxUn+pc4vtEqjXLbgKT+HscvctJI
         FkUxY8s02hUirmpUS8vVlH6FpATlHMGakjzfaTkUmp7bAIv5YKVNBa6oHo/cxZmEYiLQ
         HM+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695595902; x=1696200702;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XT92F+VX1pObllF5QiGwjVv1yGLhUUOiTzjpjdANyB8=;
        b=GNtaJF9oJ5xnh4erLJ9xVOh81FoAjQApB6kOqMPYTUTWamzDtu/EEMTJidFXO8vHyj
         jXBQVVAeQ3X0athEzKIgfZfim2+KhTx8dTqGwf9nkBZu/MCULRt7BGQ4xqjQO5WNMcnq
         o/5hee8t7lryf2RUtqmclQvODGcmRnQY2TZiK+Imo83NY5Uy17BTLOWlrBtP0kewiw6/
         gA3rlEb7oDVjIDT+PR5+mGVPR/YlwcpHcUnW7SCoSiFRYqopi4NZpn9iZVGajt9Q8R23
         tvs+J3zoLxwgm3f298sbnY+ZFs+qjpC1TgJeOuysWrvdZuey60N25PcYAthndiSedl9n
         0DCg==
X-Gm-Message-State: AOJu0YwdQG3u7hUS3enhqFogyxZuw72SN3cjzI3lHCIqVA1heeIZ6QGD
	pMEnzDUroLHVy/eoLl6L9QhWwJG7r7tbwmW/oMeP3A==
X-Google-Smtp-Source: AGHT+IH/peOCCFquz23wU9RxewU8UPnFL8/DlXPpvMWpBaSjdz1XxfeMfyUaXyug0k4xyNnOUT2kiPrP39X+udscZHQ=
X-Received: by 2002:a0d:e6cf:0:b0:561:206a:ee52 with SMTP id
 p198-20020a0de6cf000000b00561206aee52mr6249571ywe.24.1695595902344; Sun, 24
 Sep 2023 15:51:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org> <20230924183103.49487-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183103.49487-3-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:51:31 +0300
Message-ID: <CAA8EJpp4ME4gvSKt_V-MHC1yi4CoYFctw_9qLZbcDAfPMWJQ+Q@mail.gmail.com>
Subject: Re: [RESEND PATCH 3/3] ARM: dts: qcom: sdx65: correct SPMI node name
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Node names should not have vendor prefixes:
>
>   qcom-sdx65-mtp.dtb: qcom,spmi@c440000: $nodename:0: 'qcom,spmi@c440000' does not match '^spmi@.*
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

--
With best wishes
Dmitry

