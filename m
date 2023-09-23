Return-Path: <devicetree+bounces-2743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C817AC4D3
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 37B9F281EC9
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F2C21348;
	Sat, 23 Sep 2023 19:26:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B353C21343
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:26:10 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9226A194
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:26:09 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-59f1dff5298so40082667b3.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695497169; x=1696101969; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tZizts65y01ok+ES2EUhAYAn9GXHIb4VmooXZajucCU=;
        b=uNeVk+4wrEtA25qCf/0cc+V/J0m5Bv+FMDG8kGqEEoFlimXmspGlZ471bmLaWTR6Td
         svLBkwjoQ5RijQ121IJl/hmiuNKyS+WT/T2Gwm2T/sOGLUGvnXRo3v/tlVCdffyi+8zs
         QB+TT+5b2sh6nB+K0vELCI7ByecLH9qX4fncnhD3sxMhUxl2+l1WN9A95ggUhWwsLGKu
         biMyYisQOb3tnAnGiB+x2aW3r+EqpPceYseOmI29PjY1CaPZ3O8/+HKoqB8vx17UM/uy
         lUTNlH5O3A8vua5hzsHsd0MNdDlyUan+qr+hUm6Ar+JALhPs1eztA5WOu7f8XfcLK8mD
         NqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695497169; x=1696101969;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZizts65y01ok+ES2EUhAYAn9GXHIb4VmooXZajucCU=;
        b=nO1E5Tb0tqDQSRjy56K3jw5M/9Kp08NTgECEwK57fp461ep/iI7b9npFeHkpDqaqk0
         jMRvVu1mJk9XOF+uFEwe6esa8lpSZnwxRm0u03EgTsMASro1NMAykhojpvtf9F6u65qq
         DH9GMTlK73FxDkRczMaGztzeWp9v63AzuP8exec3vPiVYv+NfH/GuH3yBS8NMn0wr2io
         BWzEh0tdm32n9IKuau6wY8GdSoeOhn7NP3mHm26AlBcZm9wYN+F8aGkLppPmHUM2fRSi
         K6qTYYV0Dyn22yV/8gwbQD2IJZUfXxvtGDihet2UNqT3HpzUP8wvki8gGckm1tY+bHuu
         hJrA==
X-Gm-Message-State: AOJu0YwIh0r+dO9/Dx2r9WymNHVZVWCKZsab1cqjg1lRJp5exCjkMnQc
	pE93bw8rS/ORZkeJfK/ZkZ8KoKUl8ssukDHTHYDj2A==
X-Google-Smtp-Source: AGHT+IH8xd9FGQCscz8xMLf0DoFylip6IAWZhY41aoUSaGynGex3s2gK+VocIMx3e8QuWNuPxfssl9IzVZ3Wrlq/3w8=
X-Received: by 2002:a81:6089:0:b0:59b:4f5e:12d8 with SMTP id
 u131-20020a816089000000b0059b4f5e12d8mr2866968ywb.47.1695497168744; Sat, 23
 Sep 2023 12:26:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922-msm8226-i2c6-v2-0-3fb55c47a084@z3ntu.xyz> <20230922-msm8226-i2c6-v2-3-3fb55c47a084@z3ntu.xyz>
In-Reply-To: <20230922-msm8226-i2c6-v2-3-3fb55c47a084@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:25:57 +0300
Message-ID: <CAA8EJprhhUN6Txbiyvb1Jk8mEnX1bxhf-WWcDU2J2WH0uVF9kQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: qcom: msm8226: Add blsp1_i2c6 and blsp1_uart2
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 19:56, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Add more busses found on msm8226 SoC.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 33 ++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

