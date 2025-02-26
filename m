Return-Path: <devicetree+bounces-151308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F80A45533
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 07:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86D483A573C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 06:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFEDA15852F;
	Wed, 26 Feb 2025 06:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p3LlAIgE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D143596D
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740549637; cv=none; b=TGLMcoAjhfJ5B4GJfBWcPJRTTaP6x+7tZveDr9JUSLbD8Ki6Q3A/zRU6tYmIQGW7jqQ3Viwk1ZXJPUBPPPx2dcZ5EZRHkcycVEtUvpTfSnqXabfzbqRGX29ifOudD5XfrjPf+8+umMArmZDUrcmr85YLega2vEH6NbjjrCdtYcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740549637; c=relaxed/simple;
	bh=QJvs8FXWeaOfq2m4P6J0WZ5ujUFqp1HQJvlwASUdwDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESqqMX+fEjh+MmToslW/1SCepp5X3ecj4zvzAYm8/zuPH4a14ty1IVrivDxDqlC7kT/h0yq4jeL5Mhew+fzrc4vyGOcnTPge+4YRwAT/Y1oXC72M+1RWPtmqGqQSmdqax+rAAWx3gvsS9/YCkw+1uGFrf5lRYbK9A4Ffuyk2Kwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p3LlAIgE; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30a36eecb9dso66594661fa.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 22:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740549634; x=1741154434; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=buEGqdHEp7hTwf0/u89pPDhKGvHlA+V+chO24Ab2MiA=;
        b=p3LlAIgEvS+YQeglnDfIIlLNKF7COpzGftiNMzrRm8/S0uuWTEnFyWP0mlSHT4e/uv
         C83Cs5KXGuQAfHpUAeV65oKPT/T7ZZk/dhKD7DBQXt7KRTVUbFkr3bETG/94aRC2DIi5
         lyWQodAMf9LSizqbEZFpynXUD3c14TeyrWYpIFSfYdVAfBC3c2VonXOJTNgYx83Sa8Oy
         a6hD1WiKNbAdU+P1cBcngE97pQ4xOwxH6NAkAOr9hoz521RNb61aLzQNHUAEdhaQ74Z6
         rPGT+Dv/M9rkoLCQTGhDCj2PdGKWkpr7+0ntCDRKG0Zx+v7Zb8DjKOT/4BnFozdmZDPN
         3uLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740549634; x=1741154434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=buEGqdHEp7hTwf0/u89pPDhKGvHlA+V+chO24Ab2MiA=;
        b=vcbJx8xHbw2Xg9VI4IkUgFvfbL/zKXrrMcheDsqky8SBfuSGcrPMsXP0VkDU0hAFci
         9jnxnXYJ3UAbhndC+9nLQki592zVzhyfcpDwmGG9PRSCc72vOGl6S+q80VsMiMlQqZG1
         mkwNDoZf7d11EKdXLvavcUZLtoe6nZ7T697jgc2lqg+aYhLIBqMOdRzT0kcLo88/qx8H
         0kcPtl6GmWfqPjKpVsZUrGVZUWwn5A9K9ncfJy/YThPN+LTeU+3eDssNFAMOnpC3wMw/
         4tWxUt2Lgjw22jQGkOyrWf/OXVPteNIYxcwdJ54NxMk8/8EBgpS5z3h2tUxoONTeARVw
         3/Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWBz8sHB2A5vdlA6W/y77ImNoH3ModdP3eeos8X/1qvJ/Tn2mLNdysS9x4j1h5o5fJSeaGjMuX15hTD@vger.kernel.org
X-Gm-Message-State: AOJu0YwmOPN5Dh7yF7Y/W3nEy4+KM4P6hedtlJeri9Uz6fwEL5WNM5XH
	eXrGxflkXVnVbbzXtWgeos3adMSR4ZQq+yMtvVczMD6sazGu9YcHaLDZh+xygWs=
X-Gm-Gg: ASbGncuH/6ZUp8HgYk3EkM8UNc82f85REeRU6m1BPfP0KgGWKNMZom8ye4TbPaRSzgP
	kIahQQ8d1JjrzfpOuHls3QtQ0VYjRKAZslGQwevkPCgiSGWJ6PHMAP5/EvF6MqOI/SbI6ggV/cx
	t2e1yaJsLP3D38m4l2PwXQ4dEP6LAVeRcKScpEdyDwAzlgdctDgkzS0rO4bXiA7fl0kl+6JTsxZ
	4ycoaXLPiW00RIuXViJPhp2sYOWcsVSZgBGQAcW6pnbLfXqbzMJzgDs7yXF9AuguF8zH75AIk4L
	HvAIZbzPvtlGJkkrrnEyu8ZY/Hk8YDmdgC/pRPCibEzAC+gKmkFvav0vymsJ9vWt4AsWQQgIiBr
	H+15mqg==
X-Google-Smtp-Source: AGHT+IG8CWS6G0bTARrClr5YZ5iAJEIALey0T04/2PiGrwpS70hRtWkWD+U3cdrkKaDh1s5/wDX5Bg==
X-Received: by 2002:a2e:914f:0:b0:308:eb34:1012 with SMTP id 38308e7fff4ca-30a599702fdmr79176461fa.30.1740549633801;
        Tue, 25 Feb 2025 22:00:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a819f5b2esm4247241fa.64.2025.02.25.22.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 22:00:32 -0800 (PST)
Date: Wed, 26 Feb 2025 08:00:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sdm632-fairphone-fp3: Enable
 display and GPU
Message-ID: <wohqhsuu35m2ghd7a5xgsy7ktxvqn5id7nuzox536dyllczobc@vxyzse2wrlwu>
References: <20250225-fp3-display-v2-0-0b1f05915fae@lucaweiss.eu>
 <20250225-fp3-display-v2-4-0b1f05915fae@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-fp3-display-v2-4-0b1f05915fae@lucaweiss.eu>

On Tue, Feb 25, 2025 at 10:14:32PM +0100, Luca Weiss wrote:
> Add the description for the display panel found on this phone.
> Unfortunately the LCDB module on PMI632 isn't yet supported upstream so
> we need to use a dummy regulator-fixed in the meantime.
> 
> And with this done we can also enable the GPU and set the zap shader
> firmware path.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi             |  2 +-
>  arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 62 +++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

