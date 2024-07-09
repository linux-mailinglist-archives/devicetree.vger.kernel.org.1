Return-Path: <devicetree+bounces-84378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E52E92BEA6
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9EA7281CE5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609BA19D88D;
	Tue,  9 Jul 2024 15:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TRwfLKXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA41A19CD0C
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720539747; cv=none; b=r/rAEoS/aGYni3UU7Elsy4V0SiUWdwm/MDnvLvqLiK6tw+Zc37XiDAIdjFFsMR+Q9wUjSFSr5e69F7u0Kb8gyOzBs4TNKLc5yji6Dgi3Gr8+72TGX6xoZSPm7nwA4yLaAb2kUs0V2Zv42KfIWX5AwyF+87VjpuJhRT6RcQqd2D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720539747; c=relaxed/simple;
	bh=IDnYi5w2LkIAtpFV1WzjyImHgQ9ZfZokiHY6+eIhub8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RRTq/7lyHissWS5jGXu/L91OG+PZfYI9Ut7+P9VVovuExi6sONRtg2PCGr2y4/iMvQRryUl5OJki7cduRhboKEtQMQW9uEoKMr7Cw703qftUaGoIqAyWKSLxAmH921YsxE+xb+mg57rtzxXCoD4YPxCs1gg7nhnPiNq+AC6kW3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TRwfLKXE; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-64b29539d87so46753837b3.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720539744; x=1721144544; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X9g3Ubfmw+SgcZ7Yd9+hBldZBcIN14Yh7a3NFHtWpvs=;
        b=TRwfLKXEL5VsoP2+wvhJXYKLx0+GP0bscFNxmDzFMtHqVyXMpRxe4+ETLBts5pxdZp
         RQxhweRlezpmT65My52hb2NawsIlTA5wrTv0d2MnKkXLVGSLODYd4OzhqyfAKp6b5aDv
         wD9DCsIeS0gxlAWSBzp6GOCXbgxUTvCIrqq+QSRKytbqXmdGsNv8EBQRWZBGQloS2NAr
         TItvKu8dMe8W3I2KAQ9p2IZ+9vgiF3aSVk/TvdZqvon24zz76zETQqr/Uc98s+XX/R44
         bwQ1DQeEKIQ1E1z3jPRqD+hYjOfsm7W9olxBZ6hnLIK2wsBisqYQgOgb7fKVpH303C0k
         rkhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720539744; x=1721144544;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9g3Ubfmw+SgcZ7Yd9+hBldZBcIN14Yh7a3NFHtWpvs=;
        b=erYNDr+zE0O1MAPaYMK0OgZWhAXVSMpUQnL95GY2IZtAjbubBSPM/K81hUq+7uSQsm
         yuZQ9npkXwGG4ewv9YF+JQJxB4vkVwHaUQXIoj2dU/nyOrxZFbbEBEK89UsFCu0/8Rdd
         Sn0jU/RHjfFMLB1I7ghUjPMhjAch5XZFf4M7H86+WaIpZMyse4tswgNckb5bAByhciss
         Wd3ivwUjMPdlrf4tEy1jj9YyKv0vRbbrn0rDR8rSuhViPTN7144vQy7MmLuf/vL9ng45
         UFjEfcc7Qp4YrjC5FU1ISwjPP2PU1C2KowUbMr5LrxX8VN6+ckGK3HZPp/d3XIJlotyZ
         Bt6A==
X-Forwarded-Encrypted: i=1; AJvYcCVlLC3q2JElq9cTZ+JXayqV2AFbVQWVHYQxe1xjSwahWrc+WbvgUrIT/C1UG/XHwq2WGQAHIz5IRzUPwU20SEYRVrpxiGr/fcDmSQ==
X-Gm-Message-State: AOJu0Yz6aqD+AOkLvF1pY+Na7o99uu6p58mGbhYSuZuNWSzdcZTmLEfo
	rJs3/6R02tievxzL+jVJR6m9ATTE6TDsrqbkGE0JIKZul27jk/dXprNMluhfgl9eWfh8HqCs/LQ
	I57Oq9mZeUp1fVsnUKQVWI+mKqO9fIiHEpwyvHg==
X-Google-Smtp-Source: AGHT+IGIeAAB+Zbo9F+WEJ2ntehsPTH0AozBaKItZWisLbiKVixjbm/yHkzfeSzldmE/b2T8w3/wYkXX1FUE8aCOXZ8=
X-Received: by 2002:a0d:e809:0:b0:648:c8ca:f2d4 with SMTP id
 00721157ae682-658ef24b2ddmr30424457b3.27.1720539743849; Tue, 09 Jul 2024
 08:42:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
 <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-2-5ffeb16252db@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-2-5ffeb16252db@quicinc.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 9 Jul 2024 17:42:12 +0200
Message-ID: <CACMJSet_FX85rwa2JNBCSfVKUQbZrNdi-ya4KnJjNOumrJaOfg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom: add the SGMII SerDes PHY driver support
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Jul 2024 at 17:16, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add the SGMII SerDes PHY driver support for QCS9100 platform.
> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> platform use non-SCMI resource. In the future, the SA8775p platform will
> move to use SCMI resources and it will have new sa8775p-related device
> tree. Consequently, introduce "qcom,qcs9100-dwmac-sgmii-phy" to the
> SGMII SerDes PHY device match table.
>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> index 5b1c82459c12..0ea7140564a9 100644
> --- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> @@ -353,6 +353,7 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
> +       { .compatible = "qcom,qcs9100-dwmac-sgmii-phy" },
>         { .compatible = "qcom,sa8775p-dwmac-sgmii-phy" },
>         { },
>  };
>
> --
> 2.25.1
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org

