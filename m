Return-Path: <devicetree+bounces-73241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAA98FE4FC
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:14:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE29D1F23B95
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E974E1953BE;
	Thu,  6 Jun 2024 11:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tN7D1biM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405F119068D
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 11:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717672488; cv=none; b=bFuEl720SUMTfOueMNpsg8VV90cLtFNFU1qFW8zzYpbeNJWFbXrvlS0nv8Ssh2EuM4U65kPdUsWQNMenPHOQEavDDa5bgChJPUFV8qH+aBBvMZH5MNc/jZCw0o+gXXnEa+hDSpZgLR+4gVi9+BfsAqO16FLct8xopF5D2Yx0kug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717672488; c=relaxed/simple;
	bh=4OcKRZeubzftDOHF+PuyddVmW/pjLJTY+1r8WmH4zXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ge5027zuwdDCSdZgxCe7w0rAcTX50zSrL4yRL/CCSzqrdseWJYF6ZqjuQu1/yfIPWGnTbQ4lVqepO0fCtkbUysU1YN3MXZI7vMIgME/C5xU08k6/bvxB9Ta46SYQHcvyJquQMp8LGci5k524ST9EZcgNf0SUhi4FTQ51KTF/pps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tN7D1biM; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52b83225088so980993e87.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 04:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717672484; x=1718277284; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pvSzGDf4yqX94jo6I3edAV4suUv3MXjnruxR7ZvygcE=;
        b=tN7D1biMEQsIR94IFExU4wi9QwfcFNT9fqWh1MTpshXgiRk2R14Z9olNgVShKVHV/l
         TWSQsx7OJaMp5epj/c9vF+QH9gqo1EaT44xt5uXS2KUJtl9eit0swhtnGWrcArkTraYO
         4JKWH8aQtl+2O4dwOEE8uYXykp0+ZrnTSuqMtHaXPg8xdNvZJnuh/CEtNVKzYxhmEvOU
         LgYNW6Mb1PRZ/hC4irP6bfGHRyewu0cwey/6pxtHSoAkDenOQasY+48rCf1BmnbBTiZr
         pwqWjy1U/SJryKfJB3Pw3sxZV2igcNP84Qd9JWyjTSMbA3dbM624/DTQ74/VhxD7m3uq
         WvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717672484; x=1718277284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pvSzGDf4yqX94jo6I3edAV4suUv3MXjnruxR7ZvygcE=;
        b=Eam6EaFc6yBDF7PU0TkNH6jqtvDrwob7hLavNXExcU1lqBWCvhnDeIAuHaURtvIhqV
         Sgpa7nDYyl/2lyZbLLudXS1RcicNr8rPbgdXRO7IaEYpOxonAD2Re9sjETArVelTzLEr
         2b2NGG8Jp3jSiWFWC+9tJWBXt2WRsy8HLJ2Kc+94q7hEXK4bP5lTRlmjc0VMljkvFkMU
         faNh/evtlnf4bJI8xssJIMn+ckrc02jhHuyN1KGBg83aOC4T2yjM3ZbStqiP2grz0nJq
         /r9tCUTv8ZRuNnWGgJupxQiZs0SXPQZBN4ekfTa2a/vWW7QcNWZHWJjjt39VXKkgXjoC
         DO1A==
X-Forwarded-Encrypted: i=1; AJvYcCXxHKgFYoF9tSCXsyHKgg4xYdWBBHk2/hZbUpP+r5onBrLcusw/H+EJezWmFYgW5wEiq3haMlVme5k69wN5ZGPxNUwM9jM1ByywkQ==
X-Gm-Message-State: AOJu0Yws/Mg5z7pCUwuc96ODpkvLd2ZINbYtNeNGS5LIPwfLZjoIb3ip
	sqA6dv2zHYF/XHhGWlDKoDSrv2B9K8wQv+rXNk+uZiFx8xBf5LTl1zpcIyR9bCE=
X-Google-Smtp-Source: AGHT+IGwSSbQWF7LVxCdAZUUnKUh6JuUpUQHS2aBX1FqqgDbxBuwGRTyjAMQJ+TaeKBl9hDknGwDWQ==
X-Received: by 2002:ac2:544f:0:b0:52b:6cfe:a21f with SMTP id 2adb3069b0e04-52bab508dc6mr2965699e87.69.1717672484390;
        Thu, 06 Jun 2024 04:14:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb433c8e2sm164741e87.260.2024.06.06.04.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 04:14:44 -0700 (PDT)
Date: Thu, 6 Jun 2024 14:14:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-qcp: Add pmic-glink
 node with all 3 connectors
Message-ID: <kgo5oeqcy7h4ejfbeowyhdjvyi6kd3eztohybe5wwrjxjlceua@ynqxsmafbuj2>
References: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
 <20240606-x1e80100-dts-pmic-glink-v2-3-972c902e3e6b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606-x1e80100-dts-pmic-glink-v2-3-972c902e3e6b@linaro.org>

On Thu, Jun 06, 2024 at 01:41:54PM +0300, Abel Vesa wrote:
> Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
> for USB only, for now. The DP ports will come at a later stage since
> they use muxes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 119 ++++++++++++++++++++++++++++++
>  1 file changed, 119 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

