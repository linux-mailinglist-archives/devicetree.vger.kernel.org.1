Return-Path: <devicetree+bounces-215962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BAFB53438
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80FDA5A2781
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2F2335BBC;
	Thu, 11 Sep 2025 13:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eHCBZkWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5F2184E
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757598260; cv=none; b=b2YK963LLLsow3XqniJkm0zRZG/UMSEkMAenABHgf3skGZ7q5JxzRMwz8oS2bS42Opl1S1EVvxmmzccY9vxM1D20Bbq4dojEkA2RJCR0vYP/wCw62rNSIzn/xaGfMiu0B3QLyC/V8nJfQ8WdQsN3Nl2dVVCBg/GfbQnm/zX3xUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757598260; c=relaxed/simple;
	bh=BgWTKfBKwv1gdZW9TeUwhiLjN7/KNn7CoOORzE/zT2A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LQDaLBbhSeYl8NX46eYHP0fkoI4joFg/QKJeYXkJp5uOI/IupeBDkggQUUpgSMlr+VP2kmE6C4cuVs4CF4IKrdb+V6mCAuubyly2NXdtB6ccF1uUM2oit3mtUcTws/XsrvY4yk6Ew9d8hUsC8nfoVisQPAZfzKzU1kLls9qBE/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eHCBZkWZ; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-30ccec928f6so258208fac.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757598258; x=1758203058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eCstrsfwRbW6aW0tEip/c6cZxF8+5Njpu6/Zhcqq+6I=;
        b=eHCBZkWZC6S/BDWWfP+SRYOjHnppsMldn6FOlmVYHtG8R9WXAESKXHlerXsSWJgZiC
         zGG/3MC7O5SQ3te7i0ZXjMMV9t/BtDpT2I+Ru/ODm+O4IBmgXUFwurHwH8rlfLcm5maC
         RlRpXWSG6mVt+keIJrKoktz2/ivvdf2l+tcmVxLSPsGZpUtE6cdIbmnAAWS4vonQ0I4c
         31FiYIyYQTxzfGwnLaQE1XALZhTo/UX6J2Ht6/RZzGHH4W/K2jppAWto+ndxJkWnOXoN
         tTj+6P74A7GI8yigDrHBc7zcCjHVErkrG54NCV12aLDFouSQ8F3COxisgYgOQsDpwiw/
         Ckzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757598258; x=1758203058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eCstrsfwRbW6aW0tEip/c6cZxF8+5Njpu6/Zhcqq+6I=;
        b=Z/KpiX5pe1xpJV3yTsbddqOOd9IQfUm0PIu7nXxQvFMbeHsLlVBwKo/r+vt6BJKwxb
         fkMqKh2AAorZzEE+ByfXemcf3UKKy6lni0Z/tXlxjoc7DtkJ5u6udJ/M6xkUAG1uQ+rW
         vlLIhtzLehrCcZm0+NYm5gFA08mshYGEAvG5I2vZ+TQhykbTtJZPVgFbrdphsBIdfi7C
         cKD/2GTh63TqJdvY6MBJsnQrW+UrlkjP/ZlamTknAQEPsuCGdNKpJpdK7OK47Nfo1/Dw
         LRrpT+9zOsxh47H6rvlGgUTLUuuDtVyaK/8IwDFrczXijh/f6fwHVmA4yd3iOvyy1++u
         /WOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjeNEc8HObjNlMnsmvNGHBSj7rIY+km84BN4djWbLYIPapIWRMD0d3aRgXCLnBZRG9YZV49tm0mlfd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1RFxSmgcaQzZXybDr5bsXV1A3OJuP+hZLvWJGPFu/UW+aW7Qk
	ZyU1xk6LRrcimtNd1v8L/FzjNNZpyZg3mzX30ev03BwAhmMdgq9GPo3v/6n5OJIBAuw=
X-Gm-Gg: ASbGnctX5iA/xtjAyTTfc8EVALqBrv88pAPoK60pcn81xCugTkg8we1FroP6E74vKPM
	6dMwvAVM1psLrfmuPiTj4c6Yc1ZE/mH89jAoKyB0lwuwE7YNw1+2axErwEOuw5e3Pyf8GQAt6gG
	aEMo7OLJ4LHx6mzFQQQXAZ1xWXF9m7QxAXXQszoSe6VjKPeupqv4pe9SR5olln+iCDL1AIlfVdQ
	PqMyS7qBALq9XDlLg2QkvfUzMQTzuuqeONDr/uej5KQoCcHPBVqcPPoXvb4OGX+IZmy367YS2ZC
	5e8KTam+rTDtJ6ttF+k2+7yaswyfwsrHr9Q3OX1uxTxpFu5rWcFWx0yQ2we3ZjvtQtKdyaU9BIh
	iwN0vZILz43+iXyz+gMANk0Sjt3htMMExECA1EJ9nogAx/teeAuw9ShpoGmWBrEKbZGdmqUOsm1
	o=
X-Google-Smtp-Source: AGHT+IEPP1d7GSlxoHGdnXD8SRk9+hawJ53fqwqLIpfGqR7eWm2LIzdvyvnCGJkNaVEwetQklDMy/g==
X-Received: by 2002:a05:6870:a982:b0:321:8f88:a3c2 with SMTP id 586e51a60fabf-32262d776d6mr10097192fac.14.1757598257793;
        Thu, 11 Sep 2025 06:44:17 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d684:59db:8b2a:5451? ([2600:8803:e7e4:1d00:d684:59db:8b2a:5451])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7524bd8359esm351076a34.32.2025.09.11.06.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 06:44:17 -0700 (PDT)
Message-ID: <719e510e-1032-47cf-9a75-82c36de732f4@baylibre.com>
Date: Thu, 11 Sep 2025 08:44:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] iio: accel: bma220: reset registers during init
 stage
To: Petre Rodan <petre.rodan@subdimension.ro>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Nuno S?? <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250910-bma220_improvements-v2-0-e23f4f2b9745@subdimension.ro>
 <20250910-bma220_improvements-v2-7-e23f4f2b9745@subdimension.ro>
 <a10a2f6d-6cb7-4922-b505-dc6994f0415f@kernel.org> <aMLCWFatVkePTxCa@sunspire>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aMLCWFatVkePTxCa@sunspire>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/11/25 7:36 AM, Petre Rodan wrote:
> 

...

> Just for my curiosity, do reviewers apply the patches one by one to (a branch of)
> the tree itself or do they provide feedback directly based on the diffs?
> 

I think most reviewers are like me and only are looking at the diff in the
email. It would take too much time to apply every single patch I look at. So
I only do that in very rare cases when I have a special interest in a patch.

