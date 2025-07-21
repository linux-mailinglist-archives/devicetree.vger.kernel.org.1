Return-Path: <devicetree+bounces-198417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5C4B0CB68
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 22:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CEEE16875A
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 20:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C4D623770D;
	Mon, 21 Jul 2025 20:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RhyPiRo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1C12236FD
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 20:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753128868; cv=none; b=rbbwBW386PXgEM2KjoHY2xTDWI7vnVjQz9cDO6tyWl2t6nmHgcYiJsSyGj/I9aAwV41+qo+zdd91WaecmFZY3uFG0xmxJcKRyJJ4SL/ACIyR+iPB4z6DrOGo4FoS8kIhms0c15DYugSIhHt7PRCAHw4Pv/hVnABN5T7qB90SfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753128868; c=relaxed/simple;
	bh=epa7+wp0cEoPPmYR6nZaRCp733cFnLPdm5t/iaHxLAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fUFAaW47laxvhyprpJlPIeNGCQfv9KIWtvy1szhHaX3gD6wWtMp4K4zeRrE76RSbyM4/ImeP4/nSTNxPMh6P92q5kXCYoM619zxM+H8lF2BkPcRQuvpED/rnc2vgTlY5EQvGO94VWITk/vXICYHByvzuF0fAEot23jDDuBei2Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RhyPiRo9; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45610582d07so37258075e9.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 13:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753128865; x=1753733665; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W+NLeKkmFfS3FdjQ1rDekiaYo9KOrt0849XuRcwwgxk=;
        b=RhyPiRo9yKEwXsfsDVyCuj6wjW/CNdfv0000rHg0QDcxMTmc2kVtADsP60jUyWQu+I
         3RYx1TiVym4MvNI8Z70tan+5RkHxBrw5Alx03bDgJb02aFbAUcLrCnr1Ief2lnNkgAhQ
         YWUOC5WKw4OaNRShm8l7VV6pPrRD+Z5USKfaayzieRVHpDfHSIHeiNqRpenBXbEDQ4u7
         Ey0uOhkIBLETpFYWaIFsNw/1BAb7n+uqkLpsrEYQW21V4mQXc152xLS6wWlIpcUbfVw3
         1Bfj2pfchOx3MGacn3QtwoIoiLd3Ro4QKWmLFDl7VEAU3hSmSI0Qj14dPHcyituPnOiL
         TMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753128865; x=1753733665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W+NLeKkmFfS3FdjQ1rDekiaYo9KOrt0849XuRcwwgxk=;
        b=Owu2PNjjyz/XBJ1fZSYT1jrwrRt2ZH6N2HBZiqr3aTBkVl78dJBf992nQ9LNSmc/Ko
         3Z0oa/YhOZ50z7lMoeNLTpwzalmnpK1xIRcWEsOcqvbRJtCtZV8ztJFGqw/61RT8gzVF
         GJORBhZdRlERjr6kRQdIZgQA/KiqyzmUhY2ixTBk8mJSuTaiUDo3Pphh6S7Jjs6mCnmP
         FdfXRC/pGAK2gE+jFZBJScX2DDuzVtSmAlUFJVOmE66ejTAXWgWNA3RLsyTtf+pXAC60
         VV9EBhluM0VrML/4zu06jOeZwFglePNH8GBPOZBKH9jVFtQTOrHwdCbdoWBulONRNKRf
         IiIA==
X-Forwarded-Encrypted: i=1; AJvYcCXKPAUu8cchRp29RKJ8stbNF6EQyEplphQIOcHqDkiQeqUy2Sn4kp1Fm0DBKZyav95flMym5UxyaUIP@vger.kernel.org
X-Gm-Message-State: AOJu0YzaVyiQtliAQzNJQOglgz26hMTAP6Sl5bIYmUhPYEixD5wWtdDw
	qRGldn5w5x0lV4ps183eNgtnSzSkj1i3MJ3UY+/T/Rk2lIbULLq9cKsOVA311Pnh08k=
X-Gm-Gg: ASbGncud0YKQnCMrOIl7QfQov2AroCVh9x3ykFaJLfsFvfZMjQkjDPz/BfOtZnJ2uPf
	Mq7F5XLW9Le9H4WSNw+rGca30HOKe78/mzm6YytRcoMVOmBBo7jPmHAYE4GPBaYxXT00JYsC+HY
	e12LZTpuTWMxALsRsUb9MAEdJRWxEJV5NTpISd4NikhOMi9H5YF4PKJkDFUuiyoSfddLK0TJQ/v
	fRcMxs8RKCdycfzXHOWB9MS9+X+wujMdfBaTiOvldsJESL2tw6cLJFBK3tnvkwVy93adIj9g8uV
	sj8ThjQe9SJ9H1kDke021qKW3yoza60MzCZBhdZYF4tpcNvihhzflhRuWh030RgRYE7492qMoen
	oZvXYdXYudd+zhoGgs3kn/ArCso6Vh02aAf+xQ8y3lnlhH6eOj52O2aWuZMqjeECHG5/czBOFXZ
	qx5LY=
X-Google-Smtp-Source: AGHT+IF2K0d0bKG4VD7/lCdy/OhzmE3w6YgPLQSQDJFH+YKC0cK0MI2AOW58kLCdtZuimtB0pT85RA==
X-Received: by 2002:a05:600c:870e:b0:456:285b:db3c with SMTP id 5b1f17b1804b1-456352d2ab1mr153619675e9.3.1753128864772;
        Mon, 21 Jul 2025 13:14:24 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:135f:abd:1f99:991c:5b07:cd28? ([2a0d:e487:135f:abd:1f99:991c:5b07:cd28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45862cd7143sm1464855e9.1.2025.07.21.13.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 13:14:24 -0700 (PDT)
Message-ID: <23b3cd9e-50e2-4888-81a3-c6d340bb9583@linaro.org>
Date: Mon, 21 Jul 2025 22:14:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add thermal sensors support for MT7981
To: Aleksander Jan Bajkowski <olek2@wp.pl>, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, s.hauer@pengutronix.de,
 rafal@milecki.pl, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20250712195904.6988-1-olek2@wp.pl>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250712195904.6988-1-olek2@wp.pl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/12/25 21:59, Aleksander Jan Bajkowski wrote:
> This patch adds support for the temperature sensor in the MT7981 SoC.
> This sensor is exactly the same as the one in the MT7986.
> 
> Changes in v4:
>   - sorted bindings by fallback names
>   - dropped accepted patch
> 
> Changes in v3:
>   - added fallback in bindings
> 
> Changes in v2:
>   - added fallback to an existing compatible string
>   - removed second patch as obsolete
> 
> Aleksander Jan Bajkowski (2):
>    dt-bindings: thermal: mediatek: add falback compatible string for
>      MT7981 and MT8516
>    arm64: dts: mediatek: add thermal sensor support on mt7981
> 
>   .../bindings/thermal/mediatek,thermal.yaml    | 27 ++++++++++------
>   arch/arm64/boot/dts/mediatek/mt7981b.dtsi     | 31 ++++++++++++++++++-
>   2 files changed, 47 insertions(+), 11 deletions(-)

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

