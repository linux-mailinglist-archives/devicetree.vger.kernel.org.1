Return-Path: <devicetree+bounces-60785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DAD8AA59A
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 01:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B86701F219BB
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 23:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F772286AF;
	Thu, 18 Apr 2024 23:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F3jiI+yM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4139224D1
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 23:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713481492; cv=none; b=JS4WZUiR5jhWd+P7I2/xFqiY87PHvXQBY7rdmJRqvFT2LjPTnMXEzKG6UsZUZNo5yom3nn3DVSr4DAIyzw1clJvZEdDGti3RY7HJ5SOGse/INt3pw9CIoglV68Nqu6A5uK5b/f9lxFzmOAE0Cr53AjH2XMvJGDwMqOxnCp6DU20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713481492; c=relaxed/simple;
	bh=le+niZTrpNStal73VqKgvNMXX0gFk5EdkSk+WXIQntA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qI+m3Hcye2QZdm1bCgmiVDPhE1e7Wkwa4mXlORxfApY8G9IwHpQkIyt6Svaqmou1jo6IkWszUn1MGCRbRPWmQQeJ/+jZEK37FvhIaa/TbXhtPM/D0aP7Paf6Ry3twMzg2Vw/SbHEXEWf4il232ZegwwZtt8dHKFdthVmGaP5E2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F3jiI+yM; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5d42e7ab8a9so883537a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713481490; x=1714086290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cSRxbDm9eRcYsgpOAF3L6ZbI9LzmxpWl8JR/uimnOO8=;
        b=F3jiI+yMnjhXX7d2KWB08HYQYrpBBPT2WzUZ3LG5pqW7PxBOVPXiozeoBggHIUxzR0
         7+EaXy617HrawmLQEsRbIfyviirS6MlkBV6x4Ipopg3fuvEKz5+C1/Tv8r29SYTdUsvk
         swC0R/n52LmDLS8Qvcfap9WNpTc3TIXz0lBO8dfk4TDPUBA1juWvj9kFJOhuteNOURFq
         6/vEKsySMfs4XrdARC36o3A401i8vKGdbwgjoBibJu2ghEa3bCoCX9WB0XQvbrP1lvaB
         sTI/594tyJqmK4157Rg+erEThsrtlFInGl9Z+bWKcymxvf+JQWWeltNn8vTTKcZuKgiR
         BnnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713481490; x=1714086290;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cSRxbDm9eRcYsgpOAF3L6ZbI9LzmxpWl8JR/uimnOO8=;
        b=wWckc0zWUVseEabE8eFnAnO2Vs/XtIX5H4cWNhgDos7a4cQwlD1dR+GQNvyG/tJjRh
         8OHdavKTBzpDfY6Fdlt2vdst8kixYjjco7pO8yq0MxAgix8zzc468zKMqFS6xS2wA5hN
         RzlZn5Hsd+2ZpFm2plrJQnHe/9anXTZb61G9ada/92LPPy8M9J/gS5rotzfVIrSp5u7p
         q2+EGHnHySAnu5BpKse+h/bPuGJmD/7pnaRii1kqB3cyAiob8Fd0RYVUPXmf4eeaNcBu
         5LUAMzIatyv2qarPWvOa5e4j/UkXVL5EAqxF4G93Vr8IDu6yyG0FepgNT9K3CPa3gCMG
         Bgsg==
X-Forwarded-Encrypted: i=1; AJvYcCWVKzzeXO//dG/EkJBO2DmsFt8R0JL9xLA0RCKCPrgcJuaVgBT8YBJmfbZzpQpilrsj4if+R68KN3T5vyvhwADMVAfW23LaT9hK4A==
X-Gm-Message-State: AOJu0Yx+wuqmxN0+aTZJQCoqoJe7OfirlB/cWJxhNDtuD2RVdCGAZG/e
	gXA6oHnqc1+S9qk9VeiK0Jsegoc6pLxXIpY3qJ0NpAocsGzsgwfEZuNjecwshHE=
X-Google-Smtp-Source: AGHT+IGWSEGrJUSHpMRZQLEhk/JeUtHmmp5mTuNYqwUq/Qzt29DXzBa8vUG8bWcP5F4MwANeTcE6dQ==
X-Received: by 2002:a05:6a20:7f84:b0:1a9:68c6:c0a7 with SMTP id d4-20020a056a207f8400b001a968c6c0a7mr862610pzj.9.1713481490165;
        Thu, 18 Apr 2024 16:04:50 -0700 (PDT)
Received: from [10.36.51.174] ([24.75.208.146])
        by smtp.gmail.com with ESMTPSA id i193-20020a636dca000000b005f7ff083182sm33322pgc.36.2024.04.18.16.04.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 16:04:49 -0700 (PDT)
Message-ID: <c739a512-9a75-4f48-b5ef-801191c298f5@linaro.org>
Date: Fri, 19 Apr 2024 01:04:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic panel-dsi
To: Johan Adolfsson <johan.adolfsson@axis.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@axis.com
References: <20240418-foo-fix-v1-0-461bcc8f5976@axis.com>
 <20240418-foo-fix-v1-2-461bcc8f5976@axis.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240418-foo-fix-v1-2-461bcc8f5976@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/04/2024 16:01, Johan Adolfsson wrote:
> panel-dsi is similar to panel-dpi with overridable timings

???

> 
> Signed-off-by: Johan Adolfsson <johan.adolfsson@axis.com>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> index f9160d7bac3c..4c9dd4f66a8f 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> @@ -56,6 +56,8 @@ properties:
>        - samsung,sofef00
>          # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
>        - tdo,tl070wsh30
> +        # Generic dsi panel with timing overridable
> +      - panel-dsi

? Devices are not generic. This is very confusing and commit msg does
not help me. Compatibles *must* be specific, see writing-bindings.

Best regards,
Krzysztof


