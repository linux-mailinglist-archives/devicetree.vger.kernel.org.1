Return-Path: <devicetree+bounces-4977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D001B7B48D7
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 19:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EE2FE1C20410
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 17:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE6A17728;
	Sun,  1 Oct 2023 17:23:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB23171D5
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 17:23:34 +0000 (UTC)
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E3883
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 10:23:32 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3231df68584so11573116f8f.1
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 10:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696181010; x=1696785810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lVcvUquxHdmjQIU2ZMCOPdkvoH50IfeVGs0t8Iidi64=;
        b=pZwda/mmM7i2HcOVY/usRVi8kThvlB45KAU1yUmSHjHXiuf0c0O2JObgiAEwPkEpCY
         co/R+QYjfM8BkQfBIY0u5DfVRmOngmjI5rfDM3Saeij1ZrzvQRzSZGp8Vza7AUIHZ2JR
         o5yOeNA9XsLToO3FE+Fl+pWC9E3aki78zkMtkwM4qTHNbtrM59c2XEr3Ynp1TIdY6hpA
         uHG9mCJYiKPvm90IMlKUM6ZaR7Bf79roqPBXG+eSvHZZ4pf8AsYpqMjU8sBDNCSfTgaE
         zfp5LvnOF8EE1yaBZheH4eyW5DPWCoXq3ZkvTY18m050dEfBK9eOUw/qEiPzg5J/KiIF
         Z5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696181010; x=1696785810;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lVcvUquxHdmjQIU2ZMCOPdkvoH50IfeVGs0t8Iidi64=;
        b=Az4ADukLgZPoR0pSQRjkR5kFrm4L20Nd3lcJ21RXo2lGJRDHYspfxmLDYzznjnnJuz
         voPOmReZO+nkkonCzK+qDj6KGXldqHq3MDjYSiVaiMA9HXZ1OqOrPLe34Jr/nY+RiWYN
         gM7b+PjUWz5YTHZQITmaG5miV+9W14+k+ybL0i/7Kbr+txbc+gBuPzvBvbeBh7FCBmJy
         H0eO9jNJ0NXGv41wXDjkZoiVaksmrXt4lNBP+52NrUBl6se3/GBtdFMHSRR7c9JnEEn5
         xZyAglchKB16qmwmHHg+cj5jqFwMS/SImP/Oq/Lx7cqoNOMJhmCKkQnhT03sw4ddrm9f
         NUEA==
X-Gm-Message-State: AOJu0Yx4Zfg5lQD1E4urpjkHkpy5bZWTfMMSN77h0rRMF+zDy5o6joVT
	lavhG5FmxwGDUJiosNc8sgtuwQ==
X-Google-Smtp-Source: AGHT+IHHyItEhoBAUvL8rOXyPqfID6RmltJJGDZGpCFAwvc6Si6wAcy6OlkEtHmE9tS6WM4RblP9nA==
X-Received: by 2002:adf:e54e:0:b0:31a:e744:1297 with SMTP id z14-20020adfe54e000000b0031ae7441297mr8189570wrm.50.1696181010262;
        Sun, 01 Oct 2023 10:23:30 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id k13-20020adfb34d000000b0031ae8d86af4sm13788829wrd.103.2023.10.01.10.23.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Oct 2023 10:23:29 -0700 (PDT)
Message-ID: <8200e5e5-440b-b842-b995-4cbb8344ed02@linaro.org>
Date: Sun, 1 Oct 2023 19:23:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 2/3] reboot: Introduce
 thermal_zone_device_critical_reboot()
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20231001030014.1244633-1-festevam@gmail.com>
 <20231001030014.1244633-2-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231001030014.1244633-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 01/10/2023 05:00, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Introduce thermal_zone_device_critical_reboot() to trigger an
> emergency reboot.
> 
> It is a counterpart of thermal_zone_device_critical() with the
> difference that it will force a reboot instead of shutdown.
> 
> The motivation for doing this is to allow the thermal subystem
> to trigger a reboot when the temperature reaches the critical
> temperature.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v8:
> - Introduce thermal_zone_device_critical_reboot() to accomodate
> Daniel's suggestions.
> 
>   drivers/thermal/thermal_core.c | 19 +++++++++++++++++--
>   include/linux/reboot.h         | 13 ++++++++++++-
>   include/linux/thermal.h        |  1 +
>   kernel/reboot.c                | 32 +++++++++++++++++++-------------
>   4 files changed, 49 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
> index 38d393f139d8..277aafb294db 100644
> --- a/drivers/thermal/thermal_core.c
> +++ b/drivers/thermal/thermal_core.c
> @@ -313,21 +313,36 @@ static void handle_non_critical_trips(struct thermal_zone_device *tz, int trip)
>   		       def_governor->throttle(tz, trip);
>   }
>   
> -void thermal_zone_device_critical(struct thermal_zone_device *tz)
> +static void thermal_zone_device_shutdown(struct thermal_zone_device *tz, bool shutdown)

Probably nit picking but is it possible to rename to:

static void thermal_zone_device_halt(struct thermal_zone_device *tz, 
bool shutdown)


