Return-Path: <devicetree+bounces-137193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA36A07ED6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 18:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E4AB1681DE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5F2192590;
	Thu,  9 Jan 2025 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="thkD+rra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE69918C91F
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 17:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736444097; cv=none; b=RDizuNyuBE2o2drZffCjbljyRaMSLTZMwI50mgdjg7Eudus5+jQdwUIeQOMOHyMiJFn8KzFIjom91CI9C9xl/h7ZNFDT35gx1KtB+Tknv6JyMAdvlWUqzx+IhOEEG3TTfXxbT0bJpyHoMyjeyFmDeHUrWaLxhFWDb3qnKpbYlGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736444097; c=relaxed/simple;
	bh=0is/5jCyIXp/i+wMF/NtMbGO+Lwehc4oH9AwGiWaOOE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MC1Ae4nvvjSZ8bjdp38/nE0SaUoB4cDkGwBexoBGa3fH3oPziQflRU+s7m254uXFi43YrfRrme2ByJUGxal0yLd0Pqizo+kPZQYauoVxr84hB7FkOZI5pJQ0VhxzjTmwo7ZrB2Tf1VkxGPK0QWkKZ2Vc97vArmpzTU+QwM6WkRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=thkD+rra; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so1090791f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 09:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736444093; x=1737048893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LeH7JCGoH1pV9VvbMVUHObucX2uQ44KXOKRR9gYgtic=;
        b=thkD+rraGXT4Jgix17/ssMvvGb+aHA2RYHtWgxEfzybJIxxiuKutpv6Yamae/GP7qL
         CDetTL7TV+1rQLFjENr6ZB+QvEno+VlZ3/XWE0/kWQ0aXtLbQNG/HiLyLRIzDbafcOwx
         4F+zeEclLqbA407e5EaPxr+LlHpM+s4OHEuduZWKrNcIjtq8S1OVYuJ0tKVI28mpoRAB
         rtR92xp9fic/58cSv6Bs2QMxkgh7oAme1202RYArLrJHwGDbs6Jd19g1JBMxyoVW+VQ4
         rE4NfzG7cP5QXqyh6SjsreEJCG/UkwR/VerUu6xEvEP/AJMYw5UADOf/kW/MM5maEcKE
         TntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736444093; x=1737048893;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LeH7JCGoH1pV9VvbMVUHObucX2uQ44KXOKRR9gYgtic=;
        b=m/h6vkDbLrOhtR3vlvHptNlHZ58MyxkANpBX6nBj3ZERKXOA7RGiLJ8c2cXuCKUuch
         Nvh63WkpGfMcsgCwmRozG6N+7f5ay/yMclKKW3Ta735xjX+Ue9uvPOHFbcQO6szrfHoA
         krWT5wlLuvb64gvWSGRXa5FAGgr8re9wqa5saecupb4/YDuBbhoF13VmmIsbUlCbdcfh
         dqRe27WUs+5YIh0ThSYyZCW84jaxH/fnq0uNgjLFW+1CnmC+n3Sm3Uv7Wv/w/OJXFlkT
         Dk6x84SpmwOn95zY6fhID9YvYwT6jr399lrOI6O9fU2Wpf9HZ8sxdcatg3AAxcCZQMt3
         2vsw==
X-Forwarded-Encrypted: i=1; AJvYcCUfYQMkuuJwndAMAJ3X/yfZ9g6naXl65lJfZceR5hVqakfrN1UP4NbfSkbtjCGp6tL62h+6rjRrCoDv@vger.kernel.org
X-Gm-Message-State: AOJu0YzMakOxdKKURXJTNiKaNvCcgTFGZPKRizURTvxaBXk65Ae+goC3
	wyPaoEytEApCUPQLRJDZCIilguG3z2D8nZCT1QRSFSCBswfcDP5lX0D0QbvfiM4=
X-Gm-Gg: ASbGncv6xLMN9no34s69oMQv533qQkr8nXQ+w7adjthMwxYP3xw8ZLJEbsxD78+Yqcy
	tjD4UVpy+r9S7G8MrWAU/8AlkuUAUsCnSsh6ZGVl18PZ6eijG8Vxavv4vyLSxdErncUAOkAjxZ8
	++W6OakOAwCkuTyP+96rT0wtz6DlGcXZtzoN1qhU1tQsQJUOczsqoyUbn5UynJj09O72w2Ip1d5
	pgy0TuRHkI+g1MnibUmKQK8Xoe6qJY+5p4RBWVBvOrdHq7KI47ZuFlhzieCszcITQYGWG/33O/M
	vSyV/IlsN6s2ZnbXcrD2
X-Google-Smtp-Source: AGHT+IERs5KCEwKQIucPIFyDT2/QI76eZVYMCRhArmVMVyZ0ZhvPLwhehl5XC+EpSW+RlEv4FQNlBw==
X-Received: by 2002:a5d:64cc:0:b0:38a:86fe:52b3 with SMTP id ffacd0b85a97d-38a872e173emr6778925f8f.22.1736444093317;
        Thu, 09 Jan 2025 09:34:53 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e4b82ddsm2339000f8f.71.2025.01.09.09.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 09:34:52 -0800 (PST)
