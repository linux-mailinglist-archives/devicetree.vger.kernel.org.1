Return-Path: <devicetree+bounces-45897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B63186739C
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1478F28B689
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5DC424219;
	Mon, 26 Feb 2024 11:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zFou0s36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612BF481BD
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708947637; cv=none; b=CiCZ1PYgnzpUrkYpfxvMnqOhZZ4MxFx2XyJJRpqwmknLtuzmGo4zwaYNkqC/qTVPQzCVHo7yzWhPRW2nuxUnq3S3qXKp8V3MJUnGwTUiMz+NyNtYexEKNgha3owNj09KBHCxtQVqrdjXXdbUcOyxWnDPNo9kX/TeeQVfPjktXm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708947637; c=relaxed/simple;
	bh=Lvv83F/JXjSkTO1NfKpmNzKZvjeeJrkzv0EUJdVxPJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nvwz746m5nmCUD6t1CEMjqiXvgaPEzXYXhx0lyd6x1IE3Xz2wvt+nMTnrdRycB8q6A8Zu8yxe93VtGRfekTlF0vNK8PjbgsX3+6fFQPCXwAVIwa1aix8n6BXzxu444E9ITNdjqxgtUpMBrBQQZoAiQxrEQj5w8De1vhVnMT1X4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zFou0s36; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-412a4a932f4so6516015e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 03:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708947634; x=1709552434; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=06KPSTKzHW77048vXlOHoJSkVd2h/sUXlOv9/7gu5g8=;
        b=zFou0s36DqMhh4qxzxyuecLzVUTsDrBeAubNdoADaklgEamwewQtlWyOM279fIzUc0
         iVUnKifcHNf8zHGn0YS808l3ymWpqUWshB7CwA8GK+gsFS4/SX5m/RX3P3Jkzye+GUzj
         1EUpNYBXFZWNu9o81zdS1lyURZkGSzS3hvRPeGI66gHIHAVHeJgb6itvehGX8mhCfWI+
         JGrDFNQcYujXM3VfMrMKOWOvVof33CPzVHqz4mzXP3r5aljaMJq3fhqEM2hajvut3cnm
         gQRNA6js1O9dMn6zJgQC4J7rwgShQufJYyRqwHyyVsNjeYjOba6OdMCX8dcZG7G+h7en
         URLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708947634; x=1709552434;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=06KPSTKzHW77048vXlOHoJSkVd2h/sUXlOv9/7gu5g8=;
        b=eaREDTG3MB1KUe4VEvtK3YoeQp7czP7YfXEePWqN7a7GFF5fIwEV5ItLeqnotefz02
         WansxzvNcD75izRLV5AHXSOdJyWc+/UocEmtzroO5NwFB4k19biq8g3+JO4KuaWjYW21
         p7htYSpOvaQLBrApstrykcnrvawpVujjHre9sRtHsjgfQikARmrjisoF2AtcvOBtIQZs
         26d06SyxJSBjioydWPS44MsI5cQdC/DkT7/sjvzIXCn7GQpl/cnp+YD6ARcqT6BBT+OF
         GQDtK9EssI4VkqV3lifQYpnDAwRNKtCsp6pgiJti0P+KuyJyetJF3RAEwbz6j81Wzw5D
         l2jA==
X-Forwarded-Encrypted: i=1; AJvYcCV36lvqlE+vlSMcU83GaC+uctqaFVOIfphvj8mzusVjztXB46Ry87lGCZZksGOLHYPasmRttVXL15TCrGtyHWuBOFnE1vOuJ1XL3g==
X-Gm-Message-State: AOJu0YxRzhGBxu+CPwXfZQI+ulwdZUzCLChnLKMBeIJvyucn1M75k2s7
	v14TQom5PCfqH2DBk/5jSaJCRcuZrNaIdjr9ioBy8sbYRcY5QelV86VzCDyxgDE=
X-Google-Smtp-Source: AGHT+IGug3rTNmKVoEFrfPguU2Hslxeqx3SPtgsUmbdWz7KZ3aNwC/ADtWfjXTmCHd8gPE5UyZ5gWQ==
X-Received: by 2002:a05:600c:1553:b0:412:a206:ad3c with SMTP id f19-20020a05600c155300b00412a206ad3cmr2360848wmg.3.1708947633419;
        Mon, 26 Feb 2024 03:40:33 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id j34-20020a05600c1c2200b00412a10d9f7asm5497510wms.42.2024.02.26.03.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 03:40:33 -0800 (PST)
Message-ID: <b80142a9-1cea-4c5f-8464-2ad6d33845c2@baylibre.com>
Date: Mon, 26 Feb 2024 12:40:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/14] mfd: tps6594-i2c: Add TI TPS65224 PMIC I2C
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-6-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-6-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> Add support for TPS65224 PMIC in TPS6594's I2C driver which has
> significant functional overlap.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/mfd/tps6594-i2c.c | 15 +++++++++++++--
>   1 file changed, 13 insertions(+), 2 deletions(-)

Acked-by: Julien Panis <jpanis@baylibre.com>


