Return-Path: <devicetree+bounces-222562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F134ABAAC72
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 02:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF8661C29FA
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 00:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DA6136124;
	Tue, 30 Sep 2025 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JKQPGwXO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7802D2AD14
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759191443; cv=none; b=BAc5iEAxkGdUM6XW6YzurIapgEyp8XX0cXdM8YRAnqcy4bk4of7Emgg1f0DtES4zD4GvDjI4LrK2GpH2KE97ArG+utvCANlRMY/lE/jl6LZLHJAP3NBEGJv64v+ly+v81fI2UB/hOxNoiqM87+HovnBQHFxYNuEiQBatFdYwwbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759191443; c=relaxed/simple;
	bh=R0YLBiUyp3YW7yv7x28H3CgeEQEOZJr3Y+k/HoiLimQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j4SKH8khvaWb9LUJP/X89jDIuigfkj+s0x6cigq9Lz/55g8vhSplZ2oWwp4fNebUK9hddtn0DebWSuXOkfETVO+JK6oX7TS3oKDhBgc+8zWPrIngS9cp9WQV+ND1OzHJEbQ8cTPDbVln6mlWFurY6RwDJyqYHltGFEYVQbbEmcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JKQPGwXO; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e29d65728so35878545e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 17:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759191440; x=1759796240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XdEC/q6le7nfUpMwS8QD1mrWIXjjaEQSmDLATI0QjFQ=;
        b=JKQPGwXOroor2ZNT7QUdLk108fEYgFF8zdT+6rZBkktVM9+8+ZZkpiD4YWjZayfNWd
         dL134bFsUU1pdnJBeWlHHb3tu2pP4kYYrZhR5Ln65B/coBrEQkTeG8HdzKqOheDMjNHs
         s27ushuoRlb+r1Zt7OkzP1i2SLRuT11ux53i6pJx5WTIM2jBR76PKOaKRO3JgvQRw6MM
         Vy5CTcSBd0nbz8oObMXCfeHZHBNBVIaeGNj2cgD4B7m4XS+B/Mshte6yxn7l0pVsXSSL
         6EthYEs4+cGUPF++NT/8LZDhWvRask1jLmtuuKCZ2anDhkN6rKGeViJGcXs9oPLcd5Yt
         8gFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759191440; x=1759796240;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XdEC/q6le7nfUpMwS8QD1mrWIXjjaEQSmDLATI0QjFQ=;
        b=kpEgQ5ERE9W5vCKWF/YAJI+zQgbqQl6MviYGDG0NIHznBlJFhrg7RcsBfT8psEqdg6
         gzwiFTTM2jaTOKaPGSFjiJSAqttWeaWaD7FqpV6WXEHGism3Q1UpGdRYZUOrLq2caIMH
         zl5Zh7EtT8PldSw5Bszh71lKYBgDVDXv02OEbxgMtXzSk1Fe8u9t9hnsqcuYT6IZ0PXr
         tQEwkExxhG8sKFpZ4kyCZIUIMC7i3iblvStbUi7cayMTX7VJoJAX9VELmAKpG+DwiZze
         3T9AD5ZGR6vwzMMv6HU/7HiYIKruyr5Sk7Yw7o+GGfO3o1kup7pofdnI02qTN72kvTWS
         pg2A==
X-Forwarded-Encrypted: i=1; AJvYcCWFNm43C3YBSM1tY3BzSZTlvrLTMlKAJECTrZ3flkKxsUZTa4u8d6RNx2K6RSr9TvtOfCB+aibexVcK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzso0oH+pz36Y06dkXNYHJiTZ4t6KMuFXxkZ+UoK/UE4e86Q6Rd
	e5dCU2mUYXekOqJ+ITqsDsjQw9abHnyTJHNFm/Z/s7Af/cxssotE41KPK/7u4QYDVxQ=
X-Gm-Gg: ASbGnctl51sFC9YzAE1Dtjwd8YMyf7mKjd9yM7zNn0h76VkJmfX/k8xBcyBCm0vF9cZ
	dhhxKp4CX2ziLMJ35SvMV5SnqhjWyMMA6EmVvBmJUvTTItEBhvidd9XbWwrqM7XFA/yvseiuwi1
	pHB2n1sLz52qsjNl5Z8ohYUXW1IeafRruJUDsIM6TD+2dHkTYqZopWGyb/CrtBysuL62SwPPL9o
	m4tqFhF08GypC1wwYDGCe7cB/Xw17lw9o2Igtg4y4F+t5xhlx1lTmGLEXX3OVUcv0YUdH9H0ShI
	Cf5z3NoJTGfxVwtQjEnd1Ed814tipB0azmlqVaZ6ec+Gp2nACcCa6A1WvVcSpg7mBhvE+cXATHJ
	4ENR7fmQwkxUqk+oyQaJTqX/EJR06/PoFu7QclWCye18J6RPinFU/vzy8R+yrZsxXTNk0jGwjjw
	zyBzu4o4RtxelrKJeG+7m5hoEEWXjgxbI=
X-Google-Smtp-Source: AGHT+IF1NvJ6A8YUVxkdRJkfeGyVldxLeh1qdvb50sqvC4KYOgmP95PhemeRL1E+WA4Xb6qkHy3wsw==
X-Received: by 2002:a05:600c:1d06:b0:45b:9912:9f30 with SMTP id 5b1f17b1804b1-46e329a0d0amr156323085e9.6.1759191439753;
        Mon, 29 Sep 2025 17:17:19 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996e2fsm266744585e9.2.2025.09.29.17.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 17:17:19 -0700 (PDT)
Message-ID: <3594bbc8-b063-4472-a294-117582f063dd@linaro.org>
Date: Tue, 30 Sep 2025 01:17:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 03/17] media: dt-bindings: add rockchip px30 vip
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-3-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-3-af0eada54e5d@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> +                enum: [5, 6]

Not required but nice to have is a comment like:

enum:
   - 5 # MEDIA_BUS_TYPE_PARALLEL
   - 6 # MEDIA_BUS_TYPE_BT656

Just for the sake of a reviewer.

Either way

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

