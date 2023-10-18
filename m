Return-Path: <devicetree+bounces-9699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 706BC7CE0AD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FEF6B210A8
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B664137CA0;
	Wed, 18 Oct 2023 15:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M8CqiKxN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EB83C1E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:04:28 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D94BA
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:04:26 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5a2536adaf3so93236947b3.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697641466; x=1698246266; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N9GYwwthR37OzH1RslWzFkCOD4tUhZyxxnl2voBYq0w=;
        b=M8CqiKxN0LSOkdXcBt+PjanKo4A2+IJnwQYrSYk374awZ7ziK+VM1ykBylSsKBdmiI
         T9mtIlaZwgbHAhIyhDxag6GBy6Q2xYVMv1TiWz+mwZ1FyghPTWsyuDmYJojQ/5PQxlj1
         74PGDsd/kx3c0ihsRC9y8DtcfCbjh72TQkCgUJn3zgSfvMcs59HeFAPexSrOryKcarp5
         yifxu/PKf6DMU4bJcc//ECb8SocKEiOMg5vqm3eqet6jlb+tWAMtn3gU4KxiaP2ba2aD
         bW/+dT6U4Fo3Q5FZ7ZnqOZnEcrzNmc5BAAL4ebJSq0iC8RaVIZyNkr9NxLybMOfb58O6
         Vl8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697641466; x=1698246266;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N9GYwwthR37OzH1RslWzFkCOD4tUhZyxxnl2voBYq0w=;
        b=AG2+SSFjWW329UUxbpb9ZwUbxtQl0t6LVqS+0bpN2d2mROp6McOdREVce0JhhEqWtX
         QZV8nxCQwTxEpaiKAWVHz8catsKbkBt4Nc5zsGPe43OaqrQkm3G4nmwv29sdHGitSrwn
         aBaZrun2loaXln42b86rtv2stNzJ5FNVpGRCDaxg2bkxQnUSRZVjqMETovaB+nPQp01q
         63gNWdVRN0d9WiZ0ykJOAxAikmE6Hlvq6x7hvIIe9bkSyq+JyFdM0Oi6WIH0KbjElRxV
         kE1lgs0ScQPynabculvDgNtQBWLF/+vpA0n/JXH4d08gyofrmrdYfiiieky48r0nOc/Q
         tT/w==
X-Gm-Message-State: AOJu0YyVVmpzqwjIK24k2OZ4kSTC+TrN2NucfJvbqiuW/F+yQPwJhP4w
	7HR6GWG7IVMrTE26mYz99oqi685lG2U2qKww59ayjw==
X-Google-Smtp-Source: AGHT+IG0MYE+W6gKRDhqufCOvzZlId8cAWJbd8HgweD1sVQ532lmNIhX89oHkxtz+UYoi173UzKYxI5bfYwzwiTJeD4=
X-Received: by 2002:a81:8407:0:b0:5a7:a81d:e410 with SMTP id
 u7-20020a818407000000b005a7a81de410mr6147875ywf.18.1697641466108; Wed, 18 Oct
 2023 08:04:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Wed, 18 Oct 2023 17:04:15 +0200
Message-ID: <CACMJSev5ftXy0di+knVmsMRUEtYnR8A72yzfrvf83JTyxWehZw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sa8775p-tlmm: add missing wakeup-parent
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 18 Oct 2023 at 16:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Add missing wakeup-parent property, already used by DTS to indicate that
> pins are wakeup capable:
>
>   sa8775p-ride.dtb: pinctrl@f000000: 'wakeup-parent' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> index e119a226a4b1..2173c5255638 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
> @@ -28,6 +28,7 @@ properties:
>    gpio-controller: true
>    "#gpio-cells": true
>    gpio-ranges: true
> +  wakeup-parent: true
>
>    gpio-reserved-ranges:
>      minItems: 1
> --
> 2.34.1
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

