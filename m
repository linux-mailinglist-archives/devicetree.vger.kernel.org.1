Return-Path: <devicetree+bounces-2740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E087AC4BF
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8EF881C20845
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF15021341;
	Sat, 23 Sep 2023 19:16:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986D333CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:16:53 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89780194
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:16:51 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-59f6492b415so4112807b3.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496611; x=1696101411; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UVcs6WaBObvyPdVxt4a5ep98U8wpHctaEIsm3KAKh80=;
        b=J6VcQkqQc2z9FtFHX4tE0jeBVeL8wBkqFXLesQhydNyG3xjNWeQpKSpAZmkDprEZIt
         8yKF6B3bXrG4yr5TCHRRbVbnm+xd/KAQ1qr8GMvcT+ForXPvAra3mm8nKOA6EY8ZcxCL
         V79x5bSt0gr6kn5wEe2hj+6aAaYfzhJFvD6N1aaUY0swTjrqyD31iUeHw7izc5pHTwyi
         KEAbmB19do8DFfqTdsvmB0L4J3BrZa59fGnOM7sDjZQjNg+O6BR4QMsi70lgScOmTCol
         JxQ41++h9EiHeSDGoDpMdPBrWk4jdJ2xHgmRoOTPnlML7jzBA35POHrEP+uLDQ48c9XM
         DwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496611; x=1696101411;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVcs6WaBObvyPdVxt4a5ep98U8wpHctaEIsm3KAKh80=;
        b=Ddg6lRTnvsEGodtFNkpiwahWu3LwwiVyQKqRHVOTrNginDnRHrmda8Op74T1gBTcuI
         mCh4ijGGqJ6NRamMEiJDclcvoixGxzX+oV9AR48aKobAWBze9xL84iMgDAEO2VkeCOmT
         x9DZI6eO8XhzY7VPMqkAuz3jingGrERTvNNlZ6k+WsrWl2ZZKnwSCpmqcedJ8i+9LaJE
         RAiXq6xo3wUEMXtnwGB9KifXG3fnZsRhNCY71BU3pfSuAGQD0FLXKDazqumI0npbaXiZ
         FcSIF7EXnhnxvL29dUOcyDgtXDjhuI3tWDKqJ4W6+vNeRjGFRXux5UuQ8UazeyJRIQzW
         EJ3A==
X-Gm-Message-State: AOJu0YwgPmg99eAqRc01UV8OdOIPQw7PCqlT/MykIhBx5FB4FY4MQP41
	rvmnStb7L/2pvALUFB2IpSTEVd6gqbsNu81s34L7/A==
X-Google-Smtp-Source: AGHT+IEy0vvL/85ZN5uulULrJQv0Z1SuezWIFLtE1yQJUsfrQPn+35lk02l8OpHWlZTaEa792MHcx0f3bd7yvT6Y/GY=
X-Received: by 2002:a81:4916:0:b0:59b:e743:630 with SMTP id
 w22-20020a814916000000b0059be7430630mr4069305ywa.22.1695496610786; Sat, 23
 Sep 2023 12:16:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922-db410c-adv7533-regulators-v1-1-68aba71e529b@gerhold.net>
In-Reply-To: <20230922-db410c-adv7533-regulators-v1-1-68aba71e529b@gerhold.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:16:38 +0300
Message-ID: <CAA8EJprcJmU060FojSfG0d4uWnS5vQnm-R1sNPqdvp5Qxm1Q3A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: apq8016-sbc: Add missing ADV7533 regulators
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 13:50, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> Add the missing regulator supplies to the ADV7533 HDMI bridge to fix
> the following dtbs_check warnings. They are all also supplied by
> pm8916_l6 so there is no functional difference.
>
> apq8016-sbc.dtb: bridge@39: 'dvdd-supply' is a required property
> apq8016-sbc.dtb: bridge@39: 'pvdd-supply' is a required property
> apq8016-sbc.dtb: bridge@39: 'a2vdd-supply' is a required property
>         from schema display/bridge/adi,adv7533.yaml
>
> Fixes: 28546b095511 ("arm64: dts: apq8016-sbc: Add HDMI display support")
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

