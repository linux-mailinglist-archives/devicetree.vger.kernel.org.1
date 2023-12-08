Return-Path: <devicetree+bounces-23214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E835480A784
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32C77B20A27
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3B3315A1;
	Fri,  8 Dec 2023 15:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SupUWkl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADE5BFB
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:34:48 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a1e2f34467aso218950966b.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702049686; x=1702654486; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0smOkN0JwIYP/mQNjuHR8QDcn+P+VGLbn6lLRSQdlCM=;
        b=SupUWkl5+WKbC539iz9TsBtvH252/eXg66O3Uat5KPQCBYxcg0ihnzN2/vFqnwr/Ly
         4R6K1Y9lSwvdqhZ9rWibENFsrzdO9gl4wQ2yCMZNdHHrSuhyotjeWCNiJXCfuuUiK65R
         4gH6+MtHSDy4GjvXW3Iee2OpD7Ln348lPnkhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702049686; x=1702654486;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0smOkN0JwIYP/mQNjuHR8QDcn+P+VGLbn6lLRSQdlCM=;
        b=DPQbrRV6nUlNyU3QDMRV/PaPyFq8bNMPiQH+EnSBTJyy9VM6CaVUkdkCkDQVZ2ggqf
         Yn4TFDX0QvKmv2o00KWRd+H8geKh/JUaQ3emnc1KATtVlzt+2LKo/gj+cC+xcYNNpy3h
         LsXmFXRyrtkEcZs3DHWmNBo7tpYoQ1iqmHCHp8H7qOb/XrDQAfayBoGK+ZUWZNZeSx08
         OKXJv/YsbNXEluzJRKlw5qAkPRN4I9e/i15AVXcXrTWhk/iEvHeBEkM8JgHaD1m3ovK2
         i8RiWFtU2dYj/4B4uPg9cc166d5bplmJeNhHZEpsrOs97BNcXlP1HbN1wsoa6mlPrWmG
         re+A==
X-Gm-Message-State: AOJu0YwzERazapWfmujpDQLdVnnxV9qUB2+0K+Au/HfB071Z7XUYj0h+
	KKZtr1CayoLp4afk3kEHmOVWI3/EXi7MojUjzk+3lg==
X-Google-Smtp-Source: AGHT+IGWx06nEBIk3hasF59G6rRK49rd/flfZ4580L13Of81m7CC88Ucf7GkqMHfM4AlHeMDGpp3Kg==
X-Received: by 2002:a17:906:af11:b0:a12:635d:fcd1 with SMTP id lx17-20020a170906af1100b00a12635dfcd1mr118813ejb.35.1702049686409;
        Fri, 08 Dec 2023 07:34:46 -0800 (PST)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id j8-20020a1709064b4800b00a1e377ea782sm1116974ejv.196.2023.12.08.07.34.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 07:34:45 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40c3963f9fcso3705e9.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:34:45 -0800 (PST)
X-Received: by 2002:a05:600c:b92:b0:40c:2399:d861 with SMTP id
 fl18-20020a05600c0b9200b0040c2399d861mr61604wmb.6.1702049685373; Fri, 08 Dec
 2023 07:34:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106144335.v2.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231106144335.v2.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
In-Reply-To: <20231106144335.v2.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 8 Dec 2023 07:34:28 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XsPGvNggpJPCpF=xhkm3dOHsStycZvuVttA=ZH6=EUmw@mail.gmail.com>
Message-ID: <CAD=FV=XsPGvNggpJPCpF=xhkm3dOHsStycZvuVttA=ZH6=EUmw@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] dt-bindings: watchdog: qcom-wdt: Make the
 interrupt example edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Cc: swboyd@chromium.org, linux-watchdog@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andy Gross <agross@kernel.org>, 
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 6, 2023 at 2:44=E2=80=AFPM Douglas Anderson <dianders@chromium.=
org> wrote:
>
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered.
>
> Update the example in the bindings.
>
> Fixes: 7c631cdff391 ("dt-bindings: watchdog: qcom-wdt: allow interrupts")
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> (no changes since v1)
>
>  Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I saw Bjorn landed all of the dts patches from this series but it
looks like the bindings patch got left behind. Anyone want to claim it
for their tree, or Ack it saying that you'd prefer for it to go
through someone else's tree? I assume Krzysztof's Ack means he's not
intending for it to go through the DT tree and Bjorn doesn't seem to
intend for it to go through the Qualcomm tree. Guenter/Wim: it feels
like this could go in the watchdog tree?

Thanks!

-Doug