Message-ID: <46c8e8ff-ea39-4dbd-a26c-67fcabf4b589@linaro.org>
Date: Thu, 9 Jan 2025 18:34:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Claudiu <claudiu.beznea@tuxon.dev>, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, ulf.hansson@linaro.org
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Ulf,

can you have a look at this particular patch please ?

Perhaps this scenario already happened in the past and there is an 
alternative to fix it instead of this proposed change


On 03/01/2025 17:38, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
> clocks are managed through PM domains. These PM domains, registered on
> behalf of the clock controller driver, are configured with
> GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
> clocks are enabled/disabled using runtime PM APIs.
> 
> During probe, devices are attached to the PM domain controlling their
> clocks. Similarly, during removal, devices are detached from the PM domain.
> 
> The detachment call stack is as follows:
> 
> device_driver_detach() ->
>    device_release_driver_internal() ->
>      __device_release_driver() ->
>        device_remove() ->
>          platform_remove() ->
> 	  dev_pm_domain_detach()
> 
> In the upcoming Renesas RZ/G3S thermal driver, the
> struct thermal_zone_device_ops::change_mode API is implemented to
> start/stop the thermal sensor unit. Register settings are updated within
> the change_mode API.
> 
> In case devres helpers are used for thermal zone register/unregister the
> struct thermal_zone_device_ops::change_mode API is invoked when the
> driver is unbound. The identified call stack is as follows:
> 
> device_driver_detach() ->
>    device_release_driver_internal() ->
>      device_unbind_cleanup() ->
>        devres_release_all() ->
>          devm_thermal_of_zone_release() ->
> 	  thermal_zone_device_disable() ->
> 	    thermal_zone_device_set_mode() ->
> 	      rzg3s_thermal_change_mode()
> 
> The device_unbind_cleanup() function is called after the thermal device is
> detached from the PM domain (via dev_pm_domain_detach()).
> 
> The rzg3s_thermal_change_mode() implementation calls
> pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
> accessing the registers. However, during the unbind scenario, the
> devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
> Consequently, the clocks are not enabled, as the device is removed from
> the PM domain at this time, leading to an Asynchronous SError Interrupt.
> The system cannot be used after this.
> 
> Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
> be used in the upcomming RZ/G3S thermal driver.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>   drivers/thermal/thermal_of.c |  8 +++++---
>   include/linux/thermal.h      | 14 ++++++++++++++
>   2 files changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
> index fab11b98ca49..8fc35d20db60 100644
> --- a/drivers/thermal/thermal_of.c
> +++ b/drivers/thermal/thermal_of.c
> @@ -329,11 +329,12 @@ static bool thermal_of_should_bind(struct thermal_zone_device *tz,
>    *
>    * @tz: a pointer to the thermal zone structure
>    */
> -static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
> +void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>   {
>   	thermal_zone_device_disable(tz);
>   	thermal_zone_device_unregister(tz);
>   }
> +EXPORT_SYMBOL_GPL(thermal_of_zone_unregister);
>   
>   /**
>    * thermal_of_zone_register - Register a thermal zone with device node
> @@ -355,8 +356,8 @@ static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
>    *	- ENOMEM: if one structure can not be allocated
>    *	- Other negative errors are returned by the underlying called functions
>    */
> -static struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
> -							    const struct thermal_zone_device_ops *ops)
> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
> +						     const struct thermal_zone_device_ops *ops)
>   {
>   	struct thermal_zone_device_ops of_ops = *ops;
>   	struct thermal_zone_device *tz;
> @@ -429,6 +430,7 @@ static struct thermal_zone_device *thermal_of_zone_register(struct device_node *
>   
>   	return ERR_PTR(ret);
>   }
> +EXPORT_SYMBOL_GPL(thermal_of_zone_register);
>   
>   static void devm_thermal_of_zone_release(struct device *dev, void *res)
>   {
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 69f9bedd0ee8..adbb4092a064 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -195,13 +195,23 @@ struct thermal_zone_params {
>   
>   /* Function declarations */
>   #ifdef CONFIG_THERMAL_OF
> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
> +						     const struct thermal_zone_device_ops *ops);
>   struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, int id, void *data,
>   							  const struct thermal_zone_device_ops *ops);
>   
> +void thermal_of_zone_unregister(struct thermal_zone_device *tz);
>   void devm_thermal_of_zone_unregister(struct device *dev, struct thermal_zone_device *tz);
>   
>   #else
>   
> +static inline
> +struct thermal_zone_device *thermal_of_zone_register(struct device_node *sensor, int id, void *data,
> +						     const struct thermal_zone_device_ops *ops)
> +{
> +	return ERR_PTR(-ENOTSUPP);
> +}
> +
>   static inline
>   struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, int id, void *data,
>   							  const struct thermal_zone_device_ops *ops)
> @@ -209,6 +219,10 @@ struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, in
>   	return ERR_PTR(-ENOTSUPP);
>   }
>   
> +static inline void thermal_of_zone_unregister(struct thermal_zone_device *tz)
> +{
> +}
> +
>   static inline void devm_thermal_of_zone_unregister(struct device *dev,
>   						   struct thermal_zone_device *tz)
>   {


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

