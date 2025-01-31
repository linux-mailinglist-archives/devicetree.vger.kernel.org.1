Return-Path: <devicetree+bounces-142149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B159A244A9
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E59527A307E
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829811F428E;
	Fri, 31 Jan 2025 21:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sZjwYpSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A93017B50F
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738359085; cv=none; b=JfXtcHpyX08XSuHVsxLJix6vYAvmZpmSdgvoyPaXwdLrHO2g08/w7/4ibbJNrZvRfF3IAydKTGs1pjcEGb8lyREV2jYssbKanmlAQ+n7FZezu99mptjeCz4MuX2VDVvPx8/RcQisvn2PYqg25mA34CfOJEY6ql7urD9a+xx9et0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738359085; c=relaxed/simple;
	bh=ftu7pmvGV2qr+jK4JxkhWrw+cRjCunxZf5kwDUQrlbc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mkrkhjofXl3XCbY2tSyZSXwYijbUIYIGPBmS9FaD6duHgEIMSLo3h30x6HRdcPHO6xxchGZiQinzfdpKxOWKmHyUUk7jMy4jcnE1+ShNEkwntyrq21Kx9txN6nNgQrInjfoEO6n/ZPpULR5zfXhK4V+zV6/BvyXW/AkGHE0gNyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sZjwYpSj; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ebbec36900so1293551b6e.1
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 13:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738359081; x=1738963881; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jDvnP9HNi8abDAufTXVzuVdU4XUJ2r6pu6gJGv0aC7A=;
        b=sZjwYpSj624x16hqUYRvl0jZxfCo+u3ddY+Jp6rOrkw8hilEtnKKaJGtYakV4g4Ma6
         jSKYcVBB1dNMUYAnE9o4JXUGSdbLh+hWNTAnaWEGlRDHxBHdSJpyjAfCYj3d4vJT89gS
         lxypHg3HkRll+qtM4E7fUmoCYg0+8YFoA7ZVAZR8LvPvrMYrsUX80wHhdZXIz8HP2rw/
         oPxAwlOE1nVpSALCPbW4wJc7bGAK8lPSVnhAQLpvNX5WH8BE8/LsQIvK/BiZeJX0azys
         K2UV7N06Fn7faUutooPJu/QGzfYScbWke0nXOXdFZy8l6bU7tuZM0Ela7AUZCU9mtahk
         r6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738359081; x=1738963881;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDvnP9HNi8abDAufTXVzuVdU4XUJ2r6pu6gJGv0aC7A=;
        b=XszUUq3ftx5GElS8P+y9P2VB66qqQKU94R5ZEDT06YrxRloyz5/yh/wlpnwH01MJis
         ft2LaQmUHupIrX25Draaf4Cdz0scMtWsecUVKWMIWbVV4bJhZeO2d7hlFXnKGlDnipJL
         0ojzRZs1tCKuScVFX5hButNOlZYs4EA5oYk9hHbTn7RR6P/01+6LiF9PGgXrJOXQE5RS
         kY7Ev9ixqQqA8Tcna0O6KOeHkrhJTF/55wvhlIYpnfj1cMbv+TxezSomCsJA6m3JIqtS
         ecvgYL1//pnGItV0BsWUasLcIwzDUOegrq4bVGV0hezk9zVj3WkGcEQOpQ7LN6DG5DKO
         7Rzg==
X-Forwarded-Encrypted: i=1; AJvYcCUf8y1oRqN7OsJ0ZRGYFtmvjT/boRCr1BpngG1gCxYsH3dSBfW2QFJMbdzRrSCrVAiLNwUHPr2zIO3q@vger.kernel.org
X-Gm-Message-State: AOJu0YxelXV0CaCwbzMlPY7ROq/9lAuXFub92u7TCb+5b+8Srqqh9zVu
	Up34oIQRWojEeiz9fHCcvuObeUTpK0fLDQQMLTmvNz3U/dARJohKJ7wCbLLPPGM=
X-Gm-Gg: ASbGncvBcYcDiJa4egWZF56/+vn5kzCM7P1++1MDJqqfpplg2cWfXYbcQOfRM/ivw8D
	FqqwzBSUjOk5uCjs1n6Do5UI+/GGZT4D2EmmJR+khI92ayYIn1wQeTgSVjJwgRpiwbqQjJR9RYj
	Vtu2kVCZzoO8Jc+aqn7+LbAjdm8zKsZH2z8RojT4yhHruDAmi+WyMifM/7N10FEej9HrGBIx/JU
	5KaYSPhlmWKXRx1Ho050eq+ytOOBrmWgH0INXSjiTZ0vZ41R/FN2JOoymOU0yDKFxNk8hTunXMR
	Ca+//9T5Fe2HYc7HjEgFPbzXURLMLALAIyH/Nk2lsqdNm1kQGlyG
X-Google-Smtp-Source: AGHT+IHD853czjvUWSx2EKQmtEracV4UoohrB2SBmjKc282qQiCd0uVnsaL5aEELB96obJY4/Zxf8A==
X-Received: by 2002:a05:6808:2214:b0:3eb:3bcc:a9e7 with SMTP id 5614622812f47-3f323b74ce1mr9851115b6e.34.1738359081365;
        Fri, 31 Jan 2025 13:31:21 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc104e29b7sm1073975eaf.17.2025.01.31.13.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2025 13:31:20 -0800 (PST)
Message-ID: <2f604280-f4dd-494f-9f54-83e8f613b64f@baylibre.com>
Date: Fri, 31 Jan 2025 15:31:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/10] iio: adc: ad7606: change r/w_register signature
To: Angelo Dureghello <adureghello@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandru Ardelean <aardelean@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Guillaume Stols <gstols@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
 <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-8-c3aec77c0ab7@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-8-c3aec77c0ab7@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/29/25 5:03 AM, Angelo Dureghello wrote:
> From: Guillaume Stols <gstols@baylibre.com>
> 
> The register read/write with IIO backend will require to claim the
> direct mode, and doing so requires passing the corresponding iio_dev
> structure.
> So we need to modify the function signature to pass the iio_dev
> structure.
> 
> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> ---
I don't think calling iio_device_claim_direct_mode() inside there reg_read/write
functions is the right place to do that. It should be done at a higher level (in
case we need to combine multiple reads/writes in an atomic operation). So I
think we should drop this patch.


