Return-Path: <devicetree+bounces-43459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5520F85A690
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB2451F21698
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A3D381DD;
	Mon, 19 Feb 2024 14:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u9BZQrte"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC38B37701
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354488; cv=none; b=Yh+1F4Ub/KNFm46zztpy7ldQIS/7JJY5F3+L1Og4nMAEn/8lF+D9jGI6n470jg2DoXHyQIrXNUBR6MWkggANg0dYPpURJNUm9or12G+q09xBzBaUejdPCxeoadI6Njfci76X4FlKgAf91ivJrN0Co3/5+N+d96995KoMwc5PhSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354488; c=relaxed/simple;
	bh=rIE0IP0T9iSOPWSlThQHOn9NtZrcV1Ogn8zpUtpc8js=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eWxBCA5kWtqgyMyJyksnnoYkkML4S0VutupJsXH7E0n7VPiEAPuxGEEPR9380n7egWhrw5YN+ttPyhZttDwCeVuivi5JZH26JSMvRPuKTqBKek2iQyCvl4XTX0IsaCBcJ0s3CUNMLveMqlfX0VeF82WjkeeZeo+F4r8RNixUUB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u9BZQrte; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-607eefeea90so30215697b3.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354484; x=1708959284; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/+Vf6X891RpEKNXrdBrteASyRB3a3/HliSNBQV8d1lo=;
        b=u9BZQrteEfrrR3r7IcyNbow5D73SHZ5BaLxnuMZdhkspfSLFm6DpB1kvbgYYabfLBD
         3Zi/MC5drv2x+vt1wBPCS3OI2yzd3axgnw5Y/PQsu6xsichkNyOYhfp1+Tdktzy8NL0a
         CrWVxzIaJwid4rXlhcWpNcR6CYU/8ptrtn2YWGZjHK9CP0xAjYXOkuEhhDNURI/LI3o8
         svEhklmqdIGDjm/DoUyzcJWyX2M4Qd8VPDePUJ23njm64YgFPQdRNtLmnXKibzXZ9R1d
         RV/6rdlN6ZlMyICoSqbEGgOFFWXxFgXQpiidlMGGCcq8OtSXXrg2bPKZMsIoKkoJgSuw
         Ocsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354484; x=1708959284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/+Vf6X891RpEKNXrdBrteASyRB3a3/HliSNBQV8d1lo=;
        b=FMvUJN6XlNiVnt/llGX1cwFlW5c/LzePRH0wpN/W8BfCdRcVs4WUAncv0GSxDoyAkm
         L9oEMcDRKQSd2YiE+oO7R+z5E9b47FSMryKNrSQ4CP8Ex4PUrMg+I4kVBVBxJy4UVf0g
         O96hHvU/2efFZbOwCMaC1Cm+6A52Bg/6CT4JHyM0yFnZPIrW10ID7suE91ScrealSwHW
         7rNzquRT6zCmFBdBUw2q6l7gMJomOSMCw9YhKc3H3yHDGJ1Tu8QgevlPlZQLAKjAoh82
         eoRfX9B++fzLaOeRTVG4VztizbmjYB1Tt/UBwtNBtTRzQ8etbCM9lrQ4Ho7crXjtn6h7
         ANCA==
X-Forwarded-Encrypted: i=1; AJvYcCXWJ++joH/Oh3nTxSopDhJMCQptKyAYhRc8dWZWOvbUMjuN1oLBSye9Snrmzb+1peTdnR6EAtyJ5IwgHSkNJl78c2uDZaL2zxR1Ig==
X-Gm-Message-State: AOJu0YyYQECEwUz7M6JLjx5S08DiTTX7xTl+InlH3ZV+88ZEwl0xJq7/
	QGDnrUAF+o5Gn0hso+MvRg0LVOkG2AOnaNCjG7TklVAC2cjl2jHQKK078c4YpTXS+m/OMLl0lH+
	x/e6o7YBEvwlfWNzBmusLgvXbOU/WZ0OuwzfYpg==
X-Google-Smtp-Source: AGHT+IHg7XEOTTrtpgQqphtP3Xw9sPuPWwJbqow3gZN5qRELJzU++tbN2bRulnySBEDH7nL4PxT+8aS1knEIIJLBbCc=
X-Received: by 2002:a81:a185:0:b0:608:59a5:4ad1 with SMTP id
 y127-20020a81a185000000b0060859a54ad1mr39629ywg.22.1708354483969; Mon, 19 Feb
 2024 06:54:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org> <20240219-topic-rb1_gpu-v1-4-d260fa854707@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v1-4-d260fa854707@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 16:54:33 +0200
Message-ID: <CAA8EJpq46Wn+gWKL81_zMxyddUpJRuKHDrx=4Q2DvbwufmWHWA@mail.gmail.com>
Subject: Re: [PATCH 4/8] clk: qcom: Add QCM2290 GPU clock controller driver
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
> Add a driver for the GPU clock controller block found on the QCM2290 SoC.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/clk/qcom/Kconfig         |   9 +
>  drivers/clk/qcom/Makefile        |   1 +
>  drivers/clk/qcom/gpucc-qcm2290.c | 423 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 433 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

