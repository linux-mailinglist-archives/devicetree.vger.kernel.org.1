Return-Path: <devicetree+bounces-96993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 073A396051E
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 11:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B8EE1C22256
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 09:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC2419AD6E;
	Tue, 27 Aug 2024 09:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CpCi4aGf"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10BE199E9B
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 09:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724749651; cv=none; b=DjMiFjkTLxphJgASLiG9Tlp+hd8Cm0iyi2JbbUfTxfiWnaslHaRSLuidhsTYTRs0dlNDJ+BREqeozFni/Z62ibeJb4fQeSpIsfsd7J25roNlMbD5U41KcPq7zQK93fj7AHJXw4VZQSZ9USL78URMCriNMLvNO4YxJDokC+0e1hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724749651; c=relaxed/simple;
	bh=PKEN6I5V8pypNB6zwLv46ZWR3A6nnO0DXd+d/r8UWLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UzPY5XLPrVYlz3szUm6llEP6xgNFdtXuU3N3OMXA5R/ZMr2zdXhkvAPThduR/cg1hdOCrYUoO4cyjajvE/vbZviIYobGd+UwkYUWQc87wChFktqLzh7CXrKIkR8LN7vx54cpxGLkagqZ9MPmt3UwqnTirmhPSOl8TRWZh2jjHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CpCi4aGf; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724749648;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l3k5aXgmeHpOgCqavu3RPvmVi3OTsmxyK+VkxJKU+yU=;
	b=CpCi4aGftTvCNZpk05NHAvpunsDdn4+re6pn8b9lPerSKwNacTu7w5v1pRgjTvSoEt0mW8
	HjSlrkTJpIO+/u/QKVy8ZlMwn1qfmIHaLI4WFNqeoBk9JEqPAnPl25vVEj2s017n7oo8FJ
	gH4bx8dHLHepAzTin8u9k/OinZXLbnE=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-18-XGHbZkzYOcK8w4-qphZP-g-1; Tue, 27 Aug 2024 05:07:23 -0400
X-MC-Unique: XGHbZkzYOcK8w4-qphZP-g-1
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-2f3f9517948so48255041fa.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 02:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724749642; x=1725354442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l3k5aXgmeHpOgCqavu3RPvmVi3OTsmxyK+VkxJKU+yU=;
        b=tN19Uljea8KHU0ezNlbQT5g0GPXkwgdTO950s/8okb9GeCtqtpacIC018PgQjqLiTg
         hErE1Y1QUSm40Y95tZ0MLexVwj4ZQniJhCG4vMV5KVNAvFHtiN0lRRieIVgM3Nw6w1Ut
         ymWTTv44YekwS6MosSjKnLidoio/NlEHhPDe4Rgv+9/gTHPWzt7uLIscv6+mv9gi9TW/
         zSDYDc2vsLEgBpna5e79/Jprmhxzs3UIMywcwQk6IYsFfcmtrgpnKwTf527gEOAzwr9J
         qj5K5lo9n8YEpPYW6u6FDp5IME+qnK4eHVFlGWs7sYJWd+Oai9fROGeSQCgKiUQQWGRg
         DjdA==
X-Forwarded-Encrypted: i=1; AJvYcCUfW5b/WQ2dR5BaiLQNE8eoImODtgYD8/aTq2WPzRKvCmVpP5xxaGcBnax61Y2urs0QkbkF2TUHdd0u@vger.kernel.org
X-Gm-Message-State: AOJu0YxNAGxasxxQmnZIO7EHWtyRo1lcMiURNERIuWgwBGkp39oKKLoZ
	qlY2C/KEk9QYru4zhydhYj3LvLN2LXxZDxH0608J2+leWk8zT7dGi96EQreCBDkkqXDu+/AlQwe
	+urmXGbmLIgY1fJDZHIyqjU+1mNglA1LvHtgiPKJ1v12+qAT5lOaTBALjYq8=
X-Received: by 2002:a05:651c:54e:b0:2ef:2c0f:283e with SMTP id 38308e7fff4ca-2f514a2fd6amr14686191fa.12.1724749641624;
        Tue, 27 Aug 2024 02:07:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEel0jovheZHux9Pox4ntorGH0rGVklDEPrOVvhQYHt58E5EJzmLItmotwzMzG3AI3lA3LU+A==
X-Received: by 2002:a05:651c:54e:b0:2ef:2c0f:283e with SMTP id 38308e7fff4ca-2f514a2fd6amr14685861fa.12.1724749640928;
        Tue, 27 Aug 2024 02:07:20 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0bb1c280dsm774115a12.3.2024.08.27.02.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 02:07:20 -0700 (PDT)
Message-ID: <4dab4f36-309d-4b95-8b01-84963ca08d16@redhat.com>
Date: Tue, 27 Aug 2024 11:07:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] platform/surface: Add OF support
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Len Brown <lenb@kernel.org>, Maximilian Luz <luzmaximilian@gmail.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <quic_kdybcio@quicinc.com>
References: <20240814-topic-sam-v3-0-a84588aad233@quicinc.com>
 <20240814-topic-sam-v3-3-a84588aad233@quicinc.com>
 <ZszrjQChQ2aS5YjV@surfacebook.localdomain>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZszrjQChQ2aS5YjV@surfacebook.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andy,

