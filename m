Return-Path: <devicetree+bounces-140758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2983A1B434
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D7931882409
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADEE9205AD8;
	Fri, 24 Jan 2025 10:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u8shTRAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87821CDFC1
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737716151; cv=none; b=u3tZe0lJ9ifwPN8xqnlCpErA4lPssdmq9gMU02vTZByppXT6UKj8sVQ8sVtT0d8cp6o9RvFL3C6TltSC5hIuSrwLZhsxuhFZeyn+WAZHqaoVBlNY19+GimanFyb+V/4UxTDgyhRxoTuSgCC4K1JYNWuxH3EWOhJmxczmjrKCWlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737716151; c=relaxed/simple;
	bh=FJ2KY2kCivy3cfhuqS9431gvdn1gAD7Pcd/CxaNa3zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MPl86vvVPl+PyeyfGmxLWlso7LZXwGNTXf56PB6Vve9TNIU6cCOxg76XkLygojrmC2HJxPPhOvH2K5h5LCxv9TmlU3OEdP3HegGBLz13gTvm4qvW8vQsm5pkUA8vdKbuWJH22USzFXM1ff+CxPjnNHZE3pYc7b0Nq43DqnigKrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u8shTRAZ; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-540215984f0so2071971e87.1
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 02:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737716148; x=1738320948; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S1y2kMAHTS24gTACYcRUTYCl+HO5S40W6bTqtE2PJx8=;
        b=u8shTRAZ4rRxP9imAOO5iBiSZpReMyE7YOKb41vnSQwlYic5WG7RnnRs5YZSCK/SdE
         u1lHO0VxO8KowkzkT+HWoauYkHD6iIgxhIhJfZ87r8FPYhmpyv0d0nEr5GoUhNtyessx
         PDck/+sKqbfURGDKoIAoMD8ozP0UtkpTujbjJJgXKR4j7iBhMy8eltacGQiWG/aPkX6P
         9PBYDmP+CR5VpLRfuXfvmdNzHtcv4d1x1EZ/htd11rhIxT3tn/ViG8sHx/g47qxSQbgn
         IFCcOD8SqfQGQeEDrFeDddxlWYMIHuCvsyB9XgZiDb1N7UVPVBYRxKEUTWWbAVQgIYYQ
         Krcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737716148; x=1738320948;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1y2kMAHTS24gTACYcRUTYCl+HO5S40W6bTqtE2PJx8=;
        b=UNf//YLwHHRia7y++7Q7Eh/1qFeinrRjMEj9rx5QHtzoLT27+KSwPQ5QlhCoCuxlTO
         Nrnud4OaiD5Iv2nrkMBCN6QQPYlIJyZ4o1YlWijNlyZt0R6FVE22N5MxacQ/MwF/sDpE
         aFR0bQ2Apsiq+zI7LKhtxgHvick0PU6z65tQlEbvyC1OWmj58ImM7rdcfqyVDqvAUCbl
         +fxlE9fZja2dzzhAGaG3piMSpcB6dCv6nsM27owmH8fAzm9TDP3dR8OpAqe5V1KAnnVK
         SBLDXc/oqiV3s0LTwjdcka8757QMTq53w1BJ+HHbQl3eL6zyhdTF2+7u3eRzA+ujLl5Q
         Ax5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWei/emRHiK3lst3cRM9Hqjmvm6pJU8v0AhJbgDtPXRRDaR/DH4ZjVCUNHax0AFr7Wd4kHrnnvB8PVy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw42r+isszVmuXJEBlQNv0tcp1ZGm9cECY9cBvyIfdZM6h7EsMT
	pi0MQGAjgvcm3/OyK5mKOuOv+6JlCALkbziOyQqY/HDAqdi/E5n43Gez2cVdv38=
