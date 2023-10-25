Return-Path: <devicetree+bounces-11958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D1A7D72C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 007BAB21003
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5A730FA2;
	Wed, 25 Oct 2023 17:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N2ZfGEhk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0B818B08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:59:50 +0000 (UTC)
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1079D183
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:59:49 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3b2b1ae4c21so4126852b6e.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698256788; x=1698861588; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+X2BcGs+yr5ozuWWWHgMfFUYNfIzqQVUuDmFrK+H+k8=;
        b=N2ZfGEhkHwAxCnUSg5U6gOYoKiM9IYBJZgUvpug8JRt+N8fGqcWVKLgMRLHW1yZGkm
         yLrgmTZMH6CGru7H/nRWIdutHNUGrepmLtX8EF4dTL5kEsN6eJcFZ+uBwSYtCe15onYA
         cMq4GkT48ihaJof3WB9Mk+Wo4b37mmHzBWNMA2u+kk9msGo+BJq9UiEvicm7S+hY3D1r
         D1aav9omocOVPbNopaui2wyxPP1bkFCLYlBND80uGGuvQXpWsy6Fottc7aQbMJAdr2TS
         oReZrVl5+JKkXFdwotYeFI7nrbQNq9/UmCAxIwUMBV+g9wnKgLsZkV2qUev51+NRlWHd
         yFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698256788; x=1698861588;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+X2BcGs+yr5ozuWWWHgMfFUYNfIzqQVUuDmFrK+H+k8=;
        b=NxtdA10rVlXjiVBrn1mFclnnrF6yVQ4BL0ExUyYKBzb+xACQbl1XPeim7HSWPt4g4i
         ++AHby3Vi+41yG1/NmfecTYwYLCIsimmvsw4C/eAKPvmHsz5OH+fC766fQkOJ2SdyEzO
         nXM9ww5elkC8+BOu7V2RZpweZyonctwnhOnzHCkAKSzp4LK113EFmw6SLp7b2BMh0ynO
         C2YOlG6hHwEKa5HPes+zOo6dIdqZxCajpFWzAgxbR8W2i1r7JtqsQJFR5S+C9vFf/oP0
         0WHDX0pY+oLSPlvokXzW10OHd/5CKEBhHlW+e/yFlcvBbkjaG5+Y13O4bkvOWuAabmGe
         Ob5w==
X-Gm-Message-State: AOJu0YyONWhuZKFOX07vA216DTxuvScTuTU5akyNdPnbiLj06zVJVKIS
	+OUZAAhecEnmJfSzQAf2++dkP1KWLN4sYCMK5qo8GA==
X-Google-Smtp-Source: AGHT+IHt0K3a3YxmMMAXLMGE/SLHxoNsrcnDOTH2dLfGGsktR/apcQTUfBYmn31LK8udeC2DVR6+WlimdKhWd044Rt0=
X-Received: by 2002:a54:4090:0:b0:3a3:ed41:5ab with SMTP id
 i16-20020a544090000000b003a3ed4105abmr16867919oii.9.1698256788382; Wed, 25
 Oct 2023 10:59:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1698253601-11957-1-git-send-email-quic_mojha@quicinc.com> <1698253601-11957-3-git-send-email-quic_mojha@quicinc.com>
In-Reply-To: <1698253601-11957-3-git-send-email-quic_mojha@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 20:59:37 +0300
Message-ID: <CAA8EJpoYTXwdrwEUnRLtpeFY=xC_wYdE_pW1W4kM=JkRmR=mNQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8350: Add TCSR halt register space
To: Mukesh Ojha <quic_mojha@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 20:07, Mukesh Ojha <quic_mojha@quicinc.com> wrote:
>
> Enable download mode for sm8350 which can help collect
> ramdump for this SoC.
>
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
> Changes in v2:
>  - Improved commit text.
>
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

