Return-Path: <devicetree+bounces-2878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9B37ACCD1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EDCBA28134E
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1A0101C5;
	Sun, 24 Sep 2023 22:53:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E270A57
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:53:30 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D549ADA
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:53:29 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-59f4bc88f9fso34948177b3.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 15:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695596009; x=1696200809; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CECDzOBd7Sw1IlQRsWeZrGBWQioYp0atlrjefXDJZl0=;
        b=LARfm5KHooVaVg2agIIYZ4fxZQiX/l5ffNUVyDsp8894dvaapiAnGgB1pRvAJwGFak
         UESO+tSobe6UU1HNs63YhODKIjqD6HWF1teRamOtYnfYGIYWtMtECTTFbu6jMFzFrXwa
         OdOcGBiVV7xA08VqVzaoJzW++X+4FdE0gImIMX6d5x2Wph1guBc6ABDUNwjZo63Q0qZq
         5RgQ0FtXkuZVPVqeeC/sqMMF8QoUnxwocoEwl4JCwS/tOeUNj6tDSg6BPqq8wQAuKSR0
         pXI3nVzw8QKk6TIxDSTsR9ZaZ1gYhAbwmovQEYNh9Q6b/nlQ7K9TWaTdlqNfQLaOHF7E
         4wbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695596009; x=1696200809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CECDzOBd7Sw1IlQRsWeZrGBWQioYp0atlrjefXDJZl0=;
        b=Jy06pnLF3HJuRYfUHWo8/avfz3BBqQQfYN4oylFQ4OwbTEaq/OOyWY/s5/YTzKUwLe
         oO7fkS+s7iTgS1NsH3s9BNwXKacf/cAegSlmY0bPou19ZTJlTIKPapaG9qW/PbU6VONa
         1ZxJOFxZJ0FRs9r4DXqzhkCTBW+9JuMf2a+mj+8bA+IlBsnc6JHCrNJKt4Bnb8mmhwwD
         U5aw7SSU1rZ0c8JdWvrYorLheitq86aKFXl6bGT4zRTs2Iikw6WgnoTpyf1R0xie6NCM
         R0h9lfL2sf7PQ79CemZdirYHxdGVWvKAKpEuF/ulWO5ZD0oz8JK5f7X3Ah/P8qDLBKoE
         CDeg==
X-Gm-Message-State: AOJu0Yy5f14OWa0Q/21XUuIy84AMuW61XF04rD9WF7YawefWPNQjcrc0
	3tSifsheZxjUIZZj7rcyZCsQDHSZ9WgJEtrmKJFgJ+F71kqOpNCSNx22DA==
X-Google-Smtp-Source: AGHT+IEHwe921wPx5HEyg4aw/9FkxxX4B9PkvHunECmoUSzNQP5VzJpsZSNQJ5aAR7fCZ7mRZ89yo0k1I7fPFegmNqg=
X-Received: by 2002:a0d:c101:0:b0:58d:7599:676a with SMTP id
 c1-20020a0dc101000000b0058d7599676amr4816556ywd.37.1695596009057; Sun, 24 Sep
 2023 15:53:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org> <20230924183914.51414-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924183914.51414-3-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 25 Sep 2023 01:53:18 +0300
Message-ID: <CAA8EJpoyFsYNycq3SMqP4fdAU06w4aMdOQ3515NjjgyR0X6RUw@mail.gmail.com>
Subject: Re: [RESEND PATCH 3/4] ARM: dts: qcom: mdm9615: populate vsdcc fixed regulator
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, 24 Sept 2023 at 21:39, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Fixed regulator put under "regulators" node will not be populated,
> unless simple-bus or something similar is used.  Drop the "regulators"
> wrapper node to fix this.
>
> Fixes: 2c5e596524e7 ("ARM: dts: Add MDM9615 dtsi")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

