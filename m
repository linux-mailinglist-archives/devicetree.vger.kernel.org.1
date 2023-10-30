Return-Path: <devicetree+bounces-12866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2B7DB9CB
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E03C7B20E86
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 12:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BF23156F6;
	Mon, 30 Oct 2023 12:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E1Supr9P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735DA4C66
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 12:21:04 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BEAFDF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 05:21:02 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59e88a28b98so37980407b3.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 05:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698668461; x=1699273261; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tx0E1lO7sX80TYEZLbZ/p7IN8KY+xevJVJVX9CSG4+g=;
        b=E1Supr9PmXY1SK5nvsePtOPDuCxdtw7ixjy2sCUzCWZO6+UdYRnStsBNYVw3rF9Ayi
         0pTaIdcbzl79P30ovDKBq1TB5LVJonsKK3x8fcI0UrChg4dsLLEG3dhP2DEH4+k2bv1O
         /tNKCi3w9KUKNzNpIbDID8ThaYTeNEGpD6s9fEbQV/hQEGEB3dfEMfj+qW4LlTK5ecll
         57pxRnUJTsuk3ifc0Z7L1X10cxSP/v31QPvpqQogIxXFCsq41qWteEmqiadpkSLQ1gXo
         Anf4jE02vrBG2/Arcch3VlUvoLxhiE40+dMyRBsh4u1/QqUulbuFL8NgbemRm1ibXhcx
         i1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698668461; x=1699273261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tx0E1lO7sX80TYEZLbZ/p7IN8KY+xevJVJVX9CSG4+g=;
        b=iJnn/qRo4+mWZ28SjXIi6GVSFspVony1QDQITEJiJedwN7j/sav8EmbFOq6vUctk50
         I/365o642V+8hFjY72TGcoyO05zJahsTu7n1Tren9JqZX9hb1k71LsibS05NxX9eUTwq
         6RSKD5uqmMFz7B3O3G57WzQ/+EsVHjc/4mGgDF/wZuov8oZ+VXSUo7S/wd7lnDu5or7z
         idTGmsP27+mUVc7uisupb5ymDH8ewOclm/H7Rsxi649ms8SARC+rrf1IlM3Xeiek0y1X
         y2EQOCUFde0qY528oe+9wWYfjb2qYUpOpHmCXCayPZZ8psAAmmqlRRBLjwI6Q+Prf1Ef
         hv+Q==
X-Gm-Message-State: AOJu0Yzpc2WDAc8ynOGEa1b954LV9FzcoWlIUcryqCsZQS9zBwPW01Qy
	CzPd/QB/jKRVIIN8zrQauCADHPuHnuFYlK6jb0sr8A==
X-Google-Smtp-Source: AGHT+IFKE8vLRCh0SuUhxTnn5PdhE/o7DyZSiHlRWBzISa81u1bz2zPdSgaIvbzp7Wc+FD7P0CwSUInn+dj6DwNZIKw=
X-Received: by 2002:a81:441e:0:b0:5ae:15bb:466a with SMTP id
 r30-20020a81441e000000b005ae15bb466amr10123206ywa.14.1698668461455; Mon, 30
 Oct 2023 05:21:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org> <20231030-topic-sm8650-upstream-mdss-v2-5-43f1887c82b8@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-mdss-v2-5-43f1887c82b8@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 30 Oct 2023 14:20:50 +0200
Message-ID: <CAA8EJppBTOnSAWLpZjHAGwwfQzPRVgHVmDfN4nvaVifU+2xEOQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] drm/msm/dpu: add support for SM8650 DPU
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Marek <jonathan@marek.ca>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 30 Oct 2023 at 12:36, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add DPU version 10.0 support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_10_0_sm8650.h    | 457 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |  26 ++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   3 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  5 files changed, 488 insertions(+)

-- 
With best wishes
Dmitry

