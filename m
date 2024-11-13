Return-Path: <devicetree+bounces-121500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A25F09C6F0C
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5965F1F219A8
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C03D200123;
	Wed, 13 Nov 2024 12:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htO+36ro"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8D71FF035
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731500879; cv=none; b=jMGxDWb1e2wxk5RutlwF4Un/cx+5NVCcZPwhOinJz3hVGjle+VUpmOKTnEe3Zm8LaxIOknqq9eZUIONh2N28p7OYeVZDcruiwKiD1i5KpBRpUfEvdVFGYgqD0ysrFpiu7mWgDZFt7N+5re2jgCCRVZWtCtEL/7TOFWWik0mqcSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731500879; c=relaxed/simple;
	bh=f8CTOIqv4oLHKsLL/f0AGLbjfM+lAZW3RyafSe6Nqpg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q50+723AsUhoFGirB38x+enHZ929Z6zrhioD502NXM3ZJZxYvz7S6MwK7wmKWI6bS4TNRCkWC9gYcAFk4JQuAYBsFdW4uY87YXWvnLu+BrQfpaAINAmAt+yFCGecevmABQ2klhb1Tz7GBuNf5qC15dPjLrUhT/CncLRfkWrFTsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=htO+36ro; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e28fe07e97dso6883009276.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 04:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731500877; x=1732105677; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KImKDqWq4s21FhX0T9TYJY9R8T8zry6WhOX4TLZUuNk=;
        b=htO+36ro2eJGPyCSxaKqQ7zQU+EaqBNU0yYJGMr2z6JjExdfHQVGJMnHkcEZOPUK9Q
         jDj1F1I2ThDqQIht3AWD+FkKF3sc9sM+mpWNCaQlF+bmcWbl4FZ/xnt2rQkxN/7kbIYL
         oSp101zzKiBprGNK+DW13BmQqjADX15st5O6yxgRs031qROxSbA3CDmNkUTf9AjOc+YN
         wMi/jA89aoSwr4AdpwGR4Gz5Q0YaGNaMawIEJeyjkNbOXHQrWxLC8Kshkjke5YAzSLU1
         Yx3quytXe2dGKDXLm01DCVVgInJSWi7tmLN1YuvXRCWTUK+wyrJro7RV9HFH8FIJCelP
         lrDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731500877; x=1732105677;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KImKDqWq4s21FhX0T9TYJY9R8T8zry6WhOX4TLZUuNk=;
        b=jV95xrkOtRONnmZP5D5PLeQNU12MTUFCEY5Ru/yknl6lYiSL62iltgM/tBoBCla79D
         NlTfBJsTUH27cI6pGzIgSHEFNLjjHouyQpsPfZ8nRYR1vVl0LFRleMua+/DAR/LCMRj1
         iNspgWGP9YG2WE7qG0Hx9ijJ1vfxziA+aQLci7zkVPHQ1+9q4elLyjgwSf9+s1Tedfj4
         OXs+vaoPzr/mEfZNy7fhHRacQ8p9bawBO4ANcNlOuoFKv7oc9NFxH6DVK06/6mbcTMo1
         rGp40ASAZd1nOGME/kAN74TxNFE5+gqTh9436p83wd1oYO5NhKIEjaaZPrhlUiXxhhQP
         CWzw==
X-Forwarded-Encrypted: i=1; AJvYcCXRPHh6LiVovrnISD9FqizOtlr7MLdE65vin+dpx8YiBAR/V8m/kNKYKyTdMB/xZ+gXnor7d5j80LXf@vger.kernel.org
X-Gm-Message-State: AOJu0YxugIH2NfyuV94Sqq1qRNMRfQGq9Pv61fqsRgUgT7e0knb5FvQR
	gnldPfTJz3Ay1VR96qVg+2gr2D7g7e1n4y+rg1x9ahTw1Xr1JlbfFejVKExNAd3kO7fr+gGBTRa
	pNEJxzIjaDtGNeAZDnXexelJbdjPThpuyOpJkjQ==
X-Google-Smtp-Source: AGHT+IHaAWOdAgML2ba4DzOA4z4U2wezC3VkawX20A2dPxMskv1IqJdFG+uwKU9K7bhxa9QyXticQbkM331fssKDcLk=
X-Received: by 2002:a05:690c:30b:b0:6e3:16da:e74 with SMTP id
 00721157ae682-6eaddd9418emr194176117b3.16.1731500876873; Wed, 13 Nov 2024
 04:27:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
 <20241113-add-display-support-for-qcs615-platform-v2-8-2873eb6fb869@quicinc.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-8-2873eb6fb869@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 14:27:45 +0200
Message-ID: <CAA8EJprBxL0KuOm4f1peRCw9Y=bzXo=Vt-QEv37RzJ62zJriNw@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] arm64: dts: qcom: Add display support for QCS615
 RIDE board
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Nov 2024 at 13:53, Fange Zhang <quic_fangez@quicinc.com> wrote:
>
> From: Li Liu <quic_lliu6@quicinc.com>
>
> Add display MDSS and DSI configuration for QCS615.
> QCS615 has a DP port, and DP support will be added in a later patch.
>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 109 +++++++++++++++++++++++++++++++
>  1 file changed, 109 insertions(+)


This patch has even more feedback that was ignored at v1. Please go to
the v1 discussion, respond to _all_ the items, so that we can actually
see what got ignored and why. Usually I don't require this (we can all
make a mistake and miss an item or two), but with this patchset the
number of the comments that were ignored is extremely high.

-- 
With best wishes
Dmitry