>   {
>   	/*
>   	 * poweroff_delay_ms must be a carefully profiled positive value.
>   	 * Its a must for forced_emergency_poweroff_work to be scheduled.
>   	 */
>   	int poweroff_delay_ms = CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS;
> +	static const char *msg = "Temperature too high";

Why use 'static' ?

>   	dev_emerg(&tz->device, "%s: critical temperature reached, "
>   		  "shutting down\n", tz->type);

Now the function can do 'shutdown' or 'reboot', so the message should 
reflect that.

However, the reason will be displayed in the 
hw_protection_shutdown/reboot, so having:

dev_emerg(&tz->device, "%s: critical temperature reached\n", tz->type);

> -	hw_protection_shutdown("Temperature too high", poweroff_delay_ms);
> +	if (shutdown)
> +		hw_protection_shutdown(msg, poweroff_delay_ms);
> +	else
> +		hw_protection_reboot(msg, poweroff_delay_ms);
> +}
> +
> +void thermal_zone_device_critical(struct thermal_zone_device *tz)
> +{
> +	thermal_zone_device_shutdown(tz, true);
>   }
>   EXPORT_SYMBOL(thermal_zone_device_critical);

Rename to thermal_zone_device_critical_shutdown() for consistency (in a 
separate patch).

>   
> +void thermal_zone_device_critical_reboot(struct thermal_zone_device *tz)
> +{
> +	thermal_zone_device_shutdown(tz, false);
> +}
> +EXPORT_SYMBOL(thermal_zone_device_critical_reboot);
> +
>   static void handle_critical_trips(struct thermal_zone_device *tz,
>   				  int trip, int trip_temp, enum thermal_trip_type trip_type)
>   {
> diff --git a/include/linux/reboot.h b/include/linux/reboot.h
> index c4cc3b89ced1..4683e117c753 100644
> --- a/include/linux/reboot.h
> +++ b/include/linux/reboot.h
> @@ -177,7 +177,18 @@ void ctrl_alt_del(void);
>   
>   extern void orderly_poweroff(bool force);
>   extern void orderly_reboot(void);
> -void hw_protection_shutdown(const char *reason, int ms_until_forced);
> +
> +void __hw_protection_shutdown(const char *reason, int ms_until_forced, bool shutdown);
> +
> +static inline void hw_protection_reboot(const char *reason, int ms_until_forced)
> +{
> +	__hw_protection_shutdown(reason, ms_until_forced, false);
> +}
> +
> +static inline void hw_protection_shutdown(const char *reason, int ms_until_forced)
> +{
> +	__hw_protection_shutdown(reason, ms_until_forced, true);
> +}


Those changes should be in a separate patch.

>   /*
>    * Emergency restart, callable from an interrupt handler.
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 6cfcae22ba12..c5ebb44ae8a6 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -353,6 +353,7 @@ int thermal_zone_get_offset(struct thermal_zone_device *tz);
>   int thermal_zone_device_enable(struct thermal_zone_device *tz);
>   int thermal_zone_device_disable(struct thermal_zone_device *tz);
>   void thermal_zone_device_critical(struct thermal_zone_device *tz);
> +void thermal_zone_device_critical_reboot(struct thermal_zone_device *tz);
>   #else
>   static inline struct thermal_zone_device *thermal_zone_device_register_with_trips(
>   					const char *type,
> diff --git a/kernel/reboot.c b/kernel/reboot.c
> index 395a0ea3c7a8..8b3010b88ed6 100644
> --- a/kernel/reboot.c
> +++ b/kernel/reboot.c
> @@ -957,21 +957,25 @@ static void hw_failure_emergency_poweroff(int poweroff_delay_ms)
>   }
>   
>   /**
> - * hw_protection_shutdown - Trigger an emergency system poweroff
> + * __hw_protection_shutdown - Trigger an emergency system shutdown or reboot
>    *
> - * @reason:		Reason of emergency shutdown to be printed.
> - * @ms_until_forced:	Time to wait for orderly shutdown before tiggering a
> - *			forced shudown. Negative value disables the forced
> - *			shutdown.
> + * @reason:		Reason of emergency shutdown or reboot to be printed.
> + * @ms_until_forced:	Time to wait for orderly shutdown or reboot before
> + *			triggering it. Negative value disables the forced
> + *			shutdown or reboot.
> + * @shutdown:		If true, indicates that a shutdown will happen
> + *			after the critical tempeature is reached.
> + *			If false, indicates that a reboot will happen
> + *			after the critical tempeature is reached.
>    *
> - * Initiate an emergency system shutdown in order to protect hardware from
> - * further damage. Usage examples include a thermal protection or a voltage or
> - * current regulator failures.
> - * NOTE: The request is ignored if protection shutdown is already pending even
> - * if the previous request has given a large timeout for forced shutdown.
> + * Initiate an emergency system shutdown or reboot in order to protect
> + * hardware from further damage. Usage examples include a thermal protection.
> + * NOTE: The request is ignored if protection shutdown or reboot is already
> + * pending even if the previous request has given a large timeout for forced
> + * shutdown/reboot.
>    * Can be called from any context.
>    */
> -void hw_protection_shutdown(const char *reason, int ms_until_forced)
> +void __hw_protection_shutdown(const char *reason, int ms_until_forced, bool shutdown)
>   {
>   	static atomic_t allow_proceed = ATOMIC_INIT(1);
>   
> @@ -986,9 +990,11 @@ void hw_protection_shutdown(const char *reason, int ms_until_forced)
>   	 * orderly_poweroff failure
>   	 */
>   	hw_failure_emergency_poweroff(ms_until_forced);
> -	orderly_poweroff(true);
> +	if (shutdown)
> +		orderly_poweroff(true);
> +	else
> +		orderly_reboot();
>   }
> -EXPORT_SYMBOL_GPL(hw_protection_shutdown);
Same comment

>   static int __init reboot_setup(char *str)
>   {

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


