Return-Path: <devicetree+bounces-71593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3A48D75AC
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 15:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAE491F21526
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 13:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391453BBC1;
	Sun,  2 Jun 2024 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WVfc7J+W"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59EC3C6AC
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 13:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717334592; cv=none; b=n4kMN3dqHlwuq90I/+1WupasMLq/r2xAlaPxEOIyH7LuFpphrnQlH5zDFtbjQIarDAO/w6hl2D/Bb9rsWpb/J3ppDkvvUsQQXC3kT/RxMAmgwHixHAcOiwk2yuTgpAX3QkeW2UR2pYL+Tri+gJD7Qocf42Mjo1biz3X8vt6f958=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717334592; c=relaxed/simple;
	bh=vqOvPpShz9c4/2fZ9ulQIq1neCkg/aGM/PXFpXXYXnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H/+SfvEygv58gPX1Bee6Zr1IAjV+l5rTeP/qHtzmDUYyhQG0Msn8AMWa6CijwHbhIpRvOjkFp8iRZPMc3gx9myZJzT50372EgNY3pZj67NxlI433dZZ+D3Snsf8Sf4hRFZqSFBn7rEMD0EjjSOuDqN2N1z29mRCznnXwPPQh+e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WVfc7J+W; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1717334589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zm40TjPLoYzCa0pq6+pwu4O/kjQl3e30AsjOxEDak28=;
	b=WVfc7J+Wy+/GNJwk29kJDbSr+IR+WNT8Nmt9VifvkZ35CepHVFtqhicCurZrOFNowKc1m/
	fjoXvIBIFEvymHuMLKbSEReaghEmaxBEc0VSYCkliGNZlFXGsg5BTSdyTqDaJQTaLUKSbG
	H+KPi9lCU0DGoL+OpdTVfK8G8msfbC8=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-5HD_qbhXPQqsiM9jlVwXaw-1; Sun, 02 Jun 2024 09:23:07 -0400
X-MC-Unique: 5HD_qbhXPQqsiM9jlVwXaw-1
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a68ce1ac733so45458266b.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 06:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717334586; x=1717939386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zm40TjPLoYzCa0pq6+pwu4O/kjQl3e30AsjOxEDak28=;
        b=lhgPzN85+gne+MOpWMP9y6TEO1qFN2WBg731zIzqi/NZHvTWdS7NLvYnMUxXoVx1sN
         PyvHRUrfkK8UE63nbHcnMl/Y+T4Ek1IzygeSdjFNRTXojKlv0VQX3nPrlf8A3ZhrE0Yz
         BVcITrbH3F3+G7WoRweHdAStFFfU+bss88aB4AL38P7YwHtbwehuBZiVZvEzvkS7ZIHv
         9JYic8LIVkWwvBbmGk1+N4GulIPNOcDgV6+k0J15lnqt6xGwTDrRaFWQBIC21q/RcitM
         m13os0NAtGjmm82b1T68LUItFsqAyiGHHZpDJhxd0I4gu0cc2sPh/+K5M/denjCpmnGr
         tTBA==
X-Forwarded-Encrypted: i=1; AJvYcCWFtcQd3dTTA7fwZd7M4eTVrMpnc3fv/lnVYPSJjTE+DV7qdBvj6Ev+lJH0ultix+YyM+DbNhxbeYiFWo7ZarubP3A+pmPntS/JvA==
X-Gm-Message-State: AOJu0YwQqqBHvbzverHIrMYKjZDHHqfQydvR+YyYRFMIRigEXsXrg6Am
	AWkbgPcjnBgDzEyb+zJAzaRwa6En31eHZeoz7bGY1LwBaGIE4EpdFOTgk3wyWtCZDfEXmVhfBeD
	QsBwkg/FZmwO4nd4pQzHrs2kUMlpF5QOKEN5Tp+zAZLm6Mcn21OMC8fMfJb8=
X-Received: by 2002:a17:906:a098:b0:a65:36cd:c7b7 with SMTP id a640c23a62f3a-a682198281dmr408165866b.56.1717334586521;
        Sun, 02 Jun 2024 06:23:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuyqfIYOG9J9rpYr5XZ8Uec9LHEAnWTSmDXK7waAs/CbXOhMfOQC9Rj6SVHmiLfDu5sov9Ow==
X-Received: by 2002:a17:906:a098:b0:a65:36cd:c7b7 with SMTP id a640c23a62f3a-a682198281dmr408164466b.56.1717334585996;
        Sun, 02 Jun 2024 06:23:05 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a69018adad6sm46286466b.97.2024.06.02.06.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Jun 2024 06:23:05 -0700 (PDT)
Message-ID: <2bd7e800-5449-4c09-baf3-74af4c9f0065@redhat.com>
Date: Sun, 2 Jun 2024 15:23:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] Input: novatek-nvt-ts: replace generic i2c device
 id with specific IC variant
To: joelselvaraj.oss@gmail.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20240601-nvt-ts-devicetree-regulator-support-v5-0-aa9bf986347d@gmail.com>
 <20240601-nvt-ts-devicetree-regulator-support-v5-1-aa9bf986347d@gmail.com>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240601-nvt-ts-devicetree-regulator-support-v5-1-aa9bf986347d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 6/1/24 10:44 PM, Joel Selvaraj via B4 Relay wrote:
> From: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> 
> This is done in preparation to introduce other variants of the Novatek NVT
> touchscreen controller that can be supported by the driver.
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>

Also:

Acked-by: Hans de Goede <hdegoede@redhat.com>

for merging the drivers/platform/x86/x86-android-tablets/other.c change
through the input tree.

Regards,

Hans




> ---
>  drivers/input/touchscreen/novatek-nvt-ts.c       | 2 +-
>  drivers/platform/x86/x86-android-tablets/other.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/novatek-nvt-ts.c b/drivers/input/touchscreen/novatek-nvt-ts.c
> index 1a797e410a3fa..9bee3a0c122fb 100644
> --- a/drivers/input/touchscreen/novatek-nvt-ts.c
> +++ b/drivers/input/touchscreen/novatek-nvt-ts.c
> @@ -278,7 +278,7 @@ static int nvt_ts_probe(struct i2c_client *client)
>  }
>  
>  static const struct i2c_device_id nvt_ts_i2c_id[] = {
> -	{ "NVT-ts" },
> +	{ "nt11205-ts" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(i2c, nvt_ts_i2c_id);
> diff --git a/drivers/platform/x86/x86-android-tablets/other.c b/drivers/platform/x86/x86-android-tablets/other.c
> index eb0e55c69dfed..129273df0fdeb 100644
> --- a/drivers/platform/x86/x86-android-tablets/other.c
> +++ b/drivers/platform/x86/x86-android-tablets/other.c
> @@ -40,7 +40,7 @@ static const struct x86_i2c_client_info acer_b1_750_i2c_clients[] __initconst =
>  	{
>  		/* Novatek NVT-ts touchscreen */
>  		.board_info = {
> -			.type = "NVT-ts",
> +			.type = "nt11205-ts",
>  			.addr = 0x34,
>  			.dev_name = "NVT-ts",
>  		},
> 


