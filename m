Return-Path: <devicetree+bounces-55153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A786089457D
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBAB61C21820
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A0253390;
	Mon,  1 Apr 2024 19:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+paTXMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B912942056
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 19:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711999739; cv=none; b=m5ggtjmm/3YRpqPRNIK6owvCVzMTWTwhTRAtdHEfjMR7qmtSleG6M0/KrRc2TDcEV8A4pOpbnTe6sZxB6s0EPKDIozZiLEG+JBTZehyPCQoysLydlRXEau8zRgvW6BFKY371dVzSUqnBTB7GDb33jmU06hM+wgvebcPnTzoc/XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711999739; c=relaxed/simple;
	bh=mnmY0cBO+zlO5HW4ZtU2S+tRM/eO4Elw33SMH/UnSAg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W2Pmikf7u4MXCpj19f/E2z5hAdetTtBvMFdbgApye3yAfWLOdtDUCra32jZiUv3pBMbid1o/jm7Sbe8mupUOZL3Luak02zooywrI/E7lK4ZAIvj8yL121pnW+SCIucBDazRsZoAEBTmfNHAc5v+Rpi+JBvNm7d2UEfkLDgOGw1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+paTXMS; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-61428e80f0cso21226787b3.2
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 12:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711999736; x=1712604536; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xv+8f59G1ydE+wI15KfA8QF9QXVEjYWWFV8IUCQnbFc=;
        b=K+paTXMSL6rueuwKqVLstU4DsV51fa86RiCR8HuftlZwP4vSGrq5980FQt6nZaISMN
         LY+IXFlAZVkPxOfvDlSg9/KrmAjqzOpDS8PNN06hFfnb3Wgi36T8XdPWnLZFLxXCsivS
         TBZ5RTKw34hhWIsB+gpP8C8KI1tGEEySmBBmkjM6tlWdgcmJC+5t4rZO/bnCatYKJOUx
         fSmjfk5exOhJSPxz+Kq/+F40fGHIw7pp2x4NSuOg10c5wyyx638up/TzqheJUi40MArq
         fSPMBVownDhOwnm/KQcxJarOqOa0ttyDdP5PSPH/FjFJXE6e6WAGNfXYmW7R2r+Xt9zv
         Sdig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711999736; x=1712604536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xv+8f59G1ydE+wI15KfA8QF9QXVEjYWWFV8IUCQnbFc=;
        b=pFSNozAwUhZiHu7zjlQU9rvQAohHtajxKTeUuZ0Y20wfExjJwYdehek9OrLobILBFt
         U8XHY2CM6qQg5bsL06zNvrPxUAqLYy89iCJ+oYnRFMBf0rwVpzaac7e5gpD77ZNLLLfn
         8txguWZjFl4ydK7xAzg6gnasobDUh78XMhbIlE4an0Rfh+tPAH4W3Y0x9kb1KpS0wEZB
         /+XJGWct4hz8O+/NlVzTL4AiCQanXc8c9U+qAsIO74QAdDtpgif+/TfxtL13zai1nhTw
         srEmexckVa19Uo6dWY3QNtXKWx3d9mOhH/4B0tU/pwKVX7bsrTXcHpvFRBsPiL+dJSd9
         xIow==
X-Forwarded-Encrypted: i=1; AJvYcCVrvD9TtdKCcGIOLS+GFlgMjcsYnQhRurdasRiRVrd4iCzOn8eY8gnLf+WvGBCLtLgSvVmG9NJq+GoGiwhbQYG9MBbInPEBtOCjGA==
X-Gm-Message-State: AOJu0YyTI0wFSHhEHEWoSSYpN2nXJyBIK2aCf2CKFmHRuoUOKQnr+kw4
	907UQLdVjXtlZwf1P86xpemTdz355HOGQpWMr1HJjSmgUNB449PzSfPJ1WR0lhGBmuvfszNKJTR
	f+qcpenLebEqaD5qppxEaSarkxkrEITl7m9ti9A==
X-Google-Smtp-Source: AGHT+IHWm5qMWsxo63k0eY6EYUiYPYuVMGXukv5t8HOOBs5noEUjCJ1wrRq1JKnYeS/rT1vhe03lP/9VxfD5xrb3lMs=
X-Received: by 2002:a25:8a07:0:b0:dd1:3cc1:5352 with SMTP id
 g7-20020a258a07000000b00dd13cc15352mr7406533ybl.15.1711999735796; Mon, 01 Apr
 2024 12:28:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401182240.55282-1-danila@jiaxyga.com> <20240401182240.55282-3-danila@jiaxyga.com>
In-Reply-To: <20240401182240.55282-3-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 1 Apr 2024 22:28:44 +0300
Message-ID: <CAA8EJprM596sjqSt8DSqM5yn2s6uN98o1SixVaMnFg6mpfVhZw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, 
	manivannan.sadhasivam@linaro.org, davidwronek@gmail.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Apr 2024 at 21:23, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> QMP PHY used in SC7180 requires 3 clocks:
>
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
>
> While at it, let's move 'clocks' property before 'clock-names' to match
> the style used commonly.
>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--
With best wishes
Dmitry

