Return-Path: <devicetree+bounces-11707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C47D65EE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA4D11C20852
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9A11F613;
	Wed, 25 Oct 2023 08:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bu6agC9A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7387C1F608
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:57:34 +0000 (UTC)
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2488E116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:57:33 -0700 (PDT)
Received: by mail-ua1-x929.google.com with SMTP id a1e0cc1a2514c-7b6cd2afaf2so1948951241.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224252; x=1698829052; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7NldaKyDc0l1BbJHjiT+K+qAycYibl9MYvEsSpwfuMU=;
        b=bu6agC9AJkWErlYgwOWs+/Wxdel+ILJWbnZDXrvmTRckSJ4QuTtcBy/ZgCePZbajJV
         lGAKkRzLQIvLLdl9W0B+r93+a0sohZb1RplCWsSImuVu7TQo+lpIFBU28uPNvVJN77SO
         e7B4mp5qsT916OXZyl/8tmITihtwahrKOemIR+Ffw2JhvMfH0tdklZsQ7yjkx3/BX+MH
         Xhwxe/3IX4CptLECUonaqxvvNyKOm6lSUuQhyllvpedohTAuk7nZMy18VKgufLp1iOrN
         Q14Xt1tiG8Sw6B7313ehppOXdPUhlzAp7ojHSUo/MzXjNgqaJ4AJh0RKBF1NhMYR4mYO
         iFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224252; x=1698829052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NldaKyDc0l1BbJHjiT+K+qAycYibl9MYvEsSpwfuMU=;
        b=Bdtn95dn2y8E7kAAD2fde1mrsKOW4s08DTV7Is4Z6KW7FHcJcFVGsAKYryuyF6hbMc
         XojCqdytlMWPNT2Cq1fsxkLijrmKzlIAXfsLW1AL781tSSKa2AzmsVWU+iHlLVBqheKJ
         hBKwda92IrdkY1X/wJ86ENzfemxukydsvezP4w4By87SiG0NxR3bMfURO1uFEMaFl6aM
         BsKm29wV13opKcn0n/4T14u5/D7QBwDEKsD60V5FVjN9Nxb9uBe5S5Xa30andEeDanZv
         rfD9XhJrD2j0PLI9KQBwJSD87O+jDd7QsSEQmxq/ut29eFm5NRn/9GJo7DQvpDAhKtK0
         j1Eg==
X-Gm-Message-State: AOJu0YzaWoMMf+hbbdvXU5SmQSqwLRoKPN/q2mtE4fpkUvtLmkNHWq0z
	lBPs7HQytaF5+Md8x2TCQ5PWMym/c5DmDTS0iGcjrw==
X-Google-Smtp-Source: AGHT+IGhheo8Q9Df6KgUGR4PorlbsZsMr3I2+FSZpwFZ03w3W5uEdV5Ej71blcICjUAikq6NvJLTs/3FHZXoJH1v/m8=
X-Received: by 2002:a67:c313:0:b0:457:66e0:2c6a with SMTP id
 r19-20020a67c313000000b0045766e02c6amr14079783vsj.14.1698224252025; Wed, 25
 Oct 2023 01:57:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-5-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-5-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:57:20 +0300
Message-ID: <CAA8EJpoxdVNvwbEyVVF65FWVQZwydXvePCTmurF_6G9taQRJfg@mail.gmail.com>
Subject: Re: [PATCH 5/7] phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP UFS PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
>  3 files changed, 94 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

