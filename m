Return-Path: <devicetree+bounces-100624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6F396E52D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 23:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DE8FB21CB2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA5E1B12D7;
	Thu,  5 Sep 2024 21:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="q4FC1mOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9731B12C7
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 21:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725572241; cv=none; b=CJkkhju6erdNw6Fa0IdjIUoIZtRPksYy0M+JvsMMwrmKMYTUfekxeW0pD23h2P0jfCRWyqLNXZEz8/y8my5g6Hq9SSGfFltlh04DoKhC0OQF4puJKLRAES+dS+Q/wQkQxXEydzr300NV9oiWgdKO6BHDDAfqo3NLSmkRPcXRZYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725572241; c=relaxed/simple;
	bh=NMWWXmsihlaJ178vdeBvuf0Ff+czhea7zCeLpdR6T5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q9ReDYCwxf07LmgFGXtw0HkpOf2JK0BM3PVSVlRiV44h5pJCFXiJx6/D7cKjMonxGbLtN1x/1Yu3r+f5nXJe4FUYGblP86+wqFlDS3m6EepPoZi5WfIIYlOG1dOHlZ/Ek+GI/+q4KDsW2A7U6pS4fuJUmUdTAmcvNjM5ZU6f2a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=q4FC1mOQ; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5df9dec9c0eso817951eaf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 14:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725572238; x=1726177038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W8k/87J8v0WGnn9qmtJ2GBGp1+IkG/52AlAFv4ysC44=;
        b=q4FC1mOQHDuZ/XPF1sG15v4r7hbyOvhHdAPCCXbGY5uf8rh3aJMiKvXCzkFULf71X9
         LvC805LgHbL9lN62rWI/YBfD0fiLEheFE91B39b1Y1YPpoyF0UKRtoA44c0mqAvdml/A
         VEE/9UlI507qduKIQgUdb+yFg/rDY2J21VpT9ejeytAyA1KRQgv+dvy9OXAaIJ4MTO92
         WBaa2Of7sE5zcoBo/jQ25CRMmhFucwruSrtKlzTS3ATVgYQWq394wzDDF6SBFaO+rdAw
         2MLGDDu1hOaVlVJHLRJ2R8aJEoM34CuWVsNjcZG7dJcW51OvFp7ihG9elzgba0TUmA9R
         j7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725572238; x=1726177038;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W8k/87J8v0WGnn9qmtJ2GBGp1+IkG/52AlAFv4ysC44=;
        b=Mx0p+6lWw9s01bhqD0Lmy7CxMu2mB1/wD1f4a1esjVxgKNxkh3i241BspGpx75pzvw
         s++mmIBEsjnGl6JdLEQjRmvtIvy+i8pVXj6gkELMKXWQOqphulmxGfpbg4VL0/NgEXaZ
         Cj1f5KauybNm95mIdC9ydpbhs6pvEm+jwEuUhPZ/Qhbji003WLrXw4F9sQ21FSo3Q5K1
         vWWn9DoN1WbpkaUD4/m+FV2Y1JsgJVKP7nOxtdAGdI8+iIlr413ygnUMF7RYKTcGT+Ty
         DspO8L/t6u+HUOisTpC/JMl6sWc8K2kBdUIPcsSBfFywVk/VpKvHNzsbweL9uvdaNsID
         WyCw==
X-Forwarded-Encrypted: i=1; AJvYcCVja05ZvZY8i02bgYkWUHBhFUcyuJtUROUhIrsRorMroh4UCWyy0EMmcPKa1I6G+YTUUNp2xVTAOyMK@vger.kernel.org
X-Gm-Message-State: AOJu0YzGf0wlt6PNi4WRhS4HckiPMZ3uW6U+W6kNRLXP/wqmwcbmyu2o
	ZVuvw8ySUjWwDOGYOO7n7jpaFkGwfe233GRRH/NJyBkFzoN3aNclAyR6/J0zchE=
X-Google-Smtp-Source: AGHT+IHEOGUSIV5ef9VhIUEO8auXLaciRzGvHeroPVcEmS82VwePJKXqWreEFXLHBVoxw4JLLRDsgw==
X-Received: by 2002:a05:6820:4b0e:b0:5ba:ec8b:44b5 with SMTP id 006d021491bc7-5e1a9cf458cmr551998eaf.3.1725572238205;
        Thu, 05 Sep 2024 14:37:18 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5dfa047b631sm2764435eaf.10.2024.09.05.14.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 14:37:17 -0700 (PDT)
Message-ID: <a7fd7490-53c9-4a25-a659-6f52ff509fe8@baylibre.com>
Date: Thu, 5 Sep 2024 16:37:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/8] iio: adc: ad7606: move 'val' pointer to
 ad7606_scan_direct()
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-3-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905082404.119022-3-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 3:23 AM, Alexandru Ardelean wrote:
> The ad7606_scan_direct() function returns 'int', which is fine for 16-bit
> samples.
> But when going to 18-bit samples, these need to be implemented as 32-bit
> (or int) type.
> 
> In that case when getting samples (which can be negative), we'd get random
> error codes.
> So, the easiest thing is to just move the 'val' pointer to
> 'ad7606_scan_direct()'. This doesn't qualify as a fix, it's just a
> preparation for 18-bit ADCs (of the AD7606 family).
> 
> Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>

