Return-Path: <devicetree+bounces-119308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0809BDF7B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:37:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B559B233EA
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 07:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7331CCB34;
	Wed,  6 Nov 2024 07:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mXpxlDey"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C2F1BE226
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 07:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730878629; cv=none; b=sRuhqg3fwKnmdh4YPKcqxBU/Xr/CU1D+Yof2MN5vnvSw81C4rdvfIZ2iuhH84vEtGLW6kbjH1VrTvzctRcdCECI2zR0JS3LN/Y96n3+BJbeMWTps6alAED6wF8buNHx0+qRsBbC+r1Hawbd7jYuPj5rFEX9ExRahenJK7WNefyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730878629; c=relaxed/simple;
	bh=T+IDxfnEDhIbzwhDwnYLVo8b5mJZHz3JOJrvtUZgZUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QtFk4W+wjIFzfWx7KH/iA/OTWfScua5IYzFhYugd14SY2kpOXBkB3If+N002PZiZ7sxNrKs2WRHmijTxFJwyqVJwaEqhsp+cieLeYaxki0E+qtOGD18grBKelg60UtPXV0K5+G7b1nAkQZxPV9U6R5GiNf8/Lull/EPeTocxKQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mXpxlDey; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539d9fffea1so6532355e87.2
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 23:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730878619; x=1731483419; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1xBr3nMrr1f+V04w4SZ0IWUu6Cb5RyUO9D91ndFpL84=;
        b=mXpxlDeyB7/qoPH5Nmmk3gGt7jc/h/qhyodAN9BdeRkI719HVImXmCbYHm35JItEjR
         hxS1wnDq+LXFC6EdgvM4VkJE71u7HxRgDpm7bi9G3YKnWcl2KArfAL+vHe6XZgoAQaJn
         srUEwBK0zv5Wsii3oGLrVwZ/sBAcJe08+T/xXH1nuusUr5TSWSAjdPW4KN+ul7OkfuDL
         pIC3W+2dHU/hjAtE1AqudlZF2lCIwMk6zkPAErgUh4BKerd9Ke1Qc8uZTn7lFDsE6ZDp
         CXaIjUvmzHXEb/1N5tHmkqNvvpVHwsd6oiD9i47Oa5s+hxwzdZWYDcJRPhb1doqO3Bq3
         LpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730878619; x=1731483419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1xBr3nMrr1f+V04w4SZ0IWUu6Cb5RyUO9D91ndFpL84=;
        b=n4EyqQRn2lBzFp1Dvh42tD+w9eiGLztjKHobPpXjJQR3U2G7NU3IBMZYC4dN85D5ok
         dPhWZiktLjZeWqBRQSKwP97EGdbv7YPRTw9DC+W2Z5iUv6T54c+qaD88F1qRCbzZZrRO
         g/hZDMAYOa/TaeCDiJzGpZY5U6oMv/Fl18o8dl6uhNNSLlLVTVTd41ae6xXJ3cfJWhQq
         BCsmkJGyp5U2IpSVtprNWxfn/hLVDog8XWrEKl/5NkpL438+BUi3/QHrdoE5SqKpMGJD
         YtmHiBYazVnvVT+YZ7hQJ8tz2YgLDwnv6KJN0h5yLlUL3f8BpwMk75jCer3raq2IUWGJ
         ZC5Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/aVfpM5n7Bak5X8Pst4ju1B6xROt1TjRV0PnVgtacTtqeuO8K3pmtzPJzeWvtnZYc+59z4K4IvfEc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9SXT5hZ40oSac3arEtlOAnF/jtJi9uh6oWE9JOrWtK0gu8JOp
	E/5dTqeeF/ygxCEerGXPfq3dLLatT/B+KpRQIIvNXxSyRXAojeFR3rdJ2EqwUpo=
X-Google-Smtp-Source: AGHT+IFYDqIISjoUL85nMRIGPu671NngEQq2CYpjOQlQooiQOP6StYmNoX9XGKAhYB1b9IQWouSWdQ==
X-Received: by 2002:a05:6512:4020:b0:52f:c13f:23d2 with SMTP id 2adb3069b0e04-53b3490ed8fmr18329343e87.25.1730878618811;
        Tue, 05 Nov 2024 23:36:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc961dbsm2398693e87.43.2024.11.05.23.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 23:36:57 -0800 (PST)
Date: Wed, 6 Nov 2024 09:36:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, bhupesh.sharma@linaro.org, andersson@kernel.org, 
	konradybcio@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, quic_tingweiz@quicinc.com
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcs615: add SDHC1 and SDHC2
Message-ID: <347uhs7apex3usmfpzrpwakrzchxactwtc7gs45indkzez2vfj@n75dc3ovl3g2>
References: <20241106072343.2070933-1-quic_yuanjiey@quicinc.com>
 <20241106072343.2070933-2-quic_yuanjiey@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241106072343.2070933-2-quic_yuanjiey@quicinc.com>

On Wed, Nov 06, 2024 at 03:23:42PM +0800, Yuanjie Yang wrote:
> Add SDHC1 and SDHC2 support to the QCS615 Ride platform. The SDHC1
> and SDHC2 of QCS615 are derived from SM6115. Include the relevant
> binding documents accordingly.

Which binding documents?

> Additionally, configure SDHC1-related
> and SDHC2-related opp, power, and interconnect settings in the device
> tree.
> 
> Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 198 +++++++++++++++++++++++++++
>  1 file changed, 198 insertions(+)
> 

-- 
With best wishes
Dmitry

