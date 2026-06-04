Return-Path: <devicetree+bounces-306749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XXzyOthPIWpXDAEAu9opvQ
	(envelope-from <devicetree+bounces-306749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:13:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9F963EE5B
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:13:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lf02ons9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306749-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306749-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 718BE30B29F5
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB13376479;
	Thu,  4 Jun 2026 10:07:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BE30DEA6
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 10:07:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567621; cv=none; b=rsFZVEIZnvWUjpjuzOKwl0zWDq2hDF03r12vdalKnek3cTv10+gbfRqXEas+OfzlE297H+9YhXH/niQISmOsmQthxEbXIJDBiKL706v2DDUUbHVGmKJqFUAAAvisKbz3WygX1n40YKQrId35MhiRLx3VuaDF/LkqxYYm17Y0jig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567621; c=relaxed/simple;
	bh=aWQNwrGhLrvNTQcedUnw5Zv25r/4ZU4XEGrfG6DmwE8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F0/amiNvoTIY/QbTkebzFeyQARV2USvbWHahdeFMIZh2kxF5m9dwfX16+pmCNwjino8tLkz2D4rv8nHmy3jLc/UQ5jFoOPBJA/kRLd6ukEh+8HtadlmVS7x/Juo07nlPDs1fgmckOLwaEk7FF9fTQsEmIgdrTRcNVC7fGpQIP3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lf02ons9; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4903997fcb5so4397785e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 03:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780567619; x=1781172419; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SNSiTxO5U+OGmSsX5QsPHvILMfiW6g2hJB0TI+2zqrs=;
        b=lf02ons9EPlxYHI8acFUzS9EKkvjAwyd7l9jN69qEXMAUVpyPxuiiR1NFZEmULEqQh
         afc/eNmeeULukc7MiGLpKM7BjbYnGOiQygoa4hzCxB46POrftHMuq0Z9rIV9MU5nFhiA
         1YzPDXqw2/tWz+WmpkyBmNqMvtnuntxwEyEFW/HtokTu1pFdGutddJoY7yTnlV5d4aEf
         ePE0fO0adgpjngIJZqVgmaYrr01yjj+BParMG9q5DIy0X0dQyK5SXP0pvFo2WSYaaQ0p
         gI7YeHGv3yVROA+w6oP7cTC0wlU9Z46d6OGHr9L0ZqDbk0rqLqx8zDQ2ji7NuZ0xxe0P
         4oCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780567619; x=1781172419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNSiTxO5U+OGmSsX5QsPHvILMfiW6g2hJB0TI+2zqrs=;
        b=qBd/e5U/3q5ZNaTAeuSK6UXotpsbpyUxVhKN6Zp1Pi80l+6jkttRa4Olot78CnWfW/
         Nu4ERP5k7EVwdV8/bsbOXFVfHWQFMUPUit250qyFhZd90IZ+asbI17Kw4hdSrrDO3vcv
         o5X9pxOf8VSGLtrT9jNLQgS06tA41WGjNlaKG49mFlYKUXJAntFz2ujxbZhK0zPpO2w2
         i9okq4NeyhBG712bIBh0x+1hO4LBx/LtFlQWBDPzh7gtTGZEjGUHNvrIhBXtUTH3ameA
         S8wudRIGqolP+Y0w+kgwEtx6WXFpEoBHWDQlBvQxbc0lKfjr1FoJ2IUAqaq2eOYILM1f
         tsTg==
X-Forwarded-Encrypted: i=1; AFNElJ+EMUuCDM6Cvu2KMJGjiNla//KQSLYM5vETiaDl35KUz5pXUxgOXH+rUpwAM840TPkiRuJ5BHrjKqFG@vger.kernel.org
X-Gm-Message-State: AOJu0YwBaILifewnZXOHJ1AMPIdWOGb/0Sg4tfMT6aoQ0It2Kzf2rUO1
	mdZt0tT9P3fPlpGnRCLbKXFCektoH+6EF8j2kITe3wb31yc549G648AB
X-Gm-Gg: Acq92OHWDMf4PDKuyogrFJL/jwA7dNT4uYCVZvXQMBOPjUPOfOaaamayP6sOmmlm4/W
	mX+hLvVE9OYna+H/7ENpz3t6eBk6ZbOGNITBgn+Yhc3rFoIoeRRwTWgevI3UfnceOSiXDg6Yeuz
	WCh/wNWPPpkisxoF3ucz5TodX1+1AdBvPy4Cf58e33ZQv0umVkm0J0fNOviOBi4qTcNtBLgrZG0
	VO2dx6qkDbWUSCTzJChraxqJBIlDjXpkVPE1XYoV8SZwW7H470eblgS6Oz8xCdqRA5Lkz++kKwO
	z9skQTTYVuuRFX8IL77khn98aowOWJ2YB/kyo/essqOXqACSaY/AWDtz7IU2ZrpFG4FrT6N85Jj
	Lq8hmeMa+sUJr1am2NiNrSfIMKycumjzLMPVXeWaTB8iC+xh1YKHPmBJ00xB9I3yDkCgcB404qM
	wwsO319g5ohqS6jBWZw1eiO6B7I87uKq6U3TQqxzYwcoUeuCVmbRo1VtuSsd6Fn3El1oDOhBsYn
	jDtR7OaTq/Y3wMoajdqvAO0q14J/m05qA/MvrdQ+4O3VL0CbZY4x9gRYHOX
X-Received: by 2002:a05:600c:4695:b0:490:bd1d:472a with SMTP id 5b1f17b1804b1-490bd1d4865mr44724635e9.15.1780567618417;
        Thu, 04 Jun 2026 03:06:58 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc39eb04sm62966765e9.6.2026.06.04.03.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 03:06:57 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Thu, 4 Jun 2026 11:06:55 +0100
To: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux@analog.com
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Petr Mladek <pmladek@suse.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, 
	Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v16 03/14] lib: vsprintf: use _parse_integer() instead of
 _parse_integer_limit()
