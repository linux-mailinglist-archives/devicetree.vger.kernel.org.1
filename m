Return-Path: <devicetree+bounces-69342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EE08CFA96
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:53:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD2391F216FB
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B4C381A4;
	Mon, 27 May 2024 07:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CPFGqzbr"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16648C152
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 07:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716796432; cv=none; b=gSBqxnWM1rHW7igyhPfcn8U8WYaEJeeOfVI0VYPULF0dZd+2HqPWNpjnwaR58H8Ec2cM+9wRliedZb8thEgyOemtRrhfIn7Uyqm9R209rf07mc/0Yr34aVo4Q6pvKt7xhnPC4QFH+0812ecKKafOaSid8u4PdnZWFETgTCOeTAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716796432; c=relaxed/simple;
	bh=AWDlsUuU3fzJ88Pnde1vxfBNUMwQ9EQS+ojm3Zkxj0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gzBQ/CAi/1BP0LjZcdBKco3DxL25jzHQXK2bvU7Nwj2B/jD4pOhIw4ve5HeUfaF/tBNsAfja5GYQMwRCNukUjFXDT/FLWKTy4KBiFshGFIMkADGh1XVW3rSsAk1woj05v2BxX+2gAwgQefYXLjpcdsEjkQB4OA8OfmWU2poA1aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CPFGqzbr; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716796429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yJjt/5eGKxcl58g00wlGk6b60hoVQeRf0JP1mWdixGc=;
	b=CPFGqzbrg6W4/jNNrbfTeL9d6mkh64YSGnj4ACaqyYGwSxZwgD+g0F0Fjn+lTQwpvvTNID
	W1UXLAWrmTpJ6GfslAAuY8Rz/ofWOdYb8/wOnxaBVwy6UbjCo71rX/9kr1K07W0FGxKSkp
	kRetDcgPt/GRfjzBr3U/38pXdCRQVhE=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-361-QBK_yDi1NCeu9FcO8mSTgQ-1; Mon, 27 May 2024 03:53:47 -0400
X-MC-Unique: QBK_yDi1NCeu9FcO8mSTgQ-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-5798d7ed735so664570a12.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 00:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716796426; x=1717401226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yJjt/5eGKxcl58g00wlGk6b60hoVQeRf0JP1mWdixGc=;
        b=nXmSZpxYz0hi3vojsldyaZGVgS8P636O83gMagHzgTmPpjf8SNWRIFE56lJ67smjke
         EexLT6r16cjvp0EODBe2Towy4qIy19+gAuUrgby0eSL1aBVPHAqSH9mxzV6/N90yrdmx
         rzJWC0dJDcjvQVwplGwdDN61SxiNVdNpjsUjvRwYcmNnzATKcCa9Iv2GdXeVeh8rHEjr
         hUWfJeTIRiopecGSenPrq1IwSaDZApT5+pMu47nnLXTBZOJol8m8Vqx+9W+G25QuOOgg
         eUQJJVKuNbsUCV4xYXrTk4BtAV7vUuC3efZqeyBp52OD1NM6Ku/0HyxtpGVDoLfEiq7z
         TAEQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9J89xuRDIahKrq0kkfOAi68YdHoKcyUnDxVDjca8LBaKy2KWeZD6AN5ypNrMRd1z4Bc4hdaihsdgFiLRMGQ60oW/yqxnxaotN1Q==
X-Gm-Message-State: AOJu0YyhgjFZoa9ovnZPYdUpkm7cEO0q17QCPBDOBQOyNmOthQ5BSwIC
	C+j1iotoT29r/ffRr490Yn2CWd9bgHEJB6ubYds+5X4fEegWpdZQYc/jq4sU7z0a4xHnH1KVjEO
	wYN+uEOfSkkxUlzUEY8FF0vdO831UBpFRHtH2h1TjjxeAPxK6sUeW2ZzWCzc=
X-Received: by 2002:a50:a402:0:b0:572:cfa4:3ccb with SMTP id 4fb4d7f45d1cf-578519160c0mr5264442a12.8.1716796426438;
        Mon, 27 May 2024 00:53:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYComI9Zs83TUUKd5sk4qJypKkiyjT/f+YVwWOi2cC0zev/7gmccLbH/HmGbUWT9nHKsPWgA==
X-Received: by 2002:a50:a402:0:b0:572:cfa4:3ccb with SMTP id 4fb4d7f45d1cf-578519160c0mr5264429a12.8.1716796425953;
        Mon, 27 May 2024 00:53:45 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5785234b3e3sm5408865a12.19.2024.05.27.00.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 00:53:45 -0700 (PDT)
Message-ID: <0fdc6519-5d34-4191-a41d-13f49463ad17@redhat.com>
Date: Mon, 27 May 2024 09:53:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] Input: novatek-nvt-ts: replace generic i2c device
 id with specific IC variant
To: joelselvaraj.oss@gmail.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20240526-nvt-ts-devicetree-regulator-support-v3-0-aa88d10ccd9a@gmail.com>
 <20240526-nvt-ts-devicetree-regulator-support-v3-1-aa88d10ccd9a@gmail.com>
Content-Language: en-US
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240526-nvt-ts-devicetree-regulator-support-v3-1-aa88d10ccd9a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 5/27/24 5:26 AM, Joel Selvaraj via B4 Relay wrote:
> From: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> 
> This is done in preparation to introduce other variants of the Novatek NVT
> touchscreen controller that can be supported by the driver.
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> ---
>  drivers/input/touchscreen/novatek-nvt-ts.c       | 2 +-
>  drivers/platform/x86/x86-android-tablets/other.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/novatek-nvt-ts.c b/drivers/input/touchscreen/novatek-nvt-ts.c
> index 1a797e410a3fa..224fd112b25a9 100644
> --- a/drivers/input/touchscreen/novatek-nvt-ts.c
> +++ b/drivers/input/touchscreen/novatek-nvt-ts.c
> @@ -278,7 +278,7 @@ static int nvt_ts_probe(struct i2c_client *client)
>  }
>  
>  static const struct i2c_device_id nvt_ts_i2c_id[] = {
> -	{ "NVT-ts" },
> +	{ "NT11205-ts" },

I know this was my own suggestion, but it would be better to make this lower case ("nt11205-ts"),
I'll explain why in my review of patch 3/3.
 
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(i2c, nvt_ts_i2c_id);
> diff --git a/drivers/platform/x86/x86-android-tablets/other.c b/drivers/platform/x86/x86-android-tablets/other.c
> index eb0e55c69dfed..5ecee6e66fb4d 100644
> --- a/drivers/platform/x86/x86-android-tablets/other.c
> +++ b/drivers/platform/x86/x86-android-tablets/other.c
> @@ -40,7 +40,7 @@ static const struct x86_i2c_client_info acer_b1_750_i2c_clients[] __initconst =
>  	{
>  		/* Novatek NVT-ts touchscreen */
>  		.board_info = {
> -			.type = "NVT-ts",
> +			.type = "NT11205-ts",

This then also needs to belower case.

>  			.addr = 0x34,
>  			.dev_name = "NVT-ts",
>  		},
> 

Regards,

Hans


