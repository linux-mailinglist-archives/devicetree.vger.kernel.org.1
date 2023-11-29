Return-Path: <devicetree+bounces-19962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7597FD648
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 514631C21207
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C9B1D6BE;
	Wed, 29 Nov 2023 12:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FCj+KUmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA9AF10C0
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:06:14 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40b31232bf0so53561925e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701259573; x=1701864373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0K4x5/3z5HBN3+ypyyGTbuqxNkiu5uT0EWvOU6MU1RY=;
        b=FCj+KUmJ43j5zfjYslLPt8In2wnyHaj5fqIl2m3k6cHetK7/jUaNyDZ2zdvhN/A6Vn
         A04nRNU9R+qeACsG8dQvoD9td/MP1iNV94jZEIxdhGRq2K8EkZYt25EfhhsxcTcaDCgg
         50xRpo0CVztoJWMNFP/arLioL72sV9jmv5i02Phhbk9LOC+ixLKtxBPO5Lp1d8NIK+q8
         CQ93mA9QhdysWwmQEFvq260j6CzneOSW6OXH6848xR6wk3WWNVlpcqHTrausH3MF4M9j
         73mjN8zp9lYfaAZEO4JjZuG4to8Q23RrN1v8WOxwBA5svq2aDVLPauOeCO5TiZeDoM8H
         EnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701259573; x=1701864373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0K4x5/3z5HBN3+ypyyGTbuqxNkiu5uT0EWvOU6MU1RY=;
        b=bwiiEA2P8jWkg7bFHyJ6vRXlsdxeVaQ+s7VjmvLSZwsBr3vw+k6wBKynB6EgIXjU9k
         TxhgCXSYAkeX3W5xTHqnLvjEzXug/w4aQI9qkCY0tMN/1iRr54TLk3lrlEAdavZXzZJs
         lgqZ5T2ID8EYMk1Toj9XJZrELQGvzUdFG6GKTyLvP785fRFFcSrKXT4yG3dFZM27q9aA
         bZ6ZifaYzxU0QDwccMncfScOy3o5iXB3kHFjBXJ2nVcdZ0CxvadTbMegUYnNQ3FA654G
         xkdyZ6Z7dCV1dyGS0yqrJCc4NoPPR6rFWcAZZOSa01qdUEuyIDlx09w/GHEuCTAxX8HQ
         uETA==
X-Gm-Message-State: AOJu0Yw+XvgZNvhTPE/uI5GLtbsQVTPWfO2+3viuGriAeEC8YAdb+W83
	z6nCRLcReCFmEuYYOsKCBZi6qQ==
X-Google-Smtp-Source: AGHT+IEavg7sg+S7jrYdKqWtEn3Im15kJntLpiPxKsrgDiaRvPVfxkIybp2af2B44ez/Hh5OE/pXYw==
X-Received: by 2002:a05:600c:3595:b0:40b:36e6:7940 with SMTP id p21-20020a05600c359500b0040b36e67940mr13885625wmq.35.1701259573212;
        Wed, 29 Nov 2023 04:06:13 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:38f1:13b7:9b7a:2d6b? ([2a05:6e02:1041:c10:38f1:13b7:9b7a:2d6b])
        by smtp.googlemail.com with ESMTPSA id j35-20020a05600c1c2300b004076f522058sm2048368wms.0.2023.11.29.04.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 04:06:12 -0800 (PST)
Message-ID: <9d86cac8-3654-43ca-84cd-fa9ea8e91772@linaro.org>
Date: Wed, 29 Nov 2023 13:06:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/4] reboot: Introduce
 thermal_zone_device_critical_reboot()
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 conor+dt@kernel.org, mazziesaccount@gmail.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20231119130551.2416869-1-festevam@gmail.com>
 <20231119130551.2416869-3-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231119130551.2416869-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 19/11/2023 14:05, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Introduce thermal_zone_device_critical_reboot() to trigger an
> emergency reboot.
> 
> It is a counterpart of thermal_zone_device_critical() with the
> difference that it will force a reboot instead of shutdown.
> 
> The motivation for doing this is to allow the thermal subystem
> to trigger a reboot when the temperature reaches the critical
> temperature.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

[ ... ]

> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index cee814d5d1ac..3644326b18ac 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -361,6 +361,7 @@ int thermal_zone_get_offset(struct thermal_zone_device *tz);
>   int thermal_zone_device_enable(struct thermal_zone_device *tz);
>   int thermal_zone_device_disable(struct thermal_zone_device *tz);
>   void thermal_zone_device_critical(struct thermal_zone_device *tz);
> +void thermal_zone_device_critical_reboot(struct thermal_zone_device *tz);

It is more relevant to keep it private to the thermal core as there is 
no user of it except in the thermal-of. IOW in thermal_core.h

[ ... ]


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


