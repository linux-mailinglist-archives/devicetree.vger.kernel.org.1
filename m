Return-Path: <devicetree+bounces-10104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 026727CFA98
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF03F281FC0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7EC225DE;
	Thu, 19 Oct 2023 13:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W/dphmMd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B171179B1
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:13:24 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8D6411B
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:13:21 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a7af20c488so98500447b3.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721201; x=1698326001; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wfIe3DQvE2DP9VdNhWi96S3+RqWt1fdYkzYEGnn8FJA=;
        b=W/dphmMd8O9NzE1AyoZFDI7MsjM+oWhgxCO1QM8q03j9aGq7a69/ERC8IXTBy5A3Mm
         ahC9MQxl6+5QI2dUnj+tx+gZYNP+Lm1fhrbcHFXYxyxj3bj/5VC/T6YnTRJIObI/DFjR
         wYPpiuzq2WLGpjCQC1czKWnWW0IbyIHfMt7RNUgTwMcPch1fVs7TK1QbS9NWv9J3C0cx
         fNYeNVRtlEmttgL03ZGRl+1FgV1FFP/2nFj6MGX6TPNbii2B+W+sxlSd14X/fqNJvs5/
         R0s/ZaD8qKTdnwacIGH/kZZIQhJ78/ZU1LgU6CjyZdWDvRReLC3gblWyYQiFrPFU0NUW
         wZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721201; x=1698326001;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfIe3DQvE2DP9VdNhWi96S3+RqWt1fdYkzYEGnn8FJA=;
        b=b6G6sPx1FwZmPKCU3pL7fyNpsniFUzVH3lzEA1SEo0ORmYKrYKA48RM1coxWGtM6Q+
         dY3RB0Ml6srIsDJ4d2g/ETp69fNScp9B2dgXnYH9xq5RfH7qq2Huw1RYnRf6gFWdPGJX
         Z0VVOF1823faF8Ixu01rF96cRmDQhY8MD1czFCnq6rAjk/3rqtMzEBnPlal5bf+MJqV9
         1lvuufYoQNg1bE5g6Fx2B1myljqSgOvII0hu7sIqa7rr7e1W8+Te1h6Pmv4guRvktDbK
         71l81gchrYo9tBP3Zkx5+O4Qb+WeGElEeukMr//UY+6x+CS2YD/WZAqvm1OsT/a3Y777
         xNLA==
X-Gm-Message-State: AOJu0Yx0Dpxojhoe1k+XZ0dAokOpl7Qt/b/0d6+VhJR4IMDXyj/cI9RG
	y2aX9GKWRcz3JDsmvBtTSFuJvd0L1QOog8gnLZkZNQ==
X-Google-Smtp-Source: AGHT+IE4JE9GLBbOu78KNMBIvAZsPKZ30wmFMBJhVsQiY/NhN+vDMII7uY55LkCXBQg5Akt5Fs7o3MXXfuTUwIhvOjY=
X-Received: by 2002:a81:4e09:0:b0:5a7:c97e:39e3 with SMTP id
 c9-20020a814e09000000b005a7c97e39e3mr2492221ywb.15.1697721200975; Thu, 19 Oct
 2023 06:13:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697694811.git.quic_varada@quicinc.com> <9ea8deab1c8b49008acb91510e9e1b1c1e0b4f3d.1697694811.git.quic_varada@quicinc.com>
In-Reply-To: <9ea8deab1c8b49008acb91510e9e1b1c1e0b4f3d.1697694811.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Oct 2023 16:13:10 +0300
Message-ID: <CAA8EJprd818gCFBSOWPiLhPq0O4hPnGbwBPWQougqwmuUg1kqw@mail.gmail.com>
Subject: Re: [PATCH v4 3/9] clk: qcom: apss-ipq-pll: Use stromer plus ops for
 stromer plus pll
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ilia.lin@kernel.org, sivaprak@codeaurora.org, 
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Oct 2023 at 11:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The set rate and determine rate operations are different between
> Stromer and Stromer Plus PLLs. Since the programming sequence is
> different, the PLLs dont get configured properly and random,
> inexplicable crash/freeze is seen. Hence, use stromer plus ops
> for ipq_pll_stromer_plus.
>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4:     Update commit log to include
>                 "What goes wrong if we don't have this patch?"
> v2:     Add Fixes tag
> ---
>  drivers/clk/qcom/apss-ipq-pll.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

