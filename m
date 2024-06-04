Return-Path: <devicetree+bounces-72339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BB48FB648
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D284288623
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D83143C74;
	Tue,  4 Jun 2024 14:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w8880XC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC914143C5A
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 14:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717512856; cv=none; b=MMIDUXyOxRjLceDfZBH61AA79gFQggmo+VsWywhP8dRLrYm0uq9yuk3UnIcm4OWOWVTlvrhvbGfdG0OmosXofG9eEwSxKyImxK8+jqmJOL7wIIUV1nfsW538qbNmvvyeZHXReDlU7j0u1hiLr/ZtY003LmNavlLaWZ56I/fRZ+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717512856; c=relaxed/simple;
	bh=sEmE3UdJ/UuB/biY98l9vAEVPuaiDDn8/MnJraD3AVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=awcukuyLKLhKQtBhiUy4rhdAhiyH3b037z4d2BJP7xFDQMvU0F+4awbyPruKLwFW4ahP+jYumGDxUueUSD7dk44OO46YQux8PQ+010V0i7dHs/0utKe78oQ1UIuwo9R3g6PQ2tHqlsR/I8nohT3+cemWhm/fedPkOmiuTOp8578=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w8880XC/; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52b8f5d811aso3754867e87.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 07:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717512853; x=1718117653; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3kFcZiFh6dPe0teLEcLMmB2DrjwR1Zno5n6tFH14Dc4=;
        b=w8880XC/yesXLlXphd7nYuAFx7lh/oTsHgGTqquGan33MAX5z1hu4cc4d97gLFPx/q
         fT7Iw+XnD2wEriBM3hjEqedE4x3m11+dnsrIIbVWrZ8nBh6cFyHksRzYBBKHKeTEIFt3
         TyxjYUiESnMZ0fiq2Tuk8LRvTR5mr8SO5NvcH1HoOjm/yk4RWMHTo1hpI5iNIOSRgoOb
         YQL/fy62MK19tUB+hEYZ0dZeeiwgB805LmBijb6U3G9pDohG4cFcEZXjuY3cjWZMNOAP
         Bby6EZjG5cB5Rdcuj4Ih/ErdRGBPGWDANA/6XwstwZ//bsUb0UWSvA3rsm/W/AAvBkCV
         NLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717512853; x=1718117653;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kFcZiFh6dPe0teLEcLMmB2DrjwR1Zno5n6tFH14Dc4=;
        b=sGJLM632+em43AtRZnZpiryji06hnKDZDIyw9durgle6DqvoA2KVs5PtSJGmYoq9yw
         iTIjofZbhV+nlN7bwfl+S2+EkFCB/olmOSy2MOD0f94wYjgbr7+1AufeaaubDojaJcOj
         x5TvMFXVvG2UbO0vSCJGr9rVPhZrQvkB3obILWrJVcmFAVW4PoeapAm6MEJF/BADqUL4
         KM+b8cUPu2SLf7o5rvtBpXv0JHgvmbIEnKwaVOjMnVl4HCr8fhZMqhVYAboKqS6gM0Xr
         elgAnEq9T/yHSvMtJlR6R2B/HlQ4cXnEa/uEu5ZIGyMFALlePqQUVWvwdD1Gl38CIT63
         9OaA==
X-Forwarded-Encrypted: i=1; AJvYcCUSbUgFqsKuRoLS+RrRt1JCU5ncQPkH/vR3yxjmQC997CyDNJcscdVtFvNGtfGhCMaY3XJESewWgVDILPGU8bh8RuzjlcVuJvyuLw==
X-Gm-Message-State: AOJu0Yy44AMxN/geho+Alt1nQX5P0Cpw62WpS9gg3zlUemgH/4byAp/v
	x8UjFq5uLsqrON0P67ExCHWGb+og5l4itG3uHY1JMo3VW2+ijh5DhhmMqUkUnmA=
X-Google-Smtp-Source: AGHT+IEMq1rr/ugARK9g3nwNNTXFstD3YYYsBSNyVfseCN8M1WXYslJ1wb22dmS230eDZttRhDkvZQ==
X-Received: by 2002:ac2:5288:0:b0:529:b734:ebc9 with SMTP id 2adb3069b0e04-52b89590ce9mr7000266e87.38.1717512852962;
        Tue, 04 Jun 2024 07:54:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b9cf956d8sm482251e87.61.2024.06.04.07.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 07:54:12 -0700 (PDT)
Date: Tue, 4 Jun 2024 17:54:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: msm8998: add HDMI GPIOs
Message-ID: <qrpksyuwapmijphajrf64ogl2lgc3gbgm6z27nnd2cetjxdddq@az2vfprdz4yu>
References: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
 <84a86082-f28d-4750-a4ab-1c534bc54b78@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84a86082-f28d-4750-a4ab-1c534bc54b78@freebox.fr>

On Tue, Jun 04, 2024 at 03:47:57PM +0200, Marc Gonzalez wrote:
> MSM8998 GPIO pin controller reference design defines:
> 
> - CEC: pin 31
> - DDC: pin 32,33
> - HPD: pin 34
> 
> Downstream vendor code for reference:
> 
> https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-pinctrl.dtsi#L2324-2400
> 
> mdss_hdmi_{cec,ddc,hpd}_{active,suspend}
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

