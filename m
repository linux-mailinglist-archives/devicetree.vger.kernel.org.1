Return-Path: <devicetree+bounces-57209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9752689C8BB
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 17:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74317B24757
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 15:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C792B1422A1;
	Mon,  8 Apr 2024 15:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="huI1xGg7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E101420D0
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 15:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712591373; cv=none; b=OdAto6YAePPDIliLk+J173bQ8591XOC6UyF2q+q84xoZLvXr+UoBSds/rmY5dY3Ql2EjvbLNSftISg+hqIY10Z8XUsUuNUtvgAQZg1Sq3I8S/XJlpBgXHOQezgoZWNNz44OTX4LwRbhmzrh995pS+RAG4PbiTG8fGmg8MTz+ES0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712591373; c=relaxed/simple;
	bh=yaW1o3dLTxU+nHyknfl9oRDoDgjL4H+DmUrxrfBpyVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R/CyypM3O3GA1JsDU9sJn0+xGeWILl4/oa/iTMAPFxprA7AzZ75hFvjLjqOEy/HxblgHBGUZctT4g8l2xybYF5NNkHiRdUw4bAmQHhvTx7U9GFlYRYk81WVrm/FHTZ3oj4IYny6F9mMtP4qFQr9j1xfUJ10P+bgC2lKdJs5Tz4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=huI1xGg7; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712591370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aq+x4xqLq4pAAg/k33LQ1RhKelaF9ovPxyd7As4pxGA=;
	b=huI1xGg7NfkQwAm3vhNN3CDJFJsgGPlksucljeT5sLKahNvRVQU+DxoRJrSnFQaQBC8/eD
	2Wtmaw0R3+cVWKyu52xv8JsRi4KzI5KcCMTcdighDIbEyrEfYUU0c9yGHjpJsI+uKy7dVi
	c0DJl010SOVglCkoi+pOQODN5hK045w=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-353-pcbAhmvoNpSGJMxGr5V7gg-1; Mon, 08 Apr 2024 11:49:28 -0400
X-MC-Unique: pcbAhmvoNpSGJMxGr5V7gg-1
Received: by mail-lj1-f199.google.com with SMTP id 38308e7fff4ca-2d871310b3aso25272141fa.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 08:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712591367; x=1713196167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aq+x4xqLq4pAAg/k33LQ1RhKelaF9ovPxyd7As4pxGA=;
        b=RuOQrQnqcYgS1Gix1buvZ7GoalYKzwzQ2FWW90lXRMuNe+bLcbTqG7FBannIj6H6VE
         Gd3NEd8sT5w4RtJtrkldnjo1cQEsldnMHE0PGkD+BZypxMtm1aOhownnXP0G2ujbJUqf
         /8vQLhqvA3+j/eoYydtk+ojJOytzTI0qw7DYuQC3NTfjeZzq05p8wgn9b9nYWpkSgUeJ
         5V/4MjMXGqeL522lYxvYkDzj6UcO9AuMfdZI/xD6YcLVfTO80Ee8kKE3FS92cZKyJ+up
         YnYlo5rOTbMWpUZRHagR3vvzvDUXPI1wJh+EdIVTeQJBUANKqCPz+sMfF/e97epBQYLQ
         +94A==
X-Forwarded-Encrypted: i=1; AJvYcCXs7ojje3408sgYON99HNqHxEpHck2MvBuya7eeiC06u0lTzWSXwFPCWfZIaHJ1oRmefvSl30fJUZ9mOgxl6WFUyhTSjG1/XQGy3w==
X-Gm-Message-State: AOJu0YyuxsRRM2HpeYEMoN+WIPkbV+U8dsoPDJ/SigVMsqkQhrTJKJzu
	1BHkykBNyGBDu73tq7CEaY0/7i49/WjRtdY6jbQqEpMpBVFPFwIsDVcU7jT+CtLz0Bopfrp+nxH
	Z9syZDAKucN2GVvAobcxp+8uASPyMtnHmxhexxWd41lg8SYX/fkPcCzcBxlo=
X-Received: by 2002:a2e:b0ca:0:b0:2d8:6fc4:d0b5 with SMTP id g10-20020a2eb0ca000000b002d86fc4d0b5mr7101172ljl.8.1712591367076;
        Mon, 08 Apr 2024 08:49:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXwz5nOfjCVtaG9Npl7SydKOwcqPra8+T0XksBaETEIabLaQ2cUX81joO7uiYU7q/cbcdT8g==
X-Received: by 2002:a2e:b0ca:0:b0:2d8:6fc4:d0b5 with SMTP id g10-20020a2eb0ca000000b002d86fc4d0b5mr7101148ljl.8.1712591366713;
        Mon, 08 Apr 2024 08:49:26 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id gu24-20020a170906f29800b00a51a018f318sm4572875ejb.55.2024.04.08.08.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 08:49:26 -0700 (PDT)
