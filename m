Return-Path: <devicetree+bounces-161253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23100A73335
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA9FE189843F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8149120FA94;
	Thu, 27 Mar 2025 13:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l88Xhatj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57241B87C0
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743081571; cv=none; b=HybDAxckmmnt1dPcKn39B7D3EWpvX7ygBZ2YY/GKanlIFgJG0yefcOdMEt4qZ9XculF9eJYwCe3k7kxhr8Dk2tj5fQDJNWmOtbUKrtaV8WUxpkAl+ohYry9JYAe8y9CfXkNkB89V999/VVxCXNZkt2/1F1XfXOBSNGyo2GIJhG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743081571; c=relaxed/simple;
	bh=+cDdIOswm/cyDdBII0iuR2QdTuXYbEwDjifjrlArm8o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OmBAif5T5ehwHq0CiZgFqs2aWkUS/efEtO7RxcwJl8PO8x4SwYUDyL79xxtheTfmnL3XhyrEUCsdJmPm8lSQ1+ntB+8pu1y32878rk4ZzpxUw/Db+u0G3m03bO+9QAB1gVBUP1IYOHhHzz+m9Nya1k4bAeC5HZgwAbPdD2OIOdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l88Xhatj; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-39133f709f5so549940f8f.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 06:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743081568; x=1743686368; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+cDdIOswm/cyDdBII0iuR2QdTuXYbEwDjifjrlArm8o=;
        b=l88XhatjItdc1Nd11pSCbNKycW48/hq1OgaNpVcsu+ierfQHfLzwwMpS7OvEw3/qYy
         KuiuoILkZF6RP89SPgwYjD/XAiQL0KZVuQl9rLIbqiBpg5IUYrFW+ggxLyj05+aTn14I
         BpvNNmxNoxq02Uw+FcPq7yfI9FdPkE9yAI8RMr302/93m1XODBPcY8g7waCUJE4+KJV3
         u9ZI3hUvpcPnAI6TM7rIabZbnj2n6BtMFuX/x2AYJQ4h66T0XqbnkM4euB3EvI34xjvi
         GmOWYKKpm8OgkZsza27aN2KcnSOfF7xRcGP/NA7XciOTy4aNvNJQj0DMdHuavEJnHUlk
         rlOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743081568; x=1743686368;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+cDdIOswm/cyDdBII0iuR2QdTuXYbEwDjifjrlArm8o=;
        b=u4LEnNx1W5I2Np/E/nwdRqUx2LflZmkzNRGZxtUWmtU9tZdnQzzQ/uguJi0jVN3tWT
         MQiGbdbzNDx7rH6nJEnIxjOZrdSsfL31B5ibigL6D9t/rL44pAztZbl1kC1196eAPygH
         lI8yfTxrxfVLsgKyM5Kzul6fiTS0rvyKc/nV575gKeFPv2cxp55WOkPhAvFYI/FhQdKi
         qclh6Xs6gHkZjpklETSGjEupRZ05g01V3yxuYE/Y466Mz0YUGkB4UJhbaZUW7AKEF4VC
         h76JFjXPqvWGuISX6Dk4a1CMve0AuTYJygZ862dHNt0DWVieKUlOMuh/rDAg5rYOwpy1
         08Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWwWYBquxobC1+kUJDT4vhAVFMlPhwv8oVq/bnxAJujC4zs1Q7kHN9MKw+4bLpKEzwCUer7qpQTk7t3@vger.kernel.org
X-Gm-Message-State: AOJu0YzBq7ljURtz7o1pP8R80pOmVmHPSaIs1M34e8EoBm4q+sD2oiE3
	o87McDjC+cAEdK/2HQdFXaNqdbJ2Q3qSRxIzcCKBbAi1aAl9++N7fguPCaVAbCMle3b56I+X3V2
	tSAckNwji7UpaW9z2pt05cblaeg3Gzn0zzTu0Ew==
X-Gm-Gg: ASbGncvTrjyuqR1Dld30h3Y/W7JpzzmTfXJ2Y3zhWTOqwFplZRwhbGB0XHRt/PaEZda
	CNvqwuw5w1MYzwveS6zz1XmJaaKFtLzgX3/yKNxkwoVkpo4rh2TWgJOPdjBGEdvh8sKt+BQ93oo
	mmkRm12lwY7piMOOl0t2kHynbVI8OUbTH+jXljwSqyhiLgTYdvZDSrqetscw8=
X-Google-Smtp-Source: AGHT+IHs5VZplywxnxEi47k8pf3rZnEm/7qBpY3Ioc8amqZO6vhJqMiAOdf0vB5bQQTzKsXVOl4SWXK8fz/Hde+Ezy8=
X-Received: by 2002:a5d:6487:0:b0:385:ee40:2d88 with SMTP id
 ffacd0b85a97d-39ad1740bd5mr3141625f8f.3.1743081567876; Thu, 27 Mar 2025
 06:19:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-4-e9bc7c9d30cc@linaro.org> <Z+UGqItLubQ9kwF+@linaro.org>
In-Reply-To: <Z+UGqItLubQ9kwF+@linaro.org>
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 27 Mar 2025 13:19:16 +0000
X-Gm-Features: AQ5f1JqvG9Z_EF7biygLKr6lcDhPMwDOinSPLyFBaGcwOFtc4jXqvP1t5fWsCZ0
Message-ID: <CACr-zFAVDhDvWupMMCe5ttpCU8+NSD0XK1tS=TsstM1znhDHNA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] drm/dp: fallback to maximum when PWM bit count is zero
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Johan Hovold <johan@kernel.org>, Rui Miguel Silva <rui.silva@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Right, the reason this was included in this series is because without
this patch the panel's backlight doesn't actually work. So for me it
was natural to include it. But happy to split it into its own series.

On Thu, 27 Mar 2025 at 08:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> On 25-03-25 19:21:29, Christopher Obbard wrote:
> > Some eDP devices report DP_EDP_PWMGEN_BIT_COUNT as 0, but still provide
> > valid non-zero MIN and MAX values. This patch reworks the logic to
> > fallback to the max value in such cases, ensuring correct backlight PWM
> > configuration even when the bit count value is not explicitly set.
> >
> > This improves compatibility with eDP panels (e.g. Samsung ATNA40YK20
> > used on the Lenovo T14s Gen6 Snapdragon with OLED panel) which reports
> > DP_EDP_PWMGEN_BIT_COUNT as 0 but still provides valid non-zero MIN/MAX
> > values.
> >
>
> Nit-pick: AFAICT, there is no relationship between this patch and the
> rest. So it should've probably not be part of this patchset.

