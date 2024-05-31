Return-Path: <devicetree+bounces-71334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E638D6578
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 17:15:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF8A28DAA6
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFF275813;
	Fri, 31 May 2024 15:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EXb9hhmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9607F52F71
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 15:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717168502; cv=none; b=Kqv1QPa/kcWkNGgQmDnk6mtOcI6HwU+2tegKCvr7TLfZzMCxECGg1J2yCE1q4q2sZr1HLn9MlmLiM2me5ZnHMkyrjIN5m5qNynk6kfSvxHOJGrHV0z82Z6+wPcgMkhuZDLckyny5nrzCEIKMjV0+FX7QCn1zMmegyYj2vtkt0UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717168502; c=relaxed/simple;
	bh=6AWdQDWgGJAq7nQG8SBrgo8ckqxBhzid+AdmIGtHuRQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJN8JWOjer6tqNHrtKBfTL8lAuVuBq/AA+tagZm4mHJHOzuakDLVFXE4Qqk1E1m6AhHsiSj8siFYBj4SSqqNcceaiCz7nFBuK10DKX5TOchAsC5taGJhmESHvuzC3sunv6pFXsgL93WoNVL9KvvbLPvz8GoK8KaMFu68imRi0RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EXb9hhmW; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52b8d483a08so414498e87.1
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717168499; x=1717773299; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cYZlx/SHZV2mJQqNcs4xl6IWMBcVCucCDsZplS2erlM=;
        b=EXb9hhmWLiGJLp3skyXGhVYbUHyhoAQn9Ni162xNDd40WZd2jU0lLjCKnnqyFTrjIC
         23fzJAWFtxb+4LIKz4WcFwju72Hl5k+qYjHVE0p+uUbkpGImfK5tzGmStKUIA8gtRW1O
         u74msF8YHz70Eso+3WWOmwmPYbBT2So4WCEuHK5jXY9lFjZvUiwtRcTmPDZzlpKgU870
         DfgF+3XtvYuHp9ukjsYtv7DMHW6ROkxFvLLoKjuPkR6+vyALV0IDYCP8pYTlS67v2UGR
         jk+GAtS3hHIMRjXBh8/Nx9OwYEZWh+5n9EYw7xt3Skjh/a0qkf+fFcOYX6i/dE6dVii6
         1Zbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717168499; x=1717773299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYZlx/SHZV2mJQqNcs4xl6IWMBcVCucCDsZplS2erlM=;
        b=WSuKv016iF3IeftTvhG5QznY6quCCsrsD7JxIIU4gL/JxXec8Mam+VdCXrzsza1N1c
         GOe4EzsDdJEfYGaXs6O0FRVmc0lGVLj9b1g4rS3DaXu89sVF7d5nZ7VgTeAM8tBSVv9H
         M2MW4qmjTKMgJhQv/OSP3+DlvNJnxMajbIIU5A5x/uZ8JN3R03d/lu0wfdun9zxQ2TAc
         RiOy6xaX1MSoHjvDwadmMTXoyP8Zgf2YttUMZRh0bzAB6473SVroI6HRXBKodYcGD6LD
         FDJ9lin5pTyaAYkQZ7mjWUAq/yg4pJtO677ZsmMNZQeQTBo27K20UkrKMq1VNfXuZWV3
         ndow==
X-Forwarded-Encrypted: i=1; AJvYcCW3gB8TfGb0qYdcr6ENrWFuCiIrACwYObeptJXMra3sCqPonKCgzTGB9/2QdL64aOHHduWCIxX1HaEyjt0fJsvE8mjHqtXKoHgseQ==
X-Gm-Message-State: AOJu0Yx0NU5uoB7iVmwYQj/ledHnHPuxEQyquhApWnFwwQjmKWwkaaN9
	YTl9CcgQdlqJbdsbnx8P2gNOM+Yo5tAOVhU/dbUbZcwZt4nWxaj6Xlic4yG1mQI=
