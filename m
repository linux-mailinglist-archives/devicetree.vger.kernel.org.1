Return-Path: <devicetree+bounces-69195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE348CF147
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75265281916
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F02128834;
	Sat, 25 May 2024 20:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I0jFpuVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1810127E23
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668109; cv=none; b=KvKOE6QQAMjhZ9sMGW9AXiapsL+IY2EuunzYJm5ubULxv23Ur9HyLXThyHjUWiRUaXT/C3zFP5Sh9ueYBsPOTv0uMA2XiK+YpcBmI/q2uMoaGA4q2RRVE5aeqtAlQbT6qpsnQZOytVUZhvzDtk5OfrnJU00wH+3AI2arW4K8drA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668109; c=relaxed/simple;
	bh=a+2sJsXVsmEzRiG+2OlaEa+uVn+nhz5cWtvRMbWfStY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iBvBGTGPfJT4L7K1yxlVUpR0OFoS/XYmpI6pT0gNV/gL1bxi40ZYAS6lIDWBX3Ce5ws1x0rRF//MGgXtQvSvfRXUxFzY8KjmClAuLj+h4xxMnf60youaIEnX/GbIZzDXvYiqgpHeiTsqC5P87lGmVru0lwX2mP4WwhIfDdin7go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I0jFpuVB; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e73359b979so68440401fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668106; x=1717272906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=egWjRNm6b0cKfW6TfbtwfyF/4NhODfHU/rXiLN8YUss=;
        b=I0jFpuVBcRLu1egw011pJYlW/3rkNVNeMP9wOzlafSR1R5pj/G5c3JfSSB3WP/reta
         jx+v2ypOuV8qxGXhq0iLt4mYgrZc4nYYmozYYS9XoczkGpMxyHaWmddzDX2hu0uFZ1RX
         bbkZUvGpwTkE1LSIXVYvCFnbzTNTnFcMu5JhCdF33vpTQU2EicTQRtloMsb+pySlL5Dl
         KaZHbxZzrZEzk605vle0dV/cpf3BvulJQS7bqgwZLobPFzE3LBFcbM7GzInYc3gJHJpc
         /8/zUKorkFdIM6SqrmHrGwaqZp7+H+4PSIl6g0/9NQWfvbS5OaASvgN1IFuVePQzpTvK
         xPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668106; x=1717272906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=egWjRNm6b0cKfW6TfbtwfyF/4NhODfHU/rXiLN8YUss=;
        b=BQi19qrKcsqGUe+/YUz14ijEfXd4cGSOFJ55HqsRriFmJEn2iikSF7V48b/466jz5F
         vr/hkCukjZpatxHaCMoYZqjz5elNsFpghCsOyC8cQcOnmDy/WmxtiNcHa+xFkAGzRspD
         f2e6X+Vv3puIlwdEGSbzndgTayYOhpKcumZfBEWGSQYcsdVvIrfxu7nOKXgwnFolhBcA
         UeyN71aEcEfZIswdpMS7nAQ+O1fQuoQK3a5MMcLkYKp23KvYvvxXnoJEik+TNas2NgBc
         /MJrkUMGoAlSNIDjT5uLQNM/7f2bwCyChpHapntlmCxJNxyVgx2q7FBQj29cKqZYPWjO
         3Muw==
X-Forwarded-Encrypted: i=1; AJvYcCVmO6gxqlasHUK46hZLZEPiAttb/OwM1icrY9Vma8ti5/P3RhdPBYXN1OoPfTJU2TWDrHXFyVwYOljnik1yr5HgRvGlj3T1wmu7sQ==
X-Gm-Message-State: AOJu0YyOfZC0t14EAucpaenX9rkkaQ8dxKWROs+XUovUXin50pqpfEma
	tJY/zDbsL5uu6KT3WNYawSj6vcA7/xGg2jRFLLpSg+Uqkkvp4OHKQ3ki1YiFaVE=
X-Google-Smtp-Source: AGHT+IHiQh33yuCyFRiG6oGt+h+qN4Mxt2GwttIkrQpd6pTLi9+gx2U58NUig8jJLSxwAFcop03z6Q==
X-Received: by 2002:a2e:9b12:0:b0:2df:9c94:150e with SMTP id 38308e7fff4ca-2e95b0bcf56mr31356691fa.25.1716668105844;
        Sat, 25 May 2024 13:15:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdcd234sm8779761fa.99.2024.05.25.13.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:15:05 -0700 (PDT)
Date: Sat, 25 May 2024 23:15:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 06/10] arm64: dts: qcom: sc8180x-pmics: Add second
 PMC8180 GPIO
Message-ID: <rajxidory6cviwatbrkrwokm6pjep3bez3cb6goomzjqk5w3f6@3osk2nd6zl6x>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-6-60a904392438@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-6-60a904392438@quicinc.com>

On Sat, May 25, 2024 at 11:03:59AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X comes with two PMC8180 PMICs, with the GPIO block being used
> to control VBUS supply of the second USB multiport port.
> 
> Rename the GPIO controller in the first PMC8180 to match the schematics
> and define this second controller.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

