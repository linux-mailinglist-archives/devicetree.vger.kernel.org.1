Return-Path: <devicetree+bounces-151151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9D7A4498C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3D271898F34
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3178420DD5A;
	Tue, 25 Feb 2025 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vkmQ7jAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D6B20CCE8
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 18:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740506613; cv=none; b=Htnvkk1YHcMeQ3myJG9P/xG52V4WnsjaX2NfiuC8nntYYCm6GxgY/pQgWpvG9m0Wsv3Y1aWrCq5spJTWS4I65F0wn9cUVT9bJG4LRlLikcyKyws9JoIwnkSOa3b8BBLzD8vcYyN6Fmjt6/IBWRsbAhjLBjeVsPtkuugPb5S2Yp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740506613; c=relaxed/simple;
	bh=S0vGc2fxgTl4TxHz9pfDkbgBvrLucJN6TxhxE7gqfBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GkIfghSvZbHJ/ESJ94spXdr04aC+yxsmr6DT9vUHqyl3q8FOZJcihYpQedX9qd9NRSvA2GhI8xU4e0Nhh1gyNRXotDf+CK4N7swgncdPE1ZaZ9Lpn8eUWG34ZCNNhbPQ4jtvZxrHsU+ORppRw4GVm6jwvE1TEs1lxGp/Q6KadpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vkmQ7jAk; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-546202d633dso5840626e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740506609; x=1741111409; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8O4HWot5EUMVzTxv5rN66ccO0MtiNkXIqoN+/YVntbU=;
        b=vkmQ7jAkN/gYQOO/5PmGlbB38HvpHUF3j2ctzKvtglnij1M+kLRqO4oLONj46WY8sL
         sClSzi7xzDdbeqiDx3V9DJMsgMxkiJ3wSunK8xSsjIHWeddQL6T1Je4bVG9SvDh2/vIC
         azBqLO65ZNsfY6OkEChuajieEB99xb1Sjf0p0ABi7tznhF057mmCf8Cmpr+tUFwpF/MQ
         tlSLnSilpjDIqsT9rxlErVlDtyQnuyTS53VYFTyQCA+OlC8ucnFPyi56h7vfi580DBlT
         xCCOW6chyEwdeY5XHksc5ZoP2SF4BBV0C9wMSUvGpsLGpaXsVYB1L2TPQA6CGzInwHeH
         02Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740506609; x=1741111409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8O4HWot5EUMVzTxv5rN66ccO0MtiNkXIqoN+/YVntbU=;
        b=SZViG7zTu00haSoNDyN5KDxvRu/sXD0jyk2MSnZ0GgKiPQKBCfnb13/4zviUgZsi5a
         xeHpNkyOnVc30x434z1BC9LoGMtNRzkz053i1G1+EGpri1k17oki55Q3r7oeO8dFg3ma
         f5klQZnEE3j/qWK3Qn3M0oL6sDdHiLgbJaKQ/uKtAh6Eu+jzO6WOBcikc8+DdNKYYG7r
         aHpQMf73tp76EIAcAbQniOF/Orbuaso2i1h9/01pzw6+wGd02Zl8zAlMxF0ns7X+WhJd
         2TC2Ms3fxBWmoD43w8YdUmEYzcsVPGoCUu/I229CmZ/quNiarsSVmdJeZXObkKdgw3xL
         7/Bw==
X-Forwarded-Encrypted: i=1; AJvYcCWS/GG4kZbEuwm2Sd1zuiv4jyHad7/uTM1gtGlB7k0+2jLlc+Q4ksML2LskW1+04xIdhzjY81JsdK7j@vger.kernel.org
X-Gm-Message-State: AOJu0YyRjI0eexdX/r84YspH3glhT/mWJr7V9mFcYmPgyd4cGRqjOAR4
	Kxx+VoYirC2s8CuiY2hfF6T8xHcsqeXfiUKKiGuOyDhnoGeJIx6LQSO6ChMNrT8=
X-Gm-Gg: ASbGncuW0LeHhx3RmN14T94wxHsMsN8PEr/yjR/l0cQU4PAAWe2JBruGlKs+OCIcxR0
	J9jW7c1bcVr2+7B8c3qZKleva9eL08TytlSV8Kco5tApYuQMAB/63nUM/p4P0AsOZ0TElTLLDy4
	UIdC/+mDAP2qsY9nGsXj8g2g0uTW/PGDFM9PKquHkhwGnR1u3VN1Dp6N+sOA8BLqEGdj7VfGzUy
	X8QXed4kBchPF/A+VN3zoXcGcVYGxhn7CzfpdY4JfYYX1BEEpT4rHpDXOpPvqcolHB4xtrQQDPd
	YA0uMXW1hLTbzbE/sTjZMv0brf7Gev/6LaxzfFoRNvXyOQOFCMwBMSS0HWejS5RKpRYsmAynFqo
	tI5IiIA==
X-Google-Smtp-Source: AGHT+IG0Zc7wZsxG0nheOFfzzmCVwdzpAM4bFH1CEvsvsI0SU1fbCv6O1tOWiwsm5/goJ00WgZzfcA==
X-Received: by 2002:a05:6512:b05:b0:545:8c5:44cb with SMTP id 2adb3069b0e04-548510dc89emr2751908e87.31.1740506609286;
        Tue, 25 Feb 2025 10:03:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514fb084sm234263e87.221.2025.02.25.10.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 10:03:28 -0800 (PST)
Date: Tue, 25 Feb 2025 20:03:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org, 
	andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com, 
	quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 11/11] drm/bridge: anx7625: change the gpiod_set_value API
Message-ID: <rgdujikhrizof6p67cztu3oh4svy7do4okvowlgxg6rddeoqkq@hjc7pni57ilb>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
 <20250225121824.3869719-12-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225121824.3869719-12-quic_amakhija@quicinc.com>

On Tue, Feb 25, 2025 at 05:48:24PM +0530, Ayushi Makhija wrote:
> Use gpiod_set_value_cansleep() instead of gpiod_set_value()
> to fix the below call trace in the boot log:
> 
> [    5.690534] Call trace:
> [    5.690536]  gpiod_set_value+0x40/0xa4
> [    5.690540]  anx7625_runtime_pm_resume+0xa0/0x324 [anx7625]
> [    5.690545]  __rpm_callback+0x48/0x1d8
> [    5.690549]  rpm_callback+0x6c/0x78
> 
> Certain GPIO controllers require access via message-based buses
> such as I2C or SPI, which may cause the GPIOs to enter a sleep
> state. Therefore, use the gpiod_set_value_cansleep().
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