X-Google-Smtp-Source: AGHT+IF3amjM7QbVKYZ487znDKdasgDtKWEpQZIm7AlZ0+nSfEili6eJCyHnqfDTJiqUUlkLLYvqFw==
X-Received: by 2002:ac2:4568:0:b0:525:502a:acc6 with SMTP id 2adb3069b0e04-52b896bfa82mr1410726e87.52.1717168498685;
        Fri, 31 May 2024 08:14:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d7efa3sm357687e87.199.2024.05.31.08.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 08:14:58 -0700 (PDT)
Date: Fri, 31 May 2024 18:14:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Jonathan Marek <jonathan@marek.ca>, Del Regno <angelogioacchino.delregno@somainline.org>, 
	Loic Poulain <loic.poulain@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/16] dt-bindings: clock: qcom: reference qcom-gcc.yaml
Message-ID: <l73uszlhnhyamfuwm7f6bbmockttwihsylkkgbyedkdseznlka@mtr5c7r4nqt4>
References: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>

On Fri, May 31, 2024 at 03:52:18PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> Unify Qualcomm clock controllers by referencing qcom,gcc.yaml where
> applicable.  Several existing bindings for these display/GPU/CAM clock
> controllers already do it.

The series looks good to me with a single point in mind. You are writing
that dispcc/videocc/etc are a variant of GCC. However GCC is a Global
Clock Controller. What about renaming qcom,gcc.yaml to
qcom,cc-common.yaml ? Then the rest makes total sense to me.

> 
> No external dependencies, this CAN be applied independently, but require
> power-domain-cells in each binding, just like Dmitry's new set is doing.
> 
> https://lore.kernel.org/all/20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org/
> 
> Best regards,
> Krzysztof
> 
> ---
> Krzysztof Kozlowski (16):
>       dt-bindings: clock: qcom,sm8450-videocc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,videocc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,dispcc-sc8280xp: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,dispcc-sm6350: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,dispcc-sm8x50: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,gpucc-sdm660: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,gpucc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,msm8998-gpucc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,qcm2290-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sc7180-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sc7280-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sdm845-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sm6115-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sm8450-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sm8550-dispcc: reference qcom,gcc.yaml
>       dt-bindings: clock: qcom,sm8450-gpucc: reference qcom,gcc.yaml
> 
>  .../bindings/clock/qcom,dispcc-sc8280xp.yaml         | 20 ++++----------------
>  .../bindings/clock/qcom,dispcc-sm6350.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,dispcc-sm8x50.yaml           | 18 ++----------------
>  .../devicetree/bindings/clock/qcom,gpucc-sdm660.yaml | 20 ++++----------------
>  .../devicetree/bindings/clock/qcom,gpucc.yaml        | 20 ++++----------------
>  .../bindings/clock/qcom,msm8998-gpucc.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,qcm2290-dispcc.yaml          | 20 ++++----------------
>  .../bindings/clock/qcom,sc7180-dispcc.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,sc7280-dispcc.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,sdm845-dispcc.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,sm6115-dispcc.yaml           | 20 ++++----------------
>  .../bindings/clock/qcom,sm8450-dispcc.yaml           | 20 ++++----------------
>  .../devicetree/bindings/clock/qcom,sm8450-gpucc.yaml | 20 ++++----------------
>  .../bindings/clock/qcom,sm8450-videocc.yaml          | 20 ++++----------------
>  .../bindings/clock/qcom,sm8550-dispcc.yaml           | 20 ++++----------------
>  .../devicetree/bindings/clock/qcom,videocc.yaml      | 19 +++----------------
>  16 files changed, 61 insertions(+), 256 deletions(-)
> ---
> base-commit: b0afb900b7d235d879f8e8e4babfe77d9db76f2f
> change-id: 20240531-dt-bindings-qcom-gcc-e2955fd60004
> 
> Best regards,
> -- 
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

-- 
With best wishes
Dmitry

