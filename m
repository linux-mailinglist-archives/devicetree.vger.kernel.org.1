Return-Path: <devicetree+bounces-208224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B2EB31E52
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3212E5C7810
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D452ED175;
	Fri, 22 Aug 2025 15:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="M2OmbBgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222112264BD
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875815; cv=none; b=TaV4zG9v0KcXMTB1/T7v0APMIGiXf1FHdEqWh1Ylt3hMTlj5GgNgtmfkTYNxjUwQ6nu3eNVWtMFq8NbXj6Qw3+gM/tNHbxFdXz7vaBcOs8SZ//awULGhMkor9cuoUB0iPhGBQHq6lAPRWeqyrioFcyQrbexxUZXjh1jU+8T29Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875815; c=relaxed/simple;
	bh=0dwyaRqGbilF5+78hipgtL3msbczA20QAW0v5uAXf6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XGXy6rUaZW1aoRCIJOaJu2nIpjBfv31bkVn9ZCDk/U8KC6K0nv/NbfY5v6CvKbit70F48OO3O3K2NqDPd59As+gWmRSOt9OOJ9x1kF9S3WDhCvLZ52fh5iXBH3EHBh/jXiP5SWb1MiI+8WivLdZRSEI/eOk99i8rC9iBxk7N5eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=M2OmbBgY; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b00e4a1so18246205e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755875811; x=1756480611; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VncA65wqs3Xw1Kli1LmPF8HpRGnNYdKn7A2d63G/g4o=;
        b=M2OmbBgYh1VEQ6HBWy6Cv7jCkLeoWdO1J3KdrpyuQSnadHULFIkVzirEiYxMi7KvlI
         IPsRRHWaO2UAYIIN/r/8782jJWs5ENME9+yCBr9YHTw1AX/d3loQNGh8ylgoe2XXUCCf
         3LWhOenZCrAtfzdEdMV8XoUF61SWaLLgYIlretKi40Yl47F3p/E9EHRn/KNLKCy1NN+w
         Zji/JeojCFugSsA/Su1+zvaIQtX8tuCHdwXP7Y224ZvfqrdsRFLOx4aMsnn+Cz5BEyrn
         pe1zWYaBQkYaSXL41/ek2sap18bpDSo80zdfh4lewaXQoPW3qX8MbwcK//v26FNLkW4a
         Rheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755875811; x=1756480611;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VncA65wqs3Xw1Kli1LmPF8HpRGnNYdKn7A2d63G/g4o=;
        b=W+UK6uy5YDoLamIs/oiLhwj76G+ah6c8b2N0OCU87EpFlPbb9Mo05Pv9QzSk+UMU1Q
         SLTkC2ORtcqQHRjtmjV9qL6hcX2uavFtDzYza+t0CubFWlJrWYH1LIJ4eI8K+j2PTGCn
         sqcEzY79BgnjVKRNwH0HB/6LxRFBMJuarSBe7SJo3A05/u7NQv71oBuXcAoNTl3B7x/G
         iLkJmzjVWq/QtmwCJ+UXoVJm/m4JptTkXslFIfk5BBMgi+zubIUFpOwcozO2f6GVx/gB
         CMM9wlLBH6vM0Lk/+aRaexahgtW7j4frhmdGnIdHb3s0WCsaQijqHrbw9oF8f0yUQqSa
         KpZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUF13RtM3n+VPgKBjKUPMdn2qDnUdayrzN6KQrfVU94gVEnlxqPYxd/4e9WYUn2O92ewNe+fAbANSC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz84rh0YBqCgzHooTZA3uv3qAyoe/6hn7q/xKR/qkCM3ztneUY2
	wlMF9BXt1vcwMxm2rsesxY0mGmGoGF9uov3gob6CvtD1tUINJ5jVGdvU0/HuGowv6bY=
X-Gm-Gg: ASbGncsidcRbcWkHUDeanm/naRatc5iCLgNZ9M0WINcZc86ERju4v8MZ3BEZMuh51Lp
	86ovUGPk8YSeOTaXWsm3hgDlYziq2Y7bvUCbTGuJOg0GJg7GfKLf6fK5UH0ABYDt7Rzs/meV7/v
	hQDIrGG6PIaDDQtWp9RxJTFxkot71K2NEiFHFs0AizNe3ZR+7QszSsNhE/f7ALF7P6d6+Iq4Odq
	Xl6C8epz/Zt/aAmQQwGckAn0gvocf85FL6VjDhpix9x9xrB1a7cW4BPcdaNwBMh8hxQKjfFseqr
	h2aXiP3UE41eLhzofCFroWVNXYGiBdLDKaHyUisYt7ciyPevynDSmoThMYHo7nXiG1NnMSxM84d
	29zLXJqiCLeSUCUwJvB5WJlHC0pUZ5w==
X-Google-Smtp-Source: AGHT+IHjt+7d5bsv8WuyVg2j/dbfTLKOl+Cjl6jkUNdsWRo33Z0S5ptgeOtzC4H+PPYP3sETkG74wA==
X-Received: by 2002:a05:600c:4715:b0:456:1923:7549 with SMTP id 5b1f17b1804b1-45b517d294dmr25933535e9.26.1755875811111;
        Fri, 22 Aug 2025 08:16:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c6070264fbsm2830727f8f.67.2025.08.22.08.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 08:16:50 -0700 (PDT)
Message-ID: <86694152-3daa-451d-baa0-2d957a00644a@tuxon.dev>
Date: Fri, 22 Aug 2025 18:16:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] net: cadence: macb: Set upper 32bits of DMA ring
 buffer
To: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 stable@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
References: <20250822093440.53941-1-svarbanov@suse.de>
 <20250822093440.53941-2-svarbanov@suse.de>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250822093440.53941-2-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.08.2025 12:34, Stanimir Varbanov wrote:
> In case of rx queue reset and 64bit capable hardware, set the upper
> 32bits of DMA ring buffer address.
> 
> Cc: stable@vger.kernel.org # v4.6+
> Fixes: 9ba723b081a2 ("net: macb: remove BUG_ON() and reset the queue to handle RX errors")
> Credits-to: Phil Elwell <phil@raspberrypi.com>
> Credits-to: Jonathan Bell <jonathan@raspberrypi.com>
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


