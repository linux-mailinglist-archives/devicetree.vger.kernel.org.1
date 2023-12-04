Return-Path: <devicetree+bounces-21471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 846E4803BCA
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3852D1F21120
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34ECE2E849;
	Mon,  4 Dec 2023 17:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YdhkMhoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECE2A199
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:36:40 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40bd5eaa66eso27866815e9.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 09:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701711399; x=1702316199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrH3TZ7rDJNZ1i1xkHsBwxvyHvELnk0ZpD7/x/oBw9Y=;
        b=YdhkMhoGN1X3whSpOe/FsavSLt1BL7ZAEYCFyXKBvy4xL5/wMbF8Xnf94cxkpGUkj2
         hevO8KVvQAQQ7OhmH8LXHaVun8jHAuVHf59P+DgXeKFIX0O4SbKO5jsdRVVHdOG33pC9
         wYQCXLZdAwOymvJYoJHKUnY+ezt0dzK5VwZLhJtQrqjf8T1eEoAkg73GgeU1L0MPrJVM
         0EbPytgwOIie/vgvAllONoh6HFJHDGTLfl0vRM5kJzLSLIh1GNKA4A4tFN8EhA7Daxgv
         VKrEhBOR8YwrzC4DxUgrRMQM2KvfLaLPuEyYxpbter4gSn+SlXPDIF271bqFI/QQ5X0O
         ClZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701711399; x=1702316199;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrH3TZ7rDJNZ1i1xkHsBwxvyHvELnk0ZpD7/x/oBw9Y=;
        b=Tj0Pe3AueB5i9ooZrpsY6zaiywcXbnBN0XM9TlVVixZ74/sWLQCoSIyTugRHkEJ+nQ
         XDWvawv+eCQfhhBOOKvrc2HFRFQYRtRXV0kwP1pG4/Sipxp4Zf3JazPE5h7icGQylJbx
         leIYiKWnRl7c77AxqPCm4CSsoNdnYT+E6tR9tu9RODB0t9BUuc+ZQyEEO8OuQ6tfKkA7
         cV3SxDOqYFP4oDSp/3/Eq1DthvO8AsfDqucIfLSN4HBkBHFij9+vdgwcFeAMpJzhs0Ra
         PMvpKKoWSt+AUo7gRizTQdKoehVF8+3W5Qg//hLOiVs32sqUwtdiocLD6mBaiVR0Xdci
         BBUg==
X-Gm-Message-State: AOJu0YxHL/UehWAipn/hDZLbPo4RC50XFNdMYy+NrfZp/enxi5jFS/ch
	ZZTPNCbuLISq7YKQCW/c50daoA==
X-Google-Smtp-Source: AGHT+IHdnEyw7hSWzDnQ6Cq7koICvW6bO2UEREv9+4lNfMkR8SUMavgu503H0yzMUvZMLsKT14gfLg==
X-Received: by 2002:a05:600c:3115:b0:40b:5e21:ec0e with SMTP id g21-20020a05600c311500b0040b5e21ec0emr2430132wmo.64.1701711399381;
        Mon, 04 Dec 2023 09:36:39 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c831:1e47:2:5b96? ([2a05:6e02:1041:c10:c831:1e47:2:5b96])
        by smtp.googlemail.com with ESMTPSA id l27-20020a05600c1d1b00b003feae747ff2sm19560106wms.35.2023.12.04.09.36.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 09:36:39 -0800 (PST)
Message-ID: <518bff9d-5cf8-4211-bdfb-7d8edb80d89c@linaro.org>
Date: Mon, 4 Dec 2023 18:36:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] dt-bindings: timer: Add StarFive JH8100 clint
Content-Language: en-US
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>, kernel@esmil.dk,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, krzk@kernel.org,
 conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, tglx@linutronix.de, conor@kernel.org,
 anup@brainfault.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 michal.simek@amd.com, michael.zhu@starfivetech.com, drew@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, leyfoon.tan@starfivetech.com,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-4-jeeheng.sia@starfivetech.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231201121410.95298-4-jeeheng.sia@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/12/2023 13:14, Sia Jee Heng wrote:
> Add compatible string for the StarFive JH8100 clint.
> 
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Applied 3/6, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


