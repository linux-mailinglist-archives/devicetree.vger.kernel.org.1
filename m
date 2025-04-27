Return-Path: <devicetree+bounces-171298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 364B5A9E35C
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 15:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94DA7189C243
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 13:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C40A157E99;
	Sun, 27 Apr 2025 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Iqv8MutM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5EFBA34
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 13:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745761493; cv=none; b=H1SKI3nOFWgkPlI/wvD4QkS1V7B8zFye75XxrDEx9GsL6BEz2NbaVabRCGhfgJhcBxmXRdN3JuKmvdHVDtZlQA87/SotvSuQC+vYBeW0JrRs4hQk8nKW/X71ecQR/VeGKsxHgkJY0F9P6oVj5dmruqO9Ozs1jmzSiT+mf7xGHbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745761493; c=relaxed/simple;
	bh=xy57p6rT8p7fmNxJxy0pnmjoSVioB4G0/E5Pz5KlrRo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NSLGQfQR3itVzrMkyylE6HmcV6Tzn97f+HsBoDzSDJI5d/Ss6Xmm5gMw4wfiqRdFiOG12qpZjDJ5zgv2adGHcV3U1l1vJKzKsWv3ZqIfX9kzUm9G4+YzbAuELGdbs9rD5uxP9JgXmBSMdpODspfoMc9Dvji4dBC1HrEGWAFtpLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Iqv8MutM; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac34257295dso661997466b.2
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 06:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745761490; x=1746366290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a+Wfmpz8YwSC/QTc9cmf3K4nEaVMfqyTaWeqvvdrAgc=;
        b=Iqv8MutMhB5WCzIf03Vg7/CUTPnOPNbw+RPlqpRt4UpdmTKtYiv8NI4a/O9pVQtpcB
         rwHOjHLqwQsOxr7qiEENCchqzKcl9dSqO1MeA2W2w236exbrMqC2726eiHE+q7ztLuSQ
         95jYzsdKs2gcjzAFWQMiSUwb7677WiKHkv31QfqIBlw16sXK3Tzr7xSH9+tgOhrdwYPX
         /Qs2dU6a+73wTrBkB21fni7Mz5CU3+RtmcOiOMswcXTQ+ld3gwU5S2aN2BbCAtTKobt+
         xRydQWh01GUnMCsNYfe2J8q1xdaVONgkvDiiZ7UHs0ArQLOxN2k6ADdSp/kI9WQZuVSo
         fyjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745761490; x=1746366290;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+Wfmpz8YwSC/QTc9cmf3K4nEaVMfqyTaWeqvvdrAgc=;
        b=OACjxYHwl/DhrU1tM7rwIbfEqj5gajTPL8EfljmQMwuw91swbZlc7As7h69xLG+g6D
         3Emn7cYvu1bn+B/QDANoxSM3Xlxc0d45nJLv3wZ5KypOtrgl2cn05X//K6QwYd4SRjs3
         rO36kjXhre5mphIqZ0uB061oQZrIgEoqd+0MO43dsyDISULJ5MBIFa2TGK0G8XuYEVRb
         mjzJvt/8YaEaDHrDkacC/0j7vl2Va6bohBaYXwRIdbhqlbTbT9+mJy3IQbiXvWDA7anb
         LowxdVS6jqUwoQMJJTYi4CK3YlLjNTO0Peg9kVJzI/vT0PsT8U/O5x1R113fisii2TbM
         Eu7g==
X-Forwarded-Encrypted: i=1; AJvYcCXOKmU6jU6+e9n8yv9cGVzYa5pnuKnv20rBfmOmSDM/aFyiY5SdGZ71QiMw5A4voUoZxbr0ZnCn//LS@vger.kernel.org
X-Gm-Message-State: AOJu0YwC5Ra4li3MYtkrMDsyBueGvZ1gvfBV0eAyRIQQOXzP2V2vrf8l
	sbhMc/rCsyxTFVjyvNQK45wRflwA8FCvHIAmrcJiwAQM1UvBgWNNN4iIZgV+GQA=
X-Gm-Gg: ASbGncvvN8XYb+bFq3CmtkXPypvWvKiOOeliATRu6XDhSrGIs6SZcuP1P4m3KoT880C
	myhI+M3vQTf3qgbRh0EJZ4EnS8goqqn/BmK5HAf1WTAycrPnDY9CQTaVxy5Zn7nYNizYq4TWy/v
	FoQ98IHKR64tXIoRGN/TSooQpDgEvqcg3Ta9oC7q5urVFLjCuV86AvHWYuCnno3r5zAOE5aiVsb
	dwq9QGl/mT6Zg+21TqN3IAKUG/hGgeyOZ92Buf4+x8ajUs35E7nRZVC5V2d+NzF6X9dhC91J7/w
	SEnlYmHOkHBzOlRxje+ApvZIdixK8HH2unS0x3F9+BcydcQC+A==
X-Google-Smtp-Source: AGHT+IEOypUTitKBpixzEKZqDNNK3xNvWnlomy9oSqUcmZFU4mdU5oeaOXGJJJq0BB7OQNIo/j8EWA==
X-Received: by 2002:a17:906:dc8b:b0:ac3:26ff:11a0 with SMTP id a640c23a62f3a-ace7133c83emr870058566b.38.1745761489851;
        Sun, 27 Apr 2025 06:44:49 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41a850sm447491766b.32.2025.04.27.06.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Apr 2025 06:44:49 -0700 (PDT)
Message-ID: <b50ca268-1eb5-4f73-bfb6-db4273cd6894@tuxon.dev>
Date: Sun, 27 Apr 2025 16:44:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Enable FLEXCOMs and GMAC for SAMA7D65 SoC
To: Ryan.Wanner@microchip.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, onor+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: nicolas.ferre@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1743523114.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1743523114.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01.04.2025 19:13, Ryan.Wanner@microchip.com wrote:
>   ARM: dts: microchip: sama7d65: Add gmac interfaces for sama7d65 SoC
>   ARM: dts: microchip: sama7d65: Add FLEXCOMs to sama7d65 SoC
>   ARM: dts: microchip: sama7d65: Enable GMAC interface
>   ARM: dts: microchip: sama7d65: Add MCP16502 to sama7d65 curiosity
>   ARM: dts: microchip: sama7d65_curiosity: add EEPROM

Applied to at91-dt, with specified adjustments, thank you!

