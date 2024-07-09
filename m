Return-Path: <devicetree+bounces-84367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE01992BE51
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51B58B21610
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43EA19D089;
	Tue,  9 Jul 2024 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dbo32DBy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B31A19CD0A
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720538913; cv=none; b=qusWXITFHjYzY+aP0SvZDmD666J5SjltnYPXff0pfeWG5TrhC+wM0ksna17Bnfw62QGu1v4cRRKJalrDBR5eHEdYpRqorgM5p8WQWnJNS6CcVbAV9WrKj6u+xqLzMInlElBk38F9N1nG4Z7l9+xMcP+RwbRfh61AnwfH2FJP2dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720538913; c=relaxed/simple;
	bh=pUVev29WhcEhgGm1elSQHnizmrZu4fP1GBI4M6iwq28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DnL4lVljLlkWkWixKEfsSjlVJqXPo4Vw0Bk6z+rmLPbHrkWcZ0gXhcbR4ElKT7jj5XKDkNZKcAStUHuXjG+pkihAaVYy2EAvRZYkB92cf9CEp3uCVoWBVLBh5J9Z3MLExnbCDdV38iIWz4wIu7IDI5bCn4t7vdaXlW+E3tCzHwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dbo32DBy; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ebe40673e8so68470471fa.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720538910; x=1721143710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JMOSbzRuI/wP8g2RSEEFBMHO9y92zSvonnYkHnjB1vo=;
        b=Dbo32DBy9/I7QybbVHpRUl9MG71X0fuIIEXlKg92uJEJqCQmQ1ek7Ob4U9MNVixa33
         uLge2+FynV3N05KKRL2P8f61J4OeCXOFzDuGn2Q61krEA8IC1EWCsQWZJXJ6A9zSlpdQ
         9kp6UmMmc/avFeXLjfUy3qShH2a12WiS6bHxgT5rN5Wh/BWRqnNg9nAa71cCDlw/SuNg
         iuisJwSbPonpYiPSGvNtuaWB/DRvFJgQfcbZvw7tsXnC0BaphNPjsKJI2bm37Nh/VtOG
         z9rHzagrs6ReGGO9NgEKNuY6bbWxfn16WZ7Ee/rvfG+nfnucLhcfJSql043Ov0ZJZaxr
         Fb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720538910; x=1721143710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JMOSbzRuI/wP8g2RSEEFBMHO9y92zSvonnYkHnjB1vo=;
        b=GaHX1NXHFog6IWBOZry0ZgKj6YKYdsuRAuUYhaN0BIx2yP4JO6kaeKXgv7b8Ut3gvs
         CLlLRI+Jh8v7QMHy/7v2iGvrAKdygwcjbOzUX9uwoUgh9W7K2Sge3BC/fnMGcVTn4ujb
         Jnuhxx/eDwzbB7U32SKAbDA1PXriAPAxoIiduTtaeK+TJQ2mgFwoHlohx5C3Q7ABmI/v
         iS39XY2isxK75n9Q6cay0Ax6LJ7zrxvsSjvkurWZIt14gQkkBncSLE82dq0VxJEFWKsA
         WMvLfAGp+8Fj1AEBbHv35Zs4nk0zym0V6CoulBHo/UggeykSZuWyVpuxI9OG7j2g4ey0
         vzNg==
X-Forwarded-Encrypted: i=1; AJvYcCVpL73Ih2lkhseSRN41QsE+CXcdT0AM8odrRgW9Oh052R/dEfFZsbZXHi7czYoo1owWPYrQc0yvJlgs1MvcuGi8fPWYvHxaFPFJzQ==
X-Gm-Message-State: AOJu0YyqieKQQ5SDLXYJyD3NAmHeWm//lf9CNELoQzA2wZhrp7VUuXyI
	6LJf3NxdIzK1zUSXdai9auaKsy/WLACRLtWwd3auv7SDZdyYGFUyZGEOb1wiOpg=
X-Google-Smtp-Source: AGHT+IFgDSwXDcR641XU+jvAZ04BkLSldWISaOxKmLROroPi2YBGbkMFd54rHfiW2wRLpQGilsILaw==
X-Received: by 2002:a2e:9c96:0:b0:2eb:d816:7a67 with SMTP id 38308e7fff4ca-2eeb30de2a7mr19395541fa.16.1720538910340;
        Tue, 09 Jul 2024 08:28:30 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:cf24:cce:17df:12ab? ([2a05:6e02:1041:c10:cf24:cce:17df:12ab])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-367cdfab11csm2833723f8f.102.2024.07.09.08.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 08:28:29 -0700 (PDT)
Message-ID: <4c989886-1fea-4975-853c-a9b34d9d8b2b@linaro.org>
Date: Tue, 9 Jul 2024 17:28:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: thermal: Drop 'trips' node as required
To: "Rob Herring (Arm)" <robh@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240709150154.3272825-1-robh@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240709150154.3272825-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/07/2024 17:01, Rob Herring (Arm) wrote:
> It is possible to have thermal zones which don't have any trip points.
> These zones in effect simply represent a temperature sensor without any
> action associated with it. While the schema has always required a
> 'trips' node, users have existed for a long time without it. Update the
> schema to match reality.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


