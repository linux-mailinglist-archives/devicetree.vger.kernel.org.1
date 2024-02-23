Return-Path: <devicetree+bounces-45434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E0A861EEA
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 22:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 291C41F2640C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB8A14939B;
	Fri, 23 Feb 2024 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hv4K9X47"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C23148FE2
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 21:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708723473; cv=none; b=ZRI3Ag5x1b4zYfan8UMXAdF7w5Crf/ibtTYJ++PkP1yDfAVE57U+B61LDNnY1+/xAWJRzyE3ZC41zXI5xIfe1/JEMHwPO6IAdij58tJ3Lx3cSUnoXD1NzJi4dudMHlFGwsM7cY3iogEVm8HtpHX7562X+wCdsJJw+3COyyw3wbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708723473; c=relaxed/simple;
	bh=H/tJhqv8w47L674SEcvyX50L+C3QiQZtQ8jkIBC/B54=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TXU8AkOhMkrZXLGQJiptbSz0H7HpSSnw7zzGkpKxEtBDlbS3Yt9J3PofgZElHZdKH2qT+u7num1vvB9Brngtne623ylMZ+J99fvfkKx6SczsxLWZQD3OVcQBsSYnNuakBIjNgS1On/0YT/g/YhgayygXeIDcXcYKLGQqFB06bAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hv4K9X47; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso1298173276.3
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 13:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708723471; x=1709328271; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=akuPkkgI0y/oHinOKr0HxoZmwUf171P0m6vGM5/O5Js=;
        b=hv4K9X47aldLnHaFXYeYX2ZhiYjXGK1bQUZFnv8mm+NWj72tgPiNw7CJllytkU3wSj
         17U9T+RadYGszAvbjVFGZbrHC+I6a3IUsk8RD+JXljHi8gv7abpXm8SoD+i3MofH9Wdc
         Zt51DLzfpXIR0tU/AWRMUeRqJfCXkNH56TtM4Cd1myobOEBqG73he4W1UPR1YtwSFgq4
         UrPdkJB4qLOlc/1RK/u8cte1x92bj7K7cX7WTovIvXSV3sh0zCId/aVaIOXEL7cQl95w
         mRfIA2n2ZXJXDfVCo79FcCjMm9giiequxNZGsmn2DeOHfHdjFTynQYs4zZ2D4rQdppe/
         akig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708723471; x=1709328271;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=akuPkkgI0y/oHinOKr0HxoZmwUf171P0m6vGM5/O5Js=;
        b=ZaK3P5DJdPxjK9vXnAFayhD7hQfDWGEhcJ4JBee4stFAeKmDCNyG9imxVgbYVxMju1
         QSYFiYhAtSIWyHydUxOzg4z149K8hcxjN+Qjtl6kdYucPPcgn4bHWeRDIPV6rFoZhHmm
         ft1XiOInjsc+QoU2mY08zSjYDne/nH8YItrckb8MChCpzcTQZ52Z6NbD9d8qGmQL2YSH
         8CjDgn6qPV57xxCc4kukNuGtgY8UBS59Jd2QViTdP1ei2WiePsJbKmL9h8kCIL+zeSo3
         JItfqGaeM8UJZk3wxobSOV6nMWOSTqP0Go2NhcvrbwEn99SjbSluejVHhoeg3NSWA9cd
         9/ug==
X-Forwarded-Encrypted: i=1; AJvYcCVMbIdDjeV+cC4ru+mDNm0LTXbCMyca2Ri0Uj77Y6GLb9If3XNSMBYJrvmUYKz3ZW2kiwvhS2JV432NOCB5vJ++FsXHTguQA/115A==
X-Gm-Message-State: AOJu0YwHltsvVBemLaeVAjaTbr2QOTtZ3F/v8N6aqsZN+2rog91J8St7
	HICgieACA/1Z2gtKTjrLVpjaDgzwwdXwq9VjLkiF0co48T6TQ5sKVddsH9xQwEZlHj3f+DmniEw
	zxkYPR7aEX9/S3Oy6nsI20lglXmFsSbocI9Eahg==
X-Google-Smtp-Source: AGHT+IFbG9R3qzPDyULutJwOdT2KkYVwoLnuTNnZQAQUOT10IOJuFq9jx8p8pvPNgR7Ok5iVzV0j+sTC9nwDRCxlZ88=
X-Received: by 2002:a25:c511:0:b0:db9:9537:2c39 with SMTP id
 v17-20020a25c511000000b00db995372c39mr1121626ybe.2.1708723471023; Fri, 23 Feb
 2024 13:24:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v2-0-2d3d6a0db040@linaro.org> <20240219-topic-rb1_gpu-v2-2-2d3d6a0db040@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v2-2-2d3d6a0db040@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 23 Feb 2024 23:24:19 +0200
Message-ID: <CAA8EJprR=tPUsFit7DEzh0U9TDOm8TY29m=JVJwXQwH6vEN49A@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] clk: qcom: clk-alpha-pll: Add HUAYRA_2290 support
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 23 Feb 2024 at 23:21, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Commit 134b55b7e19f ("clk: qcom: support Huayra type Alpha PLL")
> introduced an entry to the alpha offsets array, but diving into QCM2290
> downstream and some documentation, it turned out that the name Huayra
> apparently has been used quite liberally across many chips, even with
> noticeably different hardware.
>
> Introduce another set of offsets and a new configure function for the
> Huayra PLL found on QCM2290. This is required e.g. for the consumers
> of GPUCC_PLL0 to properly start.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 47 ++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  3 +++
>  2 files changed, 50 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

