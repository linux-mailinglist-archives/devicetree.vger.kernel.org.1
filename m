Return-Path: <devicetree+bounces-2737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA537AC4B3
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AED941C204DA
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F992111C;
	Sat, 23 Sep 2023 19:13:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D33433CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:13:54 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88250FB
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:13:53 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-59c0281d72dso48341707b3.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496433; x=1696101233; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZmYNV3oT+zkVAf2ugnkULn4izub45DJoleWbLBZiLk=;
        b=BYmUWmHm1d+2YeSfA6FrjZLsVZIWFYDvO+oimM5AK1Ut1MfL9t6+qD0oiN7kaG94e0
         KKBLl867I3svVBLc4CWICmmboBjCFPY5D+IJtJSFiXUPcp/mw4jkteJuu7RdQfzBF1x/
         OZtYgkJrUE8ncCeNi3NQPI6wa0WmgYRuTJQekEzFg3ShGcFrWD2r/NR6DjijuiQrhlpr
         54vKvq52qjLHw5z/8fdmCfm8HFwR5hg2fU4PadZYdQhm6p2ZehRM0HQuz/xV0w/oP4TY
         2WuyrsWKKcRVcLsN5y7CH9gjiPAQNsVj8pneQf50dX2wk5lc8dp8to1vOQvpyv7OEw76
         bwwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496433; x=1696101233;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ZmYNV3oT+zkVAf2ugnkULn4izub45DJoleWbLBZiLk=;
        b=aNGUFAzAyt8eFTrg75oAuLrm/vwnOI4LymmnkOBL9JNN3PI7GOkLsHVZB2Nsq50Io4
         PUnXeFS2egPILmJTTFnWlodP0xPa4vJ+0Z8rCzPKCLv9S9b4kaqf276VLT43NLObuSUR
         mdDDqAy3wuWecX3tdd5p1lbrmiCfgWIv5G9hBHTlproZeyKSykMnCjX/lWocxhwB7GO+
         6YW2Eb8/oW//8RbsgsANTXNR+ShGfNeeV25TdZVyJWS6cWwJBY4R+Q8WsfvvefUu2KUH
         SG/RUs5KI+XqLh96jncqr7l+WR6fV98a25wrV0NHtibq+IWcD2SaLw2HyFWCbdItMwtN
         UUZw==
X-Gm-Message-State: AOJu0YwToSW7p/dEVav0/lI5XeFPLwTFY0y8IvhYBlJTGMkEH2pe7CMH
	EYb5NubtbN78YaW3SsVxpUFNz02hXUZdqBsNiEjc7A==
X-Google-Smtp-Source: AGHT+IGXN+4C918nlV0X9cam2P53VSEtGaNCjhNVGXRfBhpYoducXAEJcOhhSM/a1gaDZ9hAbqMkiRbLfciiL/l5bZg=
X-Received: by 2002:a05:690c:4483:b0:59f:5361:d18c with SMTP id
 gr3-20020a05690c448300b0059f5361d18cmr2111515ywb.41.1695496432784; Sat, 23
 Sep 2023 12:13:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922084303.4164046-1-quic_gokulsri@quicinc.com> <20230922084303.4164046-3-quic_gokulsri@quicinc.com>
In-Reply-To: <20230922084303.4164046-3-quic_gokulsri@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:13:41 +0300
Message-ID: <CAA8EJpoyaM0_utG9oAwyqO3RPoNDNduuPc3u+tzrjYM6NXRnjg@mail.gmail.com>
Subject: Re: [PATCH V2 2/3] clk: qcom: apss-ipq-pll: add support for IPQ5018
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_varada@quicinc.com, quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 22 Sept 2023 at 11:44, Gokul Sriram Palanisamy
<quic_gokulsri@quicinc.com> wrote:
>
> IPQ5018 APSS PLL is of type Stromer. Reuse Stromer Plus PLL offsets,
> add configuration values and the compatible.
>
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---
>  drivers/clk/qcom/apss-ipq-pll.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

