Return-Path: <devicetree+bounces-111424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C8999EB91
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F51A1F26637
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779871E3790;
	Tue, 15 Oct 2024 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TyiLKfPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC061AF0A9
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728997702; cv=none; b=WOb5C41L7JeGau2/XcqGV5PRTUioijf7Hljs4e5I/mau72PYg5UjpdugRs3qDbhlSgpcmnSFUgJsQI0oMUDRLswspF7PCuWEPxqjeK1L75FuwWTp5C6/zYaIR27Hi+NgGlTu9v/e6Z+Eb7VhEexSdMS72xuvqmaPzTZN9r8VYLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728997702; c=relaxed/simple;
	bh=nGUgaS3xSqIDmh8hU4JivJzlEHXiIXok89af7BxXPcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qx63ARlD1UHVSrBPRl/rbhgG8xhHFnxnq966Z0zxsDKl6vvRSYFoKQ/VCOQCyfHMx2IDZG5Ej4GkZCJoorkKbzJjxRxtCYGWAAmzZzZrL8bWIAOtUTQR211/CMPFP3PEnlneC3HfbmxuuWrfa0/xSmd7yJ2XWe5y8OBZBDLjAPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TyiLKfPp; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539e6c754bdso2547991e87.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728997698; x=1729602498; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jrYegS/cg9zWrW4IjkZUnQE9rjlPUwUGC3VKtBGsMag=;
        b=TyiLKfPp32pz5wSuayFx9M+L732xmvp3i6cdZCgFX4ZOeNf5wXVdxzUWNdIvvGw0Ez
         Y4EJZMYSPwy8CftpfMwin7FT4huXg6RoLDhhxpcb4t3MN5BjfW8KIQu8uAbMuP1f8Sm2
         NxcKqTfwYiG9Z8MtKAJyQb4jOIn69Px426lPTiWVgOneUzsky1mvQpMPjmQu28lpXjMV
         gG3HVClXuXhozIxiwBlR3skVw7o06wu9+5IjXhugl4txC5638hhBIKaH8KPCIykMiC0d
         W5kAoD422SaOOrIOKTRiPDNVjH+3QgZxgNzeiZd2sA7HjELl09wDn+pClogxrOmhbFUf
         TlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728997698; x=1729602498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jrYegS/cg9zWrW4IjkZUnQE9rjlPUwUGC3VKtBGsMag=;
        b=CijKqx5OPseEdCst2CtauLO6DxTcjBFY4Qo1S5eLJ3WTEadQdAlHhTVC4/u4FK4o0Q
         2YvjrL0t/CviSusC/6XRv5PZCfAda5YOKgCR5mznPlH7eJT4yv+w+4jGxD37yTJV6lvE
         WqJ1sqR8JF8K4o92ziXKsUXxx1DjlRoeafNmlnYgQMCUof25BTSnaJ4Fj4ofxiityxd2
         PGtIIkqfBKquv4LZA3RV6yPWO0EFdPl5nojeoOJ3Iu5HDWgu4zRZO8ztHjNwh60qKSLX
         JGQPH4bkgYK2kY9RyXMitEoGCnAC0SK33CxcujlV+MNHDQzRYAKkdRS7/eszGy9RDMGA
         oqgg==
X-Forwarded-Encrypted: i=1; AJvYcCWpTthR/RLAa+XQUJy3LvLcOMUCppeXlz5gSMJEMDHg7G1b1sJNlObEymPA54FY6gyAJ3svTlV8ZEGc@vger.kernel.org
X-Gm-Message-State: AOJu0Yydy4KLeM3U28bBqPjsKj1czsjlSS5FmWIoVYiwhQzfEMc/G/2u
	o6s95gEPm3VpCJcCOkzA6xr3Jkzohas+kAsrHUNMRJU0ZDFRdMYNnGieNlPOzKutFKffXfKLbTQ
	cty4=
X-Google-Smtp-Source: AGHT+IEiNt9jcpifpSJ4xTgDlnr3L/ZtDDqDq5h+H8YO2Y8dPiK0O/PL8SlRc64Fnhh2XiyRLqTPfw==
X-Received: by 2002:a05:6512:2352:b0:539:f7de:df84 with SMTP id 2adb3069b0e04-539f7dee17amr3532200e87.10.1728997697532;
        Tue, 15 Oct 2024 06:08:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539fffa8e92sm168284e87.15.2024.10.15.06.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:08:16 -0700 (PDT)
Date: Tue, 15 Oct 2024 16:08:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: rename vph-pwr regulator
 nodes
Message-ID: <ofrnqmnfy7tj2myngfplhycwmm6kyv4guwjlz2vuzc7gd6retg@mleqzgzft24x>
References: <20241015122601.16127-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015122601.16127-1-johan+linaro@kernel.org>

On Tue, Oct 15, 2024 at 02:26:00PM +0200, Johan Hovold wrote:
> Rename the x1e80100 vph-pwr regulator nodes to use "regulator" as a
> prefix for consistency with the other fixed regulators.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../dts/qcom/x1e80100-asus-vivobook-s15.dts   | 22 +++++++++----------
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts     | 22 +++++++++----------
>  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 22 +++++++++----------
>  .../dts/qcom/x1e80100-microsoft-romulus.dtsi  | 22 +++++++++----------
>  4 files changed, 44 insertions(+), 44 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

