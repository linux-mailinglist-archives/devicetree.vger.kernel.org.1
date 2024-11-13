Return-Path: <devicetree+bounces-121495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 025889C6EC5
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B71172815E8
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 12:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498F220263C;
	Wed, 13 Nov 2024 12:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WCraBZWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE5E20110F
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 12:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731499797; cv=none; b=jPhZ73Vwp9UG6+q1SL+cf8MyJLskZqOuFikfmXslwnXFidcIZBHGfFfzhNuCmJg8oBrkgYjbfzVe4aYfeEbtVOHUs31ieut+ECLjXR4a15auyORCEuN2wysakL+aiIGhgpSYdacAAbekmwX9HOGyIr9js7VwgC1k6LEoWd2gANU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731499797; c=relaxed/simple;
	bh=EVceD0P31VXbz4vdd8jXRlHujz6kNJFtT82WAlOy4pI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BvCotByjyJEClck8VMyU3DCfwPati+gP2kRT058diUmA7htwfR/t3hdsvnpDbIP2Md+GrUA8tp32dkPvxaJ5XcmJAyxyjdxuiVe9rsXA7PEpTiUZ23EeqGiNTqBm7om1+XLiJs9q2PGZ/4SmD7rqckOOZ0rjz6meyKCu8K5IoXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WCraBZWb; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e28fe07e97dso6865871276.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 04:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731499794; x=1732104594; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vurz8Z4ymLq0OAC/znWews1WaS5VvMmTAw7TGG6DFzQ=;
        b=WCraBZWbKWYS/usQf/yRGlW4d3f2mqb0GlVaN/gOGJ/aOp7U8DqDgx/NQ26D2sFcQd
         zX2V/+O0sByNj9opKLk1TDOX2hR7qcRKzAJGsU1gaIWbe91PnAyq+6QjN6rEXuwWY4Of
         GUUJCAkXoexQO9GgSPZ9fAzxxsiN+ov7LZG7sG/E3OKmzPYK7iL0tsbKs3FA6qmSHUU3
         PtNh0uBFc/n9iyjvlDtFYWO044ZZXpfUGKPMh+mNHXeLmcDKWAmbPUoeQ+xHfCdnXIfV
         LZv8vfi5PJiB07PqtUiA0ZmU6Sh8ooJluHnvi29Uoy91RlJN5U7YmltfUX+TgOCjidoG
         2F7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731499794; x=1732104594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vurz8Z4ymLq0OAC/znWews1WaS5VvMmTAw7TGG6DFzQ=;
        b=deJvu9a3pHuMj+4AxNlT4XtH3F3lLn385PxPfmqdaLTCDFEWatBtmJ+zEwt0EcEOh1
         xZiIMHcrSsnaBz6oLg3X9i9DDC6yr4loknHH/TqkHYrtZX9tpOyadwrTE0EK8CMzMGB4
         PIrL4xiEtdCXlkSEy9Jz56G3vD184paOhBjTc6UUq3T/pzEdxyouazmjZ08I4a35MrXs
         6dkXpMb0mrhGdEvI28kSoU1ThkFtLumuOlUO76zY8HoPMtGwcPCAACZDSlBmQz3d6gtG
         GaQk++tNYJDKqE7FhoLUWnZEYmoNCqDpIbRqy70A5FD+BFPgsfEs2nLXqYeurzwHkz9h
         PBtw==
X-Forwarded-Encrypted: i=1; AJvYcCUqPtT94cHX8HwBhX2r+UyZXX1yNzMFqaVUrLevM+W9Lo2V+tu7xsl1Z8oa/6KDhFpqsz1P6WQp5DfY@vger.kernel.org
X-Gm-Message-State: AOJu0YzD4hQr59SaF44wirh/nfwxiEm0M30clQ+o26hsyPv4pF+Vqar0
	6M1VJo60R+WZf+qTER92Yyv735XBHR9IUgrDfP0kQ6JjOCgoUvACMJ8sWLkpegNXYi+GdO+o4c8
	6UEhx8UMo6wioCVQzZ84gOduDiSN5oQBZjns1ZQ==
X-Google-Smtp-Source: AGHT+IEbVbENHDimLrclLq81k2K+eV3PjRDffS3YjYrYwNAjJe5acWC3fJAW8eAeTcDDEGpWp1iOm9mjfIL5BjU6U0s=
X-Received: by 2002:a05:6902:848:b0:e30:d4e4:b9ea with SMTP id
 3f1490d57ef6-e33a1f73693mr11483612276.28.1731499793667; Wed, 13 Nov 2024
 04:09:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113-add-display-support-for-qcs615-platform-v2-0-2873eb6fb869@quicinc.com>
 <20241113-add-display-support-for-qcs615-platform-v2-4-2873eb6fb869@quicinc.com>
In-Reply-To: <20241113-add-display-support-for-qcs615-platform-v2-4-2873eb6fb869@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Nov 2024 14:09:42 +0200
Message-ID: <CAA8EJpp2MyXZ28GQV3GDgQp9uCbr4devi++nzkeHA1fk6UZXxw@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] drm/msm/dpu: Add QCS615 support
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
> Add definitions for the display hardware
> used on the Qualcomm QCS615 platform.
>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_qcs615.h | 263 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 266 insertions(+)
>

This patch completely ignored some bits of the review done for v1.
Please take a step back, check what you have missed, respond to those
comments, etc.

-- 
With best wishes
Dmitry

