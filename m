Return-Path: <devicetree+bounces-122385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADE19D03F1
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 14:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C41A7283795
	for <lists+devicetree@lfdr.de>; Sun, 17 Nov 2024 13:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD19018FDD2;
	Sun, 17 Nov 2024 13:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RbB2plzl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8E5188733
	for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 13:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731848927; cv=none; b=IpExrTtATkETc7sF49UgPGkglEKmDLRclAgL51/sOGecKNZ1La+0HJOO2gRYsN47TKHEJFN5Nu4QVYr/qkdvKxHfiOaJBf+TkBcT9rYBNUSvgAx4i+oDkI6LRsDbs+AGqgJ7lRd3hjOGn2XQlRygFMAnc6EPc5/NbGQzPBOK/w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731848927; c=relaxed/simple;
	bh=GrZ+DyXJhogiFXvtPbLhc0NLu6xmb7Co8Ss70qrimGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZSM0U5ToiVLklMzF639BZJcYhcDCDYMTZgXUvYLvRQ4MlCryN07xoZvKRaZp+myi7gm/uLHGFUlDPlB129ygWHdhMZdg8U0wcBNa4fSEyA/2ZZpQKdRr0wkrAGQNCru9XgzzTKoPlIvSVO5lhJ+oOAi6Z9Jh19aghxK50Y0sXh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RbB2plzl; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f53973fdso3033047e87.1
        for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 05:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731848924; x=1732453724; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lMiqxnachPtnrwIxnjXl0VUgpWUzd3BnOxQS8OflklU=;
        b=RbB2plzlXkZiuFNGgGOuNzGJk0DqHPeZ5U1wtnc6eN/XmP7RdDFV2UUIQfG0psm71L
         poX2xvM9+HGQeXkK68inJv0LHcxAgTq91VdbxkI1u5rja5I/qQDul+yXMDKaklirvN7A
         Za48PwwzFrL9IUJeW6ukBnXDOXMMtvgHDGMxEXmk2UTKF7uEbQtte4Hs657RguxbjGcx
         LutFe30Oj3pvLhAClT5WGsVWKHALtbhaVZpXX3GtnhNW3roBeDFBNO7IeIwAEwMSEUBg
         8kL3BkAjVq/ySjICQeeKurTJeZ9UuDHtGbYE7zMHixOgzTiEieK1CzvV/3UCyCuqlsPb
         5FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731848924; x=1732453724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMiqxnachPtnrwIxnjXl0VUgpWUzd3BnOxQS8OflklU=;
        b=Gf3/rQ4K+Jn9yCZFgKQt7UkqmPNGaWLEr4/DHE8+lOKxACNPdvFzLVze7UW/MZVysf
         IddLA0OhP7s+Jc93kyHU9kI+RMyXvwYk78w5UA80AR5nP9U0RBp7/jyqUpEn2OypNV9W
         qPIGUmXAjaW3Gi1Cbw9zfJc/4dr1w+0mG9LQb2ideo8/Lj+QSidq4a0LfJlIgFIR41te
         V02daUw4mdf+d4KpvFW30pjBeL++i6X+cdV3HzbbO97uxKR/V4rmsH+zxHKY5SrW9f6k
         Y6GkUegV3G2zrVA6iFNF+cnGvbWfaosksJI/gXDThFZ5xgusVGZYyAcqxxHstMskGzrO
         rjXg==
X-Forwarded-Encrypted: i=1; AJvYcCU7gM/8o8r7Ovdyy9jllpitolMpd4snVasHWTZx1R3qUY1EBdRStkkvL8R5BI9Ey2SyqI02MQvXMuYi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8k1iRMQjtRGRKzZKpLCvjHz5GMycTVoKC8Iwyf6T+fbLvD1K5
	OWCPFNJZUoIwkksiWd0oWI/3lFjj2kBqLcgQ3OOIa9hALffgGIZf+6HT1hJLN7yT2pyCj7TM5eG
	r
X-Google-Smtp-Source: AGHT+IHfOwPcoxs93PW+NNDxxa8NcE7Qb1fhdry4R+keozA7Ik5cUc+igrNyIsrm9x1rQvOeWYIqnw==
X-Received: by 2002:a05:6512:304f:b0:53d:a998:51b4 with SMTP id 2adb3069b0e04-53daafdbbd0mr2679853e87.3.1731848923677;
        Sun, 17 Nov 2024 05:08:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53db3733506sm350459e87.189.2024.11.17.05.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 05:08:42 -0800 (PST)
Date: Sun, 17 Nov 2024 15:08:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: remoteproc: Consolidate SC8180X and SM8150
 PAS files
Message-ID: <whzblscqqyeyltfceik55t5bimvl5jyx2scewefurpv4ye6sa3@cqtij3upryk5>
References: <20241116-topic-sc8180x_rproc_bindings-v1-1-ae5d3f7ab261@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241116-topic-sc8180x_rproc_bindings-v1-1-ae5d3f7ab261@oss.qualcomm.com>

On Sat, Nov 16, 2024 at 12:40:04PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SC8180X PAS bindings are plain wrong, resulting in false-positive
> dt checker errors. SC8180X's remoteprocs happen to be identical to
> SM8150's from the kernel point of view, so reuse that binding instead.
> 
> Fixes: 4865ed136045 ("dt-bindings: remoteproc: qcom: pas: Add SC8180X adsp, cdsp and mpss")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../bindings/remoteproc/qcom,sc8180x-pas.yaml      | 96 ----------------------
>  .../bindings/remoteproc/qcom,sm8150-pas.yaml       |  7 ++
>  2 files changed, 7 insertions(+), 96 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

