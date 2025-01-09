Return-Path: <devicetree+bounces-137054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E521DA07615
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D191E1674C9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA41217F29;
	Thu,  9 Jan 2025 12:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S/q5XqT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1BC217707
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426950; cv=none; b=g1s8Y4lzmop2WodLFUtRxzkwKC8G0vKFTmTXounwy4MpaxKCCxhNsySNsvik5q1+He0Vcj/CDyvB0/Yd9O2UlpQNI+QJ8PrCDXXFMuOtexKjk2rLRHRFy4h32ybkunoNvELNb5wKEAV/4M7G4oibsKJg1XnplCUPPt0WOtzdNn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426950; c=relaxed/simple;
	bh=hHMk51qTLQfW3zKY9KUNXYTiCBfM7At6KtyvRwbn/+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UaW4Mjg/KpqTTx6tCw0ltWYbOyTv66HWHGLzJiOXF5KDKW+MTShH4Yuc+sAhUulgWIpYX/Ba4P3WGwD82LCiF84UsfrLTgrxqODK3hedXsoczj6nzSv2aDUu1QiBUdIPk/1Aefqgz3qWsgS5r+Re61bNbpam5KbximaKhX8F+8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S/q5XqT7; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54024aa9febso829215e87.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426947; x=1737031747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=S/q5XqT7hlUDm3Av6wGsjxHEMEfLmQGgfG+SFysETh/zTPMV4yDDV44UpGCdobDypX
         WRolfwMmMJrZuXryUmiPJc5+YxnrmOr6xV1uqQILCcjQOMq9sDz4mQrQrdRTzg3VBgeR
         6phtZkgTZIvn3CzzZKA5McZOqy3hcTtpuzwGV2XBQ3TNtTpLVqkIesIKprz3DoNXX+hL
         ypiI5W3Qpb9LrCEcy8MiAeZ4dmVloo8P7zxlh8U9ZjQ9HOIY9yBeSvuR/ufbrpV4I3BT
         L4If0EUFFuG+mRYwQptGGihy/2xSKUI7JPy4jAiwpa1HNInf3XU8/cyvf/KEEy6TvekM
         4t2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426947; x=1737031747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISAvUvnxrJppDS2oaPXGBaXepNKXj9gL7beVEXrneoM=;
        b=XgEPesh1HThsBGFaFufdSxGg8IWW+mHR6L/4AtNarhf5N1bhShIyK217bS65jpKTr9
         +ZAdEE8EvOQZME0BRcIGOUGQK2C0sxOArFHJCghDkJ4Y40rer2PZ8roDZUsA/c9H8T9W
         eiZf8ASi0o2QZwVDSaqwXdflEUYHnr6bV1vx3s3F+ZWnY3BZFJSnSztegv6k+Ts+jYG6
         M0xTsr38+FJeW5MOUOUemEgFl2cYasCZGC6nr4ZaiCBiJhh21uX4WuS+V+C+/K2C27gz
         9CDI+gkkLK2AzEUabWW4s7HTWzu0v+fzrVF9ZT/QSaiwpC/zgrdEW1Yh/i4uzVKr2lcu
         MCLg==
X-Forwarded-Encrypted: i=1; AJvYcCWfQ6GdcYZ+jM57PNYsL2K2wP9Sp/jcig5jYA04pYOyOEEyE1RQV0bo2Ic8e0ZOXP7UMDpq+ro9xHA4@vger.kernel.org
X-Gm-Message-State: AOJu0YzqGeFeMkCVHvCAsA8BBOr7cwuboFM1tEOEl0kSSx900GZkwxye
	sBd2FtLey434BiNy+GmeznJ8pkCiSIImMhtM4ADF7eStnWW1VNRJuqXc4aympmg=
X-Gm-Gg: ASbGnct8M04n1FTaDb0ze26+jdaXJLjAgLPSETlOnMqSmmbsIKqt2vbHp9KSAuUkgNM
	0MiiQC6jN5cELGMwFRiDpnwiMcQSsckJ7C8Pyt5i3eSUFDoE02s78DG7UpiTpDKW23VALkjEO5b
	LS3BD760jfJ2j1Yr+UU6IkMsTuQAtGvYEYZerr3t0K4BoeNO9CeSKEvOPLxxo+2zloVuWEFa7Bj
	BQQWNGvBSEcQ+lPDnp6Io66mWNwbAc5yfimUyTZFZ8QVHJlkbQUL4HK1AaZrio7XrC3C09Tw+df
	kFUQV1Nb1hGjEXCGdsGr5rpRFtHucxYfO5e2
X-Google-Smtp-Source: AGHT+IFtzPf5r/L8vL1E/ZArSF/N5lVRhLbGlgYJHuErJi9BwgLOD62Gve10/GJMoU02S8ksLbRDSg==
X-Received: by 2002:a05:6512:1281:b0:540:30df:b3ea with SMTP id 2adb3069b0e04-542845b972emr1634434e87.15.1736426946964;
        Thu, 09 Jan 2025 04:49:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be496c4sm193126e87.24.2025.01.09.04.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:49:05 -0800 (PST)
Date: Thu, 9 Jan 2025 14:49:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 14/20] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <q522hpxpoxwierd3uwtijvnmaia5tec3gzazuzblhxeqgqgavy@d6yhljsiyvrn>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-15-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-15-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:19AM +0800, Damon Ding wrote:
> Expand enum analogix_dp_devtype with RK3588_EDP, and add max_link_rate
> and max_lane_count configs for it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v5:
> - Add the RK3588_EDP related modification in analogix_dp.h
> - Move this commit above related commit on the Rockchip side
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  include/drm/bridge/analogix_dp.h                   | 3 ++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

