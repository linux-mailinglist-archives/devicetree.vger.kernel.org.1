Return-Path: <devicetree+bounces-54269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E908F8902C4
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 16:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 513331F2361A
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 15:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A4512F375;
	Thu, 28 Mar 2024 15:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K0Sgsalk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67DF12E1F3
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 15:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711638723; cv=none; b=BfFQeSWohV7ur7qD7IgxfcxRing4RmekpvMMEPWrusgE11NiRPbsP6cREQsgwVCX9OvrbPjnQ3eOPcHQVhnoqXcqvKt5ILi4S0iULg8ef6HMgpx0K6ftT5U6MsEmUfQIEd1F4ZqOXd9K4wicw79zWagQVjfCXqIufV3IhgIgs8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711638723; c=relaxed/simple;
	bh=4Pw+pFI94Xaxlpp7zHktGYlCAl2z0xnGa/oih8dZYgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZLQVag20SqdYTW6vGt2eFO7BCLj8A1dmFK8SpeM2yAqsvPQH7oJegN6APIbsptL9Yo+KrC/SZndahgKOf6hOAnO6ABxp6j6PUHdO30DLoUnwe35/+ITFSJxxcCo5QxQ8pXVyL3LaoDMjPoL10TosxNoCcP4J3H7i6LcBTIa8A+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K0Sgsalk; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc73148611so1150425276.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 08:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711638720; x=1712243520; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K1dRERqIwvawP6yvst+7RzsJv2Gfa3ZP4TWtYVKk144=;
        b=K0SgsalkI2tp6jrsOrtUEBk4vsiHwmRqWTO7fVoOG0lc/f2FOsoyJXSJwFt5N9LYWJ
         OgFKevD3POjo9Qt093Bc5CPHw/ZFi4XlY3fNG2c4dZg6dT2oq6cB2BbMH6PpQRYo7c/e
         JGRuzOzotJK3LxC03d9jC6DDAfRTRU4yH4ew/RruKqxDS4cey6V+0iifKP5kN/hTBtJe
         fzuDZ6MaF/vdn7JcWhNGLIv7dIObgpKM9iYnNjxjphP325BU2YTEwbXO4n6vMfX3YG9H
         2vht0iSadDy9gcZlJrtdc2SFOSs92G+RvSaaX04ZkS/io75llyh7ZZiHwYofgwQ0fnAB
         JJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711638720; x=1712243520;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1dRERqIwvawP6yvst+7RzsJv2Gfa3ZP4TWtYVKk144=;
        b=ezxYOtqDvUJxj6dmy1X8KM+9/fLhbgu3ThzP87Fx8Hj/TTi8APHCq4LukOe3lskLZ8
         Ls3EABEFPeUr6kSDMPmm4niXENLdmrzwXjPHlLV086s/TBc9J71GhtvIZuDLXQvy58nM
         AiNeC17GJKMkBEWhky7n1HCdVSSgs6+6SQ2eBng4bDuEWTttc+uJ5WogzA8VDnjH84SK
         lAWz7rZynqPrCELkqttctPPNNpYnaL7iBA15kBtxnOzRSO00xtLyq0zLI87hKmafkK8M
         IwuMt7qFcO62zFMJSzkLCv+XomRcxBMBIFjgSLz2QajyZ+6ZSNiqGuNg1moPDcMPyWD8
         3GSg==
X-Forwarded-Encrypted: i=1; AJvYcCUa+npU3g95MhyB9/h07+ndoe28tcYikoUiqoLkuA5e50w+zfFlDgnjBpJVBWNuFsHbZBW/jySNQAnB/+NGoXHMmkdqBn1bE/qafw==
X-Gm-Message-State: AOJu0YxJMV9WrxfmhI8XOD/9WE5/6ysHhQphxUcIdIwVV1A/ZCd41VyO
	WG9KiiWY2xhr28/Xw5t7I6iIafypIdzhDCNl8agoTcLmBBFLSr9KD3Yz/3vEJiw34aEHagzbQyh
	ntEM4pT0WBXrXdx7oTmxXoCR+aprP1C/BnhUMpQ==
X-Google-Smtp-Source: AGHT+IGrkzP9Sxso9Vjo20YSLlSXYjup2Hg+RTtCFuuy76qY0UhZk+SCGzz1Uxer7GzjgHrcr7xJIaioiBDkEDXa2kE=
X-Received: by 2002:a25:db85:0:b0:dd1:7128:617b with SMTP id
 g127-20020a25db85000000b00dd17128617bmr3216871ybf.38.1711638719977; Thu, 28
 Mar 2024 08:11:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328-sm6350-dp-v1-0-215ca2b81c35@fairphone.com> <20240328-sm6350-dp-v1-3-215ca2b81c35@fairphone.com>
In-Reply-To: <20240328-sm6350-dp-v1-3-215ca2b81c35@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 28 Mar 2024 17:11:49 +0200
Message-ID: <CAA8EJpp1XEh1CR8898HnStWizcgByREGk-2ae_Yr2xTvcrEbag@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6350: Add DisplayPort controller
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2024 at 11:43, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> Add the node for the DisplayPort controller found on the SM6350 SoC.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 88 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

