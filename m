Return-Path: <devicetree+bounces-17846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8D77F448B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D10C1C20A18
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6CB920B0C;
	Wed, 22 Nov 2023 11:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z84e2FyW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C7DDD49
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:01:02 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5cca712b715so2506497b3.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 03:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650861; x=1701255661; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E1ksGzAKOZZ19DHQumvLnarTHkKv0swz0fHk1UYxyII=;
        b=z84e2FyWhNgTzDFIwHCcGOSgmOFkjUC9uS1C83rtpnOdxmuAzmcrOaLIfv28wQpxFj
         wacpD4tTPohPEwdgKzhmy3lFnE4US+LbFGvSTKkVq5jY+biYNBgd6ZuMTv8Jbj2SUt0d
         1poLahu00c4JQPvze7HDrQf2PWG8izA+OS8kPsZTWE2byVEKJlZUokjgyddeJ5oBgL8S
         LDh5gYjJv7ICyY4O/KnXS6fzB5T64e3A182r3NZzYoM0wa+9GMWObJTAQTRFxkGwQmn3
         DXu+V18l3ECEO2M5XwIBuB2mIEmd6x0C7zF69Yg2dbCKU0VvL2cUCsEt4+f4WnoIFBPx
         KjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650861; x=1701255661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1ksGzAKOZZ19DHQumvLnarTHkKv0swz0fHk1UYxyII=;
        b=oyWsTeHFfWgsM1Mb3c6V2i2Gt01WkCGfgL/NZm9cD7l/WDp7AIvqnGU5ssjExg+4Rl
         K/O0hJRZzMpL/W7YpP7EKxkMDXRAJi4LcynOYo+NbDBEtcTOgu0d3OHyzxLBtmnILkrk
         WXbBblLni6oYgfKHsYWxPF3oIi+trLA/S+a/cAZ0L6vYfw4xHAbRyqpTOR8xnTF8pizi
         XCF/EQse0bORIRDCGiz5NhN2p2rm/8HHTqpyfko4Kg99e8V2QteRy4j4XYt8ddpKVp7M
         j1ayPYuOrRc8nu61i0g9xMMaJJdJf+P5qMkHHq6rHqWoGIWqpPaFCbmnLB3T78uonDE6
         IjSw==
X-Gm-Message-State: AOJu0YxmETzlQium1DR28nA0Y3n55TTQxLYD0JLeqzdkX5fsvjrNx22g
	6+c93iel1zM8FDb3oFXBr96yXe2cCu0gmrbIfzHKow==
X-Google-Smtp-Source: AGHT+IHoRdzbQlu0J8Ssj0glEYZDjALA6nej4rxbVshhp+npDmWQzumr5ZaFvsNUewuRReubm7cet2KDcTxS3Tt9Xfw=
X-Received: by 2002:a0d:d045:0:b0:592:1bab:52bd with SMTP id
 s66-20020a0dd045000000b005921bab52bdmr1639347ywd.39.1700650855657; Wed, 22
 Nov 2023 03:00:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org> <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:00:44 +0200
Message-ID: <CAA8EJpp=dpN+v7pxPMAzbH9xSHgydk+39GkjmuFA5yfPcCzqow@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Nov 2023 at 12:56, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The Qualcomm X1E80100 platform has both eDP and DP PHYs, add compatibles
> for these.

Are those two distinct PHYs or is it a same PHY working in either of the modes?

>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 6566353f1a02..190f61c1d0f9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -21,6 +21,8 @@ properties:
>        - qcom,sc8180x-edp-phy
>        - qcom,sc8280xp-dp-phy
>        - qcom,sc8280xp-edp-phy
> +      - qcom,x1e80100-dp-phy
> +      - qcom,x1e80100-edp-phy
>
>    reg:
>      items:
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

