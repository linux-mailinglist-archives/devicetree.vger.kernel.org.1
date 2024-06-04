Return-Path: <devicetree+bounces-72495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6228FC028
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 01:47:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 206D11F24916
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 23:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9497F14D2A8;
	Tue,  4 Jun 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LJoUNHlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41FED535
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 23:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717544843; cv=none; b=ONBihStoYbQsmkivPmD8HzACcwqqj/R9Dfs3uzludMNToQHHPzfYmW27aNjkKEykFIzIydGrD4NpQnJEN1e7ODst5OIMSqWsPJf/25b3tmhz+s/FD+GaVTGrrWNY79hlv2BtYYkSypjbbHQ5QDM3v+BDA8ToVKsEVGAiwt8Xhd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717544843; c=relaxed/simple;
	bh=mmylbRfB4KEKXyGBeR6H9S03CC6T+tHFQPGAlkjagrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TrCmo2Xdm2s9VxireWaifJZdNxQjkp9EBndzQ2/U2+LNJptq5Zvxm9t0adQLakXvMgjHb1bTxjayXpJljOwE9tlwYKFpoeaB2hJT4alYtak5dxHuvp5+ieq3KOLLySF08ehS/XEqZMkUHYYO3QIrr7KfbFahd9eiIvSCv65NMsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LJoUNHlM; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52ba5868965so1420541e87.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 16:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717544840; x=1718149640; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rBt8eFQEo5ebAofL3QZI5AwFoi6fSHWEjf2SqXfLAIY=;
        b=LJoUNHlMmWgzBdALd6+b5i7UoZ7DhTNz55ERcKg6LAHG+wMG4Yi+xGRuufelbv2Lr7
         hXYaACNa17rhrOp32QuqwjyWUxVvCNYm/ogvCrrxDvV6z82kNMMsCw5lCLtMGs2Z1fjw
         DYfYm5+gpFZkcLqfBkBnuNIfz6zXDl6qXd+VRD45EXdmGEarlXXTcKpXVUX3NaIzauQR
         iLCUFEofZ+4g+hQC+3LiWdHp2gNZnApsGiGjAROvkqGVRtjKum/MVPJ7GggpnIJ8fsvI
         Scb+mNMNHG1Eld6+2VJ7VetHsO1B2A1sy8JR93AWdsZG0sMQ54Jy92hYJ8Ql52fgSIEc
         EtKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717544840; x=1718149640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBt8eFQEo5ebAofL3QZI5AwFoi6fSHWEjf2SqXfLAIY=;
        b=taNGtZp5SwQsXhOVvrK45VfHkTAqzZMq36x79XyUJ89Qj1bey3ovJfunuwhsCs4RO8
         4w2iH49DgGk3ExOI7xyGr0mwh2BH+0RJacfLYw6YuTvZblLmRxeuxQQD0TGXlgQL8LhD
         h3AQxsbHV3YgicvS2+CapV1KrNwUfvT5t5wm1r4HrJqFhOJdxYF9w+tg5BQqbgGKzFjE
         Y5DBJ0JBDYjoN8EKaTK1/bO10zg4WS2oQ5wr5edtlJ3smjQpItpF9sHqTyIO8qiRsSCz
         w6Op+4IU3G8yv2lnWFkt4zTRPsrIAWLP6qgTwp0iMdNF9duB1PeHw76JJtuGvzCTmEGP
         pMiA==
X-Forwarded-Encrypted: i=1; AJvYcCUjR6e/C435v9HCRg5ZF2/up5itOP8FhEbKOC7kFD6IQYxC63oaPXdk2FkcVywxztl0mNVnBx83NJT3JCH7v1G2SMFPwOohoumvmw==
X-Gm-Message-State: AOJu0Yx2+ryizpXOxSZe4DiAO+SlFMN396jI5A4utESeZJAKwkP7O1Iu
	I9+e7yeNrUIUZ3jg+qeq4qewqfOiILUEYFI95f/7yMelIRqQ51VOA4Bo8+hnHsk=
X-Google-Smtp-Source: AGHT+IHbuLGX10F/ysmCrzCCkUQnoJywch6uPTMMgJQLv8uC1wFTg2UN7uiqWbEABiv2i8OZph92fQ==
X-Received: by 2002:a05:6512:12ca:b0:52b:86cf:91b2 with SMTP id 2adb3069b0e04-52bab4f6fbbmr565864e87.46.1717544840076;
        Tue, 04 Jun 2024 16:47:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52baa95c304sm111154e87.276.2024.06.04.16.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 16:47:19 -0700 (PDT)
Date: Wed, 5 Jun 2024 02:47:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	patches@lists.linux.dev, cros-qcom-dts-watchers@chromium.org, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Pin-yen Lin <treapking@chromium.org>, 
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7180: quackingstick: Disable
 instead of delete usb_c1
Message-ID: <4ksgrgsmbkze3m3sv2ikajvkv5asehzzhuw3c45hob275alvfo@yctbxgiv5oe2>
References: <20240604214233.3551692-1-swboyd@chromium.org>
 <20240604214233.3551692-2-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604214233.3551692-2-swboyd@chromium.org>

On Tue, Jun 04, 2024 at 02:42:30PM -0700, Stephen Boyd wrote:
> It's simpler to reason about things if we disable nodes instead of
> deleting them. Disable the second usb type-c connector node on
> quackingstick instead of deleting it so that we can reason about ports
> more easily.
> 
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

