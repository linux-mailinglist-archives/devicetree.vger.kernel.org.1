Return-Path: <devicetree+bounces-128356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 350809E8727
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 18:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A327418850BD
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398E11865E5;
	Sun,  8 Dec 2024 17:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YwE5ETXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E4A15624B
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 17:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733680218; cv=none; b=htkFNwlPv80tSJ8Tot4uM1MAb2pr7UTUOsQlIip8+Ub7sxYsYmQYlIeCEfh5lmVOFucDPukxTs/Lb1Vkxe4UKahaZdMmyf+3xsQPdR7QJYYTQieyXbljurMPDApFZI97QharCpcnNvi+3QxmDIObty2gOgR95+MiHih4Jg2V5XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733680218; c=relaxed/simple;
	bh=NMYKVwOZ9ghfzC4m+4A/KuTL24A3wsDJ9KyStazQPDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HPwGSW0ShnSW2j/KxDWyUSyldzHXUzk//bNJJd5XQVWmdjNSG0AFSV+sW9vkqPR6bkcQJABBMHQGQdFL+cQcuSRcH80LltY/JUvDwv3+jP91BncK4N3oceWTdOiThqHFyx6im7FyZmZqhvt2oSlAUOj/ZjBJ2P89vApkWhL/Lno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YwE5ETXL; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53f22fd6887so921051e87.2
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 09:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733680215; x=1734285015; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5u+YWQpYadE0OMjiReHLCH4W+mWwJz1CAGoagd9qERs=;
        b=YwE5ETXL45dR3NiDyBkaiLAjde/o6JdC74ASIRrZBPm1RgSPgIyfbdLhnybLP5P0ze
         6GhaIVanz6olFKz0KjT9lJb/zH1IFNy/zgtF8Q82XvlltCB/IYqfwwwbyBMg/5QQZ+Rr
         V/X2nyLkybPWPD4wJdCaL2k6axem1qYEzMU9wBb3/a9NpDgfkPPUrVjp+Zsoe+CPIoQG
         8RL3EgJPbualIL+ZocEqCpOfTsOSV8YLGnKtybFQTrLCrTPhg4h073nKPFk3NyIq9lTn
         fcTdK4ZZRX1UC+PlO5xTb1rvLd8X+K6cye4mO8zu6qjJzOy7aPtPUB/h96p40g7tRp6+
         f71A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733680215; x=1734285015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5u+YWQpYadE0OMjiReHLCH4W+mWwJz1CAGoagd9qERs=;
        b=WwBnC12a19K/7St7wsCWfQenfQ4Nx4MABV592SEmLIQeM/jNl9EHhiSx58jY66nYKj
         9CRfya3/9EPzK3+jQIv+4R9kycRS+1ZufZwtWgx1kg4Ato7Z3vcDRRBczv3JhdVPjYqh
         mFdAm+DkJZt1GjgFbIA7kDakJ5CnzLhjLVB9zUJwM5uARGFrDBEBf2fYIzcC4k9ULeRj
         Ipf1tLBRj/uzprPXTCQy+mXBKdfzEGXUolxABmPmZKJxtR7HUd3Z7uZwCn2o4DTbQOzf
         A4uPEiLZEQTa7tLA7eeND7JT5tnbVv337B1LOhWiNZNoKDWhnsG9qsM2wwAIUCNjavAb
         PEiw==
X-Forwarded-Encrypted: i=1; AJvYcCU7kSYpRSKS17nP5QbehFgCWssllK244njmcB+5wTHda0GRtm/JwkrVmFiUvqOeKEhlh6khUyytS+nx@vger.kernel.org
X-Gm-Message-State: AOJu0YwTpmOC0CxIathPylOpPwnJ5fkNh4uJ+9q3TvddMl9O+T6cwr24
	4fRvXC+W4HTuVFeYfeAg0KuzQUUzvjSxgdkWE6v9Q0AMqVIQidsBMm8j0s5XNSI=
X-Gm-Gg: ASbGncvb6RhLLEOm8k7SnCcgQ/Vbn57dIIuEONMrwjFLaZYb4zI7DMFu8mGSPODbX6P
	HJKRh6D2/LAPtHEGAhtWmfI6ZPEeowGxidV9/EKEVPRhZA/qQad15EUymZeINmHHbnH1jLSDfMG
	k6Uk0ImAV++yFxnV88YXdTyguX0dOpK5p9AI6HUIzskP8p+QqOEyvzOocN2d+IghozWb7i8plEt
	4FeV2LNn/xyrI1OV9bqTlw8ddgC1x0fys3V7emdwJhV32QJadd/i9Ggkz/02Rh0XdtYQzpH/3Lw
	HwgIVjHszNQRUducsgOi3DBqMw0SbA==
X-Google-Smtp-Source: AGHT+IEVJLXOPnyFmKaPz9KPMKbv70YRlg73dziKIo45JVQh26G1HQVfDj7ebpdmC8hy5ZJT275q6A==
X-Received: by 2002:a05:6512:33d0:b0:53d:cfdb:c65c with SMTP id 2adb3069b0e04-53e2c504c25mr3188513e87.52.1733680214661;
        Sun, 08 Dec 2024 09:50:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3968850dsm659447e87.31.2024.12.08.09.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 09:50:13 -0800 (PST)
Date: Sun, 8 Dec 2024 19:50:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 01/45] drm/msm/dp: dont call
 dp_catalog_ctrl_mainlink_ctrl in dp_ctrl_configure_source_params()
Message-ID: <vemardbn3siohtg74hgjsnugkm4adqw6ekc4xhvjq3fty2rfov@5yhhsvjsnp6z>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-1-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-1-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:32PM -0800, Abhinav Kumar wrote:
> Once the link has already been setup there is no need to call
> dp_catalog_ctrl_mainlink_ctrl() as this does a reset on the mainlink
> thereby tearing down the link briefly.
> 
> Fixes: c943b4948b58 ("drm/msm/dp: add displayPort driver support")
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

