Return-Path: <devicetree+bounces-43462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A776285A6AC
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47B701F20B53
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5E1381C4;
	Mon, 19 Feb 2024 14:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lGk0kNmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194D637701
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354658; cv=none; b=Y4wKB1QyE95W8hDj1Iw+4dr0rLz0r5CDCX8AQhzEJiPJTp2q9OZ2bIOrKue09Anh9LHYh+RONj5iUf2gp5zy8prK+QM7WbsRsegZ6p1jhm8dDhPBCWOihvvUnFoVnX72DfK6CQEhohNkNlmGB1AkU+8anoeWl12JlgoTAQ/RhD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354658; c=relaxed/simple;
	bh=9Na3wL8jpMpPVnEcaEj/4baqNdNNRN6TgavHTXFRdNo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MkmxOqZmx7dd0i+6kZoZYAr7T6tKTZveyRdob7UYxD698qdp+IVI0e2gqHHhvsWieauIUwm3ooso5O4uEd7SF6rr2rXXsHIuYGoP92IEYfOsVCroBC+t0jrhjtF5ajLipjdMAD/nwCRezyHbO9CbTZevlCgcNZ05E98eM8nDQZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lGk0kNmg; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6080beb19ddso20186197b3.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354654; x=1708959454; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Szw+QTMnTAcQAZlNeYyyrJj6KbWZ+5DPKy/5tGrWbDo=;
        b=lGk0kNmg/HCwE8qj0FfX0zUNkQtmcJPtsHPfHE3hP1j8GVWuHsHZrY5nYfxr4/WfUv
         niH4xUAwp/aiGKd8ECXeBkF73xsEThstkzGwYcwPCxvNK/c5MgVMvl3I6stqGGZk4hir
         mZxvPMIhLLO+evQRa94UGcqjMsUBiz4jFAcg9Lyr36hDA2R0kplRxAe1BdRjVkTDmH1Z
         cEkeyinC1Qeuz0Wr3cs3Hy40A77LOSx1HjzdueBI+CotM1iHZ0PLcXSul8QE6PTR7iqt
         NZE0VRkum6DsDef6Q6JpSn9fiN7Q7svPZw7ZjAf1QhzuMhCRRpWI82NVDDx5GVmOs9sA
         jUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354654; x=1708959454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Szw+QTMnTAcQAZlNeYyyrJj6KbWZ+5DPKy/5tGrWbDo=;
        b=mAjCulstQOb+G+cYc3qA8HaUPTqIvvw61J6TwK3pYYma9irfb3XqtPO4HvGKO7J7ia
         WCdbAtEiNDZT5R5M+lWLRAa+UA0bliMwAivT0BsxJzRZRYrqiZbnCHzb73LxJck0XQt/
         BxyJlUVK4Y1Artt0XhNI/NFQniurhgvxCgqWEUbR0YizxV22rD5OWYomCxypk5PAm6Ey
         YgTLGAgMfjDJhgntWzSmmEmZAmYJCnqWA97iao8LyPPFbRnfJXDc/rOPOqfmvSHZbtR8
         2rkWKkv6ZMSSS40S6Ynzs+WgXzjyAZs3Uv+aQC7i1XgUimrWVKb4SWVF1KD0LNGHBdAd
         0nCg==
X-Forwarded-Encrypted: i=1; AJvYcCW9Kv2C6IzYQrMAq41RXxG8ekdAf74nyggoZozoyc6bf2MGfAqfT3oeJDP8ookGL0WLSbZUVUtus/6C3sPiBTld5jHGkF7nEzFtXA==
X-Gm-Message-State: AOJu0YzjucBIxxn5wBvgeeMYFQD9zrRJPD8Yf5LC84gsPvGuFeIOxof0
	+aAcEPvOc+2cNm3HNDGBg2OcSnEYWaO+6kXLEp/xt7BIh9sYV/vljf5LzfAG09tN54GjGcD1rRx
	xBPSYfeibJR9H0rbZ8kh5o9p/gcibndlTnsD9sw==
X-Google-Smtp-Source: AGHT+IFwS+iE/0NQYgsx7qVKwDMppWGjVew2/XzNi/ojh9QbxDe0oOmgCSu0UPBrXtjFjsGyUMyo5ZWdgudhKw5Ujrs=
X-Received: by 2002:a81:490e:0:b0:608:ba5:729d with SMTP id
 w14-20020a81490e000000b006080ba5729dmr6119664ywa.19.1708354653839; Mon, 19
 Feb 2024 06:57:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org> <20240219-topic-rb1_gpu-v1-7-d260fa854707@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v1-7-d260fa854707@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 16:57:23 +0200
Message-ID: <CAA8EJprpZxCV-3xkE0OuGg4jHrHcb=EPKCi_wSy5viP7jVwPvg@mail.gmail.com>
Subject: Re: [PATCH 7/8] arm64: dts: qcom: qcm2290: Add GPU nodes
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

On Mon, 19 Feb 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Describe the GPU hardware on the QCM2290.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 154 ++++++++++++++++++++++++++++++++++
>  1 file changed, 154 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

