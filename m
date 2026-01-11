Return-Path: <devicetree+bounces-253613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49424D0F32B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3340A301CB64
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE75D33C1A2;
	Sun, 11 Jan 2026 14:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Qam1s0sk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B6F3491F2
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142804; cv=none; b=H5n7Kr8N9j6ejNhqT9oDBKI7REmksV/Iz6PyK9gME8HtuRhWzuLUONX/8zsx5O7TRmWAcM68aIDhvcvjhp/7ODyXZ1pFqXVUCaSeG2rTVEGWiHZryvV9Rj+MnTH/JM6DMRsyocnCXE5Neycoaf/b5WQRwmCXAwVx7EV10s3EC2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142804; c=relaxed/simple;
	bh=L2SAqNmu61MHKLD0agICr57xkRB0iGTI91g9rMmmRgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPgyJmwsblvn7ILVJXee8+WAbfPUYdtL/ha/D4YCrWoPIhhkZ2xdxuwg4Fv2MRGgn1sHoJOXyj8HnjNFVOssMI/5hZIf+2/Ep3O1vkZ+ydOkAiJVwNq2N7XuHx4G+mxvoYfcOcfGCby/2/MZJtFSoXnWQ1NWj+LMmQ9laHSEmmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Qam1s0sk; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so9507811a12.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142800; x=1768747600; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=998LIQD26tTlqKe1Nt9hPTV8z5SAR5Xb1tsWRfDj7yM=;
        b=Qam1s0skrMJn1KfWZxSe96IKP81h22WhBDibkbxgWIUwpBSQNSN536T77TtojW3nxq
         kLFoyDPha3E1j8A98VyQxWws3pi3XVHEjYrLvuh2AjL/vNPcDkas+WMRnHVItePkIK5p
         yjOS8EtefDgl07rBXwJ/tP65Y/Vw1sE6EhWNK6+VRchLP7n6emPQxYYi/5H9xtlL6/P/
         ns7a6XFDQO9GAFW8hheFyqWsQk6Nsce0VyXmYi3J35Jk+Y3cTtzFIsWLZLPcx+gnyCUs
         9g1Vv5mta+IVdq3zoLjpJHhxhqt9cTIhUzchJVlA7JHMdhTyomaoN/CV+gPsigwenQok
         wOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142800; x=1768747600;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=998LIQD26tTlqKe1Nt9hPTV8z5SAR5Xb1tsWRfDj7yM=;
        b=Ve+/bEGtA80mtkVMB7k8PqSDq0lBwRoJLvPwDjBOYpYqNOemlY0J4APDnOlmeIV95j
         k3J7GeqbZiCZqEEBIg1PcQCK2HfhDRfbqk6fbhIBR7Hs2pryw5fy1qM8f/pFwpNZsKp4
         ZZNWdBbw5zqGStjFMruyN5/t7yiwX+e7FFIlt2OYV8zSU0iQIsFX2RnbWCAX6A2TMKTb
         lG1BfdJGVYkoru1iC+fABYn24Ju/M1pv3moTpAFbAnSbCgsuKgaFPzqtceZjxJC7xPzZ
         2Amdd39tGz0yAUPX6OKIaAd05dpJz5zfIiPXcF8ou15/QyU67tM1kQmlqKq6qkGdGIi0
         lMUg==
X-Forwarded-Encrypted: i=1; AJvYcCWOttlPQOZFJhvL0MaGzjw6LqKWaxlIXXCsfjxORLYfc1jfFaDVftTIYlTWkvpRMLYSqJDAW7v0jq97@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb7yubJfaXsx5wCqHIsxDEf8W7Vc7Q9EUojrtOYOfJn9S9kY1L
	ZEQg5GYDgN7rhyDikBGXk4r14VgZ8O7NYvLbB3NKH3SPu7QT8GSetfhjIAfT10db54I=
X-Gm-Gg: AY/fxX5rAYPhYL8kapNW3Icjz+iMVK3l1/PZefAxEFZm3RiswI65YP7plFbPrXzMUKd
	DfBXw89E8zU5CO8FT5u3/Hw16Qzf+fIAoDmdQDZFSEG/yx8b4tOzXJvA1/mokkTYd2wGyimW4Vj
	PsVNdZ/NgeRbdnxBZSTAKQK08i/nG8UkNzLPsQwE4l0SjTkqdgPqPsJuEhAHXyvT7lBoUrPbX7I
	lbv/MqRZVGwkC79S47ObvNyB3qK8ZMrUy6GL1+Ld94JARRy6JC7nFg0i+RRvU9pZmsKHs5zlfWf
	LsJtKg3lAUfvA/z4TZLreqtIx99uAjeCVA5mwpaz7wejihKsCOf0e3+JJmjB4EJZCmLpuTWKl2V
	tdd/o/mEe/Jqs2iMyaJfuDMMn+0hadjziUDalvd9QbzKrm7UE7ncP+S+eFIX3oilYrAFcR8pTCv
	kWHUKOXJfhlafJTGdTBi0TWGA=
X-Google-Smtp-Source: AGHT+IEEnxtsLJjgQBqtCtTKdKKJ7nKe93tErDCONdjzSpalyD4Cf1jf8cogFFk+Jwao/l06OHgHEQ==
X-Received: by 2002:a05:6402:26cc:b0:64d:498b:aeff with SMTP id 4fb4d7f45d1cf-65097e8e49bmr13880469a12.34.1768142800347;
        Sun, 11 Jan 2026 06:46:40 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d4acsm15318996a12.30.2026.01.11.06.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:46:39 -0800 (PST)
Message-ID: <0ca4477e-cfd8-439f-946f-9d0205b62c6a@tuxon.dev>
Date: Sun, 11 Jan 2026 16:46:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/15] dt-bindings: arm: AT91: document EV23X71A board
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, vkoul@kernel.org, andi.shyti@kernel.org,
 lee@kernel.org, andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linusw@kernel.org, Steen.Hegelund@microchip.com,
 daniel.machon@microchip.com, UNGLinuxDriver@microchip.com,
 olivia@selenic.com, radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.org,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-i2c@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-15-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-15-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Microchip EV23X71A board is an LAN9696 based evaluation board.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

