Return-Path: <devicetree+bounces-234431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CE0C2CCAE
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 16:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 912A6189A34C
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 15:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9ADD3191BE;
	Mon,  3 Nov 2025 15:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZD8IbO1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C486B2980A8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 15:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762183254; cv=none; b=CeGIXxVd3oDG/qOXXRk+5jFoHfc8XHfj3jPXH00RRD1ao6Xb31OEHW5fSfzJh8T2bSCnG/Jq1jvkezdJn3dzx5ZV/D+HBR22d8lzCcy49qQH+zT76RQe3uSyIxvr3NmtHBMVk7Zq43nVqdAMl505L1hIv8PQYq4tdQywZYh5m0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762183254; c=relaxed/simple;
	bh=lCHtQe/XUv0C3M6ixsewWlKvViVNAryOiofDkbNl3Po=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=CxKy6nc7Urmyq/++XFzrdey7Xb26DmaXdbxIt6MKvlClOoYtDyL0Xu4a6D0CmKunkecCuulF9AZWTyxuo6/XBa3nMA1kdr8NsY71+UXpvqRojlSaOmcfW5XP7vRCN9rqDxYcvj3HTV/y3V3I6G/EoIMPro2g7UQPlJ+u1Fbyyvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZD8IbO1I; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7c53400935fso2851914a34.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762183251; x=1762788051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UU3IMwLVIuqUs9WFksfEbffdOpEdabEos7vPHn21iN0=;
        b=ZD8IbO1IUwKTJ9T1AVdGhe4mLoahqyPmUahRXcclM0ECsRAdmvb1gM7r5K66qOnmAG
         5K3Dqe1tCMT/Ky1mGTweNNPK2nmAu9ylEL7gOrM3zcXrgUSZk4oaNyhENnsyBVaWoipM
         aiDhTrY6CTcmf+jPBT8OErwj93F0vsF4ye1HEbINUw4PbHXZ0Lp5wN0wsytBlg2o/Kk5
         d5YsCokRx/7VAvJwXs2on7ZDdWjETAnIFSJus1HpseQysnq8hyUkwFs5V4fRpWFaSU9Q
         pU7WmbT+fuF/zezkNPcbS1f2ToNy5SDmPUCsb0cbGC2WnMCrUolW3NiSYguf5Gas4E1u
         78yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762183251; x=1762788051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UU3IMwLVIuqUs9WFksfEbffdOpEdabEos7vPHn21iN0=;
        b=kg2E88oOgGj5x1iF4z5Buy4sIYRPyW7LolCR8eigAWAEGHcyDmWj/OQZpEmLSAaYy2
         BktI9zi7cOerErjkVGpy3I1brOwM23+k1FI1cArOq93pakSCoWPtO4YWfrMWCwhVdumt
         NsDkbcDvKlCHe01Ejm2u+mrz8ef28JaIZldMm9pua/eX/F8YS4IN5AqI3/Zt2bhNZklW
         mTWVj5GqQosr3zNxHKqFEuqneIvieh29pvlI7Sm8XW9TqzQ/Aqq0f/kyOdWX5GaOpvv9
         +B6HBfAH1PbqkKkX9P0vpt/GfzSZUy0Kz9NEVK7lQwdRG6dZZFvnMXDNs/lw9hU6bamU
         89ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBwk3W4gZiTIi8JkuRO3Fce2rWXOZFwZh9jsR2isyQNT93mhxrlAo7YsAt5Cqb4MvwXWiCNwlb4+xW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm8GKQcjRD+q7V88V6YnuvOeZJb3WV7EVo2h7xmcdflaciYlHZ
	CPLPkEXb57jcyQjZTctYVVooEFzyK2fcdm8vmZ/5K/GVpJr1lHD2nozyTxV8QKSoUdk=
X-Gm-Gg: ASbGncuM7Vc5gjhHmCbOFlxMLFWlJ4HAkSr2wX0ITCnv9Qhd4sGtC7dY1zt8qnkLN4J
	a+qC2MazQdgplNHrdexda1tLsc2KFIq1HrZRFF1nT/TajmNUkU9wqVHeRbuXDiFaW5ZiKNpPJLh
	NvPfxdEVtTCCcC9xTw/efIZ3W2UhS3rZkcRQ7oCFr3XG62oPazbRSSQyMbirbR/nla5TGumcg2R
	lE9cPhQkm4b62HEyBfugjMCRJmAoSjq29G1raA5pQ+Jmp30mHGXckwOd9uI2+nTpoWF3RPJNgGo
	9OiSsuEzFRE4tKS5yHbCSfWmNJ0Bht7gEVwA9g4pltfuDcb/B8rQa7DcJHHu39bLeBRinII41yF
	k7cnebBqhU4e7SlckrXrbEc+xDkmSKx0xuDf1Goy8crtDsu1lH+vHpjkPYCSawn34cpyCFYbRuD
	URjGHox30TuBCL0u5lMDYbvqfHwG/W0EJ2s8BYt3zNg+DETLQokn8QMqvD6mQR
X-Google-Smtp-Source: AGHT+IEI7oaPwbMLZyrFhJm3x/2HChGggXyz1ZeRNUlqpKNsCrcEcUIruRtbDhBeLo27AIpbulOZpA==
X-Received: by 2002:a05:6830:67e3:b0:7c5:3bbb:9ba6 with SMTP id 46e09a7af769-7c68c82fecamr8720707a34.4.1762183250808;
        Mon, 03 Nov 2025 07:20:50 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:37c9:fd3e:34ae:9253? ([2600:8803:e7e4:500:37c9:fd3e:34ae:9253])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6c2448c9bsm208886a34.3.2025.11.03.07.20.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 07:20:49 -0800 (PST)
Message-ID: <3d2fde56-d82e-40c2-9d0b-2888160a642b@baylibre.com>
Date: Mon, 3 Nov 2025 09:20:48 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: adc: aspeed: Add AST2700 ADC support
To: Billy Tsai <billy_tsai@aspeedtech.com>, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20251103105217.1764355-1-billy_tsai@aspeedtech.com>
 <20251103105217.1764355-2-billy_tsai@aspeedtech.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251103105217.1764355-2-billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/3/25 4:52 AM, Billy Tsai wrote:
> This patch adds support for the ADCs found on the Aspeed AST2700 SoC,
> which includes two instances: "ast2700-adc0" and "ast2700-adc1". While
> they are functionally similar to those on AST2600, the OTP trimming data
> is located at the same offset (0x820), but uses different bitfields.
> 
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


