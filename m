Return-Path: <devicetree+bounces-21264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B15D8802F91
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 11:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CAABB208C5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8290A1EB39;
	Mon,  4 Dec 2023 10:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rFJxYK4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88644100
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 02:07:38 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5d3758fdd2eso38156937b3.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 02:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701684458; x=1702289258; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mOjFu2drG+hMnp/Q97syICFEIr+VaeLOs/zLd33yc5o=;
        b=rFJxYK4S7F7dZ3XC7itCQIM3bvSy14WUCyRzBq9RNkO+WjnhPqv8Jal72I/c/BbBRW
         yrtNAjsw0/Y94GQHtTNq/QzFE0XESHXl8rJp9mYta5Mp3nCPHuH1cs7vkf39vFEKeM9F
         msKv4P4OqhkkjTIyUG6zL73k/iiZydzn4iOYgTy2186Ro6cFQXjGqUrGFPPJwFASwAeZ
         r1wUJb1lWCYxmmYqcUVgbd8HagsKXNCgY16QL300ZnfaDzPWFhFQ0wOhrJj7r/IW5J1o
         52rFLzU99NVjYaLbht/8TOn4K935hTEzAGpDW27AU6Jf3z4jt4KQpMyn4zL5/5cEmGGj
         HOMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701684458; x=1702289258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mOjFu2drG+hMnp/Q97syICFEIr+VaeLOs/zLd33yc5o=;
        b=Ie1OSGM57q4UG7sGNoGRfTN1idQBVCA8IcB4pBNAUkPcvjI3Gf9I/aZBHvcufuw9fI
         FFbVHWDaJCAviKtl8bzOEFOujldUdeRvZ7+SIy+0R6Png30jQGiBsxl2hbHfltNhjUZh
         Eke0mBs1bd+U/tOC3G5618VICN7sPoaYzr6ddgpYcv/29HzVMctYBF5Ew5V0bOL1bym8
         /QAv35jvvDNX2sGk+RcglJSXY2oKZXjv9C/AbItMzeyrMRc9m7kdJxsyW1Kdwkr3B1/W
         2GFqtOXwRHkfjWIdI3DdFLIKSQFlCLL0LGzryv6+7Hze1iN/k5tGRrCtuR1KstOlxs6y
         bFyA==
X-Gm-Message-State: AOJu0YzX+C9GzLUxrStKNroUojIyCNmCCqM4w6F1LycK6sJp69xNGGLl
	9Hnr3tWXkVm4r3GayhO+v3vR9kxOCu/HP7nyNC+hlQ==
X-Google-Smtp-Source: AGHT+IEoge3/myhs2BcCDEJp4E9gpYLs+VQjOagFp3dj4nwSFFRmEaUr9A1PcGSVVDhiBSqVcGb1yW5jwtTHpbrMvxw=
X-Received: by 2002:a0d:e881:0:b0:5d9:1524:e315 with SMTP id
 r123-20020a0de881000000b005d91524e315mr320677ywe.17.1701684457823; Mon, 04
 Dec 2023 02:07:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231129155738.167030-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231129155738.167030-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Dec 2023 11:07:26 +0100
Message-ID: <CACRpkdbXLpdthrSvAFn_5EUBN4==_mbQd_QpKtQr0O=wxV+gYQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sm8550-lpass-lpi: add X1E80100
 LPASS LPI
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 4:57=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Document the Qualcomm X1E80100 SoC Low Power Audio SubSystem Low Power
> Island (LPASS LPI) pin controller, compatible with earlier SM8550 model.
>
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij

