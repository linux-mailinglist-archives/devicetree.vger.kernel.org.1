Return-Path: <devicetree+bounces-80895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F162C91AAE1
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 837D4B21CC7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFEA1991B0;
	Thu, 27 Jun 2024 15:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PL6/Oc/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC62198A2C
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 15:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719501301; cv=none; b=PpfuB0RlmzKEQLwd1mV/yYTkOp1FrrQzBdWiqUEV+LHRcUbeug3k7XMX1K9rDa57Z5LJaviaqotuLD/Vck3JPJVX9FNIfZ4XIUPquxaWu8oA590qOAKnRavKBDbjS3AaD4lUsBYx7QcmwXrsB1P9ap6/OieEMSWCCE4wwQXDi/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719501301; c=relaxed/simple;
	bh=8eem//ITjEXYdm72pHz9iK8ciJdXphch4zpUa3zYnNk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HiDqAuRA7+qHnGxM5W5VLXLMne2ccNtAFhGKezuWVIZBDrGd15qb8ZcplUVN90SEROf5CQarwr1tw7X8Zv4xPCZme9E/dMgVf5YTEvwP2GX9eLW4/6LkCSNKeVPsDRP6CeUwHJ9h/S467ERWJIGBM1jUxOYkozagftiCjn90oY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PL6/Oc/E; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-64a6b66c1adso1245097b3.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719501299; x=1720106099; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+hwRyUjzUUY1CTiMvK15nbjIjb4MSnbZcFsEElNFFbM=;
        b=PL6/Oc/EkakHVxHkrw44QdyTe1Ir4u4V2a1mTaekekOgKyGTSn1ru9STNk/D4aVChX
         +z0xcS6PEm6Hoqhug0jK6OsRvbygxnFz3uVgAGiOnnWR2wrxGkt9zyunMOFT8qPlwH9e
         ZxsZAJqOmBkVCL6cwn6pvn/MGMJ9WAw8qyazAyu0T2wfGCvVd5T5gNE2NXEEzGoARGjC
         1S2AhT102+qMRqsqvas++27E4+pyVrgfaU+wIC/4Pl2zqERdnMg8wLpi74i/hnvrPBSs
         VcCveeukCFaCDlMYOovzsVDH9rY7B0/lLSspVQAWR1J2RyhSyrZJdI280YS8gB7Ypzmk
         yEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719501299; x=1720106099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hwRyUjzUUY1CTiMvK15nbjIjb4MSnbZcFsEElNFFbM=;
        b=lfXwMc+NNyLequn7rZolQlLPjecriAqnfsPAl4qkFsBwR410f4nFxahqnSldavO+e+
         1j/k8z25KUxumpcDgmPaLdU/LhIDtSF8Wx2DUQrGUpbyBvf/IqWZDgRM/GAz8f0B5bCo
         BFj2j7aIRTKx+XF5zyw7YLVDvZUcrrDdHPmxlzdpSgEfmyIbWaFkabnO2E+booYnwt9Q
         hnZtm7l3lDnEQ1+BwB1WdCliPEkfMCf0ch2u0/hmnkT/0/HVhFDUFKc43uwdx6iuX+PY
         /odIXq0aYBYkYyJreRGGlLL2P3zUiPyavneqL5ZT/aX3sK/j/XsMEWlzh3TijE5Nhaiy
         DteQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcEAOkY77Ep7C3Wz7poIEo8W7G6ubHfGGK9SS+9O6iCwaP3LZ2qzi3qtuXpC7y9SE+sJVQ7tNlCxR7rOn1mfR9hZJ/QOoyGgJW4A==
X-Gm-Message-State: AOJu0Yyiec381kFckcsvk4sK6mUL9nOt+yfgDb/+9Ttrs339XV2riaKV
	ftLo+X5DFc4CHxOjXfIWxsnvHZ9JeHlqr51BMjiXV5KXZ+NnXPYNHWUm51JnYhECgB6bUYEbnqh
	rahQ0DxoOGyydgGCciRoa1bn/roHOF7BbYphdGw==
X-Google-Smtp-Source: AGHT+IEIdj5kMgp1wElSphuCogD/aifBCB+hXxrUP1eZ9IZ1k197mI29RMs431bOzaAjpNxukowNArLWDrSnNW0Js8w=
X-Received: by 2002:a81:9e0b:0:b0:62f:945a:7bb1 with SMTP id
 00721157ae682-6429c6dae8cmr154073967b3.42.1719501299067; Thu, 27 Jun 2024
 08:14:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240625070536.3043630-1-quic_devipriy@quicinc.com>
 <20240625070536.3043630-6-quic_devipriy@quicinc.com> <2391a1a1-46d3-4ced-a31f-c80194fdaf29@linaro.org>
 <69126dff-fe23-48d3-99b5-a2830af52e6a@quicinc.com>
In-Reply-To: <69126dff-fe23-48d3-99b5-a2830af52e6a@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 27 Jun 2024 18:14:47 +0300
Message-ID: <CAA8EJpoAKJqDH1z44_93kYLoAeAZ30TQe+=4ty1UgMydLUCxJQ@mail.gmail.com>
Subject: Re: [PATCH V4 5/7] clk: qcom: Add NSS clock Controller driver for IPQ9574
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, andersson@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, geert+renesas@glider.be, neil.armstrong@linaro.org, 
	arnd@arndb.de, m.szyprowski@samsung.com, nfraprado@collabora.com, 
	u-kumar1@ti.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jun 2024 at 08:37, Devi Priya <quic_devipriy@quicinc.com> wrote:
>
>
>
> On 6/25/2024 10:33 PM, Konrad Dybcio wrote:
> > On 25.06.2024 9:05 AM, Devi Priya wrote:
> >> Add Networking Sub System Clock Controller(NSSCC) driver for ipq9574 based
> >> devices.
> >>
> >> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> >> Tested-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> >> ---
> >
> > [...]
> >
> >> +    struct regmap *regmap;
> >> +    struct qcom_cc_desc nsscc_ipq9574_desc = nss_cc_ipq9574_desc;
> >
> > Why?
> Sure, Will drop this in V6.
> >
> >> +    struct clk *nsscc_clk;
> >> +    struct device_node *np = (&pdev->dev)->of_node;
> >> +    int ret;
> >> +
> >> +    nsscc_clk = of_clk_get(np, 11);
> >> +    if (IS_ERR(nsscc_clk))
> >> +            return PTR_ERR(nsscc_clk);
> >> +
> >> +    ret = clk_prepare_enable(nsscc_clk);
> >
> > pm_clk_add()? And definitely drop the 11 literal, nobody could ever guess
> > or maintain magic numbers
> Hi Konrad,
>
> nsscc clk isn't related to power management clocks.
> Also, I believe it might require the usage of clock-names.

No. First of all, you can use pm_clk_add_clk. And even better than
that, you can add pm_clk_add_by_index().

> Do you suggest adding a macro for the literal (11)?

No, add it to DT_something enumeration.

> Please correct me if I'm wrong.

-- 
With best wishes
Dmitry

