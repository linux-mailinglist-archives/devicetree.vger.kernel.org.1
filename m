Return-Path: <devicetree+bounces-49569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3C487707F
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 11:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66E9F1F21635
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3292C853;
	Sat,  9 Mar 2024 10:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T+stfkch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8672C692
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 10:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709980863; cv=none; b=kZXos/hptHR8lFwM/UDa8Z1uZun/kinDxH4t+QmraNOlhkNuwr6DL11dhK4J2s7dTTwWdERg+dxI9/TaPsWiTFWiVnGMG+wm+VDSpYur4yiKI59iA8bnEeCdA1/6M61LF6NGVgQ9VfW/OExMnf+hcdyPgkM6LQ7RhU9xA0o5g4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709980863; c=relaxed/simple;
	bh=Dh9V2PfB348Arae8187yykw+A7d4pAIxQgkMlEODmIY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aM2ToreXpFSdCBJs/OSLSKKInMrI/XzLfNaAI7yYdxipD4ZgjJQDl8X1z9DgWxWgYVL33JHVc/14EEPWnRchAWVUgDRzH5XneLYNa0ueaBdhUYJwzTApHMfLeNLlXVaDLpSEU4qkhfVnsksLJ8u/T9Ww8pd25se3Kkhb4iy0WCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T+stfkch; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so1581084276.1
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 02:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709980861; x=1710585661; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/zwcDfLfy6H/xwTNg7xVsc+HCBPAWPPDyK8ncs4w+gs=;
        b=T+stfkchbw3OzdhVTmml7wBSaHenkNjauK1L1qMQKhTAvvGdhPD7hBCiyo5MdNF/pE
         10bEQswQKQ+p1NQbdguDlUAOYKU19ywyp5araFn/nZJLZoYe7teiKXkl/AatHLWzAdjr
         kbTwfhptcVhnmySU3No7yrH2gAb1hsaEEuqSYUd4CVTukpXM4CIUkoCrMpkxVVAVdrGY
         xUDEt6VXUPJOXM+fot8W3bHdCAZ4gjUhzIFBI/rkTy+puCfc46n5qIk32BB07ePWmvs9
         uzWYwUH0rzHUVO3EdPGceDh9Za/BqBv58TAr4ZUzxMgO+D6JvXp2iqVUFGtSpMu6NGB4
         JtGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709980861; x=1710585661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/zwcDfLfy6H/xwTNg7xVsc+HCBPAWPPDyK8ncs4w+gs=;
        b=T2T+2kSy7Dlpz1Qke+Fcs7QzykMw2EkyRaTj9bRzLvbH8audWAcrwbk90COiAq+Gu6
         8mUdB9AlWMCcyfNX1zM8KTk9vHDwIRtuhENWjzeYSGzZJGvlkGaWPZtjEyV9I1yIoDHK
         L4U6VMvTPmXUi1k/9MLzL+vXnAxf12oUR1381/+PvDtMAW2+wa0g6TZNm/8ETCZEs+rw
         pjpyKsXrXRYASrv880RN8ntyTa/LUef7txhmmK5gzF4ptMB35TrYA7nulQ+p7stOK6aR
         ggvTlkyqqKQRexF89o/a/xMxdZ8zadyRx96rsNMn/cfulZpZvo3ocE9pSz+RjKAAWEz1
         t1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWtayXmVFR9TbPirpLQTU1msXbFrm/JgDpvFUK9JIA1FS8TXAS7vSFQfg9PlkA0u/llUaXjy1Ce1VhB94AK7HCxChbAxJB+ABOL8g==
X-Gm-Message-State: AOJu0Yx6R8kr/7mM1zYC6tkswW7LlZW5jst7+RbXiim4bkZI68yhsfj8
	mFli3ktU+UeIJTz3+/urN3ICV5QgQzrqqodHO5lzZJTRMa8lhp4kfWZNPT1USIJWhjOsB8tLJs6
	+tKBsQL906hKfY1T65j+YSAl7M73AtgyX8Vwelw==
X-Google-Smtp-Source: AGHT+IHwQwkSLfesKtrPrMGKJ4Q2PnQLBph1lGKkzbnH0SpIFTbRZI4HlaMD+5FNweFu/bH2N/hGy0XTcTcPw+znj1M=
X-Received: by 2002:a25:b325:0:b0:dcf:f535:dad6 with SMTP id
 l37-20020a25b325000000b00dcff535dad6mr667006ybj.56.1709980861366; Sat, 09 Mar
 2024 02:41:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240308-topic-rb1_lmh-v1-0-50c60ffe1130@linaro.org> <20240308-topic-rb1_lmh-v1-2-50c60ffe1130@linaro.org>
In-Reply-To: <20240308-topic-rb1_lmh-v1-2-50c60ffe1130@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 9 Mar 2024 12:40:50 +0200
Message-ID: <CAA8EJpq9bOkv9Ha5wjOjHGdPT7AqTZWnA2SpLNGB99YXP2OmQw@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: qcom: lmh: Check for SCM avaiability at probe
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, Amit Kucheria <amitk@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 9 Mar 2024 at 00:08, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Up until now, the necessary scm availability check has not been
> performed, leading to possible null pointer dereferences (which did
> happen for me on RB1).
>
> Fix that.
>
> Fixes: 53bca371cdf7 ("thermal/drivers/qcom: Add support for LMh driver")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/thermal/qcom/lmh.c | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

