Return-Path: <devicetree+bounces-141824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B6A22B47
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 11:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1641160563
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 10:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E65A1B87ED;
	Thu, 30 Jan 2025 10:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g8tiIT5p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5821B4137
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 10:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738231630; cv=none; b=e1dEI2k+k9XQCnw8iRkt4IyY7ZFL8QcPHXcAqKruQJP9iJ+B4XWf8Az+zFpE3Tmj/m3lrZEHwgP3rKYyE3qQQJutkCWWE6cC5p8rfmqgQavFmEwJLNvrnYFjFVE5VLJHjA2hLbSgZfOjdH4bZloSMiqFYzI59d4j5Is/4/gfzZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738231630; c=relaxed/simple;
	bh=C1KMbrXvFtdznovRiPt5L1gSHd5K3c+dyr52XHXQN34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cTnrIALCfARQnn8lO9iUgSKPFKENcitP5HEPtZTxiASCqotT+DBNGNG8l99YNt89Zq1vw73RMiEqsJM2Zkoai9JJVpsgPQhGiav6UTKmN+uQvbSSn4Cvs5QaKE0FLvaTHZirRHDGLifpj6x3pheC8DjjS613OJblCV1G8MFuiXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g8tiIT5p; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-438a39e659cso3746915e9.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 02:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738231626; x=1738836426; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/xgSZrYTjR4wYm9y2TJ/8whEMF1KaaIbp8HFp2h/RHw=;
        b=g8tiIT5ppT1wLscAShXselPlb+hOOyG1Fb8G/cJ3dZ1GBEs9n2E91JUlQzV3mXxIjy
         02JiOtragBUKYnF1pxsrZ3N/YaQLjGDUSbtprN11ym68uc+vw/mPNf4qZDXZ8Ui/FIGE
         4KeZ72siLe88N7C0JFQBWoytRp6XAoueaz2WcCFlv1f2960/s1ZBE/CXRZ/sJyse4cT7
         VDKXdOyfKvomHO2oIz6zlf5j/y8t8wlzWDbc/LuiN1Y3U9gaAEBlkordseo9l+4SxJ4n
         CC7wGKJOTzFOBQHTeM77FcoYnZZJzbiqRAc1MiQEefekWMx+fh4Rwvbiv8pbu8cqAzVe
         fu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738231626; x=1738836426;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/xgSZrYTjR4wYm9y2TJ/8whEMF1KaaIbp8HFp2h/RHw=;
        b=pJpl6tv3nvR5R1B1kb39aw4ZFsGhXTssOJnDr4XG1hWeez7da6Y4lC1iTQC7scq2mr
         XAmysYA8iaoAaLAh7w6WjOy3ZKz5YEeVyaswIUp6XUmP2q3FN3qOTR8DHSgismEV6YB4
         z41rcvkb2XNbjA6CY6fY+lHGYNI+DsFc1hq3kBJi1axKNPGs8vEAmKNdeSp98MdLmUO0
         lJ2CHB2HsYIkHUEev+/yKVjIRB2xrd7fAb+DMkiZB2h0KGkne5dZRRqf7Xg++H9y99Sc
         eBQzj/NCfgnlZ3lN7cnl99Dvgm9VGtIrRvJUXSqTt5wc73Ye8ycNvdqXDQm+JECpvb8E
         2+pw==
X-Forwarded-Encrypted: i=1; AJvYcCU0OILhjA1ymoDR5la0cEZaQZAkvL4BQuE+VQPLY8RThBLt9T29ZKK8WYS7mpCmdqI5tmXRV4bxhXvv@vger.kernel.org
X-Gm-Message-State: AOJu0YzI1aiKugG6qSkMYRKzgMGG+pVWUv4VbiP/x31rrvhPYF7Ay3hq
	eIkUOwXTNdvfWhqOHEGUQH3z0mKs+lOfxk1dHD07fl38WvXEzo1ceto9IML2cEA=
X-Gm-Gg: ASbGncv1Ld+MipWK/ahuDhzEccKFpawamt7Pa+GQvbdRyrzFJIbXvM/4sFz8Nvh+zPZ
	Ztcbt0c7MItw0+fCieiGW71Vno8yQG989WAPLyV+lIvbKNcqOXXFFxnUqaGkiPUVVuKX9LUuRRS
	UW3tJFt2XXi9atGvymVUkrmTSm7TCa8dYnyAz5ZjWra5pYAQCssP3FJ+HQhG6ICgKGuoECeZHvn
	M7xSE6eDGVhwvaWoMRvuJC/weSRwvBmal6wrqXRST9r98hOkdhjlJ6tCN08oxhFLgZBGf3C35PU
	w4UTNpRmL8MumjF970ATXjxDj5iRNl2L+O3o6L5GHGZrC8ItuA8GGw==
