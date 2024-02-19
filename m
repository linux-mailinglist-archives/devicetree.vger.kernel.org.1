Return-Path: <devicetree+bounces-43449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFC085A65C
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84D8B283A01
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1CFB37162;
	Mon, 19 Feb 2024 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T+7XFfNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A7A381B1
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354167; cv=none; b=gvWFEmWqR+zqkhe48lxENkeuex8ZeTVlIIo1r1Vzp66upJEAZqMdqvTO3sn/4VhcW2So5kvyn89SY2x282iEHP5EjSrzALkH5ERo3m+a5Rb0cawqnavBjzKAPy7THCh+gTCmpFcXblIEbotz1fRNc7I/qkkLuNuH550mVk+7dtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354167; c=relaxed/simple;
	bh=cXd+iZRHyG6Z54ZlDyEkvwRUedt1tgiayxTf/h55RT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mlzEILyDU6FeSngCnRK0Tc/UHe+c8dM+jrttYNoxN1gywdOt6jV1SsoCgyco2mtNN/IDUS+TyoZQV0w6UNL+ncV1mr9ov1rKMJF+xvjixl98+VU1QompIPWR+L6kL6GizCeZaEfTAnmcKmSwLO3gSyPagokvhDuRg2ofuK4oQjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T+7XFfNH; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-607fc3e69adso32580757b3.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354164; x=1708958964; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WJI1teD2wPawZOQzTgWhX+w1Ti/ZVP+Yv2CET7JvPGw=;
        b=T+7XFfNH+2GtsSPl6mG8MdV/ceKdv1OvdsBLSf+Ewyxm0AL+v8SxbPgD2v1HonArrw
         w2OFiWkRO+QS6bU6K5kOXWuNyrVBwjZuApMC0n1K6Gh441xwBe9l2uMFwcckuEqasDvI
         9/u7T2mOpWX3VY6b2X9vyhQOnma4eBCvZHUtsqfIzhT5gi1E01mbJHf55AM5WqSB2zTL
         F7UY03EiR64zzb3YFCO8sGcNhEM+1MHE4TjsPTIsbn0Cr9NVayrv0HBgCcIGpg7niw2A
         xWf6ISKI/sGbax+kBx/u+/Ni1pIvE8cNFCcA89hMKmk035tpkxJ8jJOmwMu8/BzEGMyy
         UOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354164; x=1708958964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJI1teD2wPawZOQzTgWhX+w1Ti/ZVP+Yv2CET7JvPGw=;
        b=qHGTSBCUi/mj5+6y50Ejv2PmZzpDSPvy5++nUHTPo8NRXjgEYbMWNNsBnKyQdPpFCQ
         MaEf4d250rH5MgIFxqyZvCm3b8uwuWwpFoDMWCUPag1qi5c2gvRItQ5VBHklix5NUTst
         44P6wDhuFGLKAihHdBF5gbW06QRyRthUcr9fwTwhNBYzh7nw8Sc6QUQyt/EJi+GTgK56
         jqxd8l3hAnuLMO2vJE5wzbj6xcWOcdHv27m6YYBubUHeBD+v4Gax8N/CmEAjiE1vjYSD
         NlcdljMvVuzk7ihXRIxbWBgrPGvKQ4IGq1KJX198K8ja4dnjh++7BUTIZD40pn7C+URw
         3rnA==
X-Forwarded-Encrypted: i=1; AJvYcCVCxkHrAFMKRz7l1OHGY7UWbJOrPGsOhQA3o1FqoPBbssn2MKV8BKBxH6jspWVQEWaEzel79Nm72Kuq5NKbjJe81pAjETQpmWQLmQ==
X-Gm-Message-State: AOJu0Yx2Askq7U+C24xtmCDrgxu0gqDNhjxd4fArwFcVdXUcsofHS0ce
	4cxUmXz/AZa/cgdWmR7Ek7XoguT3LocS6YKhwQvbw+wXxcyXVFvqmTSjKGOuq2UeHeVSeBd7HJu
	jtzXbMhRlBkboUQ+nT9jqxAoM0RaDKpPZqzh/hg==
X-Google-Smtp-Source: AGHT+IHr/IUKFhapXnOD7toFxlQf0Om4NTc3bUIZPM42rFzdOhQ5udZqS0lilrwVoRYH1x47luPm3EintARWerYH8fE=
X-Received: by 2002:a81:ad1d:0:b0:604:a47e:6e52 with SMTP id
 l29-20020a81ad1d000000b00604a47e6e52mr12358877ywh.32.1708354164616; Mon, 19
 Feb 2024 06:49:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org> <20240219-topic-rb1_gpu-v1-8-d260fa854707@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v1-8-d260fa854707@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 16:49:13 +0200
Message-ID: <CAA8EJppPvXfkz=wVca8aFBhFaVUe9+OiVzcQUq7D8zPbK+T1FQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] arm64: dts: qcom: qrb2210-rb1: Enable the GPU
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
> Enable the A702 GPU (also marketed as "3D accelerator by qcom [1], lol).

Is it not?

>
> [1] https://docs.qualcomm.com/bundle/publicresource/87-61720-1_REV_A_QUALCOMM_ROBOTICS_RB1_PLATFORM__QUALCOMM_QRB2210__PRODUCT_BRIEF.pdf
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

With the exception of the commit message:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)


-- 
With best wishes
Dmitry

