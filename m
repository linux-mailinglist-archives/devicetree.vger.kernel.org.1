Return-Path: <devicetree+bounces-38275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC08E84868F
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 14:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 785B4285245
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 13:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5185C91F;
	Sat,  3 Feb 2024 13:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xplTRPv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D95C916
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 13:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706967832; cv=none; b=Q00gceQswDy0AsF5tfLZhNJLU/LxilaBc3TxjdiDP2xruRxA4G2kPwqHumVPxegZn/n0I+LMyjEDWiuidEZIBb1PB/WFYG4WbhLggB1gMe4X6Gcq8gapxppH7UTsWUJ59VM4XRymvAUkOXMGmFDFgF/YabGpx5ynxAvuAPn3I4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706967832; c=relaxed/simple;
	bh=bB5NkbMpLI0HMjQqKghAYbfh6kYTOIzuHFhSgRTqF8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NhrInhAU9aoxoYBwDs3d7vk4OmA59hiOqKUosiNQcDSoW11oh4JaRprpwBZUNm2mIl0Xa6UhZUwTxwSPrPZsATotTYLjLSGa7QXSvsPFf67MmVbQ7hIjLZe88h+hsnLWJYng/pJjEu9kXcEI1GbEdqnOnDHpQeWFMFlF3acw09U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xplTRPv5; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so1273459276.1
        for <devicetree@vger.kernel.org>; Sat, 03 Feb 2024 05:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706967830; x=1707572630; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Moz+VNtFoELbtekbvE4gjgVQwcWCMsMt8Pxrs1cix0U=;
        b=xplTRPv57H9fHe6LnBMdCcERI3feAeaCo41jCCrPg2eze8Eoo/PsbSvOdrsZpmlfY3
         F63PSW/SscYt8VhqjI5IC0AMtxjwfzVTQRsoA4CsGy90zZvnTkoOEXKzYiSu5PelOtit
         I0ZZZtn8mSerCtIxjUgAAwVoH6W5Mim1nBZU2zhb1LK9usflDnx7GL2ks6Eq2SUoytcx
         6DpChByqZsBdtiaiQRRAbOgjHQIcc1E/DmI7Qv7EDS6Vv/WZ5/mEpXJ6iTvrHDI+Xoau
         3IO560cECUFt7IqWZeVC56fM14trVlNTdnVqgkEDPuOjj3sBL/8HZjQeL9jIKroEBRJP
         AmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706967830; x=1707572630;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Moz+VNtFoELbtekbvE4gjgVQwcWCMsMt8Pxrs1cix0U=;
        b=p2Y3CpXM0JB1ckIaL1YHnyfBHg+nT+bT8JOECdRPGuDYGaWG0FH9FlJYy5xPfOIQPF
         vNcxIUrnqD3OUOER9WIsTGFlxggfqaERS/ehHCZJcLkmPFtm9fczr8m3HH12nbAF7mRX
         iFtyAtHV8I1FVdc/ZYKqnEsmntLMi9MfQNSfy2DefTVjkv8R4wX75tW88B5f/wQB6jQQ
         aiBJhqwpzkDU4HBFybNt0enZqHVhZRf3V+bb1WVdUMRWmJuerzyT2m/jBRjKuapUmVOw
         Yi+8pz8c0gG/c0hXuw1xv2oA4awfQtQvVrYOKjLNkUCDCdyZN0erUzjRKhvL12aD6sLE
         iOVQ==
X-Gm-Message-State: AOJu0YzbNmyk7MnlB4MfDmIz0uGyxne41VnpAFk8zHppqGxbj4GLm+qD
	MzwCopXiBQh4wHrj/JdTth4TrntWJ/mTRYDzeCqvCrlh6Y0r8cyMTfRXySm3OHWzWHBjxqZOSQJ
	R1mglnoOwPic9KHvw2IWakXVz0yOQSdWAGKxRVw==
X-Google-Smtp-Source: AGHT+IHC1Kjcdw2ForbRnh30ds48ubtWrAYlVUrU2czhMHf7NwzSUklUGHHrewM+CW4nYQ+906Zj9TjWidJCAslfPqs=
X-Received: by 2002:a05:6902:dc9:b0:dc2:a46:3d29 with SMTP id
 de9-20020a0569020dc900b00dc20a463d29mr987960ybb.9.1706967830271; Sat, 03 Feb
 2024 05:43:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <eqepewdgp5k3ajusf3hk7nazi2eli2w6wgxlbjroldwyobzh3d@aewtie2d3ora> <20240203070008.15206-1-amadeus@jmu.edu.cn>
In-Reply-To: <20240203070008.15206-1-amadeus@jmu.edu.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 3 Feb 2024 14:43:39 +0100
Message-ID: <CAA8EJppdG--2=pC=WjaK0HH3NDrh_HXLNmk8AMMMfCLvbtxpEw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: ipq6018: enable sdhci node
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 3 Feb 2024 at 08:00, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Hi, Bjorn
> > That sounds good, but do we have any one of those boards that should
> > reference &ipq6018_l2? Could make plug it into the sdhci node on some
> > board?
>
> Actually I have an ipq6010 sdcard device with pmic, which needs to
> reference ipq6018_l2. Also on the downstream qsdk kernel, the sdhc
> node writes 'vqmmc-supply = <&ipq6018_l2>;' by default.
>
> > Essentially, why is it needed upstream, when there are no user?
>
> Most ipq60xx devices have pmic chips, including some ipq6000 devices,
> while another ipq6000 devices do not have the pmic chips. So it does not
> mean there are no users but the supply is board specific. Maybe we should
> move the mp5496 node outside of ipq6018.dtsi.

Yes, please. In the end, mp5496 is not a part of the SoC.

-- 
With best wishes
Dmitry

