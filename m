Return-Path: <devicetree+bounces-146377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC9A34B57
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78FD33A853A
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D97153828;
	Thu, 13 Feb 2025 17:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Si/Ctduw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B248158868
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 17:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739466043; cv=none; b=hYdDrGLWB1+LPa+BvWMfCUAEvnUJVW0k5V1z1+mwf1XmDaYPFZsBntT+GwfVpkbT6Gnc/JFmaMrK7oxKistaeXkSKdYx7vQ3QcjUZThNhFY1FMOZ1IiFNl+y/+yDpb5boh3CO95LCf097BTwe/EsNDYuHGroK5nJuZW44jxQ6K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739466043; c=relaxed/simple;
	bh=zmrS0xInz7ZPMUNPbz50a5drJQVT6ULUv+bzAYPXgk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ujcxs5Budq7oT9w7Ke+1WOYEiTcOSsLP8cREUCUF8dPY/rEhqTUeXhAObxxMSuWqrH9ufVe4hzSQX1V0UMwyb1nugLPN+S3Cc5CBQskyIeXMp4C+5JfHiMEFI252JgeNQC2H7u7viWDpN2PbjQyJlDWVaYciRpEZQp/8KVC+kOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Si/Ctduw; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-308e92c3779so23284951fa.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 09:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739466040; x=1740070840; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8UZNM2cfJDvWcZt1Er+PnBNRIi/F3g3nkljefPZmTuQ=;
        b=Si/CtduwsftKKkyi4Tc7D+f13nEYGhj+mj8tcD4oK/vbczAm2L9R/AzIFuhDr3VywJ
         9dNO4vyekO1OfgEvvuiqEKbEQMsYx8/RlcKUZVOdXZBliX0FibDO1F7C/59LyaKlcCwS
         XNJl0Uevqzb6zOgmiiC6cZevOc1oiT5zLQyDbWK0afHgrAyBPhGoOzIXMl5jQijuIrsy
         +7Hw3pZURMqqAzcT3K8aajjZM4ewnjWhWrTGTNU+bb0acOQGW87wiCHf0VU6AViyfbMH
         1GFQu/vibqQmhruem1WxaVYagX1U5xAVawytRt7N2d3KjgcarHWDgLiYYyDqZc/DjLZO
         3wag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739466040; x=1740070840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8UZNM2cfJDvWcZt1Er+PnBNRIi/F3g3nkljefPZmTuQ=;
        b=ch7ywqSUYJ/3tQjEDVMy3ruD1snMSES9J9S17Qh+BZUIMjtdf9FfQzoy3JFb9PEqLi
         sR4Dt2X1FVSjkgr+3WD9caoeuHQ03gYHWl7PCKIHiwI981nLWZIN97g9ZvumxaqyvCM3
         4aNE6JAxGO5TezL356DbshIu3EqdNfPe0uQCjppPFv/lFScdtcPDA0hmqXxJlTnJDTcw
         OSmIrrJUYLk4HxfWIx50hsyDnGh2VLkPNUZDCvyQuKKq+UbbFlCeLAzGbJY2H080kCIW
         VKdaM7EfW9G/EkijdM7RN64aq8us8YgBsOIWlV5VHppr0k8F3P7meYB1krofuokpu6vo
         sO2A==
X-Forwarded-Encrypted: i=1; AJvYcCX/q/2M2hjeP089Wwkhqd2ZZ748cpnNWMPGkPYPPgwL+fBejuh3MHIASF/bz7B0iK9oZmZ5CC54uogN@vger.kernel.org
X-Gm-Message-State: AOJu0YzD6P2mesru8xn5X7J7gZ4mTmVt/RZEJmgoBUDygcps6fYLFOlB
	xVsFuEovP3FwqFAVzjQVXcPEBlqtU2d4dWDRjnX7w6C6rnJzJFJqnY8BPLVr8w4=
X-Gm-Gg: ASbGncvsoZfTaBB6lgrBkBiefaWMW5fN7r43be/VfKKKAuSJ5DHcTb2r1n+fA/k/TwX
	N8OxEP/fwRBbUTuLpMtkJoBWEppbxvs1R7Gz0dVBhemhgk6DKc5/jlT6lGKszZjnI9tuWEDb+JN
	dNpR19J6wRGnK/czDte5ak93yfcZGHGFstSy+6JTv5I+sTyKaB8ErLcxRqdwTB3FmUfz3M8xySV
	HmBlrFDtVQbwvtNu5QVxc1ha1p6SDIUkaqTEppCZtYBWf8ObC04B+uKIvdqtaLL3WHyElgysXTy
	7+R512u5S4T7b0IJz5GTl/9U8tdbGeKZMHkYRKKuXt6Se/bO+Vdb6zvjscJsmo3zorE3hPw=
X-Google-Smtp-Source: AGHT+IFxfLzjVADe+NQ9hyecFQjlri4ibXGiH0NU1miK6ClkLcEickWMwRLitIzMvkrGViP4aYFupQ==
X-Received: by 2002:a2e:8887:0:b0:300:17a3:7af9 with SMTP id 38308e7fff4ca-3090f3bee24mr11613931fa.19.1739466039832;
        Thu, 13 Feb 2025 09:00:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3091029b835sm2457111fa.100.2025.02.13.09.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 09:00:38 -0800 (PST)
Date: Thu, 13 Feb 2025 19:00:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: sm8650: add missing cpu-cfg
 interconnect path in the mdss node
Message-ID: <7mojw3jf5skm4esa3xquthkpwez52u5fnbvyqj7g7hdjgsz5dz@ewfsb36sa7tx>
References: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
 <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-4-3fa0bc42dd38@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-4-3fa0bc42dd38@linaro.org>

On Thu, Feb 13, 2025 at 05:27:59PM +0100, Neil Armstrong wrote:
> The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
> add the missing cpu-cfg path to fix the dtbs check error.

Same comment. Nevertheless

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Fixes: 9fa33cbca3d2 ("arm64: dts: qcom: sm8650: correct MDSS interconnects")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

-- 
With best wishes
Dmitry

