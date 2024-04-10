Return-Path: <devicetree+bounces-57947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A324689FB15
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 17:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 090ABB2CD83
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807E8174EE6;
	Wed, 10 Apr 2024 14:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1DX2RzVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E1F174EDD
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 14:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712760946; cv=none; b=fU6V5KAVJSEpzu5hRE3nmY4NlYbP/pYOmuw2/wGyDHZrj0zeRtkVZI3wQmZZuMekhvoBZjuHtxmFPVPxyOoL297/1UvgF7HQQNNk2B5WTrNUQXnmoQm0moUWepqKGhnKq+LFCQqodDJ2eMIPG3hhhBQWELMo/4zI3wRkPNk75II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712760946; c=relaxed/simple;
	bh=UKOOA8/7HQj4e+/LtfW4BZ4tyj66iZmzmBjEbudutfI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gAUOHyCd15iFQB4952Ft6rXNZIPSBAqzWxq2sFm045D1JbdjwFwq8cqaBoanWjJnGZ9i6LHNc9eO7vgg3sskqQ8GL1Cul0m6gfofS7ZtbbajKhOdqGLqdw+70TTBGcppdzdtbvRkFIbICVFgJC+GGY8Xw6oZ46Wh2maSVugz0e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1DX2RzVs; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4155819f710so53891445e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712760943; x=1713365743; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qkM79gW6w0NVDaaTQoSffcdoou57mwLCTgADK37diJ0=;
        b=1DX2RzVshblQ96T0M9228b6U7oj5m0wslbjMdhsS8VzclEzlK/XXI1LSvnFv5BjESF
         cB7CRok4aFWDyB23YFA61iZIzTx8lA2TecHfZzCIMpi+vvIy/FFW7AHXetURShSodPp6
         lVV6WoLof2QYVNFAU4VqjWRxXv0MdRfGrHlEEDUi1vFyLCsOVXNsxR6dx9xpWntz+dnv
         /tRhezyeFWQBmK3irrjPWxuM9o1TPQcN6vBK+K4StsfZPAiCWpHZ5173A5E9pKAift4S
         pOac36TY7FtrdBIpRVBfy7Rb344t5t4bHgNcW8lIUCZmjonesbQPOn8mPw+ZtoB8vr3J
         78Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712760943; x=1713365743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkM79gW6w0NVDaaTQoSffcdoou57mwLCTgADK37diJ0=;
        b=XdbxGuSkLbfhEHdt+eLjPoN/yH9tNidG9Ul8tovjn3LBpahOIMPzszVbYfTneEZ/RR
         0m6XENtTQkh7Rx32+JJXQ12T7qj2l6ITRr32nluF8eGKmv+pJRc96u6He7sE0Qb0L+8g
         diKcF7rmplDpShkxFqWPV49WbYgmAyqph7toiNSefAtTyhKC6kMCaUXxsuxoFVkOcXO+
         Z9gwNxlgvA0Nb91R+0oGBrVHtrZIdrWyqlJmEBFa5IwuWlXCs+oPEEs8unbRrQ/UGOh/
         WLqu2P8R2mp4NOdctpE3LdgynZYRGwQSHz3F/qbjbBey8C2EX4eNlRDImDnv6z2wS3cF
         mY6g==
X-Forwarded-Encrypted: i=1; AJvYcCXX3+wyfSB+TVg54mGA1a4ZT9dsk+QclvvMBUnjqy4vfu5ZvSY3rR1NfQVADs9IfNnjeqkCQA4oHK8U3+o0SHmvG8F3a41n7ErIzQ==
X-Gm-Message-State: AOJu0Ywv1/VT7ZYcxrmmSkK0iUjcAKkGHd0zgUtLJj+UdMFaxQJZEj2y
	6KUS2ee6hzcCcIEbzlT0Xd4/AjtSaV/QQpi0KRdcWAL0W2MN8mpXjb8kHgs54ms=
X-Google-Smtp-Source: AGHT+IGNeLxOaiscREzifrbAz46PPEQrwOJh5pOyr0RZ/5W5R5nlpeialGLWcsM4T9o9oxKaQqjncg==
X-Received: by 2002:a05:600c:4511:b0:415:8651:9b8e with SMTP id t17-20020a05600c451100b0041586519b8emr2356050wmo.39.1712760943089;
        Wed, 10 Apr 2024 07:55:43 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id bg25-20020a05600c3c9900b004162d06768bsm2523860wmb.21.2024.04.10.07.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 07:55:42 -0700 (PDT)
Message-ID: <c86fb571-fc66-4549-9592-9ea984f3e49b@baylibre.com>
Date: Wed, 10 Apr 2024 16:55:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/18] ASoC: mediatek: mt8192: Migrate to the common
 mtk_soundcard_startup
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 broonie@kernel.org
Cc: wenst@chromium.org, lgirdwood@gmail.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, perex@perex.cz, tiwai@suse.com,
 trevor.wu@mediatek.com, maso.huang@mediatek.com,
 xiazhengqiao@huaqin.corp-partner.google.com, arnd@arndb.de,
 kuninori.morimoto.gx@renesas.com, shraash@google.com,
 nicolas.ferre@microchip.com, u.kleine-koenig@pengutronix.de,
 dianders@chromium.org, frank.li@vivo.com, allen-kh.cheng@mediatek.com,
 eugen.hristev@collabora.com, claudiu.beznea@tuxon.dev,
 jarkko.nikula@bitmer.com, jiaxin.yu@mediatek.com, alpernebiyasak@gmail.com,
 ckeepax@opensource.cirrus.com, zhourui@huaqin.corp-partner.google.com,
 nfraprado@collabora.com, alsa-devel@alsa-project.org,
 shane.chien@mediatek.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20240409113310.303261-1-angelogioacchino.delregno@collabora.com>
 <20240409113310.303261-10-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20240409113310.303261-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

On 09/04/2024 13:33, AngeloGioacchino Del Regno wrote:
> Add a const mtk_pcm_constraints_data struct array with all of the
> (again, constant) constraints for all of the supported usecases,
> remove the duplicated functions and call mtk_soundcard_startup()
> instead in all of the .startup() callbacks.

-- 
Regards,
Alexandre