Thank you for the review.

Note this has already been merged though.

Still there are some good suggestions here for a follow-up
cleanup patch.

Regards,

Hans


On 8/26/24 10:54 PM, Andy Shevchenko wrote:
> Wed, Aug 14, 2024 at 12:27:27PM +0200, Konrad Dybcio kirjoitti:
>> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
>>
>> Add basic support for registering the aggregator module on Device Tree-
>> based platforms. These include at least three generations of Qualcomm
>> Snapdragon-based Surface devices:
>>
>> - SC8180X / SQ1 / SQ2: Pro X,
>> - SC8280XP / SQ3: Devkit 2023, Pro 9
>> - X Elite: Laptop 7 / Pro11
>>
>> Thankfully, the aggregators on these seem to be configured in an
>> identical way, which allows for using these settings as defaults and
>> no DT properties need to be introduced (until that changes, anyway).
>>
>> Based on the work done by Maximilian Luz, largely rewritten.
> 
> ...
> 
>>  	sdev->dev.fwnode = fwnode_handle_get(node);
>> +	sdev->dev.of_node = to_of_node(node);
> 
> Please, use device_set_node() instead of those two.
> 
> ...
> 
>> +static int ssam_controller_caps_load(struct device *dev, struct ssam_controller_caps *caps)
>> +{
> 
>> +	acpi_handle handle = ACPI_HANDLE(dev);
> 
> It's a bit non-standard way to check if we run on DT or ACPI. The others (most
> of them?) do something like this:
> 
> 	struct fwnode_handle *fwnode = dev_fwnode(...);
> 
> 	if (is_of_node(fwnode))
> 		return X;
> 	if (is_acpi_node(fwnode)) // also more precise _device or _data variant
> 		return Y;
> 
> 	return ERROR;
> 
>> +	/* Set defaults. */
>> +	caps->ssh_power_profile = U32_MAX;
>> +	caps->screen_on_sleep_idle_timeout = U32_MAX;
>> +	caps->screen_off_sleep_idle_timeout = U32_MAX;
>> +	caps->d3_closes_handle = false;
>> +	caps->ssh_buffer_size = U32_MAX;
>> +
>> +	if (handle)
>> +		return ssam_controller_caps_load_from_acpi(handle, caps);
> 
> Yeah, I see that you use handle here, that's why it's up to you how to proceed
> with that. 
> 
>> +	else
>> +		return ssam_controller_caps_load_from_of(dev, caps);
> 
> But just note that we have 4 options for fwnode type here and this covers 3 and
> I don't know if you ever have an ACPI data node or software node and what you
> want to do with that.
> 
>> +}
> 
> ...
> 
>>  	gpiod = gpiod_get(dev, "ssam_wakeup-int", GPIOD_ASIS);
>> -	if (IS_ERR(gpiod))
>> -		return PTR_ERR(gpiod);
>> -
>> -	irq = gpiod_to_irq(gpiod);
>> -	gpiod_put(gpiod);
>> +	if (IS_ERR(gpiod)) {
>> +		irq = fwnode_irq_get(dev_fwnode(dev), 0);
>> +	} else {
>> +		irq = gpiod_to_irq(gpiod);
>> +		gpiod_put(gpiod);
>> +	}
> 
> Can't you try fwnode_irq_get_byname() followed by fwnode_irq_get()? And why do
> you need unnamed variant to begin with? As far as I understand it's pure DT and
> names are there, no?
> 
> ...
> 
>>  #include <linux/kernel.h>
>>  #include <linux/kref.h>
>>  #include <linux/module.h>
>> +#include <linux/of.h>
> 
> I do not see how you use this. You probably missed mod_devicetable.h.
> 
>> +#include <linux/platform_device.h>
>>  #include <linux/pm.h>
>>  #include <linux/serdev.h>
>>  #include <linux/sysfs.h>
> 
> ...
> 
>> +	/*
>> +	 * When using DT, we have to register the platform hub driver manually,
>> +	 * as it can't be matched based on top-level board compatible (like it
>> +	 * does the ACPI case).
>> +	 */
>> +	if (!ssh) {
>> +		struct platform_device *ph_pdev =
>> +			platform_device_register_simple("surface_aggregator_platform_hub",
>> +							0, NULL, 0);
>> +		if (IS_ERR(ph_pdev))
>> +			return dev_err_probe(dev, PTR_ERR(ph_pdev),
>> +					     "Failed to register the platform hub driver\n");
> 
>> +	}
>> +
>> +	if (ssh)
> 
> Simply 'else' ? And making condition positive?
> 
> ...
> 
>> -static const struct acpi_device_id ssam_serial_hub_match[] = {
>> +static const struct acpi_device_id ssam_serial_hub_acpi_match[] = {
>>  	{ "MSHW0084", 0 },
>>  	{ },
> 
> At some point, please drop that 0 part above and the comma in the terminator
> entry.
> 
>>  };
>> -MODULE_DEVICE_TABLE(acpi, ssam_serial_hub_match);
>> +MODULE_DEVICE_TABLE(acpi, ssam_serial_hub_acpi_match);
> 
> Do you really need this renaming?
> 
> ...
> 
>> +#ifdef CONFIG_OF
>> +static const struct of_device_id ssam_serial_hub_of_match[] = {
>> +	{ .compatible = "microsoft,surface-sam", },
> 
> No inner comma.
> 
>> +	{ },
> 
> No comma for the terminator.
> 
>> +};
>> +MODULE_DEVICE_TABLE(of, ssam_serial_hub_of_match);
>> +#endif
>>  
>>  static struct serdev_device_driver ssam_serial_hub = {
>>  	.probe = ssam_serial_hub_probe,
>>  	.remove = ssam_serial_hub_remove,
>>  	.driver = {
>>  		.name = "surface_serial_hub",
>> -		.acpi_match_table = ssam_serial_hub_match,
>> +		.acpi_match_table = ACPI_PTR(ssam_serial_hub_acpi_match),
> 
> No, please do not use ACPI_PTR(), it's more harmful than helpful.
> 
>> +		.of_match_table = of_match_ptr(ssam_serial_hub_of_match),
> 
> There is ongoing task to drop of_match_ptr(), so for ACPI_PTR().
> 
>>  		.pm = &ssam_serial_hub_pm_ops,
>>  		.shutdown = ssam_serial_hub_shutdown,
>>  		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> 
> ...
> 
>> --- a/drivers/platform/surface/surface3_power.c
>> +++ b/drivers/platform/surface/surface3_power.c
>> @@ -479,6 +479,7 @@ static int mshw0011_install_space_handler(struct i2c_client *client)
>>  	}
>>  
>>  	acpi_dev_clear_dependencies(adev);
>> +
>>  	return 0;
>>  }
> 
> Stray change.
> 
> ...
> 
>> +/* Devices for Surface Laptop 7. */
>> +static const struct software_node *ssam_node_group_sl7[] = {
>> +	&ssam_node_root,
>> +	&ssam_node_bat_ac,
>> +	&ssam_node_bat_main,
>> +	&ssam_node_tmp_perf_profile_with_fan,
>> +	&ssam_node_fan_speed,
>> +	&ssam_node_hid_sam_keyboard,
>> +	/* TODO: evaluate thermal sensors devices when we get a driver for that */
>> +	NULL,
> 
> At some point please drop commas at the terminator entries. This will make code
> more robust against quite unlikely but potential rebase-like mistakes (when a
> new entry is added behind the terminator).
> 
>> +};
> 
> ...
> 
>> -static const struct acpi_device_id ssam_platform_hub_match[] = {
>> +static const struct acpi_device_id ssam_platform_hub_acpi_match[] = {
>>  	/* Surface Pro 4, 5, and 6 (OMBR < 0x10) */
>>  	{ "MSHW0081", (unsigned long)ssam_node_group_gen5 },
>>  
>> @@ -400,18 +413,41 @@ static const struct acpi_device_id ssam_platform_hub_match[] = {
>>  
>>  	{ },
>>  };
>> -MODULE_DEVICE_TABLE(acpi, ssam_platform_hub_match);
>> +MODULE_DEVICE_TABLE(acpi, ssam_platform_hub_acpi_match);
> 
> If renaming is needed, it can be done in a separate patch.
> 
>> +#ifdef CONFIG_OF
>> +static const struct of_device_id ssam_platform_hub_of_match[] = {
>> +	/* Surface Laptop 7 */
>> +	{ .compatible = "microsoft,romulus13", (void *)ssam_node_group_sl7 },
>> +	{ .compatible = "microsoft,romulus15", (void *)ssam_node_group_sl7 },
>> +	{ },
>> +};
>> +#endif
> 
> As per above.
> 
> ...
> 
>>  static int ssam_platform_hub_probe(struct platform_device *pdev)
>>  {
>>  	const struct software_node **nodes;
>> +	const struct of_device_id *match;
>> +	struct device_node *fdt_root;
>>  	struct ssam_controller *ctrl;
>>  	struct fwnode_handle *root;
>>  	int status;
>>  
>>  	nodes = (const struct software_node **)acpi_device_get_match_data(&pdev->dev);
> 
> Hmm... Why this doesn't use simple device_get_match_data()?
> 
>> -	if (!nodes)
>> -		return -ENODEV;
>> +	if (!nodes) {
>> +		fdt_root = of_find_node_by_path("/");
>> +		if (!fdt_root)
>> +			return -ENODEV;
>> +
>> +		match = of_match_node(ssam_platform_hub_of_match, fdt_root);
>> +		of_node_put(fdt_root);
>> +		if (!match)
>> +			return -ENODEV;
>> +
>> +		nodes = (const struct software_node **)match->data;
> 
> This is quite strange! Where are they being defined?
> 
>> +		if (!nodes)
>> +			return -ENODEV;
>> +	}
> 
> ...
> 
>> +MODULE_ALIAS("platform:surface_aggregator_platform_hub");
> 
> Can it be platfrom device ID table instead? But do you really need it?
> 


