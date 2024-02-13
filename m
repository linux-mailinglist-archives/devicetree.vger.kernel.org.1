Return-Path: <devicetree+bounces-41261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED846852ED5
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 253011C20FBA
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6EC339AC;
	Tue, 13 Feb 2024 11:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gTTCrbLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB9536AE9
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707822637; cv=none; b=G/xtC7fXz4k2Yd/yMd9hnO3bgBFMkTNVaqxsTEPBYeRThjj0wlwSytbRzOaBWITCqdDAnCs6NfGHt/kMuJCwT+yhsI+rx1HGR+m11Pi8AOhftP74P8clrRHK/V0GMVvF5kwEQ/FhxR5Quo/xywFd3lfTc6E23jQs8p/h0beocbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707822637; c=relaxed/simple;
	bh=2eAjV/lUihpr3cGgOqZVqKcZ9gQn/gUSaz5pZxvAkcA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R57Im9aGuplEj1hq8IxYzGq3dhAqMHakG51rId87lqFdZ3uTUI4NCW+AbXGuKGpbwF6HXwlfl7Menv2fPIkUGzUW8iPLJVGtB/SdSkmz1M3m8W7AhlnZuvO2y8KJfobLn37gx15O+fambdpPy2+wvxLn/veolz8O5R/4dhD2iLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gTTCrbLO; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso460126276.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707822633; x=1708427433; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ou+rxKAaHbbML85Kt1koJK934V+YLP7xcnMtHJXjmAs=;
        b=gTTCrbLOnGblov98C+EqMTtTdBWRmjlXF4ewoZyMfDdzj5WJ+7H1WCmrnKMnDgSvcN
         j7jhcOkHuHDq+X3EPYBPoR0g/1GsvRZvRz+liOD78SlDkQvhCp8KUmZ4v0CpSG7v6SOs
         Uobr9ImGr1iwu0lSxF/1O7w06yijc6InMzN69tFYbFHDR1xSMwtSpKZbnYM3jrLzZqvn
         NhmUzvtnVtqokoK5HttLG5DlLHVus6a2CYJBQTk9vcQS0x/V0t9d1Ny13rTGtqC7ALxF
         OEtiKtWjB008p3vqXG/XXlniFMvGLft5z6a/zU6LzC8UCeKfQ2JQx+C8KtE+C45zCXrE
         M2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707822633; x=1708427433;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ou+rxKAaHbbML85Kt1koJK934V+YLP7xcnMtHJXjmAs=;
        b=W3fQdy5bFT9cyoSmDkCaR2SEUh0E/cC9KPWTXqkPmNO/iAEJZxGRg3bkdVpNhkIxIs
         shensJn4dszxRJ3ujlQVI84ruNt+E6P1ySzVof3p9fn+Wq9cs3eFKzdnoHBXa4mnXhxX
         TN6oN3VFN7mHxcCC+b8WOvKYyIz8Va7p2GXwB5BdKAgaEw9BblAvbjmEW1GWcIkUKLV0
         vS2NOP/dW1ZdDSapcvNu3PU+jkuBCwxd4vTgCaVTgnOGMNrYsKJru0D8XRI9QYnXqFYd
         VmunB0US5oi7DPivCbGsQQo4LDfQp5mR3GYY9lJXAwbhaRy1N0pfh1QYZOZpAQl79CX/
         IwGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbjFEhlIvAuQ+AQrn+e+mtMZPUsjB2EQizOPBi+98ke3hPW1H4MnhBVa5mUBWg/dd+N+IJpgejmzXWrqrtEL6CVQmtPOffGaSV3A==
X-Gm-Message-State: AOJu0YwKPDpmnEgFPrEqSMtXBgy+zoALd9B0Z8jsqRq4v/Mykuy1ZlgJ
	CFuhBfXSjgp+J0pItspT9+v+12lY+sjgRUfx2styiM7Ze7FOvXewxxD4VgDVshJeYHem3okSxwQ
	GPxNNWXW1B/1NyxehjQOCsFqjs2mB4HDlnuUOlg==
