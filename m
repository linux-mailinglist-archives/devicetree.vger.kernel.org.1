Return-Path: <devicetree+bounces-193845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D52CEAFBF7D
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 02:53:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 222A217FAA1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 00:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0921C863B;
	Tue,  8 Jul 2025 00:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tXLshjWi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D05815C15F
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 00:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751936014; cv=none; b=LqdTkikkIcYrGJrlJmBOJiyuZoWGse038YEwRkDSUrW3DzCnaZ9yFXh56ExgxDciZjqJ1SbvcTW9YyFmTodBQRw41Ym8FfGihGT4A8qaaKJR0OPUfvEm7bvZqHGWcmze1HY93SVkAVBOSiLEifG++Wx5M4w1z8jLavd/qZrKl6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751936014; c=relaxed/simple;
	bh=Lv2uYuP0uhaX+2KsikPWXcVb5tuYue4RCSSa3gj999Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CD453BBA9RDNFIdPVKSDmyo3WJRGJBWf1eZPEdc+jYt2vLF0waO1edNY3Th73jRI2SmeukMLHkQPK+rAL1HxjeRJi6sDqYiw9EGb3weFQQjrIRNLZgHbrx9KFCb80x8Bm+q7uYYLfa61S1flqxJT5K8Kprdcn3tTZhXZiBwoInM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tXLshjWi; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b31e0ead80eso2809661a12.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 17:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751936013; x=1752540813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U13eZc0zieh3AbPtNGZ8TUxyosjfaQ6szmOCMhohSY8=;
        b=tXLshjWiAgy5f+gp/WqGYqhEZla8vNFRwYPyjLTxA307RcHyc56/AGe7VdGFrg+elR
         18Y58Y+wJYkTkLimBO59TxHjCC4ibfjxHGV8ISdE7EwOg7Tbp58DYohhnPns6BErAIZV
         CdDl8i3/FIBb4AJXlf1ovQFqDkEFPpApgPVvthX4wwKwsgHyCYoZZUeqZSHrCF94psTz
         0pbxUT4FWdOjTuqI3mYj43r6Fk/I/9U3g7F5GtWwtPOXBDWCTKDxNpWkluo90UR9EhEB
         G6deGLNe8z99pCtkMAHmQPHtsyRU+53Y0DmuntpNfag0yDH7n4wngvgobA6gyIPMSjWm
         eNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751936013; x=1752540813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U13eZc0zieh3AbPtNGZ8TUxyosjfaQ6szmOCMhohSY8=;
        b=CfrikfCkemL5WIgap8D+3iXYkAGI2OF+kvxninzx05RRUMXLJwV7xq1hchDs4EQaSx
         enm3fKKR0XxGtDdleziQIxYWthJ+mFNws1yoWcZfK9SOsy3qN7RsOmDt0AXNnODkJUjH
         XkhTCWUOoC/QydtwY76dPOLXYNJug+juPUqGltp1CrfG0Eg6CeNXBbgoS2/o+2iCfCuE
         OEQxYoFd88Pa1O24Tzyrw4v5GRujKuRYwrDkUAhmPVDEcMt0vrWujd3r4pSKP/2QOUxZ
         TubH+4T/hTJQVp0MhjBjcZK1/66eQX/8lYTdqovnugvQbeUOyDOOdgCwhqEf/wF7049U
         yg4g==
X-Forwarded-Encrypted: i=1; AJvYcCUlFwKDfRol+dwL8w/2qe6utrLk/7dIkhfNpFDEFPbuCGYjPJNLPYuKOl+kov3vDTaGHkl91KeihJy5@vger.kernel.org
X-Gm-Message-State: AOJu0YzHZQTVTr7/edqYHtlihQUm49YN7P6uVcFKX3vtlyOMXH3H7wN/
	jFpskq1+iasX4rtAAxgJgzprSclreZcx+3RXRZPd/fW4SlEvEAeQjejGLVIXKmI+BA==
X-Gm-Gg: ASbGnctRo6GSTp5ubASfE+gdOw4wcBpJ+XQ9MT8UvRa34kGlDoLWKoKtNVeKRZOHD+F
	JCoMaFofIElBN3Bz7gsvlI7yEMXZvcub8a3Ey9x97q85+NaVwiF3UoJnq+lQMCAGa1lf4xBKRRN
	9KCEGAuNvs3yJhtEeuJgAzPLKqlOcX3sA6A7tLhMZEsivbRwEQ6QUM4/7k+h0YvcYM4F0cP59Jl
	ITgBACDxwBAd2TO6r87ppWVZRNRFVL+YhMj5+P825jOZnreZ27oUtWXhdXjEy5+6d4ljPS4CtJJ
	ww6sVnrLxPwzYhhTdc7HME7DFVaO4Mj6uzJvDCqoMayXJj+kwRo7sOki6epBl94H3kzUzcEfVrv
	v3sMQNXzjaX7AzrHr42FeotHN8kUFfRpFT5jVY1I8WNk076Awm0ybq0qQfEOu
