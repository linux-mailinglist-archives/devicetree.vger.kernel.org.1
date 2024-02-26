Return-Path: <devicetree+bounces-45916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 960F3867492
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 13:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8D351C222BF
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033C4605AA;
	Mon, 26 Feb 2024 12:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NKfEe9PE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54686433C2
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708949858; cv=none; b=bLdxvU8npSrd079FrWZpu06fGhk+VLvWER/AoDAmsp6xLF4+oR8w5UTaCwsZCObNEgpOy606LmHwF7fE0rXTgElBJSOP9GvjRFc8DKxULWK9u3r+zYVmmWoEaZoZa66bSbj4gCZod2TM+NVHlMp46ONxmiTqFJFp0oy/MmeYS08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708949858; c=relaxed/simple;
	bh=OGa8p8GgC/sb7ZVi2Q9MDNE+Wiv/ZCXz/jfCrGqA2yI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pubA/4wYMFSfgxwvzMZEFPSMYv++SJnm1aKPv++PSDKMrJm701pdTVymn+Y0J+TZvu/Gb3u9GPAmdge3artJhVdZZXxckfsbtJfoC0Fm5GvhJjnT1+cxcJQy+fyg3pAufMBEpzxjo9zeKLgzWJUvbidxMaXIJYMOnc1uw+EStIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NKfEe9PE; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33d7b8f563eso2515295f8f.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708949851; x=1709554651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cjYNEFjj+8Br1K/kWVmcw1ELzUHGJ7r8kZWsJb6hqRI=;
        b=NKfEe9PE+8DLfYH962wdrzgAynjfJzZR4bZvzvomOX1I0vEMXYYcGVHM3ZnYIvyyxF
         E7olb6ccQFbnKJ0g+C076g/FTjD7GjsgGexR0k0DSvD5VFbGPcdx9wyV3LQhtRx369CP
         DOwYAzgpGZ80gJLj6mmvJVkiQQFaBDCc8QVltCCh9vGwizwl5Vji3IXUF7eU2sXPCgv6
         hPswyDGHxWctKfargV7OX6j8PgjE7MA0nOUKuOjwLlZpiWk523PA/Rg67xUcsvKPsE7j
         8scMRJJ18R1c4qSX71mSfYIVprMOPVzycYEHCowU14AMOe4j04Ve1W9SfY8xZnm0VMvI
         F5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708949851; x=1709554651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cjYNEFjj+8Br1K/kWVmcw1ELzUHGJ7r8kZWsJb6hqRI=;
        b=ifljv3B/tp2/IulUz8NpWKLAGZrEyPo5tLqgwPfii1PCLCvEA/jj32G4yqjiydWFO5
         qhHusAt0VVwV82SCT6pLL8+wwHhZFhqaiQZhqBUvsvokx/LNmIo9gyqIS7OQ/zi6ov83
         LFlX14Q+lr5ONDwy9PgB+VKKnA4fhzNiBfkAgZRA5esQPKBQjl6TomqC9HFHvLC9Hkd5
         k8QpIV3bNKUCEJT4b0y+5GBb8DQacHvt88XtfhHLeUfYGaZwmXaFjc8hIbjpM6bqkGq8
         srHXVQRsP0CPtpQHmJDr2EkouPe6TPaSNwOQlaH6Yyjug+rwnI5XndhrCbERTLO9ebCM
         g+pQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiZkHbrMLiU38KNlSuiD4+Z7owKF2A+kWubzAJceMFtLnuOwzIl8wOhv75fam+qAHh86tp6Fr3fYLs9HIUGSPTHh2Ge5dD4l5FSw==
X-Gm-Message-State: AOJu0Yz30m6Xdw/YRpAONQQz66opn3XBfotU+sU8T+KdJdL2ZTG+5gF1
	6BGuw7D3BMQxsShyLDe4SJAcpRaZtKSaBSfEsW6CnrB4kcDfnkzbq1RT6R8MzAU1NO9D2kH+u0i
	5
X-Google-Smtp-Source: AGHT+IHk1FfpA2y4Z9oTsQIg5vqYkF8R+cidEV/qNA4rtoBDqquyDCAvUHa8PCJ/+wEXXwmQMEcg1A==
X-Received: by 2002:a05:6000:1841:b0:33d:2180:30da with SMTP id c1-20020a056000184100b0033d218030damr7107865wri.58.1708949851400;
        Mon, 26 Feb 2024 04:17:31 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id bj20-20020a0560001e1400b0033db0c866f7sm8245904wrb.11.2024.02.26.04.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 04:17:31 -0800 (PST)
Message-ID: <45c31edd-45ea-4101-ae1d-5e0f95c88d20@baylibre.com>
Date: Mon, 26 Feb 2024 13:17:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] mfd: tps6594-core: Add TI TPS65224 PMIC core
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-8-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-8-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> Add functionality of the TPS65224 PMIC to the TPS6594 core driver. This
> includes adding IRQ resource, MFD cells, and device initialization for
> TPS65224.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   drivers/mfd/tps6594-core.c | 250 ++++++++++++++++++++++++++++++++++---
>   1 file changed, 232 insertions(+), 18 deletions(-)

Acked-by: Julien Panis <jpanis@baylibre.com>