Message-ID: <a5nlyycxfhwpzczlmud3gjh5qxlugwkow4dyqhtgtjrzjf5q5x@mnmcic2da75r>
References: <20260604-adf41513-iio-driver-v16-0-1a7d09143bc2@analog.com>
 <20260604-adf41513-iio-driver-v16-3-1a7d09143bc2@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604-adf41513-iio-driver-v16-3-1a7d09143bc2@analog.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306749-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:akpm@linux-foundation.org,m:pmladek@suse.com,m:rostedt@goodmis.org,m:andriy.shevchenko@linux.intel.com,m:linux@rasmusvillemoes.dk,m:senozhatsky@chromium.org,m:skhan@linuxfoundation.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B9F963EE5B

On 26/06/04 10:58AM, Rodrigo Alencar via B4 Relay wrote:
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Use _parse_integer() that allows optional arguments to be explicitly
> initialised.

...

> diff --git a/lib/kstrtox.h b/lib/kstrtox.h
> index 00cf3255bdd2..ff84fe434a00 100644
> --- a/lib/kstrtox.h
> +++ b/lib/kstrtox.h
> @@ -12,6 +12,9 @@ unsigned int _parse_integer_limit(const char *s, unsigned int base, unsigned lon
>  #define _parse_integer0(s, base, res, ...)						\
>  	_parse_integer_limit(s, base, res, INT_MAX)

removed the semicolon here...

>  
> +#define _parse_integer1(s, base, res, max_chars, ...)					\
> +	_parse_integer_limit(s, base, res, max_chars)

and here, as per sashiko's feedback:
https://sashiko.dev/#/patchset/20260602203706.103449-1-andriy.shevchenko%40linux.intel.com?part=1
https://sashiko.dev/#/patchset/20260602203706.103449-1-andriy.shevchenko%40linux.intel.com?part=2

> +
>  #define _parse_integer(s, base, res, ...)						\
>  	CONCATENATE(_parse_integer, COUNT_ARGS(__VA_ARGS__))(s, base, res, __VA_ARGS__)

-- 
Kind regards,

Rodrigo Alencar

