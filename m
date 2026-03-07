Return-Path: <devicetree+bounces-272493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOYhMPpYrGnzowEAu9opvQ
	(envelope-from <devicetree+bounces-272493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:57:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D718422CC55
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 17:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 67A4A3017005
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 16:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB825331A43;
	Sat,  7 Mar 2026 16:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lrLeKo5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A832E6BD
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 16:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772902627; cv=none; b=d6U49KnVVa7774MqGpeMiFHGSctA0BqpDuv5pu4I37roFZFZKLKFMHrt6e1oYPEfuSqwSfMhfFKnhPpS6C9vvOcxkZnC50cAc/KamEBL2Bn9Aq8L+DipYE0ZuQ2uLf5hgR0932t1fy2narS5mKWyinXQdiHKPS7qdx7mnPFe9d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772902627; c=relaxed/simple;
	bh=aatrlOiGoA39oFJftX99q90aQlHSCQn8nrpZj9H4bPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ha76xD8XxcuKikjsdunNwOk07gH9U6IPiUbG9Ouli0C9ZzDtxiaZcBTuKgdVdYUtrGVzgLjehRL8hCxyb0B9yy6W9RSzYTD2QBta1Kcu2yeBlAXfg78rqaZRmic46Hygv9j9MkbKF1b73mt2OwHZjLDiWU6PTCmo1jWRri8sGME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lrLeKo5h; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7d556c1a79eso11779586a34.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 08:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772902624; x=1773507424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N17bWKAVNic/QJp0Klj6senGm3Phl6tbrkoAFBQxBUc=;
        b=lrLeKo5h0RtuGv/OBq/FHIqmkn5ZFixwXywClzHs2fXLSVqmy8cA/ZQ/IwzMWcbMZU
         G2SCPY0fDNYliJKdwdFx5zqgKQJMtLONg7xTc8sL4tivGAdcai7fkqNW89bAd+G5epTk
         ip1KAxviDJHURDMpsJeH4a/o1zCpAqC8yCvNbXUI9PDLkpGxd9I8JccEMIARwvY8j0Mf
         Iap03fZ0QffiUXCGfAp/H9wr0ZZB8zVidTjLfyXB47KXsKB6ZP+UzObNJgKoEAPVZS+c
         tUFDczKWOeF+KBUVcI88+GhcOGIOpl9jdJkWBqbgepW6OrSQ79KNXs2qtuF4sD/SQ30v
         N5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772902624; x=1773507424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N17bWKAVNic/QJp0Klj6senGm3Phl6tbrkoAFBQxBUc=;
        b=G9U4S9MdCEoNJocKwx+fd3YHGXDODIyd9iQ8asgAXN9bpWJ3Jfx3CpR5OPSc3MwzAW
         xO4fxf70sKgJReJPVIDjJPQaVqrEUQbJX8lmfPcYJW7pOLQwJJl0e13AHdApONu5u5To
         a+ULQhw+Xuedx3txnHPqUvuLACaeYcaGo6fqRWcuSTWlquDjuegyefHqKekuby+7/Lao
         d2WTauvtfI1cQM+7cywZD1P3JKyM74gzhPOw5GwGgDQIWuXOgdHzoW12DphX0G1LXhr9
         3I42eTc6c2xgu6cyLM/qHxwIQF7qo0GwuoDahNtb8nhLH7qaDZm7tOA45rSmhzlFj/bo
         fkvA==
X-Forwarded-Encrypted: i=1; AJvYcCUPhzgHri3G7sFwsh6G3EJ6FRXNtQnQDFAKLYbVKD23X/FwmBaXi0xBTg7FefzDrtGWDh1rnVQJ8Vjl@vger.kernel.org
X-Gm-Message-State: AOJu0YxcDX70G9Zr+4ERhZpkOstlAThAyq2dOX9hAhpiX/jvRfLuNqZH
	Jh//af+oTrzQCk+g65SqFP59hNAB8BMh7baFa6UooSihm/exCZFYI/zygf8+gtstlA4=
X-Gm-Gg: ATEYQzxQ9VpjMQMCHpGmHvcJgUzpWvJxutv3fJpUmEtyZkmBrg5qObBeZm7yoFPosc6
	LGsWyBmhZ3bee4PhFDGMMLWWwpr5Nc2YxXDz+w6qr4jNcniswmCX/5wYXZUw3/RbSrdyG2bNO+u
	crSxs0r1TCX3T/c5ohQDT+9XB1iTAOCzQlYdyUwX1fO8leVG3jaXmDGLKXnoSO5ooW2Sl0h+1v1
	ieHIqJK/d0Oueqrn9kETUj3b0PBPfGEOMu2/4Jm7oIbWbN2XBDssMOFmXx57WMGQ6weG2vGlhEC
	IeSEhWqbyGTYYBKrxW5wYn7atTS9NIcKBIQ8alJt9IC8g6RinjAnZCs4wEt7skBbchB1oTjFNvx
	D78QPQQoLPN5MZFYCFgH/OfFd1JfBGmjw1xD6U8beCs/BEXo/+8uw5Yl6E6HmJ82y+Yz6lBT5sE
	GknVMXnwiu31Xhkr7Y0ZM4D+fHyeXmFzxts54flbl/M3+lp07E6Jjxwl8f2OhVYWw5X4NOWyCcc
	A==
X-Received: by 2002:a05:6820:81cb:b0:679:f11b:a511 with SMTP id 006d021491bc7-67b9bd1690dmr3543813eaf.45.1772902624163;
        Sat, 07 Mar 2026 08:57:04 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67b9d50401dsm2907326eaf.12.2026.03.07.08.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 08:57:02 -0800 (PST)
Message-ID: <0894daae-08a0-421a-9f94-cab2cfae1ec6@baylibre.com>
Date: Sat, 7 Mar 2026 10:57:01 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] MAINTAINERS: add entry for ST VL53L1X ToF sensor
 driver
To: Siratul Islam <email@sirat.me>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260303090253.42076-1-email@sirat.me>
 <20260303090253.42076-4-email@sirat.me>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260303090253.42076-4-email@sirat.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D718422CC55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-272493-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.975];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sirat.me:email,linuxfoundation.org:email,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

On 3/3/26 3:02 AM, Siratul Islam wrote:
> Add maintainer entry for the STMicroelectronics VL53L1X
> Time-of-Flight ranging sensor IIO driver.
> 
> Signed-off-by: Siratul Islam <email@sirat.me>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 61bf550fd37c..cb8ee607fda1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -25093,6 +25093,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
>  F:	drivers/iio/proximity/vl53l0x-i2c.c
>  
> +ST VL53L1X ToF RANGER(I2C) IIO DRIVER
> +M:	Siratul Islam <email@sirat.me>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
> +F:	drivers/iio/proximity/vl53l1x-i2c.c
> +
>  STABLE BRANCH
>  M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>  M:	Sasha Levin <sashal@kernel.org>

It is preferred to include the MAINTAINERS change in the patch that
introduces the new file, so this can be split up between the two other
patches.

