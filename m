Return-Path: <devicetree+bounces-14128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B747E2113
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EC95281275
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E1D1EB49;
	Mon,  6 Nov 2023 12:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Eek9A3iD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0353E1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:15:25 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9E292
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 04:15:24 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a7c011e113so52859307b3.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 04:15:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699272924; x=1699877724; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RLeS77DJS+HON2OCKCmE4rFyK08nkhd0X2PzaXyv+3g=;
        b=Eek9A3iDmxcZ2EHJcOaCUGOVhf3KWhXuYYXulGvGc/ghWltqzEtX77fopiKOrnFAEi
         P5YYdKDc9xg5xMdwYVk9Hi3NkEDrC9jSMaSDMmpEGx7wTkG7bt1VrgYh7vI2SsfHn/VU
         gJE4Hn196nWwAkVY/0stgl17++v1Wxynx561zzX0TmxwTESNhAez5iHoioUTfkfUfFNk
         r1D12YRDB54uoLMtYRLA5/wMGYxxT+FfBlgxKinM0wJ82m87Pcosh4quPXSir16txVXy
         lYvtTzqJBydn0GmiDwew68cXOUMErB/p87i1n6tol8vkzjeYn6BLIgpy5tFmvvTfHDLn
         x6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699272924; x=1699877724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RLeS77DJS+HON2OCKCmE4rFyK08nkhd0X2PzaXyv+3g=;
        b=esURGGiUHQ783tQRto5STl6Bu6Q1WfY841fjFDA1JzsZg0GsAT2Ul+rHjzLul58k/o
         NU3BzHvBZMajcTI3dnDX+zJzXhnjQnOIAQUGcpzEh7uKhI1CnwWNiBcG8xuVbtDmZ/Uc
         J3seX++WsBbeNWIzXGrgwYIF4fLC3bHdVaEQvp+X2zW/mQN60Jx2XE5j9ogzNbvMVElH
         elshN+6k3SH7+dXDB98SHMppaxY3eWzEV9Um3DSSgX9kS7znggSUxSGk9R6ondtQPfAX
         es991/i5OKB5p59NrXdIyYEXjHi8r7BfTM/NaGQAEwqUPivPuBW7BEGMD0ZLmWEXEQ1K
         q/Fg==
X-Gm-Message-State: AOJu0YxYrEf1nw2fMGHOhcp3agrZrqsdHpJ3CBpJQF3RQazZhdpZ+UMG
	GZLunFcsxHnoUJkhmvxtbxcoglgisQ+Bb7fl+febhA==
X-Google-Smtp-Source: AGHT+IEgXIxroUt6+s1HwtcNxvpQjdM4tHS7AYlOOLSB9eJthbXZSHqKzEyTooNMvSPzECzf3DIWLZtCzaWDnqdh8gI=
X-Received: by 2002:a05:690c:fc8:b0:5a8:5219:df6b with SMTP id
 dg8-20020a05690c0fc800b005a85219df6bmr12604471ywb.24.1699272923759; Mon, 06
 Nov 2023 04:15:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net> <20231106-pm8937-v1-5-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-5-ec51d9eeec53@riseup.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 14:15:12 +0200
Message-ID: <CAA8EJprRT=thU-7_rfX6Qhk55iC9Hc0d8x46uyt-p4DOHCrrwQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] regulator: qcom_smd: Add PM8937 regulators
To: Dang Huynh <danct12@riseup.net>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Robert Marko <robimarko@gmail.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Nov 2023 at 14:11, Dang Huynh <danct12@riseup.net> wrote:
>
> The PM8937 is found on boards with MSM8917, MSM8937, MSM8940 SoCs and
> APQ variants.
>
> It provides 6 SMPS (two are controlled by SPMI) and 23 LDO regulators.
>
> Signed-off-by: Dang Huynh <danct12@riseup.net>

I haven't checked LDO / SMPS types. Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/regulator/qcom_smd-regulator.c | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)

-- 
With best wishes
Dmitry

