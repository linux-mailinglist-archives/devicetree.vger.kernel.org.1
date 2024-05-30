Return-Path: <devicetree+bounces-70939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC808D5073
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 19:05:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83A49B21BE4
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 17:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC4F7405F7;
	Thu, 30 May 2024 17:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PH7rV5EQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD723FB94
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 17:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088699; cv=none; b=G6v+LNJbiqkAE0WEm3wI04xbP4QELpKVsRHM8GdmEePH2JUaLSpkmqe2l8PpHG2QRAnkLr305ZgvyouC2tq/ALjtEZNbr9KL+4XJDOFxUD+k4qz39STKUkFLT41qSB/7qOuwIWIy13UXIzosZG3a8nufSZ3krRZhIArcqcc1gmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088699; c=relaxed/simple;
	bh=DAtbp+Udo51/ggghY8Ta/nQKZ1Qn63T/N+XvPyQlNIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vld4/vcg7KHeQG1fgu8UQk9zEx+RAo6Q4AUhQ0XMp6Q1N72O3lDaBxl1iCMy/3IHccr9PMQ9H9vuoWsMiWF1xd93VCXuWbwIgcMMpC/eZdnDN7I5ut/FRJoYbB1knaLFvVh8vJ+gDZeo+0qriTlwdpirKgQrtwnhKeU7O/dnrp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PH7rV5EQ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52a54d664e3so293069e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 10:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717088696; x=1717693496; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FqM5oBlvWmtQCy/vmQxQErg1+TLSJYV7HsRivxfdSao=;
        b=PH7rV5EQX9zjEQIF0t16yyaSQ+rBaT+CWhdOjroUum1wApUpvqRIsO39B10BSNoeKy
         Zcebm/rE0VtbuHy/FYxnrsUSXUbRsqihu0N8z1h1II4TByeUhLNdffYd+syZ4KJpVds7
         pd4cM7tg1kDou0alZfwcmI5UgA31aHvmqR/XUmADZ6X9Q0ZYsStLbU3470Uu3kRpsN9O
         BlKW9cm6LZpiyrKOJLEt4K2xjY4C/sLFDxbNGHWjo17V5VVh8NH2QU0JYTgni7CSrFGg
         9GOE/uSdY6LzQJKO1gVuroc7Ar2pQvq5z+8AlK9FbvMyuyAyNDrCjlUr/hWXhbFmtYIZ
         KXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717088696; x=1717693496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FqM5oBlvWmtQCy/vmQxQErg1+TLSJYV7HsRivxfdSao=;
        b=xEtG4zS0wZVqQnUH0s0rgqJBS9WRwCrnhsQIUSr6tgcj8x0NaUNJLyS/HQg6S8eyWU
         UG36/wYHoREfNpk+lLx8wlgIG3huegUX0fk2MnXDvP2ZYrMejIJbTzvYErYqT5K1eeYP
         1lmlsg+aJUTBXI2S1nL82OPk0HBBUrzHhbBscUAq+JQzSDkBNYPjGtEWLRezr5QhTJqd
         lq+ZJV+b9SY6L9K3Um19NGDfynoYgP9QL04vz1q1sNT4U739NZ0+75N4wv8iHujG96S4
         ngRGHr6H2bA/yUNoAIdvzB9ZtpLBXgLxYZZqIThtqVk5WHbyfQOgMoWZqUKy6XK2NPuQ
         uetw==
X-Forwarded-Encrypted: i=1; AJvYcCWCY+lfPlx2gKI2i+FmCWGD0MVYRSaZ9nHg88lB6kZZQ8Ft6WRRpkfa75OtxZT+pHdPr0riNMo1vMsdP8BXcdLpF/Md2uqbK+IlEg==
X-Gm-Message-State: AOJu0YwP9x95vgFKTMCX6NrhsY2hyiIqR4mW7UIDC1IDBk1+c1AOEKeB
	N0mSP0gAWosDXI25xfhABsgWgog3AFV7hMxgpnD3iaEiS62/h3w95bhNMCtnL/A=
X-Google-Smtp-Source: AGHT+IE1ehckPaW3Xm4BfgQOz2B6cKjcXdpFlrcjgJ5MmxIm0U32yV97sJl9mZHeHxviYNkiJCitEQ==
X-Received: by 2002:ac2:457b:0:b0:51b:5c40:da74 with SMTP id 2adb3069b0e04-52b7d418ed1mr1803340e87.1.1717088696524;
        Thu, 30 May 2024 10:04:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3465asm19038e87.44.2024.05.30.10.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 10:04:55 -0700 (PDT)
Date: Thu, 30 May 2024 20:04:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Fix USB PHYs
 regulators
Message-ID: <qn64iunks32jlaevjdr5lsdpishsk7cmygdodpekdkgwtwxt24@6oy4kfmuqgo7>
References: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-0-6eb72a546227@linaro.org>
 <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-1-6eb72a546227@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-1-6eb72a546227@linaro.org>

On Thu, May 30, 2024 at 07:35:45PM +0300, Abel Vesa wrote:
> The 1.2v HS PHY shared regulator is actually LDO2 from PM8550ve id J.
> Also add the missing supplies to QMP PHYs.
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

