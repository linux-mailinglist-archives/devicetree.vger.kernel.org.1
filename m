Return-Path: <devicetree+bounces-102273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC70976295
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3889281D9A
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B5C18C34C;
	Thu, 12 Sep 2024 07:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="epZgXKSU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6955D18BC0F
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726125825; cv=none; b=K4jegyHcqxIdjLok+sxZr4G0SfaCbYg9eVZganBHMyWuLud7GCut8PbGgEW89a6R/pZte1cRWjpF45Yzj89oZo6G63zRFWedV3BqhFsOqUdKDKB3QAwh5CZiXqvFaCajDUfSWqhgD5xUY4Y64w3rnQu+ArVhAVxdIJ3AEI9GjSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726125825; c=relaxed/simple;
	bh=b3RBYoxYxR7tmU/NA68lTy+b+/ncUB/x9ZWTx1zJqaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D1swTiw7yDYMiRVEmCQv0HJlk0x4eoKodW/m77Oi/LF5GmpzvJ/PJAfvcx7+h4wbpo2e+baCHinPI6AsUUuyRYnaXFfl0SGCDc1wRkF2xyGxMWmNOjmNIVRJ1hDVqZdQtp88s/XwqBLGlzWGvVUH9amecEtBSCV5OJeg7m0cJ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=epZgXKSU; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so5548175e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 00:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1726125822; x=1726730622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b3RBYoxYxR7tmU/NA68lTy+b+/ncUB/x9ZWTx1zJqaE=;
        b=epZgXKSU/WLfyalfbSBFmL+JoFcaX5s9j+iucVDbi6Ox0ibO4xZxTjJSxJHqRoZeUc
         GApFeI3Ti3T8Eqap+rqHGi/mHzsvwLHJ/ferowoONoHTxaiOuvSMhwFGpW6/33xOLjQb
         XBeTbFXYRlOQUQLH26pgUEvqL3odTujTpvaSlwti//xE4m54tJYWwGB2955BG1ZhTqs1
         wmg1UsCDMJmYe1JZSfOMmTjGfOHiZf5mpRsq1/eudoKLvrBNt3/2ImRL606qYgd1YwHW
         Gw5/Z058BCzO5JB0Tp8cKzecopnxsO6fpb4oLRGBHcsUVsFr8UJvyKkEXL9NycNflszu
         WJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726125822; x=1726730622;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b3RBYoxYxR7tmU/NA68lTy+b+/ncUB/x9ZWTx1zJqaE=;
        b=OUqiC9rHMwVS4s7AoBBhUTmqxkWx7xpjIR2+cpm8LOCPuZfa7UuvR1QfOBbvr1twZw
         hdhb2To/5p+oox6qNRj0TZ6a1AuhKmTGGBfWBZY2r78Yd/QQS2vyE+S7eL5VU0DS5tmE
         Ipv683M6IePSH1gIYFmcqEBXE9mGVCcILadFK5ItBl9ZzDmC4/B3JbidikVvyIU9P2qS
         Ln1p3E3fdfXF58tFqO07GrISl2+MU2sHNlbFY1+f/J4Wce4pwjwUYrFcoAvkCgKN+0Kn
         N4HS3UGCAwl11e+ueJZbwXwg9PstHyQFU158+2n/Q+wf6uGOTV4UNINNqoN3MONNSSif
         BHHA==
X-Forwarded-Encrypted: i=1; AJvYcCUBUfppOQFtdHLNbwx0QKL4Ogn9V+VFGYU1qiyyZqqMgzXvfE0XPYDfK1XwGbFWov5cON7Orh5MQv0k@vger.kernel.org
X-Gm-Message-State: AOJu0YxifLv2WazWutBYh1xKuMXhExjLfDv8srsfNrL/fFQM+GvqySUI
	Msxa8OUUCPwoalDP1pRbm1orCg4CiKGLrZSyBv3fwi874QBfxtxl+I7ITBQe6As=
X-Google-Smtp-Source: AGHT+IFTUZrXEmATrXbBEXJoW1c2a0YR/Y2T+PSZKiUiUytls29Eqi5/26UuYIcNMD0hR1y/E/4LAA==
X-Received: by 2002:a05:600c:5249:b0:42c:d74b:eb26 with SMTP id 5b1f17b1804b1-42cdb5486e9mr15290215e9.21.1726125821750;
        Thu, 12 Sep 2024 00:23:41 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.24])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956761c6sm13557444f8f.61.2024.09.12.00.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2024 00:23:41 -0700 (PDT)
Message-ID: <f1daa78b-43e4-400d-bb50-9cce1b42fd86@tuxon.dev>
Date: Thu, 12 Sep 2024 10:23:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sam9x60: Add missing property
 atmel,usart-mode
To: Andrei Simion <andrei.simion@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240905093046.23428-1-andrei.simion@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20240905093046.23428-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Andrei,

On 05.09.2024 12:30, Andrei Simion wrote:
> ~: make dtbs_check DT_SCHEMA_FILES=atmel,at91-usart.ymal
> -> for all boards which inherit sam9x60.dtsi: serial@200: $nodename:0:
> 'serial@200' does not match '^spi(@.*|-([0-9]|[1-9][0-9]+))?$
> serial@200: atmel,use-dma-rx: False schema does not allow True
> serial@200: atmel,use-dma-tx: False schema does not allow True
> serial@200: atmel,fifo-size: False schema does not allow [[16]]
> -> Means : atmel,usart-mode = <AT91_USART_MODE_SERIAL> misses for uart:
> 0,1,2,3,4,6,7,8,9,10,11,12

Can you please explain in plain English what this means? From [1]

"Once the problem is established, describe what you are actually doing
about it in technical detail. It’s important to describe the change in
plain English for the reviewer to verify that the code is behaving as you
intend it to."

Thank you,
Claudiu Beznea

[1]
https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#describe-changes

