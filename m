Return-Path: <devicetree+bounces-11703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9FE7D65DC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A08BC28100B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368F31F608;
	Wed, 25 Oct 2023 08:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BKALmRLa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1791FD1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:54:05 +0000 (UTC)
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9390712A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:54:04 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so4270083276.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224044; x=1698828844; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=05z2jDJBCkJUaY0qwN312UAtjh1v85RzfJBH/QDD2yE=;
        b=BKALmRLaCzGKeC4a7L+jqoO7BDxm9QUkh6fj79ZFvVKTbJEn3Z38+PgABQlR5rYuX+
         qH13EuCsp6o7gbHRqCAMK9zDBc1le96NV2nLBrKRWpD8ffPcU5YfW2nJBNS/b380G8ue
         eyhT6ss5I7zDiD5ALHfB5bmc1/aOIJk9wvgUHSMC9hV8lHObEsrhTA5YwJQj9+lnbwEY
         uhVwiB0Ne9nEdUEM0fuBIK+OyaYLxEDxNf3keFMlknm1nnApAtmx+NVji06bwibDPqut
         II1aPHCZ9pmfV1gD92biLEs4pakR3ajBZFCMk1bm1jltOJileiXVjJ9/UQGrNWEvY3qo
         HPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224044; x=1698828844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05z2jDJBCkJUaY0qwN312UAtjh1v85RzfJBH/QDD2yE=;
        b=USddsh9JG9jS7R0w6TbOViFbeC8FuoITwdH8iBjzXvIAAcXkJM4b0SHfHSBN1OTEme
         LVDfdSJa7Ew+IEZPe5X00PVdzPIDn55LM36AXBxBIXZTsNSFBU+Zc8sVZBu8aIajfeD3
         oS1q6ERtWt8dytlMFP0kbPvkzaiCTf9kKUjRXh8mhmqNFQhNXEqKeaLNNcRyvuEVwLnU
         EuGEQ4aVs6LbznwS9J8AggT2lM/UFX3IHVrpsTHpvJnD9rv+N/vT9Y7ChBJH9x9D7Dy9
         yHLVk2VrlgqNdqt3pURmQyBneo9u0Gk7DyOO0UwTA+XgtM7mo6h676jlGlfGPVkFt9wa
         FAWw==
X-Gm-Message-State: AOJu0YyF26evilJDYsUNskiwanh2Qx61s2DdDaVi1rlSgh8B562pWqSu
	E3SvVkH/nEWkd0GprX8LjxnPAL0UeyFfXm17FeDaJA==
X-Google-Smtp-Source: AGHT+IEv8Y1RRki8dQdUkHfMqNiOSNJD2LSTon4K+5zL/p6SyF33Vqj3k2iU08uur8/zm9Esfw/JJA3puyUMAXz9YYQ=
X-Received: by 2002:a5b:74a:0:b0:da0:4dfc:57d5 with SMTP id
 s10-20020a5b074a000000b00da04dfc57d5mr3141457ybq.9.1698224043799; Wed, 25 Oct
 2023 01:54:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-6-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-6-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:53:52 +0300
Message-ID: <CAA8EJpotBF5xP2UC307nQpXUfvmiH8iK729KBXsPUrf5b8rQBw@mail.gmail.com>
Subject: Re: [PATCH 6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP PCIe PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 65 ++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