X-Google-Smtp-Source: AGHT+IEeEeSBcZ/sB6u7T/sqmPls2dQZZl/LCtnYYAwE7YzlZ4/C1fbTiGX3NHjTUOn8UG5vNpVHmaaB7Z2L9ykNceE=
X-Received: by 2002:a05:6902:2607:b0:dcc:5b7e:ddfe with SMTP id
 dw7-20020a056902260700b00dcc5b7eddfemr1248774ybb.4.1707822633587; Tue, 13 Feb
 2024 03:10:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20221114170635.1406534-9-dmitry.baryshkov@linaro.org> <a61a3561-0dde-472b-b8a5-451703f6d8ee@quicinc.com>
In-Reply-To: <a61a3561-0dde-472b-b8a5-451703f6d8ee@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 13 Feb 2024 13:10:22 +0200
Message-ID: <CAA8EJpoJUZDUxpA1+LJTEVRaMQJrpZ7iU9_dZ3uQvzPKE_UUfg@mail.gmail.com>
Subject: Re: [PATCH v1 08/10] iommu/arm-smmu-qcom: Merge table from
 arm-smmu-qcom-debug into match data
To: Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: andersson@kernel.org, devicetree@vger.kernel.org, 
	freedreno@lists.freedesktop.org, iommu@lists.linux.dev, joro@8bytes.org, 
	konrad.dybcio@somainline.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	quic_saipraka@quicinc.com, robdclark@gmail.com, robh+dt@kernel.org, 
	robin.murphy@arm.com, vkoul@kernel.org, will@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Feb 2024 at 12:29, Pratyush Brahma <quic_pbrahma@quicinc.com> wrote:
>
> Hi
>
> Patch [1] introduces a use after free bug in the function
> "qcom_smmu_create()" in file: drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> wherein devm_krealloc() frees the old pointer marked by "smmu" but it is
> still being accessed later in qcom_smmu_impl_data() in the same function
> as:
>
> qsmmu->cfg = qcom_smmu_impl_data(smmu);
>
> The current patchset [2] implicitly fixes this issue as it doesn't
> access the freed ptr in the line:
>
> qsmmu->cfg = data->cfg;
>
> Hence, can this patchset[2] be propagated to branches where patchset[1]
> has been propagated already? The bug is currently present in all branches
> that have patchset[1] but do not have patchset[2].
>
> RFC:
>
> This bug would be reintroduced if patchset [3] is accepted. This makes
> the path prone to such errors as it relies on the
> developer's understanding on the internal implementation of devm_krealloc().

realloc is a basic function. Not understanding it is a significant
problem for the developer.

> Hence, a better fix IMO, would be to remove the confusion around the
> freed "smmu" ptr in the following way:

Could you please post a proper patch, which can be reviewed and
accepted or declined?

>
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 549ae4dba3a6..6dd142ce75d1 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -463,11 +463,12 @@ static struct arm_smmu_device
> *qcom_smmu_create(struct arm_smmu_device *smmu,
>          qsmmu = devm_krealloc(smmu->dev, smmu, sizeof(*qsmmu), GFP_KERNEL);
>          if (!qsmmu)
>                  return ERR_PTR(-ENOMEM);
> +       smmu = &qsmmu->smmu;
>
>          qsmmu->smmu.impl = impl;
>          qsmmu->cfg = data->cfg;
>
> -       return &qsmmu->smmu;
> +       return smmu;
>   }
>
> This is similar to the patch[4] which I've sent in-reply-to patch[3].
> Will send a formal patch if you think this approach is better.
>
> Please let me know your thoughts.

None of the other implementations does this. If you are going to fix
qcom implementation, please fix all implementations. However a better
option might be to change arm-smmu to remove devm_krealloc() usage at
all.



--
With best wishes
Dmitry

