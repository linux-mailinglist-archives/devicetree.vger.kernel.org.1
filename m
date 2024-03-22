Return-Path: <devicetree+bounces-52484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6923A886D85
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 14:42:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0BC7284B1C
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B49753E33;
	Fri, 22 Mar 2024 13:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PZ1/pBbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C439954FB7
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 13:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711114306; cv=none; b=dZ/fiB8hd9HHiDiPY4a8Cdf53RbItdBPPjvnd0rdWZNi1l+cHD1VXtnAenN8wKGI1yMIdOVnXGBeVmGiFz49DrjK2/J/pirh//tf+2W8WQ2E49ItWLncONyvb/oBnyXqF82bj9Y2ZmzgqvlgDUI3FgkVZEms90mcBJu3DbQSSPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711114306; c=relaxed/simple;
	bh=Vq7R7pvWoT7nU/n+bLHDA3nkQF/8c8rorqIvMyTQsFw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qX2JXiOjibZHpB1FeJzSEeYaJq8CMno4hNN70MhkKWV5EFb+2fpU8G77tTbBYS8AZHUv3js8ufm1NLb3l6PNDzXtm90xIySkma/mfZnYwXeREeWh1Ey0jMsXW2wdS6exLvJPMxs9OHz8VeOCmD1j5AKNl4RkWQFGp8UKXeeSSsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PZ1/pBbz; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso2056429276.2
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 06:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711114304; x=1711719104; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RYiJWD0Ul0Tt3aXboOB5LN8lg6CYH26yRurRIi/6JpA=;
        b=PZ1/pBbz4Eqclgk8ogjWcfuNy5PDorsU/IuBL5jrlqpDrkIDDF/XJh2eo4AEOz5aNp
         uITPKWvLe5DVkwSO5IG2km67A+9hvIcelHoIqoAL1f8S/jMixWqCFQXesBKXXbLxhLtc
         xvXLRJFAzAAxBkmKWXHOD6DBadT+H1XJf8rtzJqqzXiPrvM/xkGXgVRLinufgDRmkoUF
         2XmGf+A7a9W9F2jU32Rb6dmUzoEGk14vWt0hvhq2osyhlpWBVVpLANHwzFlas4kfDRFC
         dxy8aQ7oIY7F4y4yWEqvpDi6f26GLDfXM3KJt94SyDLgESFfcf7NBaf3RIU7MTF0c1W/
         zWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711114304; x=1711719104;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RYiJWD0Ul0Tt3aXboOB5LN8lg6CYH26yRurRIi/6JpA=;
        b=bxC8mDBMmbZiTIA3UvGQlK75UkTmvAAAqBocGNIiFfrVzsEQDFuNMZypitXGD4H5Wp
         PlNM7KrtlaR/5qHe7hzSLnP1HFHKVMx7LtH5eSq+jsBzSIRttvsqSrk+j+r7yk/7znKk
         J8GUt4U7n12VrQyY5zrjWR+1ougc+IT9mSVqyUt34X6CNhlJjTUC4sBRaUdwub3IbNaf
         Ix7qTj78PEeI4p0Aungvhw2YoQO8S2vbsw/10V58kvLwdMpX8gnApIAq5lU/AQvyczu+
         +ilkAwOUqpMhzIwZ/TbiG7AF8qiXpo/GRjpyL1P9O2M74JAeWTlNZF+DNAEl5Cs7504p
         EnFg==
X-Forwarded-Encrypted: i=1; AJvYcCV34ShTvomUzJcfySesH29MxRD4s5DQNJsxpkiLhRGU0oBa5tw+KWsjHLYrra7HzDk9sKYSsydgAcFvcGUHx2tCg+5cczubU+/Taw==
X-Gm-Message-State: AOJu0YxAYD1yKGIEPUt4hZ0gGg/CRYNTYXBMnfB0P//3xSPTfq9FdjY0
	Q9oYCU73pkCAuE4dX+tCGZ6kSfQBCk7JNfJJ5LU1EsQfpCweJ03IS4vE01aMpD5g9eIjFn+Z/xG
	TxJWva8hDAZiyvT33m/hLppd9611OERpcieTfvg==
X-Google-Smtp-Source: AGHT+IHSXoHBI+Zx3QkDSlxZKvtx9N74kcEcV/jBAp/cCjwxO+4WHNHkjLOfHtiJnTJ2hbqDQdUPCSB4SW25TLNmrDU=
X-Received: by 2002:a25:83cd:0:b0:dc6:ff32:aae2 with SMTP id
 v13-20020a2583cd000000b00dc6ff32aae2mr1825871ybm.63.1711114303943; Fri, 22
 Mar 2024 06:31:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
 <20240322-x1e80100-display-refactor-connector-v3-2-af14c29af665@linaro.org>
In-Reply-To: <20240322-x1e80100-display-refactor-connector-v3-2-af14c29af665@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 15:31:32 +0200
Message-ID: <CAA8EJppwhaZhee63hxvfbEc3RLT3rvHr6j35G3u6qU+HFzb_aQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/msm/dp: Add support for the X1E80100
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

On Fri, 22 Mar 2024 at 15:22, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 DP descs and compatible. This platform will be using
> a single compatible for both eDP and DP mode. The actual mode will
> be set based on the presence of the panel node in DT.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

-
With best wishes
Dmitry

