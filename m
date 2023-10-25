Return-Path: <devicetree+bounces-11671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A57C47D654A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F6A4281A12
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E8B1A599;
	Wed, 25 Oct 2023 08:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZYkUZEm4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFEB23AF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:36:56 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E33912A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:36:54 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3add37de892so3166352b6e.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223014; x=1698827814; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rFUU64/OUuF1nn0EtOhMJ/Ae7a+hOsjEWRp2Dhz9W0c=;
        b=ZYkUZEm4L7uaBrMrky71FGR/1rk36yfxmK+SVWY7N9XZjVAdc5tAfIAx1nTmDgJGiA
         AI5bgZH9Ss7LX1N0HA82HJBJju1BZCqMJQZnLTTFSwSz5peJLgaZq8croCLCrcW9g6SA
         u2/FPr6mosrotu1mOInysUlFM/aCmILPc9HoQAZinaMm2Vn7RiBiB8evcz0VHEcawBkP
         cFlzaSnA4m+jS8Irc/usevaT9/IYg6n1mnmvAlXMascKv+NEgjKTxqVTwov/d39X2Uc1
         tTJ1qQVpurfgn4lDTpkh1RSD8TtFUS6CBGKzeLn480VUzXrPXvDcdVQNUumrVukXJtjQ
         xJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223014; x=1698827814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFUU64/OUuF1nn0EtOhMJ/Ae7a+hOsjEWRp2Dhz9W0c=;
        b=JBJ/5z5eDQJT74cekeYNYRZ7RiMSRfBOisF8sRzwyFFMaSIavLyH01+H9LqR7GvDlo
         GYj84mVqyaHzkWVdA4LgNOv9hPC6vk6kNiv+1m7estVK+BtrmR0E1PUoiOlvAsdR3CeX
         +fnChKwvdJ1Q1WowMHizMlM8u4zak6WewJyLHaxf/9y4MuU3eIwzdqnhhj7k2fHA4+nn
         QuXcJ6QKskSA7hBK7wXxPg6xqJjP+BRZg0grX1ftXEdaLLORLG0Wr/+7wADs6pr3YQYc
         AHMIreLPyGMMwOlOogGxrq90YkrZf8qykWiwvPLVeIxxGX3lt+nVy9XH3zGn7TCCdr5J
         VpuQ==
X-Gm-Message-State: AOJu0Yz4PE3O4NiRrGQMHS7eH0WPzU8PJX1g1jO/X2ALfsw0F5USK6en
	bFQ4Lm2J5+KCFaPK+TnGcTMkI8W8VlPWR6+ENx8p+g==
X-Google-Smtp-Source: AGHT+IG/GggL0RFatm6CzkOC4Y36ZQHValYB73KmbvVCy3HhRMzE1zGwMdJhW19B90K/3jxacKZkXu64KN1CGeuyGkA=
X-Received: by 2002:a05:6808:1a88:b0:3ad:fe8d:dfae with SMTP id
 bm8-20020a0568081a8800b003adfe8ddfaemr10855002oib.57.1698223013802; Wed, 25
 Oct 2023 01:36:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org>
 <20231025-topic-sm8650-upstream-rpmpd-v1-2-f25d313104c6@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-rpmpd-v1-2-f25d313104c6@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:36:42 +0300
Message-ID: <CAA8EJppPzjdpeFksu-0h0FbYwy5bC=X0f-61_zPL4-sH=3n6zA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add SM8650 RPMh Power Domains
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:32, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add RPMh Power Domains support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)

-- 
With best wishes
Dmitry

