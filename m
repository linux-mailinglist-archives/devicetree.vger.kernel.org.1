Return-Path: <devicetree+bounces-32270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9014382ECE5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 11:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43B5A1F23F59
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 10:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCB217598;
	Tue, 16 Jan 2024 10:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D0JNJz9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D0013ACA
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5ec7a5a4b34so101628537b3.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 02:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705401872; x=1706006672; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xfr8ekJ3/kF67ykOkBtf3gUlwOGhZeagdlr6ytlyxGQ=;
        b=D0JNJz9tdBfYflFvVMZbxy7m3PsTtAvotZqMmh+CQekZcUhU5uqYJ2G0mIcX0Yt/Qv
         fKz5AeloQlgv8b9wI9C6HHXPN13rO67iE6BFqBi5gEKpN9yQ9SCvUEKgW0sFjJbtJNb0
         Aqlt3l7mLunknMKe3Bkrwzr7uT4GIrIIwVz6Lb+oY3fRg42Gu5es+1pKk4gDL3qd7yEk
         W30bSb7OFpySSH7emgq/X1gSJZY9eLzWJa3681NdupU5WMvWHSluPxRUbm2PMzxpk+Ge
         SJTachma4TMKMwHOgPccdpwlT19Ihe/0Tf4QrTXanc4ODKSoTArGeeJ4Nl0Ham1EloSw
         5N7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705401872; x=1706006672;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfr8ekJ3/kF67ykOkBtf3gUlwOGhZeagdlr6ytlyxGQ=;
        b=jkmpdfPPEZ0HBrfNXGSnVUg5ARuIjNqg76DgZB3c1jirOCrSd+gkCLGCZwXmCgCqc2
         d6XUI+KZXYhh+isFG24qwTDOHCr0pQBB4oyxu0GfaQKnp2TG0vH2RBu4svxb9Xm49PHv
         ir2c70sLCWTEAJXUbGZjDRNz8S/Zl31sYeQ98dJKwWM4K2CrebYsG7gZmWhFnY2i0/ni
         2ZkpBEUca31tbUi6zArxX7r8awt5jeqYRABHYJX4HY5tv1y9nD+y8NgwSAoay4gG58ZF
         g6jZFI1SIud08NdfAzQraGPG65ou5bkxVphvmX/Dx9VtyphE1Ha5ab2nCNbv2dGLc83R
         SR9w==
X-Gm-Message-State: AOJu0Yy50YRBuUdgyv99HJ+x+BLSHMuu7wCn848mr8VSLHd81SPp73iu
	1SjjEnRlXKmbQ/O6sZ1JCjobdW9+gUqKwgZTTJVaBBxoVfz6cQ==
X-Google-Smtp-Source: AGHT+IG+pjXF8PAggTuUX8KKrF6NwOBF5GFi3hYjC/JuFDOGwfzK7X5hEG8iavIiEV1pP/58gypnnpC/LjrAO+dgnws=
X-Received: by 2002:a81:de4d:0:b0:5d7:1940:f3e0 with SMTP id
 o13-20020a81de4d000000b005d71940f3e0mr5302858ywl.72.1705401871966; Tue, 16
 Jan 2024 02:44:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240116094935.9988-1-quic_riteshk@quicinc.com>
 <20240116094935.9988-2-quic_riteshk@quicinc.com> <CAA8EJpo3YS4EzfsLtovYKbLSGYX=RwUn9dpmCW=j257LnvPrgw@mail.gmail.com>
 <1d68485fd1574ff88047cef0d2d5e6f1@quicinc.com>
In-Reply-To: <1d68485fd1574ff88047cef0d2d5e6f1@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 12:44:21 +0200
Message-ID: <CAA8EJpqV_jTm1gNy5RsgRWZBC3j0nTPsUPRkv6KivvRbw8TucA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: defconfig: enable Novatek NT36672E DSI Panel driver
To: "Ritesh Kumar (QUIC)" <quic_riteshk@quicinc.com>
Cc: "andersson@kernel.org" <andersson@kernel.org>, 
	"konrad.dybcio@linaro.org" <konrad.dybcio@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>, 
	"will@kernel.org" <will@kernel.org>, "Bjorn Andersson (QUIC)" <quic_bjorande@quicinc.com>, 
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "arnd@arndb.de" <arnd@arndb.de>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"nfraprado@collabora.com" <nfraprado@collabora.com>, 
	"m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, 
	"linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>, 
	"Rajeev Nandan (QUIC)" <quic_rajeevny@quicinc.com>, 
	"Vishnuvardhan Prodduturi (QUIC)" <quic_vproddut@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jan 2024 at 12:25, Ritesh Kumar (QUIC)
<quic_riteshk@quicinc.com> wrote:
>
>
> >-----Original Message-----
> >From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >Sent: Tuesday, January 16, 2024 3:30 PM
> >To: Ritesh Kumar (QUIC) <quic_riteshk@quicinc.com>
> >Cc: andersson@kernel.org; konrad.dybcio@linaro.org; robh+dt@kernel.org;
> >krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
> >catalin.marinas@arm.com; will@kernel.org; Bjorn Andersson (QUIC)
> ><quic_bjorande@quicinc.com>; geert+renesas@glider.be; arnd@arndb.de;
> >neil.armstrong@linaro.org; nfraprado@collabora.com;
> >m.szyprowski@samsung.com; linux-arm-msm@vger.kernel.org;
> >devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> >kernel@lists.infradead.org; Abhinav Kumar (QUIC)
> ><quic_abhinavk@quicinc.com>; Rajeev Nandan (QUIC)
> ><quic_rajeevny@quicinc.com>; Vishnuvardhan Prodduturi (QUIC)
> ><quic_vproddut@quicinc.com>
> >Subject: Re: [PATCH 1/2] arm64: defconfig: enable Novatek NT36672E DSI
> >Panel driver

This is ugly. Please fix your email setup.

> >
> >On Tue, 16 Jan 2024 at 11:49, Ritesh Kumar <quic_riteshk@quicinc.com>
> >wrote:
> >>
> >> Build the Novatek NT36672E DSI Panel driver as module.
> >
> >... because it is used on ....
> >
>
> Thanks, will update in next version.
>
> >>
> >> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> >> ---
> >>  arch/arm64/configs/defconfig | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/configs/defconfig
> >> b/arch/arm64/configs/defconfig index 361c31b5d064..028d80be95f6
> >100644
> >> --- a/arch/arm64/configs/defconfig
> >> +++ b/arch/arm64/configs/defconfig
> >> @@ -859,6 +859,7 @@ CONFIG_DRM_PANEL_LVDS=m
> >CONFIG_DRM_PANEL_SIMPLE=m
> >> CONFIG_DRM_PANEL_EDP=m  CONFIG_DRM_PANEL_ILITEK_ILI9882T=m
> >> +CONFIG_DRM_PANEL_NOVATEK_NT36672E=m
> >>  CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
> >>  CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
> >>  CONFIG_DRM_PANEL_SITRONIX_ST7703=m
> >> --
> >> 2.17.1
> >>
>
> Thanks,
> Ritesh



-- 
With best wishes
Dmitry

