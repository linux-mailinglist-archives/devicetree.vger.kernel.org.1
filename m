Return-Path: <devicetree+bounces-63189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E04638B3F8D
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E3321C21FDC
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3236D4A23;
	Fri, 26 Apr 2024 18:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="flOn+zDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8497470
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 18:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714157081; cv=none; b=ZilrJLT+UAT4I8wi5WjzsaqkAYDrbYk9n7EsjHcaqr1NSJtZeK5x61C/GpKWoca56lcZ5KIPfY5UX05TDkbZm46qcGJ6JwrgBPmPWAl+5gXLOe0ohUfm72vug9YJbjhScs9uu1P1tJ5hdYRbDINFb7T9lpLifwHrpCaf29p9Fi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714157081; c=relaxed/simple;
	bh=9NzQ4w51FWAejlYMZI3/n/bzbmmxcxg5XKFhWgvUvVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RKBPmDWZfm0a2jUI+gZBX6p6y0kc1DT2Pb1QEt1XUc7cCeK4rUu0RK8fIK8B3YjO9aJAyihRnfYXptztik28PnE57QmjIS2Yr9y4YRRTCbqF77luCOB9+mVf35tUyrO+gnjwmgcHFkkr7wX5saL7O0WrhwLY/6+GQCxWhUrMP4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=flOn+zDy; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso2785239276.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 11:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714157078; x=1714761878; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rPiNWGdfnN8JZJd8dsw7Vc72DKCvCwvtvuendszQLjc=;
        b=flOn+zDyhfpqGBhkF3mK/00M+mSB8qKf6LlbWl5B1OvXnMuHVWgTERdANnJiUaSTXu
         ZnDR5H1D9oUeEsL3mX2bKbc0Q3P0oXfj3pTPQ9uyU02XaAT5zujZ5ThvPaN5VnYdsW5/
         DaF/NT1jUDl+YLwJaUvS5GAV3IsObjDO3cP/I0MUcN7pC3Cax5NV9cgOtFmymoAF+fBx
         P3hEI1bHbXk6l1hQQ9P0+rv38S60jgiQ1oUmqcz1nbZqiuKEUT2722kF3JMufGAOKJH/
         vPBWqjuKDm98D35JpEOlgA6yq7seGxiEjLbf1yR+PlfOciCKh2z40nIY3n/H/2jZc2FR
         eheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714157078; x=1714761878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rPiNWGdfnN8JZJd8dsw7Vc72DKCvCwvtvuendszQLjc=;
        b=KOPX3H0KWvddpl3WQqnE3jlt2PYjVrzpREl8WgQgkE1XL4QTzqWxHisAzkRsGdRq7I
         mivbS08kb/9W685eohV7ligN8eLvdctbsS1Z2L+PcoULVXVRIVktC/I6Q3j7km+h8fWj
         xwlCPYOKXeMUWmBo+3Anc1dhC3QPGkc9CpecHFXRl6PDeRO5i+HJvJ3u6YPUIaQJQ2GD
         IZpv8IigwOALraBQLMfIEdfgbm0DbcuBEeB7BKEvQU21Bz3F0OUg/YHXwnJryPnoiomm
         AwHeU5XR9jlRvkxW+V2H0DnbCbQnbWNlcx4v6443XMw8xDo4XEP7sofsQRZFhD+AxDTR
         1M7A==
X-Forwarded-Encrypted: i=1; AJvYcCWprc413t2zdeP7vTeEeJg+bUbwlnZ6J21HMSDye74iPP8/qFvMFHuQKmhGBXGOVI4oTrAPUM50YLnMTLkZmFZh7OjLB1bLQrb1Cw==
X-Gm-Message-State: AOJu0YzDaXMhGLD5x6QxwS2DmcMp/ytucNFfj9vrqJK0cD025vCOHdeY
	3Y+KOdxmG8OugM2+XkF6NBh6N/nP9BjyA7ZmJAQdEy2/mfQ4iqVY746MfppgXWwSWuk9gALLi4s
	HKVyBNnTRigiZo4NO0lKUKklpAzbjVMRXkxJDLA==
X-Google-Smtp-Source: AGHT+IEBZPSkhTeyZCn1Cq2ot4W4tqIxgRzfLLkcqrRXEqEgcPk4vxhJsI6qrlPc7WoB0zQEQsEX8xqSosNMUxnn03U=
X-Received: by 2002:a05:6902:2010:b0:de5:5a39:2cad with SMTP id
 dh16-20020a056902201000b00de55a392cadmr4344715ybb.27.1714157077930; Fri, 26
 Apr 2024 11:44:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com> <20240426-a750-raytracing-v2-5-562ac9866d63@gmail.com>
In-Reply-To: <20240426-a750-raytracing-v2-5-562ac9866d63@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Apr 2024 21:44:27 +0300
Message-ID: <CAA8EJpq32gt1UJ078-O9K1LdH+8gmZGh-FaQDjmm2M-RO82TfQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] drm/msm: Add MSM_PARAM_RAYTRACING uapi
To: Connor Abbott <cwabbott0@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 26 Apr 2024 at 21:34, Connor Abbott <cwabbott0@gmail.com> wrote:
>
> Expose the value of the software fuse to userspace.
>
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_gpu.c | 3 +++
>  include/uapi/drm/msm_drm.h              | 1 +
>  2 files changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

