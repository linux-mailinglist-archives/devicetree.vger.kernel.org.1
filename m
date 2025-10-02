Return-Path: <devicetree+bounces-223420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A58C2BB4805
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 658051699CE
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D03254B03;
	Thu,  2 Oct 2025 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ntM32JZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92325258ED9
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759421913; cv=none; b=aM1FhDM27eIJ4nRZUc2f7cHqA3kGJnWtiIT8qfTXq99EPSxeqnMptTsSMVDz+GlQqa/LetuMc2AKE2wRAx8qCSelA3LZR2Jt9XilDwXTewV3Jb8YdI4SB0l07kLtHgeIo+DanTwMvEVATKApiyGOqI1lrqa57C/9cVLsEtRbepU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759421913; c=relaxed/simple;
	bh=aLH9BCUCK6JFkv6xyUlkoPUhsi1r/cg0UwxlEtbgTww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SkzIwu/WGI5Psiu8FUefJk/zMoMefRffjmqFQRrR0paepx1VR940a7bbJ8X1HNc43peGvrniTj2FyIANz02R8oGUucJOi+rTOpo5X5UVKxVOtCaedwrBw2Od/S+bl/EztoP4UWXxnu/gk6uDFYRCXQSfNc21JX8akN50t9Q1svc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ntM32JZY; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-32eb45ab7a0so1399712a91.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759421912; x=1760026712; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cs0gCH7mhvaO1qaWvoNXBT3MrPhbI+ZP4G1QowHi4cU=;
        b=ntM32JZYOV98CQiB502TF5RPc4tOmcxVgck7M3aKAkGVn8suHkcjzqF1vYEpMKx/ZZ
         InqoKTdJdCMrbk11L2bdhuT4o028GnExmDvdRscX8TD/9kM3PklVSFRoevRT9bgqUnDz
         z5joPOlpMf9YcjWXSk7VCxv7wpkQbCUJZ7/efW6P/W1w5QYdT+fzWt3DKY2B9CiI9k0u
         v2B7hZIOzGvcujxPnnGL/ZGJR92Fp2knXa7wNed4bsmTfZ2v7+f6eKX9thDP+i/IJlMW
         EjNvHYxEpMxs+0zsQHDA9I/6MtAa1FHQlqVVT/B/1mEwJL39OhDL2osCnf4Dx3K5Idnr
         Mn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759421912; x=1760026712;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cs0gCH7mhvaO1qaWvoNXBT3MrPhbI+ZP4G1QowHi4cU=;
        b=mLk7PAaqVU2PP+cQh5kQIJz3i0dswRaG3zniFaUOt7YD7wlLZHsg75+hdTrMGuoDkM
         v5ave1+zXQpYn/qGaOX7wZgxGXadtBIW/XiXHQOEtPTbZ3Lyq7PViJG/yOj5/PZXvwhv
         CMy0EX7hCP3krC2E7M0lCYNHhOBcikGuW3EhA1ByD8saqV2UOnLqoC9StglWU0ijuxBs
         xz25gkuoSiYq5rho1AGTKPf0vDC+gS8Apr1vXuHEX7VuNLCLMYOMW6KIr8VQRtf4shQT
         hv4dFyUzB2wReoTdLoJ1+CIWMySTDbB94wI96N1fKzezZysfYriNYZlNKPvGy/hz+lm6
         j/Sg==
X-Forwarded-Encrypted: i=1; AJvYcCUIiKMTT4ZXto7dEU9a5OagIgZJ6BcLjEYIptKaPPHpy94zyQy4XlPDtkuMKs4rywB4WrFvMKQifA8V@vger.kernel.org
X-Gm-Message-State: AOJu0YwKPVnoT9e2F8g8E6YrH1YOPQbXo/cj1co8SxHIrgGlQbrkQrcs
	O+ympKRG/QQ3ucUDUXLYVE5zSjH61GUkoJ7HMgMz4u7OAGUXWwx8H5o2of5ldNs45mmQgB5z/s4
	Fa1VGpyM3ET5IFthrDnduzl4SyQJ5Pms=
X-Gm-Gg: ASbGnct02AIIbNY1apAlIkJbe/hYwL3KzQbHU+gkdvgKImWcRTnsURsRFIVLOiyoQYp
	+0gtvYAm4xGMEifaB9epN+VPphb4qKyUlAVau4WNV92+sRj/thApBLgxFtUYfghwkbq70Fpzx1X
	MPkXuMEE5tA6WHRuNn1eDD4eBsa90dMTeLEs1EdrfImsWTQIph7YUZNTmfeMP6QBoV3YRqIqu0A
	IMG7sjfmG+AKIf/ZrIfpSdKk9pw5U0=
X-Google-Smtp-Source: AGHT+IFg+PLUyWcoSsUAUf4htH875wDYY+hRdnGTted2LRpK1PJKUcMRnSKqqpUMk+z7FMvgEMVUAaitgkdEcJV3rx8=
X-Received: by 2002:a17:90b:38cb:b0:32e:ca03:3ba with SMTP id
 98e67ed59e1d1-339a6f2e679mr8142326a91.22.1759421910494; Thu, 02 Oct 2025
 09:18:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
 <20250821-qcs8300_mdss-v8-5-e9be853938f9@oss.qualcomm.com> <iza3iyj6ztuudm5rqfrxtalwxfghzsguf3pieulylebdblq7sw@divpjvwwvmsg>
In-Reply-To: <iza3iyj6ztuudm5rqfrxtalwxfghzsguf3pieulylebdblq7sw@divpjvwwvmsg>
From: ChaosEsque Team <chaosesqueteam@gmail.com>
Date: Thu, 2 Oct 2025 12:23:27 -0400
X-Gm-Features: AS18NWDwyTbNJJLg_4zVrM-EyYlDVd5QGpchaU4fwAQ38Pf7WEw2ME2yXmyyL7Q
Message-ID: <CALC8CXfTA6bBN-ZthgRoPXvv-BZQtvL7w7a+6bgTe_GTWnnfHg@mail.gmail.com>
Subject: Re: [PATCH v8 5/6] drm/msm: mdss: Add QCS8300 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Yongxing Mou <yongxing.mou@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yoongxing the Chinaman, and Dmitry the RUSSKIE; Conspiring.

On Fri, Aug 22, 2025 at 6:39=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Thu, Aug 21, 2025 at 11:36:00AM +0800, Yongxing Mou wrote:
> > Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.
> >
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/msm/msm_mdss.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
>
> --
> With best wishes
> Dmitry
>

