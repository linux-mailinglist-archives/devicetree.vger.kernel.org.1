Return-Path: <devicetree+bounces-35062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119283C380
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD0EC291B63
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3444F61E;
	Thu, 25 Jan 2024 13:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OV4eAlWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2414F8AC
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706188830; cv=none; b=UuiT5S2wv+XrSr7F7C+Z7c1gYDQiJX71T4eq8slTJI08dhOg6I27Z2LFb8gor0Mc8q06vj/NB7DePBitPTJkjjOQ9ZQsIwg1p7eek5zdlFTyWTcEYEAD1WGGUT0FVv+HZ8UumYD2+NL/MAuCBZe6lhwbS5CbQM6HpzZxOvrmcwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706188830; c=relaxed/simple;
	bh=2CXZJyrp6iFAL52EdLsPOSjvjlG8Sc9qL+jXy8nmaq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PyYtjFE8GPOuLAY91mXl/epjVLolK0bWU2z4LeBixG2OraKIh9x7t00JZjTb75if1K2WcFnXA3Q5GOUxJZx74fvRYEie8qdDJ+oR2lER3C0mJ8Kt4nK4zibRI5YLrgMkK3LPgsHAG8ZoMhirSH4cabfnLlGfQFmGrfvxIDZM1qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OV4eAlWQ; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5ff7dd8d7ceso59715937b3.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706188828; x=1706793628; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/tDYjrG3ipq52LMTw0BWl8QpdFX3vh/NkpzYZn5kvI8=;
        b=OV4eAlWQtnnpl+44dPi7J6QmE0pbkfGrn7za1dLXjbgkcDzEu4iLouie/1ThplPUK9
         c+suiAtBjb/GgjUR04CdzfT/Ao1hjAzEwPRHa4qNUFKDxi87FH5J/t6hMnJAbn5O7Tns
         cAbqLnAZg0SXujqWlRS/XsuAiB3HtdRQjxV7FDsDcy7oHrtbM93EFnBDK01bWcnsAtv8
         idJLEJ6Gjctl4wVM8Mv0V2/2uDTHIIlqfjzqCin6NCfq2Nf09TAH2/XHIUEf552NryN9
         /oyBWWNfl78+7h983jB1+WmNM+TV4eIdfJlVdVVFFAPlHvGHN0SOhvgETLPog0Scz2Is
         s/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706188828; x=1706793628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/tDYjrG3ipq52LMTw0BWl8QpdFX3vh/NkpzYZn5kvI8=;
        b=gGmfr02I0fx9PWQ+XFz+QH5E4f0ifAhOXHpD5bGRNA1xk7BmKFm/DRMoXhHK868XVl
         EjS4AHmehoZqtBwWolTElehmY1epkUIR5dqWTDPHG+tJzvrCzCMgPTzwwH9iV9X4NQUk
         C849D4zsMEYPThg71B8OeSi2Twa3I8Q5cn78FRi2TEYRa2Mpvnsh7zRElb9/dcQI75BV
         QuiX7PsdcgoQ7rJYa2Q0a0y5A0yLisWxxV2ftVWfNCnSGOzyYeNPd6/dzFCTm0s+f+08
         KawAICSD9BdfCpwE+VJu1NJ1/sfHCxW1RmfRA1jdEuEXRiNYjhth9UjP44m3q4K3q+te
         9r9w==
X-Gm-Message-State: AOJu0Yz/e7AKfCkpx9k8r6UKVUI9kiGfOLeMGb9VrtfwcMWVVU4lK3GN
	Ajt5vKCxSLtdPmQlZ8jtCuKPUCN1L0aLZ7jOx/SIT4M1IxsJJy4af/IYTgywoyU1z91KnbNd8se
	lUXJhBFI3MVPk9mWZ+FrIxb6dZjK1T++Q2ki2oi/BpqEcsg+j1Wc=
X-Google-Smtp-Source: AGHT+IE/kKFnSV92jQGZrCw/siQiblRmVM3ZbROR/NC3wHXCuWovvQn3XOanm79yGEAm93sv5KHZUGzXEC/l5zgL8n4=
X-Received: by 2002:a81:b65b:0:b0:5ff:7dd8:2b4f with SMTP id
 h27-20020a81b65b000000b005ff7dd82b4fmr592216ywk.94.1706188828076; Thu, 25 Jan
 2024 05:20:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org> <20240125130626.390850-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240125130626.390850-3-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Jan 2024 15:20:17 +0200
Message-ID: <CAA8EJpqazduHm1DYwGDLjDupRgLXpP+oJXfpwpVfSnBBeTC+5Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sm8350: describe all PCI MSI interrupts
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Jan 2024 at 15:07, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Each group of MSI interrupts is mapped to the separate host interrupt.
> Describe each of interrupts in the device tree for PCIe hosts.  Not
> tested on hardware.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

