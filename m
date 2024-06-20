Return-Path: <devicetree+bounces-77900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB68910585
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB5271C20CE5
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D0F1ACE65;
	Thu, 20 Jun 2024 13:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zzAZJoNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073F21AAE34
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889088; cv=none; b=pZXLmv3dD4TOF4KJbA5GmQGmgEZs43tFHVRyk6akpjKAHT1ifOtUH2HVQ7a966VVQgYA/TioT6lXjDtEUKFlGpwCzDlui2XH8S+jEduxOWai9leLhTX5xv46uazlYORso3OIxheMcboSmSt343/WY9bLDSwGPf42POde6fpnAsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889088; c=relaxed/simple;
	bh=DlmtTyVivKa8WpFyaEX4rN2Owu2HvKOCTudYzQC01zQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g9NEm1FMPyHY84RMOLv/VuqzYyj27y6ubAJepZtsQAYac4oOLKrQPqNQf4Y7/XTwHV5XKaCU5xatNo9gbj1cFd5Smk9+7Q6o16MOV/2liQinA1RZqx190apl8dSjxuNe3Mu9ylJY8bzUgpxA9CMhZaOXE8ZRWdJCnopNJDKKI3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zzAZJoNe; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5b9778bb7c8so389098eaf.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718889086; x=1719493886; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dkN89mEfJ4LaMed4sDqwjURvDPEt2Ku3ETK3tWmbIyE=;
        b=zzAZJoNeXFDCVdaviynNJ5nUNKYk794T1GQ5kh5O7VVBKLPUpxYx6YIXIXsCbRZUSD
         FCT9mwyub+QqAVe+fFuEp52FR58quHbiKSgC/giiFNLhyY/GV/hAZFcWiW1B3pUxGkDK
         AulqxqqZMX1DDDRnh8LJc27GXwnzWdDupFvlIzI+FMyOuFm9NirTRgioRDPkWCOaIL22
         beEDf74sKZqbVn98MZ9lKrm2qaFh2ip8zo4hjmWBiU83V5fP7qOAiR4Ga1R2E0oqDCbP
         TQMsWi3EXnxFeEdPrMMnzYPjKuFie3g00g85VKKbwvrt/2oHh0K6Jit3n6yZc1KEDijs
         rXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718889086; x=1719493886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dkN89mEfJ4LaMed4sDqwjURvDPEt2Ku3ETK3tWmbIyE=;
        b=oRdSBWVe1SLn2Bfg7XMQc47Dio2ABihKA14Sh3NcvxqrHcewzPO5FgZLxuav1ls4MR
         VruzqqEU6VAfO7typRu9dMwXX8J9yQyK/axsoHzoAxyB9G2KRE5ccqJZh7YQnfYjinU4
         L0C8W/j7JgjKymGP/+UVaWmHzsWGyUECgAtgDSNHpidvz7IhK6eX3m7PXTXeIyy32Rgq
         79zkQsFyNHyvDp0F6DSp+GIPx+vDlcyq1lIcURJf20ZqFb+ylPlY9WzI3A8V254TR5fQ
         eZ1TGqgFbKceA2wUx8FivV3i9uXR4c2B7ZZg3Atng3WuVR4Uq/MEx3jukeojLIfOwx9r
         f2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCVphKPbnlqodvKV8qsUiiN52GQYFcJBwE38TDtPQzY+PZ7XHvjbpgLkGMhJixpHMHO4XRBOP3cI6RBfQLwCyYnjOsG3Dq/W8gvbGg==
X-Gm-Message-State: AOJu0YzkqTjpK3f/xrnSDf8auM3ZSQXin058k2OWp7FuauRu/tK7TeuF
	4fBizIFcHcpbNmJ4I96WvwC0l0aC8rj2+biOQA1YnRv1kFcLUCYcSrxNrbyiq5EsHOf1BXE25z0
	E6ahT4z0okFR09UfVbtDLE6rpaQJH3QAyH2RRyw==
X-Google-Smtp-Source: AGHT+IGgARg7O7QrdP+7zlIhutKIhRRSz/CaCPjqMdOVRu01Gw0Fms2LWqwLcrTQllkhUJ6LOAOXjpsWMgOw7ZonGW0=
X-Received: by 2002:a05:6358:94a1:b0:19f:54a7:4f0b with SMTP id
 e5c5f4694b2df-1a1fd45b46amr596810155d.19.1718889086009; Thu, 20 Jun 2024
 06:11:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240619-rb2-fixes-v1-0-1d2b1d711969@linaro.org> <20240619-rb2-fixes-v1-1-1d2b1d711969@linaro.org>
In-Reply-To: <20240619-rb2-fixes-v1-1-1d2b1d711969@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Jun 2024 16:11:15 +0300
Message-ID: <CAA8EJpoq3T=c1ZNfPMN5kjjTeat4G3vAyB5yf3YxUcEOAwc1Vg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm6115: add iommu for sdhc_1
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexey Klimov <alexey.klimov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Jun 2024 at 23:33, Caleb Connolly <caleb.connolly@linaro.org> wrote:
>
> The first SDHC can do DMA like most other peripherals, add the missing
> iommus entry which is required to set this up.
>
> This may have been working on Linux before since the bootloader
> configures it and it may not be full torn down. But other software like
> U-Boot needs this to initialize the eMMC properly.
>
> Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

