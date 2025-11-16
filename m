Return-Path: <devicetree+bounces-239120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BCBC61658
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 27FD9345EF2
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FBA2EAB6E;
	Sun, 16 Nov 2025 13:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dyybtAKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C897A309F1D
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763301337; cv=none; b=HA0neWC9TnTQPLm3M83nQ4vjFAV8LCntM8gjPvfLH+/GzRwaDv6j9BIu3pJoK6cDIAs1q8tDk4R4WTLXR8qmNhAAgb0g4qLYjT3At4Ay2cNrOqq38UVuqefH0Jozq5UKsZ7TrqN/JiCgwu1zWxqY192cRmYh+Y1G09t4PpO2iYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763301337; c=relaxed/simple;
	bh=FMGplgNJzN/pBx0afIYEUB+527NtkSI5GGeIgMmBILg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WfW63wK2m0vI4JbuG2NtlDPcT/W6A0IVye62JyF44vsb2hAA7JXFgRbJsrje6SsUbn/kNx9uL4We6GLE+t2qPDeCB8mj3uJkzWzZm0f4l+5fCHpxxEOYxgoiXq53epaR586Z+KTDAbngiPyUxRv4Jsiio4bB52m3acR8MXvFauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dyybtAKY; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so6642865e9.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 05:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763301331; x=1763906131; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iqaGRJ1GY2x6l8dXoAfBLP7/ee6T2P1cW9IpZWUq/iA=;
        b=dyybtAKYugn55tSdk0ejJ5x/CPbkHH0TpHuUIMeesN2v01un2BHFcRRcpt/KfQCuu/
         xJL68JC5nQc8fkOIP5TQ3n38Vj5Md5usePN5bSF4yc+FNJxwxXakH59yQW9B40EMQweq
         KwwOK7r8Z4bNn8BbWUEpw1YvcDvH2SdSp/tLvjWclv5ZUjGDRW5mGIDakS57YT72hPTC
         lzqODhASxpVxaAF/Z58A0hVZGBoSwu4tvItt7vFxrQo2+p3S0wNqkX349MC82reXZQwJ
         AA4nLPYLj3r0JhyDj0BkyYrp2lTkh+i1DXyb+8018UTsJWzfu4DueV2WJD8A7nxk22Hr
         Dl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763301331; x=1763906131;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iqaGRJ1GY2x6l8dXoAfBLP7/ee6T2P1cW9IpZWUq/iA=;
        b=gtqYUAFm1FYaEfjEZgXLaqvszzEcYtdxVh130+zBJUET2C11psVtm5z04eDZetoo2R
         8ifwSv+0xnFh4oBJclSdvKUEYq9UQ8Og44SLZNZktIHDAkH3uSwZVr8sQOIKlz7/IEHh
         Jxxs4X6SEDpid1sj8S3IPANZvawzLRIeS9dYIgmx8Q/vhjs53UFPffHGKbyz/5qXI5hb
         RuL4MhzizG2+IOkb05T4WHa0F/r8vvtWjyWzJK4oJUV1adfo9GoYaGr/Se3apsIz5upd
         Jz7IFk7Ma4VTMHnsxoqEn7mXBFiyopdKN6CoVS+X7xGVgxf7VgS7PXZmK+ngChZBw6LK
         eaHA==
X-Forwarded-Encrypted: i=1; AJvYcCW7h5etlhWPicyBHijkUoWjOTVZVUQKdtIvi4ALRlurnn8F341GuX8grvoZWT2GMsojPpjjkp8Ptf4e@vger.kernel.org
X-Gm-Message-State: AOJu0YwjZkr5fp/VYU51Sb0Xs/dWwABQTN8cpCAxdLDsw3EvO9YN2ZmE
	Xt9yNDyo8In7Mp4/t71Fi8yI3JD8YXbDU51CN/kx+t7xGLrpX8u/gYfNtDlk7sL0GX0=
X-Gm-Gg: ASbGnctHydigSu7NLf7ljGEKoKllFVtZ01tM5F6vF9zlTw/IxFyG1Jg7LM73yzoq+1o
	EvwYdcqeUh10SSzgxQdufq91f94t/2dnpYiIX2GD+IEtugxlGurbgnpB2wAC0I4t7hu+ByVLl/q
	KL7gnsNJc0xtUvFFUGjVMbhuViOZNY3Vqi/DipF4KJFE9HxILb33NKqVrb7ABOQTAptqnLEzcL8
	3fvgqeoO4PUEKjHLsa1eKrvN3xI5vpg+zmXYRHlI+1bP9rgBXRUXR1BE03g6q67X7ctGtYPdLPL
	siuwkLMUrKR78ezf1u1QJBZMbB8bOKUyWZWCjFleJeAGE1pvmFddGnmLkt12ZEZ8z6ACt9G+JDb
	nR6eIkx1uEaLdCWaW8wGm4RndNn3MqaixmnEzdpUJX2qq2KZFE4t6AcEpczR9m0Tt3+xof31sR4
	G2lxoa+Us/5Kjm8vSQlPvqfiLzQLOwMGBMpJdB8L0qcKWs
X-Google-Smtp-Source: AGHT+IEUk3DdqvvTuoPw2svj7P8n3jQB7qQ0jl0BLgq51a3AoZNXsza4PugKS3KBfdWLmwJrvek4kA==
X-Received: by 2002:a05:600c:c178:b0:458:a7fa:211d with SMTP id 5b1f17b1804b1-4778feb2401mr84649915e9.29.1763301331148;
        Sun, 16 Nov 2025 05:55:31 -0800 (PST)
Received: from [192.168.1.160] (p4fc3ddd7.dip0.t-ipconnect.de. [79.195.221.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47796a8a695sm94835955e9.13.2025.11.16.05.55.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 05:55:30 -0800 (PST)
Message-ID: <9ef0e4f9-7594-4c26-ab45-38e62a7d0e37@linaro.org>
Date: Sun, 16 Nov 2025 14:55:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/12] dt-bindings: panel: Convert Samsung SOFEF00 DDIC
 into standalone yaml
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <20251113-sofef00-rebuild-v2-0-e175053061ec@ixit.cz>
 <20251113-sofef00-rebuild-v2-1-e175053061ec@ixit.cz>
Content-Language: en-US, en-GB
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <20251113-sofef00-rebuild-v2-1-e175053061ec@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi David,

I may not have added myself to MAINTAINERS when I submitted this driver, 
but a heads-up would have been appreciated before just taking it over!

On 11/13/25 18:57, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>

[...]> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7e015dcbac732..a4b16812d5a0c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8117,6 +8117,12 @@ S:	Maintained
>   F:	Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml
>   F:	drivers/gpu/drm/panel/panel-samsung-s6e3ha8.c
>   
> +DRM DRIVER FOR SAMSUNG SOFEF00 DDIC
> +M:	David Heidelberg <david@ixit.cz>

M:	Casey Connolly <casey.connolly@linaro.org>

Please and thanks!
Casey (she/they)

> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/panel/samsung,sofef00.yaml
> +F:	drivers/gpu/drm/panel/panel-samsung-sofef00.c
> +
>   DRM DRIVER FOR SHARP MEMORY LCD
>   M:	Alex Lanzano <lanzano.alex@gmail.com>
>   S:	Maintained
> 