X-Google-Smtp-Source: AGHT+IG1KyMFpNfsa8g5lwEoCzkFattulfz3yPh36W1lbzjbEMttPBKcz1auUhyGCxe1asfnZ5I/UQ==
X-Received: by 2002:a05:600c:1d1e:b0:436:a3a3:a70c with SMTP id 5b1f17b1804b1-438dc4214c3mr43534915e9.28.1738231625956;
        Thu, 30 Jan 2025 02:07:05 -0800 (PST)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438e245efbcsm17275025e9.33.2025.01.30.02.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 02:07:05 -0800 (PST)
Date: Thu, 30 Jan 2025 11:07:03 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
	ulf.hansson@linaro.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
Message-ID: <Z5tPR_tv7vWDkUI7@mai.linaro.org>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
 <Z5pkUNNvsWPjRQvy@mai.linaro.org>
 <65a16c3f-456e-40ec-91b0-afb57269ed46@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <65a16c3f-456e-40ec-91b0-afb57269ed46@tuxon.dev>

On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
> Hi, Daniel,
> 
> On 29.01.2025 19:24, Daniel Lezcano wrote:
> > Hi Claudiu,
> > 
> > On Fri, Jan 03, 2025 at 06:38:01PM +0200, Claudiu wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
> >> clocks are managed through PM domains. These PM domains, registered on
> >> behalf of the clock controller driver, are configured with
> >> GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
> >> clocks are enabled/disabled using runtime PM APIs.
> >>
> >> During probe, devices are attached to the PM domain controlling their
> >> clocks. Similarly, during removal, devices are detached from the PM domain.
> >>
> >> The detachment call stack is as follows:
> >>
> >> device_driver_detach() ->
> >>   device_release_driver_internal() ->
> >>     __device_release_driver() ->
> >>       device_remove() ->
> >>         platform_remove() ->
> >> 	  dev_pm_domain_detach()
> >>
> >> In the upcoming Renesas RZ/G3S thermal driver, the
> >> struct thermal_zone_device_ops::change_mode API is implemented to
> >> start/stop the thermal sensor unit. Register settings are updated within
> >> the change_mode API.
> >>
> >> In case devres helpers are used for thermal zone register/unregister the
> >> struct thermal_zone_device_ops::change_mode API is invoked when the
> >> driver is unbound. The identified call stack is as follows:
> >>
> >> device_driver_detach() ->
> >>   device_release_driver_internal() ->
> >>     device_unbind_cleanup() ->
> >>       devres_release_all() ->
> >>         devm_thermal_of_zone_release() ->
> >> 	  thermal_zone_device_disable() ->
> >> 	    thermal_zone_device_set_mode() ->
> >> 	      rzg3s_thermal_change_mode()
> >>
> >> The device_unbind_cleanup() function is called after the thermal device is
> >> detached from the PM domain (via dev_pm_domain_detach()).
> >>
> >> The rzg3s_thermal_change_mode() implementation calls
> >> pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
> >> accessing the registers. However, during the unbind scenario, the
> >> devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
> >> Consequently, the clocks are not enabled, as the device is removed from
> >> the PM domain at this time, leading to an Asynchronous SError Interrupt.
> >> The system cannot be used after this.
> > 
> > I've been through the driver before responding to this change. What is the
> > benefit of powering down / up (or clock off / on) the thermal sensor when
> > reading the temperature ?
> > 
> > I can understand for disable / enable but I don't get for the classic usage
> > where a governor will be reading the temperature regularly.
> 
> I tried to be as power saving as possible both at runtime and after the IP
> is not used anymore as the HW manual doesn't mentioned anything about
> accuracy or implications of disabling the IP clock at runtime. We use
> similar approach (of disabling clocks at runtime) for other IPs in the
> RZ/G3S SoC as well.
> 
> > 
> > Would the IP need some cycles to capture the temperature accurately after the
> > clock is enabled ?
> 
> There is nothing about this mentioned about this in the HW manual of the
> RZ/G3S SoC. The only points mentioned are as described in the driver code:
> - wait at least 3us after each IIO channel read
> - wait at least 30us after enabling the sensor
> - wait at least 50us after setting OE bit in TSU_SM
> 
> For this I chose to have it implemented as proposed.

IMO, disabling/enabling the clock between two reads through the pm runtime may
not be a good thing, especially if the system enters a thermal situation where
it has to mitigate.

Without any testing capturing the temperatures and compare between the always-on
and on/off, it is hard to say if it is true or not. Up to you to test that or
not. If you think it is fine, then let's go with it.
 
> If any, the HW manual is available here
> https://www.renesas.com/en/document/mah/rzg3s-group-users-manual-hardware?r=25458591
> (an archive is here; the manual is in Deliverables/r01uh1014ej0110-rzg3s.pdf)
> 
> Thank you for your review,
> Claudiu
> 
> > 
> >> Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
> >> be used in the upcomming RZ/G3S thermal driver.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

