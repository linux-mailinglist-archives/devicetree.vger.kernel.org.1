Return-Path: <devicetree+bounces-14352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4617E3AF3
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DE66B20B7C
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94C12D05A;
	Tue,  7 Nov 2023 11:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CHQ36Dtu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833332D052
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 11:18:18 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E16611A
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 03:18:17 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5b3b17d36d5so55513077b3.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 03:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699355896; x=1699960696; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KN01AWNQnH0NyxudNjwGJF1KtUvDBJzjiBhVjhok8Bo=;
        b=CHQ36DtuI1h5Ii6pIJO0nrIFacS6P6B1fdYiEBk4aLEcJftlt4pgUKGB70JghrGgWV
         XcEAToI6h+T0Xy2GeHV49d2j9kcuIuLj76r53vBAsYFSXW2Z6WOPB0olfovh9U+WcAYQ
         g+LxjLZY97eYwTuSoTiBeyEAjt+NhPjpNebP0Usx5nUkinIn3pxu0gQtIrjlH4aDbp0V
         Q0W/WKf1Mi14/5qG/tIblH9cnE+Wgcr83zYPVKnNqcdXF0LhYS5Ig+EfFXUkKp2pw9EK
         YMgLu7cvIhNDr9igF9XEn5+gQViwwh44rzpb+cbUam2VrTL6oCalz/Sdut25tVXOTlHe
         pe8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699355896; x=1699960696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KN01AWNQnH0NyxudNjwGJF1KtUvDBJzjiBhVjhok8Bo=;
        b=qeY9Gzw0cp8l1cc2As24C01ztoAzZDcExkJTUt7l3lfgKRn1dIc2mfkV2VK/mYLx86
         QYYsWFSktxtS6a9TpsJ6cZEkJuFYlujd1BFbEu+l9dBdLxOPJHDuMCARh3T8LZQ+h8ZT
         VzuoLDq0NgFAyZ/RPGrD8NbmB1IgErOv/xRgPD7eokKRUW07FJ2TMFvicztFGg5mJnp7
         qQzShrObkkax0rfJ5ZP3IuRP8oD1EgpXUhJfV3EgHgQxwBV2L47g4iOVW/NWmGBmOPlc
         CkqpS0jE4bqLUfJ2RL+mAbMkqLAmVSfo2RW6YlL48osKt1YbefuvmwPCwrUKRMj4jSCs
         Kn7g==
X-Gm-Message-State: AOJu0Ywgt+e/kDdzjTjmNMcF9IcfEuPpSxvGPTMp9FGBhe4rofvNdOBS
	nBFUsi8fyvuh8Ps9FO7uck3TP1keEdW8/iHEUfJL0w==
X-Google-Smtp-Source: AGHT+IFr/kWuslY+4gpxV40KBsp6Zix+rvtsKK0R1/xwG0WKsh6mfDW/4RJkC0L2j1gV1V+UO4d9BtS7jJktyKTBvaM=
X-Received: by 2002:a0d:cc95:0:b0:5b3:5d35:2398 with SMTP id
 o143-20020a0dcc95000000b005b35d352398mr1482435ywd.2.1699355895893; Tue, 07
 Nov 2023 03:18:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107103540.27353-1-krzysztof.kozlowski@linaro.org> <20231107103540.27353-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231107103540.27353-2-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 13:18:04 +0200
Message-ID: <CAA8EJppm2wNrZ0V2xVz4GJHcY=dHYek3_wvrXYPj3HbJ039PeQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc8280xp-x13s: drop sound-dai-cells
 from eDisplayPort
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Nov 2023 at 12:35, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Qualcomm MDSS Embedded DisplayPort bindings do not allow
> sound-dai-cells:
>
>   sc8280xp-lenovo-thinkpad-x13s.dtb: displayport-controller@aea0000: #sound-dai-cells: False schema does not allow [[0]
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index f2055899ae7a..def3976bd5bb 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -573,6 +573,7 @@ &mdss0_dp1_out {
>
>  &mdss0_dp3 {
>         compatible = "qcom,sc8280xp-edp";
> +       /delete-property/ #sound-dai-cells;
>
>         data-lanes = <0 1 2 3>;
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

