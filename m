Return-Path: <devicetree+bounces-125039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BC59DA970
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 129272817C3
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B0E1FCFCC;
	Wed, 27 Nov 2024 13:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vwz7eWmT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD3B1FCFC0
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715768; cv=none; b=OoZVpRH4IhyAaBp33ZzUVEYKkARnf7kyoppg8DtkUcc1xDvAuaJwVOgaCl2O0ySveq6lVv54aSyFKV7OIxEK6aSoSq9oqxMPgxFISwvMInDIJ4tgvpnC7ccRQx2kIKX36tAvc+f0kTTlhvDJjsLp598EfFD0G+4QPwl1YYyItyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715768; c=relaxed/simple;
	bh=BYDt98Mk4otP8/MrNN33+zH9HWkLUpNHlvafTCVNX9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R6NjeZQvJI0J86A+SubxBJHhZJ6vNd7l6G7YONXU+4d5cFqhxZbFMBilP9tU8mpUKKozXFL8QziDlq/EuQuexEn5NkK5w0URYexERDEReKZVpFNMMdUMyiouVsGLb4i3EVZZ5PHBpX+mdKZFYVjovCeIgnUuZZ5eILNiFaIkn8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vwz7eWmT; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53de035ea13so3698340e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732715765; x=1733320565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=867OxvdZ+RR+pbVHkiA0WW9IzYzXbM7LHcyZ0FySfzQ=;
        b=Vwz7eWmTbNRxltRXvgXzVUwxuDRAZ233exx2o9ZHWS/xqwYgktZrJ3fbrl518rbRoy
         Ty1fFCVM3+xSBlfkDzFOEYjSpyl4u4bVkbRMj0OPmLEYjaQf8DzTPSYDggMUk2cz/SoX
         qQ157ke6LEf2oqQBmOkuJieWSrQxrYzTnYRFqP3vdptC6WVCgQxSKVCiP8f9WY2Yz4/i
         9bzNLyQa6CoW5IBn4Q+E6kJv85mlGj5YkMSiSlm1E2b1J9USNpZT46V6L7z4gvGI65tY
         SZsNqXz0/A+kP3rh+IYS4/XfZLINsROiGxgSMbLgDz7cj6xWCC3H+ofrRLp2l25DKoFh
         d7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732715765; x=1733320565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=867OxvdZ+RR+pbVHkiA0WW9IzYzXbM7LHcyZ0FySfzQ=;
        b=UW0MLTrjhV3lsDN5mw1Z2RwG+KTsoyFjhB6P7lk4Nk+ySJjOAiJC7m+5GyZUvJASfY
         j3DNn6VXjHDVxe3L9Dc0macwYV3fXxo1C0QoFPD2rPsl2rxv3CPVQBgmdemI6wr7BUA0
         L0JFiUtJsgHRJ+nNAKXxY35JDE0IULJRHtyhdfqI0QBCSEJppHKb16jJH5SKcBW1Rfef
         U/vNhxLV/VxW/7J1p2NTJCGbgSQotc0toBxlAj+yc5D9AFthxNrAApb+ArVp4IKVMfVA
         eXwT4M0YfVCajKP3DTuV4sg3pDRZjvJ4J3P6C3QphingFWXrcNpOWhzuJh2Iws5QwvMI
         lDDA==
X-Forwarded-Encrypted: i=1; AJvYcCXHcKsHuK6vOrbvCXjDzeKedrHwzayC7ifnYK+p6Gw6dN8E9hNhTW8UOQRD/9/2bGM/+Ibz8exS65vi@vger.kernel.org
X-Gm-Message-State: AOJu0YyhdYRTIWI+X391SlB1KQezYnartT/m18M8BLjwfdTVbKxZGAZV
	4JKsQDols5mNrlTKycWnSq4pyXdhMX+vasX9ygf5M4Hvxb5B9rnnCWN2TNt5wR4=
X-Gm-Gg: ASbGncsVXhVlZFe3j3LNy9/TaQrgJbG5fHkkOLQCdTyBjUmOM4Jboh9ZWgAz3qsp+zX
	S4xuq5p+NI0aDD0DqSB5Wq+d0x3JJPB3WSa2tzYGh0TwJWqQ6eo2cG+Ky53YhENATTgZaiN2S6k
	+SucaRdP3Wcaq+5St32Y78Gvylcp2zfx/NR4TsH+p/YbBPGcun8kZ9fpvJC8zUucY4CZpSZWsvB
	/CuuYGslnLOyaubjL9t7bTLhvrQaIiE4S8sZTEJNRpauIo9uow5e0dC+2iI1sD8dYkxnZEeKzU+
	IZFSCcPbqKD/VS0lcqL4Wgn8V6gGqQ==
X-Google-Smtp-Source: AGHT+IFWOWbW0Kkqtz0JT9z7g4F2xU64RN/HauN+JR3aCNqtQMBX11GpWayOTW870X4Odd9+w2h+9w==
X-Received: by 2002:a05:6512:33c8:b0:53d:e70d:f3bc with SMTP id 2adb3069b0e04-53df00d1bb2mr1722513e87.18.1732715764697;
        Wed, 27 Nov 2024 05:56:04 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddd7c7a72sm1623628e87.32.2024.11.27.05.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:56:03 -0800 (PST)
Date: Wed, 27 Nov 2024 15:56:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: display/msm: Document the DPU for
 QCS8300
Message-ID: <bzuzxddbxtlzeps7zfx33ghrfm7pbz64mynnnv6t4pznppxjyn@zhjpqwsliinu>
References: <20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com>
 <20241127-mdss_qcs8300-v1-2-29b2c3ee95b8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127-mdss_qcs8300-v1-2-29b2c3ee95b8@quicinc.com>

On Wed, Nov 27, 2024 at 03:05:02PM +0800, Yongxing Mou wrote:
> Document the DPU for Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
> index 01cf79bd754b491349c52c5aef49ba06e835d0bf..631181df2bcf2752679be4de0dee74e15e2c66c2 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
> @@ -14,6 +14,7 @@ $ref: /schemas/display/msm/dpu-common.yaml#
>  properties:
>    compatible:
>      enum:
> +      - qcom,qcs8300-dpu

The DPU is the same as the one on SA8775P. Drop it completely.

>        - qcom,sa8775p-dpu
>        - qcom,sm8650-dpu
>        - qcom,x1e80100-dpu
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