X-Google-Smtp-Source: AGHT+IFjMQjjOffzmNOZ8P3WylPz+SMLrNx6Urqmr9Ai+/+EfNPOK6NyOHFuFGHPVrX19c044f0U+Q==
X-Received: by 2002:a05:6a21:3289:b0:206:a9bd:a3a3 with SMTP id adf61e73a8af0-22b4449b08cmr1787853637.24.1751936012395;
        Mon, 07 Jul 2025 17:53:32 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e14:7:990d:1c2a:935c:f693? ([2a00:79e0:2e14:7:990d:1c2a:935c:f693])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74ce359e125sm10567514b3a.13.2025.07.07.17.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 17:53:31 -0700 (PDT)
Message-ID: <b6bfc569-159d-4249-821d-cb6ffab17000@google.com>
Date: Mon, 7 Jul 2025 17:53:30 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] power: supply: core: add helper to get power
 supply given a fwnode
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <len.brown@intel.com>,
 Pavel Machek <pavel@kernel.org>, Kyle Tso <kyletso@google.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-pm@vger.kernel.org
References: <20250507-batt_ops-v2-0-8d06130bffe6@google.com>
 <20250507-batt_ops-v2-2-8d06130bffe6@google.com>
 <djqmdlnsftquum3wayigqryzfy7xkn67uj4pfk3wugxl3lx3wr@y26ydci57iwi>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <djqmdlnsftquum3wayigqryzfy7xkn67uj4pfk3wugxl3lx3wr@y26ydci57iwi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sebastian,

On 6/23/25 2:21 PM, Sebastian Reichel wrote:
> Hi,
>
> On Wed, May 07, 2025 at 06:00:23PM -0700, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Add a helper function power_supply_get_by_fwnode() to retrieve
>> power_supply given a valid fwnode reference.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   drivers/power/supply/power_supply_core.c | 30 ++++++++++++++++++++++++++++++
>>   include/linux/power_supply.h             |  3 +++
>>   2 files changed, 33 insertions(+)
>>
>> diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/supply/power_supply_core.c
>> index 76c340b38015af0a67a0d91305e6242a8646bf53..ef6ba22b837b0b9463f9a3065425e2720f40b9eb 100644
>> --- a/drivers/power/supply/power_supply_core.c
>> +++ b/drivers/power/supply/power_supply_core.c
>> @@ -496,6 +496,36 @@ struct power_supply *power_supply_get_by_name(const char *name)
>>   }
>>   EXPORT_SYMBOL_GPL(power_supply_get_by_name);
>>   
>> +static int power_supply_match_device_by_fwnode(struct device *dev, const void *data)
>> +{
>> +	return dev->parent && dev_fwnode(dev->parent) == data;
>> +}
> This already exists as power_supply_match_device_fwnode().

Thanks for your review! I will update in the next revision


>
>> +
>> +/**
>> + * power_supply_get_by_fwnode() - Search for power supply given a fwnode ref.
>> + * @fwnode: fwnode reference
>> + *
>> + * If power supply was found, it increases reference count for the internal
>> + * power supply's device. The user should power_supply_put() after use.
>> + *
>> + * Return: Reference to power_supply node matching the fwnode on success or
>> + * NULL on failure.
>> + */
>> +struct power_supply *power_supply_get_by_fwnode(struct fwnode_handle *fwnode)
>> +{
>> +	struct power_supply *psy = NULL;
>> +	struct device *dev = class_find_device(&power_supply_class, NULL, fwnode,
>> +					       power_supply_match_device_by_fwnode);
>> +
>> +	if (dev) {
>> +		psy = dev_get_drvdata(dev);
>> +		atomic_inc(&psy->use_cnt);
>> +	}
>> +
>> +	return psy;
>> +}
>> +EXPORT_SYMBOL_GPL(power_supply_get_by_fwnode);
> And this is a 50% of power_supply_get_by_reference(), so the
> function should be updated to use power_supply_get_by_fwnode().

Agreed.


Thanks,

Amit


>
> Greetings,
>
> -- Sebastian
>
>>   /**
>>    * power_supply_put() - Drop reference obtained with power_supply_get_by_name
>>    * @psy: Reference to put
>> diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
>> index 6ed53b292162469d7b357734d5589bff18a201d0..a35b08bd368e9305554e1a608dc8e526983cfa12 100644
>> --- a/include/linux/power_supply.h
>> +++ b/include/linux/power_supply.h
>> @@ -801,10 +801,13 @@ extern void power_supply_unreg_notifier(struct notifier_block *nb);
>>   #if IS_ENABLED(CONFIG_POWER_SUPPLY)
>>   extern struct power_supply *power_supply_get_by_name(const char *name);
>>   extern void power_supply_put(struct power_supply *psy);
>> +extern struct power_supply *power_supply_get_by_fwnode(struct fwnode_handle *fwnode);
>>   #else
>>   static inline void power_supply_put(struct power_supply *psy) {}
>>   static inline struct power_supply *power_supply_get_by_name(const char *name)
>>   { return NULL; }
>> +static inline struct power_supply *power_supply_get_by_fwnode(struct fwnode_handle *fwnode)
>> +{ return NULL; }
>>   #endif
>>   #ifdef CONFIG_OF
>>   extern struct power_supply *power_supply_get_by_phandle(struct device_node *np,
>>
>> -- 
>> 2.49.0.987.g0cc8ee98dc-goog
>>
>>

