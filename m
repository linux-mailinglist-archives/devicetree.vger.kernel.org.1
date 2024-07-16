Return-Path: <devicetree+bounces-86162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B21F3932EA4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 18:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D34B2813C7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 16:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC90B19EEB1;
	Tue, 16 Jul 2024 16:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJ7Bu25y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D8B1DFD1
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 16:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721148619; cv=none; b=iqmlwNS1h92d7GJXcE0oGHdL3emTJhB9kbCvKssj8vMxW7PzryaktYr4LntpNWUa2maTgVSEwIN5H17Dt4k0iCLBO5/46zONVahDnh+YtSxr2DZYCL2woKbqLKjWTRcJRJ6jO33GR615154VQtaq0xO9yBgr7jMTZ1FIjrTMVmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721148619; c=relaxed/simple;
	bh=n0cRdUVeuF+TPdkHtAJ4MrKQwsxnoyftuba7ho6uPoI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SREOxc7zAwXJvkD5hyH7S54DRI8FzIUi4AY5nAxcnbVzBvUtjrNPej21A1F05crXytN3J0upT7YeG6Bhyh9JyV/4EbYmxGKNc7Rh9kjwbYUcReDHCxrp7kl/8bEZ4X6fZPPL4cDyvRXx5BTYT9wqgJ8kxQtEYSBMomdBbeE418c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJ7Bu25y; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2eee083c044so38180881fa.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 09:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721148616; x=1721753416; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CutzVZbBuYdC//uAM2GMb6dlE9xUeemCkZXQmoieiZ4=;
        b=aJ7Bu25ydYMLDDnQ6mlFbjYFtDkUxHaHq75sn0yfh84JMMYOE6MKwOHDSMPa1lhPjL
         sU40m8vHvUEIwHgDwbGJpRVhDHv/yxiIOpdQ09rzoR+1sAJnrS/5oGrpBCPgoqm0Pd9l
         TE82ISbfmCZH1p4wbJvQTYD1qmqJqcKzw2Kw+6f+GQg4oV1Kez7MtcKJTmfWrvC6EF3k
         85BIyB127AMa1UCuM/kvMnF/e3HHf4L2SplJZKWsqWqttvAsylcaWIJsIitbgXJMPA4H
         xTW2CN80Xb8AeD5mDjnExyEG/uTv2jEP+YyPa8VVCHtnHMdb3bMi7V+uMiNOM6c3rfCG
         7vqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721148616; x=1721753416;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CutzVZbBuYdC//uAM2GMb6dlE9xUeemCkZXQmoieiZ4=;
        b=D1BUBx7AXbN0SizO4O+ZbuVd48SpD+mTArtVMVBhlUyee+CW5uq9rORZ+aTEfdDxX9
         zQjQKfKnbyGnnMz4SEKVxpgTJdin/IHTMAmwg2TZ2swJwJsJfSbeOZPAoFVl0bUoJrTA
         FReO0bc7/3MLfsQ05Y5ZO2V9DipteiAfvaeOODcVeIZQXKTbJgeinFjXP98q/SbUoGwa
         kQlUfDPt6Im0Bs/R+4o29Fb42R/bRO/I8fl8ssQyUZDL84mQPiMqN/idP80k+Y1ihkpM
         UBZ2wiCp9d/G1jLbY33WCYm+uAdjjA1lBypImxj96OgBpMcE5lBow+f0GpKuhhyJDDMk
         Q3wA==
X-Forwarded-Encrypted: i=1; AJvYcCUd6an+iVJqZztRBpzv9Lm6U8xF8SIdJG42m6j01jpsXzMTEXPCVxIts5BEWagmcVEoxzg4fj46pl4l7ZPVKt+Ed3OlZ8WvFKHZIw==
X-Gm-Message-State: AOJu0YxCRxlnVEirQmQPkfbnONz/uzaudn0EP8s/0ayCNAwiMYDGmUnE
	ttgk1ssdLKreCplX/3tZbomNTUUbDwlt16Snl9hxyRQe4eh3eErz0jPTdLvsh0s=
X-Google-Smtp-Source: AGHT+IFNzQ6RluIrtq+29sTh2FoWPSICVDmNlgUVgLB+IhIvuT8dnx/WROGPT1B/1b2kj+htKCGLUg==
X-Received: by 2002:a2e:b911:0:b0:2ee:8d04:7689 with SMTP id 38308e7fff4ca-2eef416e131mr19983111fa.20.1721148616368;
        Tue, 16 Jul 2024 09:50:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2eee1914abesm12155871fa.84.2024.07.16.09.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 09:50:15 -0700 (PDT)
Date: Tue, 16 Jul 2024 19:50:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: msm8939-samsung-a7: rename pwm node to
 conform to dtschema
Message-ID: <vcqlsi5d4eeejlh6ihfodkvsw46vxg3av65lhczqacwqljlj2g@4folnrsvxrg6>
References: <20240716135339.87192-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240716135339.87192-1-rayyan.ansari@linaro.org>

On Tue, Jul 16, 2024 at 02:53:38PM GMT, Rayyan Ansari wrote:
> Rename the pwm node from "pwm-vibrator" to "pwm" to conform to the dt schema.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