X-Gm-Gg: ASbGnctHmSqkLDWtC6UIkSGZYkWNNp8OGAn0k9qPEOtKh+Qn8wQtqmiCEnAjtbsWzJl
	fNh3IqARBflxTYPbCdq0FcL6kep30HznZHrvrR6kmGWYPtaUndO0NFvnVMf0QIxAoCSxS1FeaJI
	CV+ExwO7PnidnMFQPyvnsSyWWQSbIb3ieG6x8KOHyR8yP13jAvEdH+M7KXYf1Ks7PZQfUL5/Z8V
	Gc1Ay+0ay5iFtd5uChAk503pfQrO+0Ru2pRB5YF9MKjPKWWyPdaESagAVM4QteeLWYjaVE0n2av
	nz0OkgWFu1HWUirG0CAMscRmb7xM2D3EL30WeBwHgqE+1Mzfmt0oJg7eAf8m
X-Google-Smtp-Source: AGHT+IG1so1EJbtoaZLNEkBkwyrMeUwJf4GSPqV5pFUaUQ8TSEQNKfZY2ntLuIIOfXfOLnxy5gbRGw==
X-Received: by 2002:ac2:5e9d:0:b0:542:2166:44cb with SMTP id 2adb3069b0e04-5439c282b25mr9456214e87.35.1737716147649;
        Fri, 24 Jan 2025 02:55:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8228997sm256890e87.43.2025.01.24.02.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 02:55:46 -0800 (PST)
Date: Fri, 24 Jan 2025 12:55:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...() or dev_...()
Message-ID: <rf6bdpi4wa2lbz23rvy7i5dl5nlidkky36gjjbagiqge3h7oi7@y5vp4u6o7hqd>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-6-damon.ding@rock-chips.com>
 <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
 <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
 <87ed0tn29l.fsf@intel.com>
 <6007b76a.6021.19497b090d4.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6007b76a.6021.19497b090d4.Coremail.andyshrk@163.com>

On Fri, Jan 24, 2025 at 05:41:58PM +0800, Andy Yan wrote:
> Hi,
> 
> At 2025-01-23 20:27:50, "Jani Nikula" <jani.nikula@linux.intel.com> wrote:
> >On Wed, 22 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
> >> Hi Andy,
> >>
> >> On 2025/1/9 14:28, Andy Yan wrote:
> >>> 
> >>> Hi Damon,
> >>> 
> >>> At 2025-01-09 11:27:10, "Damon Ding" <damon.ding@rock-chips.com> wrote:
> >>>> According to the comments in include/drm/drm_print.h, the DRM_...()
> >>>> functions are deprecated in favor of drm_...() or dev_...() functions.
> >>>>
> >>>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
> >>>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
> >>>> rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
> >>>> before calling it.
> >>>>
> >>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>>> ---
> >>>> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
> >>>> 1 file changed, 15 insertions(+), 14 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> index 546d13f19f9b..8114c3238609 100644
> >>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> >>>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
> >>>>
> >>>> 	ret = clk_prepare_enable(dp->pclk);
> >>>> 	if (ret < 0) {
> >>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
> >>>> +		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
> >>> 
> >>>                 You just need to pass dp here:
> >>>                  drm_err(dp, "failed to enable pclk %d\n", ret);
> >>> 
> >>
> >> I see. It is really better to pass dp instead of dp->drm_dev. I will 
> >> update all relevant logs in the next version.
> >
> >No, this was bad review feedback. You're absolutely expected to pass
> >struct drm_device to drm_err() and friends.
> 
> No, I didn't see how the drm_err macro and friends restrict/expect the passing of only the drm_device pointer.
> As for the platform device driver itself,  we hope that when an error occurs, the log clearly indicates
> the specific device that the log corresponds to, rather than a generic drm_device.
> The original code of this driver used the macro related to DRM_DEV_ERROR to do just that.
> And similar patches have been merged before
> 
> Please also refer to the discussion here.[0]
> [0]https://lore.kernel.org/linux-rockchip/20250109032725.1102465-1-damon.ding@rock-chips.com/T/#m54bd842be660031773834cedea6c73a5033ca973

Reviewer's mistake (mine). I assumed that you wanted to pass drm device.

> 
> 

-- 
With best wishes
Dmitry

