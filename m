Return-Path: <devicetree+bounces-44098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8378C85CB9D
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01FFCB2080E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DBC3154453;
	Tue, 20 Feb 2024 23:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QfMqzgW1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD7D154439
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708470069; cv=none; b=Yzmnz+fPztkbze7CLNR6R08JVcAzXVqjNtRC+9pVksdTBBSc4cldVA5m2aZGVYaDu1MOun35cttFtQv2PpYCZjQd+yS/sENxIGegVvEFZO4mwlalLb/DJAQ1BpkTJmk9HVB1gDhhHCJCLscnl6CNySGjSQY6cyOzdRYqHBhP0I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708470069; c=relaxed/simple;
	bh=ZH1Shcw7u15ZCG1t+CtfsAPJrxf9hlxF4UYzNdDcnpE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oUir/m8U66FAQf71+0dHBEpCAGQf3mg/1FZYJNxdDZlN53iY2wAkedCEs+GAY45PWEFFisLQo8aQXDcpRzoB4nbnevwChgPfjKjIQfCABlcSE19egkiXF2oAvBnju3YMtIhYZPlnP7drAwwhUashPTLDnvTjI/bYIRCG0Q3iM8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QfMqzgW1; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dcd9e34430cso6099145276.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708470066; x=1709074866; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U2fn3Q8ysQNGsP4/bFdrwVKI00s9RBc5Vo0obuiYfWE=;
        b=QfMqzgW18qcN/x/LbG3APkh8Vk+cs0hverVKQw72SfRnKZqXe93r88Ju5vqPGEX1NS
         QiFgYzy5wuu7Z1/udjIJYU2EJxbUAkCNH00dfeU9tJx/zumvz2duiGTMBd3hxo1qbapZ
         sEwVdCp5PqAqO6coaJglrMEQ71GkeDjMmUv9P93iZvpYD/SrC2difZJkkNUSJE25z+tw
         e9ExfuPKFMtGU4HKKv2Cv7VPJeKa7mWjZj0XjdygqnZzCCoS/i//5m/VzvOC+NcEiFdA
         tYJm+8UfK44aBj0duCAC0g6f7yUlOk798V+SrJ8zSeEnH6Gl8JD64xwoQeyZE1UH1P/0
         RLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708470066; x=1709074866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U2fn3Q8ysQNGsP4/bFdrwVKI00s9RBc5Vo0obuiYfWE=;
        b=SVc8xW9h/IyH4ybSvyBzNcImCnLJOmUquiKsEmfbZuw2C9wcc5a6vJYb4xG/YVSho9
         87rCvWdGOBl3eW/ppHzZbPfOx1sU5pDucaiIeWrQwpipzsS4+uKJCp0hqCwwPNMsOQri
         8PC0sl4aTop5X0LbYykMQ9bnBfumNJ5CX4mnhcYZ8ZAJQ0kf2spBMIuYkNcfWaV+epr3
         9iB/sTdgOJuwYu1ZGnsdLp8uJEFRv6WXHxn3V7PTyfUxEa2sucH9ESmTAb8WHPn67DPN
         T1RdE+jI68tFWypTP+JjTqNYSAOsb8hQLjetRiliwLaTJYECPpFQoGzj356Sp/1+8mj7
         0xIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4tGETSRWqzWUnu74u1qS1hqXlcWlO8Q55LNd0WKhV4nCadjUWyEG+nDMlfP3w8LFL5/j44bRYFwVTCuhJnMA4qY8XYLqLKKpLjA==
X-Gm-Message-State: AOJu0Yxr6/HyRhcBdetWrsVWatih6U7ZVvUZUFg1AkNxavhHqaU5sH2z
	G+p4UiLn8jwkKjijXs/t7DzYnE3ep7Ri+yUEU3TFyKSyfYGT70BG2QTT9YXZum3enN7wD6u/h2F
	O42k9j6xj+SrQufcmNNllXy+4WkaKhww4EUeAVw==
X-Google-Smtp-Source: AGHT+IHF4X8wKExd1/pvj1ol/XkM7oZ8gVoH8+BQhl5KQKK4+h/fjqShZZcUu2zwUnRK8rhG/TFZmoyPRSTuQf9Je84=
X-Received: by 2002:a25:8a12:0:b0:dcc:e388:6db6 with SMTP id
 g18-20020a258a12000000b00dcce3886db6mr16240782ybl.55.1708470065975; Tue, 20
 Feb 2024 15:01:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-x1e80100-display-refactor-connector-v1-0-86c0e1ebd5ec@linaro.org>
 <20240221-x1e80100-display-refactor-connector-v1-2-86c0e1ebd5ec@linaro.org>
In-Reply-To: <20240221-x1e80100-display-refactor-connector-v1-2-86c0e1ebd5ec@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 01:00:54 +0200
Message-ID: <CAA8EJppgusQObCgmtG7Sz2tLiQziyPy71Eq7ru1=VmOaTZE9og@mail.gmail.com>
Subject: Re: [PATCH RFC 2/3] drm/msm/dp: Add support for setting the eDP mode
 from devicetree
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 00:50, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Instead of relying on different compatibles for eDP and DP, use
> the is-edp property from DT to figure out the connector type and
> then pass on that information to the PHY.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    | 11 +++++++++++
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    |  1 +
>  drivers/gpu/drm/msm/dp/dp_display.c | 19 ++++++++++++++++---
>  3 files changed, 28 insertions(+), 3 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

