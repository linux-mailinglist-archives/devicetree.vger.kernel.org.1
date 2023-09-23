Return-Path: <devicetree+bounces-2747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCA67AC4E4
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E43D91C20818
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19272134B;
	Sat, 23 Sep 2023 19:40:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94AF321343
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:40:25 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75FDDFE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:40:24 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d862533ea85so2795265276.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695498023; x=1696102823; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wT8NcA0y1AMUmWyCInUSAwqrGAZb9JXNryfhTfON+tA=;
        b=lQu1bE6wB1ZLFS44AE8/DfHB6WH/Ev4aPbRTj/2P5Gm05HDF3UD3Z7ZBjxWbg8DwLW
         HB/E4jWa8efN9qm44MmMn+HEOf39C2J/cnX8OKw9DDivzZ9HeSYTY3ImLIQk9rRqxmSr
         VZPOYD4ZMCLn8PVsImbT1hd0Gpj/83ul4QfDxYIppUWoBytXrnFGkY11O2RrwDufbw6I
         xw1xEEYyjL2Yd7Sq60TDzcO1oloVCT9cxX5oud/Ss9ndy8XdIqi2EjteCdfEqcR3L48j
         CM6/SNXHYyxGw45FyuCVCCdUNgokwDYu04uILsvqnOumj/7/L9TwEERrJB5cLtCq5zBu
         m+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695498023; x=1696102823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wT8NcA0y1AMUmWyCInUSAwqrGAZb9JXNryfhTfON+tA=;
        b=ASWHkodiFnQCrUbugH+/cFWy+AbFshBrHZodsKttlRuxMGIpBDU7u6OqpTfcveSDeq
         /4DSUlt5ZecXcoMGMGP7vlbPipVAHAkDmCycJa0XZFoRDZPqPgK6YCL4bd665i+pcmtk
         iTSvW/UszQEBrCD5mfhbvil0UrFv8LZTJ4hBKgPJM15wjffJHaUmFLs+oE4P4i2FhG85
         YuUvuFvTw82QkC/tGkPHX+7MoPwAltwudYzs2hlkC6HhSKbxMBCVtwFnzUOGVasrHbbb
         U7SibfPe2XWKiSVzr+9Ceolte0E2dGxtGdihOEh/HiVjXU9AbkmoPsnPxOBhSIR7fsMV
         BMeQ==
X-Gm-Message-State: AOJu0YxwLrOvVd36kZZiSZ8eEnhOXeapX5USNg6KlaYUgs/8ABikxQzr
	fFhNqYhP3pGQTOmsszP7YZnLrI2jeSMHSWeUNHW8CA==
X-Google-Smtp-Source: AGHT+IGt16ZqM8IpsPbAvffNnhzKkeBKUQu3tObLJcRk4eEHrZmw1uF2gtqAHgXcUPdPwsDWctZKSRW6b6W3/2to7Fk=
X-Received: by 2002:a0d:df56:0:b0:59f:3c81:3a25 with SMTP id
 i83-20020a0ddf56000000b0059f3c813a25mr2583549ywe.14.1695498023697; Sat, 23
 Sep 2023 12:40:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230712-msm8226-dsi-clock-fixup-v1-1-71010b0b89ca@z3ntu.xyz>
In-Reply-To: <20230712-msm8226-dsi-clock-fixup-v1-1-71010b0b89ca@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:40:12 +0300
Message-ID: <CAA8EJppstOof5SQz+fB1gDR2LPK8zs+tqJ99UUrYokZj8Z7J2g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: qcom: msm8226: provide dsi phy clocks to mmcc
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 12 Jul 2023 at 10:53, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Some mmcc clocks have dsi0pll & dsi0pllbyte as clock parents so we
> should provide them in the dt, which I missed in the commit adding the
> mdss nodes.
>
> Fixes: d5fb01ad5eb4 ("ARM: dts: qcom: msm8226: Add mdss nodes")
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

