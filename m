Return-Path: <devicetree+bounces-192057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBADDAF143F
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED3244E74C8
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 11:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3D826C396;
	Wed,  2 Jul 2025 11:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="XyU9H6Zw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF9226AAB8
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 11:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456500; cv=none; b=qAHoe9UbPn3IJVKmkfxDQH6hDAIOT7gZ2DAi/xrQ+gO/g3vINdoQM/M4q9T7MWwDanUOg3XOrNPCqhMAdSNsKtAoj82sX6Gfx6PIMfjC2EPHVA9jyW2EYS2Qy4H/zKp8yBr9jrPJ7wsdeGBWxMgl7dzeyLeKMhijziHVul5eplg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456500; c=relaxed/simple;
	bh=pLB/CoHkptOL4qWVMaQUjQV5ZTKskQstiuecHdpzjpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTTPGP8z08X0o0R0iW3s40KA7k8WcGav38pGsOIdfP0FawQyIJBSRt4WFbz1GKa3PZWkQ8MllP0/yQFWZG26NhlB3FNYQivVCl+3fEwhanBlJZE1gYCb65+Il5Em6HSopAlsUdibFTI2eQVSMmNcz31aWObkB3yU/K6/PeyS6/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=XyU9H6Zw; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-450cfb79177so40292335e9.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 04:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751456497; x=1752061297; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GzZXJPE+pCDN2n4VgGUurGvnQ9PWiAa/jKqR630GwDM=;
        b=XyU9H6Zw1aG5keWErGbyoFWjRVrTo1hqfUrKHZIfidYmKS87DC/6k0IQg6Ams0l/3t
         6q1+jj51LVxjYD70W5IIlKhH42dzVrdRKagRPDVd7ijGd2ibCwXjlvsl0E4zQxwBumHO
         /ywWF+HffUZrTNOwY93qpX5yZUllgCNU/EwNpxWcmLU9jzXJrpl/vXht0V+O5+8nX3J9
         pP67r8wFXKu9U6d1T32qJZEQl+ag2NyahJpnwiPKmUVCWzD3byVoiX6AuzlOOI6ydxIZ
         X/5Cd8V2c3tZDUldojEldYkQHLzdHuRGPWEP0FzuWC9dzwblexrH/GyDjcTUJhNmTx2H
         EOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751456497; x=1752061297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GzZXJPE+pCDN2n4VgGUurGvnQ9PWiAa/jKqR630GwDM=;
        b=Xok0f73EHjkSG6D99xEqNgsJ8gMQRn0YRLCBlWfu3bBsY4fX0N7t3W4rTj9ka8n1LD
         lJJnzt90sx6MuUEhnXjFUhYadNkHd3X3nmvlT4mdRXGdC6tnK1mS+++UUaed5rFWYFpH
         wOsmC98tkRbDzQOXYpxmgPP7JAdzGllh2ltURJ/NHrFyZV6VG71TeepNpYWktxxXVbvI
         lSMMfU6fxGMSokzraC5koPk42z9xR49hY2457v8bBv75Je1vHWI+Wic59MtQXSaqePJ3
         4Sld3pYdPPwBqaHSy+uwUjlX1EfJpLz6x/oP8lNCD/Vvh5KgkW8SJQccs/CioEhd4hD/
         GvAg==
X-Forwarded-Encrypted: i=1; AJvYcCVIhAmUCkOqPEo2ED+h4OenjrQoaKxF7OnLoLl8Z9AxubTpHVmKnuiAqGrW7PCo5LORHJaQ8NTNcOg1@vger.kernel.org
X-Gm-Message-State: AOJu0YzECFPomQT5C6jC7IG0cdXMMUV1Our79tOdWFfqOuq/KGxTY7ms
	7gX8g4uPzneJZeZD+pdZvkOCfKGmgoOFyayjF5++mI5E2cfTz5SXD3Qt7TIqhf7waFI=
X-Gm-Gg: ASbGncsqjWLtvq5+hQJUDiYs/qHu4x7lIhphUroi2OrObEi4Z95Rtb1C7PciQU4+yXz
	TttnZNNrKt7vCc4B4AVqTnq+YPgW3DPBu0TgHwSpibxnUd979+C4zsy2jXP8dmNf7t7aS5yoIpx
	thuYEO3pZ2JvBSiXeWAxMm4eljEkgEbhwgW5C+hl1x1oN6Xl6FXdX+jIWvej1wF1qSK/XtyT5sk
	FwAdeIgLSbGcyWRXUP8oY+4ZxcEsuHoJKzDi+yuacYdPBeHilROKA64rdrYtHuy74XGP4ScpAXZ
	ayGgRwxz5Qn+kgi5UZFqa1fVN2qdCO8ovMXEl0eWSecPoASlw40UI+dBkDIJlpYePMBb+rgHFUF
	SG2jQ
X-Google-Smtp-Source: AGHT+IEPNXHtekgkaTeh2otpe/2mD8BVkUglqfnjvgS0sOGRxpc82/oHrtuGTxrVpXcyjzzBFMM9rg==
X-Received: by 2002:a05:6000:2406:b0:3a5:7944:c9b with SMTP id ffacd0b85a97d-3b1fe2dde08mr2085098f8f.16.1751456497314;
        Wed, 02 Jul 2025 04:41:37 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e59aaasm15549022f8f.83.2025.07.02.04.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 04:41:36 -0700 (PDT)
Date: Wed, 2 Jul 2025 13:41:26 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Shannon Nelson <shannon.nelson@amd.com>, Dave Jiang <dave.jiang@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>, 
	Petr Oros <poros@redhat.com>
Subject: Re: [PATCH net-next v12 04/14] dpll: zl3073x: Add support for
 devlink device info
Message-ID: <vhv3wdiaphtilm7w3v5iro4aojo5go5vlacwfmsycimxnljhsl@itc567adbkey>
References: <20250629191049.64398-1-ivecera@redhat.com>
 <20250629191049.64398-5-ivecera@redhat.com>
 <x23jvoo4eycl5whishhsy2qpb5qajsqcx36amltwkqwu5xuj7s@ghg47je4hbjt>
 <351c8eb7-26b2-4435-a6cf-6dac36e55ad9@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <351c8eb7-26b2-4435-a6cf-6dac36e55ad9@redhat.com>

Wed, Jul 02, 2025 at 01:38:03PM +0200, ivecera@redhat.com wrote:
>On 02. 07. 25 12:25 odp., Jiri Pirko wrote:
>> Sun, Jun 29, 2025 at 09:10:39PM +0200, ivecera@redhat.com wrote:
>> 
>> [...]
>> 
>> > +	snprintf(buf, sizeof(buf), "%lu.%lu.%lu.%lu",
>> > +		 FIELD_GET(GENMASK(31, 24), cfg_ver),
>> > +		 FIELD_GET(GENMASK(23, 16), cfg_ver),
>> > +		 FIELD_GET(GENMASK(15, 8), cfg_ver),
>> > +		 FIELD_GET(GENMASK(7, 0), cfg_ver));
>> > +
>> > +	return devlink_info_version_running_put(req, "cfg.custom_ver", buf);
>> 
>> Nit:
>> 
>> It's redundant to put "ver" string into version name. Also, isn't it
>> rather "custom_config" or "custom_cfg"?
>
>As per datasheet, this is configuration custom version.

This is UAPI, we define it and we should make sure it make sense.
Datasheet is sort of irrelevant.

