Return-Path: <devicetree+bounces-63184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BC8B3F78
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09EC11C2381B
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7E03D8E;
	Fri, 26 Apr 2024 18:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gonUJ9nr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E4C4A23
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 18:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714156709; cv=none; b=rjZaAoUK55rrwYOHkj2hg+MG9RSSyIFk54x7BjUJEiHsLJjANt4lFd9OcaCLEVFuqy4sYu7vU7sGbaJrC6hd4Ppi4FfG1M9bgWBy6OR6+73xz0BaSG1sYjRjM/BRJX2yj9JFnoFxCkmDEZaYu8qtfUKactJBrKrAgS0BzHEdJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714156709; c=relaxed/simple;
	bh=EROl0h+lX0UEVOQ3jXAf6uS8dnPQHx/VO43DC0quFrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gd+tHp0JPSYwGB9zRDYbQIwrgzH3Db7XqhHyD844U7iZLFNvmRKIrp44OkUJZjkq+kKQKNK2gAqFTnNZweXV5vcGwvTNRu3DfDpzyuE6XQunw4Aj/8wwYje15Jahw573389iunRg84U81nIvr2f797cQWnuvOLD8dEVqSGxcgak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gonUJ9nr; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-de5b1e6beceso923578276.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 11:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714156706; x=1714761506; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LCD0O0mksG8o2F+MvGZO/EX3h5H/t77oNaw9Qg2ltc8=;
        b=gonUJ9nrsYAk/tfle7bRtlD98dd3RXksVkO82PSbqLX9lzbaU5yP+9P5V6Xiou/zj5
         TNiPoZqNb3uvnz5nS9CRvTUbtYohjKfnXLngYLbkR/hzFhKJh8HZFRBpb46VTvX1ZADH
         jheJuSB0g9NPVVkOJFBvMB5NqDPNHU322QPM34uKo3oamfRHE/gXDSbcVapqNZXuSPl7
         I82fDh7gTOXepG1XW4hbcpvgVnXGxaq94py8szzoQC2BkvL9ljBtp9wKx57OgkXhOSA6
         HF1S8NeCxRy8Kvv0UuiNDncUTnV5/7emL2fQow+DeqmXGq5dxKG4YCd2wnvPj3SNdQ3X
         jxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714156706; x=1714761506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCD0O0mksG8o2F+MvGZO/EX3h5H/t77oNaw9Qg2ltc8=;
        b=c2jeSpfVqYzR88lTzXSntg/35cwkc54F4Vksdu8NDviX5Rj77lccg7LE6MH+zBb3it
         JcOJPrUNRL5FvOLkRx1BULiclPbuZhvDZO9DchDlgenoKU+jhDTPlJjy+X6MA+nTIM2W
         nko6HXVVirQUUOv5gSFAFfWjRbu8YLxdIaf3UmCyOMw/FRs2HxwjkRa7UCYooMNR3TZN
         qPIMUjZkSL+rZWAdGcn2S3a3EV8TR/tNKakCIb26H3og5BsbhipvBKW+EqoqfKaunT9N
         wcOF0LXrhgO9jXhFtbFCASrdo96FC3/Cp3dlerZybU1vn/n2geChU4374VsUtuzKIRP/
         Vn1w==
X-Forwarded-Encrypted: i=1; AJvYcCVabcOEL0A6ln4dBLg3BYmgcjSd/sRig4TGo7FZNBvQmHxg4MIai7cDCYaGTvYV8ggRaR1ESLMCUpVjeb76R4OlqJG2st3kWPWDYQ==
X-Gm-Message-State: AOJu0YzjSliYZx/DZKIJ45QA5mcrjMa4wwxi25Euz3U/hyyLyOqjT7I+
	KwevhNYarxJO5GqLMQwphiB8mvVLXkn5G3tNZWn+Lntxw57QDJ2MhGN8T1l2cpaY7ewTX7zN9Mq
	JvuoM+keyPRW7uQf33zYtQnhoAwQQvTehIoIKIw==
X-Google-Smtp-Source: AGHT+IFAGdtoxtMF2BQTf0jLN/bVVJboZUORk+tAcFQhd1qw6HVqAVGEQ/MHq4a2scbHXirClF7DoJbhhB5lfiXMorc=
X-Received: by 2002:a25:ce8f:0:b0:de4:8b7:7bbd with SMTP id
 x137-20020a25ce8f000000b00de408b77bbdmr4064532ybe.15.1714156705913; Fri, 26
 Apr 2024 11:38:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426-a750-raytracing-v2-0-562ac9866d63@gmail.com> <20240426-a750-raytracing-v2-2-562ac9866d63@gmail.com>
In-Reply-To: <20240426-a750-raytracing-v2-2-562ac9866d63@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Apr 2024 21:38:15 +0300
Message-ID: <CAA8EJppF_Xhv_itPOAwbeey0Fh-V=Wd5SoOxNmGZpOUjYkLgNw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] firmware: qcom_scm: Add gpu_init_regs call
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
> This will used by drm/msm.

Can we have some description please?

>
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c       | 14 ++++++++++++++
>  drivers/firmware/qcom/qcom_scm.h       |  3 +++
>  include/linux/firmware/qcom/qcom_scm.h | 23 +++++++++++++++++++++++
>  3 files changed, 40 insertions(+)
>

With the commit message improved:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