Message-ID: <94ba758b-b1c3-425e-a9ed-78e364fdb6f0@redhat.com>
Date: Mon, 8 Apr 2024 17:49:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] platform/x86: ideapad-laptop: add fn_lock_get/set
 functions
To: Gergo Koteles <soyer@irl.hu>, Ike Panhc <ike.pan@canonical.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1712063200.git.soyer@irl.hu>
 <dfd3a62a2b71339bbddf01e8a2ccd5ca92ce7202.1712063200.git.soyer@irl.hu>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <dfd3a62a2b71339bbddf01e8a2ccd5ca92ce7202.1712063200.git.soyer@irl.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 4/2/24 3:21 PM, Gergo Koteles wrote:
> The FnLock is retrieved and set in several places in the code.
> 
> Move details into ideapad_fn_lock_get and ideapad_fn_lock_set functions.
> 
> Signed-off-by: Gergo Koteles <soyer@irl.hu>

> ---
>  drivers/platform/x86/ideapad-laptop.c | 38 +++++++++++++++++++--------
>  1 file changed, 27 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/ideapad-laptop.c
> index 901849810ce2..529df08af548 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -513,11 +513,8 @@ static ssize_t fan_mode_store(struct device *dev,
>  
>  static DEVICE_ATTR_RW(fan_mode);
>  
> -static ssize_t fn_lock_show(struct device *dev,
> -			    struct device_attribute *attr,
> -			    char *buf)
> +static int ideapad_fn_lock_get(struct ideapad_private *priv)
>  {
> -	struct ideapad_private *priv = dev_get_drvdata(dev);
>  	unsigned long hals;
>  	int err;
>  
> @@ -525,7 +522,27 @@ static ssize_t fn_lock_show(struct device *dev,
>  	if (err)
>  		return err;
>  
> -	return sysfs_emit(buf, "%d\n", !!test_bit(HALS_FNLOCK_STATE_BIT, &hals));
> +	return !!test_bit(HALS_FNLOCK_STATE_BIT, &hals);
> +}
> +
> +static int ideapad_fn_lock_set(struct ideapad_private *priv, bool state)
> +{
> +	return exec_sals(priv->adev->handle,
> +		state ? SALS_FNLOCK_ON : SALS_FNLOCK_OFF);
> +}
> +
> +static ssize_t fn_lock_show(struct device *dev,
> +			    struct device_attribute *attr,
> +			    char *buf)
> +{
> +	struct ideapad_private *priv = dev_get_drvdata(dev);
> +	int brightness;
> +
> +	brightness = ideapad_fn_lock_get(priv);
> +	if (brightness < 0)
> +		return brightness;
> +
> +	return sysfs_emit(buf, "%d\n", brightness);
>  }
>  
>  static ssize_t fn_lock_store(struct device *dev,
> @@ -540,7 +557,7 @@ static ssize_t fn_lock_store(struct device *dev,
>  	if (err)
>  		return err;
>  
> -	err = exec_sals(priv->adev->handle, state ? SALS_FNLOCK_ON : SALS_FNLOCK_OFF);
> +	err = ideapad_fn_lock_set(priv, state);
>  	if (err)
>  		return err;
>  
> @@ -1709,7 +1726,6 @@ static void ideapad_wmi_notify(struct wmi_device *wdev, union acpi_object *data)
>  {
>  	struct ideapad_wmi_private *wpriv = dev_get_drvdata(&wdev->dev);
>  	struct ideapad_private *priv;
> -	unsigned long result;
>  
>  	mutex_lock(&ideapad_shared_mutex);
>  
> @@ -1722,11 +1738,11 @@ static void ideapad_wmi_notify(struct wmi_device *wdev, union acpi_object *data)
>  		ideapad_input_report(priv, 128);
>  		break;
>  	case IDEAPAD_WMI_EVENT_FN_KEYS:
> -		if (priv->features.set_fn_lock_led &&
> -		    !eval_hals(priv->adev->handle, &result)) {
> -			bool state = test_bit(HALS_FNLOCK_STATE_BIT, &result);
> +		if (priv->features.set_fn_lock_led) {
> +			int brightness = ideapad_fn_lock_get(priv);
>  
> -			exec_sals(priv->adev->handle, state ? SALS_FNLOCK_ON : SALS_FNLOCK_OFF);
> +			if (brightness >= 0)
> +				ideapad_fn_lock_set(priv, brightness);
>  		}
>  
>  		if (data->type != ACPI_TYPE_INTEGER) {


