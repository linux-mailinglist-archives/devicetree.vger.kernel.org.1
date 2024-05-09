Return-Path: <devicetree+bounces-65967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB2E8C0CA1
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70F64281C9C
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B34126F09;
	Thu,  9 May 2024 08:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kvogapQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BF338D
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 08:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715243587; cv=none; b=nBZrRJzem+157mUoLn6Yekmotijr28RJseBFr9j3dCKCDj+oC9BxmHyGSWqJGtyNFrzP7sDehQ0DdagJAHZWMbc4mt0LK1VBDOjnieJw4pZdeX3UDfwm5cya51eiKAPo5rly/ZpNhv5t5c7fYO4IR7S3npF/UkqHY34eC7VHLoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715243587; c=relaxed/simple;
	bh=zM27GSHT4pVu4YKhobUJgZt+d7XdlVRNISWcxM7M4T0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bE59zLvOZXzX6hYa7gJrcq4TjCdlI1MOL516ksGEnAK7keNUNZg+Dt59ARAyqcu3QW37vRDs0YEJqPMammvabHU0kjRpXr18nOFnXa1NlFi7KrZuD6cNY61mYyI9ZbAcy4hq7SjqBPKR6kP8cjqQOTRwrvFltgajW8YLeaAhME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kvogapQG; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59ab4f60a6so139220266b.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 01:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715243584; x=1715848384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=h5AHvTi1tBUzUqPnJL7+2tWbunFC2I9F88MO8Fz8W3E=;
        b=kvogapQGLm8kWXbsOPmIZO2zGvb1/6Ih+EatUl4PPuFlzGOtwJjFKJ95YqPD6etABE
         9UPqZ9AYpgSokgmCZcHu9ZrGV/Ah5g5GVA+k8Fhn1E/1oiNz7rCVvQnPDWyUEMedR1AO
         v8d30VJS76UyCa5G6gnvTr0i6EeU1EpFNhKN0BuT/l9T59e61S9KlIuIy5cYDKofMZoQ
         lZjt8U2wx2Zd2VBgbe0fvH7Ua2Bd61LF/J1+PTW8Eon+3JzwJGaGJNq8pdW3nTcFPg0p
         Clc6Th0/QFQ4hN7uRepD6WD+1qonaltBZ6pif2ObeJiRiifVTE5QDuZLbapOteFW6D1s
         ZLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715243584; x=1715848384;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5AHvTi1tBUzUqPnJL7+2tWbunFC2I9F88MO8Fz8W3E=;
        b=VbUKQj9tVdGumCWpVy4pEag8fGNEANstOK4wKnejxtYUCLWiqQDbh3p4kYGKXqqIu4
         vkY72+2ZNXqsHEPq1dnmC2gUoU9gvOUxOwc2XdLyuwbK8bkDEbZmTTe7a6ioLoQpql1s
         FZGHaik+aBb2hySGNrEHBAya0uK+V214+UR2WJjcGV2EU1WE5JD+8jK182rmSanq5sqF
         6wsfY2ZUCLtgB9BJnuqxYHbR3dKjWKwqR9Z27q6SMj0xmy72mY0MSrmxZiBv/FzF0BiX
         bPeN9wNLg/pC+K4wf6bhQ/2RiNoFbugkg39QKoN9ZK0HBMrWh29rlQLefjZCeqj1i0co
         jnIg==
X-Forwarded-Encrypted: i=1; AJvYcCWGpYiIphNdn0OwtRDq72brmyG0sSoBfWUjZf4mQmh1sn2bcUncchtVXXw4WVrNZq9zsFW16m1UEUn8lPEGXAQmzz2ArHmfORebkw==
X-Gm-Message-State: AOJu0YwWPb08X24mswVA/qpKqZ+lwfl7rN4hQ9LJKVOFpWaUQJ8s2LjP
	RQou0ws6kqhmKhkg2cn6c6XhsB048uOYQ0JW/1Ih/y+f72HuaPGhHXM7FdDnVjo=
X-Google-Smtp-Source: AGHT+IEvLcbAQvFPih6Kzm0lbLrK4SFAMf0flY8eXN/UbQCtJhejPNBf5kKJAQQvrjryI83sPJddRQ==
X-Received: by 2002:a17:906:7181:b0:a59:cb29:3fa8 with SMTP id a640c23a62f3a-a59fb91fa5fmr490587666b.14.1715243584122;
        Thu, 09 May 2024 01:33:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b1771bsm48730566b.215.2024.05.09.01.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 May 2024 01:33:03 -0700 (PDT)
Message-ID: <424e40fb-5360-4885-ab07-f41a61a8046e@linaro.org>
Date: Thu, 9 May 2024 10:33:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: input: i2c-hid: Introduce Ilitek
 ili2900
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 dmitry.torokhov@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org,
 benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240509064336.9803-1-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240509064336.9803-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/05/2024 08:43, Zhaoxiong Lv wrote:
> From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
> 
> The ili2900 touch screen chip same as ilitek ili9882t controller
> has a reset gpio.
> 
> Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>

You just sent the same, ignoring entire feedback.

That's a shortcut to get ignored on your contributions... :(

Best regards,
Krzysztof


