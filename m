Return-Path: <devicetree+bounces-145762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7561FA323A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 11:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B0A43A3647
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 10:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77DDE2080FE;
	Wed, 12 Feb 2025 10:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ldgtC9Pg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFB51EE7B9
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 10:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739356869; cv=none; b=Ns5GFBWj3+aVHr4ouIIcUHwM6ZNu6gqeMor2P0uY1cd9wK8Jh8zbHxiVrvfFmVAta3hKOS/MxQMlNKQvsIrWaR1SwOEgMLJ0KgjzdoQgEgXye310AHqzD7c7ixzd31QC6/jfykCUpYg2yIsqJqF/SIXRyuGsX4hHFSHuxGrw+04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739356869; c=relaxed/simple;
	bh=HPiAWGGn9V3rjB/jGEe+4xyyXn//f8nUQh5na9jeQEU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLeFzPFKVLyqJGYz2g6Xn6dEtSLhaZ1iPCLZTai8aS+cXPQUpPW7ycwH8hDftchwjkxqlWbB7nwgi6lY65u339u7yDY6PuVhDnOutwb9veGYoEPUle4Knayeb8p7+c2dl8wZY9WKUJzhuXPgv0psn/aagb8j1mXo+3/gLoxWOTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ldgtC9Pg; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54504a6955aso3706751e87.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 02:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739356865; x=1739961665; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l1iDkFXJdTLoJv5QQSzaQMxwjFb0WaoMFN/yVr47274=;
        b=ldgtC9Pg00q4T4piXD2BEFWhemsLQDolWmdLMA+3SpcbvRSUkvkx751Aq5WwH/nFfH
         KWzLFSnkXqPsx7yprWGPN3fjoNT3LKFnFfkxhcWXEkBIYoii+UOlyW8eNMaSqLEN1xHV
         qt5/isnB2rX7hDEkw7FRKWXWazaQv6ccVIA5smdYFo/CWJxwObLvYqPpzv1zycpK9cE7
         geCuRwk09oSoCIOdLKlaA4EwP+amIuxVkX5Lsg1JgxkKD6qf292nowYi0DIkoXaJCyOe
         fKPXwuY7K29qcbb5skJKS6M3vK+1MhI7SeJgeuRIDSQsikvll7iN9bulRExKkVexEHH5
         kLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739356865; x=1739961665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l1iDkFXJdTLoJv5QQSzaQMxwjFb0WaoMFN/yVr47274=;
        b=ACQcXcr/qtswD+R+TllRdjiKFozFaUdXPilVA0Dfbj2XMx0vy5QW6PBl5ZqymZPUWU
         TtK49/Cx372F5bM2tE3NXq65Q4mpj7s8XY4FmpCxs7yy65ugfgoHso79YaJjbprWYhXv
         +Li86q+n2oNMlC4URTas5b9G/zRAaBLI2X5han+qLxfM4SxXeu2YL6wMlaq6ChTc1Cts
         lJeGBZDtA8Hvn03YuT9RAd4kIU9LJkkMG6zQ1lG/E9MO8b7rHL8fhpLPyM5zZGOB3LF3
         fKtPy2p/cf3OBVY2bUFzkUt1ng1THNkFov4z+ILifx+U1FGtSEaLZ5rZMHWOmQ6c/4A1
         I6NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSIMT/TKKCoaTOzdNpFRkCEePGF8zLJAJE/Eel2ql+EDUxVh7CJ78ZbG/Ofm3ERCyMEmRkQRfjdUTB@vger.kernel.org
X-Gm-Message-State: AOJu0YzuGgDjuWmn9EJx+kVZaHYulO3KdUEFfInaR2rUyT1EEKLtTJEZ
	nxwRYrP6X6+JPYm7hZHD+h+g7gKu2NTZSDMh1P+gLNn/XzoUYaIi3It3d70hgjY=
X-Gm-Gg: ASbGncu7NHedeRwi6JqIhfHVxwxjML9wdYAXK4EKtHuwM51TWe0TDIfjTSiDm2r6PeL
	00M0XFoH8BI59QLY5wpPuPMbPc0hiTn9/tUcvEAeF+6s7qj4N1qV0IO9FtYUOtTdV3dTEOORYGN
	2ILa3UL6zY6MbSrzkRieGSgf0uPa1n3Sx8JTAStYMe5lFM5eJy0n/G9aAt7Gwd/K39UpGfuvKBc
	GX7opYhQp5ihf4huURYTmFv0QDrkfgH+QxgXPFVkJKz62emKXESdDhgUP/qyVievG4unav2898i
	82Ts6KOtZcPwlTYbdC0ygPWz18Ik5IwiVdxhmKA2vxPLAyizNAfWFAOqA9MV/8a+pW5PJrE=
X-Google-Smtp-Source: AGHT+IFSoauwUmjTLIfP8x5XTTgpa0CFQaxSPV+VulxRisj6BoyUTlqKfWl0RYYwgy038tCn23zfGQ==
X-Received: by 2002:a05:6512:3054:b0:545:b49:f96d with SMTP id 2adb3069b0e04-54517f86bf8mr848075e87.0.1739356865416;
        Wed, 12 Feb 2025 02:41:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54504a2d1d9sm1310680e87.56.2025.02.12.02.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 02:41:04 -0800 (PST)
Date: Wed, 12 Feb 2025 12:41:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: Redocument the
 dp-controller for QCS8300
Message-ID: <wyd7i47pkafa7n2yjohuvlh4btasxle4rw5xm55h4bhv24yvah@pfo224xz4xfl>
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>

On Wed, Feb 12, 2025 at 03:12:24PM +0800, Yongxing Mou wrote:
> We need to enable mst for qcs8300, dp0 controller will support 2 streams
> output. So not reuse sm8650 dp controller driver and will add a new driver
> patch for qcs8300 mst feature. Modify the corresponding dt-bingding file
> to compatible with the qcs8300-dp.

NAK for a different reason: QCS8300 is still compatible with SM8650.
Enable features instead of randomly reshuffle compats. In this case,
enable MST for both architectures.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 359e364d79b20469d41cd8416a55b6a5d5c7d8ce..59075d7f05147f1f477f236a76fee6ec5d8c5ad8 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,qcs8300-dp
>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp
> @@ -37,10 +38,6 @@ properties:
>                - qcom,sm8450-dp
>                - qcom,sm8550-dp
>            - const: qcom,sm8350-dp
> -      - items:
> -          - enum:
> -              - qcom,qcs8300-dp
> -          - const: qcom,sm8650-dp
>  
>    reg:
>      minItems: 4
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

