Return-Path: <devicetree+bounces-250571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BACEA13A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 16:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32ECB303D33E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B056831DD98;
	Tue, 30 Dec 2025 15:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QoGp8zVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809661DF736
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767108863; cv=none; b=MV9fjDIlKE/+oj3j/BO1z53us/zAJszQuXjlSnTSLDwuZi7jjzyuzJa8HPe/fD4BxsDY4VuQyN/pduckxKoz3tOPjIE7RBaQiqga4ZnaXkob3Rt7kVIxDFTB+L4S8bST9+hxTYbLO2zrwmnRa2iCngi9cEFnSgFSXtuPyMROMb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767108863; c=relaxed/simple;
	bh=dZSodkbE5/6Z4K+bFidaBOlhacrE2QQfWb9OjIApyZU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QPWl2evoEMRwWUWzanr8YdbiXNMy44Fz0EpyQiCyNZZtXscNh4WVeZpD7NgU0TZuEDf9TDlrGu5s8VoE/rgB1mkNhSkpM1WSzuut1SIRqJVyH4ZmQtykPsgBAe18xMnT3UVCvTF3K2Yrc2egzT0h6ww0oBFK5aqOK7n9bsuHxZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QoGp8zVo; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-37a3340391cso79686051fa.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767108859; x=1767713659; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AnmwhxY415JhuBFjf99xT9gSeFG1Nkzo5OtJjVGKyn0=;
        b=QoGp8zVojiySF5FfVqc8D/7SuWJshFPUYVYS7FPDUtvdQcfF+NyxZTkaPaPwE+FjNV
         QGgNALy+J5vIzkt9mKm3orI4n0NQ3AjXzl4NsqurKtoRvATqc1S4uVMKhfGf2JAhgP/e
         LAlQn7RMxO2EUSHpqwlAmqlss69lSNXVY0RIR2eIcJ5mQN/Cc1mg1Qcz66q6oFlsxeKX
         5Uda+BPHfxAVbbLlJRL5uHPYvNbntTgCcFXQOf397oFh/jUPWi3/kzpYGeOI9oSBOQV2
         bWGjpKhEwNYysYJkFsv8YrbYUsmKxtwFIkfmUMkktWdvJ5HJbp1vDhVskeCtUoCcdnXw
         39lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767108859; x=1767713659;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AnmwhxY415JhuBFjf99xT9gSeFG1Nkzo5OtJjVGKyn0=;
        b=c0CKfCo7S7LqYudzCFahJeHdDZqrGWi+tQZbilG+HY/PMgkv29J+uiK0kAG09NipwS
         sOlua81AvKRhNeQz25GHBdgvxi0Gi0jluVLOBs31aNvc8XI1dvrbuDl89ms4Cb+xUN9l
         PcySjmLYEfHOEcYh7HWzV6nJRTqZTA3yt8rRJuWDiZWeSRkIYu6V17NpSG5O0M0ntoM/
         hbusDAOrm/0KyYHFCt9NT3iVLYKal+oTb/fNa0jr04GqxvQM/87OJC8qdekxDEEPDv0y
         OFVktiLJHhYgtLObJXtPGkKmd5ZnxNuD5TX0k5cWD8nPDdZaYE4AEGtZEjnfx+qSaPaA
         RtTw==
X-Forwarded-Encrypted: i=1; AJvYcCWC8yIQnPxXhLhBTQaaqXaIGuYgyvAHzaQo8gC68nD5fuqoFmpJ5804igF/QPHl5tJFJ2wQiJWjclKM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx48CDEZFAMAHtjjgD3wQLcPSHTT7HmlBpNy5gazIgEaWx2k6L
	R/IaxDy/GYd+LMLZ4q24wUpytItDCcmS8MqPCPTNiBhOd8L3mfjeU9ZpfwIl44btB0lHVb3q9Rg
	2aC0YUvONl9NDn/BghDtsb22zH4gLA2LVu2Xregu4/cnemHd40Kuf
X-Gm-Gg: AY/fxX5K/vVedscxvmIH71G1wxNC5lLv7FPmMyGJ94P9/dwu3Me+DjnDBVnuC9AGioV
	jmev6hbSFuhJn7CskdYWAiC2SYtuFT/Hv3Sr+/yOBgr3FqSz9RhzJ/aozyFn/F4aiZ6akkiHQfd
	oHTS/iO2v+6tVbCSHQMpwbLwv43VWhcUdZsvgKK6idiBUSSIdzoUuB6w94x9fYCgnX5jTIeqZ7M
	thqsdVOJdAxHpsdSTmi7Cpa95bBs2xvC22PnMjIxME7Y49K1/7lxrYx875sBK2IjGqKJaYn
X-Google-Smtp-Source: AGHT+IEW5MCCMztJEcOlaEFCIvi3KU9NMQMaqTxBXuzKZPmVo1f1oxiQEdMGa9fcYX4NA2q8jUD2x8uH2/ni91ZM6F4=
X-Received: by 2002:a2e:bc0f:0:b0:37c:c84a:99b9 with SMTP id
 38308e7fff4ca-38121605971mr101636721fa.24.1767108859386; Tue, 30 Dec 2025
 07:34:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251225181615.1402052-1-vz@mleia.com>
In-Reply-To: <20251225181615.1402052-1-vz@mleia.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Dec 2025 16:33:43 +0100
X-Gm-Features: AQt7F2oBY1dHJwylW5gRmwSRBH1bYF8wF2Tb2mX6ur1EQF0YPxufnczOkLVAsew
Message-ID: <CAPDyKFq7O1mUxpygFzy2g=MqBUxb2mXyfDS0CCUoR2CObs_2sA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: arm,pl18x: Do not use plural form of a
 proper noun PrimeCell
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Dec 2025 at 19:16, Vladimir Zapolskiy <vz@mleia.com> wrote:
>
> As a proper noun PrimeCell is a single entity and it can not have a plural
> form, fix the typo.
>
> Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/arm,pl18x.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> index 8f62e2c7fa64..066f21deb3e8 100644
> --- a/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arm,pl18x.yaml
> @@ -11,7 +11,7 @@ maintainers:
>    - Ulf Hansson <ulf.hansson@linaro.org>
>
>  description:
> -  The ARM PrimeCells MMCI PL180 and PL181 provides an interface for
> +  The ARM PrimeCell MMCI PL180 and PL181 provides an interface for
>    reading and writing to MultiMedia and SD cards alike. Over the years
>    vendors have use the VHDL code from ARM to create derivative MMC/SD/SDIO
>    host controllers with very similar characteristics.
> --
> 2.43.0
>

