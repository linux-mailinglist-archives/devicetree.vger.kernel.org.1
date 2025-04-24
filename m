Return-Path: <devicetree+bounces-170484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B4A9B047
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5233A1B815E1
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 14:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2181F194A44;
	Thu, 24 Apr 2025 14:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uzAM9zOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D6313E02A
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 14:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745503926; cv=none; b=qMzeIhQrI73lRvwaUiuGJGREp4NwgIh3E7mhkajW/+q86+abWMVH9UeOg2hUgHF7CzDQxVh6nWJEMlCQLR1Utd81Arr1/krvVjPR7ySt5FeB0EGGMrrM/7aG3qgQkOB+TIBW0jDJP3E6Wwi3SmR48RBMFJW6lAjZtUgbwjs0ChE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745503926; c=relaxed/simple;
	bh=CtEiAcc/nNoaN3GI5PvoThuoQG72iKhqq2zgIqa7tYg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=dMyRofhKqbVY3M1JNWriBsQRYOC8670ti+MRysCuu1ZFl7dwnw2Wqjk1hioOpgfQBX2MoozDZzupsSwWWYQat+AJHMJd03DH/YOQZEa56NQY+kjpovtalNFAWTGbuMGoLpyPzA0V4Vef5CVXlnZWTEYJTvc1bdZsvA3l8TgfOTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uzAM9zOn; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so10367815e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745503922; x=1746108722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VMVKepFY++CcE6uPsrs1OkWWcrChDnDL5Zv6xP0L1IA=;
        b=uzAM9zOnbe8AqN5bWqXFQuouPRDdx/ZXawPUA74CoEdORcPETsCEzwIr5N64TmWB6D
         EOZKEU9DtL4cnRQOmYpwNgL5pqsYuVod+FJpwjkugjd+kPDIR8Ili7f8O+KS9ugAmWXh
         lusUFJWbfaYCmsNbQp21pdW5xmxD5F94Lg+wNQfOgTmFfOSCOanlKINeUdw7KgZCBzdj
         aA60NOLNh0T041uX37RminswwzfrslF3cHXBHX83J4BVLmEpGgjzqu+yb26rSJBG4nCT
         G2ObPtzd6qqHZHGQsqjNaKuM64pm05HlXgc+cosQwVNWDB/YxrYj5j57W3MqqHyL7NCS
         hZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745503922; x=1746108722;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VMVKepFY++CcE6uPsrs1OkWWcrChDnDL5Zv6xP0L1IA=;
        b=w0eXwzcJUTtRIupDnNe/5FTcyhzHXTgrbAxTxy6nE7ORA7zyJfvFv2d4/QXIxctc1R
         qxSr082xP7pGFocoa4J9wTdMhaG5S5I1toW6f3laqSNQ4AQ0tS+kffPkrKAwzcA8JTMp
         5fs/cOd3blPszThTzAi9STnbQt/CvdWNUFtJtI9BTRF5LLhHXT+URVeCDtckmJ+S+R2g
         7jUGzSWeT7UFcoHHtKlnkJL4ik1lk+k6Qf+6T9x7KpAImCzFHG/D1q8UpnTlY4OmL/UB
         Rge8IHm4f2B0TZnyo7Ib/kDMTumM/YXOWsU2wNgWUjpS2WTIrYupxHP/sYL9P81qFZzq
         TIkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtOldFSD+ODLTkCX/NUX8kdGNRxkhmKdOuaSjrZpNwF7otnFFlcsCFC7z9DpNKIgszHFXG5iv9KiVo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7p1L7G9LLI4om0rLa/gR3Rf9CxDvMgjcyfNkoz7OiIe0nTCQu
	HMttvK9pe2X725eAtO9g7y4GkCXq6DOy2qroNp8ElPA5kPwXTNXXBMeeC15/VYs=
X-Gm-Gg: ASbGncv7p+AdRuc5cKcCxVtzwtLxndAnzmvLxbO+TKR5ZLOaa2kmcmuTGNN/KPgcA2R
	wNZoJ6E+2KmYC734ZuxUGIrTdItep43Ieddk1DeiPudpaxrb9xgBmXfch9Fu5TzqqFf6YfEsJBJ
	S36AiYhwAmHtuZExTgLh1o2DwinSiINPoTxBi79YuK4Kwg3bWFih1kiw3/A5N1E5fSWuSOMYjL2
	E82e5jIPYBKb7JXjPLWdqOEYB9Naqz76jplEjGF+KQ2cuyYXr4lQ0O5coyrvZLmh/XrqN1Rui0H
	i8LdTxTaOHbt/kntiFulMqzzDZrS0IrzlUfQf9GwmitsdO3L9cVk0BtETa4bMfkI+B95apzmU5x
	mP5EVSUqXHvslxSg=
X-Google-Smtp-Source: AGHT+IHDAgJu2/VSQFzrBijOYgsGceJrM3M9BXgk2UdJQTMK4wICpOgpqmOlkNppVo8F1dpEn3P2XQ==
X-Received: by 2002:a05:600c:1f94:b0:43d:49eb:9675 with SMTP id 5b1f17b1804b1-4409bd76f5dmr26518185e9.22.1745503922448;
        Thu, 24 Apr 2025 07:12:02 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4409d2b86fdsm23700385e9.27.2025.04.24.07.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 07:12:02 -0700 (PDT)
Message-ID: <d06f9e32-0c53-4ec0-8e78-1eedf5d6e2fc@linaro.org>
Date: Thu, 24 Apr 2025 16:12:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 alexandru-catalin.ionita@nxp.com
References: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
 <20250410082616.1855860-2-daniel.lezcano@linaro.org>
Content-Language: en-US
In-Reply-To: <20250410082616.1855860-2-daniel.lezcano@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Wim,

On 10/04/2025 10:26, Daniel Lezcano wrote:
> Describe the Software Watchdog Timer available on the S32G platforms.
> 
> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> Cc: Thomas Fossati <thomas.fossati@linaro.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---

I do believe all the comments have been taken into account, the driver 
has been reviewed and tested.

Is it possible to merge those changes in order to have them available in 
linux-next ?

Thanks

   -- Daniel



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

