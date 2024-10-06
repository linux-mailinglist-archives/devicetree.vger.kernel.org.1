Return-Path: <devicetree+bounces-108215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEAE9920D6
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 21:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 609C51F210E3
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 19:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E96A189BBB;
	Sun,  6 Oct 2024 19:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tBReU6W6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75368155336
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 19:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728243939; cv=none; b=sU7hpuM0pTvEhqP23A/WPkS8wq4r7rGwm61Aw4RdTyFeUfGx9m/l6LTiBikkRAJUJtLYhrAAXd0URnp0b15KQkhPFrQNOKh9aRGHGiFsawWxxUJbxPSmg47idrR87nNQGDxwUNZPnCHtNnXak/ouGHgcbiFz16Wk20ls3ozk2NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728243939; c=relaxed/simple;
	bh=gczS1H8RCbq/oSB66R44ifTocw2j5ELoXjzfzM1JX+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V45ZSR21X/RD5l1izBKjZmeqQw9VIKpXmZwpyAih4Lk5MFOfnNCH2pXWvSuoYPyZpOpKKXYsuk/IOvf82evz7d3iqg2MlqOTS/ak88uZ5MEG6OJpnQ+vCfXLIqQHVIp+iSNNRL+dfsFjMY5g1EvyXTKfwGVCeMsTHObjNDtkWd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tBReU6W6; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53988c54ec8so4142032e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 12:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728243936; x=1728848736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tPMa3wRhVNb5mYhrjN3uRQ7odnUdYC8uDGoeGsan3nA=;
        b=tBReU6W63QatRpiBSQEpr3RrLodlFREYNPx5zP4i1Qy6RMXGMdTQR95zppQr20T3Uv
         shOG3KsYiDwzveN607KpD6HS0fB20F5ngowH4AF8DMJqbKa/DFCWh9itO3/utzliz8d8
         sKwfemdmYN2tsb5OYl9ViNZ+Y4QxoM/b8aOi/dKlaJZWbrIAiwPnc8g4FCMQkqBi7lKO
         3+Jxha+7eVityTMpCH8V1LypN875Xx5Q1eXVBHXtsm9ottemkBdVeBRqWNMYa+lxd9rs
         d2LrhxF5JUkK5z8klL8w2ARbhFKA/FqDlwYD4HG5ZP6svaM6FVisxNuhCc6eAqzgWMm4
         7/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728243936; x=1728848736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPMa3wRhVNb5mYhrjN3uRQ7odnUdYC8uDGoeGsan3nA=;
        b=PDBfTsaH4GzGwa4tJ91sMBfQf3yWy92RA/Hwx8e8bMhqGguwEykTSSxnU62DWoi2s2
         2+1OyY8j00+3pe02QwhpBfsBZ9nT1UZoK65NvUAS87JSPXoXVLPR6Y/Nm7+8jU7z7MG/
         pZlLI4tx0GHmSj0OX/uFWsFNyF5ZtHAmf/gprj+S0qKLc1qD41q1YxWpBm8EVsVQX2BF
         SzuzdKRQCtBkV3M7GlLJcMmMXXlyTI6f02Cf3tvq3Z6D/N3056GBe1Xh07zLtvcm+StL
         R5sNH3oqq/4F9uGSml+cMWIEgjigCP+URNryNT+pUyQyJgF339M9xQjaJPyeIDRGXnQS
         YvOA==
X-Forwarded-Encrypted: i=1; AJvYcCUcHNE7ftWHfAuogPlpZl5SwUXEVmVw6zHaY4u+eKMQP3fj4piQ7WTCRL89B74HCAyb5Yn+i10sJbn3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4L841ebxbr1BBLxpN5DPye/KuwJyz2xoPwFnaggFFcdepE2SM
	96nG2lUv+MzLfE86L5GKRxtwIfmnYrP1Y+EQur8mtSTM++JS4IMoIPme3j2O31k=
X-Google-Smtp-Source: AGHT+IECZeyJy7q7aAhf4eqzO/46/Q8wdvSrEncRmYOG1aRnfFDqISQszpWAxx60b3qYA7t8pNewxg==
X-Received: by 2002:a05:6512:114c:b0:533:4477:28a2 with SMTP id 2adb3069b0e04-539ab8780damr4558781e87.16.1728243935636;
        Sun, 06 Oct 2024 12:45:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d2f6sm601611e87.152.2024.10.06.12.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 12:45:34 -0700 (PDT)
Date: Sun, 6 Oct 2024 22:45:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add debug uart to Lenovo
 Yoga Slim 7x
Message-ID: <pl7ixe7imgbajceyrlujyilnsd6442gywjn4pft2zjpboqofug@xnj44uujaoqf>
References: <20241004192436.16195-2-maccraft123mc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004192436.16195-2-maccraft123mc@gmail.com>

On Fri, Oct 04, 2024 at 09:24:36PM GMT, Maya Matuszczyk wrote:
> This commit enables the debug UART found on the motherboard under the SSD
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts   | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

