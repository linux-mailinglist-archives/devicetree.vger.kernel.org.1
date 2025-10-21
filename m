Return-Path: <devicetree+bounces-229398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4045BBF7030
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 16:17:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB6F0504C71
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CB5336EFF;
	Tue, 21 Oct 2025 14:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="swMALA0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4601EDA1E
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 14:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761056213; cv=none; b=C+W6At32ALG7204AnSU6M2SBFOOAgM20ndR1r1nFn7axmV9USkE9YWvYi8ga4JH97Tn9kZCNncfb97k6/275uTeh5rqXwLtORXnxaSax25USwPiQ19WvFIwymmw1GKOtFT6kOl3YLg5g4zElLEEFH6J7QO2gR2nxT37UcyM3lSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761056213; c=relaxed/simple;
	bh=IXEiCfbFjHb0RagvMealrW5WYbDtUPRtCtvcvlM/5gI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DH4sRGI6cd7p4NtAqD/SJyaJpb6MYQzDkh21WrORKgp2OAxvmVGy3bdCGAKJ7wfe3lu7doN5fvbF+CdyVJRat6r9oBrDNzc60hF0jci4w/woV+3hEQg1OYh8utkx3LtHV7Ny7DVU7RGk1iZo+UmNj95Hfz7cDy2qVO+kVLbagTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=swMALA0N; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46b303f755aso60340075e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761056210; x=1761661010; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GH+Au8Z65JXGAtAPh2UGeuug8ILOECULe8PKQvQu4p0=;
        b=swMALA0Nc5IAGifCsrRdM8Nz4I01OyKEM5Q2not0A7YbgdErVuM2masPp49SU3fEAB
         aMK6tLB3YgpEUYvKZKRQZyRLaRn01+2pPZXxN0tCFCSHZYFT2+K7o+YbPI5ebmwaePyV
         xs/sxb5xvFD4hJ1n36JCfxD2pWBHRow6y2hIvr7Nxm78fYHLG7s0sr/MSIof1hnGzmfq
         FM3qe/ovwqqJ3o4xrr0FYevBJBS53ZeD1pqrhby6bDLcIdg+T4VzaWrqgHFLU/FA3uzq
         9nJbN5cISXts2mAcx977yriB+IYNSj/4BxMQyku5mLMarviGBD0/oWBJJtce5f0FBpjB
         g5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761056210; x=1761661010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GH+Au8Z65JXGAtAPh2UGeuug8ILOECULe8PKQvQu4p0=;
        b=uCr4+FCzCcThoqF7mx6jvm5EEY9QVlf/ETmd2kk9eXrxCmDqHgoy4aRazK2Lvm9+1k
         iDWKyVBIUVAmsJh6jECzs9KuhOZ/CbWBJRD9timag6Zp8fL4963nhe9fsz6ZRfzqbx+Y
         jmVOh+LCoNQ58XS4VdsObqD2d6fe6bOj13jxw8ZF2mm11vcxeBdF7EkBmr/m2T6xAuKB
         km5gZsxCJWxViLG0lhKwuL3n23WfjbSakyOhqNZK+c8mt0wTQM9LmNDk253co84YhYSW
         UuKFelpUh7j2aq560YNn+xnXAtDLNwfiig4JlEm46N7X4RR9Tyd+OwFgraa4KKux0XB4
         I2nQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7n3nYfDN9GWxVZeLSsvsRKPLc2MMakfqlFZFi7W9cXhYz2HROTmSLrwTXl2tWJTXzuCzQcR73BoXR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy85ZteMfNMf+rwNDXdL1IcVSxyfjuZMwtgNS0rPkXo93QayOWi
	nQdYNAl1jkfTPSfGnepTlRRown1ZIB0BWQtCIO1Ncsd29xsmT4Wtg1Rdcc1IiYOheM0=
X-Gm-Gg: ASbGncumXPR9UtV/rveAeWMC1MipB5AmD5UEepddV3TYAmWVxX7dAXk3sEcd7eWX0dK
	t7scH7WxZOq1UbL66JLmR24d9XjB1uWP/tnKfGZz9QP8QR5Ekyzpx0TUIhF9RgGNXm3sWaGDM7q
	oJiFK2iIpOg5y2mnrpAiRMamnmCTKGnqk+Oi/Y27j6qqTZDmbK8hqLOOaUYUstuN3QDO5WXWIm3
	3HMIUe+1l7wAXJDW9WhzM9eCsLpSoJwVkB5g422VEUHmqAaPxb1X8E2l5tPuCd1Ng9AgYfFFMRE
	QqmU4fKm3tupfYHndvHP6YxkNytR2a71M7WSvRTsSib5TMX9wGMEUcAmoz3ehGwtIFIOeLBf6Up
	XrW7msAK0/DSNR1q/fXFt1uZ1MK4S2LKWMYITm2s9FD/MU3eUUdQ34pkHCdAKLhlMDDKixYRR
X-Google-Smtp-Source: AGHT+IGlCzAGBWO2jDwO8KOdW9RPFbusOV38zy/UqpC4nz4HnuMn3sNj6s9XMr9He0B2eairZT1Tyw==
X-Received: by 2002:a05:600c:818d:b0:46e:394b:49b7 with SMTP id 5b1f17b1804b1-4711791fed6mr135325295e9.37.1761056209687;
        Tue, 21 Oct 2025 07:16:49 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a9a9sm21138244f8f.29.2025.10.21.07.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 07:16:48 -0700 (PDT)
Date: Tue, 21 Oct 2025 17:16:46 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio playback
 over DisplayPort
Message-ID: <honsqyec45rg4yrh3rwjlqlhcqyatbbsvnhamhjdin3tgaggzc@5yrxw5mwhkni>
References: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
 <20251021111050.28554-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021111050.28554-4-krzysztof.kozlowski@linaro.org>

On 25-10-21 13:10:52, Krzysztof Kozlowski wrote:
> Add necessary DAI links and DAI name prefixes to enable audio playback
> over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
> should carry respective DAI name prefix regardless.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

