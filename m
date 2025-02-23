Return-Path: <devicetree+bounces-150023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BF2A41068
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 18:25:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C105189382F
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 17:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C09614D717;
	Sun, 23 Feb 2025 17:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bU7B7Ur7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BF3151982
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 17:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740331497; cv=none; b=YE2dFRfffCIq344dMQ8b0p0r0/BgMj6KsSh7o0PyIqFSLna4PHBM/HyZreBKiGQWfjV9I/CfX7yekMf1YF4LBUfMuJhepi0Xy6aFi7qK193OWdxSVhXlleHDKdQvGq17vevJ4IpdQr4/CSuaeO2ro+Z4EvOyjkeEeL/8wQuhifY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740331497; c=relaxed/simple;
	bh=iakWlai9cdV7eycWnqPzvYa7wPfEp7YJ/8FmCKV9JEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M8BQyRhzWrCJsvBqCfnNzEsOPuLVWm1roEK2TVKlFi6Brr7W1Z7pd8wTdve0GAoPXIo76VPaICWswuJRYNUgxfGjoOOkTLPADgj7EgqwZR8IZOjQrkgLplmiPn77dtUxxvzCjLc2lmTo3ebvzGq9x1KKFwwzZDISOI7ZzP25Mi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bU7B7Ur7; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2211acda7f6so78970395ad.3
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 09:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740331495; x=1740936295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y2O2KTC9PdkNA/KkwPolaX2XkbT1j7iEFVoAGaCdmyM=;
        b=bU7B7Ur7p8IbScVIPE9kh8T3SV4J3tkoj3rf3O0IVkb9DgrX565DgqrYKSXVg4mI4H
         Xn8AqZcYsieqRG9JiwCQBfYiK35CMwf5Hj+d9iYUOyW4mL/TbqwVJ7lO3wKKgLzzctrA
         cjV9VinvyvfMuTg6gO/KL7Sk7LrzRtl2ITa/QrYDkIh3RACNNbNgREIKF7NikK6lB9YO
         KXxonnZZiRGRGHvqFuACOmI6a/XIZuwYTZEjZQV5I/V3IcYnWyJY5ssFLEFWYY6FHXOx
         2IEppqp0pbntzTaCkVZ6J3HMXB0jk+0jNHXWWmCCXhOX+qcDGwuPt3FTMedt8BaiqBo6
         79AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740331495; x=1740936295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y2O2KTC9PdkNA/KkwPolaX2XkbT1j7iEFVoAGaCdmyM=;
        b=OanKjKlCkjR21vg3WQkOR/9pOSD8G1C9wR/rGc2j+AIK9uN/cx7yfwWWA29xbh6TeK
         3ENLc9zmQRBO9YjXaQGaiZm956HWPm5lmPDDotbAbARag6oKycSuuUA8DKZABCZTW0Ke
         EQ7y/7XIxjSTY8/gJ3X2cr/DHvoRisBaKckk1Pw2oc1jwaPQQTxlCXbu+M3IBURi5rTV
         +ttGSL+2o2lnOXp6g6m8zX8fIkdrUa6r5I4xEydJ/xHmoIJGh7Sojopgg8wh1zRtVipZ
         afR/J/wfIc8DznfcrIs8sSHCx4E0qLewh2uleFfwZDcd521rv+L0+xIr8xGPjN6dVmsa
         sP8g==
X-Forwarded-Encrypted: i=1; AJvYcCXXzDark1lC9Q9NEJ51X25jny0oVXdYik9prFMpwJWVDCzSSuUUDuk9w2aBN19eeLTbACX/CB+MJDh+@vger.kernel.org
X-Gm-Message-State: AOJu0YwgS/UFzWivMwXF4FaR8/JpVOlRAxgLrxY4zS7KcbGeRHDtnUmD
	OFbbF+ByurMHs6WannImykqqqB5ZH+qjuPkWCxBt/yvhNMNLZOZR
X-Gm-Gg: ASbGncsIpQ5oBcR9CmbSK2FmSfJCH+gMvJ1HAsx6YjniuO6SSV4SWxPyiEqAvk2dbwZ
	8DkNJOv+9JfSidaheHvQQUxeFgv1J2Mh1uWP2uJBn5IzD/vbgZxEGG15VKQPbdy19bNfqefkpGF
	S+dUCETa44u4nkd2Y1BU9dFogr3RsuNmh1nZyQDTBEe3lpsgTKJpdJxgOl9xl81i252kSAHM5Wv
	s7CfK6UQbD/g1yKuvLbKCbn0GGYXS0gkTGQdHAqFE6WdErJa3/CH20Uey34vid+adwdqSb9+xlI
	qK6fUD+tlTHZ+UyPWzaRVcIaEkpShIb5UdlPSwe0IwG4whhAhHG1FeKSRG4VOF2AsJ9zPbzXK2g
	bSQ==
X-Google-Smtp-Source: AGHT+IHXoNAmOo8/9xcT49igECoNdcpYHSblNJXXk1FCIeh9kqW3ppcoD17Je8BB/XcvGZAqYF5zeQ==
X-Received: by 2002:a17:902:da8c:b0:220:c813:dfda with SMTP id d9443c01a7336-2219ffa7636mr172101415ad.41.1740331495405;
        Sun, 23 Feb 2025 09:24:55 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:ba1:8069:4a70:1a15:7c01? ([2600:8802:b00:ba1:8069:4a70:1a15:7c01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d559089asm165603035ad.241.2025.02.23.09.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2025 09:24:54 -0800 (PST)
Message-ID: <bf20d5fd-bf82-47b6-9c1d-0b77f0e6c083@gmail.com>
Date: Sun, 23 Feb 2025 09:24:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: bcm2712: PL011 UARTs are actually r1p5
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 Andrea della Porta <andrea.porta@suse.com>
References: <20250223125614.3592-1-wahrenst@gmx.net>
 <20250223125614.3592-3-wahrenst@gmx.net>
Content-Language: en-US
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20250223125614.3592-3-wahrenst@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 23/02/2025 04:56, Stefan Wahren wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The ARM PL011 UART instances in BCM2712 are r1p5 spec, which means they
> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
> Thanks to N Buchwitz for pointing this out.
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Same comments as for patch #1.
-- 
Florian


