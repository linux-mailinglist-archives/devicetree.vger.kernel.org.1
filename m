Return-Path: <devicetree+bounces-137376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C56DA08CC8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D3CA167B23
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2D020ADFB;
	Fri, 10 Jan 2025 09:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="j+aOBV8S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE9920967C
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 09:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502483; cv=none; b=j6OZ6SnNLAHYy8XyEsEIn2OyyPzgxauzVXcSdChtFLxFA+Mnbo0jCxQ0IqksBG6fbt+/pctvEyuhTdiTqsKmL2RLIDFMRXEGzDobIjTJ2gXJmf6RlqPjrXwiBJU7C1gXaJ4gPYF4Zf8EQ6e4SJSKrpbw3VXVZFnj55s08CTjA7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502483; c=relaxed/simple;
	bh=rKybumwsoQTZ1Tl5ALi9GhI8p7K1pioxENgfRZqZaro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R2NVf+lh+7z5x0ij03B80UXITGtRJ5Cr3/OWdIDYHLUWEBT+z7pVwk1/hg1rpRrmXun8/8jjy9CrT634KeUMhtt2Wi7u/QY4Xvd4jouRHfP4g7UZElOCjbE+HMIKkMM191CMfJTEvmQ/XlZOvuAmVRddrb8fdlbDjdE6u3YS7BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=j+aOBV8S; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4363ae65100so19726525e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 01:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736502479; x=1737107279; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CBGdfJMdVhlPTQvAdZpJcqFAGRqMXm8T9/wD9E1IyTM=;
        b=j+aOBV8SjVZC1HFQYOUmB23L7EltMJniW6ogdBkzIFDoZudqBhfnH86HDyDFUfIX3N
         he5YB/IKx2UIeBo1PWZCUFHklc/qle7Ng5sqi5OsfDxBCA+wBbhkvcn9KqtKyu23USdf
         ONlWlIoe0U4A0A2jw5pI8+BBH6Nm36LjNcarvirb6WsaYH63uXBanDzCXR7ULbzwfXqO
         ykc6NVvZCyxKWdUAq1Xpao1UdmZOcxRwWFaaUEBKxb5/upwG88g4R5K+NV2NtlHqQE44
         44ppyJ0oSYpRBWSFpNCMoo2hncMvGyVEzbSqPgkzJiMrVwlpKMGcuP6Khd65Zr9WfUgx
         1WJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502479; x=1737107279;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CBGdfJMdVhlPTQvAdZpJcqFAGRqMXm8T9/wD9E1IyTM=;
        b=IayoX30/Fl8IZGSF+vYd/SPpH4yYjvHF4OKpP1HTXdFW/LlqRBIaP5ZUUROmRSLIQQ
         otUrLYXNX3zsPUgJgV6YXxjZFg4BUjT67zyNVsoXqrJor4eEekyTLaBd1T80Gi9DofXk
         A0AjK9GaPwqZIUbSaWEsyvXcyA7KSjvO+E1MAioJYduvcooG4DiK8RiHuMa+DVq3Bx78
         e93NbUgCfE0614/979rbcNgjKniXwUXeHkFg97ayTaOGILfD9N3c1r/79bX34MUFkdDI
         E9cZAfUv+YpLkKvtBDUdNCQGNR20lPqOUf0CryPiIrocCuYqdl+FeOd5c4hnmXh/MriM
         /jeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXnpvxR46jvG8zAP/NFVJnPyTFdhN/a6vBypHyuf/ng/k5zvk/DkKs6b94Jc8UEE69SVxtYx7p1qyB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1B9fUvedy1+2dwDB/7DL8gg+DDOL4aMBqcNX7He/tSPS3JbI7
	+f8JsDSU6lwfLSXH3yluwpUyQjNXadtTDWwk/pV65LCDH93WcjJcnWXi6eIW5pI=
X-Gm-Gg: ASbGncsrmf/IXmiEVk8u7Vjz2n7rYFsbICS8ywXfY9ujCqeYHM6z71On7eBgH4LMAGO
	pG8fVRwR0H4P32bhKIVZW+Rxmsjb4jUqJZYcUVPL19skugm7FHxDc9FITBeVLRG7o5nVqTG82dU
	whlN9tF6e8+3izjIzz703S7t3e9Hzd/QgbDFRsNazFOIl3TO1NJSL4KeFrUZnQG1/hlhKF2L6My
	waReOuD33cZ8C8A0VMLbqqGY0V4DOlP3QCP8pO3tB9zltsDSpKE1cqrSRwUTfZQLil+1/grTR+n
	G2KcNYQf+1Vhy8oTE7IPAwwhAE+H
X-Google-Smtp-Source: AGHT+IFHyFvrD9JGtDK23deWD3TLVFj1J1IlYF6J7R6HXxf4RUW/XkwkfNSEE1u37u3mcJyOGBdgDQ==
X-Received: by 2002:a05:600c:1da8:b0:436:6460:e67a with SMTP id 5b1f17b1804b1-436e889dff0mr54195005e9.25.1736502479074;
        Fri, 10 Jan 2025 01:47:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:5ee:79d0:2555:edac:4d05:947d? ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2e92a50sm80261485e9.36.2025.01.10.01.47.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:47:58 -0800 (PST)
Message-ID: <f2cbaae9-d0b0-48e7-a869-81ca9666fca1@baylibre.com>
Date: Fri, 10 Jan 2025 10:47:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] arm64: defconfig: enable display support for
 mt8365-evk
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
 <20231023-display-support-v6-4-c6af4f34f4d8@baylibre.com>
 <f5859a83-975b-46a3-a33d-ab203efd9e21@kernel.org>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <f5859a83-975b-46a3-a33d-ab203efd9e21@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/01/2025 08:38, Krzysztof Kozlowski wrote:
> On 09/01/2025 11:37, Alexandre Mergnat wrote:
>> Enable the DRM HDMI connector support.
>> Enable the MIPI-DSI display Startek KD070FHFID015 panel.
> 
> Why? It was in previous commit, now its missing.

What is missing ? Don't you asked me to squash the defconfig commit ?

> 
> Best regards,
> Krzysztof

-- 
Regards,
Alexandre

