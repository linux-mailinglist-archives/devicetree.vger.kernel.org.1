Return-Path: <devicetree+bounces-255900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12825D2D1F3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 281C83086023
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FCEB3491F5;
	Fri, 16 Jan 2026 07:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DOz03dJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724212DF13F
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768548145; cv=none; b=ojVtJsOuQIJYg+1RxGokd0M9QE8JdS6QK5sphvHciIjKFzR+vrivMw5X1jyn3uatwrrad+YX9UdeLPhpxJNCwnasamqbb44zY2E4thRXHxXs5g4uZxcanIs4AEr/wMVQVkaKBsMczDYO6sZjRgtpCeIKFRkwJ0Ksm14WZBrXy0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768548145; c=relaxed/simple;
	bh=ZoZCxIZIxuNG7iiq7ouEpN8AOaGaswIYZVOM5BEKY0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jGQ5b8rp9pYLxxiEE1+dYjIlbIk3qB1Gp+qt/0gQxomob2RCNxENep8WgwxuJgOCXW0duhbAIhpW00HRL+dpfaHBix3GpshseLVj0KVx38XZnr/Wl03PC6PYlRmL0z3NLxoYwQsvMG4cXOETj7H9VkWrbhLS+REAYYW769zcCLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DOz03dJJ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-432755545fcso1010960f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768548141; x=1769152941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W95GN1V+oZI3tCyhJrWoqvfYp2X9bfUg8CvoDb5FSAs=;
        b=DOz03dJJJrHhANTzRWfRIwG4CLx0lVlmsIjqaVXIAMhwfUkQMzxluDIvnt6G5tZvZr
         4c0dlJQT35H7vKeQ2kACS7kFyjHOCBRMDhEqHMGjvAHO3J/KXmEMGQKVzcuA8Tkh5u4v
         iSdLnjY0HoFbhIx7+jU9y4jcsGD5y9+L4A9Rbbfwe9Oajkr9Uy/QAO6wftMa4FTKMWiv
         Xr2onvXDgcKQNOVRRMi3T/uSAL+HyazSQJuk5cqWgDP+C85At8mPoVxlZUnJY2INJNn6
         NZOLFZwP31nUoRTSEM/hLvbT2rEi9re57qBnGAEmHczkC9DApHPsTcrZS0p+KjQiDy4r
         ffNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768548141; x=1769152941;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W95GN1V+oZI3tCyhJrWoqvfYp2X9bfUg8CvoDb5FSAs=;
        b=JgsLMMyCJzsbZzTwSgIvrRcvI6ozdLZ6kJSpGgtLzPGnvu1rYNgcIQcNlAbRE57qbD
         0GI6I/1u1sH5b8m/afLUyVoE4D/hdM8K8jGPZooWu3Iwey2DjhKVeC9DE3pzlISg1nvv
         GqvuJwBl+PRxHNLcAOaK9wh6MvgH/osdTW1U7gH+0PJul2O/EOO+wHJtP8USUm6QYCUe
         VJVBcWTFfpzGBtdgEVBfMfilscNzz4o5jY/FIONh2NvRuxKPhHMrof/L/P7A6/mRNNXR
         6NQckkUKZZpZjmB/yOcDqXCGtLJot9/lay79v/en4WBdGWUMBfU8DkGjxozRNlYx/7Kh
         Clqg==
X-Forwarded-Encrypted: i=1; AJvYcCXFM6zKKbxznPzb3jsXTFJdPJK/uGKl8eAveP8ORzuWEiJkN8NSDWrauCEOhNNI+2QVeHdkE5uR+X14@vger.kernel.org
X-Gm-Message-State: AOJu0YxkaFWYTtaCrYDcWf1TOxHXcKol9S3MsGVOG0ArIYo2R2+NWQwF
	TsvBzKD9SDW+c2mzaXNHgIBFTRIW0GTd+U1VaYdZEdjN1kFwcDnUigiY1C7Y1hez1Sk=
X-Gm-Gg: AY/fxX6BdJvghx/M3xGYuNPXE56eIbD+0r9qyTfADfy/peHloOwUVIk42OdWovxT45P
	c/EeypV97/1YZJTQhXC9K1Jv9eUJCbKHpH/N9HDxz+L6g+SxrYJ4gTF4z5hbdZph5eQda4cnJIH
	lM8662ijcdKt47wLb4c8c3WsVVkhhGA3e2k9+aZAjDUfluDdSrl9qpO0vgWci1i3J7Pb47tHCFT
	A70ZIDRA8Meh34HlBgtfss3zXKxL0r2Vz6LX4AhS77CELt06XOU0HlyMZkgm6cRdSOtbnIkSzLH
	/S70SnYtPIWfL1kT8Sz+LKYPMjj83whmSwFJZQ1taEvx/2uDuvJ476R8Udyfcloxas5ZAXcWRSC
	+2bSEQeg6e890KuUhRIbi90PpNRjVUze1btEdU6IyG8p//Oo4vRy5udS62K+lEPt+pdZ/cUCJRI
	e40gdQfvspVng75bxlZw==
X-Received: by 2002:a5d:5d81:0:b0:431:752:672b with SMTP id ffacd0b85a97d-4356998a823mr1864994f8f.14.1768548140696;
        Thu, 15 Jan 2026 23:22:20 -0800 (PST)
Received: from [10.31.13.216] ([82.77.28.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435699982aasm3496749f8f.42.2026.01.15.23.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 23:22:20 -0800 (PST)
Message-ID: <40b636b3-b1d3-4c67-bbfd-6f41a5b0b290@tuxon.dev>
Date: Fri, 16 Jan 2026 09:22:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/11] arm64: dts: microchip: add LAN969x clock header
 file
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, lee@kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 Steen.Hegelund@microchip.com, daniel.machon@microchip.com,
 UNGLinuxDriver@microchip.com, linusw@kernel.org, olivia@selenic.com,
 richard.genoud@bootlin.com, radu_nicolae.pirea@upb.ro,
 gregkh@linuxfoundation.org, richardcochran@gmail.com,
 horatiu.vultur@microchip.com, Ryan.Wanner@microchip.com,
 tudor.ambarus@linaro.org, kavyasree.kotagiri@microchip.com,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org
Cc: luka.perkov@sartura.hr
References: <20260115114021.111324-1-robert.marko@sartura.hr>
 <20260115114021.111324-8-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260115114021.111324-8-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/15/26 13:37, Robert Marko wrote:
> LAN969x uses hardware clock indexes, so document theses in a header to make
> them humanly readable.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


