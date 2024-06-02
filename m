Return-Path: <devicetree+bounces-71588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B607D8D7596
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 15:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5630D1F21760
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 13:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB3B3BBE8;
	Sun,  2 Jun 2024 13:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fAiPucD5"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7013B78D
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 13:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717333922; cv=none; b=CNI7nmByeCkWJdqwitA4edMKIC8cBpgsSmAxqkxdJLuo+VDaK/eu1PJskC3XAJkOlUdpTFs5fiq4NfT8y3176+pmR6YXbBspYPa6siqGPnG5uWaiGu9J+imr4DDeL6AQM9cCQEUNdbXA3eFtH2BDc4tMJXiBFe+LhAh6BN+71bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717333922; c=relaxed/simple;
	bh=2GMUmJaCJgJWhPFJc+yWwe+VhrROglra3N0uKWLVOh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dtzm1V0ev90wzisR08P2y///jfV151bfXpk35aqCmp7HEQXzWVPeMvHuK2s3DucnrvUBE9CBKBPSr59qpR7np73ssTDhtDahCd6RwQmEZnsxXQblRC4d0FDhAWEN70LBfUXhL2zGUxcIVuKNnUmMYdFCQksws0fBxQ8UayyW66I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fAiPucD5; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1717333918;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U0XpR6MtB9rZpzO4h9gBQ8laqSK6cXB++GHXDIh/wbM=;
	b=fAiPucD5C4HaKy9+mHMK7xL4iliVR/2IiIoNYJ6aiDAAXDU1j84KlcZtaODxaY11DTxE7l
	tBGxCujt+RVPRsquD4KNlBgIvNQPgDo9bC6Y336MVvb29PM52j3d3KzNNXs8Ax1qliTNmQ
	JxluH+QFTPVm7yAsyOy0Csm1zwfTfaU=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-144-T-Q0SS4GOr2YTtCCMY5dUw-1; Sun, 02 Jun 2024 09:11:57 -0400
X-MC-Unique: T-Q0SS4GOr2YTtCCMY5dUw-1
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-a68c70ab413so70495566b.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 06:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717333916; x=1717938716;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U0XpR6MtB9rZpzO4h9gBQ8laqSK6cXB++GHXDIh/wbM=;
        b=U+dx1R2LvbkHQIeKDQkuS7kZc/IsPsJ6Bxyx7CmvswuPWWSnfLuQByl1h8bOKRkWKa
         W1g+oM5YqBAdqCoEGIgGR2KEFXGGdWntTm+gV0BDHrjetmDAKFxaOYNwXaq0ZkOuzERT
         uH6Yfu5EWVoAjN7RHenL00R6/4R1P/puRoyczpg5mczNVpfCjGKY+UXgMhmkEsOjvgSS
         U1hgWVMI48JjtSCvEnwOkiJ7Js6DkkvhByzWn0dYqXZUfNNqqiXVYT1S6IZ01ECjomH2
         XLXvdoP4/YMFGeN0vamRnsqZtbIVN6iBFlnER0mT54k5PdgiV650P0/auX92uyjISmO+
         v9kw==
X-Forwarded-Encrypted: i=1; AJvYcCUWfknZjRrFfiye+aU+ayYCo1mLrFOqdcAoOolJa15MKp1buZqU98ky77wTtezwnpuzi2alP9pwmjA9gCi5TxCWhjqaK8ypZNsjkw==
X-Gm-Message-State: AOJu0Yy76koqqlA2HH3LaZ+KT931o2nsqKAwP4Sfn6NsxnXGbo64pJV6
	XT6+RxYh+9rilL/oBIbtW3IoMCjKFL3+8IG2H1jt7jov2HP3AUqs8mhHS5jnjw2+QZisDRVFg89
	dKfmGBNGl0YIhauzYMOCjT5/nTx8bwGVkR6MPt7Aq6Z2cmF+42hOw9XySnZY=
X-Received: by 2002:a17:906:7d98:b0:a68:f43c:57dd with SMTP id a640c23a62f3a-a68f43c5841mr107344166b.23.1717333916411;
        Sun, 02 Jun 2024 06:11:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOZ1rq8RQPARbuxxDkwmIdMGn2ODnvAXC8CwKpjJc3umM3j7IBJTh7ebS9LrARQHHxc3xH1w==
X-Received: by 2002:a17:906:7d98:b0:a68:f43c:57dd with SMTP id a640c23a62f3a-a68f43c5841mr107341366b.23.1717333915865;
        Sun, 02 Jun 2024 06:11:55 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68f9ab9ebcsm70976166b.96.2024.06.02.06.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Jun 2024 06:11:55 -0700 (PDT)
Message-ID: <dbd8295c-a367-4c9d-9a0b-090790322f7d@redhat.com>
Date: Sun, 2 Jun 2024 15:11:54 +0200
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

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

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


