Return-Path: <devicetree+bounces-71022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF03D8D569C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 01:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5EFE2894FB
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426DD183A71;
	Thu, 30 May 2024 23:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vUmR6IyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A921A1836FE
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717113188; cv=none; b=CYSBXNwbrEavBpdSmFabWjSU6FieBluJm+el4Le2o3Vtxlc0eUkEAD7RJkJVCFShkmZYHsfgA1fXa1MdwvNJ0mqEJBqGxQw0NEEh8GQH3FYl1UQIp+cxZts6nma1KRD9+pdwq/qt4TbqRu0lm+qCf6M7//vdL5d1u8dhdkNd7yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717113188; c=relaxed/simple;
	bh=ch9JOiWMJJiOnUpYGVLTxj7kFd7UnTTTyRR8CRFU7rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CK/MBYfcOF3VNMAg044t7fD8HbgMo+l1BCvZ2GkwfFYycPGSyTmspZyXEtWBYeSNK3YHEhmQJYY3j3YVyTQ8wqER8vxKhEtVK+94o3J8PqtGH7QxfBRGmc//H5TEPkvPe0G4R5iKT0gM/C/FVbJPyaDZ+uFt41q+693Ip+FD4Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vUmR6IyU; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ea80a18094so15605581fa.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717113185; x=1717717985; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tlJj/+/ssB3tzpOxPNXGmmF1sQcYcHLzfsgA/Q8exQs=;
        b=vUmR6IyUR+waUkrJ+VrlMdu6+gQc9NbtD9ccN1aoYCOFkGU645t8xVZ97UbcjOoS67
         QlY3tTUYRLYw/PgSyp0vW8RTUKa88CmO6+Jp6BwnfXfvKiY7FXe/eKtXcyvefPbUkwkg
         nXg2gBgFNRFo6AtNO8JZiacbC9snNcOb479H3sq6OVnXj8P1MnTHlvZin3hIk8YD/v36
         HITv5JSs0IbQds8TtU8tQAohn0FsiV1/XoQmJmqctxHewdvZBbCGT7o2t//9jAcU+Pw5
         WlE9L/vXPMW6eo1zG4Gd27hlsM/Y96bKqs7Emh1efoVWfkrQ3sSD4dEcGoWBJT6QjJWC
         mY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717113185; x=1717717985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tlJj/+/ssB3tzpOxPNXGmmF1sQcYcHLzfsgA/Q8exQs=;
        b=RdN0VuiZCRUbisBi8dh2UFT/0DFBnduWwnKzv5yXO8eUChDVoEvUDuHAp0V7HS381U
         PDspbTS9KWtkKCXeAhJfCH1fGbpMPiy3iGPqwEMyXpwHRU4eFbmlq8K156LY2Ed0LLj4
         GbN4MFPDk5rTK33Qj/+T3kje+jOvZkuNQfL2x6xR6JrXz8z5A0vmBxzyn+E2I0ndm/U9
         wWNqT7RIwDDFbP65ZpN+0C1lIYB7YJM3gKZz3MsSQIOv75Pu4prpzS2VVccv1SHO2r4U
         dJWHGLXfG/MmPkjyXwyNQAhGIKt7qHA8i7DYFzaPTf3baJk9r7z9DSIfmPZyHO1mH1i4
         F5SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq5CY0vTg1U7FmjyQ3cYGS92RBOvcAFubqLP1HzssAB4pbtanhWmqDVjESF5/eEBwPAO2l/NPfuZC5RdZWSpltsvml81i5GtrA0Q==
X-Gm-Message-State: AOJu0YwzbxoIiQ6Vza3rgcmI5uyLPg5r5qEOvS04RIolw5vG76ESAjMr
	1PflFuVQ2ly506I5ZcqK2jrz4J/oSGM/+OtkHLpTtdxMu7sl56BHcyC0cKc3SgY=
X-Google-Smtp-Source: AGHT+IFj3K/ODweCD15rlhGe1SP3IwwnmKl+c3p0FovbaaNRXGZ07AuOQFeYzCXBfqCYq3scprljbg==
X-Received: by 2002:a05:6512:34d4:b0:523:7680:d07 with SMTP id 2adb3069b0e04-52b88740613mr98923e87.6.1717113184849;
        Thu, 30 May 2024 16:53:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f3cdsm128263e87.76.2024.05.30.16.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:53:04 -0700 (PDT)
Date: Fri, 31 May 2024 02:53:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: x1e80100-crd: Fix the PHY
 regulator for PCIe 6a
Message-ID: <tbnstgvm67iiiyet47hdtkhhkn5bpabthu2c3kf2zydddraa6t@ficbm2sy7i4s>
References: <20240530-x1e80100-dts-pcie6a-v1-0-ee17a9939ba5@linaro.org>
 <20240530-x1e80100-dts-pcie6a-v1-1-ee17a9939ba5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530-x1e80100-dts-pcie6a-v1-1-ee17a9939ba5@linaro.org>

On Thu, May 30, 2024 at 06:43:39PM +0300, Abel Vesa wrote:
> The actual PHY regulator is L1d instead of L3j, so fix it accordingly.
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

